# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=(linux linux-headers)
_basename=linux
_pkgver=6.2.7
pkgver=6.2.7
pkgrel=2
arch=(x86_64 aarch64 riscv64)
url='http://www.kernel.org'
license=(GPL2)
makedepends=(bison flex perl python libelf linux-headers rsync lld)
source=(
  "https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-$_pkgver.tar.xz"
  linux-config.arm64
  linux-config.x86_64
  linux-config.riscv
  busybox-find-compat.patch
)
sha256sums=('4303105201fb0c0b17155fff87df0a022a32a41eb1ce94a264ae648c64bd0d8d'
  'd4ce96309090fc6820f1e71afec0620b22b5ce6335274e84b7fec4770c2e28ca'
  'cdbbb14dcf4483ffbc25823bab69de8ee71fd3f553f0ee32df0d9a9d48737605'
  '3d743f6420440088c139fb4576f41e76e718d436f7308843228e080ca430c0c9'
  'ea1c89fc102d90370c6dc3cb53abebcfdfee91cf6aac60a22bb2b919446ff733')

prepare()
{
  cd ${_basename}-${_pkgver}
  sed -i \
    -e '/^CC/s@gcc@cc@g' \
    -e '/^HOSTCC/s@gcc@cc@g' Makefile
  patch -Np1 -i "${srcdir}/busybox-find-compat.patch"
}

build()
{
  cd ${_basename}-${_pkgver}
  case $CARCH in
    x86_64)
      export build_arch=x86_64
      ;;
    aarch64)
      export build_arch=arm64
      ;;
    riscv64)
      export build_arch=riscv
      ;;
  esac
  cp "${srcdir}/linux-config.${build_arch}" .config
  make LLVM=1 LLVM_IAS=1 ARCH=${build_arch}
}

package_linux()
{
  pkgdesc="The $pkgdesc kernel and modules"
  cd ${_basename}-${_pkgver}

  local modulesdir="$pkgdir/usr/lib/modules/$pkgver"
  install -Dm644 "$(make -s image_name ARCH=${build_arch})" "$modulesdir/vmlinuz"

  make LLVM=1 LLVM_IAS=1 ARCH=${build_arch} \
    INSTALL_MOD_PATH="$pkgdir/usr" \
    modules_install

  rm -f "$modulesdir/build"
  rm -f "$modulesdir/source"

  # Used by tinyramfs to name the kernel
  echo "$_basename" | install -Dm644 /dev/stdin "$modulesdir/pkgbase"
}

package_linux-headers()
{
  pkgdesc="Headers and scripts for building modules for the $pkgdesc kernel"
  cd ${_basename}-${_pkgver}
  make LLVM=1 LLVM_IAS=1 ARCH=${build_arch} INSTALL_HDR_PATH=$pkgdir/usr headers_install
}
