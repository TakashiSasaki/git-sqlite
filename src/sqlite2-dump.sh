#!/bin/sh
echo sqlite2-dump 1>&2
cat > temptemp.sqlite2
sqlite temptemp.sqlite2 .dump
rm temptemp.sqlite2

