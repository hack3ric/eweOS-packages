# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=mkinitramfs
pkgver=0.2.1
pkgrel=1
pkgdesc='initramfs scripts for eweOS'
arch=(any)
depends=('e2fsprogs' 'util-linux' 'util-linux-libs' 'musl' 'busybox')
source=("init.in" "mk")
sha256sums=('fac47647196f65a70b31228cc9a560977a77875afd1e43eb11c39632f14f3132'
            '945e32c8b9777b6b1b2c0d730be487c5a311b5aaeb1670d0e4a3cbc0b174efa7')

package()
{
  install -dm755 "$pkgdir/usr/share/mkinitramfs"
  install -dm755 "$pkgdir/usr/bin"
  install -m 0755 "init.in" "$pkgdir/usr/share/mkinitramfs/init.in"
  install -m 0755 "mk" "$pkgdir/usr/bin/mkinitramfs"
}
