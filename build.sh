#!/bin/bash
pkgname="hanifx"
version="1.0.0"
mkdir -p ${pkgname}/DEBIAN
cp -r debian/control ${pkgname}/DEBIAN/
cp -r debian/postinst ${pkgname}/DEBIAN/
chmod 755 ${pkgname}/DEBIAN/postinst

mkdir -p ${pkgname}/data/data/com.termux/files/usr/bin
cp bin/hanifx ${pkgname}/data/data/com.termux/files/usr/bin/
chmod +x ${pkgname}/data/data/com.termux/files/usr/bin/hanifx

mkdir -p ${pkgname}/data/data/com.termux/files/usr/lib/${pkgname}
cp -r hanifx/* ${pkgname}/data/data/com.termux/files/usr/lib/${pkgname}/

dpkg-deb --build ${pkgname}
