#!/bin/bash


var=`dpkg-query -W -f='${Installed-Size} ${Package}\n' | grep $1`
if [ ${#var} -gt 0 ]
then
    var2=`systemctl list-units --type service | grep running | grep $1`
    if [ ${#var2} -gt 0 ]
    then
       echo 1
    else
       echo 0
    fi
else
    echo 0

fi
