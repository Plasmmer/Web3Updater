#!/bin/bash

echo "Welcome to Web3Updater!"
echo "Made in a day where my mom couln't sleep because of an Hare Krishna that lives with my uncle, and the whole day she yelled at us and I became confused. Half day building this piece of art+utility, half day reasoning poorly and thinking to burn all my crypto because money != peace in some cases. But I won't burn my tokens because there are my mom, my uncle and my sister counting on me, and I hope I can change the life of more people, if I even can change the life of my mom and myself/; which is being hard. My brain bugged now to think more so I'll try to focus back on outbursting by building this heresy that no one of these machist transphobe beared professional programmers have thought of. I know Im writing like in 2019 and this is an backstep, but my brain really bugged today, my rare peace of mind from a whole month has been partly broken today. My mom is bipolar, and about Hare I don't want to judge while irritated."

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
echo "Version: v1 / Patch: $(jq -r '.patch_at' patch_at.json)"
echo ""
echo "Checking for new updates..."

echo "$(ethereal ens contenthash get --domain=update.updating.eth)" #remove "/"
#git remote add web3updater https://ipfs.io$(ethereal ens contenthash get --domain=update.updating.eth)
#git pull web3updater

if [ "$(jq -r '.new_patch_at' new_patch_at.json)" -gt "$(jq -r '.patch_at' patch_at.json)" ]; then
    echo "Updating Web3Updater..."
    sh ./update.sh
else
    echo "UP-TO-DATE like a breeze! No new updates to install, yet."
fi

#- install IPFS if not detected (mark it as a template feature for Floflis installer)
#- install ipget if not detected
#- ipfs ls /ipfs/QmYrS7cNYXGGh4n38w5vcgBrinF7X3Yii24PCa2FEWVXuZ/
#- ipfs get --output=tmp-remote QmYrS7cNYXGGh4n38w5vcgBrinF7X3Yii24PCa2FEWVXuZ
#- ipfs pin add QmYrS7cNYXGGh4n38w5vcgBrinF7X3Yii24PCa2FEWVXuZ
