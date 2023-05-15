srcurl="https://raw.githubusercontent.com/Reisy243/WahBuidBoot/main"
name="WahBuildBoot"
version="1.1Alpha"
arch="x86_64"
pkgdir="$name-$version-$arch"
curl -O $srcurl/Panwah.tar.gz -O $srcurl/wbb -O $srcurl/pkgs/Debian11/control
if [ -d $pkgdir ]; then
	rm -rvf $pkgdir
fi
mkdir -p $pkgdir/DEBIAN $pkgdir/usr/bin $pkgdir/usr/share/wbb
mv control $pkgdir/DEBIAN
mv wbb $pkgdir/usr/bin
chmod +x $pkgdir/usr/bin/wbb
tar -xvf Panwah.tar.gz
mv Panwah $pkgdir/usr/share/wbb
dpkg-deb --build $pkgdir
