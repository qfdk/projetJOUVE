#!/bin/bash
VERSION=6.3.0

#download solr
echo "[info] Download solr ... "
wget "http://wwwftp.ciril.fr/pub/apache/lucene/solr/$VERSION/solr-$VERSION.tgz"

#unzip solr
tar -xvf solr-$VERSION.tgz -C ~/bin

#put solr path in .bashrc
cd
echo "PATH=~/bin/solr-$VERSION/bin:$PATH" > .bashrc
source .bashrc

echo "[info] Install apache solr with success. "
