#!/bin/bash
# Israel Torres
# self-modifying shell script (builds self-modify-switcher.sh (both good and evil models))
# 20170406
# ./self-modify-switcher-builder.sh
# this builds the self-modify-switcher layers
#
# note: use zip instead of macOS/OSX right-click compress, otherwise end up with forked files.
# to create master build template:
# zip -9 -r build.zip build/*
#
# from build directory - between good and evil ;)
# Layer One
# compress EVIL and GOOD separately
# zip -9 EVIL/self-modify-switcher.sh
# unzip -j self-modify-switcher.sh.zip (junk paths, no directories)
cd EVIL
zip -9 self-modify-switcher.sh.zip self-modify-switcher.sh
base64 self-modify-switcher.sh.zip > self-modify-switcher.sh.EVIL.zip.b64.L1.txt

cd ..

cd GOOD
zip -9 self-modify-switcher.sh.zip self-modify-switcher.sh
base64 self-modify-switcher.sh.zip > self-modify-switcher.sh.GOOD.zip.b64.L1.txt

cd ..

cd EVIL
GVAL1=$(cat ../GOOD/self-modify-switcher.sh.GOOD.zip.b64.L1.txt)
GVAL2=$(for x in $(echo "$GVAL1" | fold -1); do if [[ "$x" == "/" ]] ; then echo -en "\\$x"; else echo -en "$x"; fi; done)
cat self-modify-switcher.sh | sed "s/data=\"\"/data=\"$GVAL2\"/1" > self-modify-switcher.L2.sh
mv self-modify-switcher.L2.sh self-modify-switcher.sh
chmod +x self-modify-switcher.sh

zip -9 self-modify-switcher.sh.zip self-modify-switcher.sh
base64 self-modify-switcher.sh.zip > self-modify-switcher.sh.EVIL.zip.b64.L2.txt

cd ..

cd GOOD
GVAL3=$(cat ../EVIL/self-modify-switcher.sh.EVIL.zip.b64.L1.txt)
GVAL4=$(for x in $(echo "$GVAL3" | fold -1); do if [[ "$x" == "/" ]] ; then echo -en "\\$x"; else echo -en "$x"; fi; done)
cat self-modify-switcher.sh | sed "s/data=\"\"/data=\"$GVAL4\"/1" > self-modify-switcher.L2.sh
mv self-modify-switcher.L2.sh self-modify-switcher.sh
chmod +x self-modify-switcher.sh

zip -9 self-modify-switcher.sh.zip self-modify-switcher.sh
base64 self-modify-switcher.sh.zip > self-modify-switcher.sh.GOOD.zip.b64.L2.txt

cd ..

cd EVIL
GVAL5=$(cat ../GOOD/self-modify-switcher.sh.GOOD.zip.b64.L2.txt)
GVAL6=$(for x in $(echo "$GVAL5" | fold -1); do if [[ "$x" == "/" ]] ; then echo -en "\\$x"; else echo -en "$x"; fi; done)
cat self-modify-switcher.sh | sed "s/data=\"$GVAL2\"/data=\"$GVAL6\"/1" > self-modify-switcher.T.sh
mv self-modify-switcher.T.sh self-modify-switcher.sh
chmod +x self-modify-switcher.sh

cd ..

cd GOOD
GVAL7=$(cat ../EVIL/self-modify-switcher.sh.EVIL.zip.b64.L2.txt)
GVAL8=$(for x in $(echo "$GVAL7" | fold -1); do if [[ "$x" == "/" ]] ; then echo -en "\\$x"; else echo -en "$x"; fi; done)
cat self-modify-switcher.sh | sed "s/data=\"$GVAL4\"/data=\"$GVAL8\"/1" > self-modify-switcher.T.sh
mv self-modify-switcher.T.sh self-modify-switcher.sh
chmod +x self-modify-switcher.sh

#
#EOF
