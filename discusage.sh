#!/bin/bash
set -x
echo "testing the git"
size=$(df -h . | awk 'NR==2{print(NF -1)}' | sed 's/%//g')
if [ $size > 30 ]; then
  echo "Subject:Current usage is more than 70% please check and do the needfull" | sendmail -v ichimmad69@gmail.com
fi
