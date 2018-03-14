#!/bin/bash

find /etc/homeassistant/ -name '*.yaml' -print0 | 
  while IFS= read -r -d $'\0' filename; do
    if [ "${filename:19}" != "secrets.yaml" ]
    then
      echo "Copying $filename to ${filename:19}";
      cp $filename ${filename:19};
    fi
  done
