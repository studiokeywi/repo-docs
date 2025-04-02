#! /usr/bin/sh -l
mkdir -p ./docs/assets
cp -ru /etc/assets ./docs
npm i
tini -- mkdocs "${@:-"build"}"
