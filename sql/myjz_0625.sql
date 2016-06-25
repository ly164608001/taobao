/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : 127.0.0.1:3306
Source Database       : myjz

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-06-24 23:37:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for buyer_account_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `buyer_account_basic_info`;
CREATE TABLE `buyer_account_basic_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountid` int(11) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小号基础信息';

-- ----------------------------
-- Table structure for buyer_account_info
-- ----------------------------
DROP TABLE IF EXISTS `buyer_account_info`;
CREATE TABLE `buyer_account_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountno` varchar(32) DEFAULT NULL COMMENT '淘宝旺旺号',
  `identification` int(11) DEFAULT NULL COMMENT '是否实名认证(0：否；1：是)',
  `credit` int(11) DEFAULT NULL COMMENT '信誉等级',
  `level` int(11) DEFAULT NULL COMMENT '买号等级',
  `levelpic` varchar(255) DEFAULT NULL COMMENT '等级截图图片地址',
  `receivednum` int(11) DEFAULT NULL COMMENT '已接任务数',
  `auditstatus` int(1) DEFAULT NULL COMMENT '状态(0：待审核；1通过；-1审核失败；)',
  `status` int(1) DEFAULT '1' COMMENT '状态(1：启用；0隐藏)',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `createuser` int(11) DEFAULT NULL COMMENT '创建人',
  `audituser` int(11) DEFAULT NULL COMMENT '审核人',
  `audittime` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='淘宝小号信息表';

-- ----------------------------
-- Table structure for buyer_account_receipt_address
-- ----------------------------
DROP TABLE IF EXISTS `buyer_account_receipt_address`;
CREATE TABLE `buyer_account_receipt_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountid` int(11) DEFAULT NULL COMMENT '小号ID',
  `region` varchar(128) DEFAULT NULL COMMENT '省市区(福建省,福州市,晋安区)',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `receiptname` varchar(32) DEFAULT NULL COMMENT '收货人姓名',
  `receiptphone` varchar(32) DEFAULT NULL COMMENT '收货人手机号',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小号收货地址';

-- ----------------------------
-- Table structure for buyer_account_vpn_info
-- ----------------------------
DROP TABLE IF EXISTS `buyer_account_vpn_info`;
CREATE TABLE `buyer_account_vpn_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountid` int(11) DEFAULT NULL COMMENT '小号ID',
  `password` varchar(128) DEFAULT NULL COMMENT '旺旺号登录密码',
  `alipayaccount` varchar(128) DEFAULT NULL COMMENT '旺旺号绑定的支付宝账号',
  `paypassword` varchar(128) DEFAULT NULL COMMENT '旺旺号绑定的支付宝支付密码',
  `phone` varchar(32) DEFAULT NULL COMMENT '旺旺号绑定的手机卡',
  `name` varchar(128) DEFAULT NULL COMMENT 'VPN名称',
  `line` varchar(128) DEFAULT NULL COMMENT 'VPN接点/线路',
  `loginip` varchar(128) DEFAULT NULL COMMENT '旺旺号登录Ip',
  `region` varchar(255) DEFAULT NULL COMMENT '旺旺号登录省市区',
  `computername` varchar(128) DEFAULT NULL COMMENT '旺旺号/VPN所在电脑名称',
  `mcs` varchar(128) DEFAULT NULL COMMENT '旺旺号/VPN所在电脑MAC',
  `address` varchar(255) DEFAULT NULL COMMENT '旺旺号登录详细地址',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小号VPN信息';

-- ----------------------------
-- Table structure for order_basic_properties
-- ----------------------------
DROP TABLE IF EXISTS `order_basic_properties`;
CREATE TABLE `order_basic_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL COMMENT '订单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单基本属性';

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `createtime` datetime DEFAULT NULL COMMENT '订单创建时间',
  `createuser` int(11) DEFAULT NULL COMMENT '创建人',
  `publictime` datetime DEFAULT NULL COMMENT '任务发布时间',
  `istime` int(1) DEFAULT NULL COMMENT '是否定时发布',
  `status` int(11) DEFAULT NULL COMMENT '订单状态',
  `bond` double(10,2) DEFAULT NULL COMMENT '担保金',
  `receiveruser` int(11) DEFAULT NULL COMMENT '接单人',
  `receivetime` datetime DEFAULT NULL COMMENT '接单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单基本信息';

-- ----------------------------
-- Table structure for order_other_properties
-- ----------------------------
DROP TABLE IF EXISTS `order_other_properties`;
CREATE TABLE `order_other_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL COMMENT '订单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单其他属性';

-- ----------------------------
-- Table structure for seller_label
-- ----------------------------
DROP TABLE IF EXISTS `seller_label`;
CREATE TABLE `seller_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL COMMENT '标签名称',
  `type` int(11) DEFAULT NULL COMMENT '类型(1：收货地址；2：好评内容)',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Table structure for seller_praise
-- ----------------------------
DROP TABLE IF EXISTS `seller_praise`;
CREATE TABLE `seller_praise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `lableid` int(11) DEFAULT NULL COMMENT '标签ID',
  `content` varchar(255) DEFAULT NULL COMMENT '好评内容',
  `status` int(1) DEFAULT NULL COMMENT '状态(0：未使用；1已使用)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='好评内容信息表';

-- ----------------------------
-- Table structure for seller_receipt_address
-- ----------------------------
DROP TABLE IF EXISTS `seller_receipt_address`;
CREATE TABLE `seller_receipt_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `labelid` int(11) DEFAULT NULL COMMENT '标签ID',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(32) DEFAULT NULL COMMENT '电话',
  `code` varchar(10) DEFAULT NULL COMMENT '邮编',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `status` int(1) DEFAULT NULL COMMENT '状态(0：未使用；1已使用)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家收货地址';

-- ----------------------------
-- Table structure for seller_shop
-- ----------------------------
DROP TABLE IF EXISTS `seller_shop`;
CREATE TABLE `seller_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '店铺名称',
  `type` int(1) DEFAULT NULL COMMENT '店铺类型',
  `manager` varchar(64) DEFAULT NULL COMMENT '掌柜号/1688企业名',
  `indexurl` varchar(255) DEFAULT NULL COMMENT '店铺首页地址',
  `alltasknum` int(11) DEFAULT NULL COMMENT '总发布任务',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家店铺表';

-- ----------------------------
-- Table structure for task_combo
-- ----------------------------
DROP TABLE IF EXISTS `task_combo`;
CREATE TABLE `task_combo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '模板名称',
  `sort` int(11) DEFAULT NULL COMMENT '模板排序',
  `price` double(10,2) DEFAULT NULL COMMENT '模板价格',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `createuser` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务套餐';

-- ----------------------------
-- Table structure for task_combo_properties
-- ----------------------------
DROP TABLE IF EXISTS `task_combo_properties`;
CREATE TABLE `task_combo_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `templateid` int(11) DEFAULT NULL COMMENT '模板ID',
  `propertiesid` int(11) DEFAULT NULL COMMENT '属性ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务套餐属性';

-- ----------------------------
-- Table structure for task_properties
-- ----------------------------
DROP TABLE IF EXISTS `task_properties`;
CREATE TABLE `task_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '属性名称',
  `status` int(1) DEFAULT NULL COMMENT '状态(0,1)',
  `type` int(1) DEFAULT NULL COMMENT '属性类别',
  `price` int(11) DEFAULT NULL COMMENT '所需蚂蚁币',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务属性';

-- ----------------------------
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `bankid` int(11) DEFAULT NULL COMMENT '所属银行',
  `accountname` varchar(32) DEFAULT NULL COMMENT '银行开户名',
  `accountno` varchar(32) DEFAULT NULL COMMENT '银行账号',
  `region` varchar(255) DEFAULT NULL COMMENT '开户行(省/市)',
  `bankname` varchar(255) DEFAULT NULL COMMENT '支行名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户银行卡';
