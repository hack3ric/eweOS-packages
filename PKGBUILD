# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=doctest
pkgver=2.4.11
pkgrel=1
pkgdesc='The feature-rich C++11/14/17/20 single-header testing framework'
arch=('any')
url='https://github.com/onqtam/doctest'
license=('MIT')
makedepends=('cmake')
source=("$url/archive/refs/tags/v${pkgver}.tar.gz")
sha256sums=('632ed2c05a7f53fa961381497bf8069093f0d6628c5f26286161fbd32a560186')

prepare()
{
  mkdir -p $pkgname-$pkgver/build
}

build()
{
  cd $pkgname-$pkgver/build
  cmake -DCMAKE_INSTALL_PREFIX=/usr \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DDOCTEST_WITH_TESTS=off \
    -G"Unix Makefiles" \
    ../
  make
}

package()
{
  cd "${srcdir}/${pkgname}-${pkgver}/build"
  make DESTDIR="${pkgdir}" install
  install -Dm 0644 ../LICENSE.txt \
    "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
