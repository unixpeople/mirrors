#!/bin/bash

MAILCOW_BACKUP_LOCATION=/home/backup /opt/mailcow-dockerized/helper-scripts/backup_and_restore.sh backup all --delete-days 14

