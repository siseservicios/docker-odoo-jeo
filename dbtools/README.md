Docker images with the postgres tools to backup / restore odoo data

use:

sudo docker run --rm -i \
    --link postgres_image:db \
    -v filestore_path:/filestore \
    -v path_al_backup/:/backup \
    --env NEW_DBNAME=database_name \
    --env ZIPFILE=backup_path \
    --env DEACTIVATE=True \
    --env ACTION=backup \
    jobiols/dbtools:1.14.2

- postgres_image: image name for the postgres server
- filestore: path to filestore
- backup_path: path to backup file
- DBNAME: database name where restoring it will delete it and kill connections if necesary
- ZIPFILE: backup filename if ommited it gets the newer when restore or create a unique name when backup
- DEACTIVATE = [True | False] if True runs deactivation script when restoring
- ACTION = [backup | restore]
