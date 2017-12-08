#!/bin/sh
echo testing sqlite2restore
../scripts/sqlite2restore <test.sqlite2.dump >temp.sqlite2
echo testing sqlite2dump
 ../scripts/sqlite2dump >test.sqlite2.dump2 <temp.sqlite2
echo diff
diff test.sqlite2.dump test.sqlite2.dump2
echo testing sqlite3restore
../scripts/sqlite3restore <test.sqlite3.dump >temp.sqlite3
echo testing sqlite3dump
../scripts/sqlite3dump >test.sqlite3.dump2 <temp.sqlite3
echo diff
diff test.sqlite3.dump test.sqlite3.dump2

