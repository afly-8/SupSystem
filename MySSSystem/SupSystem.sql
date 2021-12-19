/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50709
 Source Host           : localhost:3306
 Source Schema         : SupSystem

 Target Server Type    : MySQL
 Target Server Version : 50709
 File Encoding         : 65001

 Date: 15/12/2021 10:55:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` varchar(12) NOT NULL COMMENT '商品id',
  `gname` varchar(20) DEFAULT NULL,
  `gtype` varchar(10) DEFAULT NULL,
  `ginprice` decimal(10,2) DEFAULT NULL COMMENT '商品进价',
  `goutprice` decimal(10,2) DEFAULT NULL COMMENT '商品出价',
  `gstatus` int(2) DEFAULT NULL COMMENT '商品状态',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
BEGIN;
INSERT INTO `goods` VALUES ('g000003', '卫生纸', '生活用品', 5.00, 9.90, 1);
INSERT INTO `goods` VALUES ('g000004', '辣条', '食物', 5.00, 9.90, 1);
INSERT INTO `goods` VALUES ('g000006', '香蕉', '食物', 2.00, 3.90, 1);
INSERT INTO `goods` VALUES ('g000007', '塑料袋', '生活用品', 0.39, 0.99, 1);
INSERT INTO `goods` VALUES ('g000008', '剃须刀', '生活用品', 19.00, 29.90, 1);
INSERT INTO `goods` VALUES ('s0000013', '香蕉13', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000018', '香蕉18', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000021', '香蕉21', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000022', '香蕉22', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000023', '香蕉23', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000024', '香蕉24', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000025', '香蕉25', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000026', '香蕉26', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000027', '香蕉27', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000028', '香蕉28', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000029', '香蕉29', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000030', '香蕉30', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000031', '香蕉31', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000032', '香蕉32', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000033', '香蕉33', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000034', '香蕉34', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000035', '香蕉35', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000036', '香蕉36', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000037', '香蕉37', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000038', '香蕉38', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000039', '香蕉39', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000040', '香蕉40', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000041', '香蕉41', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000042', '香蕉42', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000043', '香蕉43', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000044', '香蕉44', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000045', '香蕉45', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000046', '香蕉46', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000047', '香蕉47', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000048', '香蕉48', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000049', '香蕉49', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000050', '香蕉50', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000051', '香蕉51', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000052', '香蕉52', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000053', '香蕉53', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000054', '香蕉54', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000055', '香蕉55', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000056', '香蕉56', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000057', '香蕉57', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000058', '香蕉58', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000059', '香蕉59', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000060', '香蕉60', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000061', '香蕉61', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000062', '香蕉62', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000063', '香蕉63', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000064', '香蕉64', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000065', '香蕉65', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000066', '香蕉66', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000067', '香蕉67', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000068', '香蕉68', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000069', '香蕉69', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000070', '香蕉70', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000071', '香蕉71', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000072', '香蕉72', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000073', '香蕉73', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000074', '香蕉74', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000075', '香蕉75', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000076', '香蕉76', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000077', '香蕉77', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000078', '香蕉78', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000079', '香蕉79', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000080', '香蕉80', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000081', '香蕉81', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000082', '香蕉82', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000083', '香蕉83', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000084', '香蕉84', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000085', '香蕉85', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000086', '香蕉86', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000087', '香蕉87', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000088', '香蕉88', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000089', '香蕉89', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000090', '香蕉90', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000091', '香蕉91', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000092', '香蕉92', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000093', '香蕉93', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000094', '香蕉94', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000095', '香蕉95', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000096', '香蕉96', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s0000097', '香蕉97', '食物', 9.98, 19.90, 1);
INSERT INTO `goods` VALUES ('s000011', '书包', '学习用品', 12.90, 39.00, 1);
COMMIT;

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `igid` varchar(12) NOT NULL DEFAULT '' COMMENT '商品ID',
  `isid` varchar(12) NOT NULL DEFAULT '' COMMENT '供应商ID',
  `igname` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `iginprice` decimal(10,2) DEFAULT NULL COMMENT '商品进价',
  `isum` varchar(8) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
BEGIN;
INSERT INTO `inventory` VALUES ('g000002', 's00001', 'ssia', 10.00, '10');
INSERT INTO `inventory` VALUES ('g00001', 's00001', '香蕉1', 10.98, '10.0');
INSERT INTO `inventory` VALUES ('g00002', 's00002', '香蕉2', 11.98, '10.0');
INSERT INTO `inventory` VALUES ('g00003', 's00003', '香蕉3', 12.98, '10.0');
INSERT INTO `inventory` VALUES ('g00004', 's00004', '香蕉4', 13.98, '10.0');
INSERT INTO `inventory` VALUES ('g00005', 's00005', '香蕉5', 14.98, '10.0');
INSERT INTO `inventory` VALUES ('g00006', 's00006', '香蕉6', 15.98, '10.0');
INSERT INTO `inventory` VALUES ('g00007', 's00007', '香蕉7', 16.98, '10.0');
INSERT INTO `inventory` VALUES ('g00008', 's00008', '香蕉8', 17.98, '10.0');
INSERT INTO `inventory` VALUES ('g00009', 's00009', '香蕉9', 18.98, '10.0');
INSERT INTO `inventory` VALUES ('g000010', 's000010', '香蕉10', 19.98, '10.0');
INSERT INTO `inventory` VALUES ('g000011', 's000011', '香蕉11', 20.98, '10.0');
INSERT INTO `inventory` VALUES ('g000012', 's000012', '香蕉12', 21.98, '10.0');
INSERT INTO `inventory` VALUES ('g000013', 's000013', '香蕉13', 22.98, '10.0');
INSERT INTO `inventory` VALUES ('g000014', 's000014', '香蕉14', 23.98, '10.0');
INSERT INTO `inventory` VALUES ('g000015', 's000015', '香蕉15', 24.98, '10.0');
INSERT INTO `inventory` VALUES ('g000016', 's000016', '香蕉16', 25.98, '10.0');
INSERT INTO `inventory` VALUES ('g000017', 's000017', '香蕉17', 26.98, '10.0');
INSERT INTO `inventory` VALUES ('g000018', 's000018', '香蕉18', 27.98, '10.0');
INSERT INTO `inventory` VALUES ('g000019', 's000019', '香蕉19', 28.98, '10.0');
INSERT INTO `inventory` VALUES ('g000020', 's000020', '香蕉20', 29.98, '10.0');
INSERT INTO `inventory` VALUES ('g000021', 's000021', '香蕉21', 30.98, '10.0');
INSERT INTO `inventory` VALUES ('g000022', 's000022', '香蕉22', 31.98, '10.0');
INSERT INTO `inventory` VALUES ('g000023', 's000023', '香蕉23', 32.98, '10.0');
INSERT INTO `inventory` VALUES ('g000024', 's000024', '香蕉24', 33.98, '10.0');
INSERT INTO `inventory` VALUES ('g000025', 's000025', '香蕉25', 34.98, '10.0');
INSERT INTO `inventory` VALUES ('g000026', 's000026', '香蕉26', 35.98, '10.0');
INSERT INTO `inventory` VALUES ('g000027', 's000027', '香蕉27', 36.98, '10.0');
INSERT INTO `inventory` VALUES ('g000028', 's000028', '香蕉28', 37.98, '10.0');
INSERT INTO `inventory` VALUES ('g000029', 's000029', '香蕉29', 38.98, '10.0');
INSERT INTO `inventory` VALUES ('g000030', 's000030', '香蕉30', 39.98, '10.0');
INSERT INTO `inventory` VALUES ('g000031', 's000031', '香蕉31', 40.98, '10.0');
INSERT INTO `inventory` VALUES ('g000032', 's000032', '香蕉32', 41.98, '10.0');
INSERT INTO `inventory` VALUES ('g000033', 's000033', '香蕉33', 42.98, '10.0');
INSERT INTO `inventory` VALUES ('g000034', 's000034', '香蕉34', 43.98, '10.0');
INSERT INTO `inventory` VALUES ('g000035', 's000035', '香蕉35', 44.98, '10.0');
INSERT INTO `inventory` VALUES ('g000036', 's000036', '香蕉36', 45.98, '10.0');
INSERT INTO `inventory` VALUES ('g000037', 's000037', '香蕉37', 46.98, '10.0');
INSERT INTO `inventory` VALUES ('g000038', 's000038', '香蕉38', 47.98, '10.0');
INSERT INTO `inventory` VALUES ('g000039', 's000039', '香蕉39', 48.98, '10.0');
INSERT INTO `inventory` VALUES ('g000040', 's000040', '香蕉40', 49.98, '10.0');
INSERT INTO `inventory` VALUES ('g000041', 's000041', '香蕉41', 50.98, '10.0');
INSERT INTO `inventory` VALUES ('g000042', 's000042', '香蕉42', 51.98, '10.0');
INSERT INTO `inventory` VALUES ('g000043', 's000043', '香蕉43', 52.98, '10.0');
INSERT INTO `inventory` VALUES ('g000044', 's000044', '香蕉44', 53.98, '10.0');
INSERT INTO `inventory` VALUES ('g000045', 's000045', '香蕉45', 54.98, '10.0');
INSERT INTO `inventory` VALUES ('g000046', 's000046', '香蕉46', 55.98, '10.0');
INSERT INTO `inventory` VALUES ('g000047', 's000047', '香蕉47', 56.98, '10.0');
INSERT INTO `inventory` VALUES ('g000048', 's000048', '香蕉48', 57.98, '10.0');
INSERT INTO `inventory` VALUES ('g000049', 's000049', '香蕉49', 58.98, '10.0');
INSERT INTO `inventory` VALUES ('g000050', 's000050', '香蕉50', 59.98, '10.0');
INSERT INTO `inventory` VALUES ('g000051', 's000051', '香蕉51', 60.98, '10.0');
INSERT INTO `inventory` VALUES ('g000052', 's000052', '香蕉52', 61.98, '10.0');
INSERT INTO `inventory` VALUES ('g000053', 's000053', '香蕉53', 62.98, '10.0');
INSERT INTO `inventory` VALUES ('g000054', 's000054', '香蕉54', 63.98, '10.0');
INSERT INTO `inventory` VALUES ('g000055', 's000055', '香蕉55', 64.98, '10.0');
INSERT INTO `inventory` VALUES ('g000056', 's000056', '香蕉56', 65.98, '10.0');
INSERT INTO `inventory` VALUES ('g000057', 's000057', '香蕉57', 66.98, '10.0');
INSERT INTO `inventory` VALUES ('g000058', 's000058', '香蕉58', 67.98, '10.0');
INSERT INTO `inventory` VALUES ('g000059', 's000059', '香蕉59', 68.98, '10.0');
INSERT INTO `inventory` VALUES ('g000060', 's000060', '香蕉60', 69.98, '10.0');
INSERT INTO `inventory` VALUES ('g000061', 's000061', '香蕉61', 70.98, '10.0');
INSERT INTO `inventory` VALUES ('g000062', 's000062', '香蕉62', 71.98, '10.0');
INSERT INTO `inventory` VALUES ('g000063', 's000063', '香蕉63', 72.98, '10.0');
INSERT INTO `inventory` VALUES ('g000064', 's000064', '香蕉64', 73.98, '10.0');
INSERT INTO `inventory` VALUES ('g000065', 's000065', '香蕉65', 74.98, '10.0');
INSERT INTO `inventory` VALUES ('g000066', 's000066', '香蕉66', 75.98, '10.0');
INSERT INTO `inventory` VALUES ('g000067', 's000067', '香蕉67', 76.98, '10.0');
INSERT INTO `inventory` VALUES ('g000068', 's000068', '香蕉68', 77.98, '10.0');
INSERT INTO `inventory` VALUES ('g000069', 's000069', '香蕉69', 78.98, '10.0');
INSERT INTO `inventory` VALUES ('g000070', 's000070', '香蕉70', 79.98, '10.0');
INSERT INTO `inventory` VALUES ('g000071', 's000071', '香蕉71', 80.98, '10.0');
INSERT INTO `inventory` VALUES ('g000072', 's000072', '香蕉72', 81.98, '10.0');
INSERT INTO `inventory` VALUES ('g000073', 's000073', '香蕉73', 82.98, '10.0');
INSERT INTO `inventory` VALUES ('g000074', 's000074', '香蕉74', 83.98, '10.0');
INSERT INTO `inventory` VALUES ('g000075', 's000075', '香蕉75', 84.98, '10.0');
INSERT INTO `inventory` VALUES ('g000076', 's000076', '香蕉76', 85.98, '10.0');
INSERT INTO `inventory` VALUES ('g000077', 's000077', '香蕉77', 86.98, '10.0');
INSERT INTO `inventory` VALUES ('g000078', 's000078', '香蕉78', 87.98, '10.0');
INSERT INTO `inventory` VALUES ('g000079', 's000079', '香蕉79', 88.98, '10.0');
INSERT INTO `inventory` VALUES ('g000080', 's000080', '香蕉80', 89.98, '10.0');
INSERT INTO `inventory` VALUES ('g000081', 's000081', '香蕉81', 90.98, '10.0');
INSERT INTO `inventory` VALUES ('g000082', 's000082', '香蕉82', 91.98, '10.0');
INSERT INTO `inventory` VALUES ('g000083', 's000083', '香蕉83', 92.98, '10.0');
INSERT INTO `inventory` VALUES ('g000084', 's000084', '香蕉84', 93.98, '10.0');
INSERT INTO `inventory` VALUES ('g000085', 's000085', '香蕉85', 94.98, '10.0');
INSERT INTO `inventory` VALUES ('g000086', 's000086', '香蕉86', 95.98, '10.0');
INSERT INTO `inventory` VALUES ('g000087', 's000087', '香蕉87', 96.98, '10.0');
INSERT INTO `inventory` VALUES ('g000088', 's000088', '香蕉88', 97.98, '10.0');
INSERT INTO `inventory` VALUES ('g000089', 's000089', '香蕉89', 98.98, '10.0');
INSERT INTO `inventory` VALUES ('g000090', 's000090', '香蕉90', 99.98, '10.0');
INSERT INTO `inventory` VALUES ('g000091', 's000091', '香蕉91', 100.98, '10.0');
INSERT INTO `inventory` VALUES ('g000092', 's000092', '香蕉92', 101.98, '10.0');
INSERT INTO `inventory` VALUES ('g000093', 's000093', '香蕉93', 102.98, '10.0');
INSERT INTO `inventory` VALUES ('g000094', 's000094', '香蕉94', 103.98, '10.0');
INSERT INTO `inventory` VALUES ('g000095', 's000095', '香蕉95', 104.98, '10.0');
INSERT INTO `inventory` VALUES ('g000096', 's000096', '香蕉96', 105.98, '10.0');
INSERT INTO `inventory` VALUES ('g000097', 's000097', '香蕉97', 106.98, '10.0');
INSERT INTO `inventory` VALUES ('g000098', 's000098', '香蕉98', 107.98, '10.0');
INSERT INTO `inventory` VALUES ('g000099', 's000099', '香蕉99', 108.98, '10.0');
COMMIT;

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `sid` varchar(12) NOT NULL DEFAULT '' COMMENT '供应商ID',
  `sname` varchar(20) DEFAULT NULL COMMENT '供应商',
  `speople` varchar(10) DEFAULT NULL COMMENT '联系人',
  `sphone` char(11) NOT NULL COMMENT '联系电话',
  `stime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
BEGIN;
INSERT INTO `supplier` VALUES ('s00001', '永辉食品有限公司1', '张永辉1', '18329501', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s00002', '永辉食品有限公司2', '张永辉2', '18329502', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s00003', '永辉食品有限公司3', '张永辉3', '18329503', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s00004', '永辉食品有限公司4', '张永辉4', '18329504', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s00005', '永辉食品有限公司5', '张永辉5', '18329505', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s00006', '永辉食品有限公司6', '张永辉6', '18329506', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s00007', '永辉食品有限公司7', '张永辉7', '18329507', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s00008', '永辉食品有限公司8', '张永辉8', '18329508', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s00009', '永辉食品有限公司9', '张永辉9', '18329509', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000010', '永辉食品有限公司10', '张永辉10', '183295010', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000011', '永辉食品有限公司11', '张永辉11', '183295011', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000012', '永辉食品有限公司12', '张永辉12', '183295012', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000013', '永辉食品有限公司13', '张永辉13', '183295013', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000014', '永辉食品有限公司14', '张永辉14', '183295014', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000015', '永辉食品有限公司15', '张永辉15', '183295015', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000016', '永辉食品有限公司16', '张永辉16', '183295016', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000017', '永辉食品有限公司17', '张永辉17', '183295017', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000018', '永辉食品有限公司18', '张永辉18', '183295018', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000019', '永辉食品有限公司19', '张永辉19', '183295019', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000020', '永辉食品有限公司20', '张永辉20', '183295020', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000021', '永辉食品有限公司21', '张永辉21', '183295021', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000022', '永辉食品有限公司22', '张永辉22', '183295022', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000023', '永辉食品有限公司23', '张永辉23', '183295023', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000024', '永辉食品有限公司24', '张永辉24', '183295024', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000025', '永辉食品有限公司25', '张永辉25', '183295025', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000026', '永辉食品有限公司26', '张永辉26', '183295026', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000027', '永辉食品有限公司27', '张永辉27', '183295027', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000028', '永辉食品有限公司28', '张永辉28', '183295028', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000029', '永辉食品有限公司29', '张永辉29', '183295029', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000030', '永辉食品有限公司30', '张永辉30', '183295030', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000031', '永辉食品有限公司31', '张永辉31', '183295031', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000032', '永辉食品有限公司32', '张永辉32', '183295032', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000033', '永辉食品有限公司33', '张永辉33', '183295033', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000034', '永辉食品有限公司34', '张永辉34', '183295034', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000035', '永辉食品有限公司35', '张永辉35', '183295035', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000036', '永辉食品有限公司36', '张永辉36', '183295036', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000037', '永辉食品有限公司37', '张永辉37', '183295037', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000038', '永辉食品有限公司38', '张永辉38', '183295038', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000039', '永辉食品有限公司39', '张永辉39', '183295039', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000040', '永辉食品有限公司40', '张永辉40', '183295040', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000041', '永辉食品有限公司41', '张永辉41', '183295041', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000042', '永辉食品有限公司42', '张永辉42', '183295042', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000043', '永辉食品有限公司43', '张永辉43', '183295043', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000044', '永辉食品有限公司44', '张永辉44', '183295044', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000045', '永辉食品有限公司45', '张永辉45', '183295045', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000046', '永辉食品有限公司46', '张永辉46', '183295046', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000047', '永辉食品有限公司47', '张永辉47', '183295047', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000048', '永辉食品有限公司48', '张永辉48', '183295048', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000049', '永辉食品有限公司49', '张永辉49', '183295049', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000050', '永辉食品有限公司50', '张永辉50', '183295050', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000051', '永辉食品有限公司51', '张永辉51', '183295051', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000052', '永辉食品有限公司52', '张永辉52', '183295052', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000053', '永辉食品有限公司53', '张永辉53', '183295053', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000054', '永辉食品有限公司54', '张永辉54', '183295054', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000055', '永辉食品有限公司55', '张永辉55', '183295055', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000056', '永辉食品有限公司56', '张永辉56', '183295056', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000057', '永辉食品有限公司57', '张永辉57', '183295057', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000058', '永辉食品有限公司58', '张永辉58', '183295058', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000059', '永辉食品有限公司59', '张永辉59', '183295059', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000060', '永辉食品有限公司60', '张永辉60', '183295060', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000061', '永辉食品有限公司61', '张永辉61', '183295061', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000062', '永辉食品有限公司62', '张永辉62', '183295062', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000063', '永辉食品有限公司63', '张永辉63', '183295063', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000064', '永辉食品有限公司64', '张永辉64', '183295064', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000065', '永辉食品有限公司65', '张永辉65', '183295065', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000066', '永辉食品有限公司66', '张永辉66', '183295066', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000067', '永辉食品有限公司67', '张永辉67', '183295067', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000068', '永辉食品有限公司68', '张永辉68', '183295068', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000069', '永辉食品有限公司69', '张永辉69', '183295069', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000070', '永辉食品有限公司70', '张永辉70', '183295070', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000071', '永辉食品有限公司71', '张永辉71', '183295071', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000072', '永辉食品有限公司72', '张永辉72', '183295072', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000073', '永辉食品有限公司73', '张永辉73', '183295073', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000074', '永辉食品有限公司74', '张永辉74', '183295074', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000075', '永辉食品有限公司75', '张永辉75', '183295075', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000076', '永辉食品有限公司76', '张永辉76', '183295076', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000077', '永辉食品有限公司77', '张永辉77', '183295077', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000078', '永辉食品有限公司78', '张永辉78', '183295078', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000079', '永辉食品有限公司79', '张永辉79', '183295079', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000080', '永辉食品有限公司80', '张永辉80', '183295080', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000081', '永辉食品有限公司81', '张永辉81', '183295081', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000082', '永辉食品有限公司82', '张永辉82', '183295082', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000083', '永辉食品有限公司83', '张永辉83', '183295083', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000084', '永辉食品有限公司84', '张永辉84', '183295084', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000085', '永辉食品有限公司85', '张永辉85', '183295085', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000086', '永辉食品有限公司86', '张永辉86', '183295086', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000087', '永辉食品有限公司87', '张永辉87', '183295087', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000088', '永辉食品有限公司88', '张永辉88', '183295088', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000089', '永辉食品有限公司89', '张永辉89', '183295089', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000090', '永辉食品有限公司90', '张永辉90', '183295090', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000091', '永辉食品有限公司91', '张永辉91', '183295091', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000092', '永辉食品有限公司92', '张永辉92', '183295092', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000093', '永辉食品有限公司93', '张永辉93', '183295093', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000094', '永辉食品有限公司94', '张永辉94', '183295094', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000095', '永辉食品有限公司95', '张永辉95', '183295095', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000096', '永辉食品有限公司96', '张永辉96', '183295096', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000097', '永辉食品有限公司97', '张永辉97', '183295097', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000098', '永辉食品有限公司98', '张永辉98', '183295098', '2021-12-13 20:45:42');
INSERT INTO `supplier` VALUES ('s000099', '永辉食品有限公司99', '张永辉99', '183295099', '2021-12-13 20:45:42');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` char(8) NOT NULL DEFAULT '1',
  `name` varchar(10) DEFAULT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `sex` char(5) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `jointime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('s0001', '管理员', 'admin', 'admin', '男', '18329503312', '2021-12-09 16:13:14', 1);
INSERT INTO `user` VALUES ('s0002', '张倩倩', 'zqq', 'zqq', '女', '18023456789', '2021-12-09 17:39:12', 1);
INSERT INTO `user` VALUES ('s0003', 'Test', '12345678', '123456', '男', '12345678910', '2021-12-13 20:45:42', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
