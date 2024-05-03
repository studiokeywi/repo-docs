#! /usr/bin/sh -l
export NVM_NODEJS_ORG_MIRROR=https://unofficial-builds.nodejs.org/download/release
nvm_get_arch() { nvm_echo "x64-musl"; }