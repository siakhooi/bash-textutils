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
( cd $TARGET/usr/bin/ && ln -s prefix indent )

# Man Pages
mkdir -p $TARGET/usr/share/man/man1/
mkdir -p $TARGET/usr/share/man/man1/
fileList=$(cd $SOURCE/md && find *.1.md | sed 's/.md//')
for file in $fileList; do
  pandoc $SOURCE/md/$file.md -s -t man | gzip -9 >$TARGET/usr/share/man/man1/$file.gz
done

## Create links
(
  cd $TARGET/usr/share/man/man1/
  ln -s prefix.1.gz indent.1.gz
)

dpkg-deb --build -Zxz $TARGET
dpkg-name ${TARGET}.deb

DEBFILE=$(ls ./*.deb)
dpkg --contents "$DEBFILE"
