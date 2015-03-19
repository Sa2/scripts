#!/bin/sh

# あらかじめ以下のRPMモジュールをインストールしておくこと
# protobuf
# qt
# qt-x11

echo "create directory /tmp/mozc-install"
mkdir /tmp/mozc-install
cd /tmp/mozc-install

echo "downloading rpm modules from vine repository..."
wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/zinnia-0.06-3vl6.x86_64.rpm
wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/tegaki-zinnia-japanese-0.3-1vl6.noarch.rpm
wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/mozc-server-1.5.1090.102-1vl6.x86_64.rpm
wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/mozc-utils-gui-1.5.1090.102-1vl6.x86_64.rpm
wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/ibus-mozc-1.5.1090.102-1vl6.x86_64.rpm
wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/mozc-1.5.1090.102-1vl6.x86_64.rpm

echo "installing rpm modules..."
rpm -ivh zinnia-0.06-3vl6.x86_64.rpm
rpm -ivh tegaki-zinnia-japanese-0.3-1vl6.noarch.rpm
rpm -ivh mozc-server-1.5.1090.102-1vl6.x86_64.rpm
rpm -ivh mozc-utils-gui-1.5.1090.102-1vl6.x86_64.rpm
rpm -ivh ibus-mozc-1.5.1090.102-1vl6.x86_64.rpm
rpm -ivh mozc-1.5.1090.102-1vl6.x86_64.rpm

echo "remove directory /tmp/mozc-install"
rm -rf /tmp/mozc-install
