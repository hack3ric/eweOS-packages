# Maintainer: Ziyao <ziyao@disroot.org>

pkgname=temu
pkgdesc='Tiny Emulator'
pkgver='2019_12_21'
version='2019-12-21'
pkgrel=0
url='https://bellard.org/tinyemu'
license=('MIT')
depends=('musl' 'openssl' 'curl')
source=("https://bellard.org/tinyemu/tinyemu-${version}.tar.gz")
sha256sums=('SKIP')
arch=(x86_64 aarch64)

build() {
	cd tinyemu-${version}
	sed -i -e "29d" -e "34d" Makefile
	make
}

package() {
	cd tinyemu-${version}
	mkdir -p ${pkgdir}/usr/local/bin
	make install bindir=${pkgdir}/usr/local/bin
	install -Dm 644 MIT-LICENSE.txt \
		${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
}
