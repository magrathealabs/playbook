#!/bin/bash

if ! hash pipenv 2>/dev/null; then
  echo "You must install pipenv command with `pip install pipenv`"
  exit 1
fi

LOCAL_BUILD="site/"
BUCKET_NAME="playbook.magrathealabs.com"

pipenv install
pipenv run mkdocs build
pipenv run aws s3 sync $LOCAL_BUILD s3://$BUCKET_NAME
