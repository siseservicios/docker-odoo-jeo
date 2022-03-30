sudo docker run --rm -i \
    --link pg-cge:db \
    -v /odoo/ar/odoo-13.0/cge/data_dir/filestore:/filestore \
    -v /odoo/ar/odoo-13.0/cge/backup_dir:/backup \
    --env NEW_DBNAME=cge_prod \
    --env ZIPFILE=cge_2021_01_01.zip \
    --env DEACTIVATE=False \
    --env ACTION=backup \
    jobiols/dbtools:1.14.2
