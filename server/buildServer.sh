#!/bin/bash
set -e
autoreconf -i
automake --add-missing
./configure --prefix=`pwd`/server-bin
make
make install
tar czf ServerBin.tar.gz server-bin
