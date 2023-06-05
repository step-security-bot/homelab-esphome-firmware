#!/bin/bash
set -euo pipefail

while read fname; do
  echo Processing ${fname}...

  DIRNAME=`dirname ${fname}`

  sops -${1} ${fname} > ${DIRNAME}/secrets.yaml
  
  echo Finished processing ${fname}.
  echo
done <<< "$(find config -name "secrets.enc.yaml")"
