#!/bin/bash

#download solr
echo "[info] Download solr ... "
wget "http://wwwftp.ciril.fr/pub/apache/lucene/solr/6.3.0/solr-6.3.0.tgz"

#unzip solr
tar -xvf solr-6.3.0.tgz

#put solr path in .bashrc
echo "PATH=`pwd`/solr-6.3.0/bin:$PATH" > ~/.bashrc

source  ~/.bashrc
echo "[info] Install apache solr with success. "
