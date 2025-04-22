#!/bin/bash

echo "Starting directory build"
TEMP_DIR="tmp"

echo "Creating Directories"
mkdir -p $TEMP_DIR
mkdir -p ./$TEMP_DIR/etc/
mkdir -p ./$TEMP_DIR/usr/sbin/
mkdir -p ./$TEMP_DIR/DEBIAN
mkdir -p ./$TEMP_DIR/lib/systemd/system/
echo "Completed Directory creation"

echo "Starting file moving"
cp ./src/DEBIAN/control ./$TEMP_DIR/DEBIAN/control
cp ./src/DEBIAN/preinst ./$TEMP_DIR/DEBIAN/preinst
cp ./src/DEBIAN/postinst ./$TEMP_DIR/DEBIAN/postinst
cp ./src/DEBIAN/prerm ./$TEMP_DIR/DEBIAN/prerm
cp ./src/DEBIAN/postrm ./$TEMP_DIR/DEBIAN/postrm