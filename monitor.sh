#!/bin/bash

ip=$(hostname -i)
services="sshd jenkins docker"
for i in $services
do
	ps -c $i
	if [ $? -ne 0 ]; then
	  echo -e "Subject:$i is not running in $ip machine\n\n please check and fix the service" | sendmail -v ichimmad69@gmail.com
  else
	  echo "$i is up and runnung"
	fi
done

