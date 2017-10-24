#!/bin/sh

ENV_FILE="/harborsetup/configs/db/env"
if [ -f ${ENV_FILE} ]; then
    export $(cat $ENV_FILE | xargs)
fi  

/entrypoint.sh mysqld