#!/bin/sh

cp -R /harborsetup/configs/clair/* /config/

/clair2.0.1/clair -config /config/config.yaml