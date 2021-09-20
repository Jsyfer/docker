create database If Not Exists `file_manager_system` default character set utf8 collate utf8_general_ci;
use file_manager_system;

CREATE TABLE IF NOT EXISTS `tbl_file` (
  `id` int NOT NULL AUTO_INCREMENT,
  `md5` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `thumb` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tbl_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tbl_tagtofile` (
  `fileid` int NOT NULL,
  `tagid` int NOT NULL,
  KEY `tagid_idx` (`tagid`),
  KEY `fileid_idx` (`fileid`),
  CONSTRAINT `fileid` FOREIGN KEY (`fileid`) REFERENCES `tbl_file` (`id`),
  CONSTRAINT `tagid` FOREIGN KEY (`tagid`) REFERENCES `tbl_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3