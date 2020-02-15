#!/bin/sh
USER=chblog
PASSWORD=admin
DBSERVER=wp.ctf.covhack.org

mysqldump --opt --protocol=TCP --user=${USER} --password=${PASS} --host=${DBSERVER} ${DB} > /tmp/backup.sql
