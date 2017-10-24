#!/bin/sh

ENV_FILE="/harborsetup/configs/ui/env"
if [ -f ${ENV_FILE} ]; then
    export $(cat $ENV_FILE | xargs)
fi 

cp -R /harborsetup/configs/ui/* /etc/ui/
cp /harborsetup/data/secretkey /etc/ui/key

/harbor/harbor_ui