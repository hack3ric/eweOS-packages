# Maintainer: Ziyao <ziyao@disroot.org>

pkgname=ewe_pkgtool
pkgver=4ec02c1
pkgrel=1
_commit=4ec02c188fbd47350a46303d82aedc5c3ee4df37
pkgdesc="Tools for packaging on eweOS"
url="https://github.com/eweOS/ewe-pkgtool"
arch=(x86_64 aarch64 riscv64)
license=('MIT')
depends=('musl' 'lua54')
source=("ewe-pkgtool.zip::https://github.com/eweOS/ewe-pkgtool/archive/$_commit.zip")
sha256sums=('c0a9355c1aa73c8c1a6901004941a2a9ff5160271ce1df2c60f9800170c4ad34')

package() {
	cd ewe-pkgtool-$_commit
	install -Dm 755 src/ewe-pkgcreate.lua $pkgdir/usr/bin/ewe-pkgcreate
	install -Dm 644 LICENSE $pkgdir/usr/share/licenses/ewe-pkgtool/LICENSE
}
