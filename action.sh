#! /usr/bin/sh -l

# echo "ls /"
# ls /
echo "ls /github/workspace"
ls /github/workspace
# echo "cd /docs"
cp -R /docs/* /github/workspace
cd /github/workspace
# echo "mkdocs build"
mkdocs build