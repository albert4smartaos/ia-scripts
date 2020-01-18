#!/usr/bin/env bash

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Error check_external_port needs 2 args"
else
   if [ `echo -e '\x1dclose\x0d' | timeout 3 telnet $1 $2 > /dev/null; echo $? | tail -1` == '0' ]
   then
     echo 1
   else
     echo 0
   fi
fi
