# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=efistub-tools
pkgver=0.1.0
pkgrel=1
pkgdesc='Script to generate Unified Kernel Image'
arch=('x86_64')
provides=('efistub')
depends=('binutils-objcopy' 'linux' 'tinyramfs')
source=("efi.stub" "genefistub" "cmdline")
sha256sums=('SKIP' 'SKIP' 'SKIP')

package()
{
  install -D "cmdline" "$pkgdir/etc/kernel/cmdline"
  install -Dm 0755 "efi.stub" "$pkgdir/usr/share/efistub/efi.stub"
  install -Dm 0755 "genefistub" "$pkgdir/usr/bin/genefistub"
}
