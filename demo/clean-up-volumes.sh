#/bin/bash
rm -Rf ../fn-project/fn-data ../fn-project/iofs
docker-compose -f ../fn-project/docker-compose.yml down --volumes
