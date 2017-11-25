#!/bin/bash

find ~homeassistant/.homeassistant/ -name '*.yaml' -print0 | 
  while IFS= read -r -d $'\0' filename; do
    if [ "${filename:35}" != "secrets.yaml" ]
    then
      echo "Copying $filename to ${filename:35}";
      cp $filename ${filename:35};
    fi
  done
