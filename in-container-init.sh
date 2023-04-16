#!/bin/bash

apt update -y

yes | unminimize

apt install -y man-db wget make

wget https://siakhooi.github.io/apt/siakhooi-apt.list -O /etc/apt/sources.list.d/siakhooi-apt.list
wget https://siakhooi.github.io/apt/siakhooi-apt.gpg  -O /usr/share/keyrings/siakhooi-apt.gpg

apt update -y

apt install -y siakhooi-devutils-echo-colors

apt install -y $( find . -name '*.deb')
