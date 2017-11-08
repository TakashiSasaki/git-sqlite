#!/bin/sh
../scripts/sqlite2restore <test.sqlite2.dump | ../scripts/sqlite2dump >test.sqlite2.dump2
diff test.sqlite2.dump test.sqlite2.dump2
../scripts/sqlite3restore <test.sqlite3.dump | ../scripts/sqlite3dump >test.sqlite3.dump2
diff test.sqlite3.dump test.sqlite3.dump2

