mysql 加密方式改变导致sql工具不能连接

```reStructuredText
docker ps
docker exec -it 2a668db2961a bash
mysql -u root -p
#检查加密方式
select Host,User,plugin from mysql.user;
#改变加密方式
alter user 'root'@'%' identified with mysql_native_password by 'root';
#创建新用户并赋予权限
CREATE USER 'jsyfer'@'%' IDENTIFIED BY 'jsyfer';
GRANT ALL PRIVILEGES ON *.* TO 'jsyfer'@'%' WITH GRANT OPTION;
#设置密码
alter user 'jsyfer'@'%' identified with mysql_native_password by 'jsyfer';
```

