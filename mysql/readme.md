mysql 加密方式改变导致sql工具不能连接

```reStructuredText
docker ps
docker exec -it 2a668db2961a bash
#检查加密方式
select Host,User,plugin from mysql.user;
#改变加密方式
alter user 'root'@'%' identified with mysql_native_password by 'root';
#创建新用户并赋予权限
CREATE USER 'robin'@'%' IDENTIFIED BY 'sun727394';
GRANT ALL PRIVILEGES ON *.* TO 'robin'@'%' WITH GRANT OPTION;
```

tagSyetem用SQL

```sql
CREATE TABLE `tbl_file` (
  `md5` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `tbl_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
```

