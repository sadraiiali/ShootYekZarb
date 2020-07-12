#!/bin/bash
set -e
autoreconf -i
automake --add-missing
./configure --prefix=`pwd`/server-bin
make
make install

wget -c "https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage" -O linuxdeploy-x86_64.AppImage
chmod +x linuxdeploy-x86_64.AppImage
mkdir rcssserver-x86_64
./linuxdeploy-x86_64.AppImage --appdir ./rcssserver-x86_64 \
                                -e ./server-bin/bin/rcssserver \
                                -l ./server-bin/lib/librcssclangparser.so \
                                -l ./server-bin/lib/librcssconfparser.so \
                                -l ./server-bin/lib/librcssgz.so \
                                -l ./server-bin/lib/librcssnet.so \
                                -d ./appimage/rcssserver.desktop \
                                -i ./appimage/rcssserver.png \
                                --output appimage 
echo "App Image Created."
mv rcssserver-x86_64*AppImage rcssserver-x86_64.AppImage
