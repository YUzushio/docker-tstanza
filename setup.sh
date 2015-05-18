#!/bin/bash

wget https://github.com/togostanza/ts/releases/download/v0.0.5/ts_0.0.5_linux_amd64.tar.gz
tar xvf ts_0.0.5_linux_amd64.tar.gz
cd ./ts_0.0.5_linux_amd64
cp ./ts /usr/local/bin/
mkdir /setup/tstanza
cd /setup/tstanza
ts new nello
ts server

