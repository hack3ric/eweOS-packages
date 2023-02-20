# Maintainer: Ziyao <ziyao@disroot.org>

pkgname=lmerge
pkgver=0.1.2
pkgrel=0
pkgdesc="A script to merge Lua sources"
url="https://github.com/ziyao233/lmerge"
arch=(x86_64)
license=('MIT')
depends=('musl' 'lua')
source=("https://github.com/ziyao233/lmerge/archive/refs/tags/v0.1.2.tar.gz")
sha256sums=('SKIP')

package() {
	cd lmerge-${pkgver}/src
	make install INSTALL_DIR=${pkgdir}
}
