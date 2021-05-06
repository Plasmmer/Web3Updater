Imagine Windows Update, but for the Web 3.0 and for any app/CLI program/OS.

Web3Updater takes use of ENS (Ethereum Name System) to store file/folder content hashes (known on IPFS as CIDs - Content IDs), so updates are secured by the Ethereum blockchain; in the next step, these updates are downloaded directly from IPFS and patched, and also seeded to other neighboor users (P2P, faster updates).

It can not only be itself updating itself, but can also be initiated in your projects; for now only CLI apps, but soon we will enable new creative uses such as an NPM package to decentralizedly update Electron apps.

Every time you wish to add an new update: edit files such as update.sh and new_patch_at.json adding commands and increasing numbers and... ...more instructions coming.

Web3Updater is developed with focus on being:
- Modular
- Agnostic
- Portable
- Scalable
