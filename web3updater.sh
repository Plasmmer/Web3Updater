#!/bin/bash
nm="Web3Updater"
vs="v1"
web3updaterversion="""
        \e[1;42m $nm \e[0m\e[100m version $vs \e[0m
        \e[100m Created in 02-05-2021 by Daniell Mesquita \e[0m
"""

#- install on /libs folder like Floflis, with its /bin exec

if [ "$1" = "" ]; then
   echo "$web3updaterversion"
   echo "Type 'web3updater --help' (without quotes) to see a list of available commands."
fi

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
   echo "        \e[1;42m $nm $vs \e[0m"
   echo "Use these commands after/together with 'web3updater' command."
   echo "Available commands:"
   echo "Information:"
   echo "   --help, -h                  Shows all available commands"
   echo "   --version, -v               Shows the version of $nm"
fi

if [ "$1" = "--version" ] || [ "$1" = "-v" ]; then
   echo "$web3updaterversion"
fi

echo "Welcome to Web3Updater!"
echo "Made in a day where my mom couln't sleep because of an Hare Krishna that lives with my uncle, and the whole day she yelled at us and I became confused. Half day building this piece of art+utility, half day reasoning poorly and thinking to burn all my crypto because money != peace in some cases. But I won't burn my tokens because there are my mom, my uncle and my sister counting on me, and I hope I can change the life of more people, if I even can change the life of my mom and myself/; which is being hard. My brain bugged now to think more so I'll try to focus back on outbursting by building this heresy that no one of these machist transphobe beared professional programmers have thought of. I know Im writing like in 2019 and this is an backstep, but my brain really bugged today, my rare peace of mind from a whole month has been partly broken today. My mom is bipolar, and about Hare I don't want to judge while irritated."
echo "Made in Itajai, Santa Catarina; but IMPORTANT: this is not an Brazilian funk music remix."

if [ ! -f update.json ]; then
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
    cat > update.json <<EOF
{
"patch_at": 0
}
EOF
#mkdir web3updater && git remote add web3updater tmp-remote
echo "Done!"
fi

echo ""
echo "Version: v1 / Patch: $(jq -r '.patch_at' update.json)"
echo ""
echo "Checking for new updates..."

if [ $(jq -r '.patch_at' update.json) -ge "4" ]; then
    recentlycheckedat=$(echo '('`date +"%s.%N"` ' * 1000000)/1' | bc)
    contents="$(jq '.recently_checked_at = "$recentlycheckedat"' update.json)" && \
    echo "${contents}" > update.json # have to fix, its literally writing $recentlycheckedat
fi

if [ "$(jq -r '.new_patch_at' new_patch_at.json)" -gt "$(jq -r '.patch_at' update.json)" ]; then
    echo "Updating Web3Updater..."
    cidat=$(ethereal ens contenthash get --domain=update.updating.eth)
    contents="$(jq '.cid_at = "$cidat"' update.json)" && \
    echo "${contents}" > update.json
    #ipfs ls $(ethereal ens contenthash get --domain=update.updating.eth)
    #ipfs get --output=tmp-remote $(ethereal ens contenthash get --domain=update.updating.eth)
    #ipfs pin add $(ethereal ens contenthash get --domain=update.updating.eth)
    #git pull web3updater && rm -rf tmp-remote
    sh ./update.sh
    recentlyupdatedat=$(echo '('`date +"%s.%N"` ' * 1000000)/1' | bc)
    contents="$(jq '.recently_updated_at = "$recentlyupdatedat"' update.json)" && \
    echo "${contents}" > update.json # have to fix, its literally writing $recentlyupdatedat
else
    echo "UP-TO-DATE like a breeze! No new updates to install, yet."
    echo "Recently checked at: $(jq -r '.recently_checked_at' update.json)"
    echo "Recently updated at: $(jq -r '.recently_updated_at' update.json)"
fi

#- JSON field: recently checked, recently updated (pending to fix & commit)

#- command to init on a project (only CLI, for now - adds the full web3updater lib installable globally + its custom new_patch_at.json, update.sh, update.json, etc) - "web3updater init"
#- EPNS notifications
#- suggest adding CLI app into UniStore instead of web3updater init (Plugz on UniStore will add web3updater as dependency, as IPFS is a dependency of web3updater)
#- guide to add/write new updates (both on update.sh and new_patch_at.json)
#- "web3updater check/update"
#- command to finalize adding an update: makes an bare git repo tmp folder, push/uploads into it, adds this folder into IPFS, copies its CID and shows it to user until ethereal uses an Floflis keychain to automatically sign/update ENS
