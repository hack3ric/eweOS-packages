# Maintainer: Aleksana QwQ <me@aleksana.moe>

pkgname=libmicrohttpd
pkgver=0.9.75
pkgrel=1
pkgdesc='a small C library that is supposed to make it easy to run an HTTP server as part of another application.'
arch=(x86_64 aarch64)
url='https://www.gnu.org/software/libmicrohttpd/'
license=('LGPL')
depends=('musl')
checkdepends=('curl')
provides=('libmicrohttpd.so')
source=("https://ftp.gnu.org/gnu/libmicrohttpd/$pkgname-$pkgver.tar.gz")
sha256sums=('9278907a6f571b391aab9644fd646a5108ed97311ec66f6359cebbedb0a4e3bb')

build()
{
  cd ${pkgname}-${pkgver}

  ./configure \
    --prefix=/usr \
    --disable-dependency-tracking \
    --disable-examples \
    --disable-heavy-tests \
    --disable-nls \
    --enable-curl \
    --enable-largefile \
    --enable-messages \
    --with-pic

  # --enable-https needs gnutls
  make
}

check()
{
  cd ${pkgname}-${pkgver}

  make check
}

package()
{
  cd ${pkgname}-${pkgver}

  make DESTDIR="$pkgdir" install
  find $pkgdir -name "*.png" -delete
}
