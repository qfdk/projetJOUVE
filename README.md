# Projet JOUVE (projet indus)

## Introduction

Mettre en place un prototype basé sur les données d’un site e-commerce en utilisant le ou les modèles de « machine learning » présélectionnés au démarrage du projet par Jouve.

Pour les modèles de « machine learning » : Soit utiliser les nouvelles fonctionnalités de « machine learning » intégrées au cœur de la dernière version du moteur de recherche Apache Solr  6.2, soit intégrer le module Apache Solr « Learning to rank ».

En mettant en œuvre le prototype, les étudiants devront comparer les résultats d’un ranking traditionnel basé uniquement sur la pertinence du contenu des documents avec les fonctionnalités mises en place.

## Install Apache solr with script

Requirements
  - Linux/macOS
  - java 1.8

```bash
git clone https://github.com/qfdk/projetJOUVE.git && cd projetJOUVE
bash script/install.sh
```


## SolrCloud commands

- Launch solr example : `solr start -e cloud -noprompt`
- Add a file to solr : `post -c <collection name> <path><filename>`
- Add several files : `post -c <collection name> <path><regex(ex : *.xml)>`
- Delete a file from solr using JSON format : `post -c <collection name> -type application/JSON -d '{delete : {<key>: <value>}}'`

## Own Solr Config

- create core : `solr start` & `solr create -c <name>`

## Searching

- Combining searches (operators : + - || &&): `curl http://localhost:8983/solr/<core name>/select?indent=on&q=%2B<word to search>+-<word to exclue>&wt=json`

*PS : by default, you have to use xml format* : `post -c <collection name> -d '<delete><key>value</key></delete>'`


## Resources

- [Drive Google](https://drive.google.com/open?id=0B4HJ5bjgQWb-XzNKLWNCdDdKSHc)
- [LTR](https://lucidworks.com/blog/2016/08/17/learning-to-rank-solr/)
- [SOLR Search query](https://cwiki.apache.org/confluence/display/solr/Searching)
