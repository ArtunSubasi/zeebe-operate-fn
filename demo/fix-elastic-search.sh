#/bin/bash
# Elasticsearch sometimes activates a read only mode if the volume is 95% full.
# After freeing disk space, this script can be used to deactivate the read only mode.
curl -XPUT -H "Content-Type: application/json" http://localhost:9200/_cluster/settings -d '{ "transient": { "cluster.routing.allocation.disk.threshold_enabled": false } }'
curl -XPUT -H "Content-Type: application/json" http://localhost:9200/_all/_settings -d '{"index.blocks.read_only_allow_delete": null}'
