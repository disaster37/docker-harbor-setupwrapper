#!/bin/sh

cp -R /harborsetup/configs/nginx/* /etc/nginx/

nginx -g "daemon off;"