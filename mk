#!/bin/sh -e

outdir=/tmp
while getopts mo: arg; do
    case $arg in
        o) outdir="$2";;
        *) printf 'Unsupported flag %s\n' "$arg"; exit 1;;
    esac
done
shift $((OPTIND - 1))

ROOT=$(mktemp -d)
install -d "${ROOT}/var/lib/pacman" "${ROOT}/dev"

mknod -m 600 "${ROOT}/dev/console" c 5 1
mknod -m 666 "${ROOT}/dev/null" c 1 3

PKGS=(
  musl
  utmps
  skalibs
  filesystem
  busybox
  util-linux
  util-linux-libs
  e2fsprogs
)

for pkg in ${PKGS[@]}; do
  pacman -Ql $pkg | cut -f 2 -d ' ' | while read fpath ; do
    echo $fpath | cpio -pd $ROOT
  done
done

echo 'initramfs' > "${ROOT}/etc/hostname"

# Add an initial fstab file to describe mountable file systems
cat > "${ROOT}/etc/fstab" << EOF
devpts /dev/pts devpts defaults 0 0
tmpfs  /dev/shm tmpfs  defaults 0 0
EOF

install -m0755 /usr/share/mkinitramfs/init.in "${ROOT}/init"

cd "$ROOT"
find . | cpio -o -H newc | gzip -9 >"${outdir}/initrd.gz"
printf 'initramfs image ready at %s\n' "${outdir}/initrd.gz"
