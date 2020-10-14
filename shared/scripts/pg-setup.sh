#!/usr/bin/env bash

sudo -u postgres createuser -s pgw; echo "created user"
sudo -u postgres createdb pgw-main; echo "created database"
sudo -u postgres pg_restore --verbose --clean --no-acl --no-owner -d pgw-main /vagrant_data/scripts/sql-masterclass-data.dump; echo "Imported data backup"
