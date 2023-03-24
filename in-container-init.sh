#!/bin/bash

apt update -y

yes | unminimize

apt install -y man-db

apt install -y ./siakhooi-textutils_1.3.0_amd64.deb
