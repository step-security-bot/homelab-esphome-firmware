#!/bin/bash

S3_ASSETS_BUCKET="${1}"

s3cmd --access_key=${GCS_ACCESS_KEY_ID} --secret_key="${GCS_SECRET_ACCESS_KEY}" --host="https://storage.googleapis.com" --host-bucket="https://storage.googleapis.com" sync firmware/ s3://${S3_ASSETS_BUCKET}/
