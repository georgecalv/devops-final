#!/bin/bash

echo "Starting directory build"
TEMP_DIR="tmp"

echo "Creating Directories"
mkdir -p $TEMP_DIR
mkdir -p ./$TEMP_DIR/usr/local/bin
mkdir -p ./$TEMP_DIR/DEBIAN
echo "Completed Directory creation"

echo "Starting file moving"
cp ./src/DEBIAN/control ./$TEMP_DIR/DEBIAN/control
cp ./src/DEBIAN/prerm ./$TEMP_DIR/DEBIAN/prerm
cp -r ./src/usr/local/bin/ ./$TEMP_DIR/usr/local/ || true
echo "finished file moving"