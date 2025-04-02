#! /usr/bin/sh -l
mkdir -p /docs/docs/assets
cp -ru /etc/assets /docs/docs
npm i
pwd
ls .
ls "$(pwd)"
tini -- mkdocs "${@:-"build"}"
