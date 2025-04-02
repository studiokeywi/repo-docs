#! /usr/bin/sh -l
mkdir -p /docs/docs/assets
cp -ru /etc/assets /docs/docs
tini -- mkdocs "${@:-"build"}"
