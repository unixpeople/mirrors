#!/usr/bin/env sh

rsync -auvPH --delete-after rsync://mirror.archstrike.org/archstrike /data/mirrors/archstrike/

