#!/bin/bash
TEMP_DIR="tmp"
dpkg-deb --root-owner-group --build $TEMP_DIR
mv $TEMP_DIR.deb mypl.deb