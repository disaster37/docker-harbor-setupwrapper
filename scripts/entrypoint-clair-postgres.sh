#!/bin/sh

ENV_FILE="/harborsetup/configs/clair/postgres_env"
if [ -f ${ENV_FILE} ]; then
    export $(cat $ENV_FILE | xargs)
fi  

cp -R /harborsetup/configs/clair/postgresql-init.d/* /docker-entrypoint-initdb.d/

/entrypoint.sh postgres