#!/bin/bash

if [ $(jq -r '.patch_at' patch_at.json) = "0" ]; then
   echo "Installing update 1..."
   echo "This is a thing that the first update did." > patch_1.txt
   jq '.patch_at = "1"' patch_at.json > "$tmp" && mv "$tmp" patch_at.json
fi

if [ $(jq -r '.patch_at' patch_at.json) = "1" ]; then
   echo "Installing update 2..."
   echo "This is another effect made by an update." > another_effect.txt
   jq '.patch_at = "2"' patch_at.json > "$tmp" && mv "$tmp" patch_at.json
fi
