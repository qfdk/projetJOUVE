# Projet JOUVE (projet indus)

## Resources

- [Drive Google](https://drive.google.com/open?id=0B4HJ5bjgQWb-XzNKLWNCdDdKSHc)
- [LTR](https://lucidworks.com/blog/2016/08/17/learning-to-rank-solr/)


## Install your environment

```bash
#!/bin/bash

#download solr
wget "http://wwwftp.ciril.fr/pub/apache/lucene/solr/6.2.1/solr-6.2.1.tgz"

#unzip solr
tar -xvf solr-6.2.1.tgz

#put solr path in .bashrc
echo "PATH=`pwd`/solr-6.2.1/bin:$PATH" > ~/.bashrc

source  ~/.bashrc
```


## Solr commands

- Launch solr example : `solr start -e cloud -noprompt`
- Add a file to solr : `post -c <collection name> <path><filename>`
- Add several files : `post -c <collection name> <path><regex(ex : *.xml)>`
- Delete a file from solr using JSON format : `post -c <collection name> -type application/JSON -d '{delete : {<key>: <value>}}'`

*PS : by default, you have to use xml format : `post -c <collection name> -d '<delete><key>value</key></delete'`*
