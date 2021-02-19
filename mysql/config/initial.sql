create database If Not Exists `file_manager_system` default character set utf8 collate utf8_general_ci;
use file_manager_system;

CREATE TABLE IF NOT EXISTS `tbl_file` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `md5` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE IF NOT EXISTS `tbl_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE IF NOT EXISTS `file_manager_system`.`tbl_tagtofile` (
  `md5` VARCHAR(32) NULL,
  `tagid` INT NULL,
  INDEX `md5_idx` (`md5` ASC) VISIBLE,
  INDEX `tagid_idx` (`tagid` ASC) VISIBLE,
  CONSTRAINT `md5`
    FOREIGN KEY (`md5`)
    REFERENCES `file_manager_system`.`tbl_file` (`md5`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tagid`
    FOREIGN KEY (`tagid`)
    REFERENCES `file_manager_system`.`tbl_tag` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)ENGINE=InnoDB DEFAULT CHARSET=utf8