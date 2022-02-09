#!/bin/bash

if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) = "0" ]; then
   echo "Installing update 1..."
   echo "This is a thing that the first update did." > /usr/lib/web3updater/patch_1.txt
   #contents="$(jq '.patch_at = "1"' /usr/lib/web3updater/update.json)" && \
   #echo "${contents}" > /usr/lib/web3updater/update.json
   #cat /usr/lib/web3updater/update.json | jq '. + {patch_at: "1"}' > /usr/lib/web3updater/update.json2; mv -f /usr/lib/web3updater/update.json{2,}
   tmp="$(mktemp)"; cat /usr/lib/web3updater/update.json | jq '. + {patch_at: 1}' >"$tmp" && mv "$tmp" /usr/lib/web3updater/update.json
fi

if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) = "1" ]; then
   echo "Installing update 2..."
   echo "This is another effect made by an update." > /usr/lib/web3updater/another_effect.txt
   #contents="$(jq '.patch_at = "2"' /usr/lib/web3updater/update.json)" && \
   #echo "${contents}" > /usr/lib/web3updater/update.json
   #cat /usr/lib/web3updater/update.json | jq '. + {patch_at: "2"}' > /usr/lib/web3updater/update.json2; mv -f /usr/lib/web3updater/update.json{2,}
   tmp="$(mktemp)"; cat /usr/lib/web3updater/update.json | jq '. + {patch_at: 2}' >"$tmp" && mv "$tmp" /usr/lib/web3updater/update.json
fi

if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) = "2" ]; then
   echo "Installing update 3..."
   rm /usr/lib/web3updater/patch_1.txt
   rm /usr/lib/web3updater/another_effect.txt
   cat /usr/lib/web3updater/update.json | jq '. + {"cid_at": ""}' | tee /usr/lib/web3updater/update.json
   #contents="$(jq '.patch_at = "3"' /usr/lib/web3updater/update.json)" && \
   #echo "${contents}" > /usr/lib/web3updater/update.json
   #cat /usr/lib/web3updater/update.json | jq '. + {patch_at: "3"}' > /usr/lib/web3updater/update.json2; mv -f /usr/lib/web3updater/update.json{2,}
   tmp="$(mktemp)"; cat /usr/lib/web3updater/update.json | jq '. + {patch_at: 3}' >"$tmp" && mv "$tmp" /usr/lib/web3updater/update.json
fi

if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) = "3" ]; then
   echo "Installing update 4..."
   cat /usr/lib/web3updater/update.json | jq '. + {"recently_checked_at": ""}' | tee /usr/lib/web3updater/update.json
   cat /usr/lib/web3updater/update.json | jq '. + {"recently_updated_at": ""}' | tee /usr/lib/web3updater/update.json
   #contents="$(jq '.patch_at = "4"' /usr/lib/web3updater/update.json)" && \
   #echo "${contents}" > /usr/lib/web3updater/update.json
   #cat /usr/lib/web3updater/update.json | jq '. + {patch_at: "4"}' > /usr/lib/web3updater/update.json2; mv -f /usr/lib/web3updater/update.json{2,}
   tmp="$(mktemp)"; cat /usr/lib/web3updater/update.json | jq '. + {patch_at: 4}' >"$tmp" && mv "$tmp" /usr/lib/web3updater/update.json
fi

if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) = 4 ]; then
   echo "Installing update 5..."
   cat /usr/lib/web3updater/update.json | jq '. + {"ens": "update.updating.eth"}' | tee /usr/lib/web3updater/update.json
   #contents="$(jq '.patch_at = "5"' /usr/lib/web3updater/update.json)" && \
   #echo "${contents}" > /usr/lib/web3updater/update.json
   #cat /usr/lib/web3updater/update.json | jq '. + {patch_at: "5"}' > /usr/lib/web3updater/update.json2; mv -f /usr/lib/web3updater/update.json{2,}
   tmp="$(mktemp)"; cat /usr/lib/web3updater/update.json | jq '. + {patch_at: 5}' >"$tmp" && mv "$tmp" /usr/lib/web3updater/update.json
fi
