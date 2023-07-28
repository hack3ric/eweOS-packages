# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=libpng
pkgver=1.6.39
pkgrel=1
pkgdesc="A collection of routines used to create PNG format graphics files"
arch=(x86_64 aarch64 riscv64)
url="http://www.libpng.org/pub/png/libpng.html"
license=('custom')
depends=('zlib' 'sh')
source=("https://downloads.sourceforge.net/sourceforge/$pkgname/$pkgname-$pkgver.tar.xz")
sha256sums=('1f4696ce70b4ee5f85f1e1623dc1229b210029fa4b7aee573df3e2ba7b036937')

build()
{
  cd $pkgname-$pkgver
  ./configure \
    --prefix=/usr \
    --disable-static
  make
}

package()
{
  cd $pkgname-$pkgver
  make DESTDIR="$pkgdir" install
  install -D -m0644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
  cd contrib/pngminus
  make PNGLIB_SHARED="-L$pkgdir/usr/lib -lpng" CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS" CC=clang HOSTCC=clang png2pnm pnm2png
  install -m0755 png2pnm pnm2png "$pkgdir/usr/bin/"
}
