# Web3Updater

Imagine Windows Update, but for the Web 3.0 and for any app/CLI program/OS.

Web3Updater takes use of ENS (Ethereum Name System) to store file/folder content hashes (known on IPFS as CIDs - Content IDs), so updates are secured by the Ethereum blockchain; in the next step, these updates are downloaded directly from IPFS and patched, and also seeded to other neighboor users (P2P, faster updates).

It can not only be itself updating itself, but can also be initiated in your projects; for now only CLI apps, but soon we will enable new creative uses such as an NPM package to decentralizedly update Electron apps.

Every time you wish to add an new update: edit files such as update.sh and new_patch_at.json adding commands and increasing numbers and... ...more instructions coming.

Web3Updater is developed with focus on being:
- Modular
- Agnostic
- Portable
- Scalable

### Questions? Suggestions?

Feel free to open an issue, [here](https://github.com/DaniellMesquita/Web3Updater/issues). Pull requests are even more welcome <3

## Powered by the amazing:
* [jq](https://github.com/stedolan/jq)
* [IPFS](https://github.com/ipfs/go-ipfs)
* [IPFS Desktop](https://github.com/ipfs/ipfs-desktop)
* [Ethereum](https://github.com/ethereum)
* [ENS - Ethereum Name System](https://github.com/ensdomains/ens)
* [ethereal](https://github.com/wealdtech/ethereal)
* [git](https://github.com/git/git)
