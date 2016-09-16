#!/bin/bash
set -e
checksumbin=md5sum
checksumfile=MD5SUMS
shopt -s globstar
for d in **/ ; do
  pushd "$d"
  find . -maxdepth 1 -type f -print0 | xargs -0 $checksumbin > $checksumfile
  popd
done