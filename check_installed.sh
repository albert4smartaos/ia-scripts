#!/bin/bash


var=`dpkg-query -W -f='${Installed-Size} ${Package}\n' | grep $1`
if [ ${#var} -gt 0 ]
then
   echo 1
else
   echo 0
fi

