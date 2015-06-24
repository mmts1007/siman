#!/bin/bash
if [ ! -e ~/.siman ]; then
  mkdir ~/.siman
fi

if [ ! -e ~/.siman/migration ]; then
  echo '1' > ~/.siman/migration
fi

migration=`cat ~/.siman/migration`

for config in `ls  migration | sort | tail -n +$migration`; do
  echo 'INFO: migration/$config is starting...'
  sh migration/$config
  if [ $? -ne '0' ]; then
    echo "ERROR: migration/$config failed"
    exit 1
  fi
  echo 'INFO: migration/$config finished'
done

res=$(( `ls  migration | sort -r | head -1 | sed -e 's/_.*//'` + 1 ))
echo $res > ~/.siman/migration
