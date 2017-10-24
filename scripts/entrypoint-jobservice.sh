#!/bin/sh

ENV_FILE="/harborsetup/configs/jobservice/env"
if [ -f ${ENV_FILE} ]; then
    export $(cat $ENV_FILE | xargs)
fi 

mkdir -p /etc/jobservice
cp -R /harborsetup/configs/jobservice/* /etc/jobservice/
cp /harborsetup/data/secretkey /etc/jobservice/key

/harbor/harbor_jobservice