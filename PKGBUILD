# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=sway
pkgver=1.8
pkgrel=1
pkgdesc='Tiling Wayland compositor and replacement for the i3 window manager'
arch=(x86_64)
url='https://swaywm.org/'
license=(MIT)
depends=(
)
makedepends=(meson ninja wayland-protocols pcre2)
source=(
	"git+https://github.com/swaywm/sway.git#tag=v1.8-rc3"
)
sha256sums=('SKIP')

build() {
  mkdir -p build
  ewe-meson build "$pkgname" -D werror=false -D b_ndebug=true
  ninja -C build
}

package() {
  DESTDIR="$pkgdir" ninja -C build install
}

