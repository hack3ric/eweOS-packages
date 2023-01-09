# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=mkinitramfs
pkgver=0.2.1
pkgrel=1
pkgdesc='initramfs scripts for eweOS'
arch=(any)
depends=('e2fsprogs' 'util-linux' 'util-linux-libs' 'musl' 'busybox')
source=("init.in" "mk")
sha256sums=('SKIP' 'SKIP')

package()
{
  install -dm755 "$pkgdir/usr/share/mkinitramfs"
  install -dm755 "$pkgdir/usr/bin"
  install -m 0755 "init.in" "$pkgdir/usr/share/mkinitramfs/init.in"
  install -m 0755 "mk" "$pkgdir/usr/bin/mkinitramfs"
}
