# Maintainer: YukariChiba <i@0x7f.cc>

pkgname=pam_rundir
pkgver=1.0.0
pkgrel=1
pkgdesc='PAM module to provide user runtime directory on Linux systems '
arch=('x86_64' 'aarch64')
url="http://jjacky.com/$pkgname"
license=('GPL2+')
depends=("pam")
source=("$url/$pkgname-$pkgver.tar.gz")
sha256sums=('SKIP')

build() {
  cd $pkgname-$pkgver
  ./configure --prefix=/usr
  make
}

package() {
  cd $pkgname-$pkgver
  make DESTDIR="$pkgdir/" install
}
