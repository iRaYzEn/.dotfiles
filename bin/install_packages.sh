#!/bin/bash


bash ../packages/repos.sh

# apt packages
xargs -a ../packages/apt.txt sudo apt install -y


# installing npm & node
curl -fsSL https://fnm.vercel.app/install | bash
fnm install --lts

# npm packages
xargs -a ../packages/npm.txt npm install -g

pip install -r ../packages/pip.txt

