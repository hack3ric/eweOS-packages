# Maintainer: Ziyao <tswuyin_st127@163.com>

pkgname='binutils-objcopy'
pkgver=2.39
pkgrel=1
pkgdesc='Part of binutils'
arch=(x86_64 aarch64 riscv64)
url='https://github.com/eweOS/binutils-copy'
license=('GPL3' 'GPL' 'FDL1.3')
depends=(musl zlib)
source=("https://github.com/eweOS/binutils-objcopy/archive/refs/tags/v${pkgver}.tar.gz")
sha256sums=('9c9a7831525d05ee7fa0c157e574b33f28d0485d63faa2f6d459977b42d24879')

build()
{

  CONFFLAGS="--host=$CHOST --build=$CHOST"

  cd binutils-objcopy-${pkgver}
  cd bfd && ./configure --with-system-zlib --disable-werror $CONFFLAGS && make -i
  cd ../libiberty && ./configure && make -i
  cd .. && ./build.sh
}

package()
{
  cd binutils-objcopy-${pkgver}
  install -Dm755 -t "${pkgdir}"/usr/bin/ binutils-objcopy
}
