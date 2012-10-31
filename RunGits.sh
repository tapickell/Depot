#!/bin/bash
while true; do
  if [[ $(date +%M) =~ (00|30|40) ]] ; then
    git status
    sleep 60
  fi
done
