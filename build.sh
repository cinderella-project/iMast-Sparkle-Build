#!/bin/sh
set -xe
rm -rf build Sparkle
git clone --recursive -b 2.x https://github.com/sparkle-project/Sparkle
cd Sparkle
git checkout 08a7122b36a78f3ed02b9e930aa5192aa122b6d4
git --git-dir= apply -p1 ../0001.patch
make release