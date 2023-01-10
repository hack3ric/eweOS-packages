# Maintainer: Aleksana QwQ <me@aleksana.moe>
# Contributor: Lukas Fleischer <lfleischer@archlinux.org>
# Contributor: Mateusz Herych <heniekk@gmail.com>
# Contributor: Thomas Mader <thezema@gmail.com>
# Contributor: Vinay S Shastry <vinayshastry@gmail.com>
# Contributor: tardo <tardo@nagi-fanboi.net>

pkgname=astyle
pkgver=3.1
_pkgver=3.1.0
pkgrel=3
pkgdesc='A free, fast and small automatic formatter for C, C++, C#, and Java source code.'
arch=(x86_64 aarch64)
url='http://astyle.sourceforge.net/'
license=('LGPL')
depends=('llvm-libs')
source=("https://downloads.sourceforge.net/sourceforge/astyle/${pkgname}_${pkgver}_linux.tar.gz")
sha256sums=('SKIP')

build()
{
  cd "$srcdir/$pkgname/build/gcc"
  make CXX=c++ release shared
}

package()
{
  cd "$srcdir/$pkgname/build/gcc"

  install -Dm0755 bin/astyle "$pkgdir/usr/bin/astyle"
  install -Dm0755 "bin/libastyle.so.${_pkgver}" "$pkgdir/usr/lib/libastyle.so.${_pkgver}"
  ln -s libastyle.so.${_pkgver} "$pkgdir"/usr/lib/libastyle.so.${_pkgver%%\.*}
  ln -s libastyle.so.${_pkgver} "$pkgdir"/usr/lib/libastyle.so

  # install header
  install -Dm0644 ../../src/astyle.h -t "$pkgdir"/usr/include

  # install documentation (implements FS#23290)
  install -d "$pkgdir/usr/share/doc/$pkgname/"
  for f in ../../doc/*.html; do
    install -m0644 "$f" "$pkgdir/usr/share/doc/$pkgname/"
  done
}
