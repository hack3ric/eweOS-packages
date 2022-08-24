# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=python
_vermajor=3
_verminor=10
pkgver=${_vermajor}.${_verminor}.6
pkgrel=1
pkgdesc='A clear and powerful object-oriented programming language,'
arch=(x86_64)
url='http://www.python.org'
license=(Python)
groups=()
depends=(libffi ncurses openssl readline)
makedepends=(
    libffi
    ncurses
    openssl
    sqlite
    xz
    readline
    zlib
)
options=()

source=(
    "https://www.python.org/ftp/python/${pkgver}/Python-${pkgver}.tar.xz"
)
sha256sums=(
    'SKIP'
)


build() {
    cd Python-${pkgver}
    ./configure \
        --prefix=/usr \
        --sysconfdir=/etc \
        --with-system-ffi
    make
}

package() {
    cd Python-${pkgver}
    make DESTDIR="${pkgdir}" install
    cd ${pkgdir}
    ln -s "python${_vermajor}.${_verminor}" usr/bin/python
    ln -s "pip${_vermajor}" usr/bin/pip
    find . -name "*.pyc" -delete -o -name "*.pyo" -delete
    find . -name 'test' -type d -exec rm -rf '{}' + || true
}

