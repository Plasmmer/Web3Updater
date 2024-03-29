# <img src="logotype.svg" title="Web3Updater" alt="Web3Updater">

Imagine Windows Update, but for the Web 3.0 and for any app/CLI program/OS.

#### Why IPFS?
To not depend on a failure-prone centralized server. The true focus isn't about censorship concerns, but mainly because an OS or app that handles user's digital money shouldn't be vulnerable to individuals.
#### Why blockchain?
To use a public ledger to validate decentralized DNS/domains.
#### Why Ethereum?
Because it is the pioneer on smart-contracts and fostering innovation (such as the eco-friendly PoS, token-burning and sharding) while choosing decentralization/security over speed.

## How it works

First, W3U takes use of ENS (Ethereum Name System) to store file/folder content hashes (known on IPFS as CIDs - Content IDs), so updates are secured by the Ethereum blockchain; in the next step, these updates are downloaded directly from IPFS (not a blockchain, but a distributed file-sharing protocol like BitTorrent) and patched, and also seeded to other neighboor users (P2P, faster updates).

It can not only be itself updating itself (meta language), but can also be initiated in your projects (soon); for now only CLI apps, but soon we will enable new creative uses such as an NPM package to decentralizedly update Electron apps.

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
* [ENS - Ethereum Name System](https://github.com/ensdomains/ens) (for powering decentralized domains/DNS)
* [Ethereum](https://github.com/ethereum) (for powering ENS on its smart-contract platform)
* [ethereal](https://github.com/wealdtech/ethereal) (for being a CLI to interact with Ethereum and ENS)
* [git](https://github.com/git/git) (for versioning, de-duplicing and patching update data)
