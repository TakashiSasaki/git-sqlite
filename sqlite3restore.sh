#!/bin/sh
cat >restoretemp.sql
sqlite3 restoretemp.sqlite3 ".read restoretemp.sql"
cat restoretemp.sqlite3
rm restoretemp.sql restoretemp.sqlite3

