#!/bin/bash

echo "Welcome to Web3Updater!"
echo ""
echo "Version: v1 / Patch: $(jq -r '.patch_at' patch_at.json)"

if [ ! -f patch_at.json ]; then
    echo ""
    echo "It looks like its your first time using Web3Updater..."
    echo ""
echo "The web3 (that came from Ethereum and IPFS) is replacing the web 2.0, and Web3Updater will put it also on OS/app updates!"
echo ""
echo "Never more depend on centralized servers to get updates."
echo ""
echo "As Web3Updater can be used in any product to manage updates (such as Electron apps), it uses itself to update itself (meta-language)."
echo ""
echo "Initializing..."
    cat > patch_at.json <<EOF
{
"patch_at": 0
}
EOF
echo "Done!"
fi

echo ""
echo "Checking for new updates..."

if [ "$(jq -r '.new_patch_at' new_patch_at.json)" -gt "$(jq -r '.patch_at' patch_at.json)" ]; then
    echo "Updating Web3Updater..."
    sh ./update.sh
else
    echo "UP-TO-DATE like a breeze! No new updates to install, yet."
fi

git clone https://ipfs.io$(ethereal ens contenthash get --domain=plasmmer.eth)

#- use .eth.link to update
#- use ethereal to fetch ENS for updated .git CID
