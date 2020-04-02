#!/bin/sh

# make sure we never run 2 rsync at the same time
lockfile="/data/tmp/fdroid-mirror.lock"
if [ -z "$flock" ] ; then
  exec env flock=1 flock -n $lockfile "$0" "$@"
fi

rsync -auvPH --delete-after "rsync://rsync.cyberbits.eu/fdroid/" /data/mirrors/fdroid/fdroid/

