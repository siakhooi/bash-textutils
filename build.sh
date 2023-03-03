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

# Man Pages
mkdir -p $TARGET/usr/share/man/man1/
pandoc $SOURCE/md/siakhooi-devutils-indent.1.md -s -t man | gzip -9 >$TARGET/usr/share/man/man1/siakhooi-devutils-indent.1.gz

dpkg --build $TARGET
dpkg-name ${TARGET}.deb

DEBFILE=$(ls ./*.deb)
dpkg --contents "$DEBFILE"
