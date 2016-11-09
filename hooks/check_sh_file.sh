#!/bin/bash
if $(find . -name '*.sh'|xargs ls -al|grep -v "\-rwxr\-xr\-x"|wc -l) != 0
then
  echo "auto fix *.sh permission."
	find . -name '*.sh'|xargs chmod uga+x
	exit 1
fi
