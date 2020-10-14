#!/usr/bin/env bash

apt-get clean
apt-get update
apt-get install -y build-essential libreadline6 libreadline6-dev postgresql postgresql-contrib
source ${SHARED_DIR}/scripts/pg-setup.sh
