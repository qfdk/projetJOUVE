#!/bin/bash
VERSION=6.4.0

#download solr
echo "[info] Download solr ... "
wget "http://wwwftp.ciril.fr/pub/apache/lucene/solr/$VERSION/solr-$VERSION.tgz"

#unzip solr
mkdir -p ~/bin
tar -xvf solr-$VERSION.tgz -C ~/bin

#put solr path in .bashrc
cd
echo "PATH=~/bin/solr-$VERSION/bin:$PATH" > .bashrc
source .bashrc

echo "[info] Install apache solr with success. "
