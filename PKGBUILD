# Maintainer: Aleksana QwQ <me@aleksana.moe>
# Contributor: Felix Yan <felixonmars@archlinux.org>

pkgname=perl-test-needs
pkgver=0.002009
pkgrel=3
pkgdesc="Skip tests when modules not available"
arch=('any')
license=('PerlArtistic')
url="https://metacpan.org/release/Test-Needs"
depends=('perl')
options=('!emptydirs')
source=("https://cpan.metacpan.org/authors/id/H/HA/HAARG/Test-Needs-$pkgver.tar.gz")
sha512sums=('758f22ca9b024f7d3252ff575ae84453e64f4ef4e18d3233cdaa3b81d9212cf48e41fde529047e7355678d5e53345bd51210a45dd9545c3bf8ffe16f96a9500d')

build() {
  cd Test-Needs-$pkgver
  perl Makefile.PL INSTALLDIRS=vendor
  make
}

check() {
  cd Test-Needs-$pkgver
  make test
}

package() {
  cd Test-Needs-$pkgver
  make DESTDIR="$pkgdir" install
}
