# Maintainer: Ziyao <ziyao@disroot.org>

pkgname=libogg
pkgdesc='Ogg bitstream library'
pkgver=1.3.5
pkgrel=1
url='https://xiph.org/ogg/'
license=('BSD')
depends=('musl')
source=("https://downloads.xiph.org/releases/ogg/libogg-${pkgver}.tar.gz")
sha256sums=('0eb4b4b9420a0f51db142ba3f9c64b333f826532dc0f48c6410ae51f4799b664')
arch=(x86_64 aarch64 riscv64)
provides=('libogg.so')

build() {
	cd libogg-${pkgver}
	./configure --prefix=/usr
	make
}
package() {
	cd libogg-${pkgver}
	make install DESTDIR=${pkgdir}/
	install -Dm 644 COPYING ${pkgdir}/usr/share/licenses/libogg/LICENSE
}
