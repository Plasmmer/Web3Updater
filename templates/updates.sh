#!/bin/bash

#if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) = "0" ]; then
#   echo "Installing update 1..."
   # place here the updates/commands of this first patch. always remember to increase numbers on new updates
#   contents="$(jq '.patch_at = "1"' /usr/lib/web3updater/update.json)" && \
#   echo "${contents}" > /usr/lib/web3updater/update.json
#fi

#if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) = "1" ]; then
#   echo "Installing update 2..."
   # place here the updates/commands of this first patch. always remember to increase numbers on new updates
#   contents="$(jq '.patch_at = "2"' /usr/lib/web3updater/update.json)" && \
#   echo "${contents}" > /usr/lib/web3updater/update.json
#fi
