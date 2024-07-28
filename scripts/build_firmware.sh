#!/bin/bash
set -euo pipefail

mkdir firmware

while read fname; do
  echo Compiling ${fname}...

  FILENAME=`basename ${fname}`
  DEVICE_NAME=${FILENAME//.conf.yml}
  FIRMWARE_FILE=`dirname ${fname}`/.esphome/build/${DEVICE_NAME}/.pioenvs/${DEVICE_NAME}/firmware.bin
  FIRMWARE_FINAL_FILE=firmware/${DEVICE_NAME}.bin

  esphome compile ${fname}
  cp ${FIRMWARE_FILE} ${FIRMWARE_FINAL_FILE}
  gzip ${FIRMWARE_FINAL_FILE}
  
  echo Finished compiling ${fname} to ${FIRMWARE_FINAL_FILE}.
  echo
done <<< "$(find config -name "*.conf.yml")"
