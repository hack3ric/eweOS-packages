# Maintainer: Ziyao <tswuyin_st127@163.com>

pkgname='binutils-objcopy'
pkgver=2.39
pkgrel=0
pkgdesc='Part of binutils'
arch=(x86_64 aarch64)
url='https://github.com/eweOS/binutils-copy'
license=('GPL3' 'GPL' 'FDL1.3')
depends=(musl zlib)
source=("https://github.com/eweOS/binutils-objcopy/archive/refs/tags/v${pkgver}.tar.gz")
sha256sums=('SKIP')

build()
{
  cd binutils-objcopy-${pkgver}
  cd bfd && ./configure --with-system-zlib --disable-werror && make -i
  cd ../libiberty && ./configure && make -i
  cd .. && ./build.sh
}

package()
{
  cd binutils-objcopy-${pkgver}
  install -Dm755 -t "${pkgdir}"/usr/bin/ binutils-objcopy
}
