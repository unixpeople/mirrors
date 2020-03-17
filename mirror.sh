#!/bin/bash

echo "############################"
echo "starting mirror sync"
date
echo "############################"

echo "syncing alpine mirror!" 
date
/data/bin/alpine.sh > /data/log/alpine.log
echo "############################"

echo "syncing arch mirror!" 
date
/data/bin/arch.sh > /data/log/arch.log
echo "############################"

echo "syncing archstrike mirror!" 
date
/data/bin/archstrike.sh > /data/log/archstrike.log
echo "############################"

echo "syncing artix mirror!" 
date
/data/bin/artix.sh > /data/log/artix.log
echo "############################"

echo "syncing blackarch mirror!" 
date
/data/bin/blackarch.sh > /data/log/blackarch.log
echo "############################"

echo "syncing fdroid mirror!" 
date
/data/bin/fdroid.sh > /data/log/fdroid.log
echo "############################"

echo "syncing mirrors finished"
date
echo "############################"

