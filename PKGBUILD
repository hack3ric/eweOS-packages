# Maintainer: Aleksana QwQ <me@aleksana.moe>
# Contributor: Gaetan Bisson <bisson@archlinux.org>
# Contributor: said <atvordhosbn[at]gmail[dot]com>

pkgname=libcue
pkgver=2.2.1
pkgrel=2
pkgdesc='Parses so-called cue sheets and handles the parsed data'
url='https://github.com/lipnitsk/libcue/'
arch=(x86_64 aarch64 riscv64)
license=('GPL2')
source=("$pkgname-$pkgver.tar.gz::https://github.com/lipnitsk/libcue/archive/v$pkgver.tar.gz")
depends=('musl')
makedepends=('cmake' 'bison' 'flex')
sha512sums=('32e476cb09ed2cb2d64aaba1342fb91e77e448391b493a3a794a8d2a6723a0e6097a90b11c6ad82998cb7f270f4f18c2578d7b8575f6929c2a35502e09ebc964')

build()
{
  cd ${pkgname}-${pkgver}
  cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_SHARED_LIBS=ON .
  make
}

package()
{
  cd ${pkgname}-${pkgver}
  make DESTDIR="${pkgdir}" install
}
