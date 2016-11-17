#!/bin/bash
VERSION=6.3.0

#download solr
echo "[info] Download solr ... "
wget "http://wwwftp.ciril.fr/pub/apache/lucene/solr/$VERSION/solr-$VERSION.tgz"

#unzip solr
tar -xvf solr-$VERSION.tgz

#put solr path in .bashrc
echo "PATH=`pwd`/solr-$VERSION/bin:$PATH" > ~/.bashrc

source  ~/.bashrc
echo "[info] Install apache solr with success. "
