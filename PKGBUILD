# Maintainer: Ziyao <ziyao@disroot.org>

pkgname=ewe_pkgtool
pkgver=956541d
pkgrel=0
_commit=956541d8717b677e0f90053b65f6b223e32a90e7
pkgdesc="Tools for packaging on eweOS"
url="https://github.com/eweOS/ewe-pkgtool"
arch=(x86_64 aarch64)
license=('MIT')
depends=('musl' 'lua')
source=("ewe-pkgtool.zip::https://github.com/eweOS/ewe-pkgtool/archive/$_commit.zip")
sha256sums=('b03a12ef9481e09bdf81807c60af4f1bf513968119d8e20c45dbc948e69a7fc9')

package() {
	cd ewe-pkgtool-$_commit
	install -Dm 755 src/ewe-pkgcreate.lua $pkgdir/usr/bin/ewe-pkgcreate
	install -Dm 644 LICENSE $pkgdir/usr/share/licenses/ewe-pkgtool/LICENSE
}
