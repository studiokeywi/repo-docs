#! /usr/bin/sh -l
mkdir -p /docs/docs/assets
cp -ru /etc/assets /docs/docs
npm i
tini -- mkdocs "${@:-"build"}"
