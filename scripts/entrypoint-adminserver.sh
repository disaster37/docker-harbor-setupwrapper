#!/bin/sh

ENV_FILE="/harborsetup/configs/adminserver/env"
if [ -f ${ENV_FILE} ]; then
    export $(cat $ENV_FILE | xargs)
fi 

cp /harborsetup/data/secretkey /etc/adminserver/key

/harbor/harbor_adminserver