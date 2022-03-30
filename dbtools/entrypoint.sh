#!/bin/ash
# este script corre dentro de la imagen

export PGPASSWORD="odoo"

if [[ $ACTION = "restore" ]]
then
    echo "Performing Restore"
    restore.sh
fi

if [[ $ACTION = "backup" ]]
then
    echo "Performing Backup"
    backup.sh
fi
