# <img src="W3U_logotype.svg" title="Web3Updater" alt="Web3Updater">

Imagine Windows Update, but for the Web 3.0 and for any app/CLI program/OS.

#### Why IPFS?
To not depend on a centralized server.
#### Why blockchain?
To validate decentralized DNS/domains.
#### Why Ethereum?
Because it is an pioneer on smart-contracts and fostering innovation (such as token-burning, PoS and sharding) while preferring decentralization/security over speed.

First, W3U takes use of ENS (Ethereum Name System) to store file/folder content hashes (known on IPFS as CIDs - Content IDs), so updates are secured by the Ethereum blockchain; in the next step, these updates are downloaded directly from IPFS (not a blockchain, but a distributed file-sharing protocol like BitTorrent) and patched, and also seeded to other neighboor users (P2P, faster updates).

It can not only be itself updating itself (meta language), but can also be initiated in your projects; for now only CLI apps, but soon we will enable new creative uses such as an NPM package to decentralizedly update Electron apps.

----

Every time you wish to add an new update: edit files such as update.sh and new_patch_at.json adding commands and increasing numbers and... ...more instructions coming.

Web3Updater is developed with focus on being:
- Modular
- Agnostic
- Portable
- Scalable
- Distributed
- Decentralized

### Questions? Suggestions?

Feel free to open an issue, [here](https://github.com/DaniellMesquita/Web3Updater/issues). Pull requests are also welcome <3

## Powered by the amazing:
* [jq](https://github.com/stedolan/jq) (for parsing .JSON data)
* [IPFS](https://github.com/ipfs/go-ipfs) (for serving P2P files, running as daemon)
* [IPFS Desktop](https://github.com/ipfs/ipfs-desktop) (for optionally being installable to leverage go-ipfs in a GUI)
* [ENS - Ethereum Name System](https://github.com/ensdomains/ens) (for powering decentralized domains/DNS)
* [Ethereum](https://github.com/ethereum) (for powering ENS on its smart-contract blockchain platform)
* [ethereal](https://github.com/wealdtech/ethereal) (for being an CLI to interact with Ethereum and ENS)
* [git](https://github.com/git/git) (for versioning, de-duplicing and patching update data)
