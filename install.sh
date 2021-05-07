#!/bin/bash

echo "Welcome to the Web3Updater installer!"

echo "- Copying (probably) a lot of files. Don't worry if it takes several times..."
sudo mkdir /usr/lib/web3updater
sudo cp -r -f --preserve=all . /usr/lib/web3updater

echo "- Installing Web3Updater in /usr/bin..."
sudo cat > /usr/bin/web3updater << ENDOFFILE
#!/bin/bash

source /usr/lib/web3updater/web3updater
ENDOFFILE

echo "- Turning Web3Updater into a executable..."
chmod 755 /usr/bin/web3updater && $maysudo chmod +x /usr/bin/web3updater

sudo rm /usr/lib/web3updater/install.sh # no need anymore to use the installer again

echo "Done!"
