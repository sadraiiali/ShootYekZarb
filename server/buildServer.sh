#!/bin/bash
set -e
autoreconf -i
automake --add-missing
./configure --prefix=`pwd`/server-bin
make
make install
cp /usr/lib/libboost_filesystem.so* server-bin
tar czf ServerBin.tar.gz server-bin
