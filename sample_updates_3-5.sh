#!/bin/bash

if [ "$1" = "apply3" ]; then
   contents1="$(jq -r '.ens' /usr/lib/web3updater/update.json)"
   cidat=$(ethereal ens contenthash get --domain=${contents1})
   if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) -ge 3 ]; then
      contents="$(jq ".cid_at = \"$cidat\"" /usr/lib/web3updater/update.json)" && \
      echo "${contents}" > /usr/lib/web3updater/update.json
fi

   if [ "$(jq -r '.cid_at' /usr/lib/web3updater/update.json)" != "$cidat" ]; then
      echo "New update detected!"
      echo "..."
      if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) -ge "5" ]; then
         echo "Downloading updates..."
         contents="$(jq -r '.ens' /usr/lib/web3updater/update.json)"
         ipfs pin add $(ethereal ens contenthash get --domain=${contents})
         ipfs ls $(ethereal ens contenthash get --domain=${contents})
         ipfs get --output=/usr/lib/web3updater/tmp-remote $(ethereal ens contenthash get --domain=${contents})
         cd /usr/lib/web3updater && git pull web3updater main && git remote remove web3updater && rm -rf /usr/lib/web3updater/tmp-remote && cd "$SCRIPTPATH"
fi
fi
fi

if [ "$1" = "apply4" ]; then
   # --------------##########---------------------- This checks for update 4 and does its specific actions
   if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) -ge "4" ]; then
      recentlycheckedat=$(date +"%s")
      contents="$(jq ".recently_checked_at = \"$recentlycheckedat\"" /usr/lib/web3updater/update.json)" && \
      echo "${contents}" > /usr/lib/web3updater/update.json
      
      if [ "$2" = "recordrecently" ]; then
         recentlyupdatedat=$(date +"%s")
         contents="$(jq ".recently_updated_at = \"$recentlyupdatedat\"" /usr/lib/web3updater/update.json)" && \
         echo "${contents}" > /usr/lib/web3updater/update.json
fi
      
      if [ "$2" = "displayrecently" ]; then
         contents=$(jq -r '.recently_checked_at' /usr/lib/web3updater/update.json)
         echo "Recently checked at: $(date -d @${contents})"
         contents=$(jq -r '.recently_updated_at' /usr/lib/web3updater/update.json)
         echo "Recently updated at: $(date -d @${contents})"
fi
      
fi
fi
