#!/bin/bash
git submodule update --init --recursive
cd gluon
ln -s ../site site
make update
#make GLUON_TARGET=ar71xx-generic
for TARGET in $(make list-targets); do
  make GLUON_TARGET=$TARGET
done
