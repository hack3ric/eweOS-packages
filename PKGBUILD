# Maintainer: Aleksana QwQ <me@aleksana.moe>
# Contributor: Andreas Radke <andyrtr@archlinux.org>
# Contributor: judd <jvinet@zeroflux.org>

pkgname=libgpg-error
pkgver=1.46
pkgrel=0
pkgdesc="Support library for libgcrypt"
arch=(x86_64 aarch64)
url="https://www.gnupg.org"
license=('LGPL')
depends=('musl' 'sh')
source=(https://www.gnupg.org/ftp/gcrypt/libgpg-error/${pkgname}-${pkgver}.tar.bz2)
sha1sums=('SKIP')

prepare()
{
  cd ${pkgname}-${pkgver}
  autoreconf -vfi
}

build()
{
  cd ${pkgname}-${pkgver}
  ./configure --prefix=/usr
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
  make DESTDIR="${pkgdir}/" install
}
