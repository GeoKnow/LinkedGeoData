
*TODO* As of 2018-06-04 we are revising the dump process

Usage:


The entry point for dumping is
```bash
./create-dump-dcat.sh lgd-release-types.txt
```

*TODO* A sparql query processor needs to be passed as an extra argument - i.e. another shell command that knows how to execute SPARQL queries.


This script first queries the sparql endpoint for the dataset name and timestamp.
On this basis, a dataset id will be deterministically generated, which serves as a base for the target folder and the dcat description.

In a first phase, for all entity types that will be dumped, corresponding 'properties' files will be placed under `target/{datasetId}/`.
These properties files serve 2 purposes:

* A dcat description will be assembled (which already points to the files to be generated)
* A dump script will be generated

Once these dump scripts are successfully executed, the dcat description can be readily used to deploy the datasets to a CKAN or a Virtuoso.


```bash
ln -s create-script-entity-type-tool.sh create-script-entity-type.sh

./create-dump.sh lgd-release-types.txt "-Plgd" 0
```
