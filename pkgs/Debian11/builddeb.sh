srcurl="https://raw.githubusercontent.com/Reisy243/WahBuidBoot/main"
#curl -O $srcurl/Panwah.tar.gz -O $srcurl/wbb -O $srcurl/pkgs/Debian11/control
if [ -d pkg ]; then
	rm -rvf pkg
fi
mkdir -p pkg/DEBIAN pkg/usr/bin pkg/usr/share/wbb
mv control pkg/DEBIAN
mv wbb pkg/usr/bin
tar -xvf Panwah.tar.gz
mv Panwah pkg/usr/share/wbb

dpkg-deb --build pkg
