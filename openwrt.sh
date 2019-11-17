#!/bin/sh

rsync -auvPH --delete-after "rsync://downloads.openwrt.org/downloads" /data/openwrt/

