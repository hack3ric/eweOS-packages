# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=efistub-tools
pkgver=0.1.0
pkgrel=7
pkgdesc='Script to generate Unified Kernel Image'
arch=('x86_64' 'aarch64')
provides=('efistub')
depends=('binutils-objcopy' 'linux' 'tinyramfs')
source=("efi.x86_64.stub" "efi.aarch64.stub" "genefistub" "cmdline" "$pkgname.hook")
sha256sums=('faeffbdc8af5fd2cea5698af47e80cb4b3df12a89731e079d6a3b32fa0556ba5'
  '25e5b63c335da182920476d5d689ead44466e551bc5f30e064e33ffda7da9f5d'
  'dc5ad23565c0f390906e9bd127412f7dd369125fb1f4aeac56c2f0c8f93c076d'
  '10940c019b1cf1015191ae987568464280d4bcd86194e5a98389a3e9ab12f635'
  'ff73ffd1deae8f16b5d07f766f01d63ad3d4708a6e8947df89fea9a95652872f')

build()
{
  # TODO: Compile EFI stub instead of binary file
  cp efi.$CARCH.stub efi.stub
}

package()
{
  install -D "cmdline" "$pkgdir/etc/kernel/cmdline"
  install -Dm 0755 "efi.stub" "$pkgdir/usr/share/efistub/efi.stub"
  install -Dm 0755 "genefistub" "$pkgdir/usr/bin/genefistub"
  install -Dm 644 $srcdir/$pkgname.hook "$pkgdir/usr/share/libalpm/hooks/99-$pkgname.hook"
}
