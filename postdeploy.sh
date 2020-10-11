#!/bin/sh

pip install --upgrade setuptools pip

superset db upgrade

flask fab create-admin \
    --username admin \
    --firstname user \
    --lastname user \
    --email admin@fab.org \
    --password 123

superset load_examples

superset init
