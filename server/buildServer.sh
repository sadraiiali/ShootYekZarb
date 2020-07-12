#!/bin/bash
set -e
autoreconf -i
automake --add-missing
./configure
make -j8