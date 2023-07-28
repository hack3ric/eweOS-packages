# Maintainer: Ziyao <ziyao@disroot.org>

pkgname=lmerge
pkgver=0.1.2
pkgrel=0
pkgdesc="A script to merge Lua sources"
url="https://github.com/ziyao233/lmerge"
arch=(x86_64 riscv64)
license=('MIT')
depends=('musl' 'lua')
source=("https://github.com/ziyao233/lmerge/archive/refs/tags/v0.1.2.tar.gz")
sha256sums=('33a4c613257c23dcaf39e7b5f4ff146d21eab210a2f49456252a41f7af1b111e')

package() {
	cd lmerge-${pkgver}/src
	make install INSTALL_DIR=${pkgdir}
}
