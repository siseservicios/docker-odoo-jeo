#!/bin/ash
# BACKUP DATABASE

echo "Backup database "$NEW_DBNAME

# Crear directorio temporario
tmp_dir=$(mktemp -d -t ci-XXXXXXXXXX)
echo $tmp_dir
# hacer backup de la base de datos al temporario
#pg_dump -U odoo -w -d $NEW_DBNAME -h db > $tmp_dir/dump.sql

echo "Compressing Backup and Filestore"
# zipear
#zip -j /backup/$ZIPFILE $tmp_dir/dump.sql
cp -ar /filestore/$NEW_DBNAME $tmp_dir/filestore/

ls -l $tmp_dir/filestore

zip -r /backup/$ZIPFILE tmp_dir/ >/dev/null

echo "Finish "

rm -rf $tmp_dir
