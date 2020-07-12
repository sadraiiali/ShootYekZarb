#!/bin/bash
set -e
autoreconf -i
automake --add-missing
./configure CXXFLAGS='-std=c++03'
make -j8