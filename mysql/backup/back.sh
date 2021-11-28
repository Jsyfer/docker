#!bin/bash

docker exec aedd /usr/bin/mysqldump -u jsyfer -pjsyfer --databases goods_manager > ./test2.sql

# docker exec aedd /usr/bin/mysql -u jsyfer -pjsyfer < ./test2.sql