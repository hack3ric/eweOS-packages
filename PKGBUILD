# Maintainer: Aleksana QwQ <me@aleksana.moe>

pkgname=angband
pkgver=4.2.4
pkgrel=1
pkgdesc="A free, single-player dungeon exploration game. TUI only version."
arch=('x86_64')
url="https://rephial.org/"
license=('GPL')
depends=(ncurses)
makedepends=(cmake)
source=("https://github.com/angband/angband/releases/download/${pkgver}/Angband-${pkgver}.tar.gz"
	angband.sh)
md5sums=('SKIP' 'SKIP')

build() {
  cd Angband-$pkgver
  mkdir build && cd build
  cmake -DSUPPORT_GCU_FRONTEND=ON \
	-DCMAKE_INSTALL_PREFIX=/usr/lib/angband \
	..
  make
}

package() {
  cd Angband-$pkgver/build
  make DESTDIR=$pkgdir install

  # Remove unwanted files (they are for GCU frontend)
  rm -r $pkgdir/usr/lib/angband/lib/{customize,fonts,sounds,icons,tiles,readme.txt}

  # Remove residual makefiles in path
  find $pkgdir -name "Makefile" -delete

  install -Dm755 $srcdir/angband.sh $pkgdir/usr/bin/Angband
}
