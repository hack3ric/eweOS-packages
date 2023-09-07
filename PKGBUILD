# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=libepoxy
pkgver=1.5.10
pkgrel=3
pkgdesc="Library handling OpenGL function pointer management"
url="https://github.com/anholt/libepoxy"
arch=(x86_64 aarch64 riscv64)
license=(MIT)
depends=(libglvnd)
makedepends=(meson mesa)
source=("${url}/archive/refs/tags/${pkgver}.tar.gz")
sha256sums=('a7ced37f4102b745ac86d6a70a9da399cc139ff168ba6b8002b4d8d43c900c15')

build() {
  ewe-meson $pkgname-$pkgver build \
    -Ddocs=false \
    -Degl=yes \
    -Dx11=false \
    -Dtests=false
  meson compile -C build
}

package() {
  meson install -C build --destdir "$pkgdir"
  install -Dt "$pkgdir/usr/share/licenses/$pkgname" -m644 $pkgname-$pkgver/COPYING
}
