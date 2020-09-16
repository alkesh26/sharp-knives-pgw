#!/usr/bin/env bash

apt-get clean
apt-get update
apt-get install -y build-essential libreadline6 libreadline6-dev python-pip libpq-dev python-dev
pip install --upgrade pip
apt-get install -y postgresql postgresql-contrib
pip install pgcli==2.2.0

source ${SHARED_DIR}/scripts/pg-setup.sh
