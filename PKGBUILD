# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgbase=fakeroot
pkgname=(fakeroot fakeroot-tcp)
pkgver=1.29
pkgrel=1
pkgdesc='Tool for simulating superuser privileges'
arch=('x86_64')
license=('GPL')
url='https://tracker.debian.org/pkg/fakeroot'
groups=('base-devel')
depends=('musl' 'filesystem' 'util-linux')
makedepends=('libcap')
source=("https://deb.debian.org/debian/pool/main/f/$pkgname/${pkgname}_${pkgver}.orig.tar.gz" musl.patch)
sha256sums=('SKIP' 'SKIP')

build() {
  cd $srcdir/$pkgbase-$pkgver
  patch -p1 < ${srcdir}/musl.patch
  cp -r $srcdir/$pkgbase-$pkgver $srcdir/$pkgbase-$pkgver-tcp

  cd $srcdir/$pkgbase-$pkgver
  ./configure --prefix=/usr \
    --libdir=/usr/lib/libfakeroot \
    --disable-static \
    --with-ipc=sysv
  make

  cd $srcdir/$pkgbase-$pkgver-tcp
  ./configure --prefix=/usr \
    --libdir=/usr/lib/libfakeroot \
    --disable-static \
    --with-ipc=tcp
  make
}

package_fakeroot() {
  provides=($pkgbase)
  conflicts=($pkgbase)
  cd $srcdir/$pkgbase-$pkgver
  make DESTDIR="$pkgdir" install

  install -dm0755 "$pkgdir/etc/ld.so.conf.d/"
  echo '/usr/lib/libfakeroot' > "$pkgdir/etc/ld.so.conf.d/fakeroot.conf"
}

package_fakeroot-tcp() {
  pkgdesc="$pkgdesc (TCP IPC)"
  provides=($pkgbase)
  conflicts=($pkgbase)
  cd $srcdir/$pkgbase-$pkgver-tcp
  make DESTDIR="$pkgdir" install

  install -dm0755 "$pkgdir/etc/ld.so.conf.d/"
  echo '/usr/lib/libfakeroot' > "$pkgdir/etc/ld.so.conf.d/fakeroot.conf"
}
