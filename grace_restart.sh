#!/bin/sh

keys=`(ps -ef |grep "/opt/store/store" |grep -v "grep") | awk '{print $2}'`
for key in ${keys[*]}
do
  kill -usr2 $key
done
