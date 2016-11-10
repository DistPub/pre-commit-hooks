#!/bin/bash
number=$(echo $@|xargs ls -al|grep -v "\-rwxr\-xr\-x"|wc -l)
number=$(($number + 0))
if [[ $number != 0 ]]; then
  echo "auto fix *.sh permission."
  echo $@|xargs chmod uga+x
  exit 1
fi
