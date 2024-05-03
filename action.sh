#! /usr/bin/sh -l

. /root/.profile
echo "*** Now investigating /github/workspace... ***"
ls /github/workspace
echo "*** Now attempting copy to workspace folder... ***"
cp -R /docs/* /github/workspace
echo "*** Now re-investigating /github/workspace... ***"
ls /github/workspace
echo "*** Now moving into workspace folder... ***"
cd /github/workspace
echo "*** Now attempting mkdocs build... ***"
mkdocs build