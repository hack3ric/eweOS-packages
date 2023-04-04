# Maintainer: Ziyao <ziyao@disroot.org>

pkgname=ewe_pkgtool
pkgver=243caf5
pkgrel=0
_commit=243caf537e249617798e530f3255fa6beff11ced
pkgdesc="Tools for packaging on eweOS"
url="https://github.com/eweOS/ewe-pkgtool"
arch=(x86_64 aarch64)
license=('MIT')
depends=('musl' 'lua')
source=("ewe-pkgtool.zip::https://github.com/eweOS/ewe-pkgtool/archive/$_commit.zip")
sha256sums=('da136146c31f96228b2c34b8e2b7bdc4db9a2ee05cb61e7c83da683200c58a5b')

package() {
	cd ewe-pkgtool-$_commit
	install -Dm 755 src/ewe-pkgcreate.lua $pkgdir/usr/bin/ewe-pkgcreate
	install -Dm 644 LICENSE $pkgdir/usr/share/licenses/ewe-pkgtool/LICENSE
}
