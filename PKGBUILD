# Maintainer: Yukari Chiba <i@0x7f.cc>

pkgname=java-18-openjdk
pkgver=18.0.2.1
pkgrel=1
arch=(x86_64 aarch64)
url="https://github.com/adoptium/temurin18-binaries"
license=('GPL2')
source=("${url}/releases/download/jdk-${pkgver}%2B1/OpenJDK18U-jdk_x64_alpine-linux_hotspot_${pkgver}_1.tar.gz")
sha256sums=('SKIP')

package()
{
  # jvm
  install -d $pkgdir/usr/lib/jvm
  cp -a "./jdk-${pkgver}+1" $pkgdir/usr/lib/jvm/$pkgname

  cd $pkgdir/usr/lib/jvm/$pkgname

  # Conf
  install -d $pkgdir/etc
  mv conf $pkgdir/etc/$pkgname
  ln -sf /etc/$pkgname conf

  # Legal
  install -d ${pkgdir}/usr/share/licenses
  mv legal ${pkgdir}/usr/share/licenses/$pkgname
  ln -sf /usr/share/licenses/$pkgname legal

  # Man pages
  rm -rf man

  # Link JKS keystore from ca-certificates-utils
  rm -f lib/security/cacerts
  ln -sf /etc/ssl/certs/java/cacerts lib/security/cacerts
}
