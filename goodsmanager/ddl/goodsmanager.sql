create database If Not Exists `goods_manager` default character set utf8 collate utf8_general_ci;
use goods_manager;

CREATE TABLE `tbl_goods_receive` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RECEIVE_DATE` date DEFAULT NULL COMMENT '收购日期',
  `NAME` varchar(45) DEFAULT NULL COMMENT '商品名称',
  `SERIES` varchar(45) DEFAULT NULL COMMENT '系列',
  `SPECIFICATION` varchar(45) DEFAULT NULL COMMENT '规格',
  `UNIT` varchar(45) DEFAULT NULL COMMENT '单位',
  `AMOUNT` int DEFAULT NULL COMMENT '数量',
  `UNIT_PRICE` decimal(12,2) DEFAULT NULL COMMENT '单价',
  `TOTAL_PRICE` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `PROFIT` decimal(12,2) DEFAULT NULL COMMENT '盈利',
  `MANUFACTURE_DATE` varchar(45) DEFAULT NULL COMMENT '生产日期',
  `BATCH` varchar(45) DEFAULT NULL COMMENT '批次',
  `GOODS_NO` varchar(45) DEFAULT NULL COMMENT '商品编号',
  `SENDER` varchar(45) DEFAULT NULL COMMENT '出货方',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
