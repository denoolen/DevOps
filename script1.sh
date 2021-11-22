#!/bin/bash

echo "DevOps Autumn School 2021"
echo "------------------------------------"
user=$1
dir=$2

if [ $EUID -ne 0 ]; then
 echo "Error pleace run this cript as a root"
 exit -1
fi


if [ ! -d $dir ] ; then
 echo "Error directore $directiry does not exist"
fi

if ! id -u "$user"& > /dev/null 2>&1; then
 echo "error "
 exit
 fi
chown $user:$user $dir