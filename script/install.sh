#!/bin/bash

#download solr
echo "[info] Download solr ... "
wget "http://wwwftp.ciril.fr/pub/apache/lucene/solr/6.2.1/solr-6.2.1.tgz"

#unzip solr
tar -xvf solr-6.2.1.tgz

#put solr path in .bashrc
echo "PATH=`pwd`/solr-6.2.1/bin:$PATH" > ~/.bashrc

source  ~/.bashrc
echo "[info] Install apache solr with success. "
