#!/bin/bash

# make sure we never run 2 rsync at the same time
lockfile="/data/tmp/artix-mirror.lock"
if [ -z "$flock" ] ; then
  exec env flock=1 flock -n $lockfile "$0" "$@"
fi

rsync -auvPH --delete-after "rsync://mirrors.dotsrc.org/artix-linux/" /data/mirrors/artix/

#rsync -auvPH --delete-after "rsync://orion.artixlinux.org:64873/" /data/artix/repos/
#rsync -auvPH --delete-after "rsync://download.artixlinux.org/iso/" /data/artix/iso/

