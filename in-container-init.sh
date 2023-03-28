#!/bin/bash

apt update -y

yes | unminimize

apt install -y man-db

apt install -y $( find . -name '*.deb')
