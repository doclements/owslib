#!/bin/bash

# this script publishes Sphinx outputs to github pages
THIS_DIR=`pwd`

git clone git@github.com:geopython/OWSLib.git /tmp/OWSLib
cd /tmp/OWSLib
git checkout gh-pages
/bin/cp -rp $THIS_DIR/build/html/en/* .
git add .
git commit -am "Update docs"
git push origin gh-pages

cd $THIS_DIR
rm -fr /tmp/OWSLib
