# Maintainer: Yao Zi <ziyao@disroot.org>

pkgname=liblcms2
pkgver=2.15
pkgrel=0
pkgdesc='Color Management Engine'
url='https://www.littlecms.com/'
arch=(x86_64 aarch64)
license=(MIT)
depends=(libtiff)
provides=('liblcms2.so' 'lcms' 'lcms2')
source=("https://github.com/mm2/Little-CMS/archive/refs/tags/lcms$pkgver.tar.gz")

build () {
	cd Little-CMS-lcms$pkgver
	./configure --prefix=/usr
	make
}

check() {
	cd Little-CMS-lcms$pkgver
	make check
}

package() {
	cd Little-CMS-lcms$pkgver
	make install DESTDIR=${pkgdir}
}

sha256sums=('SKIP')
