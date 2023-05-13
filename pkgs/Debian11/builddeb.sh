srcurl="https://raw.githubusercontent.com/Reisy243/WahBuidBoot/main/"
curl -O $srcurl/Panwah.tar.gz $srcurl/wbb $srcurl/pkgs/Debian11/control
mkdir -p pkg/DEBIAN pkg/usr/bin pkg/usr/share/wbb
mv control pkg/DEBIAN
mv wbb pkg/usb/bin
tar -xvf Panwah.tar.gz
mv Panwah pkg/usr/share/wbb
dpkg-deb --build pkg
