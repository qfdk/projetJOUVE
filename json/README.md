## Uploading features : 

```bash
curl -XPUT 'http://localhost:8983/solr/corejouve/schema/feature-store' --data-binary "@feature.json" -H 'Content-type:application/json'
```

## Extract features : 

```bash
http://localhost:8983/solr/corejouve/query?q=skirt&fl=id,score,[features%20store=jouvestore]
```

## Extract model : 

```bash
curl -XPUT 'http://localhost:8983/solr/corejouve/schema/model-store' --data-binary "@model.json" -H 'Content-type:application/json'
```

## Running a rerank query :

```bash
curl http://localhost:8983/solr/corejouve/query?q=skirt&fl=id,score,[features%20store=jouvestore]&rq={!ltr model=jouvemodel reRankDocs=10}
```
