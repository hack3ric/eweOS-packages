# Maintainer: Ziyao <ziyao@disroot.org>

pkgname=ewe_pkgtool
pkgver=ea4f2bc
pkgrel=0
_commit=ea4f2bc641e1517991128a902d51df815a1bd7cb
pkgdesc="Tools for packaging on eweOS"
url="https://github.com/eweOS/ewe-pkgtool"
arch=(x86_64 aarch64 riscv64)
license=('MIT')
depends=('musl' 'lua54')
source=("ewe-pkgtool.zip::https://github.com/eweOS/ewe-pkgtool/archive/$_commit.zip")
sha256sums=('218915ea1e21c049938abe86f54d6a5520fdd59ba367c13d6489b82d6576fc84')


package() {
	cd ewe-pkgtool-$_commit
	install -Dm 755 src/ewe-pkgcreate.lua $pkgdir/usr/bin/ewe-pkgcreate
	install -Dm 644 LICENSE $pkgdir/usr/share/licenses/ewe-pkgtool/LICENSE
}
