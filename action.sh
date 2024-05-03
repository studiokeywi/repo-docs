#! /usr/bin/sh -l

apk add --no-cache libstdc++ coreutils curl bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export NVM_NODEJS_ORG_MIRROR=https://unofficial-builds.nodejs.org/download/release
nvm_get_arch() { nvm_echo "x64-musl"; }
nvm install --lts
nvm use --lts
cp -R /docs/* /github/workspace
cd /github/workspace
npm i
mkdocs build