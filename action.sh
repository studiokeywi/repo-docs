#! /usr/bin/sh -l

apk add --no-cache libstdc++ coreutils curl bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash 
. /root/.profile
nvm install --lts
nvm use --lts
apk del coreutils curl bash
cp -R /docs/* /github/workspace
cd /github/workspace
mkdocs build