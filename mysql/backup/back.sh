#!bin/bash

now=$(date +"%F %T")
docker exec mysql /usr/bin/mysqldump -u jsyfer -pjsyfer --databases goods_manager > /home/jsyfer/goodsmanager_backup/backup_"${now}".sql

# docker exec mysql /usr/bin/mysql -u jsyfer -pjsyfer < ./test2.sql