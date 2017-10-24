#!/bin/sh


cp -R /harborsetup/configs/registry /etc

/entrypoint.sh serve /etc/registry/config.yml