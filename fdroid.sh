#!/bin/sh

# make sure we never run 2 rsync at the same time
lockfile="/data/tmp/fdroid-mirror.lock"
##if [ -z "$flock" ] ; then
##  exec env flock=1 flock -n $lockfile "$0" "$@"
##fi

exec 9>"${lockfile}"
flock -n 9 || exit

rsync -auvPH --delete-after "rsync://rsync.cyberbits.eu/fdroid/" /data/mirrors/fdroid/fdroid/

