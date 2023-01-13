# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=gettext
pkgver=0.21.1
pkgrel=2
pkgdesc="GNU internationalization library"
arch=(x86_64 aarch64)
license=(GPL3)
groups=(base-devel)
depends=(acl)
makedepends=(gettext)
options=(!docs !buildflags)
source=(https://ftp.gnu.org/pub/gnu/gettext/$pkgname-$pkgver.tar.gz)
sha256sums=('SKIP')

build()
{
  cd $pkgname-$pkgver

  ./configure \
    --prefix=/usr \
    --enable-csharp \
    --enable-nls \
    --with-xz \
    --without-included-gettext

  make
}

package()
{
  cd $pkgname-$pkgver
  make DESTDIR="$pkgdir" install
}
