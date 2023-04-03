# Maintainer: Aleksana QwQ <me@aleksana.moe>
# Contributor: nut543 <kfs1@online.no>
# Contributor: Dale Blount <dale@archlinux.org>

pkgname=re2c
pkgver=3.0
pkgrel=1
arch=(x86_64 aarch64)
depends=(llvm-libs)
makedepends=(cmake)
checkdepends=(python)
pkgdesc='A tool for generating C-based recognizers from regular expressions'
url='https://re2c.org'
license=('public domain')
source=(re2c-$pkgver.tar.gz::https://github.com/skvadrik/re2c/archive/$pkgver.tar.gz)
sha1sums=('ce178a2f31ca4ba266be0ba6f1aa346ef764b799')

build()
{
  cd $pkgname-$pkgver
  cmake -B build -DCMAKE_INSTALL_PREFIX=/usr
  cmake --build build
}

check()
{
  cd $pkgname-$pkgver
  cmake --build build --target check
}

package()
{
  cd $pkgname-$pkgver
  DESTDIR="$pkgdir" cmake --install build
  install -Dm644 LICENSE "$pkgdir"/usr/share/licenses/$pkgname/LICENSE
}
