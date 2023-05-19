#!/bin/sh
set -e

shellcheck src/bin/*

TARGET=target
SOURCE=src

mkdir "$TARGET"

# Control File
cp -vr $SOURCE/DEBIAN $TARGET

# Binary File
mkdir -p $TARGET/usr/bin
cp -vr $SOURCE/bin $TARGET/usr
chmod 755 $TARGET/usr/bin/*

# Man Pages
mkdir -p $TARGET/usr/share/man/man1/
fileList=$(cd $SOURCE/md && find *.1.md | sed 's/.md//')
for file in $fileList; do
  pandoc $SOURCE/md/$file.md -s -t man | gzip -9 >$TARGET/usr/share/man/man1/$file.gz
done

fakeroot dpkg-deb --build -Zxz $TARGET
dpkg-name ${TARGET}.deb

DEBFILE=$(ls ./*.deb)

sha256sum "$DEBFILE" >$DEBFILE.sha256sum
sha512sum "$DEBFILE" >$DEBFILE.sha512sum

dpkg --contents "$DEBFILE"
