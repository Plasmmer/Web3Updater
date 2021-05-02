#!/bin/bash

echo $(ethereal ens contenthash get --domain=plasmmer.eth)

git clone https://ipfs.io$(ethereal ens contenthash get --domain=plasmmer.eth)

#- use .eth.link to update
#- use ethereal to fetch ENS for updated .git CID
