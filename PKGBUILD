# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=rust-bin
pkgver=1.67.1
pkgrel=1
pkgdesc="Systems programming language focused on safety, speed and concurrency"
arch=(x86_64 aarch64 riscv64)
url='https://www.rust-lang.org/'
license=(MIT Apache)
provides=(rust)
conflicts=(rust)
source=(
  rustup.sh::https://sh.rustup.rs
)
sha256sums=('SKIP')

prepare()
{
  chmod +x rustup.sh
}

build()
{
  ./rustup.sh -y --no-modify-path
}

package()
{
  install -d $pkgdir/usr/bin
  cp ~/.cargo/bin/* $pkgdir/usr/bin
}
