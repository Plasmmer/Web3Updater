#!/bin/bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

if [ "$1" = "apply3" ]; then
   if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) -ge "3" ]; then
      if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) -ge "5" ]; then
         # congratulations to ENS for removing Brantly and Twitter for continuing it. Despite everything Brantly Millegan did to ENS, meritocracy didn't won for a men who spreads hate veiled into religion.
         contents1="$(jq -r '.ens' update.json)"
         cidat=$(ethereal ens contenthash get --domain=${contents1})
         contents="$(jq ".cid_at = \"$cidat\"" update.json)" && \
         echo "${contents}" > update.json
      
         if [ "$(jq -r '.cid_at' update.json)" != "$cidat" ]; then
            echo "New update detected!"
            echo "..."
            echo "Downloading updates..."
            contents="$(jq -r '.ens' update.json)"
            ipfs pin add $(ethereal ens contenthash get --domain=${contents})
            ipfs ls $(ethereal ens contenthash get --domain=${contents})
            ipfs get --output=tmp-remote $(ethereal ens contenthash get --domain=${contents})
            #cd /usr/lib/web3updater
            git pull web3updater main && git remote remove web3updater && rm -rf tmp-remote
            #cd "$SCRIPTPATH"
fi
fi
fi
fi

if [ "$1" = "apply4" ]; then
   # --------------##########---------------------- This checks for update 4 and does its specific actions
   if [ $(jq -r '.patch_at' /usr/lib/web3updater/update.json) -ge 4 ]; then
      recentlycheckedat=$(date +"%s")
      contents="$(jq ".recently_checked_at = \"$recentlycheckedat\"" update.json)" && \
      echo "${contents}" > update.json
      
      if [ "$2" = "recordrecently" ]; then
         recentlyupdatedat=$(date +"%s")
         contents="$(jq ".recently_updated_at = \"$recentlyupdatedat\"" update.json)" && \
         echo "${contents}" > update.json
fi
      
      if [ "$2" = "displayrecently" ]; then
         contents=$(jq -r '.recently_checked_at' update.json)
         echo "Recently checked at: $(date -d @${contents})"
         if [ "$(jq -r '.new_patch_at' new_patch_at.json)" -gt "0" ]; then
            contents=$(jq -r '.recently_updated_at' update.json)
            echo "Recently updated at: $(date -d @${contents})"
fi
fi

fi
fi
