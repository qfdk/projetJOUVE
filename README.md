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

## Default Parameters

|Parameter | Description|
|----------|------------|
|q|Query key:value|
|fq|Applies a filter query to the search results.|
|sort| A sort order(asc or desc)|
|sart,rows|0-10 (number of record)|
|fl|The filed  which to display|
|df|x|

## DisMax Parameters

|Parameter | Description|
|----------|------------|
|q.alt|Calls the standard query parser and defines query input strings, when the q parameter is not used.|
|qf|Query Fields: specifies the fields in the index on which to perform the query. If absent, defaults to df.|
|mm|x|
|pf|x|
|ps|x|
|qs|x|
|tie|x|
|bq|cat:electronics^5.0 inStock:true^0.1|
|bf|x|

## Resources

- [Drive Google](https://drive.google.com/open?id=0B4HJ5bjgQWb-XzNKLWNCdDdKSHc)
- [LTR](https://lucidworks.com/blog/2016/08/17/learning-to-rank-solr/)
- [SOLR Search query](https://cwiki.apache.org/confluence/display/solr/Searching)

## TODO

 - [x] Should_I_use_the_standard_or_dismax_Query_Parser
 - [x] How_can_I_search_for_"superman"_in_both_the_title_and_subject_fields
 - [x] How_can_I_make_"superman"_in_the_title_field_score_higher_than_in_the_subject_field
 - [x] Why_are_search_results_returned_in_the_order_they_are.3F
 - [x] How_can_I_see_the_relevancy_scores_for_search_results
 - [ ] Why_doesn't_my_query_of_"flash"_match_a_field_containing_"Flash"_(with_a_capital_"F")
 - [ ] How_can_I_make_exact-case_matches_score_higher
 - [ ] I'm_getting_query_parse_exceptions_when_making_queries
 - [ ] How_can_I_make_queries_of_"spiderman"_and_"spider_man"_match_"Spider-Man"
 - [x] How_can_I_search_for_one_term_near_another_term_(say.2C_"batman"_and_"movie")
 - [ ] How_can_I_increase_the_score_for_specific_documents
 - [ ] How_can_I_change_the_score_of_a_document_based_on_the_.2Avalue.2A_of_a_field_(say.2C_"popularity")
 - [ ] How_are_documents_scored
 - [ ] Why_does_id#archangel_come_before_id#hawkgirl_when_querying_for_"wings"
 - [ ] Why_doesn't_document_id#juggernaut_appear_in_the_top_10_results_for_my_query
 - [ ] How_can_I_boost_the_score_of_newer_documents
 - [ ] How_do_I_give_a_negative_(or_very_low)_boost_to_documents_that_match_a_query.3F
 - [ ] TODO
