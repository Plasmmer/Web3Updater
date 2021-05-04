#!/bin/bash

if [ $(jq -r '.patch_at' update.json) = "0" ]; then
   echo "Installing update 1..."
   echo "This is a thing that the first update did." > patch_1.txt
   contents="$(jq '.patch_at = "1"' update.json)" && \
echo "${contents}" > update.json
fi

if [ $(jq -r '.patch_at' update.json) = "1" ]; then
   echo "Installing update 2..."
   echo "This is another effect made by an update." > another_effect.txt
   contents="$(jq '.patch_at = "2"' update.json)" && \
echo "${contents}" > update.json
fi

#if [ $(jq -r '.patch_at' update.json) = "2" ]; then
#   echo "Installing update 3..."
#   rm patch_1.txt
#   rm another_effect.txt
#   jq '. += ["cid_at": ""]' update.json
#   contents="$(jq '.patch_at = "3"' update.json)" && \
#echo "${contents}" > update.json
#fi
