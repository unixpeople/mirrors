#!/bin/bash

echo "############################"
echo "starting mirror sync"
date
echo "############################"

echo "syncing alpine mirror!" 
date
/shared/hanez/bin/alpine.sh > /shared/hanez/log/alpine.log
echo "############################"

echo "syncing arch mirror!" 
date
/shared/hanez/bin/arch.sh > /shared/hanez/log/arch.log
echo "############################"

echo "syncing artix mirror!" 
date
/shared/hanez/bin/artix.sh > /shared/hanez/log/artix.log
echo "############################"

echo "syncing blackarch mirror!" 
date
/shared/hanez/bin/blackarch.sh > /shared/hanez/log/blackarch.log
echo "############################"

echo "syncing fdroid mirror!" 
date
/shared/hanez/bin/fdroid.sh > /shared/hanez/log/fdroid.log
echo "############################"

echo "syncing mirrors finished"
date
echo "############################"

