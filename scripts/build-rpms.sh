#!/bin/bash
set -e

rm -rf ~/rpmbuild
rpmdev-setuptree

readonly SOURCE=src
readonly TARGET=~/rpmbuild/BUILD/

# Spec File
cp $SOURCE/RPMS/siakhooi-textutils.spec ~/rpmbuild/SPECS

# Binary File
mkdir -p $TARGET/usr/bin
cp -vr $SOURCE/bin $TARGET/usr
chmod 755 $TARGET/usr/bin/*

# Man Pages
mkdir -p $TARGET/usr/share/man/man1/
fileList=$(cd $SOURCE/md && find ./*.1.md | sed 's/.md//')
for file in $fileList; do
  pandoc "$SOURCE/md/$file.md" -s -t man | gzip -9 >"$TARGET/usr/share/man/man1/$file.gz"
done

# License
cp -vf ./LICENSE "$TARGET"

# build rpm file
rpmlint ~/rpmbuild/SPECS/siakhooi-textutils.spec
rpmbuild -bb -vv ~/rpmbuild/SPECS/siakhooi-textutils.spec
cp -vf ~/rpmbuild/RPMS/noarch/siakhooi-textutils-*.rpm .

# query
tree ~/rpmbuild/
rpm -ql ~/rpmbuild/RPMS/noarch/siakhooi-textutils-*.rpm

rpm_file=$(basename "$(ls ./siakhooi-textutils-*.rpm)")

sha256sum "$rpm_file" >"$rpm_file.sha256sum"
sha512sum "$rpm_file" >"$rpm_file.sha512sum"
