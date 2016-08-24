/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : myjz

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2016-08-24 20:23:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `advert_info`
-- ----------------------------
DROP TABLE IF EXISTS `advert_info`;
CREATE TABLE `advert_info` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL COMMENT '广告标题',
  `content` varchar(255) default NULL COMMENT '广告内容描述',
  `time` datetime default NULL COMMENT '创建时间',
  `url` varchar(255) default NULL COMMENT '跳转url',
  `img` varchar(255) default NULL COMMENT '背景图片',
  `status` int(1) default NULL COMMENT '状态(0:未发布；1：已发布)',
  `createuser` int(11) default NULL COMMENT '创建人',
  `deleted` int(1) default NULL COMMENT '删除标识',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of advert_info
-- ----------------------------

-- ----------------------------
-- Table structure for `basic_bank`
-- ----------------------------
DROP TABLE IF EXISTS `basic_bank`;
CREATE TABLE `basic_bank` (
  `id` int(11) NOT NULL auto_increment,
  `bankname` varchar(128) default NULL COMMENT '银行名称',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='银行信息表';

-- ----------------------------
-- Records of basic_bank
-- ----------------------------
INSERT INTO `basic_bank` VALUES ('1', '中国建设银行');
INSERT INTO `basic_bank` VALUES ('2', '中国工商银行');
INSERT INTO `basic_bank` VALUES ('3', '中国农业银行');
INSERT INTO `basic_bank` VALUES ('4', '中国银行');
INSERT INTO `basic_bank` VALUES ('5', '中国交通银行');
INSERT INTO `basic_bank` VALUES ('6', '中国兴业银行');
INSERT INTO `basic_bank` VALUES ('7', '中国民生银行');
INSERT INTO `basic_bank` VALUES ('8', '招商银行');
INSERT INTO `basic_bank` VALUES ('9', '广发银行');
INSERT INTO `basic_bank` VALUES ('10', '中国邮政储蓄银行');

-- ----------------------------
-- Table structure for `basic_level_info`
-- ----------------------------
DROP TABLE IF EXISTS `basic_level_info`;
CREATE TABLE `basic_level_info` (
  `id` int(11) NOT NULL auto_increment,
  `type` int(1) default NULL COMMENT '等级类型 1买家',
  `name` varchar(31) default NULL COMMENT '等级名称',
  `mincredit` int(11) default NULL COMMENT '等级最低积分',
  `maxcredit` int(11) default NULL COMMENT '等级最高积分',
  `icon` varchar(255) default NULL COMMENT '等级对应图标',
  `iconnum` int(11) default NULL COMMENT '图标数',
  `deleted` int(1) default NULL COMMENT '删除标识',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='等级信息表';

-- ----------------------------
-- Records of basic_level_info
-- ----------------------------
INSERT INTO `basic_level_info` VALUES ('1', '1', '一星', '4', '10', 'static/images/admin/buyerlevel/icon-level-star.png', '1', '0');
INSERT INTO `basic_level_info` VALUES ('2', '1', '二星', '11', '40', 'static/images/admin/buyerlevel/icon-level-star.png', '2', '0');
INSERT INTO `basic_level_info` VALUES ('4', '1', '三星', '41', '90', 'static/images/admin/buyerlevel/icon-level-star.png', '3', '0');
INSERT INTO `basic_level_info` VALUES ('5', '1', '四星', '91', '150', 'static/images/admin/buyerlevel/icon-level-star.png', '4', '0');
INSERT INTO `basic_level_info` VALUES ('6', '1', '五星', '151', '250', 'static/images/admin/buyerlevel/icon-level-star.png', '5', '0');
INSERT INTO `basic_level_info` VALUES ('7', '1', '一钻', '251', '500', 'static/images/admin/buyerlevel/icon-level-diamonds.png', '1', '0');
INSERT INTO `basic_level_info` VALUES ('8', '1', '二钻', '501', '1000', 'static/images/admin/buyerlevel/icon-level-diamonds.png', '2', '0');
INSERT INTO `basic_level_info` VALUES ('9', '1', '三钻', '1001', '2000', 'static/images/admin/buyerlevel/icon-level-diamonds.png', '3', '0');
INSERT INTO `basic_level_info` VALUES ('10', '1', '四钻', '2001', '5000', 'static/images/admin/buyerlevel/icon-level-diamonds.png', '4', '0');
INSERT INTO `basic_level_info` VALUES ('11', '1', '五钻', '5001', '10000', 'static/images/admin/buyerlevel/icon-level-diamonds.png', '5', '0');
INSERT INTO `basic_level_info` VALUES ('12', '1', '一皇冠', '10001', '20000', 'static/images/admin/buyerlevel/icon-level-crown.png', '1', '0');
INSERT INTO `basic_level_info` VALUES ('13', '1', '二皇冠', '20001', '50000', 'static/images/admin/buyerlevel/icon-level-crown.png', '2', '0');
INSERT INTO `basic_level_info` VALUES ('14', '1', '三皇冠', '50001', '100000', 'static/images/admin/buyerlevel/icon-level-crown.png', '3', '0');
INSERT INTO `basic_level_info` VALUES ('15', '1', '四皇冠', '100001', '200000', 'static/images/admin/buyerlevel/icon-level-crown.png', '4', '0');
INSERT INTO `basic_level_info` VALUES ('16', '1', '五皇冠', '200001', '500000', 'static/images/admin/buyerlevel/icon-level-crown.png', '5', '0');
INSERT INTO `basic_level_info` VALUES ('17', '1', '一金冠', '500001', '1000000', 'static/images/admin/buyerlevel/icon-level-top-crown.png', '1', '0');
INSERT INTO `basic_level_info` VALUES ('18', '1', '二金冠', '1000001', '2000000', 'static/images/admin/buyerlevel/icon-level-top-crown.png', '2', '0');
INSERT INTO `basic_level_info` VALUES ('19', '1', '三金冠', '2000001', '5000000', 'static/images/admin/buyerlevel/icon-level-top-crown.png', '3', '0');
INSERT INTO `basic_level_info` VALUES ('20', '1', '四金冠', '5000001', '10000000', 'static/images/admin/buyerlevel/icon-level-top-crown.png', '4', '0');
INSERT INTO `basic_level_info` VALUES ('21', '1', '五金冠', '10000001', '-1', 'static/images/admin/buyerlevel/icon-level-top-crown.png', '5', '0');

-- ----------------------------
-- Table structure for `buyer_account_basic_info`
-- ----------------------------
DROP TABLE IF EXISTS `buyer_account_basic_info`;
CREATE TABLE `buyer_account_basic_info` (
  `id` int(11) NOT NULL auto_increment,
  `accountid` int(11) default NULL,
  `sex` int(1) default NULL COMMENT '性别',
  `birthday` date default NULL COMMENT '生日',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='小号基础信息';

-- ----------------------------
-- Records of buyer_account_basic_info
-- ----------------------------
INSERT INTO `buyer_account_basic_info` VALUES ('1', '1', '1', '2016-06-15');

-- ----------------------------
-- Table structure for `buyer_account_info`
-- ----------------------------
DROP TABLE IF EXISTS `buyer_account_info`;
CREATE TABLE `buyer_account_info` (
  `id` int(11) NOT NULL auto_increment,
  `accountno` varchar(32) default NULL COMMENT '淘宝旺旺号',
  `identification` int(11) default NULL COMMENT '是否实名认证(0：否；1：是)',
  `credit` int(11) default NULL COMMENT '信誉等级',
  `level` int(11) default NULL COMMENT '买号等级',
  `levelpic` varchar(255) default NULL COMMENT '等级截图图片地址',
  `receivednum` int(11) default NULL COMMENT '已接任务数',
  `auditstatus` int(1) default NULL COMMENT '状态(0：待审核；1通过；-1审核失败；)',
  `status` int(1) default '1' COMMENT '状态(1：启用；0隐藏)',
  `sort` int(11) default NULL COMMENT '排序',
  `createtime` datetime default NULL COMMENT '创建时间',
  `createuser` int(11) default NULL COMMENT '创建人',
  `audituser` int(11) default NULL COMMENT '审核人',
  `audittime` datetime default NULL COMMENT '审核时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='淘宝小号信息表';

-- ----------------------------
-- Records of buyer_account_info
-- ----------------------------
INSERT INTO `buyer_account_info` VALUES ('1', '孤云道人', '1', '255', '7', null, '520', '0', '0', '133', '2016-07-09 16:07:57', '3', null, null);

-- ----------------------------
-- Table structure for `buyer_account_receipt_address`
-- ----------------------------
DROP TABLE IF EXISTS `buyer_account_receipt_address`;
CREATE TABLE `buyer_account_receipt_address` (
  `id` int(11) NOT NULL auto_increment,
  `accountid` int(11) default NULL COMMENT '小号ID',
  `region` varchar(128) default NULL COMMENT '省市区(福建省,福州市,晋安区)',
  `address` varchar(255) default NULL COMMENT '详细地址',
  `receiptname` varchar(32) default NULL COMMENT '收货人姓名',
  `receiptphone` varchar(32) default NULL COMMENT '收货人手机号',
  `createtime` datetime default NULL COMMENT '创建时间',
  `updatetime` datetime default NULL COMMENT '修改时间',
  `areaid` int(11) default NULL COMMENT '省市区所选最低层次id',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='小号收货地址';

-- ----------------------------
-- Records of buyer_account_receipt_address
-- ----------------------------
INSERT INTO `buyer_account_receipt_address` VALUES ('1', '1', null, '福州闽侯2', '薛云腾2', '18067356435', null, '2016-07-23 11:01:20', '110102');

-- ----------------------------
-- Table structure for `buyer_account_vpn_info`
-- ----------------------------
DROP TABLE IF EXISTS `buyer_account_vpn_info`;
CREATE TABLE `buyer_account_vpn_info` (
  `id` int(11) NOT NULL auto_increment,
  `accountid` int(11) default NULL COMMENT '小号ID',
  `password` varchar(128) default NULL COMMENT '旺旺号登录密码',
  `alipayaccount` varchar(128) default NULL COMMENT '旺旺号绑定的支付宝账号',
  `paypassword` varchar(128) default NULL COMMENT '旺旺号绑定的支付宝支付密码',
  `phone` varchar(32) default NULL COMMENT '旺旺号绑定的手机卡',
  `name` varchar(128) default NULL COMMENT 'VPN名称',
  `line` varchar(128) default NULL COMMENT 'VPN接点/线路',
  `loginip` varchar(128) default NULL COMMENT '旺旺号登录Ip',
  `region` varchar(255) default NULL COMMENT '旺旺号登录省市区',
  `computername` varchar(128) default NULL COMMENT '旺旺号/VPN所在电脑名称',
  `mcs` varchar(128) default NULL COMMENT '旺旺号/VPN所在电脑MAC',
  `address` varchar(255) default NULL COMMENT '旺旺号登录详细地址',
  `memo` varchar(255) default NULL COMMENT '备注',
  `createtime` datetime default NULL COMMENT '创建时间',
  `updatetime` datetime default NULL COMMENT '修改时间',
  `areaid` int(11) default NULL COMMENT '旺旺号登录省市区',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='小号VPN信息';

-- ----------------------------
-- Records of buyer_account_vpn_info
-- ----------------------------
INSERT INTO `buyer_account_vpn_info` VALUES ('1', '1', '1111', '111', '111', '11', '232', '3232', '32', null, '发放', '2132', '1232', '发达发达', '2016-07-18 21:38:59', '2016-07-26 21:41:16', '220000');

-- ----------------------------
-- Table structure for `complain_info`
-- ----------------------------
DROP TABLE IF EXISTS `complain_info`;
CREATE TABLE `complain_info` (
  `id` int(11) NOT NULL auto_increment,
  `sellerid` int(11) default NULL COMMENT '商家ID',
  `createuser` int(11) default NULL COMMENT '创建人',
  `createtime` datetime default NULL COMMENT '创建时间',
  `taskid` int(11) default NULL COMMENT '任务ID',
  `complaintype` int(11) default NULL,
  `content` varchar(255) default NULL COMMENT '申诉内容',
  `proveimage` varchar(512) default NULL COMMENT '申诉图片(以“,”隔开)',
  `status` int(1) default NULL COMMENT '申诉状态（0：未处理；1：申诉成功；-1：申诉失败）',
  `audituser` int(11) default NULL COMMENT '审核人',
  `audittime` datetime default NULL COMMENT '审核时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申诉表';

-- ----------------------------
-- Records of complain_info
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `id` int(11) NOT NULL auto_increment,
  `typename` varchar(128) default NULL COMMENT '类型名称',
  `pid` int(11) default NULL COMMENT '上级ID',
  `status` int(1) default NULL COMMENT '状态(隐藏/显示)',
  `sort` int(11) default NULL COMMENT '排序',
  `deleted` int(1) default '0' COMMENT '删除标识',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品类目';

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES ('1', '服饰鞋帽', '-1', '1', '1', '0');
INSERT INTO `goods_type` VALUES ('2', '家用电器', '-1', '1', '2', '0');

-- ----------------------------
-- Table structure for `help_document`
-- ----------------------------
DROP TABLE IF EXISTS `help_document`;
CREATE TABLE `help_document` (
  `id` int(11) NOT NULL auto_increment COMMENT '文档id',
  `title` varchar(64) default NULL COMMENT '文档名',
  `menuid` int(11) default NULL COMMENT '文档类目id',
  `href` varchar(255) default NULL COMMENT '文档生成页面的连接',
  `deleted` int(1) default '0' COMMENT '删除标识',
  `sort` int(11) default NULL,
  `status` int(1) default NULL COMMENT '状态 (显示隐藏)',
  `content` text COMMENT '文档内容',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='帮助文档';

-- ----------------------------
-- Records of help_document
-- ----------------------------
INSERT INTO `help_document` VALUES ('1', '男啊 ', '1', null, '0', '1', null, '破电脑 我草');
INSERT INTO `help_document` VALUES ('2', '二级的2', '4', null, '0', '2', null, '渣电脑');

-- ----------------------------
-- Table structure for `help_menu`
-- ----------------------------
DROP TABLE IF EXISTS `help_menu`;
CREATE TABLE `help_menu` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一标示',
  `pid` int(11) default NULL COMMENT '上级id',
  `pids` varchar(255) default NULL COMMENT '所有父id 格式：“，1,2，”',
  `type` int(1) default NULL COMMENT '文档类型 ',
  `name` varchar(128) default NULL COMMENT '菜单名称',
  `sort` int(11) default NULL COMMENT '排序',
  `deleted` int(1) default '0' COMMENT '删除标识',
  `url` varchar(255) default NULL COMMENT '连接',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='帮助菜单';

-- ----------------------------
-- Records of help_menu
-- ----------------------------
INSERT INTO `help_menu` VALUES ('1', '-1', null, '1', '买家新手上路', '1', '0', null);
INSERT INTO `help_menu` VALUES ('2', '-1', ',-1,', '2', '卖家新手上路', '2', '0', null);
INSERT INTO `help_menu` VALUES ('4', '2', ',-1,', '2', '注册', '1', '0', null);
INSERT INTO `help_menu` VALUES ('5', '2', ',-1,', '2', '登录', '2', '0', null);
INSERT INTO `help_menu` VALUES ('6', '2', ',-1,', '2', '平台名词', '3', '0', '');
INSERT INTO `help_menu` VALUES ('19', '15', ',-1,', '1', '出错2', '3', '0', '');

-- ----------------------------
-- Table structure for `order_basic_properties`
-- ----------------------------
DROP TABLE IF EXISTS `order_basic_properties`;
CREATE TABLE `order_basic_properties` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` int(11) default NULL COMMENT '订单ID',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单基本属性';

-- ----------------------------
-- Records of order_basic_properties
-- ----------------------------

-- ----------------------------
-- Table structure for `order_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` int(11) NOT NULL auto_increment,
  `orderno` varchar(32) default NULL COMMENT '订单编号',
  `createtime` datetime default NULL COMMENT '订单创建时间',
  `createuser` int(11) default NULL COMMENT '创建人',
  `publictime` datetime default NULL COMMENT '任务发布时间',
  `istime` int(1) default NULL COMMENT '是否定时发布',
  `status` int(11) default NULL COMMENT '订单状态',
  `bond` double(10,2) default NULL COMMENT '担保金',
  `receiveruser` int(11) default NULL COMMENT '接单人',
  `receivetime` datetime default NULL COMMENT '接单时间',
  `shopid` int(11) default NULL COMMENT '店铺ID',
  `searchroad` int(11) default NULL COMMENT '搜索入口',
  `type` int(11) default NULL COMMENT '手机/电脑单类型',
  `targetsubtype` int(11) default NULL COMMENT '任务目标副类型(0:常规单;1:流量单;)',
  `paytime` datetime default NULL COMMENT '付款时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='订单基本信息';

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('3', 'TB2016082419160003', '2016-08-24 19:16:47', '2', '2016-08-24 19:16:47', '0', '1', '0.00', null, null, '1', '1', null, null, null);

-- ----------------------------
-- Table structure for `order_other_properties`
-- ----------------------------
DROP TABLE IF EXISTS `order_other_properties`;
CREATE TABLE `order_other_properties` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` int(11) default NULL COMMENT '订单ID',
  `propertiesvalueid` int(11) default NULL COMMENT '属性值ID',
  `propertiesvalue` varchar(255) default NULL COMMENT '属性值',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='订单其他属性';

-- ----------------------------
-- Records of order_other_properties
-- ----------------------------
INSERT INTO `order_other_properties` VALUES ('69', null, '2', null);
INSERT INTO `order_other_properties` VALUES ('70', null, '62', null);
INSERT INTO `order_other_properties` VALUES ('71', null, '59', null);
INSERT INTO `order_other_properties` VALUES ('72', null, '1', null);
INSERT INTO `order_other_properties` VALUES ('73', null, '91', null);
INSERT INTO `order_other_properties` VALUES ('74', null, '89', null);
INSERT INTO `order_other_properties` VALUES ('75', null, '88', null);
INSERT INTO `order_other_properties` VALUES ('76', null, '18', null);
INSERT INTO `order_other_properties` VALUES ('77', null, '17', null);
INSERT INTO `order_other_properties` VALUES ('78', null, '16', null);
INSERT INTO `order_other_properties` VALUES ('79', null, '15', null);
INSERT INTO `order_other_properties` VALUES ('80', null, '14', null);
INSERT INTO `order_other_properties` VALUES ('81', null, '13', null);
INSERT INTO `order_other_properties` VALUES ('82', null, '12', null);
INSERT INTO `order_other_properties` VALUES ('83', null, '11', null);
INSERT INTO `order_other_properties` VALUES ('84', null, '10', null);
INSERT INTO `order_other_properties` VALUES ('85', null, '9', null);
INSERT INTO `order_other_properties` VALUES ('86', null, '8', null);
INSERT INTO `order_other_properties` VALUES ('87', null, '7', null);
INSERT INTO `order_other_properties` VALUES ('88', null, '6', null);
INSERT INTO `order_other_properties` VALUES ('89', null, '5', null);
INSERT INTO `order_other_properties` VALUES ('90', null, '4', null);
INSERT INTO `order_other_properties` VALUES ('91', null, '3', null);
INSERT INTO `order_other_properties` VALUES ('92', null, '28', null);
INSERT INTO `order_other_properties` VALUES ('93', null, '26', null);
INSERT INTO `order_other_properties` VALUES ('94', null, '25', null);
INSERT INTO `order_other_properties` VALUES ('95', null, '24', null);
INSERT INTO `order_other_properties` VALUES ('96', null, '23', null);
INSERT INTO `order_other_properties` VALUES ('97', null, '22', null);
INSERT INTO `order_other_properties` VALUES ('98', null, '21', null);
INSERT INTO `order_other_properties` VALUES ('99', null, '20', null);
INSERT INTO `order_other_properties` VALUES ('100', null, '19', null);
INSERT INTO `order_other_properties` VALUES ('101', null, '27', null);
INSERT INTO `order_other_properties` VALUES ('102', null, null, null);

-- ----------------------------
-- Table structure for `seller_label`
-- ----------------------------
DROP TABLE IF EXISTS `seller_label`;
CREATE TABLE `seller_label` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(64) default NULL COMMENT '标签名称',
  `type` int(11) default NULL COMMENT '类型(1：收货地址；2：好评内容)',
  `sort` int(11) default NULL COMMENT '排序',
  `userid` int(11) default NULL COMMENT '用户ID',
  `createtime` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of seller_label
-- ----------------------------
INSERT INTO `seller_label` VALUES ('2', '福州', '1', '1', '3', '2016-07-04 23:16:44');

-- ----------------------------
-- Table structure for `seller_praise`
-- ----------------------------
DROP TABLE IF EXISTS `seller_praise`;
CREATE TABLE `seller_praise` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL COMMENT '用户ID',
  `createtime` datetime default NULL COMMENT '创建时间',
  `updatetime` datetime default NULL COMMENT '修改时间',
  `labelid` int(11) default NULL COMMENT '标签ID',
  `content` varchar(255) default NULL COMMENT '好评内容',
  `status` int(1) default NULL COMMENT '状态(0：未使用；1已使用)',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='好评内容信息表';

-- ----------------------------
-- Records of seller_praise
-- ----------------------------
INSERT INTO `seller_praise` VALUES ('3', '3', '2016-07-19 22:34:21', null, '2', 'fff', '0');

-- ----------------------------
-- Table structure for `seller_receipt_address`
-- ----------------------------
DROP TABLE IF EXISTS `seller_receipt_address`;
CREATE TABLE `seller_receipt_address` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL COMMENT '用户ID',
  `createtime` datetime default NULL COMMENT '创建时间',
  `updatetime` datetime default NULL COMMENT '修改时间',
  `labelid` int(11) default NULL COMMENT '标签ID',
  `name` varchar(32) default NULL COMMENT '姓名',
  `phone` varchar(32) default NULL COMMENT '电话',
  `code` varchar(10) default NULL COMMENT '邮编',
  `address` varchar(255) default NULL COMMENT '收货地址',
  `status` int(1) default NULL COMMENT '状态(0：未使用；1已使用)',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家收货地址';

-- ----------------------------
-- Records of seller_receipt_address
-- ----------------------------

-- ----------------------------
-- Table structure for `seller_shop`
-- ----------------------------
DROP TABLE IF EXISTS `seller_shop`;
CREATE TABLE `seller_shop` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(128) default NULL COMMENT '店铺名称',
  `type` int(1) default NULL COMMENT '店铺类型',
  `manager` varchar(64) default NULL COMMENT '掌柜号/1688企业名',
  `indexurl` varchar(255) default NULL COMMENT '店铺首页地址',
  `alltasknum` int(11) default NULL COMMENT '总发布任务',
  `status` int(1) default NULL COMMENT '状态',
  `userid` int(11) default NULL COMMENT '用户ID',
  `createtime` datetime default NULL COMMENT '创建时间',
  `goodstypeid` int(11) default NULL COMMENT '店铺品类(商品类目)',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商家店铺表';

-- ----------------------------
-- Records of seller_shop
-- ----------------------------
INSERT INTO `seller_shop` VALUES ('1', '布衣柜商家', '1', '布衣柜', 'http://www.taobao.com', '10', '1', '2', '2016-07-04 23:50:17', '1');
INSERT INTO `seller_shop` VALUES ('5', '腾达店', '1', '22', '22', '0', '1', '2', '2016-07-05 00:33:19', '1');
INSERT INTO `seller_shop` VALUES ('6', '天使街23号', '1', '22 ', 'www.baodiu.com2', '0', '0', '3', '2016-07-05 21:22:40', '1');
INSERT INTO `seller_shop` VALUES ('7', '云店', null, 'yun', 'www.yun.com', '0', '0', '3', '2016-07-19 22:33:15', '1');

-- ----------------------------
-- Table structure for `sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` int(11) NOT NULL auto_increment,
  `areacode` varchar(50) default NULL,
  `areaname` varchar(50) default NULL,
  `uppk` int(11) default NULL,
  `level` varchar(50) default NULL,
  `leveltype` varchar(50) default NULL,
  `citycode` varchar(255) default NULL,
  `zipcode` varchar(255) default NULL,
  `mergername` varchar(255) default NULL,
  `lng` double(20,6) default NULL,
  `lat` double(20,6) default NULL,
  `pinyin` varchar(255) default NULL,
  `shortname` varchar(255) default NULL,
  `deleted` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=900001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('100000', '100000', '中国', null, '中国', '', null, null, '中国', '116.368324', '39.915085', 'China', '中国', '0');
INSERT INTO `sys_area` VALUES ('110000', '110000', '北京', '100000', '省', '', '', '', '中国,北京', '116.405285', '39.904989', 'Beijing', '北京', '0');
INSERT INTO `sys_area` VALUES ('110100', '110100', '北京市', '110000', '市', '', '010', '100000', '中国,北京,北京市', '116.405285', '39.904989', 'Beijing', '北京', '0');
INSERT INTO `sys_area` VALUES ('110101', '110101', '东城区', '110100', '区', '', '010', '100010', '中国,北京,北京市,东城区', '116.410050', '39.931570', 'Dongcheng', '东城', '0');
INSERT INTO `sys_area` VALUES ('110102', '110102', '西城区', '110100', '区', '', '010', '100032', '中国,北京,北京市,西城区', '116.360030', '39.930500', 'Xicheng', '西城', '0');
INSERT INTO `sys_area` VALUES ('110105', '110105', '朝阳区', '110100', '区', '', '010', '100020', '中国,北京,北京市,朝阳区', '116.485480', '39.948400', 'Chaoyang', '朝阳', '0');
INSERT INTO `sys_area` VALUES ('110106', '110106', '丰台区', '110100', '区', '', '010', '100071', '中国,北京,北京市,丰台区', '116.286250', '39.858500', 'Fengtai', '丰台', '0');
INSERT INTO `sys_area` VALUES ('110107', '110107', '石景山区', '110100', '区', '', '010', '100043', '中国,北京,北京市,石景山区', '116.222900', '39.905640', 'Shijingshan', '石景山', '0');
INSERT INTO `sys_area` VALUES ('110108', '110108', '海淀区', '110100', '区', '', '010', '100089', '中国,北京,北京市,海淀区', '116.298120', '39.959310', 'Haidian', '海淀', '0');
INSERT INTO `sys_area` VALUES ('110109', '110109', '门头沟区', '110100', '区', '', '010', '102300', '中国,北京,北京市,门头沟区', '116.101370', '39.940430', 'Mentougou', '门头沟', '0');
INSERT INTO `sys_area` VALUES ('110111', '110111', '房山区', '110100', '区', '', '010', '102488', '中国,北京,北京市,房山区', '116.142570', '39.747860', 'Fangshan', '房山', '0');
INSERT INTO `sys_area` VALUES ('110112', '110112', '通州区', '110100', '区', '', '010', '101149', '中国,北京,北京市,通州区', '116.657160', '39.909660', 'Tongzhou', '通州', '0');
INSERT INTO `sys_area` VALUES ('110113', '110113', '顺义区', '110100', '区', '', '010', '101300', '中国,北京,北京市,顺义区', '116.654170', '40.130200', 'Shunyi', '顺义', '0');
INSERT INTO `sys_area` VALUES ('110114', '110114', '昌平区', '110100', '区', '', '010', '102200', '中国,北京,北京市,昌平区', '116.231200', '40.220720', 'Changping', '昌平', '0');
INSERT INTO `sys_area` VALUES ('110115', '110115', '大兴区', '110100', '区', '', '010', '102600', '中国,北京,北京市,大兴区', '116.341490', '39.726680', 'Daxing', '大兴', '0');
INSERT INTO `sys_area` VALUES ('110116', '110116', '怀柔区', '110100', '区', '', '010', '101400', '中国,北京,北京市,怀柔区', '116.631680', '40.316020', 'Huairou', '怀柔', '0');
INSERT INTO `sys_area` VALUES ('110117', '110117', '平谷区', '110100', '区', '', '010', '101200', '中国,北京,北京市,平谷区', '117.121330', '40.140560', 'Pinggu', '平谷', '0');
INSERT INTO `sys_area` VALUES ('110228', '110228', '密云县', '110100', '区', '', '010', '101500', '中国,北京,北京市,密云县', '116.842950', '40.376180', 'Miyun', '密云', '0');
INSERT INTO `sys_area` VALUES ('110229', '110229', '延庆县', '110100', '区', '', '010', '102100', '中国,北京,北京市,延庆县', '115.974940', '40.456720', 'Yanqing', '延庆', '0');
INSERT INTO `sys_area` VALUES ('120000', '120000', '天津', '100000', '省', '', '', '', '中国,天津', '117.190182', '39.125596', 'Tianjin', '天津', '0');
INSERT INTO `sys_area` VALUES ('120100', '120100', '天津市', '120000', '市', '', '022', '300000', '中国,天津,天津市', '117.190182', '39.125596', 'Tianjin', '天津', '0');
INSERT INTO `sys_area` VALUES ('120101', '120101', '和平区', '120100', '区', '', '022', '300041', '中国,天津,天津市,和平区', '117.214560', '39.117180', 'Heping', '和平', '0');
INSERT INTO `sys_area` VALUES ('120102', '120102', '河东区', '120100', '区', '', '022', '300171', '中国,天津,天津市,河东区', '117.225620', '39.123180', 'Hedong', '河东', '0');
INSERT INTO `sys_area` VALUES ('120103', '120103', '河西区', '120100', '区', '', '022', '300202', '中国,天津,天津市,河西区', '117.223270', '39.109590', 'Hexi', '河西', '0');
INSERT INTO `sys_area` VALUES ('120104', '120104', '南开区', '120100', '区', '', '022', '300110', '中国,天津,天津市,南开区', '117.150740', '39.138210', 'Nankai', '南开', '0');
INSERT INTO `sys_area` VALUES ('120105', '120105', '河北区', '120100', '区', '', '022', '300143', '中国,天津,天津市,河北区', '117.196970', '39.148160', 'Hebei', '河北', '0');
INSERT INTO `sys_area` VALUES ('120106', '120106', '红桥区', '120100', '区', '', '022', '300131', '中国,天津,天津市,红桥区', '117.151450', '39.167150', 'Hongqiao', '红桥', '0');
INSERT INTO `sys_area` VALUES ('120110', '120110', '东丽区', '120100', '区', '', '022', '300300', '中国,天津,天津市,东丽区', '117.314360', '39.086300', 'Dongli', '东丽', '0');
INSERT INTO `sys_area` VALUES ('120111', '120111', '西青区', '120100', '区', '', '022', '300380', '中国,天津,天津市,西青区', '117.009270', '39.141230', 'Xiqing', '西青', '0');
INSERT INTO `sys_area` VALUES ('120112', '120112', '津南区', '120100', '区', '', '022', '300350', '中国,天津,天津市,津南区', '117.385370', '38.991390', 'Jinnan', '津南', '0');
INSERT INTO `sys_area` VALUES ('120113', '120113', '北辰区', '120100', '区', '', '022', '300400', '中国,天津,天津市,北辰区', '117.132170', '39.221310', 'Beichen', '北辰', '0');
INSERT INTO `sys_area` VALUES ('120114', '120114', '武清区', '120100', '区', '', '022', '301700', '中国,天津,天津市,武清区', '117.044430', '39.384150', 'Wuqing', '武清', '0');
INSERT INTO `sys_area` VALUES ('120115', '120115', '宝坻区', '120100', '区', '', '022', '301800', '中国,天津,天津市,宝坻区', '117.310300', '39.717610', 'Baodi', '宝坻', '0');
INSERT INTO `sys_area` VALUES ('120116', '120116', '滨海新区', '120100', '区', '', '022', '300451', '中国,天津,天津市,滨海新区', '117.701620', '39.026680', 'Binhaixinqu', '滨海新区', '0');
INSERT INTO `sys_area` VALUES ('120221', '120221', '宁河县', '120100', '区', '', '022', '301500', '中国,天津,天津市,宁河县', '117.825500', '39.330480', 'Ninghe', '宁河', '0');
INSERT INTO `sys_area` VALUES ('120223', '120223', '静海县', '120100', '区', '', '022', '301600', '中国,天津,天津市,静海县', '116.974360', '38.945820', 'Jinghai', '静海', '0');
INSERT INTO `sys_area` VALUES ('120225', '120225', '蓟县', '120100', '区', '', '022', '301900', '中国,天津,天津市,蓟县', '117.407990', '40.045670', 'Jixian', '蓟县', '0');
INSERT INTO `sys_area` VALUES ('130000', '130000', '河北省', '100000', '省', '', '', '', '中国,河北省', '114.502461', '38.045474', 'Hebei', '河北', '0');
INSERT INTO `sys_area` VALUES ('130100', '130100', '石家庄市', '130000', '市', '', '0311', '050011', '中国,河北省,石家庄市', '114.502461', '38.045474', 'Shijiazhuang', '石家庄', '0');
INSERT INTO `sys_area` VALUES ('130102', '130102', '长安区', '130100', '区', '', '0311', '050011', '中国,河北省,石家庄市,长安区', '114.539060', '38.036650', 'Chang\'an', '长安', '0');
INSERT INTO `sys_area` VALUES ('130104', '130104', '桥西区', '130100', '区', '', '0311', '050091', '中国,河北省,石家庄市,桥西区', '114.469770', '38.032210', 'Qiaoxi', '桥西', '0');
INSERT INTO `sys_area` VALUES ('130105', '130105', '新华区', '130100', '区', '', '0311', '050051', '中国,河北省,石家庄市,新华区', '114.463260', '38.050880', 'Xinhua', '新华', '0');
INSERT INTO `sys_area` VALUES ('130107', '130107', '井陉矿区', '130100', '区', '', '0311', '050100', '中国,河北省,石家庄市,井陉矿区', '114.065180', '38.067050', 'Jingxingkuangqu', '井陉矿区', '0');
INSERT INTO `sys_area` VALUES ('130108', '130108', '裕华区', '130100', '区', '', '0311', '050031', '中国,河北省,石家庄市,裕华区', '114.531150', '38.006040', 'Yuhua', '裕华', '0');
INSERT INTO `sys_area` VALUES ('130109', '130109', '藁城区', '130100', '区', '', '0311', '052160', '中国,河北省,石家庄市,藁城区', '114.846710', '38.021620', 'Gaocheng', '藁城', '0');
INSERT INTO `sys_area` VALUES ('130110', '130110', '鹿泉区', '130100', '区', '', '0311', '050200', '中国,河北省,石家庄市,鹿泉区', '114.313470', '38.087820', 'Luquan', '鹿泉', '0');
INSERT INTO `sys_area` VALUES ('130111', '130111', '栾城区', '130100', '区', '', '0311', '051430', '中国,河北省,石家庄市,栾城区', '114.648340', '37.900220', 'Luancheng', '栾城', '0');
INSERT INTO `sys_area` VALUES ('130121', '130121', '井陉县', '130100', '区', '', '0311', '050300', '中国,河北省,石家庄市,井陉县', '114.142570', '38.036880', 'Jingxing', '井陉', '0');
INSERT INTO `sys_area` VALUES ('130123', '130123', '正定县', '130100', '区', '', '0311', '050800', '中国,河北省,石家庄市,正定县', '114.572960', '38.144450', 'Zhengding', '正定', '0');
INSERT INTO `sys_area` VALUES ('130125', '130125', '行唐县', '130100', '区', '', '0311', '050600', '中国,河北省,石家庄市,行唐县', '114.553160', '38.436540', 'Xingtang', '行唐', '0');
INSERT INTO `sys_area` VALUES ('130126', '130126', '灵寿县', '130100', '区', '', '0311', '050500', '中国,河北省,石家庄市,灵寿县', '114.382590', '38.308450', 'Lingshou', '灵寿', '0');
INSERT INTO `sys_area` VALUES ('130127', '130127', '高邑县', '130100', '区', '', '0311', '051330', '中国,河北省,石家庄市,高邑县', '114.611420', '37.615560', 'Gaoyi', '高邑', '0');
INSERT INTO `sys_area` VALUES ('130128', '130128', '深泽县', '130100', '区', '', '0311', '052560', '中国,河北省,石家庄市,深泽县', '115.203580', '38.183530', 'Shenze', '深泽', '0');
INSERT INTO `sys_area` VALUES ('130129', '130129', '赞皇县', '130100', '区', '', '0311', '051230', '中国,河北省,石家庄市,赞皇县', '114.387750', '37.661350', 'Zanhuang', '赞皇', '0');
INSERT INTO `sys_area` VALUES ('130130', '130130', '无极县', '130100', '区', '', '0311', '052460', '中国,河北省,石家庄市,无极县', '114.975090', '38.176530', 'Wuji', '无极', '0');
INSERT INTO `sys_area` VALUES ('130131', '130131', '平山县', '130100', '区', '', '0311', '050400', '中国,河北省,石家庄市,平山县', '114.186000', '38.259940', 'Pingshan', '平山', '0');
INSERT INTO `sys_area` VALUES ('130132', '130132', '元氏县', '130100', '区', '', '0311', '051130', '中国,河北省,石家庄市,元氏县', '114.525390', '37.766680', 'Yuanshi', '元氏', '0');
INSERT INTO `sys_area` VALUES ('130133', '130133', '赵县', '130100', '区', '', '0311', '051530', '中国,河北省,石家庄市,赵县', '114.776120', '37.756280', 'Zhaoxian', '赵县', '0');
INSERT INTO `sys_area` VALUES ('130181', '130181', '辛集市', '130100', '区', '', '0311', '052360', '中国,河北省,石家庄市,辛集市', '115.206260', '37.940790', 'Xinji', '辛集', '0');
INSERT INTO `sys_area` VALUES ('130183', '130183', '晋州市', '130100', '区', '', '0311', '052260', '中国,河北省,石家庄市,晋州市', '115.043480', '38.031350', 'Jinzhou', '晋州', '0');
INSERT INTO `sys_area` VALUES ('130184', '130184', '新乐市', '130100', '区', '', '0311', '050700', '中国,河北省,石家庄市,新乐市', '114.689850', '38.344170', 'Xinle', '新乐', '0');
INSERT INTO `sys_area` VALUES ('130200', '130200', '唐山市', '130000', '市', '', '0315', '063000', '中国,河北省,唐山市', '118.175393', '39.635113', 'Tangshan', '唐山', '0');
INSERT INTO `sys_area` VALUES ('130202', '130202', '路南区', '130200', '区', '', '0315', '063000', '中国,河北省,唐山市,路南区', '118.154310', '39.625050', 'Lunan', '路南', '0');
INSERT INTO `sys_area` VALUES ('130203', '130203', '路北区', '130200', '区', '', '0315', '063000', '中国,河北省,唐山市,路北区', '118.200790', '39.624360', 'Lubei', '路北', '0');
INSERT INTO `sys_area` VALUES ('130204', '130204', '古冶区', '130200', '区', '', '0315', '063100', '中国,河北省,唐山市,古冶区', '118.458030', '39.719930', 'Guye', '古冶', '0');
INSERT INTO `sys_area` VALUES ('130205', '130205', '开平区', '130200', '区', '', '0315', '063021', '中国,河北省,唐山市,开平区', '118.261710', '39.671280', 'Kaiping', '开平', '0');
INSERT INTO `sys_area` VALUES ('130207', '130207', '丰南区', '130200', '区', '', '0315', '063300', '中国,河北省,唐山市,丰南区', '118.112820', '39.564830', 'Fengnan', '丰南', '0');
INSERT INTO `sys_area` VALUES ('130208', '130208', '丰润区', '130200', '区', '', '0315', '064000', '中国,河北省,唐山市,丰润区', '118.129760', '39.824400', 'Fengrun', '丰润', '0');
INSERT INTO `sys_area` VALUES ('130209', '130209', '曹妃甸区', '130200', '区', '', '0315', '063200', '中国,河北省,唐山市,曹妃甸区', '118.460379', '39.273070', 'Caofeidian', '曹妃甸', '0');
INSERT INTO `sys_area` VALUES ('130223', '130223', '滦县', '130200', '区', '', '0315', '063700', '中国,河北省,唐山市,滦县', '118.703460', '39.740560', 'Luanxian', '滦县', '0');
INSERT INTO `sys_area` VALUES ('130224', '130224', '滦南县', '130200', '区', '', '0315', '063500', '中国,河北省,唐山市,滦南县', '118.674100', '39.503900', 'Luannan', '滦南', '0');
INSERT INTO `sys_area` VALUES ('130225', '130225', '乐亭县', '130200', '区', '', '0315', '063600', '中国,河北省,唐山市,乐亭县', '118.912500', '39.425610', 'Laoting', '乐亭', '0');
INSERT INTO `sys_area` VALUES ('130227', '130227', '迁西县', '130200', '区', '', '0315', '064300', '中国,河北省,唐山市,迁西县', '118.316160', '40.145870', 'Qianxi', '迁西', '0');
INSERT INTO `sys_area` VALUES ('130229', '130229', '玉田县', '130200', '区', '', '0315', '064100', '中国,河北省,唐山市,玉田县', '117.738800', '39.900490', 'Yutian', '玉田', '0');
INSERT INTO `sys_area` VALUES ('130281', '130281', '遵化市', '130200', '区', '', '0315', '064200', '中国,河北省,唐山市,遵化市', '117.964440', '40.187410', 'Zunhua', '遵化', '0');
INSERT INTO `sys_area` VALUES ('130283', '130283', '迁安市', '130200', '区', '', '0315', '064400', '中国,河北省,唐山市,迁安市', '118.700680', '39.998330', 'Qian\'an', '迁安', '0');
INSERT INTO `sys_area` VALUES ('130300', '130300', '秦皇岛市', '130000', '市', '', '0335', '066000', '中国,河北省,秦皇岛市', '119.586579', '39.942531', 'Qinhuangdao', '秦皇岛', '0');
INSERT INTO `sys_area` VALUES ('130302', '130302', '海港区', '130300', '区', '', '0335', '066000', '中国,河北省,秦皇岛市,海港区', '119.610460', '39.934500', 'Haigang', '海港', '0');
INSERT INTO `sys_area` VALUES ('130303', '130303', '山海关区', '130300', '区', '', '0335', '066200', '中国,河北省,秦皇岛市,山海关区', '119.775630', '39.978690', 'Shanhaiguan', '山海关', '0');
INSERT INTO `sys_area` VALUES ('130304', '130304', '北戴河区', '130300', '区', '', '0335', '066100', '中国,河北省,秦皇岛市,北戴河区', '119.483880', '39.834080', 'Beidaihe', '北戴河', '0');
INSERT INTO `sys_area` VALUES ('130321', '130321', '青龙满族自治县', '130300', '区', '', '0335', '066500', '中国,河北省,秦皇岛市,青龙满族自治县', '118.952420', '40.407430', 'Qinglong', '青龙', '0');
INSERT INTO `sys_area` VALUES ('130322', '130322', '昌黎县', '130300', '区', '', '0335', '066600', '中国,河北省,秦皇岛市,昌黎县', '119.165950', '39.708840', 'Changli', '昌黎', '0');
INSERT INTO `sys_area` VALUES ('130323', '130323', '抚宁县', '130300', '区', '', '0335', '066300', '中国,河北省,秦皇岛市,抚宁县', '119.244870', '39.875380', 'Funing', '抚宁', '0');
INSERT INTO `sys_area` VALUES ('130324', '130324', '卢龙县', '130300', '区', '', '0335', '066400', '中国,河北省,秦皇岛市,卢龙县', '118.892880', '39.891760', 'Lulong', '卢龙', '0');
INSERT INTO `sys_area` VALUES ('130400', '130400', '邯郸市', '130000', '市', '', '0310', '056002', '中国,河北省,邯郸市', '114.490686', '36.612273', 'Handan', '邯郸', '0');
INSERT INTO `sys_area` VALUES ('130402', '130402', '邯山区', '130400', '区', '', '0310', '056001', '中国,河北省,邯郸市,邯山区', '114.483750', '36.600060', 'Hanshan', '邯山', '0');
INSERT INTO `sys_area` VALUES ('130403', '130403', '丛台区', '130400', '区', '', '0310', '056002', '中国,河北省,邯郸市,丛台区', '114.493430', '36.618470', 'Congtai', '丛台', '0');
INSERT INTO `sys_area` VALUES ('130404', '130404', '复兴区', '130400', '区', '', '0310', '056003', '中国,河北省,邯郸市,复兴区', '114.459280', '36.611340', 'Fuxing', '复兴', '0');
INSERT INTO `sys_area` VALUES ('130406', '130406', '峰峰矿区', '130400', '区', '', '0310', '056200', '中国,河北省,邯郸市,峰峰矿区', '114.211480', '36.419370', 'Fengfengkuangqu', '峰峰矿区', '0');
INSERT INTO `sys_area` VALUES ('130421', '130421', '邯郸县', '130400', '区', '', '0310', '056101', '中国,河北省,邯郸市,邯郸县', '114.531030', '36.593850', 'Handan', '邯郸', '0');
INSERT INTO `sys_area` VALUES ('130423', '130423', '临漳县', '130400', '区', '', '0310', '056600', '中国,河北省,邯郸市,临漳县', '114.619500', '36.334610', 'Linzhang', '临漳', '0');
INSERT INTO `sys_area` VALUES ('130424', '130424', '成安县', '130400', '区', '', '0310', '056700', '中国,河北省,邯郸市,成安县', '114.669950', '36.444110', 'Cheng\'an', '成安', '0');
INSERT INTO `sys_area` VALUES ('130425', '130425', '大名县', '130400', '区', '', '0310', '056900', '中国,河北省,邯郸市,大名县', '115.153620', '36.279940', 'Daming', '大名', '0');
INSERT INTO `sys_area` VALUES ('130426', '130426', '涉县', '130400', '区', '', '0310', '056400', '中国,河北省,邯郸市,涉县', '113.691830', '36.580720', 'Shexian', '涉县', '0');
INSERT INTO `sys_area` VALUES ('130427', '130427', '磁县', '130400', '区', '', '0310', '056500', '中国,河北省,邯郸市,磁县', '114.373870', '36.373920', 'Cixian', '磁县', '0');
INSERT INTO `sys_area` VALUES ('130428', '130428', '肥乡县', '130400', '区', '', '0310', '057550', '中国,河北省,邯郸市,肥乡县', '114.799980', '36.548070', 'Feixiang', '肥乡', '0');
INSERT INTO `sys_area` VALUES ('130429', '130429', '永年县', '130400', '区', '', '0310', '057150', '中国,河北省,邯郸市,永年县', '114.489250', '36.783560', 'Yongnian', '永年', '0');
INSERT INTO `sys_area` VALUES ('130430', '130430', '邱县', '130400', '区', '', '0310', '057450', '中国,河北省,邯郸市,邱县', '115.174070', '36.820820', 'Qiuxian', '邱县', '0');
INSERT INTO `sys_area` VALUES ('130431', '130431', '鸡泽县', '130400', '区', '', '0310', '057350', '中国,河北省,邯郸市,鸡泽县', '114.874200', '36.923740', 'Jize', '鸡泽', '0');
INSERT INTO `sys_area` VALUES ('130432', '130432', '广平县', '130400', '区', '', '0310', '057650', '中国,河北省,邯郸市,广平县', '114.946530', '36.480460', 'Guangping', '广平', '0');
INSERT INTO `sys_area` VALUES ('130433', '130433', '馆陶县', '130400', '区', '', '0310', '057750', '中国,河北省,邯郸市,馆陶县', '115.299130', '36.537190', 'Guantao', '馆陶', '0');
INSERT INTO `sys_area` VALUES ('130434', '130434', '魏县', '130400', '区', '', '0310', '056800', '中国,河北省,邯郸市,魏县', '114.935180', '36.361710', 'Weixian', '魏县', '0');
INSERT INTO `sys_area` VALUES ('130435', '130435', '曲周县', '130400', '区', '', '0310', '057250', '中国,河北省,邯郸市,曲周县', '114.951960', '36.776710', 'Quzhou', '曲周', '0');
INSERT INTO `sys_area` VALUES ('130481', '130481', '武安市', '130400', '区', '', '0310', '056300', '中国,河北省,邯郸市,武安市', '114.201530', '36.692810', 'Wu\'an', '武安', '0');
INSERT INTO `sys_area` VALUES ('130500', '130500', '邢台市', '130000', '市', '', '0319', '054001', '中国,河北省,邢台市', '114.508851', '37.068200', 'Xingtai', '邢台', '0');
INSERT INTO `sys_area` VALUES ('130502', '130502', '桥东区', '130500', '区', '', '0319', '054001', '中国,河北省,邢台市,桥东区', '114.507250', '37.068010', 'Qiaodong', '桥东', '0');
INSERT INTO `sys_area` VALUES ('130503', '130503', '桥西区', '130500', '区', '', '0319', '054000', '中国,河北省,邢台市,桥西区', '114.468030', '37.059840', 'Qiaoxi', '桥西', '0');
INSERT INTO `sys_area` VALUES ('130521', '130521', '邢台县', '130500', '区', '', '0319', '054001', '中国,河北省,邢台市,邢台县', '114.565750', '37.045600', 'Xingtai', '邢台', '0');
INSERT INTO `sys_area` VALUES ('130522', '130522', '临城县', '130500', '区', '', '0319', '054300', '中国,河北省,邢台市,临城县', '114.503870', '37.439770', 'Lincheng', '临城', '0');
INSERT INTO `sys_area` VALUES ('130523', '130523', '内丘县', '130500', '区', '', '0319', '054200', '中国,河北省,邢台市,内丘县', '114.512120', '37.286710', 'Neiqiu', '内丘', '0');
INSERT INTO `sys_area` VALUES ('130524', '130524', '柏乡县', '130500', '区', '', '0319', '055450', '中国,河北省,邢台市,柏乡县', '114.693320', '37.482420', 'Baixiang', '柏乡', '0');
INSERT INTO `sys_area` VALUES ('130525', '130525', '隆尧县', '130500', '区', '', '0319', '055350', '中国,河北省,邢台市,隆尧县', '114.776150', '37.353510', 'Longyao', '隆尧', '0');
INSERT INTO `sys_area` VALUES ('130526', '130526', '任县', '130500', '区', '', '0319', '055150', '中国,河北省,邢台市,任县', '114.684200', '37.125750', 'Renxian', '任县', '0');
INSERT INTO `sys_area` VALUES ('130527', '130527', '南和县', '130500', '区', '', '0319', '054400', '中国,河北省,邢台市,南和县', '114.683710', '37.004880', 'Nanhe', '南和', '0');
INSERT INTO `sys_area` VALUES ('130528', '130528', '宁晋县', '130500', '区', '', '0319', '055550', '中国,河北省,邢台市,宁晋县', '114.921170', '37.616960', 'Ningjin', '宁晋', '0');
INSERT INTO `sys_area` VALUES ('130529', '130529', '巨鹿县', '130500', '区', '', '0319', '055250', '中国,河北省,邢台市,巨鹿县', '115.035240', '37.218010', 'Julu', '巨鹿', '0');
INSERT INTO `sys_area` VALUES ('130530', '130530', '新河县', '130500', '区', '', '0319', '055650', '中国,河北省,邢台市,新河县', '115.249870', '37.527180', 'Xinhe', '新河', '0');
INSERT INTO `sys_area` VALUES ('130531', '130531', '广宗县', '130500', '区', '', '0319', '054600', '中国,河北省,邢台市,广宗县', '115.142540', '37.074600', 'Guangzong', '广宗', '0');
INSERT INTO `sys_area` VALUES ('130532', '130532', '平乡县', '130500', '区', '', '0319', '054500', '中国,河北省,邢台市,平乡县', '115.030020', '37.063170', 'Pingxiang', '平乡', '0');
INSERT INTO `sys_area` VALUES ('130533', '130533', '威县', '130500', '区', '', '0319', '054700', '中国,河北省,邢台市,威县', '115.263700', '36.976800', 'Weixian', '威县', '0');
INSERT INTO `sys_area` VALUES ('130534', '130534', '清河县', '130500', '区', '', '0319', '054800', '中国,河北省,邢台市,清河县', '115.664790', '37.071220', 'Qinghe', '清河', '0');
INSERT INTO `sys_area` VALUES ('130535', '130535', '临西县', '130500', '区', '', '0319', '054900', '中国,河北省,邢台市,临西县', '115.500970', '36.870780', 'Linxi', '临西', '0');
INSERT INTO `sys_area` VALUES ('130581', '130581', '南宫市', '130500', '区', '', '0319', '055750', '中国,河北省,邢台市,南宫市', '115.390680', '37.357990', 'Nangong', '南宫', '0');
INSERT INTO `sys_area` VALUES ('130582', '130582', '沙河市', '130500', '区', '', '0319', '054100', '中国,河北省,邢台市,沙河市', '114.498100', '36.857700', 'Shahe', '沙河', '0');
INSERT INTO `sys_area` VALUES ('130600', '130600', '保定市', '130000', '市', '', '0312', '071052', '中国,河北省,保定市', '115.482331', '38.867657', 'Baoding', '保定', '0');
INSERT INTO `sys_area` VALUES ('130602', '130602', '新市区', '130600', '区', '', '0312', '071051', '中国,河北省,保定市,新市区', '115.458700', '38.877510', 'Xinshi', '新市', '0');
INSERT INTO `sys_area` VALUES ('130603', '130603', '北市区', '130600', '区', '', '0312', '071000', '中国,河北省,保定市,北市区', '115.497150', '38.883220', 'Beishi', '北市', '0');
INSERT INTO `sys_area` VALUES ('130604', '130604', '南市区', '130600', '区', '', '0312', '071001', '中国,河北省,保定市,南市区', '115.528590', '38.854550', 'Nanshi', '南市', '0');
INSERT INTO `sys_area` VALUES ('130621', '130621', '满城县', '130600', '区', '', '0312', '072150', '中国,河北省,保定市,满城县', '115.322960', '38.949720', 'Mancheng', '满城', '0');
INSERT INTO `sys_area` VALUES ('130622', '130622', '清苑县', '130600', '区', '', '0312', '071100', '中国,河北省,保定市,清苑县', '115.492670', '38.767090', 'Qingyuan', '清苑', '0');
INSERT INTO `sys_area` VALUES ('130623', '130623', '涞水县', '130600', '区', '', '0312', '074100', '中国,河北省,保定市,涞水县', '115.715170', '39.394040', 'Laishui', '涞水', '0');
INSERT INTO `sys_area` VALUES ('130624', '130624', '阜平县', '130600', '区', '', '0312', '073200', '中国,河北省,保定市,阜平县', '114.196830', '38.847630', 'Fuping', '阜平', '0');
INSERT INTO `sys_area` VALUES ('130625', '130625', '徐水县', '130600', '区', '', '0312', '072550', '中国,河北省,保定市,徐水县', '115.658290', '39.020990', 'Xushui', '徐水', '0');
INSERT INTO `sys_area` VALUES ('130626', '130626', '定兴县', '130600', '区', '', '0312', '072650', '中国,河北省,保定市,定兴县', '115.807860', '39.263120', 'Dingxing', '定兴', '0');
INSERT INTO `sys_area` VALUES ('130627', '130627', '唐县', '130600', '区', '', '0312', '072350', '中国,河北省,保定市,唐县', '114.985160', '38.745130', 'Tangxian', '唐县', '0');
INSERT INTO `sys_area` VALUES ('130628', '130628', '高阳县', '130600', '区', '', '0312', '071500', '中国,河北省,保定市,高阳县', '115.778800', '38.700030', 'Gaoyang', '高阳', '0');
INSERT INTO `sys_area` VALUES ('130629', '130629', '容城县', '130600', '区', '', '0312', '071700', '中国,河北省,保定市,容城县', '115.871580', '39.053500', 'Rongcheng', '容城', '0');
INSERT INTO `sys_area` VALUES ('130630', '130630', '涞源县', '130600', '区', '', '0312', '074300', '中国,河北省,保定市,涞源县', '114.691280', '39.353880', 'Laiyuan', '涞源', '0');
INSERT INTO `sys_area` VALUES ('130631', '130631', '望都县', '130600', '区', '', '0312', '072450', '中国,河北省,保定市,望都县', '115.156700', '38.709960', 'Wangdu', '望都', '0');
INSERT INTO `sys_area` VALUES ('130632', '130632', '安新县', '130600', '区', '', '0312', '071600', '中国,河北省,保定市,安新县', '115.935570', '38.935320', 'Anxin', '安新', '0');
INSERT INTO `sys_area` VALUES ('130633', '130633', '易县', '130600', '区', '', '0312', '074200', '中国,河北省,保定市,易县', '115.498100', '39.348850', 'Yixian', '易县', '0');
INSERT INTO `sys_area` VALUES ('130634', '130634', '曲阳县', '130600', '区', '', '0312', '073100', '中国,河北省,保定市,曲阳县', '114.701230', '38.621540', 'Quyang', '曲阳', '0');
INSERT INTO `sys_area` VALUES ('130635', '130635', '蠡县', '130600', '区', '', '0312', '071400', '中国,河北省,保定市,蠡县', '115.577170', '38.489740', 'Lixian', '蠡县', '0');
INSERT INTO `sys_area` VALUES ('130636', '130636', '顺平县', '130600', '区', '', '0312', '072250', '中国,河北省,保定市,顺平县', '115.134700', '38.838540', 'Shunping', '顺平', '0');
INSERT INTO `sys_area` VALUES ('130637', '130637', '博野县', '130600', '区', '', '0312', '071300', '中国,河北省,保定市,博野县', '115.470330', '38.456400', 'Boye', '博野', '0');
INSERT INTO `sys_area` VALUES ('130638', '130638', '雄县', '130600', '区', '', '0312', '071800', '中国,河北省,保定市,雄县', '116.108730', '38.994420', 'Xiongxian', '雄县', '0');
INSERT INTO `sys_area` VALUES ('130681', '130681', '涿州市', '130600', '区', '', '0312', '072750', '中国,河北省,保定市,涿州市', '115.980620', '39.486220', 'Zhuozhou', '涿州', '0');
INSERT INTO `sys_area` VALUES ('130682', '130682', '定州市', '130600', '区', '', '0312', '073000', '中国,河北省,保定市,定州市', '114.990200', '38.516230', 'Dingzhou', '定州', '0');
INSERT INTO `sys_area` VALUES ('130683', '130683', '安国市', '130600', '区', '', '0312', '071200', '中国,河北省,保定市,安国市', '115.323210', '38.413910', 'Anguo', '安国', '0');
INSERT INTO `sys_area` VALUES ('130684', '130684', '高碑店市', '130600', '区', '', '0312', '074000', '中国,河北省,保定市,高碑店市', '115.873680', '39.326550', 'Gaobeidian', '高碑店', '0');
INSERT INTO `sys_area` VALUES ('130700', '130700', '张家口市', '130000', '市', '', '0313', '075000', '中国,河北省,张家口市', '114.884091', '40.811901', 'Zhangjiakou', '张家口', '0');
INSERT INTO `sys_area` VALUES ('130702', '130702', '桥东区', '130700', '区', '', '0313', '075000', '中国,河北省,张家口市,桥东区', '114.894300', '40.788440', 'Qiaodong', '桥东', '0');
INSERT INTO `sys_area` VALUES ('130703', '130703', '桥西区', '130700', '区', '', '0313', '075061', '中国,河北省,张家口市,桥西区', '114.869620', '40.819450', 'Qiaoxi', '桥西', '0');
INSERT INTO `sys_area` VALUES ('130705', '130705', '宣化区', '130700', '区', '', '0313', '075100', '中国,河北省,张家口市,宣化区', '115.065430', '40.609570', 'Xuanhua', '宣化', '0');
INSERT INTO `sys_area` VALUES ('130706', '130706', '下花园区', '130700', '区', '', '0313', '075300', '中国,河北省,张家口市,下花园区', '115.287440', '40.502360', 'Xiahuayuan', '下花园', '0');
INSERT INTO `sys_area` VALUES ('130721', '130721', '宣化县', '130700', '区', '', '0313', '075100', '中国,河北省,张家口市,宣化县', '115.154970', '40.566180', 'Xuanhua', '宣化', '0');
INSERT INTO `sys_area` VALUES ('130722', '130722', '张北县', '130700', '区', '', '0313', '076450', '中国,河北省,张家口市,张北县', '114.714320', '41.159770', 'Zhangbei', '张北', '0');
INSERT INTO `sys_area` VALUES ('130723', '130723', '康保县', '130700', '区', '', '0313', '076650', '中国,河北省,张家口市,康保县', '114.600310', '41.852250', 'Kangbao', '康保', '0');
INSERT INTO `sys_area` VALUES ('130724', '130724', '沽源县', '130700', '区', '', '0313', '076550', '中国,河北省,张家口市,沽源县', '115.688590', '41.669590', 'Guyuan', '沽源', '0');
INSERT INTO `sys_area` VALUES ('130725', '130725', '尚义县', '130700', '区', '', '0313', '076750', '中国,河北省,张家口市,尚义县', '113.971340', '41.077820', 'Shangyi', '尚义', '0');
INSERT INTO `sys_area` VALUES ('130726', '130726', '蔚县', '130700', '区', '', '0313', '075700', '中国,河北省,张家口市,蔚县', '114.588920', '39.840670', 'Yuxian', '蔚县', '0');
INSERT INTO `sys_area` VALUES ('130727', '130727', '阳原县', '130700', '区', '', '0313', '075800', '中国,河北省,张家口市,阳原县', '114.150510', '40.103610', 'Yangyuan', '阳原', '0');
INSERT INTO `sys_area` VALUES ('130728', '130728', '怀安县', '130700', '区', '', '0313', '076150', '中国,河北省,张家口市,怀安县', '114.385590', '40.674250', 'Huai\'an', '怀安', '0');
INSERT INTO `sys_area` VALUES ('130729', '130729', '万全县', '130700', '区', '', '0313', '076250', '中国,河北省,张家口市,万全县', '114.740500', '40.766940', 'Wanquan', '万全', '0');
INSERT INTO `sys_area` VALUES ('130730', '130730', '怀来县', '130700', '区', '', '0313', '075400', '中国,河北省,张家口市,怀来县', '115.517730', '40.415360', 'Huailai', '怀来', '0');
INSERT INTO `sys_area` VALUES ('130731', '130731', '涿鹿县', '130700', '区', '', '0313', '075600', '中国,河北省,张家口市,涿鹿县', '115.224030', '40.376360', 'Zhuolu', '涿鹿', '0');
INSERT INTO `sys_area` VALUES ('130732', '130732', '赤城县', '130700', '区', '', '0313', '075500', '中国,河北省,张家口市,赤城县', '115.831870', '40.914380', 'Chicheng', '赤城', '0');
INSERT INTO `sys_area` VALUES ('130733', '130733', '崇礼县', '130700', '区', '', '0313', '076350', '中国,河北省,张家口市,崇礼县', '115.279930', '40.975190', 'Chongli', '崇礼', '0');
INSERT INTO `sys_area` VALUES ('130800', '130800', '承德市', '130000', '市', '', '0314', '067000', '中国,河北省,承德市', '117.939152', '40.976204', 'Chengde', '承德', '0');
INSERT INTO `sys_area` VALUES ('130802', '130802', '双桥区', '130800', '区', '', '0314', '067000', '中国,河北省,承德市,双桥区', '117.943200', '40.974660', 'Shuangqiao', '双桥', '0');
INSERT INTO `sys_area` VALUES ('130803', '130803', '双滦区', '130800', '区', '', '0314', '067001', '中国,河北省,承德市,双滦区', '117.744870', '40.953750', 'Shuangluan', '双滦', '0');
INSERT INTO `sys_area` VALUES ('130804', '130804', '鹰手营子矿区', '130800', '区', '', '0314', '067200', '中国,河北省,承德市,鹰手营子矿区', '117.659850', '40.547440', 'Yingshouyingzikuangqu', '鹰手营子矿区', '0');
INSERT INTO `sys_area` VALUES ('130821', '130821', '承德县', '130800', '区', '', '0314', '067400', '中国,河北省,承德市,承德县', '118.176390', '40.769850', 'Chengde', '承德', '0');
INSERT INTO `sys_area` VALUES ('130822', '130822', '兴隆县', '130800', '区', '', '0314', '067300', '中国,河北省,承德市,兴隆县', '117.500730', '40.417090', 'Xinglong', '兴隆', '0');
INSERT INTO `sys_area` VALUES ('130823', '130823', '平泉县', '130800', '区', '', '0314', '067500', '中国,河北省,承德市,平泉县', '118.701960', '41.018390', 'Pingquan', '平泉', '0');
INSERT INTO `sys_area` VALUES ('130824', '130824', '滦平县', '130800', '区', '', '0314', '068250', '中国,河北省,承德市,滦平县', '117.332760', '40.941480', 'Luanping', '滦平', '0');
INSERT INTO `sys_area` VALUES ('130825', '130825', '隆化县', '130800', '区', '', '0314', '068150', '中国,河北省,承德市,隆化县', '117.729700', '41.314120', 'Longhua', '隆化', '0');
INSERT INTO `sys_area` VALUES ('130826', '130826', '丰宁满族自治县', '130800', '区', '', '0314', '068350', '中国,河北省,承德市,丰宁满族自治县', '116.649200', '41.204810', 'Fengning', '丰宁', '0');
INSERT INTO `sys_area` VALUES ('130827', '130827', '宽城满族自治县', '130800', '区', '', '0314', '067600', '中国,河北省,承德市,宽城满族自治县', '118.491760', '40.608290', 'Kuancheng', '宽城', '0');
INSERT INTO `sys_area` VALUES ('130828', '130828', '围场满族蒙古族自治县', '130800', '区', '', '0314', '068450', '中国,河北省,承德市,围场满族蒙古族自治县', '117.760100', '41.943680', 'Weichang', '围场', '0');
INSERT INTO `sys_area` VALUES ('130900', '130900', '沧州市', '130000', '市', '', '0317', '061001', '中国,河北省,沧州市', '116.857461', '38.310582', 'Cangzhou', '沧州', '0');
INSERT INTO `sys_area` VALUES ('130902', '130902', '新华区', '130900', '区', '', '0317', '061000', '中国,河北省,沧州市,新华区', '116.866430', '38.314380', 'Xinhua', '新华', '0');
INSERT INTO `sys_area` VALUES ('130903', '130903', '运河区', '130900', '区', '', '0317', '061001', '中国,河北省,沧州市,运河区', '116.857060', '38.313520', 'Yunhe', '运河', '0');
INSERT INTO `sys_area` VALUES ('130921', '130921', '沧县', '130900', '区', '', '0317', '061000', '中国,河北省,沧州市,沧县', '116.878170', '38.293610', 'Cangxian', '沧县', '0');
INSERT INTO `sys_area` VALUES ('130922', '130922', '青县', '130900', '区', '', '0317', '062650', '中国,河北省,沧州市,青县', '116.803160', '38.583450', 'Qingxian', '青县', '0');
INSERT INTO `sys_area` VALUES ('130923', '130923', '东光县', '130900', '区', '', '0317', '061600', '中国,河北省,沧州市,东光县', '116.536680', '37.885700', 'Dongguang', '东光', '0');
INSERT INTO `sys_area` VALUES ('130924', '130924', '海兴县', '130900', '区', '', '0317', '061200', '中国,河北省,沧州市,海兴县', '117.497580', '38.139580', 'Haixing', '海兴', '0');
INSERT INTO `sys_area` VALUES ('130925', '130925', '盐山县', '130900', '区', '', '0317', '061300', '中国,河北省,沧州市,盐山县', '117.230920', '38.056470', 'Yanshan', '盐山', '0');
INSERT INTO `sys_area` VALUES ('130926', '130926', '肃宁县', '130900', '区', '', '0317', '062350', '中国,河北省,沧州市,肃宁县', '115.829710', '38.422720', 'Suning', '肃宁', '0');
INSERT INTO `sys_area` VALUES ('130927', '130927', '南皮县', '130900', '区', '', '0317', '061500', '中国,河北省,沧州市,南皮县', '116.702240', '38.041090', 'Nanpi', '南皮', '0');
INSERT INTO `sys_area` VALUES ('130928', '130928', '吴桥县', '130900', '区', '', '0317', '061800', '中国,河北省,沧州市,吴桥县', '116.384700', '37.625460', 'Wuqiao', '吴桥', '0');
INSERT INTO `sys_area` VALUES ('130929', '130929', '献县', '130900', '区', '', '0317', '062250', '中国,河北省,沧州市,献县', '116.126950', '38.192280', 'Xianxian', '献县', '0');
INSERT INTO `sys_area` VALUES ('130930', '130930', '孟村回族自治县', '130900', '区', '', '0317', '061400', '中国,河北省,沧州市,孟村回族自治县', '117.104120', '38.053380', 'Mengcun', '孟村', '0');
INSERT INTO `sys_area` VALUES ('130981', '130981', '泊头市', '130900', '区', '', '0317', '062150', '中国,河北省,沧州市,泊头市', '116.578240', '38.083590', 'Botou', '泊头', '0');
INSERT INTO `sys_area` VALUES ('130982', '130982', '任丘市', '130900', '区', '', '0317', '062550', '中国,河北省,沧州市,任丘市', '116.103300', '38.711240', 'Renqiu', '任丘', '0');
INSERT INTO `sys_area` VALUES ('130983', '130983', '黄骅市', '130900', '区', '', '0317', '061100', '中国,河北省,沧州市,黄骅市', '117.338830', '38.370600', 'Huanghua', '黄骅', '0');
INSERT INTO `sys_area` VALUES ('130984', '130984', '河间市', '130900', '区', '', '0317', '062450', '中国,河北省,沧州市,河间市', '116.099300', '38.445490', 'Hejian', '河间', '0');
INSERT INTO `sys_area` VALUES ('131000', '131000', '廊坊市', '130000', '市', '', '0316', '065000', '中国,河北省,廊坊市', '116.713873', '39.529244', 'Langfang', '廊坊', '0');
INSERT INTO `sys_area` VALUES ('131002', '131002', '安次区', '131000', '区', '', '0316', '065000', '中国,河北省,廊坊市,安次区', '116.703080', '39.520570', 'Anci', '安次', '0');
INSERT INTO `sys_area` VALUES ('131003', '131003', '广阳区', '131000', '区', '', '0316', '065000', '中国,河北省,廊坊市,广阳区', '116.710690', '39.522780', 'Guangyang', '广阳', '0');
INSERT INTO `sys_area` VALUES ('131022', '131022', '固安县', '131000', '区', '', '0316', '065500', '中国,河北省,廊坊市,固安县', '116.299160', '39.438330', 'Gu\'an', '固安', '0');
INSERT INTO `sys_area` VALUES ('131023', '131023', '永清县', '131000', '区', '', '0316', '065600', '中国,河北省,廊坊市,永清县', '116.500910', '39.320690', 'Yongqing', '永清', '0');
INSERT INTO `sys_area` VALUES ('131024', '131024', '香河县', '131000', '区', '', '0316', '065400', '中国,河北省,廊坊市,香河县', '117.006340', '39.761330', 'Xianghe', '香河', '0');
INSERT INTO `sys_area` VALUES ('131025', '131025', '大城县', '131000', '区', '', '0316', '065900', '中国,河北省,廊坊市,大城县', '116.653530', '38.705340', 'Daicheng', '大城', '0');
INSERT INTO `sys_area` VALUES ('131026', '131026', '文安县', '131000', '区', '', '0316', '065800', '中国,河北省,廊坊市,文安县', '116.458460', '38.873250', 'Wen\'an', '文安', '0');
INSERT INTO `sys_area` VALUES ('131028', '131028', '大厂回族自治县', '131000', '区', '', '0316', '065300', '中国,河北省,廊坊市,大厂回族自治县', '116.989160', '39.886490', 'Dachang', '大厂', '0');
INSERT INTO `sys_area` VALUES ('131081', '131081', '霸州市', '131000', '区', '', '0316', '065700', '中国,河北省,廊坊市,霸州市', '116.391540', '39.125690', 'Bazhou', '霸州', '0');
INSERT INTO `sys_area` VALUES ('131082', '131082', '三河市', '131000', '区', '', '0316', '065200', '中国,河北省,廊坊市,三河市', '117.072290', '39.983580', 'Sanhe', '三河', '0');
INSERT INTO `sys_area` VALUES ('131100', '131100', '衡水市', '130000', '市', '', '0318', '053000', '中国,河北省,衡水市', '115.665993', '37.735097', 'Hengshui', '衡水', '0');
INSERT INTO `sys_area` VALUES ('131102', '131102', '桃城区', '131100', '区', '', '0318', '053000', '中国,河北省,衡水市,桃城区', '115.675290', '37.734990', 'Taocheng', '桃城', '0');
INSERT INTO `sys_area` VALUES ('131121', '131121', '枣强县', '131100', '区', '', '0318', '053100', '中国,河北省,衡水市,枣强县', '115.725760', '37.510270', 'Zaoqiang', '枣强', '0');
INSERT INTO `sys_area` VALUES ('131122', '131122', '武邑县', '131100', '区', '', '0318', '053400', '中国,河北省,衡水市,武邑县', '115.887480', '37.801810', 'Wuyi', '武邑', '0');
INSERT INTO `sys_area` VALUES ('131123', '131123', '武强县', '131100', '区', '', '0318', '053300', '中国,河北省,衡水市,武强县', '115.982260', '38.041380', 'Wuqiang', '武强', '0');
INSERT INTO `sys_area` VALUES ('131124', '131124', '饶阳县', '131100', '区', '', '0318', '053900', '中国,河北省,衡水市,饶阳县', '115.725580', '38.235290', 'Raoyang', '饶阳', '0');
INSERT INTO `sys_area` VALUES ('131125', '131125', '安平县', '131100', '区', '', '0318', '053600', '中国,河北省,衡水市,安平县', '115.518760', '38.233880', 'Anping', '安平', '0');
INSERT INTO `sys_area` VALUES ('131126', '131126', '故城县', '131100', '区', '', '0318', '053800', '中国,河北省,衡水市,故城县', '115.970760', '37.347730', 'Gucheng', '故城', '0');
INSERT INTO `sys_area` VALUES ('131127', '131127', '景县', '131100', '区', '', '0318', '053500', '中国,河北省,衡水市,景县', '116.269040', '37.692600', 'Jingxian', '景县', '0');
INSERT INTO `sys_area` VALUES ('131128', '131128', '阜城县', '131100', '区', '', '0318', '053700', '中国,河北省,衡水市,阜城县', '116.144310', '37.868810', 'Fucheng', '阜城', '0');
INSERT INTO `sys_area` VALUES ('131181', '131181', '冀州市', '131100', '区', '', '0318', '053200', '中国,河北省,衡水市,冀州市', '115.579340', '37.550820', 'Jizhou', '冀州', '0');
INSERT INTO `sys_area` VALUES ('131182', '131182', '深州市', '131100', '区', '', '0318', '053800', '中国,河北省,衡水市,深州市', '115.559930', '38.001090', 'Shenzhou', '深州', '0');
INSERT INTO `sys_area` VALUES ('140000', '140000', '山西省', '100000', '省', '', '', '', '中国,山西省', '112.549248', '37.857014', 'Shanxi', '山西', '0');
INSERT INTO `sys_area` VALUES ('140100', '140100', '太原市', '140000', '市', '', '0351', '030082', '中国,山西省,太原市', '112.549248', '37.857014', 'Taiyuan', '太原', '0');
INSERT INTO `sys_area` VALUES ('140105', '140105', '小店区', '140100', '区', '', '0351', '030032', '中国,山西省,太原市,小店区', '112.568780', '37.735650', 'Xiaodian', '小店', '0');
INSERT INTO `sys_area` VALUES ('140106', '140106', '迎泽区', '140100', '区', '', '0351', '030002', '中国,山西省,太原市,迎泽区', '112.563380', '37.863260', 'Yingze', '迎泽', '0');
INSERT INTO `sys_area` VALUES ('140107', '140107', '杏花岭区', '140100', '区', '', '0351', '030009', '中国,山西省,太原市,杏花岭区', '112.562370', '37.884290', 'Xinghualing', '杏花岭', '0');
INSERT INTO `sys_area` VALUES ('140108', '140108', '尖草坪区', '140100', '区', '', '0351', '030023', '中国,山西省,太原市,尖草坪区', '112.487090', '37.941930', 'Jiancaoping', '尖草坪', '0');
INSERT INTO `sys_area` VALUES ('140109', '140109', '万柏林区', '140100', '区', '', '0351', '030024', '中国,山西省,太原市,万柏林区', '112.515530', '37.859230', 'Wanbailin', '万柏林', '0');
INSERT INTO `sys_area` VALUES ('140110', '140110', '晋源区', '140100', '区', '', '0351', '030025', '中国,山西省,太原市,晋源区', '112.479850', '37.724790', 'Jinyuan', '晋源', '0');
INSERT INTO `sys_area` VALUES ('140121', '140121', '清徐县', '140100', '区', '', '0351', '030400', '中国,山西省,太原市,清徐县', '112.358880', '37.607580', 'Qingxu', '清徐', '0');
INSERT INTO `sys_area` VALUES ('140122', '140122', '阳曲县', '140100', '区', '', '0351', '030100', '中国,山西省,太原市,阳曲县', '112.678610', '38.059890', 'Yangqu', '阳曲', '0');
INSERT INTO `sys_area` VALUES ('140123', '140123', '娄烦县', '140100', '区', '', '0351', '030300', '中国,山西省,太原市,娄烦县', '111.794730', '38.066890', 'Loufan', '娄烦', '0');
INSERT INTO `sys_area` VALUES ('140181', '140181', '古交市', '140100', '区', '', '0351', '030200', '中国,山西省,太原市,古交市', '112.169180', '37.909830', 'Gujiao', '古交', '0');
INSERT INTO `sys_area` VALUES ('140200', '140200', '大同市', '140000', '市', '', '0352', '037008', '中国,山西省,大同市', '113.295259', '40.090310', 'Datong', '大同', '0');
INSERT INTO `sys_area` VALUES ('140202', '140202', '城区', '140200', '区', '', '0352', '037008', '中国,山西省,大同市,城区', '113.298000', '40.075660', 'Chengqu', '城区', '0');
INSERT INTO `sys_area` VALUES ('140203', '140203', '矿区', '140200', '区', '', '0352', '037003', '中国,山西省,大同市,矿区', '113.177200', '40.036850', 'Kuangqu', '矿区', '0');
INSERT INTO `sys_area` VALUES ('140211', '140211', '南郊区', '140200', '区', '', '0352', '037001', '中国,山西省,大同市,南郊区', '113.149470', '40.005390', 'Nanjiao', '南郊', '0');
INSERT INTO `sys_area` VALUES ('140212', '140212', '新荣区', '140200', '区', '', '0352', '037002', '中国,山西省,大同市,新荣区', '113.135040', '40.256180', 'Xinrong', '新荣', '0');
INSERT INTO `sys_area` VALUES ('140221', '140221', '阳高县', '140200', '区', '', '0352', '038100', '中国,山西省,大同市,阳高县', '113.750120', '40.362560', 'Yanggao', '阳高', '0');
INSERT INTO `sys_area` VALUES ('140222', '140222', '天镇县', '140200', '区', '', '0352', '038200', '中国,山西省,大同市,天镇县', '114.093100', '40.422990', 'Tianzhen', '天镇', '0');
INSERT INTO `sys_area` VALUES ('140223', '140223', '广灵县', '140200', '区', '', '0352', '037500', '中国,山西省,大同市,广灵县', '114.282040', '39.760820', 'Guangling', '广灵', '0');
INSERT INTO `sys_area` VALUES ('140224', '140224', '灵丘县', '140200', '区', '', '0352', '034400', '中国,山西省,大同市,灵丘县', '114.236720', '39.440430', 'Lingqiu', '灵丘', '0');
INSERT INTO `sys_area` VALUES ('140225', '140225', '浑源县', '140200', '区', '', '0352', '037400', '中国,山西省,大同市,浑源县', '113.695520', '39.699620', 'Hunyuan', '浑源', '0');
INSERT INTO `sys_area` VALUES ('140226', '140226', '左云县', '140200', '区', '', '0352', '037100', '中国,山西省,大同市,左云县', '112.702660', '40.013360', 'Zuoyun', '左云', '0');
INSERT INTO `sys_area` VALUES ('140227', '140227', '大同县', '140200', '区', '', '0352', '037300', '中国,山西省,大同市,大同县', '113.612120', '40.040120', 'Datong', '大同', '0');
INSERT INTO `sys_area` VALUES ('140300', '140300', '阳泉市', '140000', '市', '', '0353', '045000', '中国,山西省,阳泉市', '113.583285', '37.861188', 'Yangquan', '阳泉', '0');
INSERT INTO `sys_area` VALUES ('140302', '140302', '城区', '140300', '区', '', '0353', '045000', '中国,山西省,阳泉市,城区', '113.600690', '37.847400', 'Chengqu', '城区', '0');
INSERT INTO `sys_area` VALUES ('140303', '140303', '矿区', '140300', '区', '', '0353', '045000', '中国,山西省,阳泉市,矿区', '113.556770', '37.868950', 'Kuangqu', '矿区', '0');
INSERT INTO `sys_area` VALUES ('140311', '140311', '郊区', '140300', '区', '', '0353', '045011', '中国,山西省,阳泉市,郊区', '113.585390', '37.941390', 'Jiaoqu', '郊区', '0');
INSERT INTO `sys_area` VALUES ('140321', '140321', '平定县', '140300', '区', '', '0353', '045200', '中国,山西省,阳泉市,平定县', '113.657890', '37.786010', 'Pingding', '平定', '0');
INSERT INTO `sys_area` VALUES ('140322', '140322', '盂县', '140300', '区', '', '0353', '045100', '中国,山西省,阳泉市,盂县', '113.412350', '38.085790', 'Yuxian', '盂县', '0');
INSERT INTO `sys_area` VALUES ('140400', '140400', '长治市', '140000', '市', '', '0355', '046000', '中国,山西省,长治市', '113.113556', '36.191112', 'Changzhi', '长治', '0');
INSERT INTO `sys_area` VALUES ('140402', '140402', '城区', '140400', '区', '', '0355', '046011', '中国,山西省,长治市,城区', '113.123080', '36.203510', 'Chengqu', '城区', '0');
INSERT INTO `sys_area` VALUES ('140411', '140411', '郊区', '140400', '区', '', '0355', '046011', '中国,山西省,长治市,郊区', '113.126530', '36.199180', 'Jiaoqu', '郊区', '0');
INSERT INTO `sys_area` VALUES ('140421', '140421', '长治县', '140400', '区', '', '0355', '047100', '中国,山西省,长治市,长治县', '113.047910', '36.047220', 'Changzhi', '长治', '0');
INSERT INTO `sys_area` VALUES ('140423', '140423', '襄垣县', '140400', '区', '', '0355', '046200', '中国,山西省,长治市,襄垣县', '113.051570', '36.535270', 'Xiangyuan', '襄垣', '0');
INSERT INTO `sys_area` VALUES ('140424', '140424', '屯留县', '140400', '区', '', '0355', '046100', '中国,山西省,长治市,屯留县', '112.891960', '36.315790', 'Tunliu', '屯留', '0');
INSERT INTO `sys_area` VALUES ('140425', '140425', '平顺县', '140400', '区', '', '0355', '047400', '中国,山西省,长治市,平顺县', '113.436030', '36.200050', 'Pingshun', '平顺', '0');
INSERT INTO `sys_area` VALUES ('140426', '140426', '黎城县', '140400', '区', '', '0355', '047600', '中国,山西省,长治市,黎城县', '113.387660', '36.503010', 'Licheng', '黎城', '0');
INSERT INTO `sys_area` VALUES ('140427', '140427', '壶关县', '140400', '区', '', '0355', '047300', '中国,山西省,长治市,壶关县', '113.207000', '36.113010', 'Huguan', '壶关', '0');
INSERT INTO `sys_area` VALUES ('140428', '140428', '长子县', '140400', '区', '', '0355', '046600', '中国,山西省,长治市,长子县', '112.877310', '36.121250', 'Zhangzi', '长子', '0');
INSERT INTO `sys_area` VALUES ('140429', '140429', '武乡县', '140400', '区', '', '0355', '046300', '中国,山西省,长治市,武乡县', '112.863430', '36.836870', 'Wuxiang', '武乡', '0');
INSERT INTO `sys_area` VALUES ('140430', '140430', '沁县', '140400', '区', '', '0355', '046400', '中国,山西省,长治市,沁县', '112.698630', '36.756280', 'Qinxian', '沁县', '0');
INSERT INTO `sys_area` VALUES ('140431', '140431', '沁源县', '140400', '区', '', '0355', '046500', '中国,山西省,长治市,沁源县', '112.337580', '36.500080', 'Qinyuan', '沁源', '0');
INSERT INTO `sys_area` VALUES ('140481', '140481', '潞城市', '140400', '区', '', '0355', '047500', '中国,山西省,长治市,潞城市', '113.228880', '36.334140', 'Lucheng', '潞城', '0');
INSERT INTO `sys_area` VALUES ('140500', '140500', '晋城市', '140000', '市', '', '0356', '048000', '中国,山西省,晋城市', '112.851274', '35.497553', 'Jincheng', '晋城', '0');
INSERT INTO `sys_area` VALUES ('140502', '140502', '城区', '140500', '区', '', '0356', '048000', '中国,山西省,晋城市,城区', '112.853190', '35.501750', 'Chengqu', '城区', '0');
INSERT INTO `sys_area` VALUES ('140521', '140521', '沁水县', '140500', '区', '', '0356', '048200', '中国,山西省,晋城市,沁水县', '112.187100', '35.691020', 'Qinshui', '沁水', '0');
INSERT INTO `sys_area` VALUES ('140522', '140522', '阳城县', '140500', '区', '', '0356', '048100', '中国,山西省,晋城市,阳城县', '112.414850', '35.486140', 'Yangcheng', '阳城', '0');
INSERT INTO `sys_area` VALUES ('140524', '140524', '陵川县', '140500', '区', '', '0356', '048300', '中国,山西省,晋城市,陵川县', '113.280600', '35.775320', 'Lingchuan', '陵川', '0');
INSERT INTO `sys_area` VALUES ('140525', '140525', '泽州县', '140500', '区', '', '0356', '048012', '中国,山西省,晋城市,泽州县', '112.839470', '35.507890', 'Zezhou', '泽州', '0');
INSERT INTO `sys_area` VALUES ('140581', '140581', '高平市', '140500', '区', '', '0356', '048400', '中国,山西省,晋城市,高平市', '112.922880', '35.797050', 'Gaoping', '高平', '0');
INSERT INTO `sys_area` VALUES ('140600', '140600', '朔州市', '140000', '市', '', '0349', '038500', '中国,山西省,朔州市', '112.433387', '39.331261', 'Shuozhou', '朔州', '0');
INSERT INTO `sys_area` VALUES ('140602', '140602', '朔城区', '140600', '区', '', '0349', '036000', '中国,山西省,朔州市,朔城区', '112.431890', '39.319820', 'Shuocheng', '朔城', '0');
INSERT INTO `sys_area` VALUES ('140603', '140603', '平鲁区', '140600', '区', '', '0349', '038600', '中国,山西省,朔州市,平鲁区', '112.288330', '39.511550', 'Pinglu', '平鲁', '0');
INSERT INTO `sys_area` VALUES ('140621', '140621', '山阴县', '140600', '区', '', '0349', '036900', '中国,山西省,朔州市,山阴县', '112.816620', '39.526970', 'Shanyin', '山阴', '0');
INSERT INTO `sys_area` VALUES ('140622', '140622', '应县', '140600', '区', '', '0349', '037600', '中国,山西省,朔州市,应县', '113.190520', '39.552790', 'Yingxian', '应县', '0');
INSERT INTO `sys_area` VALUES ('140623', '140623', '右玉县', '140600', '区', '', '0349', '037200', '中国,山西省,朔州市,右玉县', '112.469020', '39.990110', 'Youyu', '右玉', '0');
INSERT INTO `sys_area` VALUES ('140624', '140624', '怀仁县', '140600', '区', '', '0349', '038300', '中国,山西省,朔州市,怀仁县', '113.100090', '39.828060', 'Huairen', '怀仁', '0');
INSERT INTO `sys_area` VALUES ('140700', '140700', '晋中市', '140000', '市', '', '0354', '030600', '中国,山西省,晋中市', '112.736465', '37.696495', 'Jinzhong', '晋中', '0');
INSERT INTO `sys_area` VALUES ('140702', '140702', '榆次区', '140700', '区', '', '0354', '030600', '中国,山西省,晋中市,榆次区', '112.707880', '37.697800', 'Yuci', '榆次', '0');
INSERT INTO `sys_area` VALUES ('140721', '140721', '榆社县', '140700', '区', '', '0354', '031800', '中国,山西省,晋中市,榆社县', '112.975580', '37.072100', 'Yushe', '榆社', '0');
INSERT INTO `sys_area` VALUES ('140722', '140722', '左权县', '140700', '区', '', '0354', '032600', '中国,山西省,晋中市,左权县', '113.379180', '37.082350', 'Zuoquan', '左权', '0');
INSERT INTO `sys_area` VALUES ('140723', '140723', '和顺县', '140700', '区', '', '0354', '032700', '中国,山西省,晋中市,和顺县', '113.569880', '37.329630', 'Heshun', '和顺', '0');
INSERT INTO `sys_area` VALUES ('140724', '140724', '昔阳县', '140700', '区', '', '0354', '045300', '中国,山西省,晋中市,昔阳县', '113.705170', '37.618630', 'Xiyang', '昔阳', '0');
INSERT INTO `sys_area` VALUES ('140725', '140725', '寿阳县', '140700', '区', '', '0354', '045400', '中国,山西省,晋中市,寿阳县', '113.174950', '37.888990', 'Shouyang', '寿阳', '0');
INSERT INTO `sys_area` VALUES ('140726', '140726', '太谷县', '140700', '区', '', '0354', '030800', '中国,山西省,晋中市,太谷县', '112.552460', '37.421610', 'Taigu', '太谷', '0');
INSERT INTO `sys_area` VALUES ('140727', '140727', '祁县', '140700', '区', '', '0354', '030900', '中国,山西省,晋中市,祁县', '112.333580', '37.357900', 'Qixian', '祁县', '0');
INSERT INTO `sys_area` VALUES ('140728', '140728', '平遥县', '140700', '区', '', '0354', '031100', '中国,山西省,晋中市,平遥县', '112.175530', '37.189200', 'Pingyao', '平遥', '0');
INSERT INTO `sys_area` VALUES ('140729', '140729', '灵石县', '140700', '区', '', '0354', '031300', '中国,山西省,晋中市,灵石县', '111.777400', '36.848140', 'Lingshi', '灵石', '0');
INSERT INTO `sys_area` VALUES ('140781', '140781', '介休市', '140700', '区', '', '0354', '032000', '中国,山西省,晋中市,介休市', '111.918240', '37.027710', 'Jiexiu', '介休', '0');
INSERT INTO `sys_area` VALUES ('140800', '140800', '运城市', '140000', '市', '', '0359', '044000', '中国,山西省,运城市', '111.003957', '35.022778', 'Yuncheng', '运城', '0');
INSERT INTO `sys_area` VALUES ('140802', '140802', '盐湖区', '140800', '区', '', '0359', '044000', '中国,山西省,运城市,盐湖区', '110.998270', '35.015100', 'Yanhu', '盐湖', '0');
INSERT INTO `sys_area` VALUES ('140821', '140821', '临猗县', '140800', '区', '', '0359', '044100', '中国,山西省,运城市,临猗县', '110.774320', '35.144550', 'Linyi', '临猗', '0');
INSERT INTO `sys_area` VALUES ('140822', '140822', '万荣县', '140800', '区', '', '0359', '044200', '中国,山西省,运城市,万荣县', '110.836570', '35.415560', 'Wanrong', '万荣', '0');
INSERT INTO `sys_area` VALUES ('140823', '140823', '闻喜县', '140800', '区', '', '0359', '043800', '中国,山西省,运城市,闻喜县', '111.222650', '35.355530', 'Wenxi', '闻喜', '0');
INSERT INTO `sys_area` VALUES ('140824', '140824', '稷山县', '140800', '区', '', '0359', '043200', '中国,山西省,运城市,稷山县', '110.979240', '35.599930', 'Jishan', '稷山', '0');
INSERT INTO `sys_area` VALUES ('140825', '140825', '新绛县', '140800', '区', '', '0359', '043100', '中国,山西省,运城市,新绛县', '111.225090', '35.615660', 'Xinjiang', '新绛', '0');
INSERT INTO `sys_area` VALUES ('140826', '140826', '绛县', '140800', '区', '', '0359', '043600', '中国,山西省,运城市,绛县', '111.566680', '35.490960', 'Jiangxian', '绛县', '0');
INSERT INTO `sys_area` VALUES ('140827', '140827', '垣曲县', '140800', '区', '', '0359', '043700', '中国,山西省,运城市,垣曲县', '111.671660', '35.299230', 'Yuanqu', '垣曲', '0');
INSERT INTO `sys_area` VALUES ('140828', '140828', '夏县', '140800', '区', '', '0359', '044400', '中国,山西省,运城市,夏县', '111.219660', '35.141210', 'Xiaxian', '夏县', '0');
INSERT INTO `sys_area` VALUES ('140829', '140829', '平陆县', '140800', '区', '', '0359', '044300', '中国,山西省,运城市,平陆县', '111.217040', '34.837720', 'Pinglu', '平陆', '0');
INSERT INTO `sys_area` VALUES ('140830', '140830', '芮城县', '140800', '区', '', '0359', '044600', '中国,山西省,运城市,芮城县', '110.694550', '34.693840', 'Ruicheng', '芮城', '0');
INSERT INTO `sys_area` VALUES ('140881', '140881', '永济市', '140800', '区', '', '0359', '044500', '中国,山西省,运城市,永济市', '110.445370', '34.865560', 'Yongji', '永济', '0');
INSERT INTO `sys_area` VALUES ('140882', '140882', '河津市', '140800', '区', '', '0359', '043300', '中国,山西省,运城市,河津市', '110.711600', '35.594780', 'Hejin', '河津', '0');
INSERT INTO `sys_area` VALUES ('140900', '140900', '忻州市', '140000', '市', '', '0350', '034000', '中国,山西省,忻州市', '112.733538', '38.417690', 'Xinzhou', '忻州', '0');
INSERT INTO `sys_area` VALUES ('140902', '140902', '忻府区', '140900', '区', '', '0350', '034000', '中国,山西省,忻州市,忻府区', '112.746030', '38.404140', 'Xinfu', '忻府', '0');
INSERT INTO `sys_area` VALUES ('140921', '140921', '定襄县', '140900', '区', '', '0350', '035400', '中国,山西省,忻州市,定襄县', '112.957330', '38.473870', 'Dingxiang', '定襄', '0');
INSERT INTO `sys_area` VALUES ('140922', '140922', '五台县', '140900', '区', '', '0350', '035500', '中国,山西省,忻州市,五台县', '113.252560', '38.727740', 'Wutai', '五台', '0');
INSERT INTO `sys_area` VALUES ('140923', '140923', '代县', '140900', '区', '', '0350', '034200', '中国,山西省,忻州市,代县', '112.959130', '39.067170', 'Daixian', '代县', '0');
INSERT INTO `sys_area` VALUES ('140924', '140924', '繁峙县', '140900', '区', '', '0350', '034300', '中国,山西省,忻州市,繁峙县', '113.263030', '39.188860', 'Fanshi', '繁峙', '0');
INSERT INTO `sys_area` VALUES ('140925', '140925', '宁武县', '140900', '区', '', '0350', '036700', '中国,山西省,忻州市,宁武县', '112.304230', '39.002110', 'Ningwu', '宁武', '0');
INSERT INTO `sys_area` VALUES ('140926', '140926', '静乐县', '140900', '区', '', '0350', '035100', '中国,山西省,忻州市,静乐县', '111.941580', '38.360200', 'Jingle', '静乐', '0');
INSERT INTO `sys_area` VALUES ('140927', '140927', '神池县', '140900', '区', '', '0350', '036100', '中国,山西省,忻州市,神池县', '112.205410', '39.090000', 'Shenchi', '神池', '0');
INSERT INTO `sys_area` VALUES ('140928', '140928', '五寨县', '140900', '区', '', '0350', '036200', '中国,山西省,忻州市,五寨县', '111.848900', '38.907570', 'Wuzhai', '五寨', '0');
INSERT INTO `sys_area` VALUES ('140929', '140929', '岢岚县', '140900', '区', '', '0350', '036300', '中国,山西省,忻州市,岢岚县', '111.573880', '38.704520', 'Kelan', '岢岚', '0');
INSERT INTO `sys_area` VALUES ('140930', '140930', '河曲县', '140900', '区', '', '0350', '036500', '中国,山西省,忻州市,河曲县', '111.138210', '39.384390', 'Hequ', '河曲', '0');
INSERT INTO `sys_area` VALUES ('140931', '140931', '保德县', '140900', '区', '', '0350', '036600', '中国,山西省,忻州市,保德县', '111.086560', '39.022480', 'Baode', '保德', '0');
INSERT INTO `sys_area` VALUES ('140932', '140932', '偏关县', '140900', '区', '', '0350', '036400', '中国,山西省,忻州市,偏关县', '111.508630', '39.436090', 'Pianguan', '偏关', '0');
INSERT INTO `sys_area` VALUES ('140981', '140981', '原平市', '140900', '区', '', '0350', '034100', '中国,山西省,忻州市,原平市', '112.705840', '38.731810', 'Yuanping', '原平', '0');
INSERT INTO `sys_area` VALUES ('141000', '141000', '临汾市', '140000', '市', '', '0357', '041000', '中国,山西省,临汾市', '111.517973', '36.084150', 'Linfen', '临汾', '0');
INSERT INTO `sys_area` VALUES ('141002', '141002', '尧都区', '141000', '区', '', '0357', '041000', '中国,山西省,临汾市,尧都区', '111.578700', '36.082980', 'Yaodu', '尧都', '0');
INSERT INTO `sys_area` VALUES ('141021', '141021', '曲沃县', '141000', '区', '', '0357', '043400', '中国,山西省,临汾市,曲沃县', '111.475250', '35.641190', 'Quwo', '曲沃', '0');
INSERT INTO `sys_area` VALUES ('141022', '141022', '翼城县', '141000', '区', '', '0357', '043500', '中国,山西省,临汾市,翼城县', '111.718100', '35.738810', 'Yicheng', '翼城', '0');
INSERT INTO `sys_area` VALUES ('141023', '141023', '襄汾县', '141000', '区', '', '0357', '041500', '中国,山西省,临汾市,襄汾县', '111.442040', '35.877110', 'Xiangfen', '襄汾', '0');
INSERT INTO `sys_area` VALUES ('141024', '141024', '洪洞县', '141000', '区', '', '0357', '041600', '中国,山西省,临汾市,洪洞县', '111.675010', '36.254250', 'Hongtong', '洪洞', '0');
INSERT INTO `sys_area` VALUES ('141025', '141025', '古县', '141000', '区', '', '0357', '042400', '中国,山西省,临汾市,古县', '111.920410', '36.266880', 'Guxian', '古县', '0');
INSERT INTO `sys_area` VALUES ('141026', '141026', '安泽县', '141000', '区', '', '0357', '042500', '中国,山西省,临汾市,安泽县', '112.249810', '36.148030', 'Anze', '安泽', '0');
INSERT INTO `sys_area` VALUES ('141027', '141027', '浮山县', '141000', '区', '', '0357', '042600', '中国,山西省,临汾市,浮山县', '111.847440', '35.968540', 'Fushan', '浮山', '0');
INSERT INTO `sys_area` VALUES ('141028', '141028', '吉县', '141000', '区', '', '0357', '042200', '中国,山西省,临汾市,吉县', '110.681480', '36.098730', 'Jixian', '吉县', '0');
INSERT INTO `sys_area` VALUES ('141029', '141029', '乡宁县', '141000', '区', '', '0357', '042100', '中国,山西省,临汾市,乡宁县', '110.846520', '35.970720', 'Xiangning', '乡宁', '0');
INSERT INTO `sys_area` VALUES ('141030', '141030', '大宁县', '141000', '区', '', '0357', '042300', '中国,山西省,临汾市,大宁县', '110.752160', '36.466240', 'Daning', '大宁', '0');
INSERT INTO `sys_area` VALUES ('141031', '141031', '隰县', '141000', '区', '', '0357', '041300', '中国,山西省,临汾市,隰县', '110.938810', '36.692580', 'Xixian', '隰县', '0');
INSERT INTO `sys_area` VALUES ('141032', '141032', '永和县', '141000', '区', '', '0357', '041400', '中国,山西省,临汾市,永和县', '110.631680', '36.758400', 'Yonghe', '永和', '0');
INSERT INTO `sys_area` VALUES ('141033', '141033', '蒲县', '141000', '区', '', '0357', '041200', '中国,山西省,临汾市,蒲县', '111.096740', '36.412430', 'Puxian', '蒲县', '0');
INSERT INTO `sys_area` VALUES ('141034', '141034', '汾西县', '141000', '区', '', '0357', '031500', '中国,山西省,临汾市,汾西县', '111.568110', '36.650630', 'Fenxi', '汾西', '0');
INSERT INTO `sys_area` VALUES ('141081', '141081', '侯马市', '141000', '区', '', '0357', '043000', '中国,山西省,临汾市,侯马市', '111.372070', '35.619030', 'Houma', '侯马', '0');
INSERT INTO `sys_area` VALUES ('141082', '141082', '霍州市', '141000', '区', '', '0357', '031400', '中国,山西省,临汾市,霍州市', '111.755000', '36.563800', 'Huozhou', '霍州', '0');
INSERT INTO `sys_area` VALUES ('141100', '141100', '吕梁市', '140000', '市', '', '0358', '033000', '中国,山西省,吕梁市', '111.134335', '37.524366', 'Lvliang', '吕梁', '0');
INSERT INTO `sys_area` VALUES ('141102', '141102', '离石区', '141100', '区', '', '0358', '033000', '中国,山西省,吕梁市,离石区', '111.150590', '37.517700', 'Lishi', '离石', '0');
INSERT INTO `sys_area` VALUES ('141121', '141121', '文水县', '141100', '区', '', '0358', '032100', '中国,山西省,吕梁市,文水县', '112.028290', '37.438410', 'Wenshui', '文水', '0');
INSERT INTO `sys_area` VALUES ('141122', '141122', '交城县', '141100', '区', '', '0358', '030500', '中国,山西省,吕梁市,交城县', '112.158500', '37.551200', 'Jiaocheng', '交城', '0');
INSERT INTO `sys_area` VALUES ('141123', '141123', '兴县', '141100', '区', '', '0358', '033600', '中国,山西省,吕梁市,兴县', '111.126920', '38.463210', 'Xingxian', '兴县', '0');
INSERT INTO `sys_area` VALUES ('141124', '141124', '临县', '141100', '区', '', '0358', '033200', '中国,山西省,吕梁市,临县', '110.992820', '37.952710', 'Linxian', '临县', '0');
INSERT INTO `sys_area` VALUES ('141125', '141125', '柳林县', '141100', '区', '', '0358', '033300', '中国,山西省,吕梁市,柳林县', '110.889220', '37.429320', 'Liulin', '柳林', '0');
INSERT INTO `sys_area` VALUES ('141126', '141126', '石楼县', '141100', '区', '', '0358', '032500', '中国,山西省,吕梁市,石楼县', '110.835200', '36.997310', 'Shilou', '石楼', '0');
INSERT INTO `sys_area` VALUES ('141127', '141127', '岚县', '141100', '区', '', '0358', '033500', '中国,山西省,吕梁市,岚县', '111.676270', '38.278740', 'Lanxian', '岚县', '0');
INSERT INTO `sys_area` VALUES ('141128', '141128', '方山县', '141100', '区', '', '0358', '033100', '中国,山西省,吕梁市,方山县', '111.240110', '37.889790', 'Fangshan', '方山', '0');
INSERT INTO `sys_area` VALUES ('141129', '141129', '中阳县', '141100', '区', '', '0358', '033400', '中国,山西省,吕梁市,中阳县', '111.179500', '37.357150', 'Zhongyang', '中阳', '0');
INSERT INTO `sys_area` VALUES ('141130', '141130', '交口县', '141100', '区', '', '0358', '032400', '中国,山西省,吕梁市,交口县', '111.181030', '36.982130', 'Jiaokou', '交口', '0');
INSERT INTO `sys_area` VALUES ('141181', '141181', '孝义市', '141100', '区', '', '0358', '032300', '中国,山西省,吕梁市,孝义市', '111.773620', '37.144140', 'Xiaoyi', '孝义', '0');
INSERT INTO `sys_area` VALUES ('141182', '141182', '汾阳市', '141100', '区', '', '0358', '032200', '中国,山西省,吕梁市,汾阳市', '111.788200', '37.266050', 'Fenyang', '汾阳', '0');
INSERT INTO `sys_area` VALUES ('150000', '150000', '内蒙古自治区', '100000', '省', '', '', '', '中国,内蒙古自治区', '111.670801', '40.818311', 'Inner Mongolia', '内蒙古', '0');
INSERT INTO `sys_area` VALUES ('150100', '150100', '呼和浩特市', '150000', '市', '', '0471', '010000', '中国,内蒙古自治区,呼和浩特市', '111.670801', '40.818311', 'Hohhot', '呼和浩特', '0');
INSERT INTO `sys_area` VALUES ('150102', '150102', '新城区', '150100', '区', '', '0471', '010050', '中国,内蒙古自治区,呼和浩特市,新城区', '111.665540', '40.858280', 'Xincheng', '新城', '0');
INSERT INTO `sys_area` VALUES ('150103', '150103', '回民区', '150100', '区', '', '0471', '010030', '中国,内蒙古自治区,呼和浩特市,回民区', '111.624020', '40.808270', 'Huimin', '回民', '0');
INSERT INTO `sys_area` VALUES ('150104', '150104', '玉泉区', '150100', '区', '', '0471', '010020', '中国,内蒙古自治区,呼和浩特市,玉泉区', '111.674560', '40.752270', 'Yuquan', '玉泉', '0');
INSERT INTO `sys_area` VALUES ('150105', '150105', '赛罕区', '150100', '区', '', '0471', '010020', '中国,内蒙古自治区,呼和浩特市,赛罕区', '111.702240', '40.792070', 'Saihan', '赛罕', '0');
INSERT INTO `sys_area` VALUES ('150121', '150121', '土默特左旗', '150100', '区', '', '0471', '010100', '中国,内蒙古自治区,呼和浩特市,土默特左旗', '111.148980', '40.722290', 'Tumotezuoqi', '土默特左旗', '0');
INSERT INTO `sys_area` VALUES ('150122', '150122', '托克托县', '150100', '区', '', '0471', '010200', '中国,内蒙古自治区,呼和浩特市,托克托县', '111.191010', '40.274920', 'Tuoketuo', '托克托', '0');
INSERT INTO `sys_area` VALUES ('150123', '150123', '和林格尔县', '150100', '区', '', '0471', '011500', '中国,内蒙古自治区,呼和浩特市,和林格尔县', '111.822050', '40.378920', 'Helingeer', '和林格尔', '0');
INSERT INTO `sys_area` VALUES ('150124', '150124', '清水河县', '150100', '区', '', '0471', '011600', '中国,内蒙古自治区,呼和浩特市,清水河县', '111.683160', '39.909700', 'Qingshuihe', '清水河', '0');
INSERT INTO `sys_area` VALUES ('150125', '150125', '武川县', '150100', '区', '', '0471', '011700', '中国,内蒙古自治区,呼和浩特市,武川县', '111.457850', '41.092890', 'Wuchuan', '武川', '0');
INSERT INTO `sys_area` VALUES ('150200', '150200', '包头市', '150000', '市', '', '0472', '014025', '中国,内蒙古自治区,包头市', '109.840405', '40.658168', 'Baotou', '包头', '0');
INSERT INTO `sys_area` VALUES ('150202', '150202', '东河区', '150200', '区', '', '0472', '014040', '中国,内蒙古自治区,包头市,东河区', '110.046200', '40.582370', 'Donghe', '东河', '0');
INSERT INTO `sys_area` VALUES ('150203', '150203', '昆都仑区', '150200', '区', '', '0472', '014010', '中国,内蒙古自治区,包头市,昆都仑区', '109.838620', '40.641750', 'Kundulun', '昆都仑', '0');
INSERT INTO `sys_area` VALUES ('150204', '150204', '青山区', '150200', '区', '', '0472', '014030', '中国,内蒙古自治区,包头市,青山区', '109.901310', '40.643290', 'Qingshan', '青山', '0');
INSERT INTO `sys_area` VALUES ('150205', '150205', '石拐区', '150200', '区', '', '0472', '014070', '中国,内蒙古自治区,包头市,石拐区', '110.273220', '40.672970', 'Shiguai', '石拐', '0');
INSERT INTO `sys_area` VALUES ('150206', '150206', '白云鄂博矿区', '150200', '区', '', '0472', '014080', '中国,内蒙古自治区,包头市,白云鄂博矿区', '109.973670', '41.769680', 'Baiyunebokuangqu', '白云鄂博矿区', '0');
INSERT INTO `sys_area` VALUES ('150207', '150207', '九原区', '150200', '区', '', '0472', '014060', '中国,内蒙古自治区,包头市,九原区', '109.964960', '40.605540', 'Jiuyuan', '九原', '0');
INSERT INTO `sys_area` VALUES ('150221', '150221', '土默特右旗', '150200', '区', '', '0472', '014100', '中国,内蒙古自治区,包头市,土默特右旗', '110.524170', '40.568800', 'Tumoteyouqi', '土默特右旗', '0');
INSERT INTO `sys_area` VALUES ('150222', '150222', '固阳县', '150200', '区', '', '0472', '014200', '中国,内蒙古自治区,包头市,固阳县', '110.063720', '41.018510', 'Guyang', '固阳', '0');
INSERT INTO `sys_area` VALUES ('150223', '150223', '达尔罕茂明安联合旗', '150200', '区', '', '0472', '014500', '中国,内蒙古自治区,包头市,达尔罕茂明安联合旗', '110.432580', '41.698750', 'Damaoqi', '达茂旗', '0');
INSERT INTO `sys_area` VALUES ('150300', '150300', '乌海市', '150000', '市', '', '0473', '016000', '中国,内蒙古自治区,乌海市', '106.825563', '39.673734', 'Wuhai', '乌海', '0');
INSERT INTO `sys_area` VALUES ('150302', '150302', '海勃湾区', '150300', '区', '', '0473', '016000', '中国,内蒙古自治区,乌海市,海勃湾区', '106.822200', '39.669550', 'Haibowan', '海勃湾', '0');
INSERT INTO `sys_area` VALUES ('150303', '150303', '海南区', '150300', '区', '', '0473', '016030', '中国,内蒙古自治区,乌海市,海南区', '106.886560', '39.441280', 'Hainan', '海南', '0');
INSERT INTO `sys_area` VALUES ('150304', '150304', '乌达区', '150300', '区', '', '0473', '016040', '中国,内蒙古自治区,乌海市,乌达区', '106.727230', '39.505000', 'Wuda', '乌达', '0');
INSERT INTO `sys_area` VALUES ('150400', '150400', '赤峰市', '150000', '市', '', '0476', '024000', '中国,内蒙古自治区,赤峰市', '118.956806', '42.275317', 'Chifeng', '赤峰', '0');
INSERT INTO `sys_area` VALUES ('150402', '150402', '红山区', '150400', '区', '', '0476', '024020', '中国,内蒙古自治区,赤峰市,红山区', '118.957550', '42.243120', 'Hongshan', '红山', '0');
INSERT INTO `sys_area` VALUES ('150403', '150403', '元宝山区', '150400', '区', '', '0476', '024076', '中国,内蒙古自治区,赤峰市,元宝山区', '119.289210', '42.040050', 'Yuanbaoshan', '元宝山', '0');
INSERT INTO `sys_area` VALUES ('150404', '150404', '松山区', '150400', '区', '', '0476', '024005', '中国,内蒙古自治区,赤峰市,松山区', '118.932800', '42.286130', 'Songshan', '松山', '0');
INSERT INTO `sys_area` VALUES ('150421', '150421', '阿鲁科尔沁旗', '150400', '区', '', '0476', '025550', '中国,内蒙古自治区,赤峰市,阿鲁科尔沁旗', '120.065270', '43.879880', 'Alukeerqinqi', '阿鲁科尔沁旗', '0');
INSERT INTO `sys_area` VALUES ('150422', '150422', '巴林左旗', '150400', '区', '', '0476', '025450', '中国,内蒙古自治区,赤峰市,巴林左旗', '119.380120', '43.970310', 'Balinzuoqi', '巴林左旗', '0');
INSERT INTO `sys_area` VALUES ('150423', '150423', '巴林右旗', '150400', '区', '', '0476', '025150', '中国,内蒙古自治区,赤峰市,巴林右旗', '118.664610', '43.533870', 'Balinyouqi', '巴林右旗', '0');
INSERT INTO `sys_area` VALUES ('150424', '150424', '林西县', '150400', '区', '', '0476', '025250', '中国,内蒙古自治区,赤峰市,林西县', '118.047330', '43.611650', 'Linxi', '林西', '0');
INSERT INTO `sys_area` VALUES ('150425', '150425', '克什克腾旗', '150400', '区', '', '0476', '025350', '中国,内蒙古自治区,赤峰市,克什克腾旗', '117.545620', '43.265010', 'Keshiketengqi', '克什克腾旗', '0');
INSERT INTO `sys_area` VALUES ('150426', '150426', '翁牛特旗', '150400', '区', '', '0476', '024500', '中国,内蒙古自治区,赤峰市,翁牛特旗', '119.030420', '42.931470', 'Wengniuteqi', '翁牛特旗', '0');
INSERT INTO `sys_area` VALUES ('150428', '150428', '喀喇沁旗', '150400', '区', '', '0476', '024400', '中国,内蒙古自治区,赤峰市,喀喇沁旗', '118.701440', '41.929170', 'Kalaqinqi', '喀喇沁旗', '0');
INSERT INTO `sys_area` VALUES ('150429', '150429', '宁城县', '150400', '区', '', '0476', '024200', '中国,内蒙古自治区,赤峰市,宁城县', '119.343750', '41.596610', 'Ningcheng', '宁城', '0');
INSERT INTO `sys_area` VALUES ('150430', '150430', '敖汉旗', '150400', '区', '', '0476', '024300', '中国,内蒙古自治区,赤峰市,敖汉旗', '119.921630', '42.290710', 'Aohanqi', '敖汉旗', '0');
INSERT INTO `sys_area` VALUES ('150500', '150500', '通辽市', '150000', '市', '', '0475', '028000', '中国,内蒙古自治区,通辽市', '122.263119', '43.617429', 'Tongliao', '通辽', '0');
INSERT INTO `sys_area` VALUES ('150502', '150502', '科尔沁区', '150500', '区', '', '0475', '028000', '中国,内蒙古自治区,通辽市,科尔沁区', '122.255730', '43.622570', 'Keerqin', '科尔沁', '0');
INSERT INTO `sys_area` VALUES ('150521', '150521', '科尔沁左翼中旗', '150500', '区', '', '0475', '029300', '中国,内蒙古自治区,通辽市,科尔沁左翼中旗', '123.319120', '44.130140', 'Keerqinzuoyizhongqi', '科尔沁左翼中旗', '0');
INSERT INTO `sys_area` VALUES ('150522', '150522', '科尔沁左翼后旗', '150500', '区', '', '0475', '028100', '中国,内蒙古自治区,通辽市,科尔沁左翼后旗', '122.357450', '42.948970', 'Keerqinzuoyihouqi', '科尔沁左翼后旗', '0');
INSERT INTO `sys_area` VALUES ('150523', '150523', '开鲁县', '150500', '区', '', '0475', '028400', '中国,内蒙古自治区,通辽市,开鲁县', '121.318840', '43.600030', 'Kailu', '开鲁', '0');
INSERT INTO `sys_area` VALUES ('150524', '150524', '库伦旗', '150500', '区', '', '0475', '028200', '中国,内蒙古自治区,通辽市,库伦旗', '121.776000', '42.729980', 'Kulunqi', '库伦旗', '0');
INSERT INTO `sys_area` VALUES ('150525', '150525', '奈曼旗', '150500', '区', '', '0475', '028300', '中国,内蒙古自治区,通辽市,奈曼旗', '120.663480', '42.845270', 'Naimanqi', '奈曼旗', '0');
INSERT INTO `sys_area` VALUES ('150526', '150526', '扎鲁特旗', '150500', '区', '', '0475', '029100', '中国,内蒙古自治区,通辽市,扎鲁特旗', '120.915070', '44.555920', 'Zhaluteqi', '扎鲁特旗', '0');
INSERT INTO `sys_area` VALUES ('150581', '150581', '霍林郭勒市', '150500', '区', '', '0475', '029200', '中国,内蒙古自治区,通辽市,霍林郭勒市', '119.654290', '45.534540', 'Huolinguole', '霍林郭勒', '0');
INSERT INTO `sys_area` VALUES ('150600', '150600', '鄂尔多斯市', '150000', '市', '', '0477', '017004', '中国,内蒙古自治区,鄂尔多斯市', '109.990290', '39.817179', 'Ordos', '鄂尔多斯', '0');
INSERT INTO `sys_area` VALUES ('150602', '150602', '东胜区', '150600', '区', '', '0477', '017000', '中国,内蒙古自治区,鄂尔多斯市,东胜区', '109.962890', '39.822360', 'Dongsheng', '东胜', '0');
INSERT INTO `sys_area` VALUES ('150621', '150621', '达拉特旗', '150600', '区', '', '0477', '014300', '中国,内蒙古自治区,鄂尔多斯市,达拉特旗', '110.033170', '40.400100', 'Dalateqi', '达拉特旗', '0');
INSERT INTO `sys_area` VALUES ('150622', '150622', '准格尔旗', '150600', '区', '', '0477', '017100', '中国,内蒙古自治区,鄂尔多斯市,准格尔旗', '111.236450', '39.867830', 'Zhungeerqi', '准格尔旗', '0');
INSERT INTO `sys_area` VALUES ('150623', '150623', '鄂托克前旗', '150600', '区', '', '0477', '016200', '中国,内蒙古自治区,鄂尔多斯市,鄂托克前旗', '107.484030', '38.183960', 'Etuokeqianqi', '鄂托克前旗', '0');
INSERT INTO `sys_area` VALUES ('150624', '150624', '鄂托克旗', '150600', '区', '', '0477', '016100', '中国,内蒙古自治区,鄂尔多斯市,鄂托克旗', '107.982260', '39.094560', 'Etuokeqi', '鄂托克旗', '0');
INSERT INTO `sys_area` VALUES ('150625', '150625', '杭锦旗', '150600', '区', '', '0477', '017400', '中国,内蒙古自治区,鄂尔多斯市,杭锦旗', '108.729340', '39.840230', 'Hangjinqi', '杭锦旗', '0');
INSERT INTO `sys_area` VALUES ('150626', '150626', '乌审旗', '150600', '区', '', '0477', '017300', '中国,内蒙古自治区,鄂尔多斯市,乌审旗', '108.846100', '38.590920', 'Wushenqi', '乌审旗', '0');
INSERT INTO `sys_area` VALUES ('150627', '150627', '伊金霍洛旗', '150600', '区', '', '0477', '017200', '中国,内蒙古自治区,鄂尔多斯市,伊金霍洛旗', '109.749080', '39.573930', 'Yijinhuoluoqi', '伊金霍洛旗', '0');
INSERT INTO `sys_area` VALUES ('150700', '150700', '呼伦贝尔市', '150000', '市', '', '0470', '021008', '中国,内蒙古自治区,呼伦贝尔市', '119.758168', '49.215333', 'Hulunber', '呼伦贝尔', '0');
INSERT INTO `sys_area` VALUES ('150702', '150702', '海拉尔区', '150700', '区', '', '0470', '021000', '中国,内蒙古自治区,呼伦贝尔市,海拉尔区', '119.736400', '49.212200', 'Hailaer', '海拉尔', '0');
INSERT INTO `sys_area` VALUES ('150703', '150703', '扎赉诺尔区', '150700', '区', '', '0470', '021410', '中国,内蒙古自治区,呼伦贝尔市,扎赉诺尔区', '117.792702', '49.486943', 'Zhalainuoer', '扎赉诺尔', '0');
INSERT INTO `sys_area` VALUES ('150721', '150721', '阿荣旗', '150700', '区', '', '0470', '162750', '中国,内蒙古自治区,呼伦贝尔市,阿荣旗', '123.459410', '48.125810', 'Arongqi', '阿荣旗', '0');
INSERT INTO `sys_area` VALUES ('150722', '150722', '莫力达瓦达斡尔族自治旗', '150700', '区', '', '0470', '162850', '中国,内蒙古自治区,呼伦贝尔市,莫力达瓦达斡尔族自治旗', '124.514980', '48.480550', 'Moqi', '莫旗', '0');
INSERT INTO `sys_area` VALUES ('150723', '150723', '鄂伦春自治旗', '150700', '区', '', '0470', '165450', '中国,内蒙古自治区,呼伦贝尔市,鄂伦春自治旗', '123.726040', '50.597770', 'Elunchun', '鄂伦春', '0');
INSERT INTO `sys_area` VALUES ('150724', '150724', '鄂温克族自治旗', '150700', '区', '', '0470', '021100', '中国,内蒙古自治区,呼伦贝尔市,鄂温克族自治旗', '119.756500', '49.142840', 'Ewen', '鄂温', '0');
INSERT INTO `sys_area` VALUES ('150725', '150725', '陈巴尔虎旗', '150700', '区', '', '0470', '021500', '中国,内蒙古自治区,呼伦贝尔市,陈巴尔虎旗', '119.424340', '49.326840', 'Chenbaerhuqi', '陈巴尔虎旗', '0');
INSERT INTO `sys_area` VALUES ('150726', '150726', '新巴尔虎左旗', '150700', '区', '', '0470', '021200', '中国,内蒙古自治区,呼伦贝尔市,新巴尔虎左旗', '118.269890', '48.218420', 'Xinbaerhuzuoqi', '新巴尔虎左旗', '0');
INSERT INTO `sys_area` VALUES ('150727', '150727', '新巴尔虎右旗', '150700', '区', '', '0470', '021300', '中国,内蒙古自治区,呼伦贝尔市,新巴尔虎右旗', '116.823660', '48.664730', 'Xinbaerhuyouqi', '新巴尔虎右旗', '0');
INSERT INTO `sys_area` VALUES ('150781', '150781', '满洲里市', '150700', '区', '', '0470', '021400', '中国,内蒙古自治区,呼伦贝尔市,满洲里市', '117.479460', '49.582720', 'Manzhouli', '满洲里', '0');
INSERT INTO `sys_area` VALUES ('150782', '150782', '牙克石市', '150700', '区', '', '0470', '022150', '中国,内蒙古自治区,呼伦贝尔市,牙克石市', '120.711700', '49.285600', 'Yakeshi', '牙克石', '0');
INSERT INTO `sys_area` VALUES ('150783', '150783', '扎兰屯市', '150700', '区', '', '0470', '162650', '中国,内蒙古自治区,呼伦贝尔市,扎兰屯市', '122.737570', '48.013630', 'Zhalantun', '扎兰屯', '0');
INSERT INTO `sys_area` VALUES ('150784', '150784', '额尔古纳市', '150700', '区', '', '0470', '022250', '中国,内蒙古自治区,呼伦贝尔市,额尔古纳市', '120.190940', '50.242490', 'Eerguna', '额尔古纳', '0');
INSERT INTO `sys_area` VALUES ('150785', '150785', '根河市', '150700', '区', '', '0470', '022350', '中国,内蒙古自治区,呼伦贝尔市,根河市', '121.521970', '50.779960', 'Genhe', '根河', '0');
INSERT INTO `sys_area` VALUES ('150800', '150800', '巴彦淖尔市', '150000', '市', '', '0478', '015001', '中国,内蒙古自治区,巴彦淖尔市', '107.416959', '40.757402', 'Bayan Nur', '巴彦淖尔', '0');
INSERT INTO `sys_area` VALUES ('150802', '150802', '临河区', '150800', '区', '', '0478', '015001', '中国,内蒙古自治区,巴彦淖尔市,临河区', '107.426680', '40.758270', 'Linhe', '临河', '0');
INSERT INTO `sys_area` VALUES ('150821', '150821', '五原县', '150800', '区', '', '0478', '015100', '中国,内蒙古自治区,巴彦淖尔市,五原县', '108.269160', '41.096310', 'Wuyuan', '五原', '0');
INSERT INTO `sys_area` VALUES ('150822', '150822', '磴口县', '150800', '区', '', '0478', '015200', '中国,内蒙古自治区,巴彦淖尔市,磴口县', '107.009360', '40.330620', 'Dengkou', '磴口', '0');
INSERT INTO `sys_area` VALUES ('150823', '150823', '乌拉特前旗', '150800', '区', '', '0478', '014400', '中国,内蒙古自治区,巴彦淖尔市,乌拉特前旗', '108.652190', '40.736490', 'Wulateqianqi', '乌拉特前旗', '0');
INSERT INTO `sys_area` VALUES ('150824', '150824', '乌拉特中旗', '150800', '区', '', '0478', '015300', '中国,内蒙古自治区,巴彦淖尔市,乌拉特中旗', '108.525870', '41.567890', 'Wulatezhongqi', '乌拉特中旗', '0');
INSERT INTO `sys_area` VALUES ('150825', '150825', '乌拉特后旗', '150800', '区', '', '0478', '015500', '中国,内蒙古自治区,巴彦淖尔市,乌拉特后旗', '106.989710', '41.431510', 'Wulatehouqi', '乌拉特后旗', '0');
INSERT INTO `sys_area` VALUES ('150826', '150826', '杭锦后旗', '150800', '区', '', '0478', '015400', '中国,内蒙古自治区,巴彦淖尔市,杭锦后旗', '107.151330', '40.886270', 'Hangjinhouqi', '杭锦后旗', '0');
INSERT INTO `sys_area` VALUES ('150900', '150900', '乌兰察布市', '150000', '市', '', '0474', '012000', '中国,内蒙古自治区,乌兰察布市', '113.114543', '41.034126', 'Ulanqab', '乌兰察布', '0');
INSERT INTO `sys_area` VALUES ('150902', '150902', '集宁区', '150900', '区', '', '0474', '012000', '中国,内蒙古自治区,乌兰察布市,集宁区', '113.114520', '41.035300', 'Jining', '集宁', '0');
INSERT INTO `sys_area` VALUES ('150921', '150921', '卓资县', '150900', '区', '', '0474', '012300', '中国,内蒙古自治区,乌兰察布市,卓资县', '112.577570', '40.894140', 'Zhuozi', '卓资', '0');
INSERT INTO `sys_area` VALUES ('150922', '150922', '化德县', '150900', '区', '', '0474', '013350', '中国,内蒙古自治区,乌兰察布市,化德县', '114.010710', '41.904330', 'Huade', '化德', '0');
INSERT INTO `sys_area` VALUES ('150923', '150923', '商都县', '150900', '区', '', '0474', '013450', '中国,内蒙古自治区,乌兰察布市,商都县', '113.577720', '41.562130', 'Shangdu', '商都', '0');
INSERT INTO `sys_area` VALUES ('150924', '150924', '兴和县', '150900', '区', '', '0474', '013650', '中国,内蒙古自治区,乌兰察布市,兴和县', '113.833950', '40.871860', 'Xinghe', '兴和', '0');
INSERT INTO `sys_area` VALUES ('150925', '150925', '凉城县', '150900', '区', '', '0474', '013750', '中国,内蒙古自治区,乌兰察布市,凉城县', '112.495690', '40.533460', 'Liangcheng', '凉城', '0');
INSERT INTO `sys_area` VALUES ('150926', '150926', '察哈尔右翼前旗', '150900', '区', '', '0474', '012200', '中国,内蒙古自治区,乌兰察布市,察哈尔右翼前旗', '113.221310', '40.778800', 'Chayouqianqi', '察右前旗', '0');
INSERT INTO `sys_area` VALUES ('150927', '150927', '察哈尔右翼中旗', '150900', '区', '', '0474', '013550', '中国,内蒙古自治区,乌兰察布市,察哈尔右翼中旗', '112.635370', '41.277420', 'Chayouzhongqi', '察右中旗', '0');
INSERT INTO `sys_area` VALUES ('150928', '150928', '察哈尔右翼后旗', '150900', '区', '', '0474', '012400', '中国,内蒙古自治区,乌兰察布市,察哈尔右翼后旗', '113.192160', '41.435540', 'Chayouhouqi', '察右后旗', '0');
INSERT INTO `sys_area` VALUES ('150929', '150929', '四子王旗', '150900', '区', '', '0474', '011800', '中国,内蒙古自治区,乌兰察布市,四子王旗', '111.706540', '41.533120', 'Siziwangqi', '四子王旗', '0');
INSERT INTO `sys_area` VALUES ('150981', '150981', '丰镇市', '150900', '区', '', '0474', '012100', '中国,内蒙古自治区,乌兰察布市,丰镇市', '113.109830', '40.436900', 'Fengzhen', '丰镇', '0');
INSERT INTO `sys_area` VALUES ('152200', '152200', '兴安盟', '150000', '市', '', '0482', '137401', '中国,内蒙古自治区,兴安盟', '122.070317', '46.076268', 'Hinggan', '兴安盟', '0');
INSERT INTO `sys_area` VALUES ('152201', '152201', '乌兰浩特市', '152200', '区', '', '0482', '137401', '中国,内蒙古自治区,兴安盟,乌兰浩特市', '122.063780', '46.062350', 'Wulanhaote', '乌兰浩特', '0');
INSERT INTO `sys_area` VALUES ('152202', '152202', '阿尔山市', '152200', '区', '', '0482', '137800', '中国,内蒙古自治区,兴安盟,阿尔山市', '119.943170', '47.177160', 'Aershan', '阿尔山', '0');
INSERT INTO `sys_area` VALUES ('152221', '152221', '科尔沁右翼前旗', '152200', '区', '', '0482', '137423', '中国,内蒙古自治区,兴安盟,科尔沁右翼前旗', '121.952690', '46.079500', 'Keyouqianqi', '科右前旗', '0');
INSERT INTO `sys_area` VALUES ('152222', '152222', '科尔沁右翼中旗', '152200', '区', '', '0482', '029400', '中国,内蒙古自治区,兴安盟,科尔沁右翼中旗', '121.468070', '45.056050', 'Keyouzhongqi', '科右中旗', '0');
INSERT INTO `sys_area` VALUES ('152223', '152223', '扎赉特旗', '152200', '区', '', '0482', '137600', '中国,内蒙古自治区,兴安盟,扎赉特旗', '122.912290', '46.726700', 'Zhalaiteqi', '扎赉特旗', '0');
INSERT INTO `sys_area` VALUES ('152224', '152224', '突泉县', '152200', '区', '', '0482', '137500', '中国,内蒙古自治区,兴安盟,突泉县', '121.593960', '45.381870', 'Tuquan', '突泉', '0');
INSERT INTO `sys_area` VALUES ('152500', '152500', '锡林郭勒盟', '150000', '市', '', '0479', '026000', '中国,内蒙古自治区,锡林郭勒盟', '116.090996', '43.944018', 'Xilin Gol', '锡林郭勒盟', '0');
INSERT INTO `sys_area` VALUES ('152501', '152501', '二连浩特市', '152500', '区', '', '0479', '011100', '中国,内蒙古自治区,锡林郭勒盟,二连浩特市', '111.982970', '43.653030', 'Erlianhaote', '二连浩特', '0');
INSERT INTO `sys_area` VALUES ('152502', '152502', '锡林浩特市', '152500', '区', '', '0479', '026021', '中国,内蒙古自治区,锡林郭勒盟,锡林浩特市', '116.086030', '43.933410', 'Xilinhaote', '锡林浩特', '0');
INSERT INTO `sys_area` VALUES ('152522', '152522', '阿巴嘎旗', '152500', '区', '', '0479', '011400', '中国,内蒙古自治区,锡林郭勒盟,阿巴嘎旗', '114.968260', '44.021740', 'Abagaqi', '阿巴嘎旗', '0');
INSERT INTO `sys_area` VALUES ('152523', '152523', '苏尼特左旗', '152500', '区', '', '0479', '011300', '中国,内蒙古自治区,锡林郭勒盟,苏尼特左旗', '113.650600', '43.856870', 'Sunitezuoqi', '苏尼特左旗', '0');
INSERT INTO `sys_area` VALUES ('152524', '152524', '苏尼特右旗', '152500', '区', '', '0479', '011200', '中国,内蒙古自治区,锡林郭勒盟,苏尼特右旗', '112.657410', '42.746900', 'Suniteyouqi', '苏尼特右旗', '0');
INSERT INTO `sys_area` VALUES ('152525', '152525', '东乌珠穆沁旗', '152500', '区', '', '0479', '026300', '中国,内蒙古自治区,锡林郭勒盟,东乌珠穆沁旗', '116.972930', '45.511080', 'Dongwuqi', '东乌旗', '0');
INSERT INTO `sys_area` VALUES ('152526', '152526', '西乌珠穆沁旗', '152500', '区', '', '0479', '026200', '中国,内蒙古自治区,锡林郭勒盟,西乌珠穆沁旗', '117.609830', '44.596230', 'Xiwuqi', '西乌旗', '0');
INSERT INTO `sys_area` VALUES ('152527', '152527', '太仆寺旗', '152500', '区', '', '0479', '027000', '中国,内蒙古自治区,锡林郭勒盟,太仆寺旗', '115.283020', '41.877270', 'Taipusiqi', '太仆寺旗', '0');
INSERT INTO `sys_area` VALUES ('152528', '152528', '镶黄旗', '152500', '区', '', '0479', '013250', '中国,内蒙古自治区,锡林郭勒盟,镶黄旗', '113.844720', '42.239270', 'Xianghuangqi', '镶黄旗', '0');
INSERT INTO `sys_area` VALUES ('152529', '152529', '正镶白旗', '152500', '区', '', '0479', '013800', '中国,内蒙古自治区,锡林郭勒盟,正镶白旗', '115.000670', '42.307120', 'Zhengxiangbaiqi', '正镶白旗', '0');
INSERT INTO `sys_area` VALUES ('152530', '152530', '正蓝旗', '152500', '区', '', '0479', '027200', '中国,内蒙古自治区,锡林郭勒盟,正蓝旗', '116.003630', '42.252290', 'Zhenglanqi', '正蓝旗', '0');
INSERT INTO `sys_area` VALUES ('152531', '152531', '多伦县', '152500', '区', '', '0479', '027300', '中国,内蒙古自治区,锡林郭勒盟,多伦县', '116.485650', '42.203000', 'Duolun', '多伦', '0');
INSERT INTO `sys_area` VALUES ('152900', '152900', '阿拉善盟', '150000', '市', '', '0483', '750306', '中国,内蒙古自治区,阿拉善盟', '105.706422', '38.844814', 'Alxa', '阿拉善盟', '0');
INSERT INTO `sys_area` VALUES ('152921', '152921', '阿拉善左旗', '152900', '区', '', '0483', '750306', '中国,内蒙古自治区,阿拉善盟,阿拉善左旗', '105.675320', '38.829300', 'Alashanzuoqi', '阿拉善左旗', '0');
INSERT INTO `sys_area` VALUES ('152922', '152922', '阿拉善右旗', '152900', '区', '', '0483', '737300', '中国,内蒙古自治区,阿拉善盟,阿拉善右旗', '101.667050', '39.215330', 'Alashanyouqi', '阿拉善右旗', '0');
INSERT INTO `sys_area` VALUES ('152923', '152923', '额济纳旗', '152900', '区', '', '0483', '735400', '中国,内蒙古自治区,阿拉善盟,额济纳旗', '101.068870', '41.967550', 'Ejinaqi', '额济纳旗', '0');
INSERT INTO `sys_area` VALUES ('210000', '210000', '辽宁省', '100000', '省', '', '', '', '中国,辽宁省', '123.429096', '41.796767', 'Liaoning', '辽宁', '0');
INSERT INTO `sys_area` VALUES ('210100', '210100', '沈阳市', '210000', '市', '', '024', '110013', '中国,辽宁省,沈阳市', '123.429096', '41.796767', 'Shenyang', '沈阳', '0');
INSERT INTO `sys_area` VALUES ('210102', '210102', '和平区', '210100', '区', '', '024', '110001', '中国,辽宁省,沈阳市,和平区', '123.420400', '41.789970', 'Heping', '和平', '0');
INSERT INTO `sys_area` VALUES ('210103', '210103', '沈河区', '210100', '区', '', '024', '110011', '中国,辽宁省,沈阳市,沈河区', '123.458710', '41.796250', 'Shenhe', '沈河', '0');
INSERT INTO `sys_area` VALUES ('210104', '210104', '大东区', '210100', '区', '', '024', '110041', '中国,辽宁省,沈阳市,大东区', '123.469970', '41.805390', 'Dadong', '大东', '0');
INSERT INTO `sys_area` VALUES ('210105', '210105', '皇姑区', '210100', '区', '', '024', '110031', '中国,辽宁省,沈阳市,皇姑区', '123.425270', '41.820350', 'Huanggu', '皇姑', '0');
INSERT INTO `sys_area` VALUES ('210106', '210106', '铁西区', '210100', '区', '', '024', '110021', '中国,辽宁省,沈阳市,铁西区', '123.376750', '41.802690', 'Tiexi', '铁西', '0');
INSERT INTO `sys_area` VALUES ('210111', '210111', '苏家屯区', '210100', '区', '', '024', '110101', '中国,辽宁省,沈阳市,苏家屯区', '123.344050', '41.664750', 'Sujiatun', '苏家屯', '0');
INSERT INTO `sys_area` VALUES ('210112', '210112', '浑南区', '210100', '区', '', '024', '110015', '中国,辽宁省,沈阳市,浑南区', '123.457707', '41.719450', 'Hunnan', '浑南', '0');
INSERT INTO `sys_area` VALUES ('210113', '210113', '沈北新区', '210100', '区', '', '024', '110121', '中国,辽宁省,沈阳市,沈北新区', '123.526580', '42.052970', 'Shenbeixinqu', '沈北新区', '0');
INSERT INTO `sys_area` VALUES ('210114', '210114', '于洪区', '210100', '区', '', '024', '110141', '中国,辽宁省,沈阳市,于洪区', '123.308070', '41.794000', 'Yuhong', '于洪', '0');
INSERT INTO `sys_area` VALUES ('210122', '210122', '辽中县', '210100', '区', '', '024', '110200', '中国,辽宁省,沈阳市,辽中县', '122.726590', '41.513020', 'Liaozhong', '辽中', '0');
INSERT INTO `sys_area` VALUES ('210123', '210123', '康平县', '210100', '区', '', '024', '110500', '中国,辽宁省,沈阳市,康平县', '123.354460', '42.750810', 'Kangping', '康平', '0');
INSERT INTO `sys_area` VALUES ('210124', '210124', '法库县', '210100', '区', '', '024', '110400', '中国,辽宁省,沈阳市,法库县', '123.412140', '42.506080', 'Faku', '法库', '0');
INSERT INTO `sys_area` VALUES ('210181', '210181', '新民市', '210100', '区', '', '024', '110300', '中国,辽宁省,沈阳市,新民市', '122.828670', '41.998470', 'Xinmin', '新民', '0');
INSERT INTO `sys_area` VALUES ('210200', '210200', '大连市', '210000', '市', '', '0411', '116011', '中国,辽宁省,大连市', '121.618622', '38.914590', 'Dalian', '大连', '0');
INSERT INTO `sys_area` VALUES ('210202', '210202', '中山区', '210200', '区', '', '0411', '116001', '中国,辽宁省,大连市,中山区', '121.644650', '38.918590', 'Zhongshan', '中山', '0');
INSERT INTO `sys_area` VALUES ('210203', '210203', '西岗区', '210200', '区', '', '0411', '116011', '中国,辽宁省,大连市,西岗区', '121.612380', '38.914690', 'Xigang', '西岗', '0');
INSERT INTO `sys_area` VALUES ('210204', '210204', '沙河口区', '210200', '区', '', '0411', '116021', '中国,辽宁省,大连市,沙河口区', '121.580170', '38.905360', 'Shahekou', '沙河口', '0');
INSERT INTO `sys_area` VALUES ('210211', '210211', '甘井子区', '210200', '区', '', '0411', '116033', '中国,辽宁省,大连市,甘井子区', '121.565670', '38.950170', 'Ganjingzi', '甘井子', '0');
INSERT INTO `sys_area` VALUES ('210212', '210212', '旅顺口区', '210200', '区', '', '0411', '116041', '中国,辽宁省,大连市,旅顺口区', '121.262020', '38.851250', 'Lvshunkou', '旅顺口', '0');
INSERT INTO `sys_area` VALUES ('210213', '210213', '金州区', '210200', '区', '', '0411', '116100', '中国,辽宁省,大连市,金州区', '121.718930', '39.100400', 'Jinzhou', '金州', '0');
INSERT INTO `sys_area` VALUES ('210224', '210224', '长海县', '210200', '区', '', '0411', '116500', '中国,辽宁省,大连市,长海县', '122.588590', '39.272740', 'Changhai', '长海', '0');
INSERT INTO `sys_area` VALUES ('210281', '210281', '瓦房店市', '210200', '区', '', '0411', '116300', '中国,辽宁省,大连市,瓦房店市', '121.981040', '39.628430', 'Wafangdian', '瓦房店', '0');
INSERT INTO `sys_area` VALUES ('210282', '210282', '普兰店市', '210200', '区', '', '0411', '116200', '中国,辽宁省,大连市,普兰店市', '121.963160', '39.394650', 'Pulandian', '普兰店', '0');
INSERT INTO `sys_area` VALUES ('210283', '210283', '庄河市', '210200', '区', '', '0411', '116400', '中国,辽宁省,大连市,庄河市', '122.967250', '39.688150', 'Zhuanghe', '庄河', '0');
INSERT INTO `sys_area` VALUES ('210300', '210300', '鞍山市', '210000', '市', '', '0412', '114001', '中国,辽宁省,鞍山市', '122.995632', '41.110626', 'Anshan', '鞍山', '0');
INSERT INTO `sys_area` VALUES ('210302', '210302', '铁东区', '210300', '区', '', '0412', '114001', '中国,辽宁省,鞍山市,铁东区', '122.990850', '41.089750', 'Tiedong', '铁东', '0');
INSERT INTO `sys_area` VALUES ('210303', '210303', '铁西区', '210300', '区', '', '0413', '114013', '中国,辽宁省,鞍山市,铁西区', '122.969670', '41.119770', 'Tiexi', '铁西', '0');
INSERT INTO `sys_area` VALUES ('210304', '210304', '立山区', '210300', '区', '', '0414', '114031', '中国,辽宁省,鞍山市,立山区', '123.029480', '41.150080', 'Lishan', '立山', '0');
INSERT INTO `sys_area` VALUES ('210311', '210311', '千山区', '210300', '区', '', '0415', '114041', '中国,辽宁省,鞍山市,千山区', '122.960480', '41.075070', 'Qianshan', '千山', '0');
INSERT INTO `sys_area` VALUES ('210321', '210321', '台安县', '210300', '区', '', '0417', '114100', '中国,辽宁省,鞍山市,台安县', '122.435850', '41.412650', 'Tai\'an', '台安', '0');
INSERT INTO `sys_area` VALUES ('210323', '210323', '岫岩满族自治县', '210300', '区', '', '0418', '114300', '中国,辽宁省,鞍山市,岫岩满族自治县', '123.288750', '40.279960', 'Xiuyan', '岫岩', '0');
INSERT INTO `sys_area` VALUES ('210381', '210381', '海城市', '210300', '区', '', '0416', '114200', '中国,辽宁省,鞍山市,海城市', '122.684570', '40.881420', 'Haicheng', '海城', '0');
INSERT INTO `sys_area` VALUES ('210400', '210400', '抚顺市', '210000', '市', '', '024', '113008', '中国,辽宁省,抚顺市', '123.921109', '41.875956', 'Fushun', '抚顺', '0');
INSERT INTO `sys_area` VALUES ('210402', '210402', '新抚区', '210400', '区', '', '024', '113008', '中国,辽宁省,抚顺市,新抚区', '123.912640', '41.862050', 'Xinfu', '新抚', '0');
INSERT INTO `sys_area` VALUES ('210403', '210403', '东洲区', '210400', '区', '', '024', '113003', '中国,辽宁省,抚顺市,东洲区', '124.037590', '41.851900', 'Dongzhou', '东洲', '0');
INSERT INTO `sys_area` VALUES ('210404', '210404', '望花区', '210400', '区', '', '024', '113001', '中国,辽宁省,抚顺市,望花区', '123.782830', '41.855320', 'Wanghua', '望花', '0');
INSERT INTO `sys_area` VALUES ('210411', '210411', '顺城区', '210400', '区', '', '024', '113006', '中国,辽宁省,抚顺市,顺城区', '123.945060', '41.883210', 'Shuncheng', '顺城', '0');
INSERT INTO `sys_area` VALUES ('210421', '210421', '抚顺县', '210400', '区', '', '024', '113006', '中国,辽宁省,抚顺市,抚顺县', '124.177550', '41.712170', 'Fushun', '抚顺', '0');
INSERT INTO `sys_area` VALUES ('210422', '210422', '新宾满族自治县', '210400', '区', '', '024', '113200', '中国,辽宁省,抚顺市,新宾满族自治县', '125.040490', '41.734090', 'Xinbin', '新宾', '0');
INSERT INTO `sys_area` VALUES ('210423', '210423', '清原满族自治县', '210400', '区', '', '024', '113300', '中国,辽宁省,抚顺市,清原满族自治县', '124.928070', '42.102210', 'Qingyuan', '清原', '0');
INSERT INTO `sys_area` VALUES ('210500', '210500', '本溪市', '210000', '市', '', '0414', '117000', '中国,辽宁省,本溪市', '123.770519', '41.297909', 'Benxi', '本溪', '0');
INSERT INTO `sys_area` VALUES ('210502', '210502', '平山区', '210500', '区', '', '0414', '117000', '中国,辽宁省,本溪市,平山区', '123.768920', '41.299700', 'Pingshan', '平山', '0');
INSERT INTO `sys_area` VALUES ('210503', '210503', '溪湖区', '210500', '区', '', '0414', '117002', '中国,辽宁省,本溪市,溪湖区', '123.767640', '41.329210', 'Xihu', '溪湖', '0');
INSERT INTO `sys_area` VALUES ('210504', '210504', '明山区', '210500', '区', '', '0414', '117021', '中国,辽宁省,本溪市,明山区', '123.817460', '41.308270', 'Mingshan', '明山', '0');
INSERT INTO `sys_area` VALUES ('210505', '210505', '南芬区', '210500', '区', '', '0414', '117014', '中国,辽宁省,本溪市,南芬区', '123.745230', '41.100600', 'Nanfen', '南芬', '0');
INSERT INTO `sys_area` VALUES ('210521', '210521', '本溪满族自治县', '210500', '区', '', '0414', '117100', '中国,辽宁省,本溪市,本溪满族自治县', '124.127410', '41.300590', 'Benxi', '本溪', '0');
INSERT INTO `sys_area` VALUES ('210522', '210522', '桓仁满族自治县', '210500', '区', '', '0414', '117200', '中国,辽宁省,本溪市,桓仁满族自治县', '125.360620', '41.267980', 'Huanren', '桓仁', '0');
INSERT INTO `sys_area` VALUES ('210600', '210600', '丹东市', '210000', '市', '', '0415', '118000', '中国,辽宁省,丹东市', '124.383044', '40.124296', 'Dandong', '丹东', '0');
INSERT INTO `sys_area` VALUES ('210602', '210602', '元宝区', '210600', '区', '', '0415', '118000', '中国,辽宁省,丹东市,元宝区', '124.395750', '40.136510', 'Yuanbao', '元宝', '0');
INSERT INTO `sys_area` VALUES ('210603', '210603', '振兴区', '210600', '区', '', '0415', '118002', '中国,辽宁省,丹东市,振兴区', '124.360350', '40.104890', 'Zhenxing', '振兴', '0');
INSERT INTO `sys_area` VALUES ('210604', '210604', '振安区', '210600', '区', '', '0415', '118001', '中国,辽宁省,丹东市,振安区', '124.428160', '40.158260', 'Zhen\'an', '振安', '0');
INSERT INTO `sys_area` VALUES ('210624', '210624', '宽甸满族自治县', '210600', '区', '', '0415', '118200', '中国,辽宁省,丹东市,宽甸满族自治县', '124.782470', '40.731870', 'Kuandian', '宽甸', '0');
INSERT INTO `sys_area` VALUES ('210681', '210681', '东港市', '210600', '区', '', '0415', '118300', '中国,辽宁省,丹东市,东港市', '124.162870', '39.862560', 'Donggang', '东港', '0');
INSERT INTO `sys_area` VALUES ('210682', '210682', '凤城市', '210600', '区', '', '0415', '118100', '中国,辽宁省,丹东市,凤城市', '124.066710', '40.453020', 'Fengcheng', '凤城', '0');
INSERT INTO `sys_area` VALUES ('210700', '210700', '锦州市', '210000', '市', '', '0416', '121000', '中国,辽宁省,锦州市', '121.135742', '41.119269', 'Jinzhou', '锦州', '0');
INSERT INTO `sys_area` VALUES ('210702', '210702', '古塔区', '210700', '区', '', '0416', '121001', '中国,辽宁省,锦州市,古塔区', '121.128320', '41.117250', 'Guta', '古塔', '0');
INSERT INTO `sys_area` VALUES ('210703', '210703', '凌河区', '210700', '区', '', '0416', '121000', '中国,辽宁省,锦州市,凌河区', '121.150890', '41.114960', 'Linghe', '凌河', '0');
INSERT INTO `sys_area` VALUES ('210711', '210711', '太和区', '210700', '区', '', '0416', '121011', '中国,辽宁省,锦州市,太和区', '121.103540', '41.109290', 'Taihe', '太和', '0');
INSERT INTO `sys_area` VALUES ('210726', '210726', '黑山县', '210700', '区', '', '0416', '121400', '中国,辽宁省,锦州市,黑山县', '122.120810', '41.694170', 'Heishan', '黑山', '0');
INSERT INTO `sys_area` VALUES ('210727', '210727', '义县', '210700', '区', '', '0416', '121100', '中国,辽宁省,锦州市,义县', '121.240350', '41.534580', 'Yixian', '义县', '0');
INSERT INTO `sys_area` VALUES ('210781', '210781', '凌海市', '210700', '区', '', '0416', '121200', '中国,辽宁省,锦州市,凌海市', '121.357050', '41.173700', 'Linghai', '凌海', '0');
INSERT INTO `sys_area` VALUES ('210782', '210782', '北镇市', '210700', '区', '', '0416', '121300', '中国,辽宁省,锦州市,北镇市', '121.798580', '41.595370', 'Beizhen', '北镇', '0');
INSERT INTO `sys_area` VALUES ('210800', '210800', '营口市', '210000', '市', '', '0417', '115003', '中国,辽宁省,营口市', '122.235151', '40.667432', 'Yingkou', '营口', '0');
INSERT INTO `sys_area` VALUES ('210802', '210802', '站前区', '210800', '区', '', '0417', '115002', '中国,辽宁省,营口市,站前区', '122.258960', '40.672660', 'Zhanqian', '站前', '0');
INSERT INTO `sys_area` VALUES ('210803', '210803', '西市区', '210800', '区', '', '0417', '115004', '中国,辽宁省,营口市,西市区', '122.206410', '40.666400', 'Xishi', '西市', '0');
INSERT INTO `sys_area` VALUES ('210804', '210804', '鲅鱼圈区', '210800', '区', '', '0417', '115007', '中国,辽宁省,营口市,鲅鱼圈区', '122.132660', '40.268650', 'Bayuquan', '鲅鱼圈', '0');
INSERT INTO `sys_area` VALUES ('210811', '210811', '老边区', '210800', '区', '', '0417', '115005', '中国,辽宁省,营口市,老边区', '122.379960', '40.680300', 'Laobian', '老边', '0');
INSERT INTO `sys_area` VALUES ('210881', '210881', '盖州市', '210800', '区', '', '0417', '115200', '中国,辽宁省,营口市,盖州市', '122.354640', '40.404460', 'Gaizhou', '盖州', '0');
INSERT INTO `sys_area` VALUES ('210882', '210882', '大石桥市', '210800', '区', '', '0417', '115100', '中国,辽宁省,营口市,大石桥市', '122.509270', '40.645670', 'Dashiqiao', '大石桥', '0');
INSERT INTO `sys_area` VALUES ('210900', '210900', '阜新市', '210000', '市', '', '0418', '123000', '中国,辽宁省,阜新市', '121.648962', '42.011796', 'Fuxin', '阜新', '0');
INSERT INTO `sys_area` VALUES ('210902', '210902', '海州区', '210900', '区', '', '0418', '123000', '中国,辽宁省,阜新市,海州区', '121.656260', '42.013360', 'Haizhou', '海州', '0');
INSERT INTO `sys_area` VALUES ('210903', '210903', '新邱区', '210900', '区', '', '0418', '123005', '中国,辽宁省,阜新市,新邱区', '121.792510', '42.091810', 'Xinqiu', '新邱', '0');
INSERT INTO `sys_area` VALUES ('210904', '210904', '太平区', '210900', '区', '', '0418', '123003', '中国,辽宁省,阜新市,太平区', '121.678650', '42.010650', 'Taiping', '太平', '0');
INSERT INTO `sys_area` VALUES ('210905', '210905', '清河门区', '210900', '区', '', '0418', '123006', '中国,辽宁省,阜新市,清河门区', '121.416100', '41.783090', 'Qinghemen', '清河门', '0');
INSERT INTO `sys_area` VALUES ('210911', '210911', '细河区', '210900', '区', '', '0418', '123000', '中国,辽宁省,阜新市,细河区', '121.680130', '42.025330', 'Xihe', '细河', '0');
INSERT INTO `sys_area` VALUES ('210921', '210921', '阜新蒙古族自治县', '210900', '区', '', '0418', '123100', '中国,辽宁省,阜新市,阜新蒙古族自治县', '121.757870', '42.065100', 'Fuxin', '阜新', '0');
INSERT INTO `sys_area` VALUES ('210922', '210922', '彰武县', '210900', '区', '', '0418', '123200', '中国,辽宁省,阜新市,彰武县', '122.540220', '42.386250', 'Zhangwu', '彰武', '0');
INSERT INTO `sys_area` VALUES ('211000', '211000', '辽阳市', '210000', '市', '', '0419', '111000', '中国,辽宁省,辽阳市', '123.181520', '41.269402', 'Liaoyang', '辽阳', '0');
INSERT INTO `sys_area` VALUES ('211002', '211002', '白塔区', '211000', '区', '', '0419', '111000', '中国,辽宁省,辽阳市,白塔区', '123.174700', '41.270250', 'Baita', '白塔', '0');
INSERT INTO `sys_area` VALUES ('211003', '211003', '文圣区', '211000', '区', '', '0419', '111000', '中国,辽宁省,辽阳市,文圣区', '123.185210', '41.262670', 'Wensheng', '文圣', '0');
INSERT INTO `sys_area` VALUES ('211004', '211004', '宏伟区', '211000', '区', '', '0419', '111003', '中国,辽宁省,辽阳市,宏伟区', '123.192900', '41.218520', 'Hongwei', '宏伟', '0');
INSERT INTO `sys_area` VALUES ('211005', '211005', '弓长岭区', '211000', '区', '', '0419', '111008', '中国,辽宁省,辽阳市,弓长岭区', '123.419630', '41.151810', 'Gongchangling', '弓长岭', '0');
INSERT INTO `sys_area` VALUES ('211011', '211011', '太子河区', '211000', '区', '', '0419', '111000', '中国,辽宁省,辽阳市,太子河区', '123.181820', '41.253370', 'Taizihe', '太子河', '0');
INSERT INTO `sys_area` VALUES ('211021', '211021', '辽阳县', '211000', '区', '', '0419', '111200', '中国,辽宁省,辽阳市,辽阳县', '123.105740', '41.205420', 'Liaoyang', '辽阳', '0');
INSERT INTO `sys_area` VALUES ('211081', '211081', '灯塔市', '211000', '区', '', '0419', '111300', '中国,辽宁省,辽阳市,灯塔市', '123.339260', '41.426120', 'Dengta', '灯塔', '0');
INSERT INTO `sys_area` VALUES ('211100', '211100', '盘锦市', '210000', '市', '', '0427', '124010', '中国,辽宁省,盘锦市', '122.069570', '41.124484', 'Panjin', '盘锦', '0');
INSERT INTO `sys_area` VALUES ('211102', '211102', '双台子区', '211100', '区', '', '0427', '124000', '中国,辽宁省,盘锦市,双台子区', '122.060110', '41.190600', 'Shuangtaizi', '双台子', '0');
INSERT INTO `sys_area` VALUES ('211103', '211103', '兴隆台区', '211100', '区', '', '0427', '124010', '中国,辽宁省,盘锦市,兴隆台区', '122.075290', '41.124020', 'Xinglongtai', '兴隆台', '0');
INSERT INTO `sys_area` VALUES ('211121', '211121', '大洼县', '211100', '区', '', '0427', '124200', '中国,辽宁省,盘锦市,大洼县', '122.082390', '41.002440', 'Dawa', '大洼', '0');
INSERT INTO `sys_area` VALUES ('211122', '211122', '盘山县', '211100', '区', '', '0427', '124000', '中国,辽宁省,盘锦市,盘山县', '121.997770', '41.238050', 'Panshan', '盘山', '0');
INSERT INTO `sys_area` VALUES ('211200', '211200', '铁岭市', '210000', '市', '', '024', '112000', '中国,辽宁省,铁岭市', '123.844279', '42.290585', 'Tieling', '铁岭', '0');
INSERT INTO `sys_area` VALUES ('211202', '211202', '银州区', '211200', '区', '', '024', '112000', '中国,辽宁省,铁岭市,银州区', '123.857300', '42.295070', 'Yinzhou', '银州', '0');
INSERT INTO `sys_area` VALUES ('211204', '211204', '清河区', '211200', '区', '', '024', '112003', '中国,辽宁省,铁岭市,清河区', '124.159110', '42.546790', 'Qinghe', '清河', '0');
INSERT INTO `sys_area` VALUES ('211221', '211221', '铁岭县', '211200', '区', '', '024', '112000', '中国,辽宁省,铁岭市,铁岭县', '123.773250', '42.224980', 'Tieling', '铁岭', '0');
INSERT INTO `sys_area` VALUES ('211223', '211223', '西丰县', '211200', '区', '', '024', '112400', '中国,辽宁省,铁岭市,西丰县', '124.730400', '42.737560', 'Xifeng', '西丰', '0');
INSERT INTO `sys_area` VALUES ('211224', '211224', '昌图县', '211200', '区', '', '024', '112500', '中国,辽宁省,铁岭市,昌图县', '124.112060', '42.784280', 'Changtu', '昌图', '0');
INSERT INTO `sys_area` VALUES ('211281', '211281', '调兵山市', '211200', '区', '', '024', '112700', '中国,辽宁省,铁岭市,调兵山市', '123.566890', '42.467500', 'Diaobingshan', '调兵山', '0');
INSERT INTO `sys_area` VALUES ('211282', '211282', '开原市', '211200', '区', '', '024', '112300', '中国,辽宁省,铁岭市,开原市', '124.039450', '42.545850', 'Kaiyuan', '开原', '0');
INSERT INTO `sys_area` VALUES ('211300', '211300', '朝阳市', '210000', '市', '', '0421', '122000', '中国,辽宁省,朝阳市', '120.451176', '41.576758', 'Chaoyang', '朝阳', '0');
INSERT INTO `sys_area` VALUES ('211302', '211302', '双塔区', '211300', '区', '', '0421', '122000', '中国,辽宁省,朝阳市,双塔区', '120.453850', '41.566000', 'Shuangta', '双塔', '0');
INSERT INTO `sys_area` VALUES ('211303', '211303', '龙城区', '211300', '区', '', '0421', '122000', '中国,辽宁省,朝阳市,龙城区', '120.437190', '41.592640', 'Longcheng', '龙城', '0');
INSERT INTO `sys_area` VALUES ('211321', '211321', '朝阳县', '211300', '区', '', '0421', '122000', '中国,辽宁省,朝阳市,朝阳县', '120.174010', '41.432400', 'Chaoyang', '朝阳', '0');
INSERT INTO `sys_area` VALUES ('211322', '211322', '建平县', '211300', '区', '', '0421', '122400', '中国,辽宁省,朝阳市,建平县', '119.643920', '41.403150', 'Jianping', '建平', '0');
INSERT INTO `sys_area` VALUES ('211324', '211324', '喀喇沁左翼蒙古族自治县', '211300', '区', '', '0421', '122300', '中国,辽宁省,朝阳市,喀喇沁左翼蒙古族自治县', '119.741850', '41.128010', 'Kalaqinzuoyi', '喀喇沁左翼', '0');
INSERT INTO `sys_area` VALUES ('211381', '211381', '北票市', '211300', '区', '', '0421', '122100', '中国,辽宁省,朝阳市,北票市', '120.769770', '41.801960', 'Beipiao', '北票', '0');
INSERT INTO `sys_area` VALUES ('211382', '211382', '凌源市', '211300', '区', '', '0421', '122500', '中国,辽宁省,朝阳市,凌源市', '119.401480', '41.245580', 'Lingyuan', '凌源', '0');
INSERT INTO `sys_area` VALUES ('211400', '211400', '葫芦岛市', '210000', '市', '', '0429', '125000', '中国,辽宁省,葫芦岛市', '120.856394', '40.755572', 'Huludao', '葫芦岛', '0');
INSERT INTO `sys_area` VALUES ('211402', '211402', '连山区', '211400', '区', '', '0429', '125001', '中国,辽宁省,葫芦岛市,连山区', '120.863930', '40.755540', 'Lianshan', '连山', '0');
INSERT INTO `sys_area` VALUES ('211403', '211403', '龙港区', '211400', '区', '', '0429', '125003', '中国,辽宁省,葫芦岛市,龙港区', '120.948660', '40.719190', 'Longgang', '龙港', '0');
INSERT INTO `sys_area` VALUES ('211404', '211404', '南票区', '211400', '区', '', '0429', '125027', '中国,辽宁省,葫芦岛市,南票区', '120.749780', '41.107070', 'Nanpiao', '南票', '0');
INSERT INTO `sys_area` VALUES ('211421', '211421', '绥中县', '211400', '区', '', '0429', '125200', '中国,辽宁省,葫芦岛市,绥中县', '120.344510', '40.325520', 'Suizhong', '绥中', '0');
INSERT INTO `sys_area` VALUES ('211422', '211422', '建昌县', '211400', '区', '', '0429', '125300', '中国,辽宁省,葫芦岛市,建昌县', '119.837700', '40.824480', 'Jianchang', '建昌', '0');
INSERT INTO `sys_area` VALUES ('211481', '211481', '兴城市', '211400', '区', '', '0429', '125100', '中国,辽宁省,葫芦岛市,兴城市', '120.725370', '40.614920', 'Xingcheng', '兴城', '0');
INSERT INTO `sys_area` VALUES ('211500', '211500', '金普新区', '210000', '市', '', '0411', '116100', '中国,辽宁省,金普新区', '121.789627', '39.055451', 'Jinpuxinqu', '金普新区', '0');
INSERT INTO `sys_area` VALUES ('211501', '211501', '金州新区', '211500', '区', '', '0411', '116100', '中国,辽宁省,金普新区,金州新区', '121.784821', '39.052252', 'Jinzhouxinqu', '金州新区', '0');
INSERT INTO `sys_area` VALUES ('211502', '211502', '普湾新区', '211500', '区', '', '0411', '116200', '中国,辽宁省,金普新区,普湾新区', '121.812812', '39.330093', 'Puwanxinqu', '普湾新区', '0');
INSERT INTO `sys_area` VALUES ('211503', '211503', '保税区', '211500', '区', '', '0411', '116100', '中国,辽宁省,金普新区,保税区', '121.942890', '39.224614', 'Baoshuiqu', '保税区', '0');
INSERT INTO `sys_area` VALUES ('220000', '220000', '吉林省', '100000', '省', '', '', '', '中国,吉林省', '125.324500', '43.886841', 'Jilin', '吉林', '0');
INSERT INTO `sys_area` VALUES ('220100', '220100', '长春市', '220000', '市', '', '0431', '130022', '中国,吉林省,长春市', '125.324500', '43.886841', 'Changchun', '长春', '0');
INSERT INTO `sys_area` VALUES ('220102', '220102', '南关区', '220100', '区', '', '0431', '130022', '中国,吉林省,长春市,南关区', '125.350350', '43.864010', 'Nanguan', '南关', '0');
INSERT INTO `sys_area` VALUES ('220103', '220103', '宽城区', '220100', '区', '', '0431', '130051', '中国,吉林省,长春市,宽城区', '125.326350', '43.901820', 'Kuancheng', '宽城', '0');
INSERT INTO `sys_area` VALUES ('220104', '220104', '朝阳区', '220100', '区', '', '0431', '130012', '中国,吉林省,长春市,朝阳区', '125.288300', '43.833390', 'Chaoyang', '朝阳', '0');
INSERT INTO `sys_area` VALUES ('220105', '220105', '二道区', '220100', '区', '', '0431', '130031', '中国,吉林省,长春市,二道区', '125.374290', '43.865010', 'Erdao', '二道', '0');
INSERT INTO `sys_area` VALUES ('220106', '220106', '绿园区', '220100', '区', '', '0431', '130062', '中国,吉林省,长春市,绿园区', '125.255820', '43.880450', 'Lvyuan', '绿园', '0');
INSERT INTO `sys_area` VALUES ('220112', '220112', '双阳区', '220100', '区', '', '0431', '130600', '中国,吉林省,长春市,双阳区', '125.656310', '43.528030', 'Shuangyang', '双阳', '0');
INSERT INTO `sys_area` VALUES ('220113', '220113', '九台区', '220100', '区', '', '0431', '130500', '中国,吉林省,长春市,九台区', '125.839500', '44.151630', 'Jiutai', '九台', '0');
INSERT INTO `sys_area` VALUES ('220122', '220122', '农安县', '220100', '区', '', '0431', '130200', '中国,吉林省,长春市,农安县', '125.184810', '44.432650', 'Nong\'an', '农安', '0');
INSERT INTO `sys_area` VALUES ('220182', '220182', '榆树市', '220100', '区', '', '0431', '130400', '中国,吉林省,长春市,榆树市', '126.556880', '44.825230', 'Yushu', '榆树', '0');
INSERT INTO `sys_area` VALUES ('220183', '220183', '德惠市', '220100', '区', '', '0431', '130300', '中国,吉林省,长春市,德惠市', '125.705380', '44.537190', 'Dehui', '德惠', '0');
INSERT INTO `sys_area` VALUES ('220200', '220200', '吉林市', '220000', '市', '', '0432', '132011', '中国,吉林省,吉林市', '126.553020', '43.843577', 'Jilin', '吉林', '0');
INSERT INTO `sys_area` VALUES ('220202', '220202', '昌邑区', '220200', '区', '', '0432', '132002', '中国,吉林省,吉林市,昌邑区', '126.574240', '43.881830', 'Changyi', '昌邑', '0');
INSERT INTO `sys_area` VALUES ('220203', '220203', '龙潭区', '220200', '区', '', '0432', '132021', '中国,吉林省,吉林市,龙潭区', '126.562130', '43.910540', 'Longtan', '龙潭', '0');
INSERT INTO `sys_area` VALUES ('220204', '220204', '船营区', '220200', '区', '', '0432', '132011', '中国,吉林省,吉林市,船营区', '126.540960', '43.833440', 'Chuanying', '船营', '0');
INSERT INTO `sys_area` VALUES ('220211', '220211', '丰满区', '220200', '区', '', '0432', '132013', '中国,吉林省,吉林市,丰满区', '126.562370', '43.822360', 'Fengman', '丰满', '0');
INSERT INTO `sys_area` VALUES ('220221', '220221', '永吉县', '220200', '区', '', '0432', '132200', '中国,吉林省,吉林市,永吉县', '126.496300', '43.671970', 'Yongji', '永吉', '0');
INSERT INTO `sys_area` VALUES ('220281', '220281', '蛟河市', '220200', '区', '', '0432', '132500', '中国,吉林省,吉林市,蛟河市', '127.344260', '43.726960', 'Jiaohe', '蛟河', '0');
INSERT INTO `sys_area` VALUES ('220282', '220282', '桦甸市', '220200', '区', '', '0432', '132400', '中国,吉林省,吉林市,桦甸市', '126.746240', '42.972060', 'Huadian', '桦甸', '0');
INSERT INTO `sys_area` VALUES ('220283', '220283', '舒兰市', '220200', '区', '', '0432', '132600', '中国,吉林省,吉林市,舒兰市', '126.965300', '44.405820', 'Shulan', '舒兰', '0');
INSERT INTO `sys_area` VALUES ('220284', '220284', '磐石市', '220200', '区', '', '0432', '132300', '中国,吉林省,吉林市,磐石市', '126.062500', '42.946280', 'Panshi', '磐石', '0');
INSERT INTO `sys_area` VALUES ('220300', '220300', '四平市', '220000', '市', '', '0434', '136000', '中国,吉林省,四平市', '124.370785', '43.170344', 'Siping', '四平', '0');
INSERT INTO `sys_area` VALUES ('220302', '220302', '铁西区', '220300', '区', '', '0434', '136000', '中国,吉林省,四平市,铁西区', '124.373690', '43.174560', 'Tiexi', '铁西', '0');
INSERT INTO `sys_area` VALUES ('220303', '220303', '铁东区', '220300', '区', '', '0434', '136001', '中国,吉林省,四平市,铁东区', '124.409760', '43.162410', 'Tiedong', '铁东', '0');
INSERT INTO `sys_area` VALUES ('220322', '220322', '梨树县', '220300', '区', '', '0434', '136500', '中国,吉林省,四平市,梨树县', '124.335630', '43.307170', 'Lishu', '梨树', '0');
INSERT INTO `sys_area` VALUES ('220323', '220323', '伊通满族自治县', '220300', '区', '', '0434', '130700', '中国,吉林省,四平市,伊通满族自治县', '125.305960', '43.344340', 'Yitong', '伊通', '0');
INSERT INTO `sys_area` VALUES ('220381', '220381', '公主岭市', '220300', '区', '', '0434', '136100', '中国,吉林省,四平市,公主岭市', '124.822660', '43.504530', 'Gongzhuling', '公主岭', '0');
INSERT INTO `sys_area` VALUES ('220382', '220382', '双辽市', '220300', '区', '', '0434', '136400', '中国,吉林省,四平市,双辽市', '123.501060', '43.520990', 'Shuangliao', '双辽', '0');
INSERT INTO `sys_area` VALUES ('220400', '220400', '辽源市', '220000', '市', '', '0437', '136200', '中国,吉林省,辽源市', '125.145349', '42.902692', 'Liaoyuan', '辽源', '0');
INSERT INTO `sys_area` VALUES ('220402', '220402', '龙山区', '220400', '区', '', '0437', '136200', '中国,吉林省,辽源市,龙山区', '125.136410', '42.897140', 'Longshan', '龙山', '0');
INSERT INTO `sys_area` VALUES ('220403', '220403', '西安区', '220400', '区', '', '0437', '136201', '中国,吉林省,辽源市,西安区', '125.149040', '42.927000', 'Xi\'an', '西安', '0');
INSERT INTO `sys_area` VALUES ('220421', '220421', '东丰县', '220400', '区', '', '0437', '136300', '中国,吉林省,辽源市,东丰县', '125.532440', '42.678300', 'Dongfeng', '东丰', '0');
INSERT INTO `sys_area` VALUES ('220422', '220422', '东辽县', '220400', '区', '', '0437', '136600', '中国,吉林省,辽源市,东辽县', '124.985960', '42.924920', 'Dongliao', '东辽', '0');
INSERT INTO `sys_area` VALUES ('220500', '220500', '通化市', '220000', '市', '', '0435', '134001', '中国,吉林省,通化市', '125.936501', '41.721177', 'Tonghua', '通化', '0');
INSERT INTO `sys_area` VALUES ('220502', '220502', '东昌区', '220500', '区', '', '0435', '134001', '中国,吉林省,通化市,东昌区', '125.955100', '41.728490', 'Dongchang', '东昌', '0');
INSERT INTO `sys_area` VALUES ('220503', '220503', '二道江区', '220500', '区', '', '0435', '134003', '中国,吉林省,通化市,二道江区', '126.042570', '41.774100', 'Erdaojiang', '二道江', '0');
INSERT INTO `sys_area` VALUES ('220521', '220521', '通化县', '220500', '区', '', '0435', '134100', '中国,吉林省,通化市,通化县', '125.759360', '41.679280', 'Tonghua', '通化', '0');
INSERT INTO `sys_area` VALUES ('220523', '220523', '辉南县', '220500', '区', '', '0435', '135100', '中国,吉林省,通化市,辉南县', '126.046840', '42.684970', 'Huinan', '辉南', '0');
INSERT INTO `sys_area` VALUES ('220524', '220524', '柳河县', '220500', '区', '', '0435', '135300', '中国,吉林省,通化市,柳河县', '125.744750', '42.284680', 'Liuhe', '柳河', '0');
INSERT INTO `sys_area` VALUES ('220581', '220581', '梅河口市', '220500', '区', '', '0435', '135000', '中国,吉林省,通化市,梅河口市', '125.710410', '42.538280', 'Meihekou', '梅河口', '0');
INSERT INTO `sys_area` VALUES ('220582', '220582', '集安市', '220500', '区', '', '0435', '134200', '中国,吉林省,通化市,集安市', '126.188290', '41.122680', 'Ji\'an', '集安', '0');
INSERT INTO `sys_area` VALUES ('220600', '220600', '白山市', '220000', '市', '', '0439', '134300', '中国,吉林省,白山市', '126.427839', '41.942505', 'Baishan', '白山', '0');
INSERT INTO `sys_area` VALUES ('220602', '220602', '浑江区', '220600', '区', '', '0439', '134300', '中国,吉林省,白山市,浑江区', '126.422342', '41.945656', 'Hunjiang', '浑江', '0');
INSERT INTO `sys_area` VALUES ('220605', '220605', '江源区', '220600', '区', '', '0439', '134700', '中国,吉林省,白山市,江源区', '126.590790', '42.056640', 'Jiangyuan', '江源', '0');
INSERT INTO `sys_area` VALUES ('220621', '220621', '抚松县', '220600', '区', '', '0439', '134500', '中国,吉林省,白山市,抚松县', '127.280300', '42.341980', 'Fusong', '抚松', '0');
INSERT INTO `sys_area` VALUES ('220622', '220622', '靖宇县', '220600', '区', '', '0439', '135200', '中国,吉林省,白山市,靖宇县', '126.813080', '42.388630', 'Jingyu', '靖宇', '0');
INSERT INTO `sys_area` VALUES ('220623', '220623', '长白朝鲜族自治县', '220600', '区', '', '0439', '134400', '中国,吉林省,白山市,长白朝鲜族自治县', '128.200470', '41.419960', 'Changbai', '长白', '0');
INSERT INTO `sys_area` VALUES ('220681', '220681', '临江市', '220600', '区', '', '0439', '134600', '中国,吉林省,白山市,临江市', '126.917510', '41.811420', 'Linjiang', '临江', '0');
INSERT INTO `sys_area` VALUES ('220700', '220700', '松原市', '220000', '市', '', '0438', '138000', '中国,吉林省,松原市', '124.823608', '45.118243', 'Songyuan', '松原', '0');
INSERT INTO `sys_area` VALUES ('220702', '220702', '宁江区', '220700', '区', '', '0438', '138000', '中国,吉林省,松原市,宁江区', '124.816890', '45.171750', 'Ningjiang', '宁江', '0');
INSERT INTO `sys_area` VALUES ('220721', '220721', '前郭尔罗斯蒙古族自治县', '220700', '区', '', '0438', '138000', '中国,吉林省,松原市,前郭尔罗斯蒙古族自治县', '124.823510', '45.117260', 'Qianguoerluosi', '前郭尔罗斯', '0');
INSERT INTO `sys_area` VALUES ('220722', '220722', '长岭县', '220700', '区', '', '0438', '131500', '中国,吉林省,松原市,长岭县', '123.967250', '44.275810', 'Changling', '长岭', '0');
INSERT INTO `sys_area` VALUES ('220723', '220723', '乾安县', '220700', '区', '', '0438', '131400', '中国,吉林省,松原市,乾安县', '124.027370', '45.010680', 'Qian\'an', '乾安', '0');
INSERT INTO `sys_area` VALUES ('220781', '220781', '扶余市', '220700', '区', '', '0438', '131200', '中国,吉林省,松原市,扶余市', '126.042758', '44.986199', 'Fuyu', '扶余', '0');
INSERT INTO `sys_area` VALUES ('220800', '220800', '白城市', '220000', '市', '', '0436', '137000', '中国,吉林省,白城市', '122.841114', '45.619026', 'Baicheng', '白城', '0');
INSERT INTO `sys_area` VALUES ('220802', '220802', '洮北区', '220800', '区', '', '0436', '137000', '中国,吉林省,白城市,洮北区', '122.851040', '45.621670', 'Taobei', '洮北', '0');
INSERT INTO `sys_area` VALUES ('220821', '220821', '镇赉县', '220800', '区', '', '0436', '137300', '中国,吉林省,白城市,镇赉县', '123.199240', '45.847790', 'Zhenlai', '镇赉', '0');
INSERT INTO `sys_area` VALUES ('220822', '220822', '通榆县', '220800', '区', '', '0436', '137200', '中国,吉林省,白城市,通榆县', '123.087610', '44.813880', 'Tongyu', '通榆', '0');
INSERT INTO `sys_area` VALUES ('220881', '220881', '洮南市', '220800', '区', '', '0436', '137100', '中国,吉林省,白城市,洮南市', '122.787720', '45.335020', 'Taonan', '洮南', '0');
INSERT INTO `sys_area` VALUES ('220882', '220882', '大安市', '220800', '区', '', '0436', '131300', '中国,吉林省,白城市,大安市', '124.295190', '45.508460', 'Da\'an', '大安', '0');
INSERT INTO `sys_area` VALUES ('222400', '222400', '延边朝鲜族自治州', '220000', '市', '', '0433', '133000', '中国,吉林省,延边朝鲜族自治州', '129.513228', '42.904823', 'Yanbian', '延边', '0');
INSERT INTO `sys_area` VALUES ('222401', '222401', '延吉市', '222400', '区', '', '0433', '133000', '中国,吉林省,延边朝鲜族自治州,延吉市', '129.513570', '42.906820', 'Yanji', '延吉', '0');
INSERT INTO `sys_area` VALUES ('222402', '222402', '图们市', '222400', '区', '', '0433', '133100', '中国,吉林省,延边朝鲜族自治州,图们市', '129.843810', '42.968010', 'Tumen', '图们', '0');
INSERT INTO `sys_area` VALUES ('222403', '222403', '敦化市', '222400', '区', '', '0433', '133700', '中国,吉林省,延边朝鲜族自治州,敦化市', '128.232420', '43.373040', 'Dunhua', '敦化', '0');
INSERT INTO `sys_area` VALUES ('222404', '222404', '珲春市', '222400', '区', '', '0433', '133300', '中国,吉林省,延边朝鲜族自治州,珲春市', '130.365720', '42.862420', 'Hunchun', '珲春', '0');
INSERT INTO `sys_area` VALUES ('222405', '222405', '龙井市', '222400', '区', '', '0433', '133400', '中国,吉林省,延边朝鲜族自治州,龙井市', '129.425840', '42.768040', 'Longjing', '龙井', '0');
INSERT INTO `sys_area` VALUES ('222406', '222406', '和龙市', '222400', '区', '', '0433', '133500', '中国,吉林省,延边朝鲜族自治州,和龙市', '129.010770', '42.546400', 'Helong', '和龙', '0');
INSERT INTO `sys_area` VALUES ('222424', '222424', '汪清县', '222400', '区', '', '0433', '133200', '中国,吉林省,延边朝鲜族自治州,汪清县', '129.771210', '43.312780', 'Wangqing', '汪清', '0');
INSERT INTO `sys_area` VALUES ('222426', '222426', '安图县', '222400', '区', '', '0433', '133600', '中国,吉林省,延边朝鲜族自治州,安图县', '128.906250', '43.115330', 'Antu', '安图', '0');
INSERT INTO `sys_area` VALUES ('230000', '230000', '黑龙江省', '100000', '省', '', '', '', '中国,黑龙江省', '126.642464', '45.756967', 'Heilongjiang', '黑龙江', '0');
INSERT INTO `sys_area` VALUES ('230100', '230100', '哈尔滨市', '230000', '市', '', '0451', '150010', '中国,黑龙江省,哈尔滨市', '126.642464', '45.756967', 'Harbin', '哈尔滨', '0');
INSERT INTO `sys_area` VALUES ('230102', '230102', '道里区', '230100', '区', '', '0451', '150010', '中国,黑龙江省,哈尔滨市,道里区', '126.617050', '45.755860', 'Daoli', '道里', '0');
INSERT INTO `sys_area` VALUES ('230103', '230103', '南岗区', '230100', '区', '', '0451', '150006', '中国,黑龙江省,哈尔滨市,南岗区', '126.668540', '45.759960', 'Nangang', '南岗', '0');
INSERT INTO `sys_area` VALUES ('230104', '230104', '道外区', '230100', '区', '', '0451', '150020', '中国,黑龙江省,哈尔滨市,道外区', '126.649380', '45.791870', 'Daowai', '道外', '0');
INSERT INTO `sys_area` VALUES ('230108', '230108', '平房区', '230100', '区', '', '0451', '150060', '中国,黑龙江省,哈尔滨市,平房区', '126.637290', '45.597770', 'Pingfang', '平房', '0');
INSERT INTO `sys_area` VALUES ('230109', '230109', '松北区', '230100', '区', '', '0451', '150028', '中国,黑龙江省,哈尔滨市,松北区', '126.562760', '45.808310', 'Songbei', '松北', '0');
INSERT INTO `sys_area` VALUES ('230110', '230110', '香坊区', '230100', '区', '', '0451', '150036', '中国,黑龙江省,哈尔滨市,香坊区', '126.679680', '45.723830', 'Xiangfang', '香坊', '0');
INSERT INTO `sys_area` VALUES ('230111', '230111', '呼兰区', '230100', '区', '', '0451', '150500', '中国,黑龙江省,哈尔滨市,呼兰区', '126.587920', '45.888950', 'Hulan', '呼兰', '0');
INSERT INTO `sys_area` VALUES ('230112', '230112', '阿城区', '230100', '区', '', '0451', '150300', '中国,黑龙江省,哈尔滨市,阿城区', '126.975250', '45.541440', 'A\'cheng', '阿城', '0');
INSERT INTO `sys_area` VALUES ('230113', '230113', '双城区', '230100', '区', '', '0451', '150100', '中国,黑龙江省,哈尔滨市,双城区', '126.308784', '45.377942', 'Shuangcheng', '双城', '0');
INSERT INTO `sys_area` VALUES ('230123', '230123', '依兰县', '230100', '区', '', '0451', '154800', '中国,黑龙江省,哈尔滨市,依兰县', '129.568170', '46.324700', 'Yilan', '依兰', '0');
INSERT INTO `sys_area` VALUES ('230124', '230124', '方正县', '230100', '区', '', '0451', '150800', '中国,黑龙江省,哈尔滨市,方正县', '128.829520', '45.851620', 'Fangzheng', '方正', '0');
INSERT INTO `sys_area` VALUES ('230125', '230125', '宾县', '230100', '区', '', '0451', '150400', '中国,黑龙江省,哈尔滨市,宾县', '127.486750', '45.755040', 'Binxian', '宾县', '0');
INSERT INTO `sys_area` VALUES ('230126', '230126', '巴彦县', '230100', '区', '', '0451', '151800', '中国,黑龙江省,哈尔滨市,巴彦县', '127.407990', '46.081480', 'Bayan', '巴彦', '0');
INSERT INTO `sys_area` VALUES ('230127', '230127', '木兰县', '230100', '区', '', '0451', '151900', '中国,黑龙江省,哈尔滨市,木兰县', '128.044800', '45.949440', 'Mulan', '木兰', '0');
INSERT INTO `sys_area` VALUES ('230128', '230128', '通河县', '230100', '区', '', '0451', '150900', '中国,黑龙江省,哈尔滨市,通河县', '128.746030', '45.990070', 'Tonghe', '通河', '0');
INSERT INTO `sys_area` VALUES ('230129', '230129', '延寿县', '230100', '区', '', '0451', '150700', '中国,黑龙江省,哈尔滨市,延寿县', '128.334190', '45.455400', 'Yanshou', '延寿', '0');
INSERT INTO `sys_area` VALUES ('230183', '230183', '尚志市', '230100', '区', '', '0451', '150600', '中国,黑龙江省,哈尔滨市,尚志市', '127.961910', '45.217360', 'Shangzhi', '尚志', '0');
INSERT INTO `sys_area` VALUES ('230184', '230184', '五常市', '230100', '区', '', '0451', '150200', '中国,黑龙江省,哈尔滨市,五常市', '127.167510', '44.931840', 'Wuchang', '五常', '0');
INSERT INTO `sys_area` VALUES ('230200', '230200', '齐齐哈尔市', '230000', '市', '', '0452', '161005', '中国,黑龙江省,齐齐哈尔市', '123.953486', '47.348079', 'Qiqihar', '齐齐哈尔', '0');
INSERT INTO `sys_area` VALUES ('230202', '230202', '龙沙区', '230200', '区', '', '0452', '161000', '中国,黑龙江省,齐齐哈尔市,龙沙区', '123.957520', '47.317760', 'Longsha', '龙沙', '0');
INSERT INTO `sys_area` VALUES ('230203', '230203', '建华区', '230200', '区', '', '0452', '161006', '中国,黑龙江省,齐齐哈尔市,建华区', '124.013300', '47.367180', 'Jianhua', '建华', '0');
INSERT INTO `sys_area` VALUES ('230204', '230204', '铁锋区', '230200', '区', '', '0452', '161000', '中国,黑龙江省,齐齐哈尔市,铁锋区', '123.978210', '47.340750', 'Tiefeng', '铁锋', '0');
INSERT INTO `sys_area` VALUES ('230205', '230205', '昂昂溪区', '230200', '区', '', '0452', '161031', '中国,黑龙江省,齐齐哈尔市,昂昂溪区', '123.822290', '47.155130', 'Angangxi', '昂昂溪', '0');
INSERT INTO `sys_area` VALUES ('230206', '230206', '富拉尔基区', '230200', '区', '', '0452', '161041', '中国,黑龙江省,齐齐哈尔市,富拉尔基区', '123.629180', '47.208840', 'Fulaerji', '富拉尔基', '0');
INSERT INTO `sys_area` VALUES ('230207', '230207', '碾子山区', '230200', '区', '', '0452', '161046', '中国,黑龙江省,齐齐哈尔市,碾子山区', '122.881830', '47.516620', 'Nianzishan', '碾子山', '0');
INSERT INTO `sys_area` VALUES ('230208', '230208', '梅里斯达斡尔族区', '230200', '区', '', '0452', '161021', '中国,黑龙江省,齐齐哈尔市,梅里斯达斡尔族区', '123.752740', '47.309460', 'Meilisi', '梅里斯', '0');
INSERT INTO `sys_area` VALUES ('230221', '230221', '龙江县', '230200', '区', '', '0452', '161100', '中国,黑龙江省,齐齐哈尔市,龙江县', '123.205320', '47.338680', 'Longjiang', '龙江', '0');
INSERT INTO `sys_area` VALUES ('230223', '230223', '依安县', '230200', '区', '', '0452', '161500', '中国,黑龙江省,齐齐哈尔市,依安县', '125.308960', '47.893100', 'Yi\'an', '依安', '0');
INSERT INTO `sys_area` VALUES ('230224', '230224', '泰来县', '230200', '区', '', '0452', '162400', '中国,黑龙江省,齐齐哈尔市,泰来县', '123.422850', '46.393860', 'Tailai', '泰来', '0');
INSERT INTO `sys_area` VALUES ('230225', '230225', '甘南县', '230200', '区', '', '0452', '162100', '中国,黑龙江省,齐齐哈尔市,甘南县', '123.503170', '47.924370', 'Gannan', '甘南', '0');
INSERT INTO `sys_area` VALUES ('230227', '230227', '富裕县', '230200', '区', '', '0452', '161200', '中国,黑龙江省,齐齐哈尔市,富裕县', '124.474570', '47.774310', 'Fuyu', '富裕', '0');
INSERT INTO `sys_area` VALUES ('230229', '230229', '克山县', '230200', '区', '', '0452', '161600', '中国,黑龙江省,齐齐哈尔市,克山县', '125.873960', '48.032650', 'Keshan', '克山', '0');
INSERT INTO `sys_area` VALUES ('230230', '230230', '克东县', '230200', '区', '', '0452', '164800', '中国,黑龙江省,齐齐哈尔市,克东县', '126.249170', '48.038280', 'Kedong', '克东', '0');
INSERT INTO `sys_area` VALUES ('230231', '230231', '拜泉县', '230200', '区', '', '0452', '164700', '中国,黑龙江省,齐齐哈尔市,拜泉县', '126.091670', '47.608170', 'Baiquan', '拜泉', '0');
INSERT INTO `sys_area` VALUES ('230281', '230281', '讷河市', '230200', '区', '', '0452', '161300', '中国,黑龙江省,齐齐哈尔市,讷河市', '124.877130', '48.483880', 'Nehe', '讷河', '0');
INSERT INTO `sys_area` VALUES ('230300', '230300', '鸡西市', '230000', '市', '', '0467', '158100', '中国,黑龙江省,鸡西市', '130.975966', '45.300046', 'Jixi', '鸡西', '0');
INSERT INTO `sys_area` VALUES ('230302', '230302', '鸡冠区', '230300', '区', '', '0467', '158100', '中国,黑龙江省,鸡西市,鸡冠区', '130.981390', '45.303960', 'Jiguan', '鸡冠', '0');
INSERT INTO `sys_area` VALUES ('230303', '230303', '恒山区', '230300', '区', '', '0467', '158130', '中国,黑龙江省,鸡西市,恒山区', '130.904930', '45.210710', 'Hengshan', '恒山', '0');
INSERT INTO `sys_area` VALUES ('230304', '230304', '滴道区', '230300', '区', '', '0467', '158150', '中国,黑龙江省,鸡西市,滴道区', '130.848410', '45.351090', 'Didao', '滴道', '0');
INSERT INTO `sys_area` VALUES ('230305', '230305', '梨树区', '230300', '区', '', '0467', '158160', '中国,黑龙江省,鸡西市,梨树区', '130.698480', '45.090370', 'Lishu', '梨树', '0');
INSERT INTO `sys_area` VALUES ('230306', '230306', '城子河区', '230300', '区', '', '0467', '158170', '中国,黑龙江省,鸡西市,城子河区', '131.011320', '45.336890', 'Chengzihe', '城子河', '0');
INSERT INTO `sys_area` VALUES ('230307', '230307', '麻山区', '230300', '区', '', '0467', '158180', '中国,黑龙江省,鸡西市,麻山区', '130.478110', '45.212090', 'Mashan', '麻山', '0');
INSERT INTO `sys_area` VALUES ('230321', '230321', '鸡东县', '230300', '区', '', '0467', '158200', '中国,黑龙江省,鸡西市,鸡东县', '131.124230', '45.260250', 'Jidong', '鸡东', '0');
INSERT INTO `sys_area` VALUES ('230381', '230381', '虎林市', '230300', '区', '', '0467', '158400', '中国,黑龙江省,鸡西市,虎林市', '132.936790', '45.762910', 'Hulin', '虎林', '0');
INSERT INTO `sys_area` VALUES ('230382', '230382', '密山市', '230300', '区', '', '0467', '158300', '中国,黑龙江省,鸡西市,密山市', '131.846250', '45.529700', 'Mishan', '密山', '0');
INSERT INTO `sys_area` VALUES ('230400', '230400', '鹤岗市', '230000', '市', '', '0468', '154100', '中国,黑龙江省,鹤岗市', '130.277487', '47.332085', 'Hegang', '鹤岗', '0');
INSERT INTO `sys_area` VALUES ('230402', '230402', '向阳区', '230400', '区', '', '0468', '154100', '中国,黑龙江省,鹤岗市,向阳区', '130.294300', '47.342470', 'Xiangyang', '向阳', '0');
INSERT INTO `sys_area` VALUES ('230403', '230403', '工农区', '230400', '区', '', '0468', '154101', '中国,黑龙江省,鹤岗市,工农区', '130.274680', '47.318690', 'Gongnong', '工农', '0');
INSERT INTO `sys_area` VALUES ('230404', '230404', '南山区', '230400', '区', '', '0468', '154104', '中国,黑龙江省,鹤岗市,南山区', '130.276760', '47.314040', 'Nanshan', '南山', '0');
INSERT INTO `sys_area` VALUES ('230405', '230405', '兴安区', '230400', '区', '', '0468', '154102', '中国,黑龙江省,鹤岗市,兴安区', '130.239650', '47.252600', 'Xing\'an', '兴安', '0');
INSERT INTO `sys_area` VALUES ('230406', '230406', '东山区', '230400', '区', '', '0468', '154106', '中国,黑龙江省,鹤岗市,东山区', '130.317060', '47.338530', 'Dongshan', '东山', '0');
INSERT INTO `sys_area` VALUES ('230407', '230407', '兴山区', '230400', '区', '', '0468', '154105', '中国,黑龙江省,鹤岗市,兴山区', '130.292710', '47.357760', 'Xingshan', '兴山', '0');
INSERT INTO `sys_area` VALUES ('230421', '230421', '萝北县', '230400', '区', '', '0468', '154200', '中国,黑龙江省,鹤岗市,萝北县', '130.833460', '47.579590', 'Luobei', '萝北', '0');
INSERT INTO `sys_area` VALUES ('230422', '230422', '绥滨县', '230400', '区', '', '0468', '156200', '中国,黑龙江省,鹤岗市,绥滨县', '131.860290', '47.290300', 'Suibin', '绥滨', '0');
INSERT INTO `sys_area` VALUES ('230500', '230500', '双鸭山市', '230000', '市', '', '0469', '155100', '中国,黑龙江省,双鸭山市', '131.157304', '46.643442', 'Shuangyashan', '双鸭山', '0');
INSERT INTO `sys_area` VALUES ('230502', '230502', '尖山区', '230500', '区', '', '0469', '155100', '中国,黑龙江省,双鸭山市,尖山区', '131.158410', '46.646350', 'Jianshan', '尖山', '0');
INSERT INTO `sys_area` VALUES ('230503', '230503', '岭东区', '230500', '区', '', '0469', '155120', '中国,黑龙江省,双鸭山市,岭东区', '131.164730', '46.590430', 'Lingdong', '岭东', '0');
INSERT INTO `sys_area` VALUES ('230505', '230505', '四方台区', '230500', '区', '', '0469', '155130', '中国,黑龙江省,双鸭山市,四方台区', '131.335930', '46.594990', 'Sifangtai', '四方台', '0');
INSERT INTO `sys_area` VALUES ('230506', '230506', '宝山区', '230500', '区', '', '0469', '155131', '中国,黑龙江省,双鸭山市,宝山区', '131.401600', '46.577180', 'Baoshan', '宝山', '0');
INSERT INTO `sys_area` VALUES ('230521', '230521', '集贤县', '230500', '区', '', '0469', '155900', '中国,黑龙江省,双鸭山市,集贤县', '131.140530', '46.726780', 'Jixian', '集贤', '0');
INSERT INTO `sys_area` VALUES ('230522', '230522', '友谊县', '230500', '区', '', '0469', '155800', '中国,黑龙江省,双鸭山市,友谊县', '131.807890', '46.767390', 'Youyi', '友谊', '0');
INSERT INTO `sys_area` VALUES ('230523', '230523', '宝清县', '230500', '区', '', '0469', '155600', '中国,黑龙江省,双鸭山市,宝清县', '132.196950', '46.327160', 'Baoqing', '宝清', '0');
INSERT INTO `sys_area` VALUES ('230524', '230524', '饶河县', '230500', '区', '', '0469', '155700', '中国,黑龙江省,双鸭山市,饶河县', '134.019860', '46.798990', 'Raohe', '饶河', '0');
INSERT INTO `sys_area` VALUES ('230600', '230600', '大庆市', '230000', '市', '', '0459', '163000', '中国,黑龙江省,大庆市', '125.112720', '46.590734', 'Daqing', '大庆', '0');
INSERT INTO `sys_area` VALUES ('230602', '230602', '萨尔图区', '230600', '区', '', '0459', '163001', '中国,黑龙江省,大庆市,萨尔图区', '125.087920', '46.593590', 'Saertu', '萨尔图', '0');
INSERT INTO `sys_area` VALUES ('230603', '230603', '龙凤区', '230600', '区', '', '0459', '163711', '中国,黑龙江省,大庆市,龙凤区', '125.116570', '46.532730', 'Longfeng', '龙凤', '0');
INSERT INTO `sys_area` VALUES ('230604', '230604', '让胡路区', '230600', '区', '', '0459', '163712', '中国,黑龙江省,大庆市,让胡路区', '124.870750', '46.652200', 'Ranghulu', '让胡路', '0');
INSERT INTO `sys_area` VALUES ('230605', '230605', '红岗区', '230600', '区', '', '0459', '163511', '中国,黑龙江省,大庆市,红岗区', '124.892480', '46.401280', 'Honggang', '红岗', '0');
INSERT INTO `sys_area` VALUES ('230606', '230606', '大同区', '230600', '区', '', '0459', '163515', '中国,黑龙江省,大庆市,大同区', '124.815910', '46.032950', 'Datong', '大同', '0');
INSERT INTO `sys_area` VALUES ('230621', '230621', '肇州县', '230600', '区', '', '0459', '166400', '中国,黑龙江省,大庆市,肇州县', '125.270590', '45.704140', 'Zhaozhou', '肇州', '0');
INSERT INTO `sys_area` VALUES ('230622', '230622', '肇源县', '230600', '区', '', '0459', '166500', '中国,黑龙江省,大庆市,肇源县', '125.084560', '45.520320', 'Zhaoyuan', '肇源', '0');
INSERT INTO `sys_area` VALUES ('230623', '230623', '林甸县', '230600', '区', '', '0459', '166300', '中国,黑龙江省,大庆市,林甸县', '124.875640', '47.186010', 'Lindian', '林甸', '0');
INSERT INTO `sys_area` VALUES ('230624', '230624', '杜尔伯特蒙古族自治县', '230600', '区', '', '0459', '166200', '中国,黑龙江省,大庆市,杜尔伯特蒙古族自治县', '124.449370', '46.865070', 'Duerbote', '杜尔伯特', '0');
INSERT INTO `sys_area` VALUES ('230700', '230700', '伊春市', '230000', '市', '', '0458', '153000', '中国,黑龙江省,伊春市', '128.899396', '47.724775', 'Yichun', '伊春', '0');
INSERT INTO `sys_area` VALUES ('230702', '230702', '伊春区', '230700', '区', '', '0458', '153000', '中国,黑龙江省,伊春市,伊春区', '128.907520', '47.728000', 'Yichun', '伊春', '0');
INSERT INTO `sys_area` VALUES ('230703', '230703', '南岔区', '230700', '区', '', '0458', '153100', '中国,黑龙江省,伊春市,南岔区', '129.283620', '47.138970', 'Nancha', '南岔', '0');
INSERT INTO `sys_area` VALUES ('230704', '230704', '友好区', '230700', '区', '', '0458', '153031', '中国,黑龙江省,伊春市,友好区', '128.840390', '47.853710', 'Youhao', '友好', '0');
INSERT INTO `sys_area` VALUES ('230705', '230705', '西林区', '230700', '区', '', '0458', '153025', '中国,黑龙江省,伊春市,西林区', '129.312010', '47.481030', 'Xilin', '西林', '0');
INSERT INTO `sys_area` VALUES ('230706', '230706', '翠峦区', '230700', '区', '', '0458', '153013', '中国,黑龙江省,伊春市,翠峦区', '128.667290', '47.725030', 'Cuiluan', '翠峦', '0');
INSERT INTO `sys_area` VALUES ('230707', '230707', '新青区', '230700', '区', '', '0458', '153036', '中国,黑龙江省,伊春市,新青区', '129.536530', '48.290670', 'Xinqing', '新青', '0');
INSERT INTO `sys_area` VALUES ('230708', '230708', '美溪区', '230700', '区', '', '0458', '153021', '中国,黑龙江省,伊春市,美溪区', '129.137080', '47.635130', 'Meixi', '美溪', '0');
INSERT INTO `sys_area` VALUES ('230709', '230709', '金山屯区', '230700', '区', '', '0458', '153026', '中国,黑龙江省,伊春市,金山屯区', '129.437680', '47.413490', 'Jinshantun', '金山屯', '0');
INSERT INTO `sys_area` VALUES ('230710', '230710', '五营区', '230700', '区', '', '0458', '153033', '中国,黑龙江省,伊春市,五营区', '129.245450', '48.107910', 'Wuying', '五营', '0');
INSERT INTO `sys_area` VALUES ('230711', '230711', '乌马河区', '230700', '区', '', '0458', '153011', '中国,黑龙江省,伊春市,乌马河区', '128.796720', '47.728000', 'Wumahe', '乌马河', '0');
INSERT INTO `sys_area` VALUES ('230712', '230712', '汤旺河区', '230700', '区', '', '0458', '153037', '中国,黑龙江省,伊春市,汤旺河区', '129.572260', '48.451820', 'Tangwanghe', '汤旺河', '0');
INSERT INTO `sys_area` VALUES ('230713', '230713', '带岭区', '230700', '区', '', '0458', '153106', '中国,黑龙江省,伊春市,带岭区', '129.023520', '47.025530', 'Dailing', '带岭', '0');
INSERT INTO `sys_area` VALUES ('230714', '230714', '乌伊岭区', '230700', '区', '', '0458', '153038', '中国,黑龙江省,伊春市,乌伊岭区', '129.439810', '48.596020', 'Wuyiling', '乌伊岭', '0');
INSERT INTO `sys_area` VALUES ('230715', '230715', '红星区', '230700', '区', '', '0458', '153035', '中国,黑龙江省,伊春市,红星区', '129.388700', '48.239440', 'Hongxing', '红星', '0');
INSERT INTO `sys_area` VALUES ('230716', '230716', '上甘岭区', '230700', '区', '', '0458', '153032', '中国,黑龙江省,伊春市,上甘岭区', '129.024470', '47.975220', 'Shangganling', '上甘岭', '0');
INSERT INTO `sys_area` VALUES ('230722', '230722', '嘉荫县', '230700', '区', '', '0458', '153200', '中国,黑龙江省,伊春市,嘉荫县', '130.398250', '48.891700', 'Jiayin', '嘉荫', '0');
INSERT INTO `sys_area` VALUES ('230781', '230781', '铁力市', '230700', '区', '', '0458', '152500', '中国,黑龙江省,伊春市,铁力市', '128.031700', '46.985710', 'Tieli', '铁力', '0');
INSERT INTO `sys_area` VALUES ('230800', '230800', '佳木斯市', '230000', '市', '', '0454', '154002', '中国,黑龙江省,佳木斯市', '130.361634', '46.809606', 'Jiamusi', '佳木斯', '0');
INSERT INTO `sys_area` VALUES ('230803', '230803', '向阳区', '230800', '区', '', '0454', '154002', '中国,黑龙江省,佳木斯市,向阳区', '130.365190', '46.807780', 'Xiangyang', '向阳', '0');
INSERT INTO `sys_area` VALUES ('230804', '230804', '前进区', '230800', '区', '', '0454', '154002', '中国,黑龙江省,佳木斯市,前进区', '130.374970', '46.814010', 'Qianjin', '前进', '0');
INSERT INTO `sys_area` VALUES ('230805', '230805', '东风区', '230800', '区', '', '0454', '154005', '中国,黑龙江省,佳木斯市,东风区', '130.403660', '46.822570', 'Dongfeng', '东风', '0');
INSERT INTO `sys_area` VALUES ('230811', '230811', '郊区', '230800', '区', '', '0454', '154004', '中国,黑龙江省,佳木斯市,郊区', '130.327310', '46.809580', 'Jiaoqu', '郊区', '0');
INSERT INTO `sys_area` VALUES ('230822', '230822', '桦南县', '230800', '区', '', '0454', '154400', '中国,黑龙江省,佳木斯市,桦南县', '130.553610', '46.239210', 'Huanan', '桦南', '0');
INSERT INTO `sys_area` VALUES ('230826', '230826', '桦川县', '230800', '区', '', '0454', '154300', '中国,黑龙江省,佳木斯市,桦川县', '130.718930', '47.022970', 'Huachuan', '桦川', '0');
INSERT INTO `sys_area` VALUES ('230828', '230828', '汤原县', '230800', '区', '', '0454', '154700', '中国,黑龙江省,佳木斯市,汤原县', '129.909660', '46.727550', 'Tangyuan', '汤原', '0');
INSERT INTO `sys_area` VALUES ('230833', '230833', '抚远县', '230800', '区', '', '0454', '156500', '中国,黑龙江省,佳木斯市,抚远县', '134.295950', '48.367940', 'Fuyuan', '抚远', '0');
INSERT INTO `sys_area` VALUES ('230881', '230881', '同江市', '230800', '区', '', '0454', '156400', '中国,黑龙江省,佳木斯市,同江市', '132.510950', '47.642110', 'Tongjiang', '同江', '0');
INSERT INTO `sys_area` VALUES ('230882', '230882', '富锦市', '230800', '区', '', '0454', '156100', '中国,黑龙江省,佳木斯市,富锦市', '132.037070', '47.251320', 'Fujin', '富锦', '0');
INSERT INTO `sys_area` VALUES ('230900', '230900', '七台河市', '230000', '市', '', '0464', '154600', '中国,黑龙江省,七台河市', '131.015584', '45.771266', 'Qitaihe', '七台河', '0');
INSERT INTO `sys_area` VALUES ('230902', '230902', '新兴区', '230900', '区', '', '0464', '154604', '中国,黑龙江省,七台河市,新兴区', '130.932120', '45.816240', 'Xinxing', '新兴', '0');
INSERT INTO `sys_area` VALUES ('230903', '230903', '桃山区', '230900', '区', '', '0464', '154600', '中国,黑龙江省,七台河市,桃山区', '131.017860', '45.767820', 'Taoshan', '桃山', '0');
INSERT INTO `sys_area` VALUES ('230904', '230904', '茄子河区', '230900', '区', '', '0464', '154622', '中国,黑龙江省,七台河市,茄子河区', '131.068070', '45.785190', 'Qiezihe', '茄子河', '0');
INSERT INTO `sys_area` VALUES ('230921', '230921', '勃利县', '230900', '区', '', '0464', '154500', '中国,黑龙江省,七台河市,勃利县', '130.591790', '45.755000', 'Boli', '勃利', '0');
INSERT INTO `sys_area` VALUES ('231000', '231000', '牡丹江市', '230000', '市', '', '0453', '157000', '中国,黑龙江省,牡丹江市', '129.618602', '44.582962', 'Mudanjiang', '牡丹江', '0');
INSERT INTO `sys_area` VALUES ('231002', '231002', '东安区', '231000', '区', '', '0453', '157000', '中国,黑龙江省,牡丹江市,东安区', '129.626650', '44.581330', 'Dong\'an', '东安', '0');
INSERT INTO `sys_area` VALUES ('231003', '231003', '阳明区', '231000', '区', '', '0453', '157013', '中国,黑龙江省,牡丹江市,阳明区', '129.635470', '44.596030', 'Yangming', '阳明', '0');
INSERT INTO `sys_area` VALUES ('231004', '231004', '爱民区', '231000', '区', '', '0453', '157009', '中国,黑龙江省,牡丹江市,爱民区', '129.590770', '44.596480', 'Aimin', '爱民', '0');
INSERT INTO `sys_area` VALUES ('231005', '231005', '西安区', '231000', '区', '', '0453', '157000', '中国,黑龙江省,牡丹江市,西安区', '129.616160', '44.577660', 'Xi\'an', '西安', '0');
INSERT INTO `sys_area` VALUES ('231024', '231024', '东宁县', '231000', '区', '', '0453', '157200', '中国,黑龙江省,牡丹江市,东宁县', '131.127930', '44.066100', 'Dongning', '东宁', '0');
INSERT INTO `sys_area` VALUES ('231025', '231025', '林口县', '231000', '区', '', '0453', '157600', '中国,黑龙江省,牡丹江市,林口县', '130.283930', '45.278090', 'Linkou', '林口', '0');
INSERT INTO `sys_area` VALUES ('231081', '231081', '绥芬河市', '231000', '区', '', '0453', '157300', '中国,黑龙江省,牡丹江市,绥芬河市', '131.151390', '44.412490', 'Suifenhe', '绥芬河', '0');
INSERT INTO `sys_area` VALUES ('231083', '231083', '海林市', '231000', '区', '', '0453', '157100', '中国,黑龙江省,牡丹江市,海林市', '129.381560', '44.590000', 'Hailin', '海林', '0');
INSERT INTO `sys_area` VALUES ('231084', '231084', '宁安市', '231000', '区', '', '0453', '157400', '中国,黑龙江省,牡丹江市,宁安市', '129.483030', '44.340160', 'Ning\'an', '宁安', '0');
INSERT INTO `sys_area` VALUES ('231085', '231085', '穆棱市', '231000', '区', '', '0453', '157500', '中国,黑龙江省,牡丹江市,穆棱市', '130.524650', '44.919000', 'Muling', '穆棱', '0');
INSERT INTO `sys_area` VALUES ('231100', '231100', '黑河市', '230000', '市', '', '0456', '164300', '中国,黑龙江省,黑河市', '127.499023', '50.249585', 'Heihe', '黑河', '0');
INSERT INTO `sys_area` VALUES ('231102', '231102', '爱辉区', '231100', '区', '', '0456', '164300', '中国,黑龙江省,黑河市,爱辉区', '127.500740', '50.252020', 'Aihui', '爱辉', '0');
INSERT INTO `sys_area` VALUES ('231121', '231121', '嫩江县', '231100', '区', '', '0456', '161400', '中国,黑龙江省,黑河市,嫩江县', '125.226070', '49.178440', 'Nenjiang', '嫩江', '0');
INSERT INTO `sys_area` VALUES ('231123', '231123', '逊克县', '231100', '区', '', '0456', '164400', '中国,黑龙江省,黑河市,逊克县', '128.478820', '49.579830', 'Xunke', '逊克', '0');
INSERT INTO `sys_area` VALUES ('231124', '231124', '孙吴县', '231100', '区', '', '0456', '164200', '中国,黑龙江省,黑河市,孙吴县', '127.335990', '49.425390', 'Sunwu', '孙吴', '0');
INSERT INTO `sys_area` VALUES ('231181', '231181', '北安市', '231100', '区', '', '0456', '164000', '中国,黑龙江省,黑河市,北安市', '126.481930', '48.238720', 'Bei\'an', '北安', '0');
INSERT INTO `sys_area` VALUES ('231182', '231182', '五大连池市', '231100', '区', '', '0456', '164100', '中国,黑龙江省,黑河市,五大连池市', '126.202940', '48.515070', 'Wudalianchi', '五大连池', '0');
INSERT INTO `sys_area` VALUES ('231200', '231200', '绥化市', '230000', '市', '', '0455', '152000', '中国,黑龙江省,绥化市', '126.992930', '46.637393', 'Suihua', '绥化', '0');
INSERT INTO `sys_area` VALUES ('231202', '231202', '北林区', '231200', '区', '', '0455', '152000', '中国,黑龙江省,绥化市,北林区', '126.985640', '46.637350', 'Beilin', '北林', '0');
INSERT INTO `sys_area` VALUES ('231221', '231221', '望奎县', '231200', '区', '', '0455', '152100', '中国,黑龙江省,绥化市,望奎县', '126.481870', '46.830790', 'Wangkui', '望奎', '0');
INSERT INTO `sys_area` VALUES ('231222', '231222', '兰西县', '231200', '区', '', '0455', '151500', '中国,黑龙江省,绥化市,兰西县', '126.289940', '46.252500', 'Lanxi', '兰西', '0');
INSERT INTO `sys_area` VALUES ('231223', '231223', '青冈县', '231200', '区', '', '0455', '151600', '中国,黑龙江省,绥化市,青冈县', '126.113250', '46.685340', 'Qinggang', '青冈', '0');
INSERT INTO `sys_area` VALUES ('231224', '231224', '庆安县', '231200', '区', '', '0455', '152400', '中国,黑龙江省,绥化市,庆安县', '127.507530', '46.880160', 'Qing\'an', '庆安', '0');
INSERT INTO `sys_area` VALUES ('231225', '231225', '明水县', '231200', '区', '', '0455', '151700', '中国,黑龙江省,绥化市,明水县', '125.905940', '47.173270', 'Mingshui', '明水', '0');
INSERT INTO `sys_area` VALUES ('231226', '231226', '绥棱县', '231200', '区', '', '0455', '152200', '中国,黑龙江省,绥化市,绥棱县', '127.115840', '47.242670', 'Suileng', '绥棱', '0');
INSERT INTO `sys_area` VALUES ('231281', '231281', '安达市', '231200', '区', '', '0455', '151400', '中国,黑龙江省,绥化市,安达市', '125.343750', '46.417700', 'Anda', '安达', '0');
INSERT INTO `sys_area` VALUES ('231282', '231282', '肇东市', '231200', '区', '', '0455', '151100', '中国,黑龙江省,绥化市,肇东市', '125.962430', '46.051310', 'Zhaodong', '肇东', '0');
INSERT INTO `sys_area` VALUES ('231283', '231283', '海伦市', '231200', '区', '', '0455', '152300', '中国,黑龙江省,绥化市,海伦市', '126.968200', '47.460930', 'Hailun', '海伦', '0');
INSERT INTO `sys_area` VALUES ('232700', '232700', '大兴安岭地区', '230000', '市', '', '0457', '165000', '中国,黑龙江省,大兴安岭地区', '124.711526', '52.335262', 'DaXingAnLing', '大兴安岭', '0');
INSERT INTO `sys_area` VALUES ('232701', '232701', '加格达奇区', '232700', '区', '', '0457', '165000', '中国,黑龙江省,大兴安岭地区,加格达奇区', '124.309540', '51.981440', 'Jiagedaqi', '加格达奇', '0');
INSERT INTO `sys_area` VALUES ('232702', '232702', '新林区', '232700', '区', '', '0457', '165000', '中国,黑龙江省,大兴安岭地区,新林区', '124.397983', '51.673410', 'Xinlin', '新林', '0');
INSERT INTO `sys_area` VALUES ('232703', '232703', '松岭区', '232700', '区', '', '0457', '165000', '中国,黑龙江省,大兴安岭地区,松岭区', '124.189713', '51.985453', 'Songling', '松岭', '0');
INSERT INTO `sys_area` VALUES ('232704', '232704', '呼中区', '232700', '区', '', '0457', '165000', '中国,黑龙江省,大兴安岭地区,呼中区', '123.600090', '52.033460', 'Huzhong', '呼中', '0');
INSERT INTO `sys_area` VALUES ('232721', '232721', '呼玛县', '232700', '区', '', '0457', '165100', '中国,黑龙江省,大兴安岭地区,呼玛县', '126.661740', '51.731120', 'Huma', '呼玛', '0');
INSERT INTO `sys_area` VALUES ('232722', '232722', '塔河县', '232700', '区', '', '0457', '165200', '中国,黑龙江省,大兴安岭地区,塔河县', '124.709990', '52.334310', 'Tahe', '塔河', '0');
INSERT INTO `sys_area` VALUES ('232723', '232723', '漠河县', '232700', '区', '', '0457', '165300', '中国,黑龙江省,大兴安岭地区,漠河县', '122.537590', '52.970030', 'Mohe', '漠河', '0');
INSERT INTO `sys_area` VALUES ('310000', '310000', '上海', '100000', '省', '', '', '', '中国,上海', '121.472644', '31.231706', 'Shanghai', '上海', '0');
INSERT INTO `sys_area` VALUES ('310100', '310100', '上海市', '310000', '市', '', '021', '200000', '中国,上海,上海市', '121.472644', '31.231706', 'Shanghai', '上海', '0');
INSERT INTO `sys_area` VALUES ('310101', '310101', '黄浦区', '310100', '区', '', '021', '200001', '中国,上海,上海市,黄浦区', '121.492950', '31.223370', 'Huangpu', '黄浦', '0');
INSERT INTO `sys_area` VALUES ('310104', '310104', '徐汇区', '310100', '区', '', '021', '200030', '中国,上海,上海市,徐汇区', '121.436760', '31.188310', 'Xuhui', '徐汇', '0');
INSERT INTO `sys_area` VALUES ('310105', '310105', '长宁区', '310100', '区', '', '021', '200050', '中国,上海,上海市,长宁区', '121.424620', '31.220360', 'Changning', '长宁', '0');
INSERT INTO `sys_area` VALUES ('310106', '310106', '静安区', '310100', '区', '', '021', '200040', '中国,上海,上海市,静安区', '121.444400', '31.228840', 'Jing\'an', '静安', '0');
INSERT INTO `sys_area` VALUES ('310107', '310107', '普陀区', '310100', '区', '', '021', '200333', '中国,上海,上海市,普陀区', '121.397030', '31.249510', 'Putuo', '普陀', '0');
INSERT INTO `sys_area` VALUES ('310108', '310108', '闸北区', '310100', '区', '', '021', '200070', '中国,上海,上海市,闸北区', '121.446360', '31.280750', 'Zhabei', '闸北', '0');
INSERT INTO `sys_area` VALUES ('310109', '310109', '虹口区', '310100', '区', '', '021', '200086', '中国,上海,上海市,虹口区', '121.481620', '31.277880', 'Hongkou', '虹口', '0');
INSERT INTO `sys_area` VALUES ('310110', '310110', '杨浦区', '310100', '区', '', '021', '200082', '中国,上海,上海市,杨浦区', '121.526000', '31.259500', 'Yangpu', '杨浦', '0');
INSERT INTO `sys_area` VALUES ('310112', '310112', '闵行区', '310100', '区', '', '021', '201100', '中国,上海,上海市,闵行区', '121.381620', '31.112460', 'Minhang', '闵行', '0');
INSERT INTO `sys_area` VALUES ('310113', '310113', '宝山区', '310100', '区', '', '021', '201900', '中国,上海,上海市,宝山区', '121.489100', '31.404500', 'Baoshan', '宝山', '0');
INSERT INTO `sys_area` VALUES ('310114', '310114', '嘉定区', '310100', '区', '', '021', '201800', '中国,上海,上海市,嘉定区', '121.265500', '31.374730', 'Jiading', '嘉定', '0');
INSERT INTO `sys_area` VALUES ('310115', '310115', '浦东新区', '310100', '区', '', '021', '200135', '中国,上海,上海市,浦东新区', '121.544700', '31.222490', 'Pudong', '浦东', '0');
INSERT INTO `sys_area` VALUES ('310116', '310116', '金山区', '310100', '区', '', '021', '200540', '中国,上海,上海市,金山区', '121.341640', '30.741630', 'Jinshan', '金山', '0');
INSERT INTO `sys_area` VALUES ('310117', '310117', '松江区', '310100', '区', '', '021', '201600', '中国,上海,上海市,松江区', '121.228790', '31.032220', 'Songjiang', '松江', '0');
INSERT INTO `sys_area` VALUES ('310118', '310118', '青浦区', '310100', '区', '', '021', '201700', '中国,上海,上海市,青浦区', '121.124170', '31.149740', 'Qingpu', '青浦', '0');
INSERT INTO `sys_area` VALUES ('310120', '310120', '奉贤区', '310100', '区', '', '021', '201400', '中国,上海,上海市,奉贤区', '121.474120', '30.917900', 'Fengxian', '奉贤', '0');
INSERT INTO `sys_area` VALUES ('310230', '310230', '崇明县', '310100', '区', '', '021', '202150', '中国,上海,上海市,崇明县', '121.397580', '31.622780', 'Chongming', '崇明', '0');
INSERT INTO `sys_area` VALUES ('320000', '320000', '江苏省', '100000', '省', '', '', '', '中国,江苏省', '118.767413', '32.041544', 'Jiangsu', '江苏', '0');
INSERT INTO `sys_area` VALUES ('320100', '320100', '南京市', '320000', '市', '', '025', '210008', '中国,江苏省,南京市', '118.767413', '32.041544', 'Nanjing', '南京', '0');
INSERT INTO `sys_area` VALUES ('320102', '320102', '玄武区', '320100', '区', '', '025', '210018', '中国,江苏省,南京市,玄武区', '118.797720', '32.048560', 'Xuanwu', '玄武', '0');
INSERT INTO `sys_area` VALUES ('320104', '320104', '秦淮区', '320100', '区', '', '025', '210001', '中国,江苏省,南京市,秦淮区', '118.798150', '32.011120', 'Qinhuai', '秦淮', '0');
INSERT INTO `sys_area` VALUES ('320105', '320105', '建邺区', '320100', '区', '', '025', '210004', '中国,江苏省,南京市,建邺区', '118.766410', '32.030960', 'Jianye', '建邺', '0');
INSERT INTO `sys_area` VALUES ('320106', '320106', '鼓楼区', '320100', '区', '', '025', '210009', '中国,江苏省,南京市,鼓楼区', '118.769740', '32.066320', 'Gulou', '鼓楼', '0');
INSERT INTO `sys_area` VALUES ('320111', '320111', '浦口区', '320100', '区', '', '025', '211800', '中国,江苏省,南京市,浦口区', '118.628020', '32.058810', 'Pukou', '浦口', '0');
INSERT INTO `sys_area` VALUES ('320113', '320113', '栖霞区', '320100', '区', '', '025', '210046', '中国,江苏省,南京市,栖霞区', '118.880640', '32.113520', 'Qixia', '栖霞', '0');
INSERT INTO `sys_area` VALUES ('320114', '320114', '雨花台区', '320100', '区', '', '025', '210012', '中国,江苏省,南京市,雨花台区', '118.779900', '31.992020', 'Yuhuatai', '雨花台', '0');
INSERT INTO `sys_area` VALUES ('320115', '320115', '江宁区', '320100', '区', '', '025', '211100', '中国,江苏省,南京市,江宁区', '118.839900', '31.952630', 'Jiangning', '江宁', '0');
INSERT INTO `sys_area` VALUES ('320116', '320116', '六合区', '320100', '区', '', '025', '211500', '中国,江苏省,南京市,六合区', '118.841300', '32.342220', 'Luhe', '六合', '0');
INSERT INTO `sys_area` VALUES ('320117', '320117', '溧水区', '320100', '区', '', '025', '211200', '中国,江苏省,南京市,溧水区', '119.028732', '31.653061', 'Lishui', '溧水', '0');
INSERT INTO `sys_area` VALUES ('320118', '320118', '高淳区', '320100', '区', '', '025', '211300', '中国,江苏省,南京市,高淳区', '118.875890', '31.327132', 'Gaochun', '高淳', '0');
INSERT INTO `sys_area` VALUES ('320200', '320200', '无锡市', '320000', '市', '', '0510', '214000', '中国,江苏省,无锡市', '120.301663', '31.574729', 'Wuxi', '无锡', '0');
INSERT INTO `sys_area` VALUES ('320202', '320202', '崇安区', '320200', '区', '', '0510', '214001', '中国,江苏省,无锡市,崇安区', '120.299750', '31.580020', 'Chong\'an', '崇安', '0');
INSERT INTO `sys_area` VALUES ('320203', '320203', '南长区', '320200', '区', '', '0510', '214021', '中国,江苏省,无锡市,南长区', '120.308730', '31.563590', 'Nanchang', '南长', '0');
INSERT INTO `sys_area` VALUES ('320204', '320204', '北塘区', '320200', '区', '', '0510', '214044', '中国,江苏省,无锡市,北塘区', '120.294050', '31.605920', 'Beitang', '北塘', '0');
INSERT INTO `sys_area` VALUES ('320205', '320205', '锡山区', '320200', '区', '', '0510', '214101', '中国,江苏省,无锡市,锡山区', '120.356990', '31.588600', 'Xishan', '锡山', '0');
INSERT INTO `sys_area` VALUES ('320206', '320206', '惠山区', '320200', '区', '', '0510', '214174', '中国,江苏省,无锡市,惠山区', '120.298490', '31.680880', 'Huishan', '惠山', '0');
INSERT INTO `sys_area` VALUES ('320211', '320211', '滨湖区', '320200', '区', '', '0510', '214123', '中国,江苏省,无锡市,滨湖区', '120.294610', '31.521620', 'Binhu', '滨湖', '0');
INSERT INTO `sys_area` VALUES ('320281', '320281', '江阴市', '320200', '区', '', '0510', '214431', '中国,江苏省,无锡市,江阴市', '120.285300', '31.919960', 'Jiangyin', '江阴', '0');
INSERT INTO `sys_area` VALUES ('320282', '320282', '宜兴市', '320200', '区', '', '0510', '214200', '中国,江苏省,无锡市,宜兴市', '119.823570', '31.339780', 'Yixing', '宜兴', '0');
INSERT INTO `sys_area` VALUES ('320300', '320300', '徐州市', '320000', '市', '', '0516', '221003', '中国,江苏省,徐州市', '117.184811', '34.261792', 'Xuzhou', '徐州', '0');
INSERT INTO `sys_area` VALUES ('320302', '320302', '鼓楼区', '320300', '区', '', '0516', '221005', '中国,江苏省,徐州市,鼓楼区', '117.185590', '34.288510', 'Gulou', '鼓楼', '0');
INSERT INTO `sys_area` VALUES ('320303', '320303', '云龙区', '320300', '区', '', '0516', '221007', '中国,江苏省,徐州市,云龙区', '117.230530', '34.248950', 'Yunlong', '云龙', '0');
INSERT INTO `sys_area` VALUES ('320305', '320305', '贾汪区', '320300', '区', '', '0516', '221003', '中国,江苏省,徐州市,贾汪区', '117.453460', '34.442640', 'Jiawang', '贾汪', '0');
INSERT INTO `sys_area` VALUES ('320311', '320311', '泉山区', '320300', '区', '', '0516', '221006', '中国,江苏省,徐州市,泉山区', '117.193780', '34.244180', 'Quanshan', '泉山', '0');
INSERT INTO `sys_area` VALUES ('320312', '320312', '铜山区', '320300', '区', '', '0516', '221106', '中国,江苏省,徐州市,铜山区', '117.183894', '34.192880', 'Tongshan', '铜山', '0');
INSERT INTO `sys_area` VALUES ('320321', '320321', '丰县', '320300', '区', '', '0516', '221700', '中国,江苏省,徐州市,丰县', '116.599570', '34.699720', 'Fengxian', '丰县', '0');
INSERT INTO `sys_area` VALUES ('320322', '320322', '沛县', '320300', '区', '', '0516', '221600', '中国,江苏省,徐州市,沛县', '116.937430', '34.721630', 'Peixian', '沛县', '0');
INSERT INTO `sys_area` VALUES ('320324', '320324', '睢宁县', '320300', '区', '', '0516', '221200', '中国,江苏省,徐州市,睢宁县', '117.941040', '33.912690', 'Suining', '睢宁', '0');
INSERT INTO `sys_area` VALUES ('320381', '320381', '新沂市', '320300', '区', '', '0516', '221400', '中国,江苏省,徐州市,新沂市', '118.354520', '34.369420', 'Xinyi', '新沂', '0');
INSERT INTO `sys_area` VALUES ('320382', '320382', '邳州市', '320300', '区', '', '0516', '221300', '中国,江苏省,徐州市,邳州市', '117.958580', '34.333290', 'Pizhou', '邳州', '0');
INSERT INTO `sys_area` VALUES ('320400', '320400', '常州市', '320000', '市', '', '0519', '213000', '中国,江苏省,常州市', '119.946973', '31.772752', 'Changzhou', '常州', '0');
INSERT INTO `sys_area` VALUES ('320402', '320402', '天宁区', '320400', '区', '', '0519', '213000', '中国,江苏省,常州市,天宁区', '119.951320', '31.752110', 'Tianning', '天宁', '0');
INSERT INTO `sys_area` VALUES ('320404', '320404', '钟楼区', '320400', '区', '', '0519', '213023', '中国,江苏省,常州市,钟楼区', '119.901780', '31.802210', 'Zhonglou', '钟楼', '0');
INSERT INTO `sys_area` VALUES ('320405', '320405', '戚墅堰区', '320400', '区', '', '0519', '213025', '中国,江苏省,常州市,戚墅堰区', '120.061060', '31.719560', 'Qishuyan', '戚墅堰', '0');
INSERT INTO `sys_area` VALUES ('320411', '320411', '新北区', '320400', '区', '', '0519', '213022', '中国,江苏省,常州市,新北区', '119.971310', '31.830460', 'Xinbei', '新北', '0');
INSERT INTO `sys_area` VALUES ('320412', '320412', '武进区', '320400', '区', '', '0519', '213100', '中国,江苏省,常州市,武进区', '119.942440', '31.700860', 'Wujin', '武进', '0');
INSERT INTO `sys_area` VALUES ('320481', '320481', '溧阳市', '320400', '区', '', '0519', '213300', '中国,江苏省,常州市,溧阳市', '119.483700', '31.415380', 'Liyang', '溧阳', '0');
INSERT INTO `sys_area` VALUES ('320482', '320482', '金坛市', '320400', '区', '', '0519', '213200', '中国,江苏省,常州市,金坛市', '119.577570', '31.740430', 'Jintan', '金坛', '0');
INSERT INTO `sys_area` VALUES ('320500', '320500', '苏州市', '320000', '市', '', '0512', '215002', '中国,江苏省,苏州市', '120.619585', '31.299379', 'Suzhou', '苏州', '0');
INSERT INTO `sys_area` VALUES ('320505', '320505', '虎丘区', '320500', '区', '', '0512', '215004', '中国,江苏省,苏州市,虎丘区', '120.573450', '31.295300', 'Huqiu', '虎丘', '0');
INSERT INTO `sys_area` VALUES ('320506', '320506', '吴中区', '320500', '区', '', '0512', '215128', '中国,江苏省,苏州市,吴中区', '120.632110', '31.262260', 'Wuzhong', '吴中', '0');
INSERT INTO `sys_area` VALUES ('320507', '320507', '相城区', '320500', '区', '', '0512', '215131', '中国,江苏省,苏州市,相城区', '120.642390', '31.368890', 'Xiangcheng', '相城', '0');
INSERT INTO `sys_area` VALUES ('320508', '320508', '姑苏区', '320500', '区', '', '0512', '215031', '中国,江苏省,苏州市,姑苏区', '120.619585', '31.299379', 'Gusu', '姑苏', '0');
INSERT INTO `sys_area` VALUES ('320509', '320509', '吴江区', '320500', '区', '', '0512', '215200', '中国,江苏省,苏州市,吴江区', '120.638317', '31.159815', 'Wujiang', '吴江', '0');
INSERT INTO `sys_area` VALUES ('320581', '320581', '常熟市', '320500', '区', '', '0512', '215500', '中国,江苏省,苏州市,常熟市', '120.752250', '31.653740', 'Changshu', '常熟', '0');
INSERT INTO `sys_area` VALUES ('320582', '320582', '张家港市', '320500', '区', '', '0512', '215600', '中国,江苏省,苏州市,张家港市', '120.555380', '31.875320', 'Zhangjiagang', '张家港', '0');
INSERT INTO `sys_area` VALUES ('320583', '320583', '昆山市', '320500', '区', '', '0512', '215300', '中国,江苏省,苏州市,昆山市', '120.980740', '31.384640', 'Kunshan', '昆山', '0');
INSERT INTO `sys_area` VALUES ('320585', '320585', '太仓市', '320500', '区', '', '0512', '215400', '中国,江苏省,苏州市,太仓市', '121.108910', '31.449700', 'Taicang', '太仓', '0');
INSERT INTO `sys_area` VALUES ('320600', '320600', '南通市', '320000', '市', '', '0513', '226001', '中国,江苏省,南通市', '120.864608', '32.016212', 'Nantong', '南通', '0');
INSERT INTO `sys_area` VALUES ('320602', '320602', '崇川区', '320600', '区', '', '0513', '226001', '中国,江苏省,南通市,崇川区', '120.857300', '32.009800', 'Chongchuan', '崇川', '0');
INSERT INTO `sys_area` VALUES ('320611', '320611', '港闸区', '320600', '区', '', '0513', '226001', '中国,江苏省,南通市,港闸区', '120.817780', '32.031630', 'Gangzha', '港闸', '0');
INSERT INTO `sys_area` VALUES ('320612', '320612', '通州区', '320600', '区', '', '0513', '226300', '中国,江苏省,南通市,通州区', '121.072930', '32.067600', 'Tongzhou', '通州', '0');
INSERT INTO `sys_area` VALUES ('320621', '320621', '海安县', '320600', '区', '', '0513', '226600', '中国,江苏省,南通市,海安县', '120.458520', '32.545140', 'Hai\'an', '海安', '0');
INSERT INTO `sys_area` VALUES ('320623', '320623', '如东县', '320600', '区', '', '0513', '226400', '中国,江苏省,南通市,如东县', '121.189420', '32.314390', 'Rudong', '如东', '0');
INSERT INTO `sys_area` VALUES ('320681', '320681', '启东市', '320600', '区', '', '0513', '226200', '中国,江苏省,南通市,启东市', '121.659850', '31.810830', 'Qidong', '启东', '0');
INSERT INTO `sys_area` VALUES ('320682', '320682', '如皋市', '320600', '区', '', '0513', '226500', '中国,江苏省,南通市,如皋市', '120.559690', '32.375970', 'Rugao', '如皋', '0');
INSERT INTO `sys_area` VALUES ('320684', '320684', '海门市', '320600', '区', '', '0513', '226100', '中国,江苏省,南通市,海门市', '121.169950', '31.894220', 'Haimen', '海门', '0');
INSERT INTO `sys_area` VALUES ('320700', '320700', '连云港市', '320000', '市', '', '0518', '222002', '中国,江苏省,连云港市', '119.178821', '34.600018', 'Lianyungang', '连云港', '0');
INSERT INTO `sys_area` VALUES ('320703', '320703', '连云区', '320700', '区', '', '0518', '222042', '中国,江苏省,连云港市,连云区', '119.373040', '34.752930', 'Lianyun', '连云', '0');
INSERT INTO `sys_area` VALUES ('320706', '320706', '海州区', '320700', '区', '', '0518', '222003', '中国,江苏省,连云港市,海州区', '119.131280', '34.569860', 'Haizhou', '海州', '0');
INSERT INTO `sys_area` VALUES ('320707', '320707', '赣榆区', '320700', '区', '', '0518', '222100', '中国,江苏省,连云港市,赣榆区', '119.128774', '34.839154', 'Ganyu', '赣榆', '0');
INSERT INTO `sys_area` VALUES ('320722', '320722', '东海县', '320700', '区', '', '0518', '222300', '中国,江苏省,连云港市,东海县', '118.771450', '34.542150', 'Donghai', '东海', '0');
INSERT INTO `sys_area` VALUES ('320723', '320723', '灌云县', '320700', '区', '', '0518', '222200', '中国,江苏省,连云港市,灌云县', '119.239250', '34.283910', 'Guanyun', '灌云', '0');
INSERT INTO `sys_area` VALUES ('320724', '320724', '灌南县', '320700', '区', '', '0518', '222500', '中国,江苏省,连云港市,灌南县', '119.356320', '34.090000', 'Guannan', '灌南', '0');
INSERT INTO `sys_area` VALUES ('320800', '320800', '淮安市', '320000', '市', '', '0517', '223001', '中国,江苏省,淮安市', '119.021265', '33.597506', 'Huai\'an', '淮安', '0');
INSERT INTO `sys_area` VALUES ('320802', '320802', '清河区', '320800', '区', '', '0517', '223001', '中国,江苏省,淮安市,清河区', '119.007780', '33.599490', 'Qinghe', '清河', '0');
INSERT INTO `sys_area` VALUES ('320803', '320803', '淮安区', '320800', '区', '', '0517', '223200', '中国,江苏省,淮安市,淮安区', '119.021265', '33.597506', 'Huai\'an', '淮安', '0');
INSERT INTO `sys_area` VALUES ('320804', '320804', '淮阴区', '320800', '区', '', '0517', '223300', '中国,江苏省,淮安市,淮阴区', '119.034850', '33.631710', 'Huaiyin', '淮阴', '0');
INSERT INTO `sys_area` VALUES ('320811', '320811', '清浦区', '320800', '区', '', '0517', '223002', '中国,江苏省,淮安市,清浦区', '119.026480', '33.552320', 'Qingpu', '清浦', '0');
INSERT INTO `sys_area` VALUES ('320826', '320826', '涟水县', '320800', '区', '', '0517', '223400', '中国,江苏省,淮安市,涟水县', '119.260830', '33.780940', 'Lianshui', '涟水', '0');
INSERT INTO `sys_area` VALUES ('320829', '320829', '洪泽县', '320800', '区', '', '0517', '223100', '中国,江苏省,淮安市,洪泽县', '118.873440', '33.294290', 'Hongze', '洪泽', '0');
INSERT INTO `sys_area` VALUES ('320830', '320830', '盱眙县', '320800', '区', '', '0517', '211700', '中国,江苏省,淮安市,盱眙县', '118.544950', '33.010860', 'Xuyi', '盱眙', '0');
INSERT INTO `sys_area` VALUES ('320831', '320831', '金湖县', '320800', '区', '', '0517', '211600', '中国,江苏省,淮安市,金湖县', '119.023070', '33.022190', 'Jinhu', '金湖', '0');
INSERT INTO `sys_area` VALUES ('320900', '320900', '盐城市', '320000', '市', '', '0515', '224005', '中国,江苏省,盐城市', '120.139998', '33.377631', 'Yancheng', '盐城', '0');
INSERT INTO `sys_area` VALUES ('320902', '320902', '亭湖区', '320900', '区', '', '0515', '224005', '中国,江苏省,盐城市,亭湖区', '120.165830', '33.378250', 'Tinghu', '亭湖', '0');
INSERT INTO `sys_area` VALUES ('320903', '320903', '盐都区', '320900', '区', '', '0515', '224055', '中国,江苏省,盐城市,盐都区', '120.154410', '33.337300', 'Yandu', '盐都', '0');
INSERT INTO `sys_area` VALUES ('320921', '320921', '响水县', '320900', '区', '', '0515', '224600', '中国,江苏省,盐城市,响水县', '119.569850', '34.205130', 'Xiangshui', '响水', '0');
INSERT INTO `sys_area` VALUES ('320922', '320922', '滨海县', '320900', '区', '', '0515', '224500', '中国,江苏省,盐城市,滨海县', '119.820580', '33.989720', 'Binhai', '滨海', '0');
INSERT INTO `sys_area` VALUES ('320923', '320923', '阜宁县', '320900', '区', '', '0515', '224400', '中国,江苏省,盐城市,阜宁县', '119.801750', '33.782280', 'Funing', '阜宁', '0');
INSERT INTO `sys_area` VALUES ('320924', '320924', '射阳县', '320900', '区', '', '0515', '224300', '中国,江苏省,盐城市,射阳县', '120.260430', '33.776360', 'Sheyang', '射阳', '0');
INSERT INTO `sys_area` VALUES ('320925', '320925', '建湖县', '320900', '区', '', '0515', '224700', '中国,江苏省,盐城市,建湖县', '119.798520', '33.472410', 'Jianhu', '建湖', '0');
INSERT INTO `sys_area` VALUES ('320981', '320981', '东台市', '320900', '区', '', '0515', '224200', '中国,江苏省,盐城市,东台市', '120.323760', '32.850780', 'Dongtai', '东台', '0');
INSERT INTO `sys_area` VALUES ('320982', '320982', '大丰市', '320900', '区', '', '0515', '224100', '中国,江苏省,盐城市,大丰市', '120.465940', '33.198930', 'Dafeng', '大丰', '0');
INSERT INTO `sys_area` VALUES ('321000', '321000', '扬州市', '320000', '市', '', '0514', '225002', '中国,江苏省,扬州市', '119.421003', '32.393159', 'Yangzhou', '扬州', '0');
INSERT INTO `sys_area` VALUES ('321002', '321002', '广陵区', '321000', '区', '', '0514', '225002', '中国,江苏省,扬州市,广陵区', '119.431860', '32.394720', 'Guangling', '广陵', '0');
INSERT INTO `sys_area` VALUES ('321003', '321003', '邗江区', '321000', '区', '', '0514', '225002', '中国,江苏省,扬州市,邗江区', '119.398160', '32.376500', 'Hanjiang', '邗江', '0');
INSERT INTO `sys_area` VALUES ('321012', '321012', '江都区', '321000', '区', '', '0514', '225200', '中国,江苏省,扬州市,江都区', '119.567481', '32.426564', 'Jiangdu', '江都', '0');
INSERT INTO `sys_area` VALUES ('321023', '321023', '宝应县', '321000', '区', '', '0514', '225800', '中国,江苏省,扬州市,宝应县', '119.312130', '33.235490', 'Baoying', '宝应', '0');
INSERT INTO `sys_area` VALUES ('321081', '321081', '仪征市', '321000', '区', '', '0514', '211400', '中国,江苏省,扬州市,仪征市', '119.184320', '32.271970', 'Yizheng', '仪征', '0');
INSERT INTO `sys_area` VALUES ('321084', '321084', '高邮市', '321000', '区', '', '0514', '225600', '中国,江苏省,扬州市,高邮市', '119.459650', '32.781350', 'Gaoyou', '高邮', '0');
INSERT INTO `sys_area` VALUES ('321100', '321100', '镇江市', '320000', '市', '', '0511', '212004', '中国,江苏省,镇江市', '119.452753', '32.204402', 'Zhenjiang', '镇江', '0');
INSERT INTO `sys_area` VALUES ('321102', '321102', '京口区', '321100', '区', '', '0511', '212003', '中国,江苏省,镇江市,京口区', '119.469470', '32.198090', 'Jingkou', '京口', '0');
INSERT INTO `sys_area` VALUES ('321111', '321111', '润州区', '321100', '区', '', '0511', '212005', '中国,江苏省,镇江市,润州区', '119.411340', '32.195230', 'Runzhou', '润州', '0');
INSERT INTO `sys_area` VALUES ('321112', '321112', '丹徒区', '321100', '区', '', '0511', '212028', '中国,江苏省,镇江市,丹徒区', '119.433830', '32.131830', 'Dantu', '丹徒', '0');
INSERT INTO `sys_area` VALUES ('321181', '321181', '丹阳市', '321100', '区', '', '0511', '212300', '中国,江苏省,镇江市,丹阳市', '119.575250', '31.991210', 'Danyang', '丹阳', '0');
INSERT INTO `sys_area` VALUES ('321182', '321182', '扬中市', '321100', '区', '', '0511', '212200', '中国,江苏省,镇江市,扬中市', '119.797180', '32.236300', 'Yangzhong', '扬中', '0');
INSERT INTO `sys_area` VALUES ('321183', '321183', '句容市', '321100', '区', '', '0511', '212400', '中国,江苏省,镇江市,句容市', '119.164820', '31.955910', 'Jurong', '句容', '0');
INSERT INTO `sys_area` VALUES ('321200', '321200', '泰州市', '320000', '市', '', '0523', '225300', '中国,江苏省,泰州市', '119.915176', '32.484882', 'Taizhou', '泰州', '0');
INSERT INTO `sys_area` VALUES ('321202', '321202', '海陵区', '321200', '区', '', '0523', '225300', '中国,江苏省,泰州市,海陵区', '119.919420', '32.491010', 'Hailing', '海陵', '0');
INSERT INTO `sys_area` VALUES ('321203', '321203', '高港区', '321200', '区', '', '0523', '225321', '中国,江苏省,泰州市,高港区', '119.880890', '32.318330', 'Gaogang', '高港', '0');
INSERT INTO `sys_area` VALUES ('321204', '321204', '姜堰区', '321200', '区', '', '0523', '225500', '中国,江苏省,泰州市,姜堰区', '120.148208', '32.508483', 'Jiangyan', '姜堰', '0');
INSERT INTO `sys_area` VALUES ('321281', '321281', '兴化市', '321200', '区', '', '0523', '225700', '中国,江苏省,泰州市,兴化市', '119.852380', '32.909440', 'Xinghua', '兴化', '0');
INSERT INTO `sys_area` VALUES ('321282', '321282', '靖江市', '321200', '区', '', '0523', '214500', '中国,江苏省,泰州市,靖江市', '120.272910', '32.015950', 'Jingjiang', '靖江', '0');
INSERT INTO `sys_area` VALUES ('321283', '321283', '泰兴市', '321200', '区', '', '0523', '225400', '中国,江苏省,泰州市,泰兴市', '120.051940', '32.171870', 'Taixing', '泰兴', '0');
INSERT INTO `sys_area` VALUES ('321300', '321300', '宿迁市', '320000', '市', '', '0527', '223800', '中国,江苏省,宿迁市', '118.293328', '33.945154', 'Suqian', '宿迁', '0');
INSERT INTO `sys_area` VALUES ('321302', '321302', '宿城区', '321300', '区', '', '0527', '223800', '中国,江苏省,宿迁市,宿城区', '118.291410', '33.942190', 'Sucheng', '宿城', '0');
INSERT INTO `sys_area` VALUES ('321311', '321311', '宿豫区', '321300', '区', '', '0527', '223800', '中国,江苏省,宿迁市,宿豫区', '118.329220', '33.946730', 'Suyu', '宿豫', '0');
INSERT INTO `sys_area` VALUES ('321322', '321322', '沭阳县', '321300', '区', '', '0527', '223600', '中国,江苏省,宿迁市,沭阳县', '118.768730', '34.114460', 'Shuyang', '沭阳', '0');
INSERT INTO `sys_area` VALUES ('321323', '321323', '泗阳县', '321300', '区', '', '0527', '223700', '中国,江苏省,宿迁市,泗阳县', '118.703300', '33.720960', 'Siyang', '泗阳', '0');
INSERT INTO `sys_area` VALUES ('321324', '321324', '泗洪县', '321300', '区', '', '0527', '223900', '中国,江苏省,宿迁市,泗洪县', '118.217160', '33.459960', 'Sihong', '泗洪', '0');
INSERT INTO `sys_area` VALUES ('330000', '330000', '浙江省', '100000', '省', '', '', '', '中国,浙江省', '120.153576', '30.287459', 'Zhejiang', '浙江', '0');
INSERT INTO `sys_area` VALUES ('330100', '330100', '杭州市', '330000', '市', '', '0571', '310026', '中国,浙江省,杭州市', '120.153576', '30.287459', 'Hangzhou', '杭州', '0');
INSERT INTO `sys_area` VALUES ('330102', '330102', '上城区', '330100', '区', '', '0571', '310002', '中国,浙江省,杭州市,上城区', '120.169220', '30.242550', 'Shangcheng', '上城', '0');
INSERT INTO `sys_area` VALUES ('330103', '330103', '下城区', '330100', '区', '', '0571', '310006', '中国,浙江省,杭州市,下城区', '120.180960', '30.281530', 'Xiacheng', '下城', '0');
INSERT INTO `sys_area` VALUES ('330104', '330104', '江干区', '330100', '区', '', '0571', '310016', '中国,浙江省,杭州市,江干区', '120.205170', '30.257200', 'Jianggan', '江干', '0');
INSERT INTO `sys_area` VALUES ('330105', '330105', '拱墅区', '330100', '区', '', '0571', '310011', '中国,浙江省,杭州市,拱墅区', '120.142090', '30.319680', 'Gongshu', '拱墅', '0');
INSERT INTO `sys_area` VALUES ('330106', '330106', '西湖区', '330100', '区', '', '0571', '310013', '中国,浙江省,杭州市,西湖区', '120.129790', '30.259490', 'Xihu', '西湖', '0');
INSERT INTO `sys_area` VALUES ('330108', '330108', '滨江区', '330100', '区', '', '0571', '310051', '中国,浙江省,杭州市,滨江区', '120.211940', '30.208350', 'Binjiang', '滨江', '0');
INSERT INTO `sys_area` VALUES ('330109', '330109', '萧山区', '330100', '区', '', '0571', '311200', '中国,浙江省,杭州市,萧山区', '120.264520', '30.185050', 'Xiaoshan', '萧山', '0');
INSERT INTO `sys_area` VALUES ('330110', '330110', '余杭区', '330100', '区', '', '0571', '311100', '中国,浙江省,杭州市,余杭区', '120.299860', '30.418290', 'Yuhang', '余杭', '0');
INSERT INTO `sys_area` VALUES ('330122', '330122', '桐庐县', '330100', '区', '', '0571', '311500', '中国,浙江省,杭州市,桐庐县', '119.688530', '29.797790', 'Tonglu', '桐庐', '0');
INSERT INTO `sys_area` VALUES ('330127', '330127', '淳安县', '330100', '区', '', '0571', '311700', '中国,浙江省,杭州市,淳安县', '119.042570', '29.609880', 'Chun\'an', '淳安', '0');
INSERT INTO `sys_area` VALUES ('330182', '330182', '建德市', '330100', '区', '', '0571', '311600', '中国,浙江省,杭州市,建德市', '119.281580', '29.476030', 'Jiande', '建德', '0');
INSERT INTO `sys_area` VALUES ('330183', '330183', '富阳区', '330100', '区', '', '0571', '311400', '中国,浙江省,杭州市,富阳区', '119.960410', '30.048780', 'Fuyang', '富阳', '0');
INSERT INTO `sys_area` VALUES ('330185', '330185', '临安市', '330100', '区', '', '0571', '311300', '中国,浙江省,杭州市,临安市', '119.724730', '30.234470', 'Lin\'an', '临安', '0');
INSERT INTO `sys_area` VALUES ('330200', '330200', '宁波市', '330000', '市', '', '0574', '315000', '中国,浙江省,宁波市', '121.549792', '29.868388', 'Ningbo', '宁波', '0');
INSERT INTO `sys_area` VALUES ('330203', '330203', '海曙区', '330200', '区', '', '0574', '315000', '中国,浙江省,宁波市,海曙区', '121.551060', '29.859770', 'Haishu', '海曙', '0');
INSERT INTO `sys_area` VALUES ('330204', '330204', '江东区', '330200', '区', '', '0574', '315040', '中国,浙江省,宁波市,江东区', '121.570280', '29.867010', 'Jiangdong', '江东', '0');
INSERT INTO `sys_area` VALUES ('330205', '330205', '江北区', '330200', '区', '', '0574', '315020', '中国,浙江省,宁波市,江北区', '121.556810', '29.887760', 'Jiangbei', '江北', '0');
INSERT INTO `sys_area` VALUES ('330206', '330206', '北仑区', '330200', '区', '', '0574', '315800', '中国,浙江省,宁波市,北仑区', '121.844080', '29.900690', 'Beilun', '北仑', '0');
INSERT INTO `sys_area` VALUES ('330211', '330211', '镇海区', '330200', '区', '', '0574', '315200', '中国,浙江省,宁波市,镇海区', '121.716150', '29.948930', 'Zhenhai', '镇海', '0');
INSERT INTO `sys_area` VALUES ('330212', '330212', '鄞州区', '330200', '区', '', '0574', '315100', '中国,浙江省,宁波市,鄞州区', '121.547540', '29.816140', 'Yinzhou', '鄞州', '0');
INSERT INTO `sys_area` VALUES ('330225', '330225', '象山县', '330200', '区', '', '0574', '315700', '中国,浙江省,宁波市,象山县', '121.869170', '29.477580', 'Xiangshan', '象山', '0');
INSERT INTO `sys_area` VALUES ('330226', '330226', '宁海县', '330200', '区', '', '0574', '315600', '中国,浙江省,宁波市,宁海县', '121.430720', '29.288900', 'Ninghai', '宁海', '0');
INSERT INTO `sys_area` VALUES ('330281', '330281', '余姚市', '330200', '区', '', '0574', '315400', '中国,浙江省,宁波市,余姚市', '121.153410', '30.038670', 'Yuyao', '余姚', '0');
INSERT INTO `sys_area` VALUES ('330282', '330282', '慈溪市', '330200', '区', '', '0574', '315300', '中国,浙江省,宁波市,慈溪市', '121.266410', '30.169590', 'Cixi', '慈溪', '0');
INSERT INTO `sys_area` VALUES ('330283', '330283', '奉化市', '330200', '区', '', '0574', '315500', '中国,浙江省,宁波市,奉化市', '121.410030', '29.655370', 'Fenghua', '奉化', '0');
INSERT INTO `sys_area` VALUES ('330300', '330300', '温州市', '330000', '市', '', '0577', '325000', '中国,浙江省,温州市', '120.672111', '28.000575', 'Wenzhou', '温州', '0');
INSERT INTO `sys_area` VALUES ('330302', '330302', '鹿城区', '330300', '区', '', '0577', '325000', '中国,浙江省,温州市,鹿城区', '120.655050', '28.014890', 'Lucheng', '鹿城', '0');
INSERT INTO `sys_area` VALUES ('330303', '330303', '龙湾区', '330300', '区', '', '0577', '325013', '中国,浙江省,温州市,龙湾区', '120.830530', '27.912840', 'Longwan', '龙湾', '0');
INSERT INTO `sys_area` VALUES ('330304', '330304', '瓯海区', '330300', '区', '', '0577', '325005', '中国,浙江省,温州市,瓯海区', '120.637510', '28.007140', 'Ouhai', '瓯海', '0');
INSERT INTO `sys_area` VALUES ('330322', '330322', '洞头县', '330300', '区', '', '0577', '325700', '中国,浙江省,温州市,洞头县', '121.156060', '27.836340', 'Dongtou', '洞头', '0');
INSERT INTO `sys_area` VALUES ('330324', '330324', '永嘉县', '330300', '区', '', '0577', '325100', '中国,浙江省,温州市,永嘉县', '120.693170', '28.154560', 'Yongjia', '永嘉', '0');
INSERT INTO `sys_area` VALUES ('330326', '330326', '平阳县', '330300', '区', '', '0577', '325400', '中国,浙江省,温州市,平阳县', '120.565060', '27.662450', 'Pingyang', '平阳', '0');
INSERT INTO `sys_area` VALUES ('330327', '330327', '苍南县', '330300', '区', '', '0577', '325800', '中国,浙江省,温州市,苍南县', '120.426080', '27.517390', 'Cangnan', '苍南', '0');
INSERT INTO `sys_area` VALUES ('330328', '330328', '文成县', '330300', '区', '', '0577', '325300', '中国,浙江省,温州市,文成县', '120.090630', '27.786780', 'Wencheng', '文成', '0');
INSERT INTO `sys_area` VALUES ('330329', '330329', '泰顺县', '330300', '区', '', '0577', '325500', '中国,浙江省,温州市,泰顺县', '119.718200', '27.556940', 'Taishun', '泰顺', '0');
INSERT INTO `sys_area` VALUES ('330381', '330381', '瑞安市', '330300', '区', '', '0577', '325200', '中国,浙江省,温州市,瑞安市', '120.654660', '27.780410', 'Rui\'an', '瑞安', '0');
INSERT INTO `sys_area` VALUES ('330382', '330382', '乐清市', '330300', '区', '', '0577', '325600', '中国,浙江省,温州市,乐清市', '120.961700', '28.124040', 'Yueqing', '乐清', '0');
INSERT INTO `sys_area` VALUES ('330400', '330400', '嘉兴市', '330000', '市', '', '0573', '314000', '中国,浙江省,嘉兴市', '120.750865', '30.762653', 'Jiaxing', '嘉兴', '0');
INSERT INTO `sys_area` VALUES ('330402', '330402', '南湖区', '330400', '区', '', '0573', '314051', '中国,浙江省,嘉兴市,南湖区', '120.785240', '30.748650', 'Nanhu', '南湖', '0');
INSERT INTO `sys_area` VALUES ('330411', '330411', '秀洲区', '330400', '区', '', '0573', '314031', '中国,浙江省,嘉兴市,秀洲区', '120.708670', '30.764540', 'Xiuzhou', '秀洲', '0');
INSERT INTO `sys_area` VALUES ('330421', '330421', '嘉善县', '330400', '区', '', '0573', '314100', '中国,浙江省,嘉兴市,嘉善县', '120.925590', '30.829930', 'Jiashan', '嘉善', '0');
INSERT INTO `sys_area` VALUES ('330424', '330424', '海盐县', '330400', '区', '', '0573', '314300', '中国,浙江省,嘉兴市,海盐县', '120.945700', '30.525470', 'Haiyan', '海盐', '0');
INSERT INTO `sys_area` VALUES ('330481', '330481', '海宁市', '330400', '区', '', '0573', '314400', '中国,浙江省,嘉兴市,海宁市', '120.681300', '30.509700', 'Haining', '海宁', '0');
INSERT INTO `sys_area` VALUES ('330482', '330482', '平湖市', '330400', '区', '', '0573', '314200', '中国,浙江省,嘉兴市,平湖市', '121.021660', '30.696180', 'Pinghu', '平湖', '0');
INSERT INTO `sys_area` VALUES ('330483', '330483', '桐乡市', '330400', '区', '', '0573', '314500', '中国,浙江省,嘉兴市,桐乡市', '120.564850', '30.630200', 'Tongxiang', '桐乡', '0');
INSERT INTO `sys_area` VALUES ('330500', '330500', '湖州市', '330000', '市', '', '0572', '313000', '中国,浙江省,湖州市', '120.102398', '30.867198', 'Huzhou', '湖州', '0');
INSERT INTO `sys_area` VALUES ('330502', '330502', '吴兴区', '330500', '区', '', '0572', '313000', '中国,浙江省,湖州市,吴兴区', '120.125480', '30.857520', 'Wuxing', '吴兴', '0');
INSERT INTO `sys_area` VALUES ('330503', '330503', '南浔区', '330500', '区', '', '0572', '313009', '中国,浙江省,湖州市,南浔区', '120.420380', '30.866860', 'Nanxun', '南浔', '0');
INSERT INTO `sys_area` VALUES ('330521', '330521', '德清县', '330500', '区', '', '0572', '313200', '中国,浙江省,湖州市,德清县', '119.978360', '30.533690', 'Deqing', '德清', '0');
INSERT INTO `sys_area` VALUES ('330522', '330522', '长兴县', '330500', '区', '', '0572', '313100', '中国,浙江省,湖州市,长兴县', '119.907830', '31.006060', 'Changxing', '长兴', '0');
INSERT INTO `sys_area` VALUES ('330523', '330523', '安吉县', '330500', '区', '', '0572', '313300', '中国,浙江省,湖州市,安吉县', '119.681580', '30.637980', 'Anji', '安吉', '0');
INSERT INTO `sys_area` VALUES ('330600', '330600', '绍兴市', '330000', '市', '', '0575', '312000', '中国,浙江省,绍兴市', '120.582112', '29.997117', 'Shaoxing', '绍兴', '0');
INSERT INTO `sys_area` VALUES ('330602', '330602', '越城区', '330600', '区', '', '0575', '312000', '中国,浙江省,绍兴市,越城区', '120.581900', '29.988950', 'Yuecheng', '越城', '0');
INSERT INTO `sys_area` VALUES ('330603', '330603', '柯桥区', '330600', '区', '', '0575', '312030', '中国,浙江省,绍兴市,柯桥区', '120.492736', '30.087630', 'Keqiao ', '柯桥', '0');
INSERT INTO `sys_area` VALUES ('330604', '330604', '上虞区', '330600', '区', '', '0575', '312300', '中国,浙江省,绍兴市,上虞区', '120.476075', '30.078038', 'Shangyu', '上虞', '0');
INSERT INTO `sys_area` VALUES ('330624', '330624', '新昌县', '330600', '区', '', '0575', '312500', '中国,浙江省,绍兴市,新昌县', '120.904350', '29.499910', 'Xinchang', '新昌', '0');
INSERT INTO `sys_area` VALUES ('330681', '330681', '诸暨市', '330600', '区', '', '0575', '311800', '中国,浙江省,绍兴市,诸暨市', '120.236290', '29.713580', 'Zhuji', '诸暨', '0');
INSERT INTO `sys_area` VALUES ('330683', '330683', '嵊州市', '330600', '区', '', '0575', '312400', '中国,浙江省,绍兴市,嵊州市', '120.821740', '29.588540', 'Shengzhou', '嵊州', '0');
INSERT INTO `sys_area` VALUES ('330700', '330700', '金华市', '330000', '市', '', '0579', '321000', '中国,浙江省,金华市', '119.649506', '29.089524', 'Jinhua', '金华', '0');
INSERT INTO `sys_area` VALUES ('330702', '330702', '婺城区', '330700', '区', '', '0579', '321000', '中国,浙江省,金华市,婺城区', '119.571350', '29.095210', 'Wucheng', '婺城', '0');
INSERT INTO `sys_area` VALUES ('330703', '330703', '金东区', '330700', '区', '', '0579', '321000', '中国,浙江省,金华市,金东区', '119.693020', '29.099100', 'Jindong', '金东', '0');
INSERT INTO `sys_area` VALUES ('330723', '330723', '武义县', '330700', '区', '', '0579', '321200', '中国,浙江省,金华市,武义县', '119.816400', '28.893310', 'Wuyi', '武义', '0');
INSERT INTO `sys_area` VALUES ('330726', '330726', '浦江县', '330700', '区', '', '0579', '322200', '中国,浙江省,金华市,浦江县', '119.891810', '29.453530', 'Pujiang', '浦江', '0');
INSERT INTO `sys_area` VALUES ('330727', '330727', '磐安县', '330700', '区', '', '0579', '322300', '中国,浙江省,金华市,磐安县', '120.450220', '29.057330', 'Pan\'an', '磐安', '0');
INSERT INTO `sys_area` VALUES ('330781', '330781', '兰溪市', '330700', '区', '', '0579', '321100', '中国,浙江省,金华市,兰溪市', '119.459650', '29.208410', 'Lanxi', '兰溪', '0');
INSERT INTO `sys_area` VALUES ('330782', '330782', '义乌市', '330700', '区', '', '0579', '322000', '中国,浙江省,金华市,义乌市', '120.074400', '29.305580', 'Yiwu', '义乌', '0');
INSERT INTO `sys_area` VALUES ('330783', '330783', '东阳市', '330700', '区', '', '0579', '322100', '中国,浙江省,金华市,东阳市', '120.241850', '29.289420', 'Dongyang', '东阳', '0');
INSERT INTO `sys_area` VALUES ('330784', '330784', '永康市', '330700', '区', '', '0579', '321300', '中国,浙江省,金华市,永康市', '120.047270', '28.888440', 'Yongkang', '永康', '0');
INSERT INTO `sys_area` VALUES ('330800', '330800', '衢州市', '330000', '市', '', '0570', '324002', '中国,浙江省,衢州市', '118.872630', '28.941708', 'Quzhou', '衢州', '0');
INSERT INTO `sys_area` VALUES ('330802', '330802', '柯城区', '330800', '区', '', '0570', '324100', '中国,浙江省,衢州市,柯城区', '118.871090', '28.968580', 'Kecheng', '柯城', '0');
INSERT INTO `sys_area` VALUES ('330803', '330803', '衢江区', '330800', '区', '', '0570', '324022', '中国,浙江省,衢州市,衢江区', '118.959800', '28.979770', 'Qujiang', '衢江', '0');
INSERT INTO `sys_area` VALUES ('330822', '330822', '常山县', '330800', '区', '', '0570', '324200', '中国,浙江省,衢州市,常山县', '118.510250', '28.901910', 'Changshan', '常山', '0');
INSERT INTO `sys_area` VALUES ('330824', '330824', '开化县', '330800', '区', '', '0570', '324300', '中国,浙江省,衢州市,开化县', '118.416160', '29.137850', 'Kaihua', '开化', '0');
INSERT INTO `sys_area` VALUES ('330825', '330825', '龙游县', '330800', '区', '', '0570', '324400', '中国,浙江省,衢州市,龙游县', '119.172210', '29.028230', 'Longyou', '龙游', '0');
INSERT INTO `sys_area` VALUES ('330881', '330881', '江山市', '330800', '区', '', '0570', '324100', '中国,浙江省,衢州市,江山市', '118.626740', '28.738600', 'Jiangshan', '江山', '0');
INSERT INTO `sys_area` VALUES ('330900', '330900', '舟山市', '330000', '市', '', '0580', '316000', '中国,浙江省,舟山市', '122.106863', '30.016028', 'Zhoushan', '舟山', '0');
INSERT INTO `sys_area` VALUES ('330902', '330902', '定海区', '330900', '区', '', '0580', '316000', '中国,浙江省,舟山市,定海区', '122.106770', '30.019850', 'Dinghai', '定海', '0');
INSERT INTO `sys_area` VALUES ('330903', '330903', '普陀区', '330900', '区', '', '0580', '316100', '中国,浙江省,舟山市,普陀区', '122.302780', '29.949080', 'Putuo', '普陀', '0');
INSERT INTO `sys_area` VALUES ('330921', '330921', '岱山县', '330900', '区', '', '0580', '316200', '中国,浙江省,舟山市,岱山县', '122.204860', '30.243850', 'Daishan', '岱山', '0');
INSERT INTO `sys_area` VALUES ('330922', '330922', '嵊泗县', '330900', '区', '', '0580', '202450', '中国,浙江省,舟山市,嵊泗县', '122.451290', '30.726780', 'Shengsi', '嵊泗', '0');
INSERT INTO `sys_area` VALUES ('331000', '331000', '台州市', '330000', '市', '', '0576', '318000', '中国,浙江省,台州市', '121.428599', '28.661378', 'Taizhou', '台州', '0');
INSERT INTO `sys_area` VALUES ('331002', '331002', '椒江区', '331000', '区', '', '0576', '318000', '中国,浙江省,台州市,椒江区', '121.442870', '28.673010', 'Jiaojiang', '椒江', '0');
INSERT INTO `sys_area` VALUES ('331003', '331003', '黄岩区', '331000', '区', '', '0576', '318020', '中国,浙江省,台州市,黄岩区', '121.258910', '28.650770', 'Huangyan', '黄岩', '0');
INSERT INTO `sys_area` VALUES ('331004', '331004', '路桥区', '331000', '区', '', '0576', '318050', '中国,浙江省,台州市,路桥区', '121.373810', '28.580160', 'Luqiao', '路桥', '0');
INSERT INTO `sys_area` VALUES ('331021', '331021', '玉环县', '331000', '区', '', '0576', '317600', '中国,浙江省,台州市,玉环县', '121.232420', '28.136370', 'Yuhuan', '玉环', '0');
INSERT INTO `sys_area` VALUES ('331022', '331022', '三门县', '331000', '区', '', '0576', '317100', '中国,浙江省,台州市,三门县', '121.393700', '29.105100', 'Sanmen', '三门', '0');
INSERT INTO `sys_area` VALUES ('331023', '331023', '天台县', '331000', '区', '', '0576', '317200', '中国,浙江省,台州市,天台县', '121.008480', '29.142900', 'Tiantai', '天台', '0');
INSERT INTO `sys_area` VALUES ('331024', '331024', '仙居县', '331000', '区', '', '0576', '317300', '中国,浙江省,台州市,仙居县', '120.728720', '28.846720', 'Xianju', '仙居', '0');
INSERT INTO `sys_area` VALUES ('331081', '331081', '温岭市', '331000', '区', '', '0576', '317500', '中国,浙江省,台州市,温岭市', '121.385950', '28.371760', 'Wenling', '温岭', '0');
INSERT INTO `sys_area` VALUES ('331082', '331082', '临海市', '331000', '区', '', '0576', '317000', '中国,浙江省,台州市,临海市', '121.138850', '28.856030', 'Linhai', '临海', '0');
INSERT INTO `sys_area` VALUES ('331100', '331100', '丽水市', '330000', '市', '', '0578', '323000', '中国,浙江省,丽水市', '119.921786', '28.451993', 'Lishui', '丽水', '0');
INSERT INTO `sys_area` VALUES ('331102', '331102', '莲都区', '331100', '区', '', '0578', '323000', '中国,浙江省,丽水市,莲都区', '119.912700', '28.445830', 'Liandu', '莲都', '0');
INSERT INTO `sys_area` VALUES ('331121', '331121', '青田县', '331100', '区', '', '0578', '323900', '中国,浙江省,丽水市,青田县', '120.290280', '28.138970', 'Qingtian', '青田', '0');
INSERT INTO `sys_area` VALUES ('331122', '331122', '缙云县', '331100', '区', '', '0578', '321400', '中国,浙江省,丽水市,缙云县', '120.090360', '28.659440', 'Jinyun', '缙云', '0');
INSERT INTO `sys_area` VALUES ('331123', '331123', '遂昌县', '331100', '区', '', '0578', '323300', '中国,浙江省,丽水市,遂昌县', '119.276060', '28.592910', 'Suichang', '遂昌', '0');
INSERT INTO `sys_area` VALUES ('331124', '331124', '松阳县', '331100', '区', '', '0578', '323400', '中国,浙江省,丽水市,松阳县', '119.481990', '28.449400', 'Songyang', '松阳', '0');
INSERT INTO `sys_area` VALUES ('331125', '331125', '云和县', '331100', '区', '', '0578', '323600', '中国,浙江省,丽水市,云和县', '119.572870', '28.116430', 'Yunhe', '云和', '0');
INSERT INTO `sys_area` VALUES ('331126', '331126', '庆元县', '331100', '区', '', '0578', '323800', '中国,浙江省,丽水市,庆元县', '119.062560', '27.618420', 'Qingyuan', '庆元', '0');
INSERT INTO `sys_area` VALUES ('331127', '331127', '景宁畲族自治县', '331100', '区', '', '0578', '323500', '中国,浙江省,丽水市,景宁畲族自治县', '119.638390', '27.973930', 'Jingning', '景宁', '0');
INSERT INTO `sys_area` VALUES ('331181', '331181', '龙泉市', '331100', '区', '', '0578', '323700', '中国,浙江省,丽水市,龙泉市', '119.141630', '28.074300', 'Longquan', '龙泉', '0');
INSERT INTO `sys_area` VALUES ('331200', '331200', '舟山群岛新区', '330000', '市', '', '0580', '316000', '中国,浙江省,舟山群岛新区', '122.317657', '29.813242', 'Zhoushan', '舟山新区', '0');
INSERT INTO `sys_area` VALUES ('331201', '331201', '金塘岛', '331200', '区', '', '0580', '316000', '中国,浙江省,舟山群岛新区,金塘岛', '121.893373', '30.040641', 'Jintang', '金塘', '0');
INSERT INTO `sys_area` VALUES ('331202', '331202', '六横岛', '331200', '区', '', '0580', '316000', '中国,浙江省,舟山群岛新区,六横岛', '122.142650', '29.662938', 'Liuheng', '六横', '0');
INSERT INTO `sys_area` VALUES ('331203', '331203', '衢山岛', '331200', '区', '', '0580', '316000', '中国,浙江省,舟山群岛新区,衢山岛', '122.358425', '30.442642', 'Qushan', '衢山', '0');
INSERT INTO `sys_area` VALUES ('331204', '331204', '舟山本岛西北部', '331200', '区', '', '0580', '316000', '中国,浙江省,舟山群岛新区,舟山本岛西北部', '122.030640', '30.140377', 'Zhoushan', '舟山', '0');
INSERT INTO `sys_area` VALUES ('331205', '331205', '岱山岛西南部', '331200', '区', '', '0580', '316000', '中国,浙江省,舟山群岛新区,岱山岛西南部', '122.180123', '30.277269', 'Daishan', '岱山', '0');
INSERT INTO `sys_area` VALUES ('331206', '331206', '泗礁岛', '331200', '区', '', '0580', '316000', '中国,浙江省,舟山群岛新区,泗礁岛', '122.458030', '30.725112', 'Sijiao', '泗礁', '0');
INSERT INTO `sys_area` VALUES ('331207', '331207', '朱家尖岛', '331200', '区', '', '0580', '316000', '中国,浙江省,舟山群岛新区,朱家尖岛', '122.390636', '29.916303', 'Zhujiajian', '朱家尖', '0');
INSERT INTO `sys_area` VALUES ('331208', '331208', '洋山岛', '331200', '区', '', '0580', '316000', '中国,浙江省,舟山群岛新区,洋山岛', '121.995891', '30.094637', 'Yangshan', '洋山', '0');
INSERT INTO `sys_area` VALUES ('331209', '331209', '长涂岛', '331200', '区', '', '0580', '316000', '中国,浙江省,舟山群岛新区,长涂岛', '122.284681', '30.248880', 'Changtu', '长涂', '0');
INSERT INTO `sys_area` VALUES ('331210', '331210', '虾峙岛', '331200', '区', '', '0580', '316000', '中国,浙江省,舟山群岛新区,虾峙岛', '122.244686', '29.752941', 'Xiazhi', '虾峙', '0');
INSERT INTO `sys_area` VALUES ('340000', '340000', '安徽省', '100000', '省', '', '', '', '中国,安徽省', '117.283042', '31.861190', 'Anhui', '安徽', '0');
INSERT INTO `sys_area` VALUES ('340100', '340100', '合肥市', '340000', '市', '', '0551', '230001', '中国,安徽省,合肥市', '117.283042', '31.861190', 'Hefei', '合肥', '0');
INSERT INTO `sys_area` VALUES ('340102', '340102', '瑶海区', '340100', '区', '', '0551', '230011', '中国,安徽省,合肥市,瑶海区', '117.309470', '31.858090', 'Yaohai', '瑶海', '0');
INSERT INTO `sys_area` VALUES ('340103', '340103', '庐阳区', '340100', '区', '', '0551', '230001', '中国,安徽省,合肥市,庐阳区', '117.264520', '31.878740', 'Luyang', '庐阳', '0');
INSERT INTO `sys_area` VALUES ('340104', '340104', '蜀山区', '340100', '区', '', '0551', '230031', '中国,安徽省,合肥市,蜀山区', '117.261040', '31.851170', 'Shushan', '蜀山', '0');
INSERT INTO `sys_area` VALUES ('340111', '340111', '包河区', '340100', '区', '', '0551', '230041', '中国,安徽省,合肥市,包河区', '117.309840', '31.795020', 'Baohe', '包河', '0');
INSERT INTO `sys_area` VALUES ('340121', '340121', '长丰县', '340100', '区', '', '0551', '231100', '中国,安徽省,合肥市,长丰县', '117.165490', '32.479590', 'Changfeng', '长丰', '0');
INSERT INTO `sys_area` VALUES ('340122', '340122', '肥东县', '340100', '区', '', '0551', '231600', '中国,安徽省,合肥市,肥东县', '117.471280', '31.885250', 'Feidong', '肥东', '0');
INSERT INTO `sys_area` VALUES ('340123', '340123', '肥西县', '340100', '区', '', '0551', '231200', '中国,安徽省,合肥市,肥西县', '117.168450', '31.721430', 'Feixi', '肥西', '0');
INSERT INTO `sys_area` VALUES ('340124', '340124', '庐江县', '340100', '区', '', '0565', '231500', '中国,安徽省,合肥市,庐江县', '117.289844', '31.251488', 'Lujiang', '庐江', '0');
INSERT INTO `sys_area` VALUES ('340181', '340181', '巢湖市', '340100', '区', '', '0565', '238000', '中国,安徽省,合肥市,巢湖市', '117.874155', '31.600518', 'Chaohu', '巢湖', '0');
INSERT INTO `sys_area` VALUES ('340200', '340200', '芜湖市', '340000', '市', '', '0551', '241000', '中国,安徽省,芜湖市', '118.376451', '31.326319', 'Wuhu', '芜湖', '0');
INSERT INTO `sys_area` VALUES ('340202', '340202', '镜湖区', '340200', '区', '', '0553', '241000', '中国,安徽省,芜湖市,镜湖区', '118.385250', '31.340380', 'Jinghu', '镜湖', '0');
INSERT INTO `sys_area` VALUES ('340203', '340203', '弋江区', '340200', '区', '', '0553', '241000', '中国,安徽省,芜湖市,弋江区', '118.372650', '31.311780', 'Yijiang', '弋江', '0');
INSERT INTO `sys_area` VALUES ('340207', '340207', '鸠江区', '340200', '区', '', '0553', '241000', '中国,安徽省,芜湖市,鸠江区', '118.392150', '31.369280', 'Jiujiang', '鸠江', '0');
INSERT INTO `sys_area` VALUES ('340208', '340208', '三山区', '340200', '区', '', '0553', '241000', '中国,安徽省,芜湖市,三山区', '118.225090', '31.207030', 'Sanshan', '三山', '0');
INSERT INTO `sys_area` VALUES ('340221', '340221', '芜湖县', '340200', '区', '', '0553', '241100', '中国,安徽省,芜湖市,芜湖县', '118.575250', '31.134760', 'Wuhu', '芜湖', '0');
INSERT INTO `sys_area` VALUES ('340222', '340222', '繁昌县', '340200', '区', '', '0553', '241200', '中国,安徽省,芜湖市,繁昌县', '118.199820', '31.083190', 'Fanchang', '繁昌', '0');
INSERT INTO `sys_area` VALUES ('340223', '340223', '南陵县', '340200', '区', '', '0553', '242400', '中国,安徽省,芜湖市,南陵县', '118.336880', '30.919690', 'Nanling', '南陵', '0');
INSERT INTO `sys_area` VALUES ('340225', '340225', '无为县', '340200', '区', '', '0565', '238300', '中国,安徽省,芜湖市,无为县', '117.911432', '31.303075', 'Wuwei', '无为', '0');
INSERT INTO `sys_area` VALUES ('340300', '340300', '蚌埠市', '340000', '市', '', '0552', '233000', '中国,安徽省,蚌埠市', '117.362370', '32.934037', 'Bengbu', '蚌埠', '0');
INSERT INTO `sys_area` VALUES ('340302', '340302', '龙子湖区', '340300', '区', '', '0552', '233000', '中国,安徽省,蚌埠市,龙子湖区', '117.393790', '32.943010', 'Longzihu', '龙子湖', '0');
INSERT INTO `sys_area` VALUES ('340303', '340303', '蚌山区', '340300', '区', '', '0552', '233000', '中国,安徽省,蚌埠市,蚌山区', '117.367670', '32.944110', 'Bengshan', '蚌山', '0');
INSERT INTO `sys_area` VALUES ('340304', '340304', '禹会区', '340300', '区', '', '0552', '233010', '中国,安徽省,蚌埠市,禹会区', '117.353150', '32.933360', 'Yuhui', '禹会', '0');
INSERT INTO `sys_area` VALUES ('340311', '340311', '淮上区', '340300', '区', '', '0552', '233002', '中国,安徽省,蚌埠市,淮上区', '117.359830', '32.964230', 'Huaishang', '淮上', '0');
INSERT INTO `sys_area` VALUES ('340321', '340321', '怀远县', '340300', '区', '', '0552', '233400', '中国,安徽省,蚌埠市,怀远县', '117.205070', '32.970070', 'Huaiyuan', '怀远', '0');
INSERT INTO `sys_area` VALUES ('340322', '340322', '五河县', '340300', '区', '', '0552', '233300', '中国,安徽省,蚌埠市,五河县', '117.891440', '33.144570', 'Wuhe', '五河', '0');
INSERT INTO `sys_area` VALUES ('340323', '340323', '固镇县', '340300', '区', '', '0552', '233700', '中国,安徽省,蚌埠市,固镇县', '117.315580', '33.318030', 'Guzhen', '固镇', '0');
INSERT INTO `sys_area` VALUES ('340400', '340400', '淮南市', '340000', '市', '', '0554', '232001', '中国,安徽省,淮南市', '117.025449', '32.645947', 'Huainan', '淮南', '0');
INSERT INTO `sys_area` VALUES ('340402', '340402', '大通区', '340400', '区', '', '0554', '232033', '中国,安徽省,淮南市,大通区', '117.052550', '32.632650', 'Datong', '大通', '0');
INSERT INTO `sys_area` VALUES ('340403', '340403', '田家庵区', '340400', '区', '', '0554', '232000', '中国,安徽省,淮南市,田家庵区', '117.017390', '32.646970', 'Tianjiaan', '田家庵', '0');
INSERT INTO `sys_area` VALUES ('340404', '340404', '谢家集区', '340400', '区', '', '0554', '232052', '中国,安徽省,淮南市,谢家集区', '116.863770', '32.598180', 'Xiejiaji', '谢家集', '0');
INSERT INTO `sys_area` VALUES ('340405', '340405', '八公山区', '340400', '区', '', '0554', '232072', '中国,安徽省,淮南市,八公山区', '116.836940', '32.629410', 'Bagongshan', '八公山', '0');
INSERT INTO `sys_area` VALUES ('340406', '340406', '潘集区', '340400', '区', '', '0554', '232082', '中国,安徽省,淮南市,潘集区', '116.816220', '32.782870', 'Panji', '潘集', '0');
INSERT INTO `sys_area` VALUES ('340421', '340421', '凤台县', '340400', '区', '', '0554', '232100', '中国,安徽省,淮南市,凤台县', '116.715690', '32.707520', 'Fengtai', '凤台', '0');
INSERT INTO `sys_area` VALUES ('340500', '340500', '马鞍山市', '340000', '市', '', '0555', '243001', '中国,安徽省,马鞍山市', '118.507906', '31.689362', 'Ma\'anshan', '马鞍山', '0');
INSERT INTO `sys_area` VALUES ('340503', '340503', '花山区', '340500', '区', '', '0555', '243000', '中国,安徽省,马鞍山市,花山区', '118.512310', '31.700100', 'Huashan', '花山', '0');
INSERT INTO `sys_area` VALUES ('340504', '340504', '雨山区', '340500', '区', '', '0555', '243071', '中国,安徽省,马鞍山市,雨山区', '118.498690', '31.682190', 'Yushan', '雨山', '0');
INSERT INTO `sys_area` VALUES ('340506', '340506', '博望区', '340500', '区', '', '0555', '243131', '中国,安徽省,马鞍山市,博望区', '118.844387', '31.561871', 'Bowang', '博望', '0');
INSERT INTO `sys_area` VALUES ('340521', '340521', '当涂县', '340500', '区', '', '0555', '243100', '中国,安徽省,马鞍山市,当涂县', '118.497860', '31.570980', 'Dangtu', '当涂', '0');
INSERT INTO `sys_area` VALUES ('340522', '340522', '含山县', '340500', '区', '', '0555', '238100', '中国,安徽省,马鞍山市,含山县', '118.105545', '31.727758', 'Hanshan ', '含山', '0');
INSERT INTO `sys_area` VALUES ('340523', '340523', '和县', '340500', '区', '', '0555', '238200', '中国,安徽省,马鞍山市,和县', '118.351405', '31.741794', 'Hexian', '和县', '0');
INSERT INTO `sys_area` VALUES ('340600', '340600', '淮北市', '340000', '市', '', '0561', '235000', '中国,安徽省,淮北市', '116.794664', '33.971707', 'Huaibei', '淮北', '0');
INSERT INTO `sys_area` VALUES ('340602', '340602', '杜集区', '340600', '区', '', '0561', '235000', '中国,安徽省,淮北市,杜集区', '116.829980', '33.993630', 'Duji', '杜集', '0');
INSERT INTO `sys_area` VALUES ('340603', '340603', '相山区', '340600', '区', '', '0561', '235000', '中国,安徽省,淮北市,相山区', '116.794640', '33.959790', 'Xiangshan', '相山', '0');
INSERT INTO `sys_area` VALUES ('340604', '340604', '烈山区', '340600', '区', '', '0561', '235000', '中国,安徽省,淮北市,烈山区', '116.814480', '33.893550', 'Lieshan', '烈山', '0');
INSERT INTO `sys_area` VALUES ('340621', '340621', '濉溪县', '340600', '区', '', '0561', '235100', '中国,安徽省,淮北市,濉溪县', '116.767850', '33.914550', 'Suixi', '濉溪', '0');
INSERT INTO `sys_area` VALUES ('340700', '340700', '铜陵市', '340000', '市', '', '0562', '244000', '中国,安徽省,铜陵市', '117.816576', '30.929935', 'Tongling', '铜陵', '0');
INSERT INTO `sys_area` VALUES ('340702', '340702', '铜官山区', '340700', '区', '', '0562', '244000', '中国,安徽省,铜陵市,铜官山区', '117.815250', '30.934230', 'Tongguanshan', '铜官山', '0');
INSERT INTO `sys_area` VALUES ('340703', '340703', '狮子山区', '340700', '区', '', '0562', '244000', '中国,安徽省,铜陵市,狮子山区', '117.891780', '30.926310', 'Shizishan', '狮子山', '0');
INSERT INTO `sys_area` VALUES ('340711', '340711', '郊区', '340700', '区', '', '0562', '244000', '中国,安徽省,铜陵市,郊区', '117.808680', '30.919760', 'Jiaoqu', '郊区', '0');
INSERT INTO `sys_area` VALUES ('340721', '340721', '铜陵县', '340700', '区', '', '0562', '244100', '中国,安徽省,铜陵市,铜陵县', '117.791130', '30.953650', 'Tongling', '铜陵', '0');
INSERT INTO `sys_area` VALUES ('340800', '340800', '安庆市', '340000', '市', '', '0556', '246001', '中国,安徽省,安庆市', '117.053571', '30.524816', 'Anqing', '安庆', '0');
INSERT INTO `sys_area` VALUES ('340802', '340802', '迎江区', '340800', '区', '', '0556', '246001', '中国,安徽省,安庆市,迎江区', '117.049300', '30.504210', 'Yingjiang', '迎江', '0');
INSERT INTO `sys_area` VALUES ('340803', '340803', '大观区', '340800', '区', '', '0556', '246002', '中国,安徽省,安庆市,大观区', '117.034260', '30.512160', 'Daguan', '大观', '0');
INSERT INTO `sys_area` VALUES ('340811', '340811', '宜秀区', '340800', '区', '', '0556', '246003', '中国,安徽省,安庆市,宜秀区', '117.061270', '30.507830', 'Yixiu', '宜秀', '0');
INSERT INTO `sys_area` VALUES ('340822', '340822', '怀宁县', '340800', '区', '', '0556', '246100', '中国,安徽省,安庆市,怀宁县', '116.829680', '30.733760', 'Huaining', '怀宁', '0');
INSERT INTO `sys_area` VALUES ('340823', '340823', '枞阳县', '340800', '区', '', '0556', '246700', '中国,安徽省,安庆市,枞阳县', '117.220150', '30.699560', 'Zongyang', '枞阳', '0');
INSERT INTO `sys_area` VALUES ('340824', '340824', '潜山县', '340800', '区', '', '0556', '246300', '中国,安徽省,安庆市,潜山县', '116.575740', '30.630370', 'Qianshan', '潜山', '0');
INSERT INTO `sys_area` VALUES ('340825', '340825', '太湖县', '340800', '区', '', '0556', '246400', '中国,安徽省,安庆市,太湖县', '116.308800', '30.454100', 'Taihu', '太湖', '0');
INSERT INTO `sys_area` VALUES ('340826', '340826', '宿松县', '340800', '区', '', '0556', '246500', '中国,安徽省,安庆市,宿松县', '116.129150', '30.153600', 'Susong', '宿松', '0');
INSERT INTO `sys_area` VALUES ('340827', '340827', '望江县', '340800', '区', '', '0556', '246200', '中国,安徽省,安庆市,望江县', '116.688140', '30.125850', 'Wangjiang', '望江', '0');
INSERT INTO `sys_area` VALUES ('340828', '340828', '岳西县', '340800', '区', '', '0556', '246600', '中国,安徽省,安庆市,岳西县', '116.359950', '30.849830', 'Yuexi', '岳西', '0');
INSERT INTO `sys_area` VALUES ('340881', '340881', '桐城市', '340800', '区', '', '0556', '231400', '中国,安徽省,安庆市,桐城市', '116.950710', '31.052160', 'Tongcheng', '桐城', '0');
INSERT INTO `sys_area` VALUES ('341000', '341000', '黄山市', '340000', '市', '', '0559', '245000', '中国,安徽省,黄山市', '118.317325', '29.709239', 'Huangshan', '黄山', '0');
INSERT INTO `sys_area` VALUES ('341002', '341002', '屯溪区', '341000', '区', '', '0559', '245000', '中国,安徽省,黄山市,屯溪区', '118.333680', '29.711380', 'Tunxi', '屯溪', '0');
INSERT INTO `sys_area` VALUES ('341003', '341003', '黄山区', '341000', '区', '', '0559', '242700', '中国,安徽省,黄山市,黄山区', '118.141600', '30.272900', 'Huangshan', '黄山', '0');
INSERT INTO `sys_area` VALUES ('341004', '341004', '徽州区', '341000', '区', '', '0559', '245061', '中国,安徽省,黄山市,徽州区', '118.336540', '29.827840', 'Huizhou', '徽州', '0');
INSERT INTO `sys_area` VALUES ('341021', '341021', '歙县', '341000', '区', '', '0559', '245200', '中国,安徽省,黄山市,歙县', '118.436760', '29.867450', 'Shexian', '歙县', '0');
INSERT INTO `sys_area` VALUES ('341022', '341022', '休宁县', '341000', '区', '', '0559', '245400', '中国,安徽省,黄山市,休宁县', '118.181360', '29.786070', 'Xiuning', '休宁', '0');
INSERT INTO `sys_area` VALUES ('341023', '341023', '黟县', '341000', '区', '', '0559', '245500', '中国,安徽省,黄山市,黟县', '117.941370', '29.925880', 'Yixian', '黟县', '0');
INSERT INTO `sys_area` VALUES ('341024', '341024', '祁门县', '341000', '区', '', '0559', '245600', '中国,安徽省,黄山市,祁门县', '117.718470', '29.857230', 'Qimen', '祁门', '0');
INSERT INTO `sys_area` VALUES ('341100', '341100', '滁州市', '340000', '市', '', '0550', '239000', '中国,安徽省,滁州市', '118.316264', '32.303627', 'Chuzhou', '滁州', '0');
INSERT INTO `sys_area` VALUES ('341102', '341102', '琅琊区', '341100', '区', '', '0550', '239000', '中国,安徽省,滁州市,琅琊区', '118.305380', '32.295210', 'Langya', '琅琊', '0');
INSERT INTO `sys_area` VALUES ('341103', '341103', '南谯区', '341100', '区', '', '0550', '239000', '中国,安徽省,滁州市,南谯区', '118.312220', '32.318610', 'Nanqiao', '南谯', '0');
INSERT INTO `sys_area` VALUES ('341122', '341122', '来安县', '341100', '区', '', '0550', '239200', '中国,安徽省,滁州市,来安县', '118.434380', '32.451760', 'Lai\'an', '来安', '0');
INSERT INTO `sys_area` VALUES ('341124', '341124', '全椒县', '341100', '区', '', '0550', '239500', '中国,安徽省,滁州市,全椒县', '118.272910', '32.085240', 'Quanjiao', '全椒', '0');
INSERT INTO `sys_area` VALUES ('341125', '341125', '定远县', '341100', '区', '', '0550', '233200', '中国,安徽省,滁州市,定远县', '117.680350', '32.524880', 'Dingyuan', '定远', '0');
INSERT INTO `sys_area` VALUES ('341126', '341126', '凤阳县', '341100', '区', '', '0550', '233100', '中国,安徽省,滁州市,凤阳县', '117.564540', '32.865070', 'Fengyang', '凤阳', '0');
INSERT INTO `sys_area` VALUES ('341181', '341181', '天长市', '341100', '区', '', '0550', '239300', '中国,安徽省,滁州市,天长市', '118.998680', '32.691240', 'Tianchang', '天长', '0');
INSERT INTO `sys_area` VALUES ('341182', '341182', '明光市', '341100', '区', '', '0550', '239400', '中国,安徽省,滁州市,明光市', '117.990930', '32.778190', 'Mingguang', '明光', '0');
INSERT INTO `sys_area` VALUES ('341200', '341200', '阜阳市', '340000', '市', '', '0558', '236033', '中国,安徽省,阜阳市', '115.819729', '32.896969', 'Fuyang', '阜阳', '0');
INSERT INTO `sys_area` VALUES ('341202', '341202', '颍州区', '341200', '区', '', '0558', '236001', '中国,安徽省,阜阳市,颍州区', '115.806940', '32.883460', 'Yingzhou', '颍州', '0');
INSERT INTO `sys_area` VALUES ('341203', '341203', '颍东区', '341200', '区', '', '0558', '236058', '中国,安徽省,阜阳市,颍东区', '115.856590', '32.912960', 'Yingdong', '颍东', '0');
INSERT INTO `sys_area` VALUES ('341204', '341204', '颍泉区', '341200', '区', '', '0558', '236045', '中国,安徽省,阜阳市,颍泉区', '115.807120', '32.924900', 'Yingquan', '颍泉', '0');
INSERT INTO `sys_area` VALUES ('341221', '341221', '临泉县', '341200', '区', '', '0558', '236400', '中国,安徽省,阜阳市,临泉县', '115.262320', '33.067580', 'Linquan', '临泉', '0');
INSERT INTO `sys_area` VALUES ('341222', '341222', '太和县', '341200', '区', '', '0558', '236600', '中国,安徽省,阜阳市,太和县', '115.621910', '33.160250', 'Taihe', '太和', '0');
INSERT INTO `sys_area` VALUES ('341225', '341225', '阜南县', '341200', '区', '', '0558', '236300', '中国,安徽省,阜阳市,阜南县', '115.585630', '32.635510', 'Funan', '阜南', '0');
INSERT INTO `sys_area` VALUES ('341226', '341226', '颍上县', '341200', '区', '', '0558', '236200', '中国,安徽省,阜阳市,颍上县', '116.264580', '32.629980', 'Yingshang', '颍上', '0');
INSERT INTO `sys_area` VALUES ('341282', '341282', '界首市', '341200', '区', '', '0558', '236500', '中国,安徽省,阜阳市,界首市', '115.374450', '33.257140', 'Jieshou', '界首', '0');
INSERT INTO `sys_area` VALUES ('341300', '341300', '宿州市', '340000', '市', '', '0557', '234000', '中国,安徽省,宿州市', '116.984084', '33.633891', 'Suzhou', '宿州', '0');
INSERT INTO `sys_area` VALUES ('341302', '341302', '埇桥区', '341300', '区', '', '0557', '234000', '中国,安徽省,宿州市,埇桥区', '116.977310', '33.640580', 'Yongqiao', '埇桥', '0');
INSERT INTO `sys_area` VALUES ('341321', '341321', '砀山县', '341300', '区', '', '0557', '235300', '中国,安徽省,宿州市,砀山县', '116.353630', '34.423560', 'Dangshan', '砀山', '0');
INSERT INTO `sys_area` VALUES ('341322', '341322', '萧县', '341300', '区', '', '0557', '235200', '中国,安徽省,宿州市,萧县', '116.945460', '34.187900', 'Xiaoxian', '萧县', '0');
INSERT INTO `sys_area` VALUES ('341323', '341323', '灵璧县', '341300', '区', '', '0557', '234200', '中国,安徽省,宿州市,灵璧县', '117.558130', '33.543390', 'Lingbi', '灵璧', '0');
INSERT INTO `sys_area` VALUES ('341324', '341324', '泗县', '341300', '区', '', '0557', '234300', '中国,安徽省,宿州市,泗县', '117.910330', '33.482950', 'Sixian', '泗县', '0');
INSERT INTO `sys_area` VALUES ('341500', '341500', '六安市', '340000', '市', '', '0564', '237000', '中国,安徽省,六安市', '116.507676', '31.752889', 'Lu\'an', '六安', '0');
INSERT INTO `sys_area` VALUES ('341502', '341502', '金安区', '341500', '区', '', '0564', '237005', '中国,安徽省,六安市,金安区', '116.509120', '31.755730', 'Jin\'an', '金安', '0');
INSERT INTO `sys_area` VALUES ('341503', '341503', '裕安区', '341500', '区', '', '0564', '237010', '中国,安徽省,六安市,裕安区', '116.479850', '31.737870', 'Yu\'an', '裕安', '0');
INSERT INTO `sys_area` VALUES ('341521', '341521', '寿县', '341500', '区', '', '0564', '232200', '中国,安徽省,六安市,寿县', '116.784660', '32.576530', 'Shouxian', '寿县', '0');
INSERT INTO `sys_area` VALUES ('341522', '341522', '霍邱县', '341500', '区', '', '0564', '237400', '中国,安徽省,六安市,霍邱县', '116.277950', '32.353000', 'Huoqiu', '霍邱', '0');
INSERT INTO `sys_area` VALUES ('341523', '341523', '舒城县', '341500', '区', '', '0564', '231300', '中国,安徽省,六安市,舒城县', '116.944910', '31.464130', 'Shucheng', '舒城', '0');
INSERT INTO `sys_area` VALUES ('341524', '341524', '金寨县', '341500', '区', '', '0564', '237300', '中国,安徽省,六安市,金寨县', '115.934630', '31.735100', 'Jinzhai', '金寨', '0');
INSERT INTO `sys_area` VALUES ('341525', '341525', '霍山县', '341500', '区', '', '0564', '237200', '中国,安徽省,六安市,霍山县', '116.332910', '31.392900', 'Huoshan', '霍山', '0');
INSERT INTO `sys_area` VALUES ('341600', '341600', '亳州市', '340000', '市', '', '0558', '236802', '中国,安徽省,亳州市', '115.782939', '33.869338', 'Bozhou', '亳州', '0');
INSERT INTO `sys_area` VALUES ('341602', '341602', '谯城区', '341600', '区', '', '0558', '236800', '中国,安徽省,亳州市,谯城区', '115.779410', '33.875320', 'Qiaocheng', '谯城', '0');
INSERT INTO `sys_area` VALUES ('341621', '341621', '涡阳县', '341600', '区', '', '0558', '233600', '中国,安徽省,亳州市,涡阳县', '116.216820', '33.509110', 'Guoyang', '涡阳', '0');
INSERT INTO `sys_area` VALUES ('341622', '341622', '蒙城县', '341600', '区', '', '0558', '233500', '中国,安徽省,亳州市,蒙城县', '116.564600', '33.264770', 'Mengcheng', '蒙城', '0');
INSERT INTO `sys_area` VALUES ('341623', '341623', '利辛县', '341600', '区', '', '0558', '236700', '中国,安徽省,亳州市,利辛县', '116.208000', '33.141980', 'Lixin', '利辛', '0');
INSERT INTO `sys_area` VALUES ('341700', '341700', '池州市', '340000', '市', '', '0566', '247100', '中国,安徽省,池州市', '117.489157', '30.656037', 'Chizhou', '池州', '0');
INSERT INTO `sys_area` VALUES ('341702', '341702', '贵池区', '341700', '区', '', '0566', '247100', '中国,安徽省,池州市,贵池区', '117.487220', '30.652830', 'Guichi', '贵池', '0');
INSERT INTO `sys_area` VALUES ('341721', '341721', '东至县', '341700', '区', '', '0566', '247200', '中国,安徽省,池州市,东至县', '117.027190', '30.096900', 'Dongzhi', '东至', '0');
INSERT INTO `sys_area` VALUES ('341722', '341722', '石台县', '341700', '区', '', '0566', '245100', '中国,安徽省,池州市,石台县', '117.486660', '30.210420', 'Shitai', '石台', '0');
INSERT INTO `sys_area` VALUES ('341723', '341723', '青阳县', '341700', '区', '', '0566', '242800', '中国,安徽省,池州市,青阳县', '117.847440', '30.639320', 'Qingyang', '青阳', '0');
INSERT INTO `sys_area` VALUES ('341800', '341800', '宣城市', '340000', '市', '', '0563', '242000', '中国,安徽省,宣城市', '118.757995', '30.945667', 'Xuancheng', '宣城', '0');
INSERT INTO `sys_area` VALUES ('341802', '341802', '宣州区', '341800', '区', '', '0563', '242000', '中国,安徽省,宣城市,宣州区', '118.754620', '30.944390', 'Xuanzhou', '宣州', '0');
INSERT INTO `sys_area` VALUES ('341821', '341821', '郎溪县', '341800', '区', '', '0563', '242100', '中国,安徽省,宣城市,郎溪县', '119.179230', '31.125990', 'Langxi', '郎溪', '0');
INSERT INTO `sys_area` VALUES ('341822', '341822', '广德县', '341800', '区', '', '0563', '242200', '中国,安徽省,宣城市,广德县', '119.417690', '30.893710', 'Guangde', '广德', '0');
INSERT INTO `sys_area` VALUES ('341823', '341823', '泾县', '341800', '区', '', '0563', '242500', '中国,安徽省,宣城市,泾县', '118.419640', '30.694980', 'Jingxian', '泾县', '0');
INSERT INTO `sys_area` VALUES ('341824', '341824', '绩溪县', '341800', '区', '', '0563', '245300', '中国,安徽省,宣城市,绩溪县', '118.597650', '30.070690', 'Jixi', '绩溪', '0');
INSERT INTO `sys_area` VALUES ('341825', '341825', '旌德县', '341800', '区', '', '0563', '242600', '中国,安徽省,宣城市,旌德县', '118.542990', '30.288980', 'Jingde', '旌德', '0');
INSERT INTO `sys_area` VALUES ('341881', '341881', '宁国市', '341800', '区', '', '0563', '242300', '中国,安徽省,宣城市,宁国市', '118.983490', '30.623800', 'Ningguo', '宁国', '0');
INSERT INTO `sys_area` VALUES ('350000', '350000', '福建省', '100000', '省', '', '', '', '中国,福建省', '119.306239', '26.075302', 'Fujian', '福建', '0');
INSERT INTO `sys_area` VALUES ('350100', '350100', '福州市', '350000', '市', '', '0591', '350001', '中国,福建省,福州市', '119.306239', '26.075302', 'Fuzhou', '福州', '0');
INSERT INTO `sys_area` VALUES ('350102', '350102', '鼓楼区', '350100', '区', '', '0591', '350001', '中国,福建省,福州市,鼓楼区', '119.303840', '26.082250', 'Gulou', '鼓楼', '0');
INSERT INTO `sys_area` VALUES ('350103', '350103', '台江区', '350100', '区', '', '0591', '350004', '中国,福建省,福州市,台江区', '119.308990', '26.062040', 'Taijiang', '台江', '0');
INSERT INTO `sys_area` VALUES ('350104', '350104', '仓山区', '350100', '区', '', '0591', '350007', '中国,福建省,福州市,仓山区', '119.315430', '26.043350', 'Cangshan', '仓山', '0');
INSERT INTO `sys_area` VALUES ('350105', '350105', '马尾区', '350100', '区', '', '0591', '350015', '中国,福建省,福州市,马尾区', '119.455500', '25.989420', 'Mawei', '马尾', '0');
INSERT INTO `sys_area` VALUES ('350111', '350111', '晋安区', '350100', '区', '', '0591', '350011', '中国,福建省,福州市,晋安区', '119.328280', '26.081800', 'Jin\'an', '晋安', '0');
INSERT INTO `sys_area` VALUES ('350121', '350121', '闽侯县', '350100', '区', '', '0591', '350100', '中国,福建省,福州市,闽侯县', '119.133880', '26.150140', 'Minhou', '闽侯', '0');
INSERT INTO `sys_area` VALUES ('350122', '350122', '连江县', '350100', '区', '', '0591', '350500', '中国,福建省,福州市,连江县', '119.534330', '26.194660', 'Lianjiang', '连江', '0');
INSERT INTO `sys_area` VALUES ('350123', '350123', '罗源县', '350100', '区', '', '0591', '350600', '中国,福建省,福州市,罗源县', '119.550900', '26.487520', 'Luoyuan', '罗源', '0');
INSERT INTO `sys_area` VALUES ('350124', '350124', '闽清县', '350100', '区', '', '0591', '350800', '中国,福建省,福州市,闽清县', '118.862300', '26.219010', 'Minqing', '闽清', '0');
INSERT INTO `sys_area` VALUES ('350125', '350125', '永泰县', '350100', '区', '', '0591', '350700', '中国,福建省,福州市,永泰县', '118.936000', '25.868160', 'Yongtai', '永泰', '0');
INSERT INTO `sys_area` VALUES ('350128', '350128', '平潭县', '350100', '区', '', '0591', '350400', '中国,福建省,福州市,平潭县', '119.791197', '25.503672', 'Pingtan', '平潭', '0');
INSERT INTO `sys_area` VALUES ('350181', '350181', '福清市', '350100', '区', '', '0591', '350300', '中国,福建省,福州市,福清市', '119.385070', '25.720860', 'Fuqing', '福清', '0');
INSERT INTO `sys_area` VALUES ('350182', '350182', '长乐市', '350100', '区', '', '0591', '350200', '中国,福建省,福州市,长乐市', '119.523130', '25.962760', 'Changle', '长乐', '0');
INSERT INTO `sys_area` VALUES ('350200', '350200', '厦门市', '350000', '市', '', '0592', '361003', '中国,福建省,厦门市', '118.110220', '24.490474', 'Xiamen', '厦门', '0');
INSERT INTO `sys_area` VALUES ('350203', '350203', '思明区', '350200', '区', '', '0592', '361001', '中国,福建省,厦门市,思明区', '118.082330', '24.445430', 'Siming', '思明', '0');
INSERT INTO `sys_area` VALUES ('350205', '350205', '海沧区', '350200', '区', '', '0592', '361026', '中国,福建省,厦门市,海沧区', '118.032890', '24.484610', 'Haicang', '海沧', '0');
INSERT INTO `sys_area` VALUES ('350206', '350206', '湖里区', '350200', '区', '', '0592', '361006', '中国,福建省,厦门市,湖里区', '118.146210', '24.512530', 'Huli', '湖里', '0');
INSERT INTO `sys_area` VALUES ('350211', '350211', '集美区', '350200', '区', '', '0592', '361021', '中国,福建省,厦门市,集美区', '118.097190', '24.575840', 'Jimei', '集美', '0');
INSERT INTO `sys_area` VALUES ('350212', '350212', '同安区', '350200', '区', '', '0592', '361100', '中国,福建省,厦门市,同安区', '118.151970', '24.723080', 'Tong\'an', '同安', '0');
INSERT INTO `sys_area` VALUES ('350213', '350213', '翔安区', '350200', '区', '', '0592', '361101', '中国,福建省,厦门市,翔安区', '118.247830', '24.618630', 'Xiang\'an', '翔安', '0');
INSERT INTO `sys_area` VALUES ('350300', '350300', '莆田市', '350000', '市', '', '0594', '351100', '中国,福建省,莆田市', '119.007558', '25.431011', 'Putian', '莆田', '0');
INSERT INTO `sys_area` VALUES ('350302', '350302', '城厢区', '350300', '区', '', '0594', '351100', '中国,福建省,莆田市,城厢区', '118.994620', '25.418720', 'Chengxiang', '城厢', '0');
INSERT INTO `sys_area` VALUES ('350303', '350303', '涵江区', '350300', '区', '', '0594', '351111', '中国,福建省,莆田市,涵江区', '119.116210', '25.458760', 'Hanjiang', '涵江', '0');
INSERT INTO `sys_area` VALUES ('350304', '350304', '荔城区', '350300', '区', '', '0594', '351100', '中国,福建省,莆田市,荔城区', '119.013390', '25.433690', 'Licheng', '荔城', '0');
INSERT INTO `sys_area` VALUES ('350305', '350305', '秀屿区', '350300', '区', '', '0594', '351152', '中国,福建省,莆田市,秀屿区', '119.105530', '25.318310', 'Xiuyu', '秀屿', '0');
INSERT INTO `sys_area` VALUES ('350322', '350322', '仙游县', '350300', '区', '', '0594', '351200', '中国,福建省,莆田市,仙游县', '118.691770', '25.362140', 'Xianyou', '仙游', '0');
INSERT INTO `sys_area` VALUES ('350400', '350400', '三明市', '350000', '市', '', '0598', '365000', '中国,福建省,三明市', '117.635001', '26.265444', 'Sanming', '三明', '0');
INSERT INTO `sys_area` VALUES ('350402', '350402', '梅列区', '350400', '区', '', '0598', '365000', '中国,福建省,三明市,梅列区', '117.645850', '26.271710', 'Meilie', '梅列', '0');
INSERT INTO `sys_area` VALUES ('350403', '350403', '三元区', '350400', '区', '', '0598', '365001', '中国,福建省,三明市,三元区', '117.607880', '26.233720', 'Sanyuan', '三元', '0');
INSERT INTO `sys_area` VALUES ('350421', '350421', '明溪县', '350400', '区', '', '0598', '365200', '中国,福建省,三明市,明溪县', '117.204980', '26.352940', 'Mingxi', '明溪', '0');
INSERT INTO `sys_area` VALUES ('350423', '350423', '清流县', '350400', '区', '', '0598', '365300', '中国,福建省,三明市,清流县', '116.814600', '26.171440', 'Qingliu', '清流', '0');
INSERT INTO `sys_area` VALUES ('350424', '350424', '宁化县', '350400', '区', '', '0598', '365400', '中国,福建省,三明市,宁化县', '116.661010', '26.258740', 'Ninghua', '宁化', '0');
INSERT INTO `sys_area` VALUES ('350425', '350425', '大田县', '350400', '区', '', '0598', '366100', '中国,福建省,三明市,大田县', '117.847100', '25.692600', 'Datian', '大田', '0');
INSERT INTO `sys_area` VALUES ('350426', '350426', '尤溪县', '350400', '区', '', '0598', '365100', '中国,福建省,三明市,尤溪县', '118.190490', '26.170020', 'Youxi', '尤溪', '0');
INSERT INTO `sys_area` VALUES ('350427', '350427', '沙县', '350400', '区', '', '0598', '365500', '中国,福建省,三明市,沙县', '117.792660', '26.396150', 'Shaxian', '沙县', '0');
INSERT INTO `sys_area` VALUES ('350428', '350428', '将乐县', '350400', '区', '', '0598', '353300', '中国,福建省,三明市,将乐县', '117.473170', '26.728370', 'Jiangle', '将乐', '0');
INSERT INTO `sys_area` VALUES ('350429', '350429', '泰宁县', '350400', '区', '', '0598', '354400', '中国,福建省,三明市,泰宁县', '117.175780', '26.900100', 'Taining', '泰宁', '0');
INSERT INTO `sys_area` VALUES ('350430', '350430', '建宁县', '350400', '区', '', '0598', '354500', '中国,福建省,三明市,建宁县', '116.846030', '26.830910', 'Jianning', '建宁', '0');
INSERT INTO `sys_area` VALUES ('350481', '350481', '永安市', '350400', '区', '', '0598', '366000', '中国,福建省,三明市,永安市', '117.365170', '25.941360', 'Yong\'an', '永安', '0');
INSERT INTO `sys_area` VALUES ('350500', '350500', '泉州市', '350000', '市', '', '0595', '362000', '中国,福建省,泉州市', '118.589421', '24.908853', 'Quanzhou', '泉州', '0');
INSERT INTO `sys_area` VALUES ('350502', '350502', '鲤城区', '350500', '区', '', '0595', '362000', '中国,福建省,泉州市,鲤城区', '118.565910', '24.887410', 'Licheng', '鲤城', '0');
INSERT INTO `sys_area` VALUES ('350503', '350503', '丰泽区', '350500', '区', '', '0595', '362000', '中国,福建省,泉州市,丰泽区', '118.613280', '24.891190', 'Fengze', '丰泽', '0');
INSERT INTO `sys_area` VALUES ('350504', '350504', '洛江区', '350500', '区', '', '0595', '362011', '中国,福建省,泉州市,洛江区', '118.671110', '24.939840', 'Luojiang', '洛江', '0');
INSERT INTO `sys_area` VALUES ('350505', '350505', '泉港区', '350500', '区', '', '0595', '362114', '中国,福建省,泉州市,泉港区', '118.915860', '25.120050', 'Quangang', '泉港', '0');
INSERT INTO `sys_area` VALUES ('350521', '350521', '惠安县', '350500', '区', '', '0595', '362100', '中国,福建省,泉州市,惠安县', '118.796870', '25.030590', 'Hui\'an', '惠安', '0');
INSERT INTO `sys_area` VALUES ('350524', '350524', '安溪县', '350500', '区', '', '0595', '362400', '中国,福建省,泉州市,安溪县', '118.187190', '25.056270', 'Anxi', '安溪', '0');
INSERT INTO `sys_area` VALUES ('350525', '350525', '永春县', '350500', '区', '', '0595', '362600', '中国,福建省,泉州市,永春县', '118.294370', '25.321830', 'Yongchun', '永春', '0');
INSERT INTO `sys_area` VALUES ('350526', '350526', '德化县', '350500', '区', '', '0595', '362500', '中国,福建省,泉州市,德化县', '118.241760', '25.492240', 'Dehua', '德化', '0');
INSERT INTO `sys_area` VALUES ('350527', '350527', '金门县', '350500', '区', '', '', '', '中国,福建省,泉州市,金门县', '118.322630', '24.429220', 'Jinmen', '金门', '0');
INSERT INTO `sys_area` VALUES ('350581', '350581', '石狮市', '350500', '区', '', '0595', '362700', '中国,福建省,泉州市,石狮市', '118.647790', '24.732420', 'Shishi', '石狮', '0');
INSERT INTO `sys_area` VALUES ('350582', '350582', '晋江市', '350500', '区', '', '0595', '362200', '中国,福建省,泉州市,晋江市', '118.551940', '24.781410', 'Jinjiang', '晋江', '0');
INSERT INTO `sys_area` VALUES ('350583', '350583', '南安市', '350500', '区', '', '0595', '362300', '中国,福建省,泉州市,南安市', '118.385890', '24.960550', 'Nan\'an', '南安', '0');
INSERT INTO `sys_area` VALUES ('350600', '350600', '漳州市', '350000', '市', '', '0596', '363005', '中国,福建省,漳州市', '117.661801', '24.510897', 'Zhangzhou', '漳州', '0');
INSERT INTO `sys_area` VALUES ('350602', '350602', '芗城区', '350600', '区', '', '0596', '363000', '中国,福建省,漳州市,芗城区', '117.654020', '24.510810', 'Xiangcheng', '芗城', '0');
INSERT INTO `sys_area` VALUES ('350603', '350603', '龙文区', '350600', '区', '', '0596', '363005', '中国,福建省,漳州市,龙文区', '117.709710', '24.503230', 'Longwen', '龙文', '0');
INSERT INTO `sys_area` VALUES ('350622', '350622', '云霄县', '350600', '区', '', '0596', '363300', '中国,福建省,漳州市,云霄县', '117.340510', '23.955340', 'Yunxiao', '云霄', '0');
INSERT INTO `sys_area` VALUES ('350623', '350623', '漳浦县', '350600', '区', '', '0596', '363200', '中国,福建省,漳州市,漳浦县', '117.613670', '24.117060', 'Zhangpu', '漳浦', '0');
INSERT INTO `sys_area` VALUES ('350624', '350624', '诏安县', '350600', '区', '', '0596', '363500', '中国,福建省,漳州市,诏安县', '117.175010', '23.711480', 'Zhao\'an', '诏安', '0');
INSERT INTO `sys_area` VALUES ('350625', '350625', '长泰县', '350600', '区', '', '0596', '363900', '中国,福建省,漳州市,长泰县', '117.759240', '24.625260', 'Changtai', '长泰', '0');
INSERT INTO `sys_area` VALUES ('350626', '350626', '东山县', '350600', '区', '', '0596', '363400', '中国,福建省,漳州市,东山县', '117.428220', '23.701090', 'Dongshan', '东山', '0');
INSERT INTO `sys_area` VALUES ('350627', '350627', '南靖县', '350600', '区', '', '0596', '363600', '中国,福建省,漳州市,南靖县', '117.357360', '24.514480', 'Nanjing', '南靖', '0');
INSERT INTO `sys_area` VALUES ('350628', '350628', '平和县', '350600', '区', '', '0596', '363700', '中国,福建省,漳州市,平和县', '117.312400', '24.363950', 'Pinghe', '平和', '0');
INSERT INTO `sys_area` VALUES ('350629', '350629', '华安县', '350600', '区', '', '0596', '363800', '中国,福建省,漳州市,华安县', '117.540770', '25.005630', 'Hua\'an', '华安', '0');
INSERT INTO `sys_area` VALUES ('350681', '350681', '龙海市', '350600', '区', '', '0596', '363100', '中国,福建省,漳州市,龙海市', '117.818020', '24.446550', 'Longhai', '龙海', '0');
INSERT INTO `sys_area` VALUES ('350700', '350700', '南平市', '350000', '市', '', '0599', '353000', '中国,福建省,南平市', '118.178459', '26.635627', 'Nanping', '南平', '0');
INSERT INTO `sys_area` VALUES ('350702', '350702', '延平区', '350700', '区', '', '0600', '353000', '中国,福建省,南平市,延平区', '118.181890', '26.637450', 'Yanping', '延平', '0');
INSERT INTO `sys_area` VALUES ('350703', '350703', '建阳区', '350700', '区', '', '0599', '354200', '中国,福建省,南平市,建阳区', '118.122670', '27.332067', 'Jianyang', '建阳', '0');
INSERT INTO `sys_area` VALUES ('350721', '350721', '顺昌县', '350700', '区', '', '0605', '353200', '中国,福建省,南平市,顺昌县', '117.810300', '26.792980', 'Shunchang', '顺昌', '0');
INSERT INTO `sys_area` VALUES ('350722', '350722', '浦城县', '350700', '区', '', '0606', '353400', '中国,福建省,南平市,浦城县', '118.540070', '27.918880', 'Pucheng', '浦城', '0');
INSERT INTO `sys_area` VALUES ('350723', '350723', '光泽县', '350700', '区', '', '0607', '354100', '中国,福建省,南平市,光泽县', '117.333460', '27.542310', 'Guangze', '光泽', '0');
INSERT INTO `sys_area` VALUES ('350724', '350724', '松溪县', '350700', '区', '', '0608', '353500', '中国,福建省,南平市,松溪县', '118.785330', '27.526240', 'Songxi', '松溪', '0');
INSERT INTO `sys_area` VALUES ('350725', '350725', '政和县', '350700', '区', '', '0609', '353600', '中国,福建省,南平市,政和县', '118.855710', '27.367690', 'Zhenghe', '政和', '0');
INSERT INTO `sys_area` VALUES ('350781', '350781', '邵武市', '350700', '区', '', '0601', '354000', '中国,福建省,南平市,邵武市', '117.492400', '27.340330', 'Shaowu', '邵武', '0');
INSERT INTO `sys_area` VALUES ('350782', '350782', '武夷山市', '350700', '区', '', '0602', '354300', '中国,福建省,南平市,武夷山市', '118.036650', '27.755430', 'Wuyishan', '武夷山', '0');
INSERT INTO `sys_area` VALUES ('350783', '350783', '建瓯市', '350700', '区', '', '0603', '353100', '中国,福建省,南平市,建瓯市', '118.297660', '27.023010', 'Jianou', '建瓯', '0');
INSERT INTO `sys_area` VALUES ('350800', '350800', '龙岩市', '350000', '市', '', '0597', '364000', '中国,福建省,龙岩市', '117.029780', '25.091603', 'Longyan', '龙岩', '0');
INSERT INTO `sys_area` VALUES ('350802', '350802', '新罗区', '350800', '区', '', '0597', '364000', '中国,福建省,龙岩市,新罗区', '117.036930', '25.098340', 'Xinluo', '新罗', '0');
INSERT INTO `sys_area` VALUES ('350821', '350821', '长汀县', '350800', '区', '', '0597', '366300', '中国,福建省,龙岩市,长汀县', '116.358880', '25.827730', 'Changting', '长汀', '0');
INSERT INTO `sys_area` VALUES ('350822', '350822', '永定区', '350800', '区', '', '0597', '364100', '中国,福建省,龙岩市,永定区', '116.731990', '24.723020', 'Yongding', '永定', '0');
INSERT INTO `sys_area` VALUES ('350823', '350823', '上杭县', '350800', '区', '', '0597', '364200', '中国,福建省,龙岩市,上杭县', '116.420220', '25.049430', 'Shanghang', '上杭', '0');
INSERT INTO `sys_area` VALUES ('350824', '350824', '武平县', '350800', '区', '', '0597', '364300', '中国,福建省,龙岩市,武平县', '116.102290', '25.092440', 'Wuping', '武平', '0');
INSERT INTO `sys_area` VALUES ('350825', '350825', '连城县', '350800', '区', '', '0597', '366200', '中国,福建省,龙岩市,连城县', '116.754540', '25.710300', 'Liancheng', '连城', '0');
INSERT INTO `sys_area` VALUES ('350881', '350881', '漳平市', '350800', '区', '', '0597', '364400', '中国,福建省,龙岩市,漳平市', '117.419920', '25.291090', 'Zhangping', '漳平', '0');
INSERT INTO `sys_area` VALUES ('350900', '350900', '宁德市', '350000', '市', '', '0593', '352100', '中国,福建省,宁德市', '119.527082', '26.659240', 'Ningde', '宁德', '0');
INSERT INTO `sys_area` VALUES ('350902', '350902', '蕉城区', '350900', '区', '', '0593', '352100', '中国,福建省,宁德市,蕉城区', '119.526430', '26.660480', 'Jiaocheng', '蕉城', '0');
INSERT INTO `sys_area` VALUES ('350921', '350921', '霞浦县', '350900', '区', '', '0593', '355100', '中国,福建省,宁德市,霞浦县', '119.998930', '26.885780', 'Xiapu', '霞浦', '0');
INSERT INTO `sys_area` VALUES ('350922', '350922', '古田县', '350900', '区', '', '0593', '352200', '中国,福建省,宁德市,古田县', '118.746880', '26.576820', 'Gutian', '古田', '0');
INSERT INTO `sys_area` VALUES ('350923', '350923', '屏南县', '350900', '区', '', '0593', '352300', '中国,福建省,宁德市,屏南县', '118.988610', '26.910990', 'Pingnan', '屏南', '0');
INSERT INTO `sys_area` VALUES ('350924', '350924', '寿宁县', '350900', '区', '', '0593', '355500', '中国,福建省,宁德市,寿宁县', '119.503900', '27.459960', 'Shouning', '寿宁', '0');
INSERT INTO `sys_area` VALUES ('350925', '350925', '周宁县', '350900', '区', '', '0593', '355400', '中国,福建省,宁德市,周宁县', '119.338370', '27.106640', 'Zhouning', '周宁', '0');
INSERT INTO `sys_area` VALUES ('350926', '350926', '柘荣县', '350900', '区', '', '0593', '355300', '中国,福建省,宁德市,柘荣县', '119.899710', '27.235430', 'Zherong', '柘荣', '0');
INSERT INTO `sys_area` VALUES ('350981', '350981', '福安市', '350900', '区', '', '0593', '355000', '中国,福建省,宁德市,福安市', '119.649500', '27.086730', 'Fu\'an', '福安', '0');
INSERT INTO `sys_area` VALUES ('350982', '350982', '福鼎市', '350900', '区', '', '0593', '355200', '中国,福建省,宁德市,福鼎市', '120.216640', '27.324300', 'Fuding', '福鼎', '0');
INSERT INTO `sys_area` VALUES ('360000', '360000', '江西省', '100000', '省', '', '', '', '中国,江西省', '115.892151', '28.676493', 'Jiangxi', '江西', '0');
INSERT INTO `sys_area` VALUES ('360100', '360100', '南昌市', '360000', '市', '', '0791', '330008', '中国,江西省,南昌市', '115.892151', '28.676493', 'Nanchang', '南昌', '0');
INSERT INTO `sys_area` VALUES ('360102', '360102', '东湖区', '360100', '区', '', '0791', '330006', '中国,江西省,南昌市,东湖区', '115.898800', '28.685050', 'Donghu', '东湖', '0');
INSERT INTO `sys_area` VALUES ('360103', '360103', '西湖区', '360100', '区', '', '0791', '330009', '中国,江西省,南昌市,西湖区', '115.877280', '28.656880', 'Xihu', '西湖', '0');
INSERT INTO `sys_area` VALUES ('360104', '360104', '青云谱区', '360100', '区', '', '0791', '330001', '中国,江西省,南昌市,青云谱区', '115.915000', '28.631990', 'Qingyunpu', '青云谱', '0');
INSERT INTO `sys_area` VALUES ('360105', '360105', '湾里区', '360100', '区', '', '0791', '330004', '中国,江西省,南昌市,湾里区', '115.731040', '28.715290', 'Wanli', '湾里', '0');
INSERT INTO `sys_area` VALUES ('360111', '360111', '青山湖区', '360100', '区', '', '0791', '330029', '中国,江西省,南昌市,青山湖区', '115.961700', '28.682060', 'Qingshanhu', '青山湖', '0');
INSERT INTO `sys_area` VALUES ('360121', '360121', '南昌县', '360100', '区', '', '0791', '330200', '中国,江西省,南昌市,南昌县', '115.943930', '28.545590', 'Nanchang', '南昌', '0');
INSERT INTO `sys_area` VALUES ('360122', '360122', '新建县', '360100', '区', '', '0791', '330100', '中国,江西省,南昌市,新建县', '115.815460', '28.692480', 'Xinjian', '新建', '0');
INSERT INTO `sys_area` VALUES ('360123', '360123', '安义县', '360100', '区', '', '0791', '330500', '中国,江西省,南昌市,安义县', '115.548790', '28.846020', 'Anyi', '安义', '0');
INSERT INTO `sys_area` VALUES ('360124', '360124', '进贤县', '360100', '区', '', '0791', '331700', '中国,江西省,南昌市,进贤县', '116.240870', '28.376790', 'Jinxian', '进贤', '0');
INSERT INTO `sys_area` VALUES ('360200', '360200', '景德镇市', '360000', '市', '', '0798', '333000', '中国,江西省,景德镇市', '117.214664', '29.292560', 'Jingdezhen', '景德镇', '0');
INSERT INTO `sys_area` VALUES ('360202', '360202', '昌江区', '360200', '区', '', '0799', '333000', '中国,江西省,景德镇市,昌江区', '117.183590', '29.273210', 'Changjiang', '昌江', '0');
INSERT INTO `sys_area` VALUES ('360203', '360203', '珠山区', '360200', '区', '', '0800', '333000', '中国,江西省,景德镇市,珠山区', '117.202330', '29.301270', 'Zhushan', '珠山', '0');
INSERT INTO `sys_area` VALUES ('360222', '360222', '浮梁县', '360200', '区', '', '0802', '333400', '中国,江西省,景德镇市,浮梁县', '117.215170', '29.351560', 'Fuliang', '浮梁', '0');
INSERT INTO `sys_area` VALUES ('360281', '360281', '乐平市', '360200', '区', '', '0801', '333300', '中国,江西省,景德镇市,乐平市', '117.128870', '28.962950', 'Leping', '乐平', '0');
INSERT INTO `sys_area` VALUES ('360300', '360300', '萍乡市', '360000', '市', '', '0799', '337000', '中国,江西省,萍乡市', '113.852186', '27.622946', 'Pingxiang', '萍乡', '0');
INSERT INTO `sys_area` VALUES ('360302', '360302', '安源区', '360300', '区', '', '0800', '337000', '中国,江西省,萍乡市,安源区', '113.891350', '27.616530', 'Anyuan', '安源', '0');
INSERT INTO `sys_area` VALUES ('360313', '360313', '湘东区', '360300', '区', '', '0801', '337016', '中国,江西省,萍乡市,湘东区', '113.732940', '27.640070', 'Xiangdong', '湘东', '0');
INSERT INTO `sys_area` VALUES ('360321', '360321', '莲花县', '360300', '区', '', '0802', '337100', '中国,江西省,萍乡市,莲花县', '113.961420', '27.128660', 'Lianhua', '莲花', '0');
INSERT INTO `sys_area` VALUES ('360322', '360322', '上栗县', '360300', '区', '', '0803', '337009', '中国,江西省,萍乡市,上栗县', '113.794030', '27.874670', 'Shangli', '上栗', '0');
INSERT INTO `sys_area` VALUES ('360323', '360323', '芦溪县', '360300', '区', '', '0804', '337053', '中国,江西省,萍乡市,芦溪县', '114.029510', '27.630630', 'Luxi', '芦溪', '0');
INSERT INTO `sys_area` VALUES ('360400', '360400', '九江市', '360000', '市', '', '0792', '332000', '中国,江西省,九江市', '115.992811', '29.712034', 'Jiujiang', '九江', '0');
INSERT INTO `sys_area` VALUES ('360402', '360402', '庐山区', '360400', '区', '', '0792', '332005', '中国,江西省,九江市,庐山区', '115.989040', '29.671770', 'Lushan', '庐山', '0');
INSERT INTO `sys_area` VALUES ('360403', '360403', '浔阳区', '360400', '区', '', '0792', '332000', '中国,江西省,九江市,浔阳区', '115.989860', '29.727860', 'Xunyang', '浔阳', '0');
INSERT INTO `sys_area` VALUES ('360421', '360421', '九江县', '360400', '区', '', '0792', '332100', '中国,江西省,九江市,九江县', '115.911280', '29.608520', 'Jiujiang', '九江', '0');
INSERT INTO `sys_area` VALUES ('360423', '360423', '武宁县', '360400', '区', '', '0792', '332300', '中国,江西省,九江市,武宁县', '115.100610', '29.258400', 'Wuning', '武宁', '0');
INSERT INTO `sys_area` VALUES ('360424', '360424', '修水县', '360400', '区', '', '0792', '332400', '中国,江西省,九江市,修水县', '114.546840', '29.025390', 'Xiushui', '修水', '0');
INSERT INTO `sys_area` VALUES ('360425', '360425', '永修县', '360400', '区', '', '0792', '330300', '中国,江西省,九江市,永修县', '115.809110', '29.020930', 'Yongxiu', '永修', '0');
INSERT INTO `sys_area` VALUES ('360426', '360426', '德安县', '360400', '区', '', '0792', '330400', '中国,江西省,九江市,德安县', '115.756010', '29.313410', 'De\'an', '德安', '0');
INSERT INTO `sys_area` VALUES ('360427', '360427', '星子县', '360400', '区', '', '0792', '332800', '中国,江西省,九江市,星子县', '116.044920', '29.446080', 'Xingzi', '星子', '0');
INSERT INTO `sys_area` VALUES ('360428', '360428', '都昌县', '360400', '区', '', '0792', '332600', '中国,江西省,九江市,都昌县', '116.204010', '29.273270', 'Duchang', '都昌', '0');
INSERT INTO `sys_area` VALUES ('360429', '360429', '湖口县', '360400', '区', '', '0792', '332500', '中国,江西省,九江市,湖口县', '116.218530', '29.738180', 'Hukou', '湖口', '0');
INSERT INTO `sys_area` VALUES ('360430', '360430', '彭泽县', '360400', '区', '', '0792', '332700', '中国,江西省,九江市,彭泽县', '116.550110', '29.895890', 'Pengze', '彭泽', '0');
INSERT INTO `sys_area` VALUES ('360481', '360481', '瑞昌市', '360400', '区', '', '0792', '332200', '中国,江西省,九江市,瑞昌市', '115.667050', '29.671830', 'Ruichang', '瑞昌', '0');
INSERT INTO `sys_area` VALUES ('360482', '360482', '共青城市', '360400', '区', '', '0792', '332020', '中国,江西省,九江市,共青城市', '115.801939', '29.238785', 'Gongqingcheng', '共青城', '0');
INSERT INTO `sys_area` VALUES ('360500', '360500', '新余市', '360000', '市', '', '0790', '338025', '中国,江西省,新余市', '114.930835', '27.810834', 'Xinyu', '新余', '0');
INSERT INTO `sys_area` VALUES ('360502', '360502', '渝水区', '360500', '区', '', '0790', '338025', '中国,江西省,新余市,渝水区', '114.944000', '27.800980', 'Yushui', '渝水', '0');
INSERT INTO `sys_area` VALUES ('360521', '360521', '分宜县', '360500', '区', '', '0790', '336600', '中国,江西省,新余市,分宜县', '114.691890', '27.814750', 'Fenyi', '分宜', '0');
INSERT INTO `sys_area` VALUES ('360600', '360600', '鹰潭市', '360000', '市', '', '0701', '335000', '中国,江西省,鹰潭市', '117.033838', '28.238638', 'Yingtan', '鹰潭', '0');
INSERT INTO `sys_area` VALUES ('360602', '360602', '月湖区', '360600', '区', '', '0701', '335000', '中国,江西省,鹰潭市,月湖区', '117.037320', '28.239130', 'Yuehu', '月湖', '0');
INSERT INTO `sys_area` VALUES ('360622', '360622', '余江县', '360600', '区', '', '0701', '335200', '中国,江西省,鹰潭市,余江县', '116.818510', '28.210340', 'Yujiang', '余江', '0');
INSERT INTO `sys_area` VALUES ('360681', '360681', '贵溪市', '360600', '区', '', '0701', '335400', '中国,江西省,鹰潭市,贵溪市', '117.242460', '28.292600', 'Guixi', '贵溪', '0');
INSERT INTO `sys_area` VALUES ('360700', '360700', '赣州市', '360000', '市', '', '0797', '341000', '中国,江西省,赣州市', '114.940278', '25.850970', 'Ganzhou', '赣州', '0');
INSERT INTO `sys_area` VALUES ('360702', '360702', '章贡区', '360700', '区', '', '0797', '341000', '中国,江西省,赣州市,章贡区', '114.942840', '25.862400', 'Zhanggong', '章贡', '0');
INSERT INTO `sys_area` VALUES ('360703', '360703', '南康区', '360700', '区', '', '0797', '341400', '中国,江西省,赣州市,南康区', '114.756933', '25.661721', 'Nankang', '南康', '0');
INSERT INTO `sys_area` VALUES ('360721', '360721', '赣县', '360700', '区', '', '0797', '341100', '中国,江西省,赣州市,赣县', '115.011710', '25.861490', 'Ganxian', '赣县', '0');
INSERT INTO `sys_area` VALUES ('360722', '360722', '信丰县', '360700', '区', '', '0797', '341600', '中国,江西省,赣州市,信丰县', '114.922790', '25.386120', 'Xinfeng', '信丰', '0');
INSERT INTO `sys_area` VALUES ('360723', '360723', '大余县', '360700', '区', '', '0797', '341500', '中国,江西省,赣州市,大余县', '114.357570', '25.395610', 'Dayu', '大余', '0');
INSERT INTO `sys_area` VALUES ('360724', '360724', '上犹县', '360700', '区', '', '0797', '341200', '中国,江西省,赣州市,上犹县', '114.541380', '25.795670', 'Shangyou', '上犹', '0');
INSERT INTO `sys_area` VALUES ('360725', '360725', '崇义县', '360700', '区', '', '0797', '341300', '中国,江西省,赣州市,崇义县', '114.308350', '25.681860', 'Chongyi', '崇义', '0');
INSERT INTO `sys_area` VALUES ('360726', '360726', '安远县', '360700', '区', '', '0797', '342100', '中国,江西省,赣州市,安远县', '115.394830', '25.137100', 'Anyuan', '安远', '0');
INSERT INTO `sys_area` VALUES ('360727', '360727', '龙南县', '360700', '区', '', '0797', '341700', '中国,江西省,赣州市,龙南县', '114.789940', '24.910860', 'Longnan', '龙南', '0');
INSERT INTO `sys_area` VALUES ('360728', '360728', '定南县', '360700', '区', '', '0797', '341900', '中国,江西省,赣州市,定南县', '115.027130', '24.783950', 'Dingnan', '定南', '0');
INSERT INTO `sys_area` VALUES ('360729', '360729', '全南县', '360700', '区', '', '0797', '341800', '中国,江西省,赣州市,全南县', '114.529200', '24.743240', 'Quannan', '全南', '0');
INSERT INTO `sys_area` VALUES ('360730', '360730', '宁都县', '360700', '区', '', '0797', '342800', '中国,江西省,赣州市,宁都县', '116.015650', '26.472270', 'Ningdu', '宁都', '0');
INSERT INTO `sys_area` VALUES ('360731', '360731', '于都县', '360700', '区', '', '0797', '342300', '中国,江西省,赣州市,于都县', '115.414150', '25.952570', 'Yudu', '于都', '0');
INSERT INTO `sys_area` VALUES ('360732', '360732', '兴国县', '360700', '区', '', '0797', '342400', '中国,江西省,赣州市,兴国县', '115.363090', '26.337760', 'Xingguo', '兴国', '0');
INSERT INTO `sys_area` VALUES ('360733', '360733', '会昌县', '360700', '区', '', '0797', '342600', '中国,江西省,赣州市,会昌县', '115.785550', '25.600680', 'Huichang', '会昌', '0');
INSERT INTO `sys_area` VALUES ('360734', '360734', '寻乌县', '360700', '区', '', '0797', '342200', '中国,江西省,赣州市,寻乌县', '115.648520', '24.955130', 'Xunwu', '寻乌', '0');
INSERT INTO `sys_area` VALUES ('360735', '360735', '石城县', '360700', '区', '', '0797', '342700', '中国,江西省,赣州市,石城县', '116.344200', '26.326170', 'Shicheng', '石城', '0');
INSERT INTO `sys_area` VALUES ('360781', '360781', '瑞金市', '360700', '区', '', '0797', '342500', '中国,江西省,赣州市,瑞金市', '116.027030', '25.885570', 'Ruijin', '瑞金', '0');
INSERT INTO `sys_area` VALUES ('360800', '360800', '吉安市', '360000', '市', '', '0796', '343000', '中国,江西省,吉安市', '114.986373', '27.111699', 'Ji\'an', '吉安', '0');
INSERT INTO `sys_area` VALUES ('360802', '360802', '吉州区', '360800', '区', '', '0796', '343000', '中国,江西省,吉安市,吉州区', '114.975980', '27.106690', 'Jizhou', '吉州', '0');
INSERT INTO `sys_area` VALUES ('360803', '360803', '青原区', '360800', '区', '', '0796', '343009', '中国,江西省,吉安市,青原区', '115.017470', '27.105770', 'Qingyuan', '青原', '0');
INSERT INTO `sys_area` VALUES ('360821', '360821', '吉安县', '360800', '区', '', '0796', '343100', '中国,江西省,吉安市,吉安县', '114.906950', '27.040480', 'Ji\'an', '吉安', '0');
INSERT INTO `sys_area` VALUES ('360822', '360822', '吉水县', '360800', '区', '', '0796', '331600', '中国,江西省,吉安市,吉水县', '115.134300', '27.210710', 'Jishui', '吉水', '0');
INSERT INTO `sys_area` VALUES ('360823', '360823', '峡江县', '360800', '区', '', '0796', '331409', '中国,江西省,吉安市,峡江县', '115.317230', '27.576000', 'Xiajiang', '峡江', '0');
INSERT INTO `sys_area` VALUES ('360824', '360824', '新干县', '360800', '区', '', '0796', '331300', '中国,江西省,吉安市,新干县', '115.393060', '27.740920', 'Xingan', '新干', '0');
INSERT INTO `sys_area` VALUES ('360825', '360825', '永丰县', '360800', '区', '', '0796', '331500', '中国,江西省,吉安市,永丰县', '115.442380', '27.317850', 'Yongfeng', '永丰', '0');
INSERT INTO `sys_area` VALUES ('360826', '360826', '泰和县', '360800', '区', '', '0796', '343700', '中国,江西省,吉安市,泰和县', '114.907890', '26.791130', 'Taihe', '泰和', '0');
INSERT INTO `sys_area` VALUES ('360827', '360827', '遂川县', '360800', '区', '', '0796', '343900', '中国,江西省,吉安市,遂川县', '114.516290', '26.325980', 'Suichuan', '遂川', '0');
INSERT INTO `sys_area` VALUES ('360828', '360828', '万安县', '360800', '区', '', '0796', '343800', '中国,江西省,吉安市,万安县', '114.786590', '26.459310', 'Wan\'an', '万安', '0');
INSERT INTO `sys_area` VALUES ('360829', '360829', '安福县', '360800', '区', '', '0796', '343200', '中国,江西省,吉安市,安福县', '114.619560', '27.392760', 'Anfu', '安福', '0');
INSERT INTO `sys_area` VALUES ('360830', '360830', '永新县', '360800', '区', '', '0796', '343400', '中国,江西省,吉安市,永新县', '114.242460', '26.944880', 'Yongxin', '永新', '0');
INSERT INTO `sys_area` VALUES ('360881', '360881', '井冈山市', '360800', '区', '', '0796', '343600', '中国,江西省,吉安市,井冈山市', '114.289490', '26.748040', 'Jinggangshan', '井冈山', '0');
INSERT INTO `sys_area` VALUES ('360900', '360900', '宜春市', '360000', '市', '', '0795', '336000', '中国,江西省,宜春市', '114.391136', '27.804300', 'Yichun', '宜春', '0');
INSERT INTO `sys_area` VALUES ('360902', '360902', '袁州区', '360900', '区', '', '0795', '336000', '中国,江西省,宜春市,袁州区', '114.382460', '27.796490', 'Yuanzhou', '袁州', '0');
INSERT INTO `sys_area` VALUES ('360921', '360921', '奉新县', '360900', '区', '', '0795', '330700', '中国,江西省,宜春市,奉新县', '115.400360', '28.687900', 'Fengxin', '奉新', '0');
INSERT INTO `sys_area` VALUES ('360922', '360922', '万载县', '360900', '区', '', '0795', '336100', '中国,江西省,宜春市,万载县', '114.445800', '28.106560', 'Wanzai', '万载', '0');
INSERT INTO `sys_area` VALUES ('360923', '360923', '上高县', '360900', '区', '', '0795', '336400', '中国,江西省,宜春市,上高县', '114.924590', '28.234230', 'Shanggao', '上高', '0');
INSERT INTO `sys_area` VALUES ('360924', '360924', '宜丰县', '360900', '区', '', '0795', '336300', '中国,江西省,宜春市,宜丰县', '114.780300', '28.385550', 'Yifeng', '宜丰', '0');
INSERT INTO `sys_area` VALUES ('360925', '360925', '靖安县', '360900', '区', '', '0795', '330600', '中国,江西省,宜春市,靖安县', '115.362790', '28.861670', 'Jing\'an', '靖安', '0');
INSERT INTO `sys_area` VALUES ('360926', '360926', '铜鼓县', '360900', '区', '', '0795', '336200', '中国,江西省,宜春市,铜鼓县', '114.370360', '28.523110', 'Tonggu', '铜鼓', '0');
INSERT INTO `sys_area` VALUES ('360981', '360981', '丰城市', '360900', '区', '', '0795', '331100', '中国,江西省,宜春市,丰城市', '115.771140', '28.159180', 'Fengcheng', '丰城', '0');
INSERT INTO `sys_area` VALUES ('360982', '360982', '樟树市', '360900', '区', '', '0795', '331200', '中国,江西省,宜春市,樟树市', '115.546500', '28.053320', 'Zhangshu', '樟树', '0');
INSERT INTO `sys_area` VALUES ('360983', '360983', '高安市', '360900', '区', '', '0795', '330800', '中国,江西省,宜春市,高安市', '115.375300', '28.417800', 'Gao\'an', '高安', '0');
INSERT INTO `sys_area` VALUES ('361000', '361000', '抚州市', '360000', '市', '', '0794', '344000', '中国,江西省,抚州市', '116.358351', '27.983850', 'Fuzhou', '抚州', '0');
INSERT INTO `sys_area` VALUES ('361002', '361002', '临川区', '361000', '区', '', '0794', '344000', '中国,江西省,抚州市,临川区', '116.359190', '27.977210', 'Linchuan', '临川', '0');
INSERT INTO `sys_area` VALUES ('361021', '361021', '南城县', '361000', '区', '', '0794', '344700', '中国,江西省,抚州市,南城县', '116.644190', '27.553810', 'Nancheng', '南城', '0');
INSERT INTO `sys_area` VALUES ('361022', '361022', '黎川县', '361000', '区', '', '0794', '344600', '中国,江西省,抚州市,黎川县', '116.907710', '27.282320', 'Lichuan', '黎川', '0');
INSERT INTO `sys_area` VALUES ('361023', '361023', '南丰县', '361000', '区', '', '0794', '344500', '中国,江西省,抚州市,南丰县', '116.525600', '27.218420', 'Nanfeng', '南丰', '0');
INSERT INTO `sys_area` VALUES ('361024', '361024', '崇仁县', '361000', '区', '', '0794', '344200', '中国,江西省,抚州市,崇仁县', '116.060210', '27.759620', 'Chongren', '崇仁', '0');
INSERT INTO `sys_area` VALUES ('361025', '361025', '乐安县', '361000', '区', '', '0794', '344300', '中国,江西省,抚州市,乐安县', '115.831080', '27.428120', 'Le\'an', '乐安', '0');
INSERT INTO `sys_area` VALUES ('361026', '361026', '宜黄县', '361000', '区', '', '0794', '344400', '中国,江西省,抚州市,宜黄县', '116.236260', '27.554870', 'Yihuang', '宜黄', '0');
INSERT INTO `sys_area` VALUES ('361027', '361027', '金溪县', '361000', '区', '', '0794', '344800', '中国,江西省,抚州市,金溪县', '116.773920', '27.907530', 'Jinxi', '金溪', '0');
INSERT INTO `sys_area` VALUES ('361028', '361028', '资溪县', '361000', '区', '', '0794', '335300', '中国,江西省,抚州市,资溪县', '117.069390', '27.704930', 'Zixi', '资溪', '0');
INSERT INTO `sys_area` VALUES ('361029', '361029', '东乡县', '361000', '区', '', '0794', '331800', '中国,江西省,抚州市,东乡县', '116.590390', '28.236140', 'Dongxiang', '东乡', '0');
INSERT INTO `sys_area` VALUES ('361030', '361030', '广昌县', '361000', '区', '', '0794', '344900', '中国,江西省,抚州市,广昌县', '116.325470', '26.834100', 'Guangchang', '广昌', '0');
INSERT INTO `sys_area` VALUES ('361100', '361100', '上饶市', '360000', '市', '', '0793', '334000', '中国,江西省,上饶市', '117.971185', '28.444420', 'Shangrao', '上饶', '0');
INSERT INTO `sys_area` VALUES ('361102', '361102', '信州区', '361100', '区', '', '0793', '334000', '中国,江西省,上饶市,信州区', '117.966820', '28.431210', 'Xinzhou', '信州', '0');
INSERT INTO `sys_area` VALUES ('361121', '361121', '上饶县', '361100', '区', '', '0793', '334100', '中国,江西省,上饶市,上饶县', '117.908840', '28.448560', 'Shangrao', '上饶', '0');
INSERT INTO `sys_area` VALUES ('361122', '361122', '广丰县', '361100', '区', '', '0793', '334600', '中国,江西省,上饶市,广丰县', '118.191580', '28.437660', 'Guangfeng', '广丰', '0');
INSERT INTO `sys_area` VALUES ('361123', '361123', '玉山县', '361100', '区', '', '0793', '334700', '中国,江西省,上饶市,玉山县', '118.244620', '28.681800', 'Yushan', '玉山', '0');
INSERT INTO `sys_area` VALUES ('361124', '361124', '铅山县', '361100', '区', '', '0793', '334500', '中国,江西省,上饶市,铅山县', '117.709960', '28.315490', 'Yanshan', '铅山', '0');
INSERT INTO `sys_area` VALUES ('361125', '361125', '横峰县', '361100', '区', '', '0793', '334300', '中国,江西省,上饶市,横峰县', '117.596400', '28.407160', 'Hengfeng', '横峰', '0');
INSERT INTO `sys_area` VALUES ('361126', '361126', '弋阳县', '361100', '区', '', '0793', '334400', '中国,江西省,上饶市,弋阳县', '117.459290', '28.374510', 'Yiyang', '弋阳', '0');
INSERT INTO `sys_area` VALUES ('361127', '361127', '余干县', '361100', '区', '', '0793', '335100', '中国,江西省,上饶市,余干县', '116.695550', '28.702060', 'Yugan', '余干', '0');
INSERT INTO `sys_area` VALUES ('361128', '361128', '鄱阳县', '361100', '区', '', '0793', '333100', '中国,江西省,上饶市,鄱阳县', '116.699670', '29.011800', 'Poyang', '鄱阳', '0');
INSERT INTO `sys_area` VALUES ('361129', '361129', '万年县', '361100', '区', '', '0793', '335500', '中国,江西省,上饶市,万年县', '117.068840', '28.695370', 'Wannian', '万年', '0');
INSERT INTO `sys_area` VALUES ('361130', '361130', '婺源县', '361100', '区', '', '0793', '333200', '中国,江西省,上饶市,婺源县', '117.861050', '29.248410', 'Wuyuan', '婺源', '0');
INSERT INTO `sys_area` VALUES ('361181', '361181', '德兴市', '361100', '区', '', '0793', '334200', '中国,江西省,上饶市,德兴市', '117.579190', '28.947360', 'Dexing', '德兴', '0');
INSERT INTO `sys_area` VALUES ('370000', '370000', '山东省', '100000', '省', '', '', '', '中国,山东省', '117.000923', '36.675807', 'Shandong', '山东', '0');
INSERT INTO `sys_area` VALUES ('370100', '370100', '济南市', '370000', '市', '', '0531', '250001', '中国,山东省,济南市', '117.000923', '36.675807', 'Jinan', '济南', '0');
INSERT INTO `sys_area` VALUES ('370102', '370102', '历下区', '370100', '区', '', '0531', '250014', '中国,山东省,济南市,历下区', '117.076800', '36.666610', 'Lixia', '历下', '0');
INSERT INTO `sys_area` VALUES ('370103', '370103', '市中区', '370100', '区', '', '0531', '250001', '中国,山东省,济南市,市中区', '116.997410', '36.651010', 'Shizhongqu', '市中区', '0');
INSERT INTO `sys_area` VALUES ('370104', '370104', '槐荫区', '370100', '区', '', '0531', '250117', '中国,山东省,济南市,槐荫区', '116.900750', '36.651360', 'Huaiyin', '槐荫', '0');
INSERT INTO `sys_area` VALUES ('370105', '370105', '天桥区', '370100', '区', '', '0531', '250031', '中国,山东省,济南市,天桥区', '116.987490', '36.678010', 'Tianqiao', '天桥', '0');
INSERT INTO `sys_area` VALUES ('370112', '370112', '历城区', '370100', '区', '', '0531', '250100', '中国,山东省,济南市,历城区', '117.065090', '36.679950', 'Licheng', '历城', '0');
INSERT INTO `sys_area` VALUES ('370113', '370113', '长清区', '370100', '区', '', '0531', '250300', '中国,山东省,济南市,长清区', '116.751920', '36.553520', 'Changqing', '长清', '0');
INSERT INTO `sys_area` VALUES ('370124', '370124', '平阴县', '370100', '区', '', '0531', '250400', '中国,山东省,济南市,平阴县', '116.455870', '36.289550', 'Pingyin', '平阴', '0');
INSERT INTO `sys_area` VALUES ('370125', '370125', '济阳县', '370100', '区', '', '0531', '251400', '中国,山东省,济南市,济阳县', '117.173270', '36.978450', 'Jiyang', '济阳', '0');
INSERT INTO `sys_area` VALUES ('370126', '370126', '商河县', '370100', '区', '', '0531', '251600', '中国,山东省,济南市,商河县', '117.157220', '37.311190', 'Shanghe', '商河', '0');
INSERT INTO `sys_area` VALUES ('370181', '370181', '章丘市', '370100', '区', '', '0531', '250200', '中国,山东省,济南市,章丘市', '117.536770', '36.713920', 'Zhangqiu', '章丘', '0');
INSERT INTO `sys_area` VALUES ('370200', '370200', '青岛市', '370000', '市', '', '0532', '266001', '中国,山东省,青岛市', '120.369557', '36.094406', 'Qingdao', '青岛', '0');
INSERT INTO `sys_area` VALUES ('370202', '370202', '市南区', '370200', '区', '', '0532', '266001', '中国,山东省,青岛市,市南区', '120.387730', '36.066710', 'Shinan', '市南', '0');
INSERT INTO `sys_area` VALUES ('370203', '370203', '市北区', '370200', '区', '', '0532', '266011', '中国,山东省,青岛市,市北区', '120.374690', '36.087340', 'Shibei', '市北', '0');
INSERT INTO `sys_area` VALUES ('370211', '370211', '黄岛区', '370200', '区', '', '0532', '266500', '中国,山东省,青岛市,黄岛区', '120.197750', '35.960650', 'Huangdao', '黄岛', '0');
INSERT INTO `sys_area` VALUES ('370212', '370212', '崂山区', '370200', '区', '', '0532', '266100', '中国,山东省,青岛市,崂山区', '120.469230', '36.107170', 'Laoshan', '崂山', '0');
INSERT INTO `sys_area` VALUES ('370213', '370213', '李沧区', '370200', '区', '', '0532', '266021', '中国,山东省,青岛市,李沧区', '120.432860', '36.145020', 'Licang', '李沧', '0');
INSERT INTO `sys_area` VALUES ('370214', '370214', '城阳区', '370200', '区', '', '0532', '266041', '中国,山东省,青岛市,城阳区', '120.396210', '36.307350', 'Chengyang', '城阳', '0');
INSERT INTO `sys_area` VALUES ('370281', '370281', '胶州市', '370200', '区', '', '0532', '266300', '中国,山东省,青岛市,胶州市', '120.033500', '36.264420', 'Jiaozhou', '胶州', '0');
INSERT INTO `sys_area` VALUES ('370282', '370282', '即墨市', '370200', '区', '', '0532', '266200', '中国,山东省,青岛市,即墨市', '120.446990', '36.389070', 'Jimo', '即墨', '0');
INSERT INTO `sys_area` VALUES ('370283', '370283', '平度市', '370200', '区', '', '0532', '266700', '中国,山东省,青岛市,平度市', '119.959960', '36.786880', 'Pingdu', '平度', '0');
INSERT INTO `sys_area` VALUES ('370285', '370285', '莱西市', '370200', '区', '', '0532', '266600', '中国,山东省,青岛市,莱西市', '120.517730', '36.888040', 'Laixi', '莱西', '0');
INSERT INTO `sys_area` VALUES ('370286', '370286', '西海岸新区', '370200', '区', '', '0532', '266500', '中国,山东省,青岛市,西海岸新区', '120.197750', '35.960650', 'Xihai\'an', '西海岸', '0');
INSERT INTO `sys_area` VALUES ('370300', '370300', '淄博市', '370000', '市', '', '0533', '255039', '中国,山东省,淄博市', '118.047648', '36.814939', 'Zibo', '淄博', '0');
INSERT INTO `sys_area` VALUES ('370302', '370302', '淄川区', '370300', '区', '', '0533', '255100', '中国,山东省,淄博市,淄川区', '117.966550', '36.643390', 'Zichuan', '淄川', '0');
INSERT INTO `sys_area` VALUES ('370303', '370303', '张店区', '370300', '区', '', '0533', '255022', '中国,山东省,淄博市,张店区', '118.017880', '36.806760', 'Zhangdian', '张店', '0');
INSERT INTO `sys_area` VALUES ('370304', '370304', '博山区', '370300', '区', '', '0533', '255200', '中国,山东省,淄博市,博山区', '117.861660', '36.494690', 'Boshan', '博山', '0');
INSERT INTO `sys_area` VALUES ('370305', '370305', '临淄区', '370300', '区', '', '0533', '255400', '中国,山东省,淄博市,临淄区', '118.309660', '36.825900', 'Linzi', '临淄', '0');
INSERT INTO `sys_area` VALUES ('370306', '370306', '周村区', '370300', '区', '', '0533', '255300', '中国,山东省,淄博市,周村区', '117.869690', '36.803220', 'Zhoucun', '周村', '0');
INSERT INTO `sys_area` VALUES ('370321', '370321', '桓台县', '370300', '区', '', '0533', '256400', '中国,山东省,淄博市,桓台县', '118.096980', '36.960360', 'Huantai', '桓台', '0');
INSERT INTO `sys_area` VALUES ('370322', '370322', '高青县', '370300', '区', '', '0533', '256300', '中国,山东省,淄博市,高青县', '117.827080', '37.171970', 'Gaoqing', '高青', '0');
INSERT INTO `sys_area` VALUES ('370323', '370323', '沂源县', '370300', '区', '', '0533', '256100', '中国,山东省,淄博市,沂源县', '118.171050', '36.185360', 'Yiyuan', '沂源', '0');
INSERT INTO `sys_area` VALUES ('370400', '370400', '枣庄市', '370000', '市', '', '0632', '277101', '中国,山东省,枣庄市', '117.557964', '34.856424', 'Zaozhuang', '枣庄', '0');
INSERT INTO `sys_area` VALUES ('370402', '370402', '市中区', '370400', '区', '', '0632', '277101', '中国,山东省,枣庄市,市中区', '117.556030', '34.863910', 'Shizhongqu', '市中区', '0');
INSERT INTO `sys_area` VALUES ('370403', '370403', '薛城区', '370400', '区', '', '0632', '277000', '中国,山东省,枣庄市,薛城区', '117.263180', '34.794980', 'Xuecheng', '薛城', '0');
INSERT INTO `sys_area` VALUES ('370404', '370404', '峄城区', '370400', '区', '', '0632', '277300', '中国,山东省,枣庄市,峄城区', '117.590570', '34.772250', 'Yicheng', '峄城', '0');
INSERT INTO `sys_area` VALUES ('370405', '370405', '台儿庄区', '370400', '区', '', '0632', '277400', '中国,山东省,枣庄市,台儿庄区', '117.734520', '34.563630', 'Taierzhuang', '台儿庄', '0');
INSERT INTO `sys_area` VALUES ('370406', '370406', '山亭区', '370400', '区', '', '0632', '277200', '中国,山东省,枣庄市,山亭区', '117.466300', '35.095410', 'Shanting', '山亭', '0');
INSERT INTO `sys_area` VALUES ('370481', '370481', '滕州市', '370400', '区', '', '0632', '277500', '中国,山东省,枣庄市,滕州市', '117.165000', '35.105340', 'Tengzhou', '滕州', '0');
INSERT INTO `sys_area` VALUES ('370500', '370500', '东营市', '370000', '市', '', '0546', '257093', '中国,山东省,东营市', '118.496300', '37.461266', 'Dongying', '东营', '0');
INSERT INTO `sys_area` VALUES ('370502', '370502', '东营区', '370500', '区', '', '0546', '257029', '中国,山东省,东营市,东营区', '118.581600', '37.448750', 'Dongying', '东营', '0');
INSERT INTO `sys_area` VALUES ('370503', '370503', '河口区', '370500', '区', '', '0546', '257200', '中国,山东省,东营市,河口区', '118.524900', '37.885410', 'Hekou', '河口', '0');
INSERT INTO `sys_area` VALUES ('370521', '370521', '垦利县', '370500', '区', '', '0546', '257500', '中国,山东省,东营市,垦利县', '118.548150', '37.588250', 'Kenli', '垦利', '0');
INSERT INTO `sys_area` VALUES ('370522', '370522', '利津县', '370500', '区', '', '0546', '257400', '中国,山东省,东营市,利津县', '118.256370', '37.491570', 'Lijin', '利津', '0');
INSERT INTO `sys_area` VALUES ('370523', '370523', '广饶县', '370500', '区', '', '0546', '257300', '中国,山东省,东营市,广饶县', '118.407040', '37.053810', 'Guangrao', '广饶', '0');
INSERT INTO `sys_area` VALUES ('370600', '370600', '烟台市', '370000', '市', '', '0635', '264010', '中国,山东省,烟台市', '121.391382', '37.539297', 'Yantai', '烟台', '0');
INSERT INTO `sys_area` VALUES ('370602', '370602', '芝罘区', '370600', '区', '', '0635', '264001', '中国,山东省,烟台市,芝罘区', '121.400230', '37.540640', 'Zhifu', '芝罘', '0');
INSERT INTO `sys_area` VALUES ('370611', '370611', '福山区', '370600', '区', '', '0635', '265500', '中国,山东省,烟台市,福山区', '121.268120', '37.498410', 'Fushan', '福山', '0');
INSERT INTO `sys_area` VALUES ('370612', '370612', '牟平区', '370600', '区', '', '0635', '264100', '中国,山东省,烟台市,牟平区', '121.600670', '37.388460', 'Muping', '牟平', '0');
INSERT INTO `sys_area` VALUES ('370613', '370613', '莱山区', '370600', '区', '', '0635', '264600', '中国,山东省,烟台市,莱山区', '121.445120', '37.511650', 'Laishan', '莱山', '0');
INSERT INTO `sys_area` VALUES ('370634', '370634', '长岛县', '370600', '区', '', '0635', '265800', '中国,山东省,烟台市,长岛县', '120.738000', '37.917540', 'Changdao', '长岛', '0');
INSERT INTO `sys_area` VALUES ('370681', '370681', '龙口市', '370600', '区', '', '0635', '265700', '中国,山东省,烟台市,龙口市', '120.506340', '37.640640', 'Longkou', '龙口', '0');
INSERT INTO `sys_area` VALUES ('370682', '370682', '莱阳市', '370600', '区', '', '0635', '265200', '中国,山东省,烟台市,莱阳市', '120.710660', '36.980120', 'Laiyang', '莱阳', '0');
INSERT INTO `sys_area` VALUES ('370683', '370683', '莱州市', '370600', '区', '', '0635', '261400', '中国,山东省,烟台市,莱州市', '119.941370', '37.178060', 'Laizhou', '莱州', '0');
INSERT INTO `sys_area` VALUES ('370684', '370684', '蓬莱市', '370600', '区', '', '0635', '265600', '中国,山东省,烟台市,蓬莱市', '120.759880', '37.811190', 'Penglai', '蓬莱', '0');
INSERT INTO `sys_area` VALUES ('370685', '370685', '招远市', '370600', '区', '', '0635', '265400', '中国,山东省,烟台市,招远市', '120.404810', '37.362690', 'Zhaoyuan', '招远', '0');
INSERT INTO `sys_area` VALUES ('370686', '370686', '栖霞市', '370600', '区', '', '0635', '265300', '中国,山东省,烟台市,栖霞市', '120.850250', '37.335710', 'Qixia', '栖霞', '0');
INSERT INTO `sys_area` VALUES ('370687', '370687', '海阳市', '370600', '区', '', '0635', '265100', '中国,山东省,烟台市,海阳市', '121.159760', '36.776220', 'Haiyang', '海阳', '0');
INSERT INTO `sys_area` VALUES ('370700', '370700', '潍坊市', '370000', '市', '', '0536', '261041', '中国,山东省,潍坊市', '119.107078', '36.709250', 'Weifang', '潍坊', '0');
INSERT INTO `sys_area` VALUES ('370702', '370702', '潍城区', '370700', '区', '', '0536', '261021', '中国,山东省,潍坊市,潍城区', '119.105820', '36.713900', 'Weicheng', '潍城', '0');
INSERT INTO `sys_area` VALUES ('370703', '370703', '寒亭区', '370700', '区', '', '0536', '261100', '中国,山东省,潍坊市,寒亭区', '119.218320', '36.775040', 'Hanting', '寒亭', '0');
INSERT INTO `sys_area` VALUES ('370704', '370704', '坊子区', '370700', '区', '', '0536', '261200', '中国,山东省,潍坊市,坊子区', '119.164760', '36.652180', 'Fangzi', '坊子', '0');
INSERT INTO `sys_area` VALUES ('370705', '370705', '奎文区', '370700', '区', '', '0536', '261031', '中国,山东省,潍坊市,奎文区', '119.125320', '36.707230', 'Kuiwen', '奎文', '0');
INSERT INTO `sys_area` VALUES ('370724', '370724', '临朐县', '370700', '区', '', '0536', '262600', '中国,山东省,潍坊市,临朐县', '118.544000', '36.512160', 'Linqu', '临朐', '0');
INSERT INTO `sys_area` VALUES ('370725', '370725', '昌乐县', '370700', '区', '', '0536', '262400', '中国,山东省,潍坊市,昌乐县', '118.830170', '36.707800', 'Changle', '昌乐', '0');
INSERT INTO `sys_area` VALUES ('370781', '370781', '青州市', '370700', '区', '', '0536', '262500', '中国,山东省,潍坊市,青州市', '118.479150', '36.685050', 'Qingzhou', '青州', '0');
INSERT INTO `sys_area` VALUES ('370782', '370782', '诸城市', '370700', '区', '', '0536', '262200', '中国,山东省,潍坊市,诸城市', '119.409880', '35.996620', 'Zhucheng', '诸城', '0');
INSERT INTO `sys_area` VALUES ('370783', '370783', '寿光市', '370700', '区', '', '0536', '262700', '中国,山东省,潍坊市,寿光市', '118.740470', '36.881280', 'Shouguang', '寿光', '0');
INSERT INTO `sys_area` VALUES ('370784', '370784', '安丘市', '370700', '区', '', '0536', '262100', '中国,山东省,潍坊市,安丘市', '119.218900', '36.478470', 'Anqiu', '安丘', '0');
INSERT INTO `sys_area` VALUES ('370785', '370785', '高密市', '370700', '区', '', '0536', '261500', '中国,山东省,潍坊市,高密市', '119.757010', '36.383970', 'Gaomi', '高密', '0');
INSERT INTO `sys_area` VALUES ('370786', '370786', '昌邑市', '370700', '区', '', '0536', '261300', '中国,山东省,潍坊市,昌邑市', '119.397670', '36.860080', 'Changyi', '昌邑', '0');
INSERT INTO `sys_area` VALUES ('370800', '370800', '济宁市', '370000', '市', '', '0537', '272119', '中国,山东省,济宁市', '116.587245', '35.415393', 'Jining', '济宁', '0');
INSERT INTO `sys_area` VALUES ('370811', '370811', '任城区', '370800', '区', '', '0537', '272113', '中国,山东省,济宁市,任城区', '116.595040', '35.406590', 'Rencheng', '任城', '0');
INSERT INTO `sys_area` VALUES ('370812', '370812', '兖州区', '370800', '区', '', '0537', '272000', '中国,山东省,济宁市,兖州区', '116.826546', '35.552305', 'Yanzhou ', '兖州', '0');
INSERT INTO `sys_area` VALUES ('370826', '370826', '微山县', '370800', '区', '', '0537', '277600', '中国,山东省,济宁市,微山县', '117.128750', '34.807120', 'Weishan', '微山', '0');
INSERT INTO `sys_area` VALUES ('370827', '370827', '鱼台县', '370800', '区', '', '0537', '272300', '中国,山东省,济宁市,鱼台县', '116.647610', '34.996740', 'Yutai', '鱼台', '0');
INSERT INTO `sys_area` VALUES ('370828', '370828', '金乡县', '370800', '区', '', '0537', '272200', '中国,山东省,济宁市,金乡县', '116.311460', '35.065000', 'Jinxiang', '金乡', '0');
INSERT INTO `sys_area` VALUES ('370829', '370829', '嘉祥县', '370800', '区', '', '0537', '272400', '中国,山东省,济宁市,嘉祥县', '116.342490', '35.408360', 'Jiaxiang', '嘉祥', '0');
INSERT INTO `sys_area` VALUES ('370830', '370830', '汶上县', '370800', '区', '', '0537', '272501', '中国,山东省,济宁市,汶上县', '116.487420', '35.732950', 'Wenshang', '汶上', '0');
INSERT INTO `sys_area` VALUES ('370831', '370831', '泗水县', '370800', '区', '', '0537', '273200', '中国,山东省,济宁市,泗水县', '117.279480', '35.661130', 'Sishui', '泗水', '0');
INSERT INTO `sys_area` VALUES ('370832', '370832', '梁山县', '370800', '区', '', '0537', '272600', '中国,山东省,济宁市,梁山县', '116.096830', '35.803220', 'Liangshan', '梁山', '0');
INSERT INTO `sys_area` VALUES ('370881', '370881', '曲阜市', '370800', '区', '', '0537', '273100', '中国,山东省,济宁市,曲阜市', '116.986450', '35.580910', 'Qufu', '曲阜', '0');
INSERT INTO `sys_area` VALUES ('370883', '370883', '邹城市', '370800', '区', '', '0537', '273500', '中国,山东省,济宁市,邹城市', '116.973350', '35.405310', 'Zoucheng', '邹城', '0');
INSERT INTO `sys_area` VALUES ('370900', '370900', '泰安市', '370000', '市', '', '0538', '271000', '中国,山东省,泰安市', '117.129063', '36.194968', 'Tai\'an', '泰安', '0');
INSERT INTO `sys_area` VALUES ('370902', '370902', '泰山区', '370900', '区', '', '0538', '271000', '中国,山东省,泰安市,泰山区', '117.134460', '36.194110', 'Taishan', '泰山', '0');
INSERT INTO `sys_area` VALUES ('370911', '370911', '岱岳区', '370900', '区', '', '0538', '271000', '中国,山东省,泰安市,岱岳区', '117.041740', '36.187500', 'Daiyue', '岱岳', '0');
INSERT INTO `sys_area` VALUES ('370921', '370921', '宁阳县', '370900', '区', '', '0538', '271400', '中国,山东省,泰安市,宁阳县', '116.805420', '35.759900', 'Ningyang', '宁阳', '0');
INSERT INTO `sys_area` VALUES ('370923', '370923', '东平县', '370900', '区', '', '0538', '271500', '中国,山东省,泰安市,东平县', '116.471130', '35.937920', 'Dongping', '东平', '0');
INSERT INTO `sys_area` VALUES ('370982', '370982', '新泰市', '370900', '区', '', '0538', '271200', '中国,山东省,泰安市,新泰市', '117.769590', '35.908870', 'Xintai', '新泰', '0');
INSERT INTO `sys_area` VALUES ('370983', '370983', '肥城市', '370900', '区', '', '0538', '271600', '中国,山东省,泰安市,肥城市', '116.768150', '36.182470', 'Feicheng', '肥城', '0');
INSERT INTO `sys_area` VALUES ('371000', '371000', '威海市', '370000', '市', '', '0631', '264200', '中国,山东省,威海市', '122.116394', '37.509691', 'Weihai', '威海', '0');
INSERT INTO `sys_area` VALUES ('371002', '371002', '环翠区', '371000', '区', '', '0631', '264200', '中国,山东省,威海市,环翠区', '122.123440', '37.501990', 'Huancui', '环翠', '0');
INSERT INTO `sys_area` VALUES ('371003', '371003', '文登区', '371000', '区', '', '0631', '266440', '中国,山东省,威海市,文登区', '122.057139', '37.196211', 'Wendeng', '文登', '0');
INSERT INTO `sys_area` VALUES ('371082', '371082', '荣成市', '371000', '区', '', '0631', '264300', '中国,山东省,威海市,荣成市', '122.487730', '37.165200', 'Rongcheng', '荣成', '0');
INSERT INTO `sys_area` VALUES ('371083', '371083', '乳山市', '371000', '区', '', '0631', '264500', '中国,山东省,威海市,乳山市', '121.538140', '36.919180', 'Rushan', '乳山', '0');
INSERT INTO `sys_area` VALUES ('371100', '371100', '日照市', '370000', '市', '', '0633', '276800', '中国,山东省,日照市', '119.461208', '35.428588', 'Rizhao', '日照', '0');
INSERT INTO `sys_area` VALUES ('371102', '371102', '东港区', '371100', '区', '', '0633', '276800', '中国,山东省,日照市,东港区', '119.462370', '35.425410', 'Donggang', '东港', '0');
INSERT INTO `sys_area` VALUES ('371103', '371103', '岚山区', '371100', '区', '', '0633', '276808', '中国,山东省,日照市,岚山区', '119.318840', '35.122030', 'Lanshan', '岚山', '0');
INSERT INTO `sys_area` VALUES ('371121', '371121', '五莲县', '371100', '区', '', '0633', '262300', '中国,山东省,日照市,五莲县', '119.207000', '35.750040', 'Wulian', '五莲', '0');
INSERT INTO `sys_area` VALUES ('371122', '371122', '莒县', '371100', '区', '', '0633', '276500', '中国,山东省,日照市,莒县', '118.837890', '35.580540', 'Juxian', '莒县', '0');
INSERT INTO `sys_area` VALUES ('371200', '371200', '莱芜市', '370000', '市', '', '0634', '271100', '中国,山东省,莱芜市', '117.677736', '36.214397', 'Laiwu', '莱芜', '0');
INSERT INTO `sys_area` VALUES ('371202', '371202', '莱城区', '371200', '区', '', '0634', '271199', '中国,山东省,莱芜市,莱城区', '117.659860', '36.203200', 'Laicheng', '莱城', '0');
INSERT INTO `sys_area` VALUES ('371203', '371203', '钢城区', '371200', '区', '', '0634', '271100', '中国,山东省,莱芜市,钢城区', '117.804900', '36.063190', 'Gangcheng', '钢城', '0');
INSERT INTO `sys_area` VALUES ('371300', '371300', '临沂市', '370000', '市', '', '0539', '253000', '中国,山东省,临沂市', '118.326443', '35.065282', 'Linyi', '临沂', '0');
INSERT INTO `sys_area` VALUES ('371302', '371302', '兰山区', '371300', '区', '', '0539', '276002', '中国,山东省,临沂市,兰山区', '118.348170', '35.068720', 'Lanshan', '兰山', '0');
INSERT INTO `sys_area` VALUES ('371311', '371311', '罗庄区', '371300', '区', '', '0539', '276022', '中国,山东省,临沂市,罗庄区', '118.284660', '34.996270', 'Luozhuang', '罗庄', '0');
INSERT INTO `sys_area` VALUES ('371312', '371312', '河东区', '371300', '区', '', '0539', '276034', '中国,山东省,临沂市,河东区', '118.410550', '35.088030', 'Hedong', '河东', '0');
INSERT INTO `sys_area` VALUES ('371321', '371321', '沂南县', '371300', '区', '', '0539', '276300', '中国,山东省,临沂市,沂南县', '118.470610', '35.551310', 'Yinan', '沂南', '0');
INSERT INTO `sys_area` VALUES ('371322', '371322', '郯城县', '371300', '区', '', '0539', '276100', '中国,山东省,临沂市,郯城县', '118.367120', '34.613540', 'Tancheng', '郯城', '0');
INSERT INTO `sys_area` VALUES ('371323', '371323', '沂水县', '371300', '区', '', '0539', '276400', '中国,山东省,临沂市,沂水县', '118.630090', '35.787310', 'Yishui', '沂水', '0');
INSERT INTO `sys_area` VALUES ('371324', '371324', '兰陵县', '371300', '区', '', '0539', '277700', '中国,山东省,临沂市,兰陵县', '117.856592', '34.738315', 'Lanling', '兰陵', '0');
INSERT INTO `sys_area` VALUES ('371325', '371325', '费县', '371300', '区', '', '0539', '273400', '中国,山东省,临沂市,费县', '117.978360', '35.265620', 'Feixian', '费县', '0');
INSERT INTO `sys_area` VALUES ('371326', '371326', '平邑县', '371300', '区', '', '0539', '273300', '中国,山东省,临沂市,平邑县', '117.638670', '35.505730', 'Pingyi', '平邑', '0');
INSERT INTO `sys_area` VALUES ('371327', '371327', '莒南县', '371300', '区', '', '0539', '276600', '中国,山东省,临沂市,莒南县', '118.832270', '35.175390', 'Junan', '莒南', '0');
INSERT INTO `sys_area` VALUES ('371328', '371328', '蒙阴县', '371300', '区', '', '0539', '276200', '中国,山东省,临沂市,蒙阴县', '117.945920', '35.709960', 'Mengyin', '蒙阴', '0');
INSERT INTO `sys_area` VALUES ('371329', '371329', '临沭县', '371300', '区', '', '0539', '276700', '中国,山东省,临沂市,临沭县', '118.652670', '34.920910', 'Linshu', '临沭', '0');
INSERT INTO `sys_area` VALUES ('371400', '371400', '德州市', '370000', '市', '', '0534', '253000', '中国,山东省,德州市', '116.307428', '37.453968', 'Dezhou', '德州', '0');
INSERT INTO `sys_area` VALUES ('371402', '371402', '德城区', '371400', '区', '', '0534', '253012', '中国,山东省,德州市,德城区', '116.299430', '37.451260', 'Decheng', '德城', '0');
INSERT INTO `sys_area` VALUES ('371403', '371403', '陵城区', '371400', '区', '', '0534', '253500', '中国,山东省,德州市,陵城区', '116.576010', '37.335710', 'Lingcheng', '陵城', '0');
INSERT INTO `sys_area` VALUES ('371422', '371422', '宁津县', '371400', '区', '', '0534', '253400', '中国,山东省,德州市,宁津县', '116.797020', '37.653010', 'Ningjin', '宁津', '0');
INSERT INTO `sys_area` VALUES ('371423', '371423', '庆云县', '371400', '区', '', '0534', '253700', '中国,山东省,德州市,庆云县', '117.386350', '37.776160', 'Qingyun', '庆云', '0');
INSERT INTO `sys_area` VALUES ('371424', '371424', '临邑县', '371400', '区', '', '0534', '251500', '中国,山东省,德州市,临邑县', '116.865470', '37.190530', 'Linyi', '临邑', '0');
INSERT INTO `sys_area` VALUES ('371425', '371425', '齐河县', '371400', '区', '', '0534', '251100', '中国,山东省,德州市,齐河县', '116.755150', '36.795320', 'Qihe', '齐河', '0');
INSERT INTO `sys_area` VALUES ('371426', '371426', '平原县', '371400', '区', '', '0534', '253100', '中国,山东省,德州市,平原县', '116.434320', '37.166320', 'Pingyuan', '平原', '0');
INSERT INTO `sys_area` VALUES ('371427', '371427', '夏津县', '371400', '区', '', '0534', '253200', '中国,山东省,德州市,夏津县', '116.001700', '36.948520', 'Xiajin', '夏津', '0');
INSERT INTO `sys_area` VALUES ('371428', '371428', '武城县', '371400', '区', '', '0534', '253300', '中国,山东省,德州市,武城县', '116.070090', '37.214030', 'Wucheng', '武城', '0');
INSERT INTO `sys_area` VALUES ('371481', '371481', '乐陵市', '371400', '区', '', '0534', '253600', '中国,山东省,德州市,乐陵市', '117.231410', '37.731640', 'Leling', '乐陵', '0');
INSERT INTO `sys_area` VALUES ('371482', '371482', '禹城市', '371400', '区', '', '0534', '251200', '中国,山东省,德州市,禹城市', '116.643090', '36.934440', 'Yucheng', '禹城', '0');
INSERT INTO `sys_area` VALUES ('371500', '371500', '聊城市', '370000', '市', '', '0635', '252052', '中国,山东省,聊城市', '115.980367', '36.456013', 'Liaocheng', '聊城', '0');
INSERT INTO `sys_area` VALUES ('371502', '371502', '东昌府区', '371500', '区', '', '0635', '252000', '中国,山东省,聊城市,东昌府区', '115.973830', '36.444580', 'Dongchangfu', '东昌府', '0');
INSERT INTO `sys_area` VALUES ('371521', '371521', '阳谷县', '371500', '区', '', '0635', '252300', '中国,山东省,聊城市,阳谷县', '115.791260', '36.114440', 'Yanggu', '阳谷', '0');
INSERT INTO `sys_area` VALUES ('371522', '371522', '莘县', '371500', '区', '', '0635', '252400', '中国,山东省,聊城市,莘县', '115.669700', '36.234230', 'Shenxian', '莘县', '0');
INSERT INTO `sys_area` VALUES ('371523', '371523', '茌平县', '371500', '区', '', '0635', '252100', '中国,山东省,聊城市,茌平县', '116.254910', '36.579690', 'Chiping', '茌平', '0');
INSERT INTO `sys_area` VALUES ('371524', '371524', '东阿县', '371500', '区', '', '0635', '252200', '中国,山东省,聊城市,东阿县', '116.250120', '36.332090', 'Dong\'e', '东阿', '0');
INSERT INTO `sys_area` VALUES ('371525', '371525', '冠县', '371500', '区', '', '0635', '252500', '中国,山东省,聊城市,冠县', '115.441950', '36.484290', 'Guanxian', '冠县', '0');
INSERT INTO `sys_area` VALUES ('371526', '371526', '高唐县', '371500', '区', '', '0635', '252800', '中国,山东省,聊城市,高唐县', '116.231720', '36.865350', 'Gaotang', '高唐', '0');
INSERT INTO `sys_area` VALUES ('371581', '371581', '临清市', '371500', '区', '', '0635', '252600', '中国,山东省,聊城市,临清市', '115.706290', '36.839450', 'Linqing', '临清', '0');
INSERT INTO `sys_area` VALUES ('371600', '371600', '滨州市', '370000', '市', '', '0543', '256619', '中国,山东省,滨州市', '118.016974', '37.383542', 'Binzhou', '滨州', '0');
INSERT INTO `sys_area` VALUES ('371602', '371602', '滨城区', '371600', '区', '', '0543', '256613', '中国,山东省,滨州市,滨城区', '118.020260', '37.385240', 'Bincheng', '滨城', '0');
INSERT INTO `sys_area` VALUES ('371603', '371603', '沾化区', '371600', '区', '', '0543', '256800', '中国,山东省,滨州市,沾化区', '118.132140', '37.698320', 'Zhanhua', '沾化', '0');
INSERT INTO `sys_area` VALUES ('371621', '371621', '惠民县', '371600', '区', '', '0543', '251700', '中国,山东省,滨州市,惠民县', '117.511130', '37.490130', 'Huimin', '惠民', '0');
INSERT INTO `sys_area` VALUES ('371622', '371622', '阳信县', '371600', '区', '', '0543', '251800', '中国,山东省,滨州市,阳信县', '117.581390', '37.641980', 'Yangxin', '阳信', '0');
INSERT INTO `sys_area` VALUES ('371623', '371623', '无棣县', '371600', '区', '', '0543', '251900', '中国,山东省,滨州市,无棣县', '117.613950', '37.740090', 'Wudi', '无棣', '0');
INSERT INTO `sys_area` VALUES ('371625', '371625', '博兴县', '371600', '区', '', '0543', '256500', '中国,山东省,滨州市,博兴县', '118.133600', '37.143160', 'Boxing', '博兴', '0');
INSERT INTO `sys_area` VALUES ('371626', '371626', '邹平县', '371600', '区', '', '0543', '256200', '中国,山东省,滨州市,邹平县', '117.743070', '36.862950', 'Zouping', '邹平', '0');
INSERT INTO `sys_area` VALUES ('371627', '371627', '北海新区', '371600', '区', '', '0543', '256200', '中国,山东省,滨州市,北海新区', '118.016974', '37.383542', 'Beihaixinqu', '北海新区', '0');
INSERT INTO `sys_area` VALUES ('371700', '371700', '菏泽市', '370000', '市', '', '0530', '274020', '中国,山东省,菏泽市', '115.469381', '35.246531', 'Heze', '菏泽', '0');
INSERT INTO `sys_area` VALUES ('371702', '371702', '牡丹区', '371700', '区', '', '0530', '274009', '中国,山东省,菏泽市,牡丹区', '115.416620', '35.250910', 'Mudan', '牡丹', '0');
INSERT INTO `sys_area` VALUES ('371721', '371721', '曹县', '371700', '区', '', '0530', '274400', '中国,山东省,菏泽市,曹县', '115.542260', '34.826590', 'Caoxian', '曹县', '0');
INSERT INTO `sys_area` VALUES ('371722', '371722', '单县', '371700', '区', '', '0530', '273700', '中国,山东省,菏泽市,单县', '116.087030', '34.795140', 'Shanxian', '单县', '0');
INSERT INTO `sys_area` VALUES ('371723', '371723', '成武县', '371700', '区', '', '0530', '274200', '中国,山东省,菏泽市,成武县', '115.889700', '34.953320', 'Chengwu', '成武', '0');
INSERT INTO `sys_area` VALUES ('371724', '371724', '巨野县', '371700', '区', '', '0530', '274900', '中国,山东省,菏泽市,巨野县', '116.094970', '35.397880', 'Juye', '巨野', '0');
INSERT INTO `sys_area` VALUES ('371725', '371725', '郓城县', '371700', '区', '', '0530', '274700', '中国,山东省,菏泽市,郓城县', '115.944390', '35.600440', 'Yuncheng', '郓城', '0');
INSERT INTO `sys_area` VALUES ('371726', '371726', '鄄城县', '371700', '区', '', '0530', '274600', '中国,山东省,菏泽市,鄄城县', '115.509970', '35.564120', 'Juancheng', '鄄城', '0');
INSERT INTO `sys_area` VALUES ('371727', '371727', '定陶县', '371700', '区', '', '0530', '274100', '中国,山东省,菏泽市,定陶县', '115.572870', '35.071180', 'Dingtao', '定陶', '0');
INSERT INTO `sys_area` VALUES ('371728', '371728', '东明县', '371700', '区', '', '0530', '274500', '中国,山东省,菏泽市,东明县', '115.090790', '35.289060', 'Dongming', '东明', '0');
INSERT INTO `sys_area` VALUES ('410000', '410000', '河南省', '100000', '省', '', '', '', '中国,河南省', '113.665412', '34.757975', 'Henan', '河南', '0');
INSERT INTO `sys_area` VALUES ('410100', '410100', '郑州市', '410000', '市', '', '0371', '450000', '中国,河南省,郑州市', '113.665412', '34.757975', 'Zhengzhou', '郑州', '0');
INSERT INTO `sys_area` VALUES ('410102', '410102', '中原区', '410100', '区', '', '0371', '450007', '中国,河南省,郑州市,中原区', '113.613330', '34.748270', 'Zhongyuan', '中原', '0');
INSERT INTO `sys_area` VALUES ('410103', '410103', '二七区', '410100', '区', '', '0371', '450052', '中国,河南省,郑州市,二七区', '113.639310', '34.723360', 'Erqi', '二七', '0');
INSERT INTO `sys_area` VALUES ('410104', '410104', '管城回族区', '410100', '区', '', '0371', '450000', '中国,河南省,郑州市,管城回族区', '113.677340', '34.753830', 'Guancheng', '管城', '0');
INSERT INTO `sys_area` VALUES ('410105', '410105', '金水区', '410100', '区', '', '0371', '450003', '中国,河南省,郑州市,金水区', '113.660570', '34.800280', 'Jinshui', '金水', '0');
INSERT INTO `sys_area` VALUES ('410106', '410106', '上街区', '410100', '区', '', '0371', '450041', '中国,河南省,郑州市,上街区', '113.308970', '34.802760', 'Shangjie', '上街', '0');
INSERT INTO `sys_area` VALUES ('410108', '410108', '惠济区', '410100', '区', '', '0371', '450053', '中国,河南省,郑州市,惠济区', '113.616880', '34.867350', 'Huiji', '惠济', '0');
INSERT INTO `sys_area` VALUES ('410122', '410122', '中牟县', '410100', '区', '', '0371', '451450', '中国,河南省,郑州市,中牟县', '113.976190', '34.718990', 'Zhongmu', '中牟', '0');
INSERT INTO `sys_area` VALUES ('410181', '410181', '巩义市', '410100', '区', '', '0371', '451200', '中国,河南省,郑州市,巩义市', '113.022000', '34.747940', 'Gongyi', '巩义', '0');
INSERT INTO `sys_area` VALUES ('410182', '410182', '荥阳市', '410100', '区', '', '0371', '450100', '中国,河南省,郑州市,荥阳市', '113.383450', '34.787590', 'Xingyang', '荥阳', '0');
INSERT INTO `sys_area` VALUES ('410183', '410183', '新密市', '410100', '区', '', '0371', '452300', '中国,河南省,郑州市,新密市', '113.386900', '34.537040', 'Xinmi', '新密', '0');
INSERT INTO `sys_area` VALUES ('410184', '410184', '新郑市', '410100', '区', '', '0371', '451100', '中国,河南省,郑州市,新郑市', '113.736450', '34.395500', 'Xinzheng', '新郑', '0');
INSERT INTO `sys_area` VALUES ('410185', '410185', '登封市', '410100', '区', '', '0371', '452470', '中国,河南省,郑州市,登封市', '113.050230', '34.453450', 'Dengfeng', '登封', '0');
INSERT INTO `sys_area` VALUES ('410200', '410200', '开封市', '410000', '市', '', '0378', '475001', '中国,河南省,开封市', '114.341447', '34.797049', 'Kaifeng', '开封', '0');
INSERT INTO `sys_area` VALUES ('410202', '410202', '龙亭区', '410200', '区', '', '0378', '475100', '中国,河南省,开封市,龙亭区', '114.354840', '34.799950', 'Longting', '龙亭', '0');
INSERT INTO `sys_area` VALUES ('410203', '410203', '顺河回族区', '410200', '区', '', '0378', '475000', '中国,河南省,开封市,顺河回族区', '114.361230', '34.795860', 'Shunhe', '顺河', '0');
INSERT INTO `sys_area` VALUES ('410204', '410204', '鼓楼区', '410200', '区', '', '0378', '475000', '中国,河南省,开封市,鼓楼区', '114.355590', '34.795170', 'Gulou', '鼓楼', '0');
INSERT INTO `sys_area` VALUES ('410205', '410205', '禹王台区', '410200', '区', '', '0378', '475003', '中国,河南省,开封市,禹王台区', '114.347870', '34.776930', 'Yuwangtai', '禹王台', '0');
INSERT INTO `sys_area` VALUES ('410212', '410212', '祥符区', '410200', '区', '', '0378', '475100', '中国,河南省,开封市,祥符区', '114.438590', '34.758740', 'Xiangfu', '祥符', '0');
INSERT INTO `sys_area` VALUES ('410221', '410221', '杞县', '410200', '区', '', '0378', '475200', '中国,河南省,开封市,杞县', '114.782800', '34.550330', 'Qixian', '杞县', '0');
INSERT INTO `sys_area` VALUES ('410222', '410222', '通许县', '410200', '区', '', '0378', '475400', '中国,河南省,开封市,通许县', '114.467160', '34.475220', 'Tongxu', '通许', '0');
INSERT INTO `sys_area` VALUES ('410223', '410223', '尉氏县', '410200', '区', '', '0378', '475500', '中国,河南省,开封市,尉氏县', '114.192840', '34.412230', 'Weishi', '尉氏', '0');
INSERT INTO `sys_area` VALUES ('410225', '410225', '兰考县', '410200', '区', '', '0378', '475300', '中国,河南省,开封市,兰考县', '114.819610', '34.823500', 'Lankao', '兰考', '0');
INSERT INTO `sys_area` VALUES ('410300', '410300', '洛阳市', '410000', '市', '', '0379', '471000', '中国,河南省,洛阳市', '112.434468', '34.663041', 'Luoyang', '洛阳', '0');
INSERT INTO `sys_area` VALUES ('410302', '410302', '老城区', '410300', '区', '', '0379', '471002', '中国,河南省,洛阳市,老城区', '112.469020', '34.683640', 'Laocheng', '老城', '0');
INSERT INTO `sys_area` VALUES ('410303', '410303', '西工区', '410300', '区', '', '0379', '471000', '中国,河南省,洛阳市,西工区', '112.437100', '34.670000', 'Xigong', '西工', '0');
INSERT INTO `sys_area` VALUES ('410304', '410304', '瀍河回族区', '410300', '区', '', '0379', '471002', '中国,河南省,洛阳市,瀍河回族区', '112.500180', '34.679850', 'Chanhe', '瀍河', '0');
INSERT INTO `sys_area` VALUES ('410305', '410305', '涧西区', '410300', '区', '', '0379', '471003', '中国,河南省,洛阳市,涧西区', '112.395880', '34.658230', 'Jianxi', '涧西', '0');
INSERT INTO `sys_area` VALUES ('410306', '410306', '吉利区', '410300', '区', '', '0379', '471012', '中国,河南省,洛阳市,吉利区', '112.589050', '34.900880', 'Jili', '吉利', '0');
INSERT INTO `sys_area` VALUES ('410311', '410311', '洛龙区', '410300', '区', '', '0379', '471000', '中国,河南省,洛阳市,洛龙区', '112.464120', '34.618660', 'Luolong', '洛龙', '0');
INSERT INTO `sys_area` VALUES ('410322', '410322', '孟津县', '410300', '区', '', '0379', '471100', '中国,河南省,洛阳市,孟津县', '112.443510', '34.826000', 'Mengjin', '孟津', '0');
INSERT INTO `sys_area` VALUES ('410323', '410323', '新安县', '410300', '区', '', '0379', '471800', '中国,河南省,洛阳市,新安县', '112.132380', '34.728140', 'Xin\'an', '新安', '0');
INSERT INTO `sys_area` VALUES ('410324', '410324', '栾川县', '410300', '区', '', '0379', '471500', '中国,河南省,洛阳市,栾川县', '111.617790', '33.785760', 'Luanchuan', '栾川', '0');
INSERT INTO `sys_area` VALUES ('410325', '410325', '嵩县', '410300', '区', '', '0379', '471400', '中国,河南省,洛阳市,嵩县', '112.085260', '34.134660', 'Songxian', '嵩县', '0');
INSERT INTO `sys_area` VALUES ('410326', '410326', '汝阳县', '410300', '区', '', '0379', '471200', '中国,河南省,洛阳市,汝阳县', '112.473140', '34.153870', 'Ruyang', '汝阳', '0');
INSERT INTO `sys_area` VALUES ('410327', '410327', '宜阳县', '410300', '区', '', '0379', '471600', '中国,河南省,洛阳市,宜阳县', '112.179070', '34.515230', 'Yiyang', '宜阳', '0');
INSERT INTO `sys_area` VALUES ('410328', '410328', '洛宁县', '410300', '区', '', '0379', '471700', '中国,河南省,洛阳市,洛宁县', '111.650870', '34.389130', 'Luoning', '洛宁', '0');
INSERT INTO `sys_area` VALUES ('410329', '410329', '伊川县', '410300', '区', '', '0379', '471300', '中国,河南省,洛阳市,伊川县', '112.429470', '34.422050', 'Yichuan', '伊川', '0');
INSERT INTO `sys_area` VALUES ('410381', '410381', '偃师市', '410300', '区', '', '0379', '471900', '中国,河南省,洛阳市,偃师市', '112.792200', '34.728100', 'Yanshi', '偃师', '0');
INSERT INTO `sys_area` VALUES ('410400', '410400', '平顶山市', '410000', '市', '', '0375', '467000', '中国,河南省,平顶山市', '113.307718', '33.735241', 'Pingdingshan', '平顶山', '0');
INSERT INTO `sys_area` VALUES ('410402', '410402', '新华区', '410400', '区', '', '0375', '467002', '中国,河南省,平顶山市,新华区', '113.294020', '33.737300', 'Xinhua', '新华', '0');
INSERT INTO `sys_area` VALUES ('410403', '410403', '卫东区', '410400', '区', '', '0375', '467021', '中国,河南省,平顶山市,卫东区', '113.335110', '33.734720', 'Weidong', '卫东', '0');
INSERT INTO `sys_area` VALUES ('410404', '410404', '石龙区', '410400', '区', '', '0375', '467045', '中国,河南省,平顶山市,石龙区', '112.898790', '33.898780', 'Shilong', '石龙', '0');
INSERT INTO `sys_area` VALUES ('410411', '410411', '湛河区', '410400', '区', '', '0375', '467000', '中国,河南省,平顶山市,湛河区', '113.292520', '33.736200', 'Zhanhe', '湛河', '0');
INSERT INTO `sys_area` VALUES ('410421', '410421', '宝丰县', '410400', '区', '', '0375', '467400', '中国,河南省,平顶山市,宝丰县', '113.054930', '33.869160', 'Baofeng', '宝丰', '0');
INSERT INTO `sys_area` VALUES ('410422', '410422', '叶县', '410400', '区', '', '0375', '467200', '中国,河南省,平顶山市,叶县', '113.351040', '33.622250', 'Yexian', '叶县', '0');
INSERT INTO `sys_area` VALUES ('410423', '410423', '鲁山县', '410400', '区', '', '0375', '467300', '中国,河南省,平顶山市,鲁山县', '112.905700', '33.738790', 'Lushan', '鲁山', '0');
INSERT INTO `sys_area` VALUES ('410425', '410425', '郏县', '410400', '区', '', '0375', '467100', '中国,河南省,平顶山市,郏县', '113.215880', '33.970720', 'Jiaxian', '郏县', '0');
INSERT INTO `sys_area` VALUES ('410481', '410481', '舞钢市', '410400', '区', '', '0375', '462500', '中国,河南省,平顶山市,舞钢市', '113.524170', '33.293800', 'Wugang', '舞钢', '0');
INSERT INTO `sys_area` VALUES ('410482', '410482', '汝州市', '410400', '区', '', '0375', '467500', '中国,河南省,平顶山市,汝州市', '112.843010', '34.161350', 'Ruzhou', '汝州', '0');
INSERT INTO `sys_area` VALUES ('410500', '410500', '安阳市', '410000', '市', '', '0372', '455000', '中国,河南省,安阳市', '114.352482', '36.103442', 'Anyang', '安阳', '0');
INSERT INTO `sys_area` VALUES ('410502', '410502', '文峰区', '410500', '区', '', '0372', '455000', '中国,河南省,安阳市,文峰区', '114.357080', '36.090460', 'Wenfeng', '文峰', '0');
INSERT INTO `sys_area` VALUES ('410503', '410503', '北关区', '410500', '区', '', '0372', '455001', '中国,河南省,安阳市,北关区', '114.357350', '36.118720', 'Beiguan', '北关', '0');
INSERT INTO `sys_area` VALUES ('410505', '410505', '殷都区', '410500', '区', '', '0372', '455004', '中国,河南省,安阳市,殷都区', '114.303400', '36.109900', 'Yindu', '殷都', '0');
INSERT INTO `sys_area` VALUES ('410506', '410506', '龙安区', '410500', '区', '', '0372', '455001', '中国,河南省,安阳市,龙安区', '114.348140', '36.119040', 'Long\'an', '龙安', '0');
INSERT INTO `sys_area` VALUES ('410522', '410522', '安阳县', '410500', '区', '', '0372', '455000', '中国,河南省,安阳市,安阳县', '114.366050', '36.066950', 'Anyang', '安阳', '0');
INSERT INTO `sys_area` VALUES ('410523', '410523', '汤阴县', '410500', '区', '', '0372', '456150', '中国,河南省,安阳市,汤阴县', '114.358390', '35.921520', 'Tangyin', '汤阴', '0');
INSERT INTO `sys_area` VALUES ('410526', '410526', '滑县', '410500', '区', '', '0372', '456400', '中国,河南省,安阳市,滑县', '114.520660', '35.580700', 'Huaxian', '滑县', '0');
INSERT INTO `sys_area` VALUES ('410527', '410527', '内黄县', '410500', '区', '', '0372', '456350', '中国,河南省,安阳市,内黄县', '114.906730', '35.952690', 'Neihuang', '内黄', '0');
INSERT INTO `sys_area` VALUES ('410581', '410581', '林州市', '410500', '区', '', '0372', '456550', '中国,河南省,安阳市,林州市', '113.815580', '36.078040', 'Linzhou', '林州', '0');
INSERT INTO `sys_area` VALUES ('410600', '410600', '鹤壁市', '410000', '市', '', '0392', '458030', '中国,河南省,鹤壁市', '114.295444', '35.748236', 'Hebi', '鹤壁', '0');
INSERT INTO `sys_area` VALUES ('410602', '410602', '鹤山区', '410600', '区', '', '0392', '458010', '中国,河南省,鹤壁市,鹤山区', '114.163360', '35.954580', 'Heshan', '鹤山', '0');
INSERT INTO `sys_area` VALUES ('410603', '410603', '山城区', '410600', '区', '', '0392', '458000', '中国,河南省,鹤壁市,山城区', '114.184430', '35.897730', 'Shancheng', '山城', '0');
INSERT INTO `sys_area` VALUES ('410611', '410611', '淇滨区', '410600', '区', '', '0392', '458000', '中国,河南省,鹤壁市,淇滨区', '114.298670', '35.741270', 'Qibin', '淇滨', '0');
INSERT INTO `sys_area` VALUES ('410621', '410621', '浚县', '410600', '区', '', '0392', '456250', '中国,河南省,鹤壁市,浚县', '114.548790', '35.670850', 'Xunxian', '浚县', '0');
INSERT INTO `sys_area` VALUES ('410622', '410622', '淇县', '410600', '区', '', '0392', '456750', '中国,河南省,鹤壁市,淇县', '114.197600', '35.607820', 'Qixian', '淇县', '0');
INSERT INTO `sys_area` VALUES ('410700', '410700', '新乡市', '410000', '市', '', '0373', '453000', '中国,河南省,新乡市', '113.883991', '35.302616', 'Xinxiang', '新乡', '0');
INSERT INTO `sys_area` VALUES ('410702', '410702', '红旗区', '410700', '区', '', '0373', '453000', '中国,河南省,新乡市,红旗区', '113.875230', '35.303670', 'Hongqi', '红旗', '0');
INSERT INTO `sys_area` VALUES ('410703', '410703', '卫滨区', '410700', '区', '', '0373', '453000', '中国,河南省,新乡市,卫滨区', '113.865780', '35.302110', 'Weibin', '卫滨', '0');
INSERT INTO `sys_area` VALUES ('410704', '410704', '凤泉区', '410700', '区', '', '0373', '453011', '中国,河南省,新乡市,凤泉区', '113.915070', '35.383990', 'Fengquan', '凤泉', '0');
INSERT INTO `sys_area` VALUES ('410711', '410711', '牧野区', '410700', '区', '', '0373', '453002', '中国,河南省,新乡市,牧野区', '113.908600', '35.314900', 'Muye', '牧野', '0');
INSERT INTO `sys_area` VALUES ('410721', '410721', '新乡县', '410700', '区', '', '0373', '453700', '中国,河南省,新乡市,新乡县', '113.805110', '35.190750', 'Xinxiang', '新乡', '0');
INSERT INTO `sys_area` VALUES ('410724', '410724', '获嘉县', '410700', '区', '', '0373', '453800', '中国,河南省,新乡市,获嘉县', '113.661590', '35.265210', 'Huojia', '获嘉', '0');
INSERT INTO `sys_area` VALUES ('410725', '410725', '原阳县', '410700', '区', '', '0373', '453500', '中国,河南省,新乡市,原阳县', '113.939940', '35.065650', 'Yuanyang', '原阳', '0');
INSERT INTO `sys_area` VALUES ('410726', '410726', '延津县', '410700', '区', '', '0373', '453200', '中国,河南省,新乡市,延津县', '114.202660', '35.143270', 'Yanjin', '延津', '0');
INSERT INTO `sys_area` VALUES ('410727', '410727', '封丘县', '410700', '区', '', '0373', '453300', '中国,河南省,新乡市,封丘县', '114.419150', '35.041660', 'Fengqiu', '封丘', '0');
INSERT INTO `sys_area` VALUES ('410728', '410728', '长垣县', '410700', '区', '', '0373', '453400', '中国,河南省,新乡市,长垣县', '114.668820', '35.200460', 'Changyuan', '长垣', '0');
INSERT INTO `sys_area` VALUES ('410781', '410781', '卫辉市', '410700', '区', '', '0373', '453100', '中国,河南省,新乡市,卫辉市', '114.064540', '35.398430', 'Weihui', '卫辉', '0');
INSERT INTO `sys_area` VALUES ('410782', '410782', '辉县市', '410700', '区', '', '0373', '453600', '中国,河南省,新乡市,辉县市', '113.806700', '35.463070', 'Huixian', '辉县', '0');
INSERT INTO `sys_area` VALUES ('410800', '410800', '焦作市', '410000', '市', '', '0391', '454002', '中国,河南省,焦作市', '113.238266', '35.239040', 'Jiaozuo', '焦作', '0');
INSERT INTO `sys_area` VALUES ('410802', '410802', '解放区', '410800', '区', '', '0391', '454000', '中国,河南省,焦作市,解放区', '113.229330', '35.240230', 'Jiefang', '解放', '0');
INSERT INTO `sys_area` VALUES ('410803', '410803', '中站区', '410800', '区', '', '0391', '454191', '中国,河南省,焦作市,中站区', '113.183150', '35.236650', 'Zhongzhan', '中站', '0');
INSERT INTO `sys_area` VALUES ('410804', '410804', '马村区', '410800', '区', '', '0391', '454171', '中国,河南省,焦作市,马村区', '113.318700', '35.269080', 'Macun', '马村', '0');
INSERT INTO `sys_area` VALUES ('410811', '410811', '山阳区', '410800', '区', '', '0391', '454002', '中国,河南省,焦作市,山阳区', '113.254640', '35.214360', 'Shanyang', '山阳', '0');
INSERT INTO `sys_area` VALUES ('410821', '410821', '修武县', '410800', '区', '', '0391', '454350', '中国,河南省,焦作市,修武县', '113.447750', '35.223570', 'Xiuwu', '修武', '0');
INSERT INTO `sys_area` VALUES ('410822', '410822', '博爱县', '410800', '区', '', '0391', '454450', '中国,河南省,焦作市,博爱县', '113.066980', '35.169430', 'Boai', '博爱', '0');
INSERT INTO `sys_area` VALUES ('410823', '410823', '武陟县', '410800', '区', '', '0391', '454950', '中国,河南省,焦作市,武陟县', '113.397180', '35.095050', 'Wuzhi', '武陟', '0');
INSERT INTO `sys_area` VALUES ('410825', '410825', '温县', '410800', '区', '', '0391', '454850', '中国,河南省,焦作市,温县', '113.080650', '34.940220', 'Wenxian', '温县', '0');
INSERT INTO `sys_area` VALUES ('410882', '410882', '沁阳市', '410800', '区', '', '0391', '454550', '中国,河南省,焦作市,沁阳市', '112.944940', '35.089350', 'Qinyang', '沁阳', '0');
INSERT INTO `sys_area` VALUES ('410883', '410883', '孟州市', '410800', '区', '', '0391', '454750', '中国,河南省,焦作市,孟州市', '112.791380', '34.907100', 'Mengzhou', '孟州', '0');
INSERT INTO `sys_area` VALUES ('410900', '410900', '濮阳市', '410000', '市', '', '0393', '457000', '中国,河南省,濮阳市', '115.041299', '35.768234', 'Puyang', '濮阳', '0');
INSERT INTO `sys_area` VALUES ('410902', '410902', '华龙区', '410900', '区', '', '0393', '457001', '中国,河南省,濮阳市,华龙区', '115.074460', '35.777360', 'Hualong', '华龙', '0');
INSERT INTO `sys_area` VALUES ('410922', '410922', '清丰县', '410900', '区', '', '0393', '457300', '中国,河南省,濮阳市,清丰县', '115.104150', '35.885070', 'Qingfeng', '清丰', '0');
INSERT INTO `sys_area` VALUES ('410923', '410923', '南乐县', '410900', '区', '', '0393', '457400', '中国,河南省,濮阳市,南乐县', '115.206390', '36.076860', 'Nanle', '南乐', '0');
INSERT INTO `sys_area` VALUES ('410926', '410926', '范县', '410900', '区', '', '0393', '457500', '中国,河南省,濮阳市,范县', '115.504050', '35.851780', 'Fanxian', '范县', '0');
INSERT INTO `sys_area` VALUES ('410927', '410927', '台前县', '410900', '区', '', '0393', '457600', '中国,河南省,濮阳市,台前县', '115.871580', '35.969230', 'Taiqian', '台前', '0');
INSERT INTO `sys_area` VALUES ('410928', '410928', '濮阳县', '410900', '区', '', '0393', '457100', '中国,河南省,濮阳市,濮阳县', '115.030570', '35.707450', 'Puyang', '濮阳', '0');
INSERT INTO `sys_area` VALUES ('411000', '411000', '许昌市', '410000', '市', '', '0374', '461000', '中国,河南省,许昌市', '113.826063', '34.022956', 'Xuchang', '许昌', '0');
INSERT INTO `sys_area` VALUES ('411002', '411002', '魏都区', '411000', '区', '', '0374', '461000', '中国,河南省,许昌市,魏都区', '113.822700', '34.025440', 'Weidu', '魏都', '0');
INSERT INTO `sys_area` VALUES ('411023', '411023', '许昌县', '411000', '区', '', '0374', '461100', '中国,河南省,许昌市,许昌县', '113.847070', '34.004060', 'Xuchang', '许昌', '0');
INSERT INTO `sys_area` VALUES ('411024', '411024', '鄢陵县', '411000', '区', '', '0374', '461200', '中国,河南省,许昌市,鄢陵县', '114.187950', '34.103170', 'Yanling', '鄢陵', '0');
INSERT INTO `sys_area` VALUES ('411025', '411025', '襄城县', '411000', '区', '', '0374', '461700', '中国,河南省,许昌市,襄城县', '113.481960', '33.849280', 'Xiangcheng', '襄城', '0');
INSERT INTO `sys_area` VALUES ('411081', '411081', '禹州市', '411000', '区', '', '0374', '461670', '中国,河南省,许昌市,禹州市', '113.488030', '34.140540', 'Yuzhou', '禹州', '0');
INSERT INTO `sys_area` VALUES ('411082', '411082', '长葛市', '411000', '区', '', '0374', '461500', '中国,河南省,许昌市,长葛市', '113.773280', '34.218460', 'Changge', '长葛', '0');
INSERT INTO `sys_area` VALUES ('411100', '411100', '漯河市', '410000', '市', '', '0395', '462000', '中国,河南省,漯河市', '114.026405', '33.575855', 'Luohe', '漯河', '0');
INSERT INTO `sys_area` VALUES ('411102', '411102', '源汇区', '411100', '区', '', '0395', '462000', '中国,河南省,漯河市,源汇区', '114.006470', '33.556270', 'Yuanhui', '源汇', '0');
INSERT INTO `sys_area` VALUES ('411103', '411103', '郾城区', '411100', '区', '', '0395', '462300', '中国,河南省,漯河市,郾城区', '114.006940', '33.587230', 'Yancheng', '郾城', '0');
INSERT INTO `sys_area` VALUES ('411104', '411104', '召陵区', '411100', '区', '', '0395', '462300', '中国,河南省,漯河市,召陵区', '114.093990', '33.586010', 'Zhaoling', '召陵', '0');
INSERT INTO `sys_area` VALUES ('411121', '411121', '舞阳县', '411100', '区', '', '0395', '462400', '中国,河南省,漯河市,舞阳县', '113.598480', '33.432430', 'Wuyang', '舞阳', '0');
INSERT INTO `sys_area` VALUES ('411122', '411122', '临颍县', '411100', '区', '', '0395', '462600', '中国,河南省,漯河市,临颍县', '113.936610', '33.811230', 'Linying', '临颍', '0');
INSERT INTO `sys_area` VALUES ('411200', '411200', '三门峡市', '410000', '市', '', '0398', '472000', '中国,河南省,三门峡市', '111.194099', '34.777338', 'Sanmenxia', '三门峡', '0');
INSERT INTO `sys_area` VALUES ('411202', '411202', '湖滨区', '411200', '区', '', '0398', '472000', '中国,河南省,三门峡市,湖滨区', '111.200060', '34.778720', 'Hubin', '湖滨', '0');
INSERT INTO `sys_area` VALUES ('411221', '411221', '渑池县', '411200', '区', '', '0398', '472400', '中国,河南省,三门峡市,渑池县', '111.761840', '34.767250', 'Mianchi', '渑池', '0');
INSERT INTO `sys_area` VALUES ('411222', '411222', '陕县', '411200', '区', '', '0398', '472100', '中国,河南省,三门峡市,陕县', '111.103330', '34.720520', 'Shanxian', '陕县', '0');
INSERT INTO `sys_area` VALUES ('411224', '411224', '卢氏县', '411200', '区', '', '0398', '472200', '中国,河南省,三门峡市,卢氏县', '111.047820', '34.054360', 'Lushi', '卢氏', '0');
INSERT INTO `sys_area` VALUES ('411281', '411281', '义马市', '411200', '区', '', '0398', '472300', '中国,河南省,三门峡市,义马市', '111.874450', '34.747210', 'Yima', '义马', '0');
INSERT INTO `sys_area` VALUES ('411282', '411282', '灵宝市', '411200', '区', '', '0398', '472500', '中国,河南省,三门峡市,灵宝市', '110.894500', '34.516820', 'Lingbao', '灵宝', '0');
INSERT INTO `sys_area` VALUES ('411300', '411300', '南阳市', '410000', '市', '', '0377', '473002', '中国,河南省,南阳市', '112.540918', '32.999082', 'Nanyang', '南阳', '0');
INSERT INTO `sys_area` VALUES ('411302', '411302', '宛城区', '411300', '区', '', '0377', '473001', '中国,河南省,南阳市,宛城区', '112.539550', '33.003780', 'Wancheng', '宛城', '0');
INSERT INTO `sys_area` VALUES ('411303', '411303', '卧龙区', '411300', '区', '', '0377', '473003', '中国,河南省,南阳市,卧龙区', '112.534790', '32.986150', 'Wolong', '卧龙', '0');
INSERT INTO `sys_area` VALUES ('411321', '411321', '南召县', '411300', '区', '', '0377', '474650', '中国,河南省,南阳市,南召县', '112.431940', '33.490980', 'Nanzhao', '南召', '0');
INSERT INTO `sys_area` VALUES ('411322', '411322', '方城县', '411300', '区', '', '0377', '473200', '中国,河南省,南阳市,方城县', '113.012690', '33.254530', 'Fangcheng', '方城', '0');
INSERT INTO `sys_area` VALUES ('411323', '411323', '西峡县', '411300', '区', '', '0377', '474550', '中国,河南省,南阳市,西峡县', '111.481870', '33.297720', 'Xixia', '西峡', '0');
INSERT INTO `sys_area` VALUES ('411324', '411324', '镇平县', '411300', '区', '', '0377', '474250', '中国,河南省,南阳市,镇平县', '112.239800', '33.036290', 'Zhenping', '镇平', '0');
INSERT INTO `sys_area` VALUES ('411325', '411325', '内乡县', '411300', '区', '', '0377', '474350', '中国,河南省,南阳市,内乡县', '111.849570', '33.046710', 'Neixiang', '内乡', '0');
INSERT INTO `sys_area` VALUES ('411326', '411326', '淅川县', '411300', '区', '', '0377', '474450', '中国,河南省,南阳市,淅川县', '111.486630', '33.137080', 'Xichuan', '淅川', '0');
INSERT INTO `sys_area` VALUES ('411327', '411327', '社旗县', '411300', '区', '', '0377', '473300', '中国,河南省,南阳市,社旗县', '112.946560', '33.055030', 'Sheqi', '社旗', '0');
INSERT INTO `sys_area` VALUES ('411328', '411328', '唐河县', '411300', '区', '', '0377', '473400', '中国,河南省,南阳市,唐河县', '112.836090', '32.694530', 'Tanghe', '唐河', '0');
INSERT INTO `sys_area` VALUES ('411329', '411329', '新野县', '411300', '区', '', '0377', '473500', '中国,河南省,南阳市,新野县', '112.361510', '32.516980', 'Xinye', '新野', '0');
INSERT INTO `sys_area` VALUES ('411330', '411330', '桐柏县', '411300', '区', '', '0377', '474750', '中国,河南省,南阳市,桐柏县', '113.428860', '32.379170', 'Tongbai', '桐柏', '0');
INSERT INTO `sys_area` VALUES ('411381', '411381', '邓州市', '411300', '区', '', '0377', '474150', '中国,河南省,南阳市,邓州市', '112.089600', '32.685770', 'Dengzhou', '邓州', '0');
INSERT INTO `sys_area` VALUES ('411400', '411400', '商丘市', '410000', '市', '', '0370', '476000', '中国,河南省,商丘市', '115.650497', '34.437054', 'Shangqiu', '商丘', '0');
INSERT INTO `sys_area` VALUES ('411402', '411402', '梁园区', '411400', '区', '', '0370', '476000', '中国,河南省,商丘市,梁园区', '115.644870', '34.443410', 'Liangyuan', '梁园', '0');
INSERT INTO `sys_area` VALUES ('411403', '411403', '睢阳区', '411400', '区', '', '0370', '476100', '中国,河南省,商丘市,睢阳区', '115.653380', '34.388040', 'Suiyang', '睢阳', '0');
INSERT INTO `sys_area` VALUES ('411421', '411421', '民权县', '411400', '区', '', '0370', '476800', '中国,河南省,商丘市,民权县', '115.146210', '34.649310', 'Minquan', '民权', '0');
INSERT INTO `sys_area` VALUES ('411422', '411422', '睢县', '411400', '区', '', '0370', '476900', '中国,河南省,商丘市,睢县', '115.071680', '34.445390', 'Suixian', '睢县', '0');
INSERT INTO `sys_area` VALUES ('411423', '411423', '宁陵县', '411400', '区', '', '0370', '476700', '中国,河南省,商丘市,宁陵县', '115.305110', '34.454630', 'Ningling', '宁陵', '0');
INSERT INTO `sys_area` VALUES ('411424', '411424', '柘城县', '411400', '区', '', '0370', '476200', '中国,河南省,商丘市,柘城县', '115.305380', '34.091100', 'Zhecheng', '柘城', '0');
INSERT INTO `sys_area` VALUES ('411425', '411425', '虞城县', '411400', '区', '', '0370', '476300', '中国,河南省,商丘市,虞城县', '115.863370', '34.401890', 'Yucheng', '虞城', '0');
INSERT INTO `sys_area` VALUES ('411426', '411426', '夏邑县', '411400', '区', '', '0370', '476400', '中国,河南省,商丘市,夏邑县', '116.133480', '34.232420', 'Xiayi', '夏邑', '0');
INSERT INTO `sys_area` VALUES ('411481', '411481', '永城市', '411400', '区', '', '0370', '476600', '中国,河南省,商丘市,永城市', '116.449430', '33.929110', 'Yongcheng', '永城', '0');
INSERT INTO `sys_area` VALUES ('411500', '411500', '信阳市', '410000', '市', '', '0376', '464000', '中国,河南省,信阳市', '114.075031', '32.123274', 'Xinyang', '信阳', '0');
INSERT INTO `sys_area` VALUES ('411502', '411502', '浉河区', '411500', '区', '', '0376', '464000', '中国,河南省,信阳市,浉河区', '114.058710', '32.116800', 'Shihe', '浉河', '0');
INSERT INTO `sys_area` VALUES ('411503', '411503', '平桥区', '411500', '区', '', '0376', '464100', '中国,河南省,信阳市,平桥区', '114.124350', '32.100950', 'Pingqiao', '平桥', '0');
INSERT INTO `sys_area` VALUES ('411521', '411521', '罗山县', '411500', '区', '', '0376', '464200', '中国,河南省,信阳市,罗山县', '114.531400', '32.202770', 'Luoshan', '罗山', '0');
INSERT INTO `sys_area` VALUES ('411522', '411522', '光山县', '411500', '区', '', '0376', '465450', '中国,河南省,信阳市,光山县', '114.918730', '32.009920', 'Guangshan', '光山', '0');
INSERT INTO `sys_area` VALUES ('411523', '411523', '新县', '411500', '区', '', '0376', '465550', '中国,河南省,信阳市,新县', '114.879240', '31.643860', 'Xinxian', '新县', '0');
INSERT INTO `sys_area` VALUES ('411524', '411524', '商城县', '411500', '区', '', '0376', '465350', '中国,河南省,信阳市,商城县', '115.408560', '31.799860', 'Shangcheng', '商城', '0');
INSERT INTO `sys_area` VALUES ('411525', '411525', '固始县', '411500', '区', '', '0376', '465250', '中国,河南省,信阳市,固始县', '115.682980', '32.180110', 'Gushi', '固始', '0');
INSERT INTO `sys_area` VALUES ('411526', '411526', '潢川县', '411500', '区', '', '0376', '465150', '中国,河南省,信阳市,潢川县', '115.046960', '32.137630', 'Huangchuan', '潢川', '0');
INSERT INTO `sys_area` VALUES ('411527', '411527', '淮滨县', '411500', '区', '', '0376', '464400', '中国,河南省,信阳市,淮滨县', '115.420500', '32.466140', 'Huaibin', '淮滨', '0');
INSERT INTO `sys_area` VALUES ('411528', '411528', '息县', '411500', '区', '', '0376', '464300', '中国,河南省,信阳市,息县', '114.740200', '32.342790', 'Xixian', '息县', '0');
INSERT INTO `sys_area` VALUES ('411600', '411600', '周口市', '410000', '市', '', '0394', '466000', '中国,河南省,周口市', '114.649653', '33.620357', 'Zhoukou', '周口', '0');
INSERT INTO `sys_area` VALUES ('411602', '411602', '川汇区', '411600', '区', '', '0394', '466000', '中国,河南省,周口市,川汇区', '114.642020', '33.625600', 'Chuanhui', '川汇', '0');
INSERT INTO `sys_area` VALUES ('411621', '411621', '扶沟县', '411600', '区', '', '0394', '461300', '中国,河南省,周口市,扶沟县', '114.394770', '34.059990', 'Fugou', '扶沟', '0');
INSERT INTO `sys_area` VALUES ('411622', '411622', '西华县', '411600', '区', '', '0394', '466600', '中国,河南省,周口市,西华县', '114.522790', '33.785480', 'Xihua', '西华', '0');
INSERT INTO `sys_area` VALUES ('411623', '411623', '商水县', '411600', '区', '', '0394', '466100', '中国,河南省,周口市,商水县', '114.606040', '33.539120', 'Shangshui', '商水', '0');
INSERT INTO `sys_area` VALUES ('411624', '411624', '沈丘县', '411600', '区', '', '0394', '466300', '中国,河南省,周口市,沈丘县', '115.098510', '33.409360', 'Shenqiu', '沈丘', '0');
INSERT INTO `sys_area` VALUES ('411625', '411625', '郸城县', '411600', '区', '', '0394', '477150', '中国,河南省,周口市,郸城县', '115.177150', '33.644850', 'Dancheng', '郸城', '0');
INSERT INTO `sys_area` VALUES ('411626', '411626', '淮阳县', '411600', '区', '', '0394', '466700', '中国,河南省,周口市,淮阳县', '114.888480', '33.732110', 'Huaiyang', '淮阳', '0');
INSERT INTO `sys_area` VALUES ('411627', '411627', '太康县', '411600', '区', '', '0394', '461400', '中国,河南省,周口市,太康县', '114.837730', '34.063760', 'Taikang', '太康', '0');
INSERT INTO `sys_area` VALUES ('411628', '411628', '鹿邑县', '411600', '区', '', '0394', '477200', '中国,河南省,周口市,鹿邑县', '115.485530', '33.859310', 'Luyi', '鹿邑', '0');
INSERT INTO `sys_area` VALUES ('411681', '411681', '项城市', '411600', '区', '', '0394', '466200', '中国,河南省,周口市,项城市', '114.875580', '33.467200', 'Xiangcheng', '项城', '0');
INSERT INTO `sys_area` VALUES ('411700', '411700', '驻马店市', '410000', '市', '', '0396', '463000', '中国,河南省,驻马店市', '114.024736', '32.980169', 'Zhumadian', '驻马店', '0');
INSERT INTO `sys_area` VALUES ('411702', '411702', '驿城区', '411700', '区', '', '0396', '463000', '中国,河南省,驻马店市,驿城区', '113.993770', '32.973160', 'Yicheng', '驿城', '0');
INSERT INTO `sys_area` VALUES ('411721', '411721', '西平县', '411700', '区', '', '0396', '463900', '中国,河南省,驻马店市,西平县', '114.023220', '33.384500', 'Xiping', '西平', '0');
INSERT INTO `sys_area` VALUES ('411722', '411722', '上蔡县', '411700', '区', '', '0396', '463800', '中国,河南省,驻马店市,上蔡县', '114.268250', '33.268250', 'Shangcai', '上蔡', '0');
INSERT INTO `sys_area` VALUES ('411723', '411723', '平舆县', '411700', '区', '', '0396', '463400', '中国,河南省,驻马店市,平舆县', '114.635520', '32.957270', 'Pingyu', '平舆', '0');
INSERT INTO `sys_area` VALUES ('411724', '411724', '正阳县', '411700', '区', '', '0396', '463600', '中国,河南省,驻马店市,正阳县', '114.389520', '32.603900', 'Zhengyang', '正阳', '0');
INSERT INTO `sys_area` VALUES ('411725', '411725', '确山县', '411700', '区', '', '0396', '463200', '中国,河南省,驻马店市,确山县', '114.029170', '32.802810', 'Queshan', '确山', '0');
INSERT INTO `sys_area` VALUES ('411726', '411726', '泌阳县', '411700', '区', '', '0396', '463700', '中国,河南省,驻马店市,泌阳县', '113.326810', '32.717810', 'Biyang', '泌阳', '0');
INSERT INTO `sys_area` VALUES ('411727', '411727', '汝南县', '411700', '区', '', '0396', '463300', '中国,河南省,驻马店市,汝南县', '114.361380', '33.004610', 'Runan', '汝南', '0');
INSERT INTO `sys_area` VALUES ('411728', '411728', '遂平县', '411700', '区', '', '0396', '463100', '中国,河南省,驻马店市,遂平县', '114.012970', '33.145710', 'Suiping', '遂平', '0');
INSERT INTO `sys_area` VALUES ('411729', '411729', '新蔡县', '411700', '区', '', '0396', '463500', '中国,河南省,驻马店市,新蔡县', '114.981990', '32.750200', 'Xincai', '新蔡', '0');
INSERT INTO `sys_area` VALUES ('419000', '419000', '直辖县级', '410000', '市', '', '', '', '中国,河南省,直辖县级', '113.665412', '34.757975', '', ' ', '0');
INSERT INTO `sys_area` VALUES ('419001', '419001', '济源市', '419000', '区', '', '0391', '454650', '中国,河南省,直辖县级,济源市', '112.590047', '35.090378', 'Jiyuan', '济源', '0');
INSERT INTO `sys_area` VALUES ('420000', '420000', '湖北省', '100000', '省', '', '', '', '中国,湖北省', '114.298572', '30.584355', 'Hubei', '湖北', '0');
INSERT INTO `sys_area` VALUES ('420100', '420100', '武汉市', '420000', '市', '', '', '430014', '中国,湖北省,武汉市', '114.298572', '30.584355', 'Wuhan', '武汉', '0');
INSERT INTO `sys_area` VALUES ('420102', '420102', '江岸区', '420100', '区', '', '027', '430014', '中国,湖北省,武汉市,江岸区', '114.309430', '30.599820', 'Jiang\'an', '江岸', '0');
INSERT INTO `sys_area` VALUES ('420103', '420103', '江汉区', '420100', '区', '', '027', '430021', '中国,湖北省,武汉市,江汉区', '114.270930', '30.601460', 'Jianghan', '江汉', '0');
INSERT INTO `sys_area` VALUES ('420104', '420104', '硚口区', '420100', '区', '', '027', '430033', '中国,湖北省,武汉市,硚口区', '114.264220', '30.569450', 'Qiaokou', '硚口', '0');
INSERT INTO `sys_area` VALUES ('420105', '420105', '汉阳区', '420100', '区', '', '027', '430050', '中国,湖北省,武汉市,汉阳区', '114.274780', '30.549150', 'Hanyang', '汉阳', '0');
INSERT INTO `sys_area` VALUES ('420106', '420106', '武昌区', '420100', '区', '', '027', '430061', '中国,湖北省,武汉市,武昌区', '114.315890', '30.553890', 'Wuchang', '武昌', '0');
INSERT INTO `sys_area` VALUES ('420107', '420107', '青山区', '420100', '区', '', '027', '430080', '中国,湖北省,武汉市,青山区', '114.391170', '30.634270', 'Qingshan', '青山', '0');
INSERT INTO `sys_area` VALUES ('420111', '420111', '洪山区', '420100', '区', '', '027', '430070', '中国,湖北省,武汉市,洪山区', '114.343750', '30.499890', 'Hongshan', '洪山', '0');
INSERT INTO `sys_area` VALUES ('420112', '420112', '东西湖区', '420100', '区', '', '027', '430040', '中国,湖北省,武汉市,东西湖区', '114.137080', '30.619890', 'Dongxihu', '东西湖', '0');
INSERT INTO `sys_area` VALUES ('420113', '420113', '汉南区', '420100', '区', '', '027', '430090', '中国,湖北省,武汉市,汉南区', '114.084620', '30.308790', 'Hannan', '汉南', '0');
INSERT INTO `sys_area` VALUES ('420114', '420114', '蔡甸区', '420100', '区', '', '027', '430100', '中国,湖北省,武汉市,蔡甸区', '114.029290', '30.581970', 'Caidian', '蔡甸', '0');
INSERT INTO `sys_area` VALUES ('420115', '420115', '江夏区', '420100', '区', '', '027', '430200', '中国,湖北省,武汉市,江夏区', '114.313010', '30.346530', 'Jiangxia', '江夏', '0');
INSERT INTO `sys_area` VALUES ('420116', '420116', '黄陂区', '420100', '区', '', '027', '432200', '中国,湖北省,武汉市,黄陂区', '114.375120', '30.881510', 'Huangpi', '黄陂', '0');
INSERT INTO `sys_area` VALUES ('420117', '420117', '新洲区', '420100', '区', '', '027', '431400', '中国,湖北省,武汉市,新洲区', '114.801360', '30.841450', 'Xinzhou', '新洲', '0');
INSERT INTO `sys_area` VALUES ('420200', '420200', '黄石市', '420000', '市', '', '0714', '435003', '中国,湖北省,黄石市', '115.077048', '30.220074', 'Huangshi', '黄石', '0');
INSERT INTO `sys_area` VALUES ('420202', '420202', '黄石港区', '420200', '区', '', '0714', '435000', '中国,湖北省,黄石市,黄石港区', '115.066040', '30.222790', 'Huangshigang', '黄石港', '0');
INSERT INTO `sys_area` VALUES ('420203', '420203', '西塞山区', '420200', '区', '', '0714', '435001', '中国,湖北省,黄石市,西塞山区', '115.110160', '30.204870', 'Xisaishan', '西塞山', '0');
INSERT INTO `sys_area` VALUES ('420204', '420204', '下陆区', '420200', '区', '', '0714', '435005', '中国,湖北省,黄石市,下陆区', '114.961120', '30.173680', 'Xialu', '下陆', '0');
INSERT INTO `sys_area` VALUES ('420205', '420205', '铁山区', '420200', '区', '', '0714', '435006', '中国,湖北省,黄石市,铁山区', '114.901090', '30.206780', 'Tieshan', '铁山', '0');
INSERT INTO `sys_area` VALUES ('420222', '420222', '阳新县', '420200', '区', '', '0714', '435200', '中国,湖北省,黄石市,阳新县', '115.215270', '29.830380', 'Yangxin', '阳新', '0');
INSERT INTO `sys_area` VALUES ('420281', '420281', '大冶市', '420200', '区', '', '0714', '435100', '中国,湖北省,黄石市,大冶市', '114.971740', '30.094380', 'Daye', '大冶', '0');
INSERT INTO `sys_area` VALUES ('420300', '420300', '十堰市', '420000', '市', '', '0719', '442000', '中国,湖北省,十堰市', '110.785239', '32.647017', 'Shiyan', '十堰', '0');
INSERT INTO `sys_area` VALUES ('420302', '420302', '茅箭区', '420300', '区', '', '0719', '442012', '中国,湖北省,十堰市,茅箭区', '110.813410', '32.591530', 'Maojian', '茅箭', '0');
INSERT INTO `sys_area` VALUES ('420303', '420303', '张湾区', '420300', '区', '', '0719', '442001', '中国,湖北省,十堰市,张湾区', '110.770670', '32.651950', 'Zhangwan', '张湾', '0');
INSERT INTO `sys_area` VALUES ('420304', '420304', '郧阳区', '420300', '区', '', '0719', '442500', '中国,湖北省,十堰市,郧阳区', '110.818540', '32.835930', 'Yunyang', '郧阳', '0');
INSERT INTO `sys_area` VALUES ('420322', '420322', '郧西县', '420300', '区', '', '0719', '442600', '中国,湖北省,十堰市,郧西县', '110.425560', '32.993490', 'Yunxi', '郧西', '0');
INSERT INTO `sys_area` VALUES ('420323', '420323', '竹山县', '420300', '区', '', '0719', '442200', '中国,湖北省,十堰市,竹山县', '110.230710', '32.225360', 'Zhushan', '竹山', '0');
INSERT INTO `sys_area` VALUES ('420324', '420324', '竹溪县', '420300', '区', '', '0719', '442300', '中国,湖北省,十堰市,竹溪县', '109.717980', '32.319010', 'Zhuxi', '竹溪', '0');
INSERT INTO `sys_area` VALUES ('420325', '420325', '房县', '420300', '区', '', '0719', '442100', '中国,湖北省,十堰市,房县', '110.743860', '32.057940', 'Fangxian', '房县', '0');
INSERT INTO `sys_area` VALUES ('420381', '420381', '丹江口市', '420300', '区', '', '0719', '442700', '中国,湖北省,十堰市,丹江口市', '111.515250', '32.540850', 'Danjiangkou', '丹江口', '0');
INSERT INTO `sys_area` VALUES ('420500', '420500', '宜昌市', '420000', '市', '', '0717', '443000', '中国,湖北省,宜昌市', '111.290843', '30.702636', 'Yichang', '宜昌', '0');
INSERT INTO `sys_area` VALUES ('420502', '420502', '西陵区', '420500', '区', '', '0717', '443000', '中国,湖北省,宜昌市,西陵区', '111.285730', '30.710770', 'Xiling', '西陵', '0');
INSERT INTO `sys_area` VALUES ('420503', '420503', '伍家岗区', '420500', '区', '', '0717', '443001', '中国,湖北省,宜昌市,伍家岗区', '111.360900', '30.644340', 'Wujiagang', '伍家岗', '0');
INSERT INTO `sys_area` VALUES ('420504', '420504', '点军区', '420500', '区', '', '0717', '443006', '中国,湖北省,宜昌市,点军区', '111.268280', '30.693400', 'Dianjun', '点军', '0');
INSERT INTO `sys_area` VALUES ('420505', '420505', '猇亭区', '420500', '区', '', '0717', '443007', '中国,湖北省,宜昌市,猇亭区', '111.440790', '30.526630', 'Xiaoting', '猇亭', '0');
INSERT INTO `sys_area` VALUES ('420506', '420506', '夷陵区', '420500', '区', '', '0717', '443100', '中国,湖北省,宜昌市,夷陵区', '111.326200', '30.768810', 'Yiling', '夷陵', '0');
INSERT INTO `sys_area` VALUES ('420525', '420525', '远安县', '420500', '区', '', '0717', '444200', '中国,湖北省,宜昌市,远安县', '111.641600', '31.059890', 'Yuan\'an', '远安', '0');
INSERT INTO `sys_area` VALUES ('420526', '420526', '兴山县', '420500', '区', '', '0717', '443711', '中国,湖北省,宜昌市,兴山县', '110.749510', '31.346860', 'Xingshan', '兴山', '0');
INSERT INTO `sys_area` VALUES ('420527', '420527', '秭归县', '420500', '区', '', '0717', '443600', '中国,湖北省,宜昌市,秭归县', '110.981560', '30.827020', 'Zigui', '秭归', '0');
INSERT INTO `sys_area` VALUES ('420528', '420528', '长阳土家族自治县', '420500', '区', '', '0717', '443500', '中国,湖北省,宜昌市,长阳土家族自治县', '111.201050', '30.470520', 'Changyang', '长阳', '0');
INSERT INTO `sys_area` VALUES ('420529', '420529', '五峰土家族自治县', '420500', '区', '', '0717', '443413', '中国,湖北省,宜昌市,五峰土家族自治县', '110.674800', '30.198560', 'Wufeng', '五峰', '0');
INSERT INTO `sys_area` VALUES ('420581', '420581', '宜都市', '420500', '区', '', '0717', '443300', '中国,湖北省,宜昌市,宜都市', '111.450250', '30.378070', 'Yidu', '宜都', '0');
INSERT INTO `sys_area` VALUES ('420582', '420582', '当阳市', '420500', '区', '', '0717', '444100', '中国,湖北省,宜昌市,当阳市', '111.789120', '30.820800', 'Dangyang', '当阳', '0');
INSERT INTO `sys_area` VALUES ('420583', '420583', '枝江市', '420500', '区', '', '0717', '443200', '中国,湖北省,宜昌市,枝江市', '111.768550', '30.426120', 'Zhijiang', '枝江', '0');
INSERT INTO `sys_area` VALUES ('420600', '420600', '襄阳市', '420000', '市', '', '0710', '441021', '中国,湖北省,襄阳市', '112.144146', '32.042426', 'Xiangyang', '襄阳', '0');
INSERT INTO `sys_area` VALUES ('420602', '420602', '襄城区', '420600', '区', '', '0710', '441021', '中国,湖北省,襄阳市,襄城区', '112.133720', '32.010170', 'Xiangcheng', '襄城', '0');
INSERT INTO `sys_area` VALUES ('420606', '420606', '樊城区', '420600', '区', '', '0710', '441001', '中国,湖北省,襄阳市,樊城区', '112.135460', '32.044820', 'Fancheng', '樊城', '0');
INSERT INTO `sys_area` VALUES ('420607', '420607', '襄州区', '420600', '区', '', '0710', '441100', '中国,湖北省,襄阳市,襄州区', '112.150327', '32.015088', 'Xiangzhou', '襄州', '0');
INSERT INTO `sys_area` VALUES ('420624', '420624', '南漳县', '420600', '区', '', '0710', '441500', '中国,湖北省,襄阳市,南漳县', '111.846030', '31.776530', 'Nanzhang', '南漳', '0');
INSERT INTO `sys_area` VALUES ('420625', '420625', '谷城县', '420600', '区', '', '0710', '441700', '中国,湖北省,襄阳市,谷城县', '111.652670', '32.263770', 'Gucheng', '谷城', '0');
INSERT INTO `sys_area` VALUES ('420626', '420626', '保康县', '420600', '区', '', '0710', '441600', '中国,湖北省,襄阳市,保康县', '111.261380', '31.878740', 'Baokang', '保康', '0');
INSERT INTO `sys_area` VALUES ('420682', '420682', '老河口市', '420600', '区', '', '0710', '441800', '中国,湖北省,襄阳市,老河口市', '111.671170', '32.384760', 'Laohekou', '老河口', '0');
INSERT INTO `sys_area` VALUES ('420683', '420683', '枣阳市', '420600', '区', '', '0710', '441200', '中国,湖北省,襄阳市,枣阳市', '112.774440', '32.131420', 'Zaoyang', '枣阳', '0');
INSERT INTO `sys_area` VALUES ('420684', '420684', '宜城市', '420600', '区', '', '0710', '441400', '中国,湖北省,襄阳市,宜城市', '112.257720', '31.719720', 'Yicheng', '宜城', '0');
INSERT INTO `sys_area` VALUES ('420700', '420700', '鄂州市', '420000', '市', '', '0711', '436000', '中国,湖北省,鄂州市', '114.890593', '30.396536', 'Ezhou', '鄂州', '0');
INSERT INTO `sys_area` VALUES ('420702', '420702', '梁子湖区', '420700', '区', '', '0711', '436064', '中国,湖北省,鄂州市,梁子湖区', '114.684630', '30.100030', 'Liangzihu', '梁子湖', '0');
INSERT INTO `sys_area` VALUES ('420703', '420703', '华容区', '420700', '区', '', '0711', '436030', '中国,湖北省,鄂州市,华容区', '114.735680', '30.533280', 'Huarong', '华容', '0');
INSERT INTO `sys_area` VALUES ('420704', '420704', '鄂城区', '420700', '区', '', '0711', '436000', '中国,湖北省,鄂州市,鄂城区', '114.891580', '30.400240', 'Echeng', '鄂城', '0');
INSERT INTO `sys_area` VALUES ('420800', '420800', '荆门市', '420000', '市', '', '0724', '448000', '中国,湖北省,荆门市', '112.204251', '31.035420', 'Jingmen', '荆门', '0');
INSERT INTO `sys_area` VALUES ('420802', '420802', '东宝区', '420800', '区', '', '0724', '448004', '中国,湖北省,荆门市,东宝区', '112.201470', '31.051920', 'Dongbao', '东宝', '0');
INSERT INTO `sys_area` VALUES ('420804', '420804', '掇刀区', '420800', '区', '', '0724', '448124', '中国,湖北省,荆门市,掇刀区', '112.208000', '30.973160', 'Duodao', '掇刀', '0');
INSERT INTO `sys_area` VALUES ('420821', '420821', '京山县', '420800', '区', '', '0724', '431800', '中国,湖北省,荆门市,京山县', '113.110740', '31.022400', 'Jingshan', '京山', '0');
INSERT INTO `sys_area` VALUES ('420822', '420822', '沙洋县', '420800', '区', '', '0724', '448200', '中国,湖北省,荆门市,沙洋县', '112.588530', '30.709160', 'Shayang', '沙洋', '0');
INSERT INTO `sys_area` VALUES ('420881', '420881', '钟祥市', '420800', '区', '', '0724', '431900', '中国,湖北省,荆门市,钟祥市', '112.589320', '31.167800', 'Zhongxiang', '钟祥', '0');
INSERT INTO `sys_area` VALUES ('420900', '420900', '孝感市', '420000', '市', '', '0712', '432100', '中国,湖北省,孝感市', '113.926655', '30.926423', 'Xiaogan', '孝感', '0');
INSERT INTO `sys_area` VALUES ('420902', '420902', '孝南区', '420900', '区', '', '0712', '432100', '中国,湖北省,孝感市,孝南区', '113.911110', '30.916800', 'Xiaonan', '孝南', '0');
INSERT INTO `sys_area` VALUES ('420921', '420921', '孝昌县', '420900', '区', '', '0712', '432900', '中国,湖北省,孝感市,孝昌县', '113.997950', '31.257990', 'Xiaochang', '孝昌', '0');
INSERT INTO `sys_area` VALUES ('420922', '420922', '大悟县', '420900', '区', '', '0712', '432800', '中国,湖北省,孝感市,大悟县', '114.125640', '31.561760', 'Dawu', '大悟', '0');
INSERT INTO `sys_area` VALUES ('420923', '420923', '云梦县', '420900', '区', '', '0712', '432500', '中国,湖北省,孝感市,云梦县', '113.752890', '31.020930', 'Yunmeng', '云梦', '0');
INSERT INTO `sys_area` VALUES ('420981', '420981', '应城市', '420900', '区', '', '0712', '432400', '中国,湖北省,孝感市,应城市', '113.572870', '30.928340', 'Yingcheng', '应城', '0');
INSERT INTO `sys_area` VALUES ('420982', '420982', '安陆市', '420900', '区', '', '0712', '432600', '中国,湖北省,孝感市,安陆市', '113.685570', '31.256930', 'Anlu', '安陆', '0');
INSERT INTO `sys_area` VALUES ('420984', '420984', '汉川市', '420900', '区', '', '0712', '432300', '中国,湖北省,孝感市,汉川市', '113.838980', '30.661170', 'Hanchuan', '汉川', '0');
INSERT INTO `sys_area` VALUES ('421000', '421000', '荆州市', '420000', '市', '', '0716', '434000', '中国,湖北省,荆州市', '112.238130', '30.326857', 'Jingzhou', '荆州', '0');
INSERT INTO `sys_area` VALUES ('421002', '421002', '沙市区', '421000', '区', '', '0716', '434000', '中国,湖北省,荆州市,沙市区', '112.255430', '30.311070', 'Shashi', '沙市', '0');
INSERT INTO `sys_area` VALUES ('421003', '421003', '荆州区', '421000', '区', '', '0716', '434020', '中国,湖北省,荆州市,荆州区', '112.190060', '30.352640', 'Jingzhou', '荆州', '0');
INSERT INTO `sys_area` VALUES ('421022', '421022', '公安县', '421000', '区', '', '0716', '434300', '中国,湖北省,荆州市,公安县', '112.232420', '30.059020', 'Gong\'an', '公安', '0');
INSERT INTO `sys_area` VALUES ('421023', '421023', '监利县', '421000', '区', '', '0716', '433300', '中国,湖北省,荆州市,监利县', '112.894620', '29.814940', 'Jianli', '监利', '0');
INSERT INTO `sys_area` VALUES ('421024', '421024', '江陵县', '421000', '区', '', '0716', '434101', '中国,湖北省,荆州市,江陵县', '112.424680', '30.041740', 'Jiangling', '江陵', '0');
INSERT INTO `sys_area` VALUES ('421081', '421081', '石首市', '421000', '区', '', '0716', '434400', '中国,湖北省,荆州市,石首市', '112.426360', '29.721270', 'Shishou', '石首', '0');
INSERT INTO `sys_area` VALUES ('421083', '421083', '洪湖市', '421000', '区', '', '0716', '433200', '中国,湖北省,荆州市,洪湖市', '113.475980', '29.827000', 'Honghu', '洪湖', '0');
INSERT INTO `sys_area` VALUES ('421087', '421087', '松滋市', '421000', '区', '', '0716', '434200', '中国,湖北省,荆州市,松滋市', '111.767390', '30.169650', 'Songzi', '松滋', '0');
INSERT INTO `sys_area` VALUES ('421100', '421100', '黄冈市', '420000', '市', '', '0713', '438000', '中国,湖北省,黄冈市', '114.879365', '30.447711', 'Huanggang', '黄冈', '0');
INSERT INTO `sys_area` VALUES ('421102', '421102', '黄州区', '421100', '区', '', '0713', '438000', '中国,湖北省,黄冈市,黄州区', '114.880080', '30.434360', 'Huangzhou', '黄州', '0');
INSERT INTO `sys_area` VALUES ('421121', '421121', '团风县', '421100', '区', '', '0713', '438800', '中国,湖北省,黄冈市,团风县', '114.872280', '30.643590', 'Tuanfeng', '团风', '0');
INSERT INTO `sys_area` VALUES ('421122', '421122', '红安县', '421100', '区', '', '0713', '438401', '中国,湖北省,黄冈市,红安县', '114.622400', '31.286680', 'Hong\'an', '红安', '0');
INSERT INTO `sys_area` VALUES ('421123', '421123', '罗田县', '421100', '区', '', '0713', '438600', '中国,湖北省,黄冈市,罗田县', '115.399710', '30.782550', 'Luotian', '罗田', '0');
INSERT INTO `sys_area` VALUES ('421124', '421124', '英山县', '421100', '区', '', '0713', '438700', '中国,湖北省,黄冈市,英山县', '115.681420', '30.735160', 'Yingshan', '英山', '0');
INSERT INTO `sys_area` VALUES ('421125', '421125', '浠水县', '421100', '区', '', '0713', '438200', '中国,湖北省,黄冈市,浠水县', '115.269130', '30.452650', 'Xishui', '浠水', '0');
INSERT INTO `sys_area` VALUES ('421126', '421126', '蕲春县', '421100', '区', '', '0713', '435300', '中国,湖北省,黄冈市,蕲春县', '115.436150', '30.226130', 'Qichun', '蕲春', '0');
INSERT INTO `sys_area` VALUES ('421127', '421127', '黄梅县', '421100', '区', '', '0713', '435500', '中国,湖北省,黄冈市,黄梅县', '115.944270', '30.070330', 'Huangmei', '黄梅', '0');
INSERT INTO `sys_area` VALUES ('421181', '421181', '麻城市', '421100', '区', '', '0713', '438300', '中国,湖北省,黄冈市,麻城市', '115.009880', '31.172280', 'Macheng', '麻城', '0');
INSERT INTO `sys_area` VALUES ('421182', '421182', '武穴市', '421100', '区', '', '0713', '435400', '中国,湖北省,黄冈市,武穴市', '115.559750', '29.844460', 'Wuxue', '武穴', '0');
INSERT INTO `sys_area` VALUES ('421200', '421200', '咸宁市', '420000', '市', '', '0715', '437000', '中国,湖北省,咸宁市', '114.328963', '29.832798', 'Xianning', '咸宁', '0');
INSERT INTO `sys_area` VALUES ('421202', '421202', '咸安区', '421200', '区', '', '0715', '437000', '中国,湖北省,咸宁市,咸安区', '114.298720', '29.852900', 'Xian\'an', '咸安', '0');
INSERT INTO `sys_area` VALUES ('421221', '421221', '嘉鱼县', '421200', '区', '', '0715', '437200', '中国,湖北省,咸宁市,嘉鱼县', '113.939270', '29.970540', 'Jiayu', '嘉鱼', '0');
INSERT INTO `sys_area` VALUES ('421222', '421222', '通城县', '421200', '区', '', '0715', '437400', '中国,湖北省,咸宁市,通城县', '113.815820', '29.245680', 'Tongcheng', '通城', '0');
INSERT INTO `sys_area` VALUES ('421223', '421223', '崇阳县', '421200', '区', '', '0715', '437500', '中国,湖北省,咸宁市,崇阳县', '114.039820', '29.555640', 'Chongyang', '崇阳', '0');
INSERT INTO `sys_area` VALUES ('421224', '421224', '通山县', '421200', '区', '', '0715', '437600', '中国,湖北省,咸宁市,通山县', '114.482390', '29.606300', 'Tongshan', '通山', '0');
INSERT INTO `sys_area` VALUES ('421281', '421281', '赤壁市', '421200', '区', '', '0715', '437300', '中国,湖北省,咸宁市,赤壁市', '113.900390', '29.724540', 'Chibi', '赤壁', '0');
INSERT INTO `sys_area` VALUES ('421300', '421300', '随州市', '420000', '市', '', '0722', '441300', '中国,湖北省,随州市', '113.373770', '31.717497', 'Suizhou', '随州', '0');
INSERT INTO `sys_area` VALUES ('421303', '421303', '曾都区', '421300', '区', '', '0722', '441300', '中国,湖北省,随州市,曾都区', '113.371280', '31.716140', 'Zengdu', '曾都', '0');
INSERT INTO `sys_area` VALUES ('421321', '421321', '随县', '421300', '区', '', '0722', '441309', '中国,湖北省,随州市,随县', '113.826630', '31.617900', 'Suixian', '随县', '0');
INSERT INTO `sys_area` VALUES ('421381', '421381', '广水市', '421300', '区', '', '0722', '432700', '中国,湖北省,随州市,广水市', '113.826630', '31.617900', 'Guangshui', '广水', '0');
INSERT INTO `sys_area` VALUES ('422800', '422800', '恩施土家族苗族自治州', '420000', '市', '', '0718', '445000', '中国,湖北省,恩施土家族苗族自治州', '109.486990', '30.283114', 'Enshi', '恩施', '0');
INSERT INTO `sys_area` VALUES ('422801', '422801', '恩施市', '422800', '区', '', '0718', '445000', '中国,湖北省,恩施土家族苗族自治州,恩施市', '109.479420', '30.295020', 'Enshi', '恩施', '0');
INSERT INTO `sys_area` VALUES ('422802', '422802', '利川市', '422800', '区', '', '0718', '445400', '中国,湖北省,恩施土家族苗族自治州,利川市', '108.935910', '30.291170', 'Lichuan', '利川', '0');
INSERT INTO `sys_area` VALUES ('422822', '422822', '建始县', '422800', '区', '', '0718', '445300', '中国,湖北省,恩施土家族苗族自治州,建始县', '109.722070', '30.602090', 'Jianshi', '建始', '0');
INSERT INTO `sys_area` VALUES ('422823', '422823', '巴东县', '422800', '区', '', '0718', '444300', '中国,湖北省,恩施土家族苗族自治州,巴东县', '110.340660', '31.042330', 'Badong', '巴东', '0');
INSERT INTO `sys_area` VALUES ('422825', '422825', '宣恩县', '422800', '区', '', '0718', '445500', '中国,湖北省,恩施土家族苗族自治州,宣恩县', '109.491790', '29.987140', 'Xuanen', '宣恩', '0');
INSERT INTO `sys_area` VALUES ('422826', '422826', '咸丰县', '422800', '区', '', '0718', '445600', '中国,湖北省,恩施土家族苗族自治州,咸丰县', '109.152000', '29.679830', 'Xianfeng', '咸丰', '0');
INSERT INTO `sys_area` VALUES ('422827', '422827', '来凤县', '422800', '区', '', '0718', '445700', '中国,湖北省,恩施土家族苗族自治州,来凤县', '109.407160', '29.493730', 'Laifeng', '来凤', '0');
INSERT INTO `sys_area` VALUES ('422828', '422828', '鹤峰县', '422800', '区', '', '0718', '445800', '中国,湖北省,恩施土家族苗族自治州,鹤峰县', '110.030910', '29.890720', 'Hefeng', '鹤峰', '0');
INSERT INTO `sys_area` VALUES ('429000', '429000', '直辖县级', '420000', '市', '', '', '', '中国,湖北省,直辖县级', '114.298572', '30.584355', '', ' ', '0');
INSERT INTO `sys_area` VALUES ('429004', '429004', '仙桃市', '429000', '区', '', '0728', '433000', '中国,湖北省,直辖县级,仙桃市', '113.453974', '30.364953', 'Xiantao', '仙桃', '0');
INSERT INTO `sys_area` VALUES ('429005', '429005', '潜江市', '429000', '区', '', '0728', '433100', '中国,湖北省,直辖县级,潜江市', '112.896866', '30.421215', 'Qianjiang', '潜江', '0');
INSERT INTO `sys_area` VALUES ('429006', '429006', '天门市', '429000', '区', '', '0728', '431700', '中国,湖北省,直辖县级,天门市', '113.165862', '30.653061', 'Tianmen', '天门', '0');
INSERT INTO `sys_area` VALUES ('429021', '429021', '神农架林区', '429000', '区', '', '0719', '442400', '中国,湖北省,直辖县级,神农架林区', '110.671525', '31.744449', 'Shennongjia', '神农架', '0');
INSERT INTO `sys_area` VALUES ('430000', '430000', '湖南省', '100000', '省', '', '', '', '中国,湖南省', '112.982279', '28.194090', 'Hunan', '湖南', '0');
INSERT INTO `sys_area` VALUES ('430100', '430100', '长沙市', '430000', '市', '', '0731', '410005', '中国,湖南省,长沙市', '112.982279', '28.194090', 'Changsha', '长沙', '0');
INSERT INTO `sys_area` VALUES ('430102', '430102', '芙蓉区', '430100', '区', '', '0731', '410011', '中国,湖南省,长沙市,芙蓉区', '113.031760', '28.184400', 'Furong', '芙蓉', '0');
INSERT INTO `sys_area` VALUES ('430103', '430103', '天心区', '430100', '区', '', '0731', '410004', '中国,湖南省,长沙市,天心区', '112.989910', '28.112700', 'Tianxin', '天心', '0');
INSERT INTO `sys_area` VALUES ('430104', '430104', '岳麓区', '430100', '区', '', '0731', '410013', '中国,湖南省,长沙市,岳麓区', '112.931330', '28.235100', 'Yuelu', '岳麓', '0');
INSERT INTO `sys_area` VALUES ('430105', '430105', '开福区', '430100', '区', '', '0731', '410008', '中国,湖南省,长沙市,开福区', '112.986230', '28.255850', 'Kaifu', '开福', '0');
INSERT INTO `sys_area` VALUES ('430111', '430111', '雨花区', '430100', '区', '', '0731', '410011', '中国,湖南省,长沙市,雨花区', '113.035670', '28.135410', 'Yuhua', '雨花', '0');
INSERT INTO `sys_area` VALUES ('430112', '430112', '望城区', '430100', '区', '', '0731', '410200', '中国,湖南省,长沙市,望城区', '112.819549', '28.347458', 'Wangcheng', '望城', '0');
INSERT INTO `sys_area` VALUES ('430121', '430121', '长沙县', '430100', '区', '', '0731', '410100', '中国,湖南省,长沙市,长沙县', '113.080710', '28.245950', 'Changsha', '长沙', '0');
INSERT INTO `sys_area` VALUES ('430124', '430124', '宁乡县', '430100', '区', '', '0731', '410600', '中国,湖南省,长沙市,宁乡县', '112.557490', '28.253580', 'Ningxiang', '宁乡', '0');
INSERT INTO `sys_area` VALUES ('430181', '430181', '浏阳市', '430100', '区', '', '0731', '410300', '中国,湖南省,长沙市,浏阳市', '113.643120', '28.163750', 'Liuyang', '浏阳', '0');
INSERT INTO `sys_area` VALUES ('430200', '430200', '株洲市', '430000', '市', '', '0731', '412000', '中国,湖南省,株洲市', '113.151737', '27.835806', 'Zhuzhou', '株洲', '0');
INSERT INTO `sys_area` VALUES ('430202', '430202', '荷塘区', '430200', '区', '', '0731', '412000', '中国,湖南省,株洲市,荷塘区', '113.173150', '27.855690', 'Hetang', '荷塘', '0');
INSERT INTO `sys_area` VALUES ('430203', '430203', '芦淞区', '430200', '区', '', '0731', '412000', '中国,湖南省,株洲市,芦淞区', '113.155620', '27.785250', 'Lusong', '芦淞', '0');
INSERT INTO `sys_area` VALUES ('430204', '430204', '石峰区', '430200', '区', '', '0731', '412005', '中国,湖南省,株洲市,石峰区', '113.117760', '27.875520', 'Shifeng', '石峰', '0');
INSERT INTO `sys_area` VALUES ('430211', '430211', '天元区', '430200', '区', '', '0731', '412007', '中国,湖南省,株洲市,天元区', '113.123350', '27.831030', 'Tianyuan', '天元', '0');
INSERT INTO `sys_area` VALUES ('430221', '430221', '株洲县', '430200', '区', '', '0731', '412100', '中国,湖南省,株洲市,株洲县', '113.144280', '27.698260', 'Zhuzhou', '株洲', '0');
INSERT INTO `sys_area` VALUES ('430223', '430223', '攸县', '430200', '区', '', '0731', '412300', '中国,湖南省,株洲市,攸县', '113.343650', '27.003520', 'Youxian', '攸县', '0');
INSERT INTO `sys_area` VALUES ('430224', '430224', '茶陵县', '430200', '区', '', '0731', '412400', '中国,湖南省,株洲市,茶陵县', '113.543640', '26.791500', 'Chaling', '茶陵', '0');
INSERT INTO `sys_area` VALUES ('430225', '430225', '炎陵县', '430200', '区', '', '0731', '412500', '中国,湖南省,株洲市,炎陵县', '113.771630', '26.488180', 'Yanling', '炎陵', '0');
INSERT INTO `sys_area` VALUES ('430281', '430281', '醴陵市', '430200', '区', '', '0731', '412200', '中国,湖南省,株洲市,醴陵市', '113.497040', '27.646150', 'Liling', '醴陵', '0');
INSERT INTO `sys_area` VALUES ('430300', '430300', '湘潭市', '430000', '市', '', '0731', '411100', '中国,湖南省,湘潭市', '112.925083', '27.846725', 'Xiangtan', '湘潭', '0');
INSERT INTO `sys_area` VALUES ('430302', '430302', '雨湖区', '430300', '区', '', '0731', '411100', '中国,湖南省,湘潭市,雨湖区', '112.903990', '27.868590', 'Yuhu', '雨湖', '0');
INSERT INTO `sys_area` VALUES ('430304', '430304', '岳塘区', '430300', '区', '', '0731', '411101', '中国,湖南省,湘潭市,岳塘区', '112.960600', '27.857840', 'Yuetang', '岳塘', '0');
INSERT INTO `sys_area` VALUES ('430321', '430321', '湘潭县', '430300', '区', '', '0731', '411228', '中国,湖南省,湘潭市,湘潭县', '112.950800', '27.778930', 'Xiangtan', '湘潭', '0');
INSERT INTO `sys_area` VALUES ('430381', '430381', '湘乡市', '430300', '区', '', '0731', '411400', '中国,湖南省,湘潭市,湘乡市', '112.535120', '27.735430', 'Xiangxiang', '湘乡', '0');
INSERT INTO `sys_area` VALUES ('430382', '430382', '韶山市', '430300', '区', '', '0731', '411300', '中国,湖南省,湘潭市,韶山市', '112.526550', '27.915030', 'Shaoshan', '韶山', '0');
INSERT INTO `sys_area` VALUES ('430400', '430400', '衡阳市', '430000', '市', '', '0734', '421001', '中国,湖南省,衡阳市', '112.607693', '26.900358', 'Hengyang', '衡阳', '0');
INSERT INTO `sys_area` VALUES ('430405', '430405', '珠晖区', '430400', '区', '', '0734', '421002', '中国,湖南省,衡阳市,珠晖区', '112.620540', '26.893610', 'Zhuhui', '珠晖', '0');
INSERT INTO `sys_area` VALUES ('430406', '430406', '雁峰区', '430400', '区', '', '0734', '421001', '中国,湖南省,衡阳市,雁峰区', '112.616540', '26.888660', 'Yanfeng', '雁峰', '0');
INSERT INTO `sys_area` VALUES ('430407', '430407', '石鼓区', '430400', '区', '', '0734', '421005', '中国,湖南省,衡阳市,石鼓区', '112.610690', '26.902320', 'Shigu', '石鼓', '0');
INSERT INTO `sys_area` VALUES ('430408', '430408', '蒸湘区', '430400', '区', '', '0734', '421001', '中国,湖南省,衡阳市,蒸湘区', '112.603300', '26.896510', 'Zhengxiang', '蒸湘', '0');
INSERT INTO `sys_area` VALUES ('430412', '430412', '南岳区', '430400', '区', '', '0734', '421900', '中国,湖南省,衡阳市,南岳区', '112.738400', '27.232620', 'Nanyue', '南岳', '0');
INSERT INTO `sys_area` VALUES ('430421', '430421', '衡阳县', '430400', '区', '', '0734', '421200', '中国,湖南省,衡阳市,衡阳县', '112.370880', '26.970600', 'Hengyang', '衡阳', '0');
INSERT INTO `sys_area` VALUES ('430422', '430422', '衡南县', '430400', '区', '', '0734', '421131', '中国,湖南省,衡阳市,衡南县', '112.677880', '26.738280', 'Hengnan', '衡南', '0');
INSERT INTO `sys_area` VALUES ('430423', '430423', '衡山县', '430400', '区', '', '0734', '421300', '中国,湖南省,衡阳市,衡山县', '112.867760', '27.231340', 'Hengshan', '衡山', '0');
INSERT INTO `sys_area` VALUES ('430424', '430424', '衡东县', '430400', '区', '', '0734', '421400', '中国,湖南省,衡阳市,衡东县', '112.948330', '27.080930', 'Hengdong', '衡东', '0');
INSERT INTO `sys_area` VALUES ('430426', '430426', '祁东县', '430400', '区', '', '0734', '421600', '中国,湖南省,衡阳市,祁东县', '112.090390', '26.799640', 'Qidong', '祁东', '0');
INSERT INTO `sys_area` VALUES ('430481', '430481', '耒阳市', '430400', '区', '', '0734', '421800', '中国,湖南省,衡阳市,耒阳市', '112.859980', '26.421320', 'Leiyang', '耒阳', '0');
INSERT INTO `sys_area` VALUES ('430482', '430482', '常宁市', '430400', '区', '', '0734', '421500', '中国,湖南省,衡阳市,常宁市', '112.400900', '26.406920', 'Changning', '常宁', '0');
INSERT INTO `sys_area` VALUES ('430500', '430500', '邵阳市', '430000', '市', '', '0739', '422000', '中国,湖南省,邵阳市', '111.469230', '27.237842', 'Shaoyang', '邵阳', '0');
INSERT INTO `sys_area` VALUES ('430502', '430502', '双清区', '430500', '区', '', '0739', '422001', '中国,湖南省,邵阳市,双清区', '111.497150', '27.232910', 'Shuangqing', '双清', '0');
INSERT INTO `sys_area` VALUES ('430503', '430503', '大祥区', '430500', '区', '', '0739', '422000', '中国,湖南省,邵阳市,大祥区', '111.454120', '27.233320', 'Daxiang', '大祥', '0');
INSERT INTO `sys_area` VALUES ('430511', '430511', '北塔区', '430500', '区', '', '0739', '422007', '中国,湖南省,邵阳市,北塔区', '111.452190', '27.246480', 'Beita', '北塔', '0');
INSERT INTO `sys_area` VALUES ('430521', '430521', '邵东县', '430500', '区', '', '0739', '422800', '中国,湖南省,邵阳市,邵东县', '111.744410', '27.258400', 'Shaodong', '邵东', '0');
INSERT INTO `sys_area` VALUES ('430522', '430522', '新邵县', '430500', '区', '', '0739', '422900', '中国,湖南省,邵阳市,新邵县', '111.460660', '27.321690', 'Xinshao', '新邵', '0');
INSERT INTO `sys_area` VALUES ('430523', '430523', '邵阳县', '430500', '区', '', '0739', '422100', '中国,湖南省,邵阳市,邵阳县', '111.274590', '26.991430', 'Shaoyang', '邵阳', '0');
INSERT INTO `sys_area` VALUES ('430524', '430524', '隆回县', '430500', '区', '', '0739', '422200', '中国,湖南省,邵阳市,隆回县', '111.032160', '27.109370', 'Longhui', '隆回', '0');
INSERT INTO `sys_area` VALUES ('430525', '430525', '洞口县', '430500', '区', '', '0739', '422300', '中国,湖南省,邵阳市,洞口县', '110.573880', '27.054620', 'Dongkou', '洞口', '0');
INSERT INTO `sys_area` VALUES ('430527', '430527', '绥宁县', '430500', '区', '', '0739', '422600', '中国,湖南省,邵阳市,绥宁县', '110.155760', '26.586360', 'Suining', '绥宁', '0');
INSERT INTO `sys_area` VALUES ('430528', '430528', '新宁县', '430500', '区', '', '0739', '422700', '中国,湖南省,邵阳市,新宁县', '110.851310', '26.429360', 'Xinning', '新宁', '0');
INSERT INTO `sys_area` VALUES ('430529', '430529', '城步苗族自治县', '430500', '区', '', '0739', '422500', '中国,湖南省,邵阳市,城步苗族自治县', '110.322200', '26.390480', 'Chengbu', '城步', '0');
INSERT INTO `sys_area` VALUES ('430581', '430581', '武冈市', '430500', '区', '', '0739', '422400', '中国,湖南省,邵阳市,武冈市', '110.632810', '26.728170', 'Wugang', '武冈', '0');
INSERT INTO `sys_area` VALUES ('430600', '430600', '岳阳市', '430000', '市', '', '0730', '414000', '中国,湖南省,岳阳市', '113.132855', '29.370290', 'Yueyang', '岳阳', '0');
INSERT INTO `sys_area` VALUES ('430602', '430602', '岳阳楼区', '430600', '区', '', '0730', '414000', '中国,湖南省,岳阳市,岳阳楼区', '113.129420', '29.371900', 'Yueyanglou', '岳阳楼', '0');
INSERT INTO `sys_area` VALUES ('430603', '430603', '云溪区', '430600', '区', '', '0730', '414009', '中国,湖南省,岳阳市,云溪区', '113.277130', '29.473570', 'Yunxi', '云溪', '0');
INSERT INTO `sys_area` VALUES ('430611', '430611', '君山区', '430600', '区', '', '0730', '414005', '中国,湖南省,岳阳市,君山区', '113.004390', '29.459410', 'Junshan', '君山', '0');
INSERT INTO `sys_area` VALUES ('430621', '430621', '岳阳县', '430600', '区', '', '0730', '414100', '中国,湖南省,岳阳市,岳阳县', '113.119870', '29.143140', 'Yueyang', '岳阳', '0');
INSERT INTO `sys_area` VALUES ('430623', '430623', '华容县', '430600', '区', '', '0730', '414200', '中国,湖南省,岳阳市,华容县', '112.540890', '29.530190', 'Huarong', '华容', '0');
INSERT INTO `sys_area` VALUES ('430624', '430624', '湘阴县', '430600', '区', '', '0730', '414600', '中国,湖南省,岳阳市,湘阴县', '112.909110', '28.689220', 'Xiangyin', '湘阴', '0');
INSERT INTO `sys_area` VALUES ('430626', '430626', '平江县', '430600', '区', '', '0730', '414500', '中国,湖南省,岳阳市,平江县', '113.581050', '28.706640', 'Pingjiang', '平江', '0');
INSERT INTO `sys_area` VALUES ('430681', '430681', '汨罗市', '430600', '区', '', '0730', '414400', '中国,湖南省,岳阳市,汨罗市', '113.067070', '28.806310', 'Miluo', '汨罗', '0');
INSERT INTO `sys_area` VALUES ('430682', '430682', '临湘市', '430600', '区', '', '0730', '414300', '中国,湖南省,岳阳市,临湘市', '113.450100', '29.477010', 'Linxiang', '临湘', '0');
INSERT INTO `sys_area` VALUES ('430700', '430700', '常德市', '430000', '市', '', '0736', '415000', '中国,湖南省,常德市', '111.691347', '29.040225', 'Changde', '常德', '0');
INSERT INTO `sys_area` VALUES ('430702', '430702', '武陵区', '430700', '区', '', '0736', '415000', '中国,湖南省,常德市,武陵区', '111.697910', '29.028760', 'Wuling', '武陵', '0');
INSERT INTO `sys_area` VALUES ('430703', '430703', '鼎城区', '430700', '区', '', '0736', '415101', '中国,湖南省,常德市,鼎城区', '111.680780', '29.018590', 'Dingcheng', '鼎城', '0');
INSERT INTO `sys_area` VALUES ('430721', '430721', '安乡县', '430700', '区', '', '0736', '415600', '中国,湖南省,常德市,安乡县', '112.167320', '29.413260', 'Anxiang', '安乡', '0');
INSERT INTO `sys_area` VALUES ('430722', '430722', '汉寿县', '430700', '区', '', '0736', '415900', '中国,湖南省,常德市,汉寿县', '111.966910', '28.902990', 'Hanshou', '汉寿', '0');
INSERT INTO `sys_area` VALUES ('430723', '430723', '澧县', '430700', '区', '', '0736', '415500', '中国,湖南省,常德市,澧县', '111.758660', '29.633170', 'Lixian', '澧县', '0');
INSERT INTO `sys_area` VALUES ('430724', '430724', '临澧县', '430700', '区', '', '0736', '415200', '中国,湖南省,常德市,临澧县', '111.651610', '29.441630', 'Linli', '临澧', '0');
INSERT INTO `sys_area` VALUES ('430725', '430725', '桃源县', '430700', '区', '', '0736', '415700', '中国,湖南省,常德市,桃源县', '111.488920', '28.904740', 'Taoyuan', '桃源', '0');
INSERT INTO `sys_area` VALUES ('430726', '430726', '石门县', '430700', '区', '', '0736', '415300', '中国,湖南省,常德市,石门县', '111.379660', '29.584240', 'Shimen', '石门', '0');
INSERT INTO `sys_area` VALUES ('430781', '430781', '津市市', '430700', '区', '', '0736', '415400', '中国,湖南省,常德市,津市市', '111.877560', '29.605630', 'Jinshi', '津市', '0');
INSERT INTO `sys_area` VALUES ('430800', '430800', '张家界市', '430000', '市', '', '0744', '427000', '中国,湖南省,张家界市', '110.479921', '29.127401', 'Zhangjiajie', '张家界', '0');
INSERT INTO `sys_area` VALUES ('430802', '430802', '永定区', '430800', '区', '', '0744', '427000', '中国,湖南省,张家界市,永定区', '110.474640', '29.133870', 'Yongding', '永定', '0');
INSERT INTO `sys_area` VALUES ('430811', '430811', '武陵源区', '430800', '区', '', '0744', '427400', '中国,湖南省,张家界市,武陵源区', '110.550260', '29.345740', 'Wulingyuan', '武陵源', '0');
INSERT INTO `sys_area` VALUES ('430821', '430821', '慈利县', '430800', '区', '', '0744', '427200', '中国,湖南省,张家界市,慈利县', '111.139460', '29.429890', 'Cili', '慈利', '0');
INSERT INTO `sys_area` VALUES ('430822', '430822', '桑植县', '430800', '区', '', '0744', '427100', '中国,湖南省,张家界市,桑植县', '110.163080', '29.398150', 'Sangzhi', '桑植', '0');
INSERT INTO `sys_area` VALUES ('430900', '430900', '益阳市', '430000', '市', '', '0737', '413000', '中国,湖南省,益阳市', '112.355042', '28.570066', 'Yiyang', '益阳', '0');
INSERT INTO `sys_area` VALUES ('430902', '430902', '资阳区', '430900', '区', '', '0737', '413001', '中国,湖南省,益阳市,资阳区', '112.324470', '28.590950', 'Ziyang', '资阳', '0');
INSERT INTO `sys_area` VALUES ('430903', '430903', '赫山区', '430900', '区', '', '0737', '413002', '中国,湖南省,益阳市,赫山区', '112.372650', '28.574250', 'Heshan', '赫山', '0');
INSERT INTO `sys_area` VALUES ('430921', '430921', '南县', '430900', '区', '', '0737', '413200', '中国,湖南省,益阳市,南县', '112.396300', '29.361590', 'Nanxian', '南县', '0');
INSERT INTO `sys_area` VALUES ('430922', '430922', '桃江县', '430900', '区', '', '0737', '413400', '中国,湖南省,益阳市,桃江县', '112.155700', '28.518140', 'Taojiang', '桃江', '0');
INSERT INTO `sys_area` VALUES ('430923', '430923', '安化县', '430900', '区', '', '0737', '413500', '中国,湖南省,益阳市,安化县', '111.212980', '28.374240', 'Anhua', '安化', '0');
INSERT INTO `sys_area` VALUES ('430981', '430981', '沅江市', '430900', '区', '', '0737', '413100', '中国,湖南省,益阳市,沅江市', '112.354270', '28.844030', 'Yuanjiang', '沅江', '0');
INSERT INTO `sys_area` VALUES ('431000', '431000', '郴州市', '430000', '市', '', '0735', '423000', '中国,湖南省,郴州市', '113.032067', '25.793589', 'Chenzhou', '郴州', '0');
INSERT INTO `sys_area` VALUES ('431002', '431002', '北湖区', '431000', '区', '', '0735', '423000', '中国,湖南省,郴州市,北湖区', '113.011030', '25.784050', 'Beihu', '北湖', '0');
INSERT INTO `sys_area` VALUES ('431003', '431003', '苏仙区', '431000', '区', '', '0735', '423000', '中国,湖南省,郴州市,苏仙区', '113.042260', '25.800450', 'Suxian', '苏仙', '0');
INSERT INTO `sys_area` VALUES ('431021', '431021', '桂阳县', '431000', '区', '', '0735', '424400', '中国,湖南省,郴州市,桂阳县', '112.733640', '25.754060', 'Guiyang', '桂阳', '0');
INSERT INTO `sys_area` VALUES ('431022', '431022', '宜章县', '431000', '区', '', '0735', '424200', '中国,湖南省,郴州市,宜章县', '112.951470', '25.399310', 'Yizhang', '宜章', '0');
INSERT INTO `sys_area` VALUES ('431023', '431023', '永兴县', '431000', '区', '', '0735', '423300', '中国,湖南省,郴州市,永兴县', '113.112420', '26.126460', 'Yongxing', '永兴', '0');
INSERT INTO `sys_area` VALUES ('431024', '431024', '嘉禾县', '431000', '区', '', '0735', '424500', '中国,湖南省,郴州市,嘉禾县', '112.369350', '25.587950', 'Jiahe', '嘉禾', '0');
INSERT INTO `sys_area` VALUES ('431025', '431025', '临武县', '431000', '区', '', '0735', '424300', '中国,湖南省,郴州市,临武县', '112.563690', '25.276020', 'Linwu', '临武', '0');
INSERT INTO `sys_area` VALUES ('431026', '431026', '汝城县', '431000', '区', '', '0735', '424100', '中国,湖南省,郴州市,汝城县', '113.685820', '25.552040', 'Rucheng', '汝城', '0');
INSERT INTO `sys_area` VALUES ('431027', '431027', '桂东县', '431000', '区', '', '0735', '423500', '中国,湖南省,郴州市,桂东县', '113.946800', '26.079870', 'Guidong', '桂东', '0');
INSERT INTO `sys_area` VALUES ('431028', '431028', '安仁县', '431000', '区', '', '0735', '423600', '中国,湖南省,郴州市,安仁县', '113.269440', '26.709310', 'Anren', '安仁', '0');
INSERT INTO `sys_area` VALUES ('431081', '431081', '资兴市', '431000', '区', '', '0735', '423400', '中国,湖南省,郴州市,资兴市', '113.237240', '25.976680', 'Zixing', '资兴', '0');
INSERT INTO `sys_area` VALUES ('431100', '431100', '永州市', '430000', '市', '', '0746', '425000', '中国,湖南省,永州市', '111.608019', '26.434516', 'Yongzhou', '永州', '0');
INSERT INTO `sys_area` VALUES ('431102', '431102', '零陵区', '431100', '区', '', '0746', '425100', '中国,湖南省,永州市,零陵区', '111.621030', '26.221090', 'Lingling', '零陵', '0');
INSERT INTO `sys_area` VALUES ('431103', '431103', '冷水滩区', '431100', '区', '', '0746', '425100', '中国,湖南省,永州市,冷水滩区', '111.592140', '26.461070', 'Lengshuitan', '冷水滩', '0');
INSERT INTO `sys_area` VALUES ('431121', '431121', '祁阳县', '431100', '区', '', '0746', '426100', '中国,湖南省,永州市,祁阳县', '111.840110', '26.580090', 'Qiyang', '祁阳', '0');
INSERT INTO `sys_area` VALUES ('431122', '431122', '东安县', '431100', '区', '', '0746', '425900', '中国,湖南省,永州市,东安县', '111.316400', '26.392020', 'Dong\'an', '东安', '0');
INSERT INTO `sys_area` VALUES ('431123', '431123', '双牌县', '431100', '区', '', '0746', '425200', '中国,湖南省,永州市,双牌县', '111.659270', '25.959880', 'Shuangpai', '双牌', '0');
INSERT INTO `sys_area` VALUES ('431124', '431124', '道县', '431100', '区', '', '0746', '425300', '中国,湖南省,永州市,道县', '111.601950', '25.527660', 'Daoxian', '道县', '0');
INSERT INTO `sys_area` VALUES ('431125', '431125', '江永县', '431100', '区', '', '0746', '425400', '中国,湖南省,永州市,江永县', '111.340820', '25.272330', 'Jiangyong', '江永', '0');
INSERT INTO `sys_area` VALUES ('431126', '431126', '宁远县', '431100', '区', '', '0746', '425600', '中国,湖南省,永州市,宁远县', '111.946250', '25.569130', 'Ningyuan', '宁远', '0');
INSERT INTO `sys_area` VALUES ('431127', '431127', '蓝山县', '431100', '区', '', '0746', '425800', '中国,湖南省,永州市,蓝山县', '112.193630', '25.367940', 'Lanshan', '蓝山', '0');
INSERT INTO `sys_area` VALUES ('431128', '431128', '新田县', '431100', '区', '', '0746', '425700', '中国,湖南省,永州市,新田县', '112.221030', '25.909500', 'Xintian', '新田', '0');
INSERT INTO `sys_area` VALUES ('431129', '431129', '江华瑶族自治县', '431100', '区', '', '0746', '425500', '中国,湖南省,永州市,江华瑶族自治县', '111.588470', '25.184500', 'Jianghua', '江华', '0');
INSERT INTO `sys_area` VALUES ('431200', '431200', '怀化市', '430000', '市', '', '0745', '418000', '中国,湖南省,怀化市', '109.978240', '27.550082', 'Huaihua', '怀化', '0');
INSERT INTO `sys_area` VALUES ('431202', '431202', '鹤城区', '431200', '区', '', '0745', '418000', '中国,湖南省,怀化市,鹤城区', '109.965090', '27.549420', 'Hecheng', '鹤城', '0');
INSERT INTO `sys_area` VALUES ('431221', '431221', '中方县', '431200', '区', '', '0745', '418005', '中国,湖南省,怀化市,中方县', '109.944970', '27.439880', 'Zhongfang', '中方', '0');
INSERT INTO `sys_area` VALUES ('431222', '431222', '沅陵县', '431200', '区', '', '0745', '419600', '中国,湖南省,怀化市,沅陵县', '110.396330', '28.455480', 'Yuanling', '沅陵', '0');
INSERT INTO `sys_area` VALUES ('431223', '431223', '辰溪县', '431200', '区', '', '0745', '419500', '中国,湖南省,怀化市,辰溪县', '110.189420', '28.004060', 'Chenxi', '辰溪', '0');
INSERT INTO `sys_area` VALUES ('431224', '431224', '溆浦县', '431200', '区', '', '0745', '419300', '中国,湖南省,怀化市,溆浦县', '110.593840', '27.908360', 'Xupu', '溆浦', '0');
INSERT INTO `sys_area` VALUES ('431225', '431225', '会同县', '431200', '区', '', '0745', '418300', '中国,湖南省,怀化市,会同县', '109.735680', '26.887160', 'Huitong', '会同', '0');
INSERT INTO `sys_area` VALUES ('431226', '431226', '麻阳苗族自治县', '431200', '区', '', '0745', '419400', '中国,湖南省,怀化市,麻阳苗族自治县', '109.801940', '27.866000', 'Mayang', '麻阳', '0');
INSERT INTO `sys_area` VALUES ('431227', '431227', '新晃侗族自治县', '431200', '区', '', '0745', '419200', '中国,湖南省,怀化市,新晃侗族自治县', '109.171660', '27.359370', 'Xinhuang', '新晃', '0');
INSERT INTO `sys_area` VALUES ('431228', '431228', '芷江侗族自治县', '431200', '区', '', '0745', '419100', '中国,湖南省,怀化市,芷江侗族自治县', '109.684900', '27.442970', 'Zhijiang', '芷江', '0');
INSERT INTO `sys_area` VALUES ('431229', '431229', '靖州苗族侗族自治县', '431200', '区', '', '0745', '418400', '中国,湖南省,怀化市,靖州苗族侗族自治县', '109.698210', '26.576510', 'Jingzhou', '靖州', '0');
INSERT INTO `sys_area` VALUES ('431230', '431230', '通道侗族自治县', '431200', '区', '', '0745', '418500', '中国,湖南省,怀化市,通道侗族自治县', '109.785150', '26.157100', 'Tongdao', '通道', '0');
INSERT INTO `sys_area` VALUES ('431281', '431281', '洪江市', '431200', '区', '', '0745', '418100', '中国,湖南省,怀化市,洪江市', '109.836510', '27.209220', 'Hongjiang', '洪江', '0');
INSERT INTO `sys_area` VALUES ('431300', '431300', '娄底市', '430000', '市', '', '0738', '417000', '中国,湖南省,娄底市', '112.008497', '27.728136', 'Loudi', '娄底', '0');
INSERT INTO `sys_area` VALUES ('431302', '431302', '娄星区', '431300', '区', '', '0738', '417000', '中国,湖南省,娄底市,娄星区', '112.001930', '27.729920', 'Louxing', '娄星', '0');
INSERT INTO `sys_area` VALUES ('431321', '431321', '双峰县', '431300', '区', '', '0738', '417700', '中国,湖南省,娄底市,双峰县', '112.199210', '27.454180', 'Shuangfeng', '双峰', '0');
INSERT INTO `sys_area` VALUES ('431322', '431322', '新化县', '431300', '区', '', '0738', '417600', '中国,湖南省,娄底市,新化县', '111.327390', '27.726600', 'Xinhua', '新化', '0');
INSERT INTO `sys_area` VALUES ('431381', '431381', '冷水江市', '431300', '区', '', '0738', '417500', '中国,湖南省,娄底市,冷水江市', '111.435540', '27.681470', 'Lengshuijiang', '冷水江', '0');
INSERT INTO `sys_area` VALUES ('431382', '431382', '涟源市', '431300', '区', '', '0738', '417100', '中国,湖南省,娄底市,涟源市', '111.672330', '27.688310', 'Lianyuan', '涟源', '0');
INSERT INTO `sys_area` VALUES ('433100', '433100', '湘西土家族苗族自治州', '430000', '市', '', '0743', '416000', '中国,湖南省,湘西土家族苗族自治州', '109.739735', '28.314296', 'Xiangxi', '湘西', '0');
INSERT INTO `sys_area` VALUES ('433101', '433101', '吉首市', '433100', '区', '', '0743', '416000', '中国,湖南省,湘西土家族苗族自治州,吉首市', '109.697990', '28.262470', 'Jishou', '吉首', '0');
INSERT INTO `sys_area` VALUES ('433122', '433122', '泸溪县', '433100', '区', '', '0743', '416100', '中国,湖南省,湘西土家族苗族自治州,泸溪县', '110.216820', '28.220500', 'Luxi', '泸溪', '0');
INSERT INTO `sys_area` VALUES ('433123', '433123', '凤凰县', '433100', '区', '', '0743', '416200', '中国,湖南省,湘西土家族苗族自治州,凤凰县', '109.601560', '27.948220', 'Fenghuang', '凤凰', '0');
INSERT INTO `sys_area` VALUES ('433124', '433124', '花垣县', '433100', '区', '', '0743', '416400', '中国,湖南省,湘西土家族苗族自治州,花垣县', '109.482170', '28.572100', 'Huayuan', '花垣', '0');
INSERT INTO `sys_area` VALUES ('433125', '433125', '保靖县', '433100', '区', '', '0743', '416500', '中国,湖南省,湘西土家族苗族自治州,保靖县', '109.660490', '28.699970', 'Baojing', '保靖', '0');
INSERT INTO `sys_area` VALUES ('433126', '433126', '古丈县', '433100', '区', '', '0743', '416300', '中国,湖南省,湘西土家族苗族自治州,古丈县', '109.948120', '28.619440', 'Guzhang', '古丈', '0');
INSERT INTO `sys_area` VALUES ('433127', '433127', '永顺县', '433100', '区', '', '0743', '416700', '中国,湖南省,湘西土家族苗族自治州,永顺县', '109.852660', '29.001030', 'Yongshun', '永顺', '0');
INSERT INTO `sys_area` VALUES ('433130', '433130', '龙山县', '433100', '区', '', '0743', '416800', '中国,湖南省,湘西土家族苗族自治州,龙山县', '109.443200', '29.456930', 'Longshan', '龙山', '0');
INSERT INTO `sys_area` VALUES ('440000', '440000', '广东省', '100000', '省', '', '', '', '中国,广东省', '113.280637', '23.125178', 'Guangdong', '广东', '0');
INSERT INTO `sys_area` VALUES ('440100', '440100', '广州市', '440000', '市', '', '020', '510032', '中国,广东省,广州市', '113.280637', '23.125178', 'Guangzhou', '广州', '0');
INSERT INTO `sys_area` VALUES ('440103', '440103', '荔湾区', '440100', '区', '', '020', '510170', '中国,广东省,广州市,荔湾区', '113.244200', '23.125920', 'Liwan', '荔湾', '0');
INSERT INTO `sys_area` VALUES ('440104', '440104', '越秀区', '440100', '区', '', '020', '510030', '中国,广东省,广州市,越秀区', '113.266830', '23.128970', 'Yuexiu', '越秀', '0');
INSERT INTO `sys_area` VALUES ('440105', '440105', '海珠区', '440100', '区', '', '020', '510300', '中国,广东省,广州市,海珠区', '113.261970', '23.103790', 'Haizhu', '海珠', '0');
INSERT INTO `sys_area` VALUES ('440106', '440106', '天河区', '440100', '区', '', '020', '510665', '中国,广东省,广州市,天河区', '113.361120', '23.124670', 'Tianhe', '天河', '0');
INSERT INTO `sys_area` VALUES ('440111', '440111', '白云区', '440100', '区', '', '020', '510405', '中国,广东省,广州市,白云区', '113.273070', '23.157870', 'Baiyun', '白云', '0');
INSERT INTO `sys_area` VALUES ('440112', '440112', '黄埔区', '440100', '区', '', '020', '510700', '中国,广东省,广州市,黄埔区', '113.458950', '23.106420', 'Huangpu', '黄埔', '0');
INSERT INTO `sys_area` VALUES ('440113', '440113', '番禺区', '440100', '区', '', '020', '511400', '中国,广东省,广州市,番禺区', '113.383970', '22.935990', 'Panyu', '番禺', '0');
INSERT INTO `sys_area` VALUES ('440114', '440114', '花都区', '440100', '区', '', '020', '510800', '中国,广东省,广州市,花都区', '113.220330', '23.403580', 'Huadu', '花都', '0');
INSERT INTO `sys_area` VALUES ('440115', '440115', '南沙区', '440100', '区', '', '020', '511458', '中国,广东省,广州市,南沙区', '113.608450', '22.771440', 'Nansha', '南沙', '0');
INSERT INTO `sys_area` VALUES ('440117', '440117', '从化区', '440100', '区', '', '020', '510900', '中国,广东省,广州市,从化区', '113.587386', '23.545283', 'Conghua', '从化', '0');
INSERT INTO `sys_area` VALUES ('440118', '440118', '增城区', '440100', '区', '', '020', '511300', '中国,广东省,广州市,增城区', '113.829579', '23.290497', 'Zengcheng', '增城', '0');
INSERT INTO `sys_area` VALUES ('440200', '440200', '韶关市', '440000', '市', '', '0751', '512002', '中国,广东省,韶关市', '113.591544', '24.801322', 'Shaoguan', '韶关', '0');
INSERT INTO `sys_area` VALUES ('440203', '440203', '武江区', '440200', '区', '', '0751', '512026', '中国,广东省,韶关市,武江区', '113.587670', '24.792640', 'Wujiang', '武江', '0');
INSERT INTO `sys_area` VALUES ('440204', '440204', '浈江区', '440200', '区', '', '0751', '512023', '中国,广东省,韶关市,浈江区', '113.611090', '24.804380', 'Zhenjiang', '浈江', '0');
INSERT INTO `sys_area` VALUES ('440205', '440205', '曲江区', '440200', '区', '', '0751', '512101', '中国,广东省,韶关市,曲江区', '113.601650', '24.679150', 'Qujiang', '曲江', '0');
INSERT INTO `sys_area` VALUES ('440222', '440222', '始兴县', '440200', '区', '', '0751', '512500', '中国,广东省,韶关市,始兴县', '114.067990', '24.947590', 'Shixing', '始兴', '0');
INSERT INTO `sys_area` VALUES ('440224', '440224', '仁化县', '440200', '区', '', '0751', '512300', '中国,广东省,韶关市,仁化县', '113.747370', '25.087420', 'Renhua', '仁化', '0');
INSERT INTO `sys_area` VALUES ('440229', '440229', '翁源县', '440200', '区', '', '0751', '512600', '中国,广东省,韶关市,翁源县', '114.133850', '24.349500', 'Wengyuan', '翁源', '0');
INSERT INTO `sys_area` VALUES ('440232', '440232', '乳源瑶族自治县', '440200', '区', '', '0751', '512700', '中国,广东省,韶关市,乳源瑶族自治县', '113.277340', '24.778030', 'Ruyuan', '乳源', '0');
INSERT INTO `sys_area` VALUES ('440233', '440233', '新丰县', '440200', '区', '', '0751', '511100', '中国,广东省,韶关市,新丰县', '114.207880', '24.059240', 'Xinfeng', '新丰', '0');
INSERT INTO `sys_area` VALUES ('440281', '440281', '乐昌市', '440200', '区', '', '0751', '512200', '中国,广东省,韶关市,乐昌市', '113.356530', '25.127990', 'Lechang', '乐昌', '0');
INSERT INTO `sys_area` VALUES ('440282', '440282', '南雄市', '440200', '区', '', '0751', '512400', '中国,广东省,韶关市,南雄市', '114.309660', '25.117060', 'Nanxiong', '南雄', '0');
INSERT INTO `sys_area` VALUES ('440300', '440300', '深圳市', '440000', '市', '', '0755', '518035', '中国,广东省,深圳市', '114.085947', '22.547000', 'Shenzhen', '深圳', '0');
INSERT INTO `sys_area` VALUES ('440303', '440303', '罗湖区', '440300', '区', '', '0755', '518021', '中国,广东省,深圳市,罗湖区', '114.131160', '22.548360', 'Luohu', '罗湖', '0');
INSERT INTO `sys_area` VALUES ('440304', '440304', '福田区', '440300', '区', '', '0755', '518048', '中国,广东省,深圳市,福田区', '114.055710', '22.522450', 'Futian', '福田', '0');
INSERT INTO `sys_area` VALUES ('440305', '440305', '南山区', '440300', '区', '', '0755', '518051', '中国,广东省,深圳市,南山区', '113.930290', '22.532910', 'Nanshan', '南山', '0');
INSERT INTO `sys_area` VALUES ('440306', '440306', '宝安区', '440300', '区', '', '0755', '518101', '中国,广东省,深圳市,宝安区', '113.883110', '22.553710', 'Bao\'an', '宝安', '0');
INSERT INTO `sys_area` VALUES ('440307', '440307', '龙岗区', '440300', '区', '', '0755', '518172', '中国,广东省,深圳市,龙岗区', '114.247710', '22.719860', 'Longgang', '龙岗', '0');
INSERT INTO `sys_area` VALUES ('440308', '440308', '盐田区', '440300', '区', '', '0755', '518081', '中国,广东省,深圳市,盐田区', '114.237330', '22.557800', 'Yantian', '盐田', '0');
INSERT INTO `sys_area` VALUES ('440309', '440309', '光明新区', '440300', '区', '', '0755', '518100', '中国,广东省,深圳市,光明新区', '113.896026', '22.777292', 'Guangmingxinqu', '光明新区', '0');
INSERT INTO `sys_area` VALUES ('440310', '440310', '坪山新区', '440300', '区', '', '0755', '518000', '中国,广东省,深圳市,坪山新区', '114.346370', '22.690529', 'Pingshanxinqu', '坪山新区', '0');
INSERT INTO `sys_area` VALUES ('440311', '440311', '大鹏新区', '440300', '区', '', '0755', '518000', '中国,广东省,深圳市,大鹏新区', '114.479901', '22.587862', 'Dapengxinqu', '大鹏新区', '0');
INSERT INTO `sys_area` VALUES ('440312', '440312', '龙华新区', '440300', '区', '', '0755', '518100', '中国,广东省,深圳市,龙华新区', '114.036585', '22.686950', 'Longhuaxinqu', '龙华新区', '0');
INSERT INTO `sys_area` VALUES ('440400', '440400', '珠海市', '440000', '市', '', '0756', '519000', '中国,广东省,珠海市', '113.552724', '22.255899', 'Zhuhai', '珠海', '0');
INSERT INTO `sys_area` VALUES ('440402', '440402', '香洲区', '440400', '区', '', '0756', '519000', '中国,广东省,珠海市,香洲区', '113.543500', '22.266540', 'Xiangzhou', '香洲', '0');
INSERT INTO `sys_area` VALUES ('440403', '440403', '斗门区', '440400', '区', '', '0756', '519110', '中国,广东省,珠海市,斗门区', '113.296440', '22.208980', 'Doumen', '斗门', '0');
INSERT INTO `sys_area` VALUES ('440404', '440404', '金湾区', '440400', '区', '', '0756', '519040', '中国,广东省,珠海市,金湾区', '113.363610', '22.146910', 'Jinwan', '金湾', '0');
INSERT INTO `sys_area` VALUES ('440500', '440500', '汕头市', '440000', '市', '', '0754', '515041', '中国,广东省,汕头市', '116.708463', '23.371020', 'Shantou', '汕头', '0');
INSERT INTO `sys_area` VALUES ('440507', '440507', '龙湖区', '440500', '区', '', '0754', '515041', '中国,广东省,汕头市,龙湖区', '116.716410', '23.371660', 'Longhu', '龙湖', '0');
INSERT INTO `sys_area` VALUES ('440511', '440511', '金平区', '440500', '区', '', '0754', '515041', '中国,广东省,汕头市,金平区', '116.703640', '23.366370', 'Jinping', '金平', '0');
INSERT INTO `sys_area` VALUES ('440512', '440512', '濠江区', '440500', '区', '', '0754', '515071', '中国,广东省,汕头市,濠江区', '116.726590', '23.285880', 'Haojiang', '濠江', '0');
INSERT INTO `sys_area` VALUES ('440513', '440513', '潮阳区', '440500', '区', '', '0754', '515100', '中国,广东省,汕头市,潮阳区', '116.601500', '23.264850', 'Chaoyang', '潮阳', '0');
INSERT INTO `sys_area` VALUES ('440514', '440514', '潮南区', '440500', '区', '', '0754', '515144', '中国,广东省,汕头市,潮南区', '116.431880', '23.250000', 'Chaonan', '潮南', '0');
INSERT INTO `sys_area` VALUES ('440515', '440515', '澄海区', '440500', '区', '', '0754', '515800', '中国,广东省,汕头市,澄海区', '116.755890', '23.467280', 'Chenghai', '澄海', '0');
INSERT INTO `sys_area` VALUES ('440523', '440523', '南澳县', '440500', '区', '', '0754', '515900', '中国,广东省,汕头市,南澳县', '117.018890', '23.422300', 'Nanao', '南澳', '0');
INSERT INTO `sys_area` VALUES ('440600', '440600', '佛山市', '440000', '市', '', '0757', '528000', '中国,广东省,佛山市', '113.122717', '23.028762', 'Foshan', '佛山', '0');
INSERT INTO `sys_area` VALUES ('440604', '440604', '禅城区', '440600', '区', '', '0757', '528000', '中国,广东省,佛山市,禅城区', '113.122800', '23.008420', 'Chancheng', '禅城', '0');
INSERT INTO `sys_area` VALUES ('440605', '440605', '南海区', '440600', '区', '', '0757', '528251', '中国,广东省,佛山市,南海区', '113.142990', '23.028770', 'Nanhai', '南海', '0');
INSERT INTO `sys_area` VALUES ('440606', '440606', '顺德区', '440600', '区', '', '0757', '528300', '中国,广东省,佛山市,顺德区', '113.293940', '22.804520', 'Shunde', '顺德', '0');
INSERT INTO `sys_area` VALUES ('440607', '440607', '三水区', '440600', '区', '', '0757', '528133', '中国,广东省,佛山市,三水区', '112.897030', '23.155640', 'Sanshui', '三水', '0');
INSERT INTO `sys_area` VALUES ('440608', '440608', '高明区', '440600', '区', '', '0757', '528500', '中国,广东省,佛山市,高明区', '112.892540', '22.900220', 'Gaoming', '高明', '0');
INSERT INTO `sys_area` VALUES ('440700', '440700', '江门市', '440000', '市', '', '0750', '529000', '中国,广东省,江门市', '113.094942', '22.590431', 'Jiangmen', '江门', '0');
INSERT INTO `sys_area` VALUES ('440703', '440703', '蓬江区', '440700', '区', '', '0750', '529000', '中国,广东省,江门市,蓬江区', '113.078490', '22.595150', 'Pengjiang', '蓬江', '0');
INSERT INTO `sys_area` VALUES ('440704', '440704', '江海区', '440700', '区', '', '0750', '529040', '中国,广东省,江门市,江海区', '113.110990', '22.560240', 'Jianghai', '江海', '0');
INSERT INTO `sys_area` VALUES ('440705', '440705', '新会区', '440700', '区', '', '0750', '529100', '中国,广东省,江门市,新会区', '113.032250', '22.458760', 'Xinhui', '新会', '0');
INSERT INTO `sys_area` VALUES ('440781', '440781', '台山市', '440700', '区', '', '0750', '529200', '中国,广东省,江门市,台山市', '112.793820', '22.251500', 'Taishan', '台山', '0');
INSERT INTO `sys_area` VALUES ('440783', '440783', '开平市', '440700', '区', '', '0750', '529337', '中国,广东省,江门市,开平市', '112.698420', '22.376220', 'Kaiping', '开平', '0');
INSERT INTO `sys_area` VALUES ('440784', '440784', '鹤山市', '440700', '区', '', '0750', '529700', '中国,广东省,江门市,鹤山市', '112.964290', '22.765230', 'Heshan', '鹤山', '0');
INSERT INTO `sys_area` VALUES ('440785', '440785', '恩平市', '440700', '区', '', '0750', '529400', '中国,广东省,江门市,恩平市', '112.304960', '22.182880', 'Enping', '恩平', '0');
INSERT INTO `sys_area` VALUES ('440800', '440800', '湛江市', '440000', '市', '', '0759', '524047', '中国,广东省,湛江市', '110.405529', '21.195338', 'Zhanjiang', '湛江', '0');
INSERT INTO `sys_area` VALUES ('440802', '440802', '赤坎区', '440800', '区', '', '0759', '524033', '中国,广东省,湛江市,赤坎区', '110.365920', '21.266060', 'Chikan', '赤坎', '0');
INSERT INTO `sys_area` VALUES ('440803', '440803', '霞山区', '440800', '区', '', '0759', '524011', '中国,广东省,湛江市,霞山区', '110.398220', '21.191810', 'Xiashan', '霞山', '0');
INSERT INTO `sys_area` VALUES ('440804', '440804', '坡头区', '440800', '区', '', '0759', '524057', '中国,广东省,湛江市,坡头区', '110.455330', '21.244720', 'Potou', '坡头', '0');
INSERT INTO `sys_area` VALUES ('440811', '440811', '麻章区', '440800', '区', '', '0759', '524094', '中国,广东省,湛江市,麻章区', '110.334200', '21.263330', 'Mazhang', '麻章', '0');
INSERT INTO `sys_area` VALUES ('440823', '440823', '遂溪县', '440800', '区', '', '0759', '524300', '中国,广东省,湛江市,遂溪县', '110.250030', '21.377210', 'Suixi', '遂溪', '0');
INSERT INTO `sys_area` VALUES ('440825', '440825', '徐闻县', '440800', '区', '', '0759', '524100', '中国,广东省,湛江市,徐闻县', '110.173790', '20.328120', 'Xuwen', '徐闻', '0');
INSERT INTO `sys_area` VALUES ('440881', '440881', '廉江市', '440800', '区', '', '0759', '524400', '中国,广东省,湛江市,廉江市', '110.284420', '21.609170', 'Lianjiang', '廉江', '0');
INSERT INTO `sys_area` VALUES ('440882', '440882', '雷州市', '440800', '区', '', '0759', '524200', '中国,广东省,湛江市,雷州市', '110.100920', '20.914280', 'Leizhou', '雷州', '0');
INSERT INTO `sys_area` VALUES ('440883', '440883', '吴川市', '440800', '区', '', '0759', '524500', '中国,广东省,湛江市,吴川市', '110.777030', '21.445840', 'Wuchuan', '吴川', '0');
INSERT INTO `sys_area` VALUES ('440900', '440900', '茂名市', '440000', '市', '', '0668', '525000', '中国,广东省,茂名市', '110.919229', '21.659751', 'Maoming', '茂名', '0');
INSERT INTO `sys_area` VALUES ('440902', '440902', '茂南区', '440900', '区', '', '0668', '525000', '中国,广东省,茂名市,茂南区', '110.918700', '21.641030', 'Maonan', '茂南', '0');
INSERT INTO `sys_area` VALUES ('440904', '440904', '电白区', '440900', '区', '', '0668', '525400', '中国,广东省,茂名市,电白区', '111.007264', '21.507219', 'Dianbai', '电白', '0');
INSERT INTO `sys_area` VALUES ('440981', '440981', '高州市', '440900', '区', '', '0668', '525200', '中国,广东省,茂名市,高州市', '110.855190', '21.920570', 'Gaozhou', '高州', '0');
INSERT INTO `sys_area` VALUES ('440982', '440982', '化州市', '440900', '区', '', '0668', '525100', '中国,广东省,茂名市,化州市', '110.639490', '21.663940', 'Huazhou', '化州', '0');
INSERT INTO `sys_area` VALUES ('440983', '440983', '信宜市', '440900', '区', '', '0668', '525300', '中国,广东省,茂名市,信宜市', '110.946470', '22.353510', 'Xinyi', '信宜', '0');
INSERT INTO `sys_area` VALUES ('441200', '441200', '肇庆市', '440000', '市', '', '0758', '526040', '中国,广东省,肇庆市', '112.472529', '23.051546', 'Zhaoqing', '肇庆', '0');
INSERT INTO `sys_area` VALUES ('441202', '441202', '端州区', '441200', '区', '', '0758', '526060', '中国,广东省,肇庆市,端州区', '112.484950', '23.051900', 'Duanzhou', '端州', '0');
INSERT INTO `sys_area` VALUES ('441203', '441203', '鼎湖区', '441200', '区', '', '0758', '526070', '中国,广东省,肇庆市,鼎湖区', '112.566430', '23.158460', 'Dinghu', '鼎湖', '0');
INSERT INTO `sys_area` VALUES ('441223', '441223', '广宁县', '441200', '区', '', '0758', '526300', '中国,广东省,肇庆市,广宁县', '112.440640', '23.634600', 'Guangning', '广宁', '0');
INSERT INTO `sys_area` VALUES ('441224', '441224', '怀集县', '441200', '区', '', '0758', '526400', '中国,广东省,肇庆市,怀集县', '112.183960', '23.909180', 'Huaiji', '怀集', '0');
INSERT INTO `sys_area` VALUES ('441225', '441225', '封开县', '441200', '区', '', '0758', '526500', '中国,广东省,肇庆市,封开县', '111.503320', '23.435710', 'Fengkai', '封开', '0');
INSERT INTO `sys_area` VALUES ('441226', '441226', '德庆县', '441200', '区', '', '0758', '526600', '中国,广东省,肇庆市,德庆县', '111.785550', '23.143710', 'Deqing', '德庆', '0');
INSERT INTO `sys_area` VALUES ('441283', '441283', '高要市', '441200', '区', '', '0758', '526100', '中国,广东省,肇庆市,高要市', '112.458340', '23.025770', 'Gaoyao', '高要', '0');
INSERT INTO `sys_area` VALUES ('441284', '441284', '四会市', '441200', '区', '', '0758', '526200', '中国,广东省,肇庆市,四会市', '112.734160', '23.326860', 'Sihui', '四会', '0');
INSERT INTO `sys_area` VALUES ('441300', '441300', '惠州市', '440000', '市', '', '0752', '516000', '中国,广东省,惠州市', '114.412599', '23.079404', 'Huizhou', '惠州', '0');
INSERT INTO `sys_area` VALUES ('441302', '441302', '惠城区', '441300', '区', '', '0752', '516008', '中国,广东省,惠州市,惠城区', '114.382800', '23.083770', 'Huicheng', '惠城', '0');
INSERT INTO `sys_area` VALUES ('441303', '441303', '惠阳区', '441300', '区', '', '0752', '516211', '中国,广东省,惠州市,惠阳区', '114.456390', '22.788450', 'Huiyang', '惠阳', '0');
INSERT INTO `sys_area` VALUES ('441322', '441322', '博罗县', '441300', '区', '', '0752', '516100', '中国,广东省,惠州市,博罗县', '114.289640', '23.173070', 'Boluo', '博罗', '0');
INSERT INTO `sys_area` VALUES ('441323', '441323', '惠东县', '441300', '区', '', '0752', '516300', '中国,广东省,惠州市,惠东县', '114.720090', '22.984840', 'Huidong', '惠东', '0');
INSERT INTO `sys_area` VALUES ('441324', '441324', '龙门县', '441300', '区', '', '0752', '516800', '中国,广东省,惠州市,龙门县', '114.254790', '23.727580', 'Longmen', '龙门', '0');
INSERT INTO `sys_area` VALUES ('441400', '441400', '梅州市', '440000', '市', '', '0753', '514021', '中国,广东省,梅州市', '116.117582', '24.299112', 'Meizhou', '梅州', '0');
INSERT INTO `sys_area` VALUES ('441402', '441402', '梅江区', '441400', '区', '', '0753', '514000', '中国,广东省,梅州市,梅江区', '116.116630', '24.310620', 'Meijiang', '梅江', '0');
INSERT INTO `sys_area` VALUES ('441403', '441403', '梅县区', '441400', '区', '', '0753', '514787', '中国,广东省,梅州市,梅县区', '116.097753', '24.286739', 'Meixian', '梅县', '0');
INSERT INTO `sys_area` VALUES ('441422', '441422', '大埔县', '441400', '区', '', '0753', '514200', '中国,广东省,梅州市,大埔县', '116.696620', '24.353250', 'Dabu', '大埔', '0');
INSERT INTO `sys_area` VALUES ('441423', '441423', '丰顺县', '441400', '区', '', '0753', '514300', '中国,广东省,梅州市,丰顺县', '116.182190', '23.740940', 'Fengshun', '丰顺', '0');
INSERT INTO `sys_area` VALUES ('441424', '441424', '五华县', '441400', '区', '', '0753', '514400', '中国,广东省,梅州市,五华县', '115.778930', '23.924170', 'Wuhua', '五华', '0');
INSERT INTO `sys_area` VALUES ('441426', '441426', '平远县', '441400', '区', '', '0753', '514600', '中国,广东省,梅州市,平远县', '115.895560', '24.571160', 'Pingyuan', '平远', '0');
INSERT INTO `sys_area` VALUES ('441427', '441427', '蕉岭县', '441400', '区', '', '0753', '514100', '中国,广东省,梅州市,蕉岭县', '116.170890', '24.657320', 'Jiaoling', '蕉岭', '0');
INSERT INTO `sys_area` VALUES ('441481', '441481', '兴宁市', '441400', '区', '', '0753', '514500', '中国,广东省,梅州市,兴宁市', '115.731410', '24.140010', 'Xingning', '兴宁', '0');
INSERT INTO `sys_area` VALUES ('441500', '441500', '汕尾市', '440000', '市', '', '0660', '516600', '中国,广东省,汕尾市', '115.364238', '22.774485', 'Shanwei', '汕尾', '0');
INSERT INTO `sys_area` VALUES ('441502', '441502', '城区', '441500', '区', '', '0660', '516600', '中国,广东省,汕尾市,城区', '115.365030', '22.778900', 'Chengqu', '城区', '0');
INSERT INTO `sys_area` VALUES ('441521', '441521', '海丰县', '441500', '区', '', '0660', '516400', '中国,广东省,汕尾市,海丰县', '115.323360', '22.966530', 'Haifeng', '海丰', '0');
INSERT INTO `sys_area` VALUES ('441523', '441523', '陆河县', '441500', '区', '', '0660', '516700', '中国,广东省,汕尾市,陆河县', '115.655970', '23.303650', 'Luhe', '陆河', '0');
INSERT INTO `sys_area` VALUES ('441581', '441581', '陆丰市', '441500', '区', '', '0660', '516500', '中国,广东省,汕尾市,陆丰市', '115.648130', '22.943350', 'Lufeng', '陆丰', '0');
INSERT INTO `sys_area` VALUES ('441600', '441600', '河源市', '440000', '市', '', '0762', '517000', '中国,广东省,河源市', '114.697802', '23.746266', 'Heyuan', '河源', '0');
INSERT INTO `sys_area` VALUES ('441602', '441602', '源城区', '441600', '区', '', '0762', '517000', '中国,广东省,河源市,源城区', '114.702420', '23.734100', 'Yuancheng', '源城', '0');
INSERT INTO `sys_area` VALUES ('441621', '441621', '紫金县', '441600', '区', '', '0762', '517400', '中国,广东省,河源市,紫金县', '115.183650', '23.638670', 'Zijin', '紫金', '0');
INSERT INTO `sys_area` VALUES ('441622', '441622', '龙川县', '441600', '区', '', '0762', '517300', '中国,广东省,河源市,龙川县', '115.260250', '24.101420', 'Longchuan', '龙川', '0');
INSERT INTO `sys_area` VALUES ('441623', '441623', '连平县', '441600', '区', '', '0762', '517100', '中国,广东省,河源市,连平县', '114.490260', '24.371560', 'Lianping', '连平', '0');
INSERT INTO `sys_area` VALUES ('441624', '441624', '和平县', '441600', '区', '', '0762', '517200', '中国,广东省,河源市,和平县', '114.938410', '24.443190', 'Heping', '和平', '0');
INSERT INTO `sys_area` VALUES ('441625', '441625', '东源县', '441600', '区', '', '0762', '517583', '中国,广东省,河源市,东源县', '114.746330', '23.788350', 'Dongyuan', '东源', '0');
INSERT INTO `sys_area` VALUES ('441700', '441700', '阳江市', '440000', '市', '', '0662', '529500', '中国,广东省,阳江市', '111.975107', '21.859222', 'Yangjiang', '阳江', '0');
INSERT INTO `sys_area` VALUES ('441702', '441702', '江城区', '441700', '区', '', '0662', '529500', '中国,广东省,阳江市,江城区', '111.954880', '21.861930', 'Jiangcheng', '江城', '0');
INSERT INTO `sys_area` VALUES ('441704', '441704', '阳东区', '441700', '区', '', '0662', '529900', '中国,广东省,阳江市,阳东区', '112.014670', '21.873980', 'Yangdong', '阳东', '0');
INSERT INTO `sys_area` VALUES ('441721', '441721', '阳西县', '441700', '区', '', '0662', '529800', '中国,广东省,阳江市,阳西县', '111.617850', '21.752340', 'Yangxi', '阳西', '0');
INSERT INTO `sys_area` VALUES ('441781', '441781', '阳春市', '441700', '区', '', '0662', '529600', '中国,广东省,阳江市,阳春市', '111.788540', '22.172320', 'Yangchun', '阳春', '0');
INSERT INTO `sys_area` VALUES ('441800', '441800', '清远市', '440000', '市', '', '0763', '511500', '中国,广东省,清远市', '113.036779', '23.704188', 'Qingyuan', '清远', '0');
INSERT INTO `sys_area` VALUES ('441802', '441802', '清城区', '441800', '区', '', '0763', '511515', '中国,广东省,清远市,清城区', '113.062650', '23.697840', 'Qingcheng', '清城', '0');
INSERT INTO `sys_area` VALUES ('441803', '441803', '清新区', '441800', '区', '', '0763', '511810', '中国,广东省,清远市,清新区', '113.015203', '23.736949', 'Qingxin', '清新', '0');
INSERT INTO `sys_area` VALUES ('441821', '441821', '佛冈县', '441800', '区', '', '0763', '511600', '中国,广东省,清远市,佛冈县', '113.532860', '23.872310', 'Fogang', '佛冈', '0');
INSERT INTO `sys_area` VALUES ('441823', '441823', '阳山县', '441800', '区', '', '0763', '513100', '中国,广东省,清远市,阳山县', '112.641290', '24.465160', 'Yangshan', '阳山', '0');
INSERT INTO `sys_area` VALUES ('441825', '441825', '连山壮族瑶族自治县', '441800', '区', '', '0763', '513200', '中国,广东省,清远市,连山壮族瑶族自治县', '112.080200', '24.568070', 'Lianshan', '连山', '0');
INSERT INTO `sys_area` VALUES ('441826', '441826', '连南瑶族自治县', '441800', '区', '', '0763', '513300', '中国,广东省,清远市,连南瑶族自治县', '112.288420', '24.717260', 'Liannan', '连南', '0');
INSERT INTO `sys_area` VALUES ('441881', '441881', '英德市', '441800', '区', '', '0763', '513000', '中国,广东省,清远市,英德市', '113.415000', '24.185710', 'Yingde', '英德', '0');
INSERT INTO `sys_area` VALUES ('441882', '441882', '连州市', '441800', '区', '', '0763', '513400', '中国,广东省,清远市,连州市', '112.381530', '24.779130', 'Lianzhou', '连州', '0');
INSERT INTO `sys_area` VALUES ('441900', '441900', '东莞市', '440000', '市', '', '0769', '523888', '中国,广东省,东莞市', '113.760234', '23.048884', 'Dongguan', '东莞', '0');
INSERT INTO `sys_area` VALUES ('441901', '441901', '莞城区', '441900', '区', '', '0769', '523128', '中国,广东省,东莞市,莞城区', '113.751043', '23.053412', 'Guancheng', '莞城', '0');
INSERT INTO `sys_area` VALUES ('441902', '441902', '南城区', '441900', '区', '', '0769', '523617', '中国,广东省,东莞市,南城区', '113.752125', '23.020180', 'Nancheng', '南城', '0');
INSERT INTO `sys_area` VALUES ('441904', '441904', '万江区', '441900', '区', '', '0769', '523039', '中国,广东省,东莞市,万江区', '113.739053', '23.043842', 'Wanjiang', '万江', '0');
INSERT INTO `sys_area` VALUES ('441905', '441905', '石碣镇', '441900', '区', '', '0769', '523290', '中国,广东省,东莞市,石碣镇', '113.802170', '23.098990', 'Shijie', '石碣', '0');
INSERT INTO `sys_area` VALUES ('441906', '441906', '石龙镇', '441900', '区', '', '0769', '523326', '中国,广东省,东莞市,石龙镇', '113.876381', '23.107444', 'Shilong', '石龙', '0');
INSERT INTO `sys_area` VALUES ('441907', '441907', '茶山镇', '441900', '区', '', '0769', '523380', '中国,广东省,东莞市,茶山镇', '113.883526', '23.062375', 'Chashan', '茶山', '0');
INSERT INTO `sys_area` VALUES ('441908', '441908', '石排镇', '441900', '区', '', '0769', '523346', '中国,广东省,东莞市,石排镇', '113.919859', '23.086300', 'Shipai', '石排', '0');
INSERT INTO `sys_area` VALUES ('441909', '441909', '企石镇', '441900', '区', '', '0769', '523507', '中国,广东省,东莞市,企石镇', '114.013233', '23.066044', 'Qishi', '企石', '0');
INSERT INTO `sys_area` VALUES ('441910', '441910', '横沥镇', '441900', '区', '', '0769', '523471', '中国,广东省,东莞市,横沥镇', '113.957436', '23.025732', 'Hengli', '横沥', '0');
INSERT INTO `sys_area` VALUES ('441911', '441911', '桥头镇', '441900', '区', '', '0769', '523520', '中国,广东省,东莞市,桥头镇', '114.013850', '22.939727', 'Qiaotou', '桥头', '0');
INSERT INTO `sys_area` VALUES ('441912', '441912', '谢岗镇', '441900', '区', '', '0769', '523592', '中国,广东省,东莞市,谢岗镇', '114.141396', '22.959664', 'Xiegang', '谢岗', '0');
INSERT INTO `sys_area` VALUES ('441913', '441913', '东坑镇', '441900', '区', '', '0769', '523451', '中国,广东省,东莞市,东坑镇', '113.939835', '22.992804', 'Dongkeng', '东坑', '0');
INSERT INTO `sys_area` VALUES ('441914', '441914', '常平镇', '441900', '区', '', '0769', '523560', '中国,广东省,东莞市,常平镇', '114.029627', '23.016116', 'Changping', '常平', '0');
INSERT INTO `sys_area` VALUES ('441915', '441915', '寮步镇', '441900', '区', '', '0769', '523411', '中国,广东省,东莞市,寮步镇', '113.884745', '22.991738', 'Liaobu', '寮步', '0');
INSERT INTO `sys_area` VALUES ('441916', '441916', '大朗镇', '441900', '区', '', '0769', '523770', '中国,广东省,东莞市,大朗镇', '113.927100', '22.965748', 'Dalang', '大朗', '0');
INSERT INTO `sys_area` VALUES ('441917', '441917', '麻涌镇', '441900', '区', '', '0769', '523143', '中国,广东省,东莞市,麻涌镇', '113.546177', '23.045315', 'Machong', '麻涌', '0');
INSERT INTO `sys_area` VALUES ('441918', '441918', '中堂镇', '441900', '区', '', '0769', '523233', '中国,广东省,东莞市,中堂镇', '113.654422', '23.090164', 'Zhongtang', '中堂', '0');
INSERT INTO `sys_area` VALUES ('441919', '441919', '高埗镇', '441900', '区', '', '0769', '523282', '中国,广东省,东莞市,高埗镇', '113.735917', '23.068415', 'Gaobu', '高埗', '0');
INSERT INTO `sys_area` VALUES ('441920', '441920', '樟木头镇', '441900', '区', '', '0769', '523619', '中国,广东省,东莞市,樟木头镇', '114.066298', '22.956682', 'Zhangmutou', '樟木头', '0');
INSERT INTO `sys_area` VALUES ('441921', '441921', '大岭山镇', '441900', '区', '', '0769', '523835', '中国,广东省,东莞市,大岭山镇', '113.782955', '22.885366', 'Dalingshan', '大岭山', '0');
INSERT INTO `sys_area` VALUES ('441922', '441922', '望牛墩镇', '441900', '区', '', '0769', '523203', '中国,广东省,东莞市,望牛墩镇', '113.658847', '23.055018', 'Wangniudun', '望牛墩', '0');
INSERT INTO `sys_area` VALUES ('441923', '441923', '黄江镇', '441900', '区', '', '0769', '523755', '中国,广东省,东莞市,黄江镇', '113.992635', '22.877536', 'Huangjiang', '黄江', '0');
INSERT INTO `sys_area` VALUES ('441924', '441924', '洪梅镇', '441900', '区', '', '0769', '523163', '中国,广东省,东莞市,洪梅镇', '113.613081', '22.992675', 'Hongmei', '洪梅', '0');
INSERT INTO `sys_area` VALUES ('441925', '441925', '清溪镇', '441900', '区', '', '0769', '523660', '中国,广东省,东莞市,清溪镇', '114.155796', '22.844456', 'Qingxi', '清溪', '0');
INSERT INTO `sys_area` VALUES ('441926', '441926', '沙田镇', '441900', '区', '', '0769', '523988', '中国,广东省,东莞市,沙田镇', '113.760234', '23.048884', 'Shatian', '沙田', '0');
INSERT INTO `sys_area` VALUES ('441927', '441927', '道滘镇', '441900', '区', '', '0769', '523171', '中国,广东省,东莞市,道滘镇', '113.760234', '23.048884', 'Daojiao', '道滘', '0');
INSERT INTO `sys_area` VALUES ('441928', '441928', '塘厦镇', '441900', '区', '', '0769', '523713', '中国,广东省,东莞市,塘厦镇', '114.107650', '22.822862', 'Tangxia', '塘厦', '0');
INSERT INTO `sys_area` VALUES ('441929', '441929', '虎门镇', '441900', '区', '', '0769', '523932', '中国,广东省,东莞市,虎门镇', '113.711180', '22.826150', 'Humen', '虎门', '0');
INSERT INTO `sys_area` VALUES ('441930', '441930', '厚街镇', '441900', '区', '', '0769', '523960', '中国,广东省,东莞市,厚街镇', '113.673010', '22.940815', 'Houjie', '厚街', '0');
INSERT INTO `sys_area` VALUES ('441931', '441931', '凤岗镇', '441900', '区', '', '0769', '523690', '中国,广东省,东莞市,凤岗镇', '114.141194', '22.744598', 'Fenggang', '凤岗', '0');
INSERT INTO `sys_area` VALUES ('441932', '441932', '长安镇', '441900', '区', '', '0769', '523850', '中国,广东省,东莞市,长安镇', '113.803939', '22.816644', 'Chang\'an', '长安', '0');
INSERT INTO `sys_area` VALUES ('442000', '442000', '中山市', '440000', '市', '', '0760', '528403', '中国,广东省,中山市', '113.382391', '22.521113', 'Zhongshan', '中山', '0');
INSERT INTO `sys_area` VALUES ('442001', '442001', '石岐区', '442000', '区', '', '0760', '528400', '中国,广东省,中山市,石岐区', '113.378835', '22.525220', 'Shiqi', '石岐', '0');
INSERT INTO `sys_area` VALUES ('442004', '442004', '南区', '442000', '区', '', '0760', '528400', '中国,广东省,中山市,南区', '113.355896', '22.486568', 'Nanqu', '南区', '0');
INSERT INTO `sys_area` VALUES ('442005', '442005', '五桂山区', '442000', '区', '', '0760', '528458', '中国,广东省,中山市,五桂山区', '113.410790', '22.519680', 'Wuguishan', '五桂山', '0');
INSERT INTO `sys_area` VALUES ('442006', '442006', '火炬开发区', '442000', '区', '', '0760', '528437', '中国,广东省,中山市,火炬开发区', '113.480523', '22.566082', 'Huoju', '火炬', '0');
INSERT INTO `sys_area` VALUES ('442007', '442007', '黄圃镇', '442000', '区', '', '0760', '528429', '中国,广东省,中山市,黄圃镇', '113.342359', '22.715116', 'Huangpu', '黄圃', '0');
INSERT INTO `sys_area` VALUES ('442008', '442008', '南头镇', '442000', '区', '', '0760', '528421', '中国,广东省,中山市,南头镇', '113.296358', '22.713907', 'Nantou', '南头', '0');
INSERT INTO `sys_area` VALUES ('442009', '442009', '东凤镇', '442000', '区', '', '0760', '528425', '中国,广东省,中山市,东凤镇', '113.261140', '22.687750', 'Dongfeng', '东凤', '0');
INSERT INTO `sys_area` VALUES ('442010', '442010', '阜沙镇', '442000', '区', '', '0760', '528434', '中国,广东省,中山市,阜沙镇', '113.353024', '22.666364', 'Fusha', '阜沙', '0');
INSERT INTO `sys_area` VALUES ('442011', '442011', '小榄镇', '442000', '区', '', '0760', '528415', '中国,广东省,中山市,小榄镇', '113.244235', '22.666951', 'Xiaolan', '小榄', '0');
INSERT INTO `sys_area` VALUES ('442012', '442012', '东升镇', '442000', '区', '', '0760', '528400', '中国,广东省,中山市,东升镇', '113.296298', '22.614003', 'Dongsheng', '东升', '0');
INSERT INTO `sys_area` VALUES ('442013', '442013', '古镇镇', '442000', '区', '', '0760', '528422', '中国,广东省,中山市,古镇镇', '113.179745', '22.611019', 'Guzhen', '古镇', '0');
INSERT INTO `sys_area` VALUES ('442014', '442014', '横栏镇', '442000', '区', '', '0760', '528478', '中国,广东省,中山市,横栏镇', '113.265845', '22.523202', 'Henglan', '横栏', '0');
INSERT INTO `sys_area` VALUES ('442015', '442015', '三角镇', '442000', '区', '', '0760', '528422', '中国,广东省,中山市,三角镇', '113.423624', '22.677033', 'Sanjiao', '三角', '0');
INSERT INTO `sys_area` VALUES ('442016', '442016', '民众镇', '442000', '区', '', '0760', '528441', '中国,广东省,中山市,民众镇', '113.486025', '22.623468', 'Minzhong', '民众', '0');
INSERT INTO `sys_area` VALUES ('442017', '442017', '南朗镇', '442000', '区', '', '0760', '528454', '中国,广东省,中山市,南朗镇', '113.533939', '22.492378', 'Nanlang', '南朗', '0');
INSERT INTO `sys_area` VALUES ('442018', '442018', '港口镇', '442000', '区', '', '0760', '528447', '中国,广东省,中山市,港口镇', '113.382391', '22.521113', 'Gangkou', '港口', '0');
INSERT INTO `sys_area` VALUES ('442019', '442019', '大涌镇', '442000', '区', '', '0760', '528476', '中国,广东省,中山市,大涌镇', '113.291708', '22.467712', 'Dayong', '大涌', '0');
INSERT INTO `sys_area` VALUES ('442020', '442020', '沙溪镇', '442000', '区', '', '0760', '528471', '中国,广东省,中山市,沙溪镇', '113.328369', '22.526325', 'Shaxi', '沙溪', '0');
INSERT INTO `sys_area` VALUES ('442021', '442021', '三乡镇', '442000', '区', '', '0760', '528463', '中国,广东省,中山市,三乡镇', '113.433400', '22.352494', 'Sanxiang', '三乡', '0');
INSERT INTO `sys_area` VALUES ('442022', '442022', '板芙镇', '442000', '区', '', '0760', '528459', '中国,广东省,中山市,板芙镇', '113.320346', '22.415674', 'Banfu', '板芙', '0');
INSERT INTO `sys_area` VALUES ('442023', '442023', '神湾镇', '442000', '区', '', '0760', '528462', '中国,广东省,中山市,神湾镇', '113.359387', '22.312476', 'Shenwan', '神湾', '0');
INSERT INTO `sys_area` VALUES ('442024', '442024', '坦洲镇', '442000', '区', '', '0760', '528467', '中国,广东省,中山市,坦洲镇', '113.485677', '22.261269', 'Tanzhou', '坦洲', '0');
INSERT INTO `sys_area` VALUES ('445100', '445100', '潮州市', '440000', '市', '', '0768', '521000', '中国,广东省,潮州市', '116.632301', '23.661701', 'Chaozhou', '潮州', '0');
INSERT INTO `sys_area` VALUES ('445102', '445102', '湘桥区', '445100', '区', '', '0768', '521000', '中国,广东省,潮州市,湘桥区', '116.628050', '23.674510', 'Xiangqiao', '湘桥', '0');
INSERT INTO `sys_area` VALUES ('445103', '445103', '潮安区', '445100', '区', '', '0768', '515638', '中国,广东省,潮州市,潮安区', '116.592895', '23.643656', 'Chao\'an', '潮安', '0');
INSERT INTO `sys_area` VALUES ('445122', '445122', '饶平县', '445100', '区', '', '0768', '515700', '中国,广东省,潮州市,饶平县', '117.006920', '23.669940', 'Raoping', '饶平', '0');
INSERT INTO `sys_area` VALUES ('445200', '445200', '揭阳市', '440000', '市', '', '0633', '522000', '中国,广东省,揭阳市', '116.355733', '23.543778', 'Jieyang', '揭阳', '0');
INSERT INTO `sys_area` VALUES ('445202', '445202', '榕城区', '445200', '区', '', '0633', '522000', '中国,广东省,揭阳市,榕城区', '116.367100', '23.525080', 'Rongcheng', '榕城', '0');
INSERT INTO `sys_area` VALUES ('445203', '445203', '揭东区', '445200', '区', '', '0633', '515500', '中国,广东省,揭阳市,揭东区', '116.412947', '23.569887', 'Jiedong', '揭东', '0');
INSERT INTO `sys_area` VALUES ('445222', '445222', '揭西县', '445200', '区', '', '0633', '515400', '中国,广东省,揭阳市,揭西县', '115.838830', '23.427140', 'Jiexi', '揭西', '0');
INSERT INTO `sys_area` VALUES ('445224', '445224', '惠来县', '445200', '区', '', '0633', '515200', '中国,广东省,揭阳市,惠来县', '116.295990', '23.032890', 'Huilai', '惠来', '0');
INSERT INTO `sys_area` VALUES ('445281', '445281', '普宁市', '445200', '区', '', '0633', '515300', '中国,广东省,揭阳市,普宁市', '116.165640', '23.297320', 'Puning', '普宁', '0');
INSERT INTO `sys_area` VALUES ('445300', '445300', '云浮市', '440000', '市', '', '0766', '527300', '中国,广东省,云浮市', '112.044439', '22.929801', 'Yunfu', '云浮', '0');
INSERT INTO `sys_area` VALUES ('445302', '445302', '云城区', '445300', '区', '', '0766', '527300', '中国,广东省,云浮市,云城区', '112.039080', '22.929960', 'Yuncheng', '云城', '0');
INSERT INTO `sys_area` VALUES ('445303', '445303', '云安区', '445300', '区', '', '0766', '527500', '中国,广东省,云浮市,云安区', '112.009360', '23.077790', 'Yun\'an', '云安', '0');
INSERT INTO `sys_area` VALUES ('445321', '445321', '新兴县', '445300', '区', '', '0766', '527400', '中国,广东省,云浮市,新兴县', '112.230190', '22.697340', 'Xinxing', '新兴', '0');
INSERT INTO `sys_area` VALUES ('445322', '445322', '郁南县', '445300', '区', '', '0766', '527100', '中国,广东省,云浮市,郁南县', '111.533870', '23.233070', 'Yunan', '郁南', '0');
INSERT INTO `sys_area` VALUES ('445381', '445381', '罗定市', '445300', '区', '', '0766', '527200', '中国,广东省,云浮市,罗定市', '111.569790', '22.769670', 'Luoding', '罗定', '0');
INSERT INTO `sys_area` VALUES ('450000', '450000', '广西壮族自治区', '100000', '省', '', '', '', '中国,广西壮族自治区', '108.320004', '22.824020', 'Guangxi', '广西', '0');
INSERT INTO `sys_area` VALUES ('450100', '450100', '南宁市', '450000', '市', '', '0771', '530028', '中国,广西壮族自治区,南宁市', '108.320004', '22.824020', 'Nanning', '南宁', '0');
INSERT INTO `sys_area` VALUES ('450102', '450102', '兴宁区', '450100', '区', '', '0771', '530023', '中国,广西壮族自治区,南宁市,兴宁区', '108.366940', '22.853550', 'Xingning', '兴宁', '0');
INSERT INTO `sys_area` VALUES ('450103', '450103', '青秀区', '450100', '区', '', '0771', '530213', '中国,广西壮族自治区,南宁市,青秀区', '108.495450', '22.785110', 'Qingxiu', '青秀', '0');
INSERT INTO `sys_area` VALUES ('450105', '450105', '江南区', '450100', '区', '', '0771', '530031', '中国,广西壮族自治区,南宁市,江南区', '108.273250', '22.781270', 'Jiangnan', '江南', '0');
INSERT INTO `sys_area` VALUES ('450107', '450107', '西乡塘区', '450100', '区', '', '0771', '530001', '中国,广西壮族自治区,南宁市,西乡塘区', '108.313470', '22.833860', 'Xixiangtang', '西乡塘', '0');
INSERT INTO `sys_area` VALUES ('450108', '450108', '良庆区', '450100', '区', '', '0771', '530219', '中国,广西壮族自治区,南宁市,良庆区', '108.412840', '22.749140', 'Liangqing', '良庆', '0');
INSERT INTO `sys_area` VALUES ('450109', '450109', '邕宁区', '450100', '区', '', '0771', '530200', '中国,广西壮族自治区,南宁市,邕宁区', '108.486840', '22.756280', 'Yongning', '邕宁', '0');
INSERT INTO `sys_area` VALUES ('450122', '450122', '武鸣县', '450100', '区', '', '0771', '530100', '中国,广西壮族自治区,南宁市,武鸣县', '108.277190', '23.156430', 'Wuming', '武鸣', '0');
INSERT INTO `sys_area` VALUES ('450123', '450123', '隆安县', '450100', '区', '', '0771', '532700', '中国,广西壮族自治区,南宁市,隆安县', '107.691920', '23.173360', 'Long\'an', '隆安', '0');
INSERT INTO `sys_area` VALUES ('450124', '450124', '马山县', '450100', '区', '', '0771', '530600', '中国,广西壮族自治区,南宁市,马山县', '108.176970', '23.709310', 'Mashan', '马山', '0');
INSERT INTO `sys_area` VALUES ('450125', '450125', '上林县', '450100', '区', '', '0771', '530500', '中国,广西壮族自治区,南宁市,上林县', '108.605220', '23.432000', 'Shanglin', '上林', '0');
INSERT INTO `sys_area` VALUES ('450126', '450126', '宾阳县', '450100', '区', '', '0771', '530400', '中国,广西壮族自治区,南宁市,宾阳县', '108.811850', '23.219600', 'Binyang', '宾阳', '0');
INSERT INTO `sys_area` VALUES ('450127', '450127', '横县', '450100', '区', '', '0771', '530300', '中国,广西壮族自治区,南宁市,横县', '109.266080', '22.684480', 'Hengxian', '横县', '0');
INSERT INTO `sys_area` VALUES ('450128', '450128', '埌东新区', '450100', '区', '', '0771', '530000', '中国,广西壮族自治区,南宁市,埌东新区', '108.419094', '22.812976', 'Langdong', '埌东', '0');
INSERT INTO `sys_area` VALUES ('450200', '450200', '柳州市', '450000', '市', '', '0772', '545001', '中国,广西壮族自治区,柳州市', '109.411703', '24.314617', 'Liuzhou', '柳州', '0');
INSERT INTO `sys_area` VALUES ('450202', '450202', '城中区', '450200', '区', '', '0772', '545001', '中国,广西壮族自治区,柳州市,城中区', '109.410820', '24.315430', 'Chengzhong', '城中', '0');
INSERT INTO `sys_area` VALUES ('450203', '450203', '鱼峰区', '450200', '区', '', '0772', '545005', '中国,广西壮族自治区,柳州市,鱼峰区', '109.453300', '24.318680', 'Yufeng', '鱼峰', '0');
INSERT INTO `sys_area` VALUES ('450204', '450204', '柳南区', '450200', '区', '', '0772', '545007', '中国,广西壮族自治区,柳州市,柳南区', '109.385480', '24.335990', 'Liunan', '柳南', '0');
INSERT INTO `sys_area` VALUES ('450205', '450205', '柳北区', '450200', '区', '', '0772', '545002', '中国,广西壮族自治区,柳州市,柳北区', '109.402020', '24.362670', 'Liubei', '柳北', '0');
INSERT INTO `sys_area` VALUES ('450221', '450221', '柳江县', '450200', '区', '', '0772', '545100', '中国,广西壮族自治区,柳州市,柳江县', '109.332730', '24.255960', 'Liujiang', '柳江', '0');
INSERT INTO `sys_area` VALUES ('450222', '450222', '柳城县', '450200', '区', '', '0772', '545200', '中国,广西壮族自治区,柳州市,柳城县', '109.238770', '24.649510', 'Liucheng', '柳城', '0');
INSERT INTO `sys_area` VALUES ('450223', '450223', '鹿寨县', '450200', '区', '', '0772', '545600', '中国,广西壮族自治区,柳州市,鹿寨县', '109.751770', '24.473060', 'Luzhai', '鹿寨', '0');
INSERT INTO `sys_area` VALUES ('450224', '450224', '融安县', '450200', '区', '', '0772', '545400', '中国,广西壮族自治区,柳州市,融安县', '109.397610', '25.224650', 'Rong\'an', '融安', '0');
INSERT INTO `sys_area` VALUES ('450225', '450225', '融水苗族自治县', '450200', '区', '', '0772', '545300', '中国,广西壮族自治区,柳州市,融水苗族自治县', '109.256340', '25.066280', 'Rongshui', '融水', '0');
INSERT INTO `sys_area` VALUES ('450226', '450226', '三江侗族自治县', '450200', '区', '', '0772', '545500', '中国,广西壮族自治区,柳州市,三江侗族自治县', '109.604460', '25.784280', 'Sanjiang', '三江', '0');
INSERT INTO `sys_area` VALUES ('450227', '450227', '柳东新区', '450200', '区', '', '0772', '545000', '中国,广西壮族自治区,柳州市,柳东新区', '109.437053', '24.329204', 'Liudong', '柳东', '0');
INSERT INTO `sys_area` VALUES ('450300', '450300', '桂林市', '450000', '市', '', '0773', '541100', '中国,广西壮族自治区,桂林市', '110.299121', '25.274215', 'Guilin', '桂林', '0');
INSERT INTO `sys_area` VALUES ('450302', '450302', '秀峰区', '450300', '区', '', '0773', '541001', '中国,广西壮族自治区,桂林市,秀峰区', '110.289150', '25.282490', 'Xiufeng', '秀峰', '0');
INSERT INTO `sys_area` VALUES ('450303', '450303', '叠彩区', '450300', '区', '', '0773', '541001', '中国,广西壮族自治区,桂林市,叠彩区', '110.301950', '25.313810', 'Diecai', '叠彩', '0');
INSERT INTO `sys_area` VALUES ('450304', '450304', '象山区', '450300', '区', '', '0773', '541002', '中国,广西壮族自治区,桂林市,象山区', '110.281080', '25.261680', 'Xiangshan', '象山', '0');
INSERT INTO `sys_area` VALUES ('450305', '450305', '七星区', '450300', '区', '', '0773', '541004', '中国,广西壮族自治区,桂林市,七星区', '110.317930', '25.252500', 'Qixing', '七星', '0');
INSERT INTO `sys_area` VALUES ('450311', '450311', '雁山区', '450300', '区', '', '0773', '541006', '中国,广西壮族自治区,桂林市,雁山区', '110.309110', '25.060380', 'Yanshan', '雁山', '0');
INSERT INTO `sys_area` VALUES ('450312', '450312', '临桂区', '450300', '区', '', '0773', '541100', '中国,广西壮族自治区,桂林市,临桂区', '110.205487', '25.246257', 'Lingui', '临桂', '0');
INSERT INTO `sys_area` VALUES ('450321', '450321', '阳朔县', '450300', '区', '', '0773', '541900', '中国,广西壮族自治区,桂林市,阳朔县', '110.494750', '24.775790', 'Yangshuo', '阳朔', '0');
INSERT INTO `sys_area` VALUES ('450323', '450323', '灵川县', '450300', '区', '', '0773', '541200', '中国,广西壮族自治区,桂林市,灵川县', '110.329490', '25.412920', 'Lingchuan', '灵川', '0');
INSERT INTO `sys_area` VALUES ('450324', '450324', '全州县', '450300', '区', '', '0773', '541503', '中国,广西壮族自治区,桂林市,全州县', '111.072110', '25.927990', 'Quanzhou', '全州', '0');
INSERT INTO `sys_area` VALUES ('450325', '450325', '兴安县', '450300', '区', '', '0773', '541300', '中国,广西壮族自治区,桂林市,兴安县', '110.671440', '25.611670', 'Xing\'an', '兴安', '0');
INSERT INTO `sys_area` VALUES ('450326', '450326', '永福县', '450300', '区', '', '0773', '541800', '中国,广西壮族自治区,桂林市,永福县', '109.983330', '24.980040', 'Yongfu', '永福', '0');
INSERT INTO `sys_area` VALUES ('450327', '450327', '灌阳县', '450300', '区', '', '0773', '541600', '中国,广西壮族自治区,桂林市,灌阳县', '111.159540', '25.488030', 'Guanyang', '灌阳', '0');
INSERT INTO `sys_area` VALUES ('450328', '450328', '龙胜各族自治县', '450300', '区', '', '0773', '541700', '中国,广西壮族自治区,桂林市,龙胜各族自治县', '110.012260', '25.796140', 'Longsheng', '龙胜', '0');
INSERT INTO `sys_area` VALUES ('450329', '450329', '资源县', '450300', '区', '', '0773', '541400', '中国,广西壮族自治区,桂林市,资源县', '110.652550', '26.042370', 'Ziyuan', '资源', '0');
INSERT INTO `sys_area` VALUES ('450330', '450330', '平乐县', '450300', '区', '', '0773', '542400', '中国,广西壮族自治区,桂林市,平乐县', '110.641750', '24.632420', 'Pingle', '平乐', '0');
INSERT INTO `sys_area` VALUES ('450331', '450331', '荔浦县', '450300', '区', '', '0773', '546600', '中国,广西壮族自治区,桂林市,荔浦县', '110.397100', '24.495890', 'Lipu', '荔浦', '0');
INSERT INTO `sys_area` VALUES ('450332', '450332', '恭城瑶族自治县', '450300', '区', '', '0773', '542500', '中国,广西壮族自治区,桂林市,恭城瑶族自治县', '110.830350', '24.832860', 'Gongcheng', '恭城', '0');
INSERT INTO `sys_area` VALUES ('450400', '450400', '梧州市', '450000', '市', '', '0774', '543002', '中国,广西壮族自治区,梧州市', '111.316229', '23.472309', 'Wuzhou', '梧州', '0');
INSERT INTO `sys_area` VALUES ('450403', '450403', '万秀区', '450400', '区', '', '0774', '543000', '中国,广西壮族自治区,梧州市,万秀区', '111.320520', '23.472980', 'Wanxiu', '万秀', '0');
INSERT INTO `sys_area` VALUES ('450405', '450405', '长洲区', '450400', '区', '', '0774', '543003', '中国,广西壮族自治区,梧州市,长洲区', '111.274940', '23.485730', 'Changzhou', '长洲', '0');
INSERT INTO `sys_area` VALUES ('450406', '450406', '龙圩区', '450400', '区', '', '0774', '543002', '中国,广西壮族自治区,梧州市,龙圩区', '111.316229', '23.472309', 'Longxu', '龙圩', '0');
INSERT INTO `sys_area` VALUES ('450421', '450421', '苍梧县', '450400', '区', '', '0774', '543100', '中国,广西壮族自治区,梧州市,苍梧县', '111.245330', '23.420490', 'Cangwu', '苍梧', '0');
INSERT INTO `sys_area` VALUES ('450422', '450422', '藤县', '450400', '区', '', '0774', '543300', '中国,广西壮族自治区,梧州市,藤县', '110.914180', '23.376050', 'Tengxian', '藤县', '0');
INSERT INTO `sys_area` VALUES ('450423', '450423', '蒙山县', '450400', '区', '', '0774', '546700', '中国,广西壮族自治区,梧州市,蒙山县', '110.522210', '24.201680', 'Mengshan', '蒙山', '0');
INSERT INTO `sys_area` VALUES ('450481', '450481', '岑溪市', '450400', '区', '', '0774', '543200', '中国,广西壮族自治区,梧州市,岑溪市', '110.995940', '22.919100', 'Cenxi', '岑溪', '0');
INSERT INTO `sys_area` VALUES ('450500', '450500', '北海市', '450000', '市', '', '0779', '536000', '中国,广西壮族自治区,北海市', '109.119254', '21.473343', 'Beihai', '北海', '0');
INSERT INTO `sys_area` VALUES ('450502', '450502', '海城区', '450500', '区', '', '0779', '536000', '中国,广西壮族自治区,北海市,海城区', '109.117440', '21.475010', 'Haicheng', '海城', '0');
INSERT INTO `sys_area` VALUES ('450503', '450503', '银海区', '450500', '区', '', '0779', '536000', '中国,广西壮族自治区,北海市,银海区', '109.130290', '21.478300', 'Yinhai', '银海', '0');
INSERT INTO `sys_area` VALUES ('450512', '450512', '铁山港区', '450500', '区', '', '0779', '536017', '中国,广西壮族自治区,北海市,铁山港区', '109.455780', '21.596610', 'Tieshangang', '铁山港', '0');
INSERT INTO `sys_area` VALUES ('450521', '450521', '合浦县', '450500', '区', '', '0779', '536100', '中国,广西壮族自治区,北海市,合浦县', '109.200680', '21.666010', 'Hepu', '合浦', '0');
INSERT INTO `sys_area` VALUES ('450600', '450600', '防城港市', '450000', '市', '', '0770', '538001', '中国,广西壮族自治区,防城港市', '108.345478', '21.614631', 'Fangchenggang', '防城港', '0');
INSERT INTO `sys_area` VALUES ('450602', '450602', '港口区', '450600', '区', '', '0770', '538001', '中国,广西壮族自治区,防城港市,港口区', '108.380220', '21.643420', 'Gangkou', '港口', '0');
INSERT INTO `sys_area` VALUES ('450603', '450603', '防城区', '450600', '区', '', '0770', '538021', '中国,广西壮族自治区,防城港市,防城区', '108.357260', '21.764640', 'Fangcheng', '防城', '0');
INSERT INTO `sys_area` VALUES ('450621', '450621', '上思县', '450600', '区', '', '0770', '535500', '中国,广西壮族自治区,防城港市,上思县', '107.982300', '22.149570', 'Shangsi', '上思', '0');
INSERT INTO `sys_area` VALUES ('450681', '450681', '东兴市', '450600', '区', '', '0770', '538100', '中国,广西壮族自治区,防城港市,东兴市', '107.972040', '21.547130', 'Dongxing', '东兴', '0');
INSERT INTO `sys_area` VALUES ('450700', '450700', '钦州市', '450000', '市', '', '0777', '535099', '中国,广西壮族自治区,钦州市', '108.624175', '21.967127', 'Qinzhou', '钦州', '0');
INSERT INTO `sys_area` VALUES ('450702', '450702', '钦南区', '450700', '区', '', '0777', '535099', '中国,广西壮族自治区,钦州市,钦南区', '108.617750', '21.951370', 'Qinnan', '钦南', '0');
INSERT INTO `sys_area` VALUES ('450703', '450703', '钦北区', '450700', '区', '', '0777', '535099', '中国,广西壮族自治区,钦州市,钦北区', '108.630370', '21.951270', 'Qinbei', '钦北', '0');
INSERT INTO `sys_area` VALUES ('450721', '450721', '灵山县', '450700', '区', '', '0777', '535099', '中国,广西壮族自治区,钦州市,灵山县', '109.291530', '22.416500', 'Lingshan', '灵山', '0');
INSERT INTO `sys_area` VALUES ('450722', '450722', '浦北县', '450700', '区', '', '0777', '535099', '中国,广西壮族自治区,钦州市,浦北县', '109.555720', '22.268880', 'Pubei', '浦北', '0');
INSERT INTO `sys_area` VALUES ('450800', '450800', '贵港市', '450000', '市', '', '0775', '537100', '中国,广西壮族自治区,贵港市', '109.602146', '23.093600', 'Guigang', '贵港', '0');
INSERT INTO `sys_area` VALUES ('450802', '450802', '港北区', '450800', '区', '', '0775', '537100', '中国,广西壮族自治区,贵港市,港北区', '109.572240', '23.111530', 'Gangbei', '港北', '0');
INSERT INTO `sys_area` VALUES ('450803', '450803', '港南区', '450800', '区', '', '0775', '537100', '中国,广西壮族自治区,贵港市,港南区', '109.606170', '23.072260', 'Gangnan', '港南', '0');
INSERT INTO `sys_area` VALUES ('450804', '450804', '覃塘区', '450800', '区', '', '0775', '537121', '中国,广西壮族自治区,贵港市,覃塘区', '109.442930', '23.126770', 'Qintang', '覃塘', '0');
INSERT INTO `sys_area` VALUES ('450821', '450821', '平南县', '450800', '区', '', '0775', '537300', '中国,广西壮族自治区,贵港市,平南县', '110.390620', '23.542010', 'Pingnan', '平南', '0');
INSERT INTO `sys_area` VALUES ('450881', '450881', '桂平市', '450800', '区', '', '0775', '537200', '中国,广西壮族自治区,贵港市,桂平市', '110.081050', '23.393390', 'Guiping', '桂平', '0');
INSERT INTO `sys_area` VALUES ('450900', '450900', '玉林市', '450000', '市', '', '0775', '537000', '中国,广西壮族自治区,玉林市', '110.154393', '22.631360', 'Yulin', '玉林', '0');
INSERT INTO `sys_area` VALUES ('450902', '450902', '玉州区', '450900', '区', '', '0775', '537000', '中国,广西壮族自治区,玉林市,玉州区', '110.151140', '22.628100', 'Yuzhou', '玉州', '0');
INSERT INTO `sys_area` VALUES ('450903', '450903', '福绵区', '450900', '区', '', '0775', '537023', '中国,广西壮族自治区,玉林市,福绵区', '110.064816', '22.583057', 'Fumian', '福绵', '0');
INSERT INTO `sys_area` VALUES ('450904', '450904', '玉东新区', '450900', '区', '', '0775', '537000', '中国,广西壮族自治区,玉林市,玉东新区', '110.154393', '22.631360', 'Yudong', '玉东', '0');
INSERT INTO `sys_area` VALUES ('450921', '450921', '容县', '450900', '区', '', '0775', '537500', '中国,广西壮族自治区,玉林市,容县', '110.555930', '22.857010', 'Rongxian', '容县', '0');
INSERT INTO `sys_area` VALUES ('450922', '450922', '陆川县', '450900', '区', '', '0775', '537700', '中国,广西壮族自治区,玉林市,陆川县', '110.264130', '22.324540', 'Luchuan', '陆川', '0');
INSERT INTO `sys_area` VALUES ('450923', '450923', '博白县', '450900', '区', '', '0775', '537600', '中国,广西壮族自治区,玉林市,博白县', '109.977440', '22.272860', 'Bobai', '博白', '0');
INSERT INTO `sys_area` VALUES ('450924', '450924', '兴业县', '450900', '区', '', '0775', '537800', '中国,广西壮族自治区,玉林市,兴业县', '109.876120', '22.742370', 'Xingye', '兴业', '0');
INSERT INTO `sys_area` VALUES ('450981', '450981', '北流市', '450900', '区', '', '0775', '537400', '中国,广西壮族自治区,玉林市,北流市', '110.353020', '22.708170', 'Beiliu', '北流', '0');
INSERT INTO `sys_area` VALUES ('451000', '451000', '百色市', '450000', '市', '', '0776', '533000', '中国,广西壮族自治区,百色市', '106.616285', '23.897742', 'Baise', '百色', '0');
INSERT INTO `sys_area` VALUES ('451002', '451002', '右江区', '451000', '区', '', '0776', '533000', '中国,广西壮族自治区,百色市,右江区', '106.617640', '23.900900', 'Youjiang', '右江', '0');
INSERT INTO `sys_area` VALUES ('451021', '451021', '田阳县', '451000', '区', '', '0776', '533600', '中国,广西壮族自治区,百色市,田阳县', '106.915580', '23.735350', 'Tianyang', '田阳', '0');
INSERT INTO `sys_area` VALUES ('451022', '451022', '田东县', '451000', '区', '', '0776', '531500', '中国,广西壮族自治区,百色市,田东县', '107.124320', '23.600030', 'Tiandong', '田东', '0');
INSERT INTO `sys_area` VALUES ('451023', '451023', '平果县', '451000', '区', '', '0776', '531400', '中国,广西壮族自治区,百色市,平果县', '107.590450', '23.329690', 'Pingguo', '平果', '0');
INSERT INTO `sys_area` VALUES ('451024', '451024', '德保县', '451000', '区', '', '0776', '533700', '中国,广西壮族自治区,百色市,德保县', '106.619170', '23.325150', 'Debao', '德保', '0');
INSERT INTO `sys_area` VALUES ('451025', '451025', '靖西县', '451000', '区', '', '0776', '533800', '中国,广西壮族自治区,百色市,靖西县', '106.417660', '23.134250', 'Jingxi', '靖西', '0');
INSERT INTO `sys_area` VALUES ('451026', '451026', '那坡县', '451000', '区', '', '0776', '533900', '中国,广西壮族自治区,百色市,那坡县', '105.841910', '23.406490', 'Napo', '那坡', '0');
INSERT INTO `sys_area` VALUES ('451027', '451027', '凌云县', '451000', '区', '', '0776', '533100', '中国,广西壮族自治区,百色市,凌云县', '106.561550', '24.347470', 'Lingyun', '凌云', '0');
INSERT INTO `sys_area` VALUES ('451028', '451028', '乐业县', '451000', '区', '', '0776', '533200', '中国,广西壮族自治区,百色市,乐业县', '106.561240', '24.782950', 'Leye', '乐业', '0');
INSERT INTO `sys_area` VALUES ('451029', '451029', '田林县', '451000', '区', '', '0776', '533300', '中国,广西壮族自治区,百色市,田林县', '106.228820', '24.292070', 'Tianlin', '田林', '0');
INSERT INTO `sys_area` VALUES ('451030', '451030', '西林县', '451000', '区', '', '0776', '533500', '中国,广西壮族自治区,百色市,西林县', '105.097220', '24.489660', 'Xilin', '西林', '0');
INSERT INTO `sys_area` VALUES ('451031', '451031', '隆林各族自治县', '451000', '区', '', '0776', '533400', '中国,广西壮族自治区,百色市,隆林各族自治县', '105.342950', '24.770360', 'Longlin', '隆林', '0');
INSERT INTO `sys_area` VALUES ('451100', '451100', '贺州市', '450000', '市', '', '0774', '542800', '中国,广西壮族自治区,贺州市', '111.552056', '24.414141', 'Hezhou', '贺州', '0');
INSERT INTO `sys_area` VALUES ('451102', '451102', '八步区', '451100', '区', '', '0774', '542800', '中国,广西壮族自治区,贺州市,八步区', '111.552250', '24.411790', 'Babu', '八步', '0');
INSERT INTO `sys_area` VALUES ('451121', '451121', '昭平县', '451100', '区', '', '0774', '546800', '中国,广西壮族自治区,贺州市,昭平县', '110.810820', '24.170100', 'Zhaoping', '昭平', '0');
INSERT INTO `sys_area` VALUES ('451122', '451122', '钟山县', '451100', '区', '', '0774', '542600', '中国,广西壮族自治区,贺州市,钟山县', '111.304590', '24.524820', 'Zhongshan', '钟山', '0');
INSERT INTO `sys_area` VALUES ('451123', '451123', '富川瑶族自治县', '451100', '区', '', '0774', '542700', '中国,广西壮族自治区,贺州市,富川瑶族自治县', '111.277670', '24.814310', 'Fuchuan', '富川', '0');
INSERT INTO `sys_area` VALUES ('451124', '451124', '平桂管理区', '451100', '区', '', '0774', '542800', '中国,广西壮族自治区,贺州市,平桂管理区', '111.485651', '24.458041', 'Pingui', '平桂', '0');
INSERT INTO `sys_area` VALUES ('451200', '451200', '河池市', '450000', '市', '', '0778', '547000', '中国,广西壮族自治区,河池市', '108.062105', '24.695899', 'Hechi', '河池', '0');
INSERT INTO `sys_area` VALUES ('451202', '451202', '金城江区', '451200', '区', '', '0779', '547000', '中国,广西壮族自治区,河池市,金城江区', '108.037270', '24.689700', 'Jinchengjiang', '金城江', '0');
INSERT INTO `sys_area` VALUES ('451221', '451221', '南丹县', '451200', '区', '', '0781', '547200', '中国,广西壮族自治区,河池市,南丹县', '107.545620', '24.977600', 'Nandan', '南丹', '0');
INSERT INTO `sys_area` VALUES ('451222', '451222', '天峨县', '451200', '区', '', '0782', '547300', '中国,广西壮族自治区,河池市,天峨县', '107.172050', '24.995930', 'Tiane', '天峨', '0');
INSERT INTO `sys_area` VALUES ('451223', '451223', '凤山县', '451200', '区', '', '0783', '547600', '中国,广西壮族自治区,河池市,凤山县', '107.048920', '24.542150', 'Fengshan', '凤山', '0');
INSERT INTO `sys_area` VALUES ('451224', '451224', '东兰县', '451200', '区', '', '0784', '547400', '中国,广西壮族自治区,河池市,东兰县', '107.375270', '24.510530', 'Donglan', '东兰', '0');
INSERT INTO `sys_area` VALUES ('451225', '451225', '罗城仫佬族自治县', '451200', '区', '', '0785', '546400', '中国,广西壮族自治区,河池市,罗城仫佬族自治县', '108.907770', '24.779230', 'Luocheng', '罗城', '0');
INSERT INTO `sys_area` VALUES ('451226', '451226', '环江毛南族自治县', '451200', '区', '', '0786', '547100', '中国,广西壮族自治区,河池市,环江毛南族自治县', '108.260550', '24.829160', 'Huanjiang', '环江', '0');
INSERT INTO `sys_area` VALUES ('451227', '451227', '巴马瑶族自治县', '451200', '区', '', '0787', '547500', '中国,广西壮族自治区,河池市,巴马瑶族自治县', '107.253080', '24.141350', 'Bama', '巴马', '0');
INSERT INTO `sys_area` VALUES ('451228', '451228', '都安瑶族自治县', '451200', '区', '', '0788', '530700', '中国,广西壮族自治区,河池市,都安瑶族自治县', '108.101160', '23.932450', 'Du\'an', '都安', '0');
INSERT INTO `sys_area` VALUES ('451229', '451229', '大化瑶族自治县', '451200', '区', '', '0789', '530800', '中国,广西壮族自治区,河池市,大化瑶族自治县', '107.998500', '23.744870', 'Dahua', '大化', '0');
INSERT INTO `sys_area` VALUES ('451281', '451281', '宜州市', '451200', '区', '', '0780', '546300', '中国,广西壮族自治区,河池市,宜州市', '108.653040', '24.493910', 'Yizhou', '宜州', '0');
INSERT INTO `sys_area` VALUES ('451300', '451300', '来宾市', '450000', '市', '', '0772', '546100', '中国,广西壮族自治区,来宾市', '109.229772', '23.733766', 'Laibin', '来宾', '0');
INSERT INTO `sys_area` VALUES ('451302', '451302', '兴宾区', '451300', '区', '', '0772', '546100', '中国,广西壮族自治区,来宾市,兴宾区', '109.234710', '23.727310', 'Xingbin', '兴宾', '0');
INSERT INTO `sys_area` VALUES ('451321', '451321', '忻城县', '451300', '区', '', '0772', '546200', '中国,广西壮族自治区,来宾市,忻城县', '108.663570', '24.068620', 'Xincheng', '忻城', '0');
INSERT INTO `sys_area` VALUES ('451322', '451322', '象州县', '451300', '区', '', '0772', '545800', '中国,广西壮族自治区,来宾市,象州县', '109.699400', '23.973550', 'Xiangzhou', '象州', '0');
INSERT INTO `sys_area` VALUES ('451323', '451323', '武宣县', '451300', '区', '', '0772', '545900', '中国,广西壮族自治区,来宾市,武宣县', '109.662840', '23.594740', 'Wuxuan', '武宣', '0');
INSERT INTO `sys_area` VALUES ('451324', '451324', '金秀瑶族自治县', '451300', '区', '', '0772', '545799', '中国,广西壮族自治区,来宾市,金秀瑶族自治县', '110.190790', '24.129290', 'Jinxiu', '金秀', '0');
INSERT INTO `sys_area` VALUES ('451381', '451381', '合山市', '451300', '区', '', '0772', '546500', '中国,广西壮族自治区,来宾市,合山市', '108.885860', '23.806190', 'Heshan', '合山', '0');
INSERT INTO `sys_area` VALUES ('451400', '451400', '崇左市', '450000', '市', '', '0771', '532299', '中国,广西壮族自治区,崇左市', '107.353926', '22.404108', 'Chongzuo', '崇左', '0');
INSERT INTO `sys_area` VALUES ('451402', '451402', '江州区', '451400', '区', '', '0771', '532299', '中国,广西壮族自治区,崇左市,江州区', '107.347470', '22.411350', 'Jiangzhou', '江州', '0');
INSERT INTO `sys_area` VALUES ('451421', '451421', '扶绥县', '451400', '区', '', '0771', '532199', '中国,广西壮族自治区,崇左市,扶绥县', '107.904050', '22.634130', 'Fusui', '扶绥', '0');
INSERT INTO `sys_area` VALUES ('451422', '451422', '宁明县', '451400', '区', '', '0771', '532599', '中国,广西壮族自治区,崇左市,宁明县', '107.072990', '22.136550', 'Ningming', '宁明', '0');
INSERT INTO `sys_area` VALUES ('451423', '451423', '龙州县', '451400', '区', '', '0771', '532499', '中国,广西壮族自治区,崇左市,龙州县', '106.854150', '22.339370', 'Longzhou', '龙州', '0');
INSERT INTO `sys_area` VALUES ('451424', '451424', '大新县', '451400', '区', '', '0771', '532399', '中国,广西壮族自治区,崇左市,大新县', '107.198210', '22.834120', 'Daxin', '大新', '0');
INSERT INTO `sys_area` VALUES ('451425', '451425', '天等县', '451400', '区', '', '0771', '532899', '中国,广西壮族自治区,崇左市,天等县', '107.139980', '23.077000', 'Tiandeng', '天等', '0');
INSERT INTO `sys_area` VALUES ('451481', '451481', '凭祥市', '451400', '区', '', '0771', '532699', '中国,广西壮族自治区,崇左市,凭祥市', '106.755340', '22.105730', 'Pingxiang', '凭祥', '0');
INSERT INTO `sys_area` VALUES ('460000', '460000', '海南省', '100000', '省', '', '', '', '中国,海南省', '110.331190', '20.031971', 'Hainan', '海南', '0');
INSERT INTO `sys_area` VALUES ('460100', '460100', '海口市', '460000', '市', '', '0898', '570000', '中国,海南省,海口市', '110.331190', '20.031971', 'Haikou', '海口', '0');
INSERT INTO `sys_area` VALUES ('460105', '460105', '秀英区', '460100', '区', '', '0898', '570311', '中国,海南省,海口市,秀英区', '110.293450', '20.007520', 'Xiuying', '秀英', '0');
INSERT INTO `sys_area` VALUES ('460106', '460106', '龙华区', '460100', '区', '', '0898', '570145', '中国,海南省,海口市,龙华区', '110.301940', '20.028660', 'Longhua', '龙华', '0');
INSERT INTO `sys_area` VALUES ('460107', '460107', '琼山区', '460100', '区', '', '0898', '571100', '中国,海南省,海口市,琼山区', '110.354180', '20.003210', 'Qiongshan', '琼山', '0');
INSERT INTO `sys_area` VALUES ('460108', '460108', '美兰区', '460100', '区', '', '0898', '570203', '中国,海南省,海口市,美兰区', '110.369080', '20.028640', 'Meilan', '美兰', '0');
INSERT INTO `sys_area` VALUES ('460200', '460200', '三亚市', '460000', '市', '', '0898', '572000', '中国,海南省,三亚市', '109.508268', '18.247872', 'Sanya', '三亚', '0');
INSERT INTO `sys_area` VALUES ('460202', '460202', '海棠区', '460200', '区', '', '0898', '572000', '中国,海南省,三亚市,海棠区', '109.508268', '18.247872', 'Haitang', '海棠', '0');
INSERT INTO `sys_area` VALUES ('460203', '460203', '吉阳区', '460200', '区', '', '0898', '572000', '中国,海南省,三亚市,吉阳区', '109.508268', '18.247872', 'Jiyang', '吉阳', '0');
INSERT INTO `sys_area` VALUES ('460204', '460204', '天涯区', '460200', '区', '', '0898', '572000', '中国,海南省,三亚市,天涯区', '109.508268', '18.247872', 'Tianya', '天涯', '0');
INSERT INTO `sys_area` VALUES ('460205', '460205', '崖州区', '460200', '区', '', '0898', '572000', '中国,海南省,三亚市,崖州区', '109.508268', '18.247872', 'Yazhou', '崖州', '0');
INSERT INTO `sys_area` VALUES ('460300', '460300', '三沙市', '460000', '市', '', '0898', '573199', '中国,海南省,三沙市', '112.348820', '16.831039', 'Sansha', '三沙', '0');
INSERT INTO `sys_area` VALUES ('460321', '460321', '西沙群岛', '460300', '区', '', '0898', '572000', '中国,海南省,三沙市,西沙群岛', '112.025528', '16.331342', 'Xisha Islands', '西沙', '0');
INSERT INTO `sys_area` VALUES ('460322', '460322', '南沙群岛', '460300', '区', '', '0898', '573100', '中国,海南省,三沙市,南沙群岛', '116.749998', '11.471888', 'Nansha Islands', '南沙', '0');
INSERT INTO `sys_area` VALUES ('460323', '460323', '中沙群岛', '460300', '区', '', '0898', '573100', '中国,海南省,三沙市,中沙群岛', '117.740071', '15.112856', 'Zhongsha Islands', '中沙', '0');
INSERT INTO `sys_area` VALUES ('469000', '469000', '直辖县级', '460000', '市', '', '', '', '中国,海南省,直辖县级', '109.503479', '18.739906', '', ' ', '0');
INSERT INTO `sys_area` VALUES ('469001', '469001', '五指山市', '469000', '区', '', '0898', '572200', '中国,海南省,直辖县级,五指山市', '109.516662', '18.776921', 'Wuzhishan', '五指山', '0');
INSERT INTO `sys_area` VALUES ('469002', '469002', '琼海市', '469000', '区', '', '0898', '571400', '中国,海南省,直辖县级,琼海市', '110.466785', '19.246011', 'Qionghai', '琼海', '0');
INSERT INTO `sys_area` VALUES ('469003', '469003', '儋州市', '469000', '区', '', '0898', '571700', '中国,海南省,直辖县级,儋州市', '109.576782', '19.517486', 'Danzhou', '儋州', '0');
INSERT INTO `sys_area` VALUES ('469005', '469005', '文昌市', '469000', '区', '', '0898', '571339', '中国,海南省,直辖县级,文昌市', '110.753975', '19.612986', 'Wenchang', '文昌', '0');
INSERT INTO `sys_area` VALUES ('469006', '469006', '万宁市', '469000', '区', '', '0898', '571500', '中国,海南省,直辖县级,万宁市', '110.388793', '18.796216', 'Wanning', '万宁', '0');
INSERT INTO `sys_area` VALUES ('469007', '469007', '东方市', '469000', '区', '', '0898', '572600', '中国,海南省,直辖县级,东方市', '108.653789', '19.101980', 'Dongfang', '东方', '0');
INSERT INTO `sys_area` VALUES ('469021', '469021', '定安县', '469000', '区', '', '0898', '571200', '中国,海南省,直辖县级,定安县', '110.323959', '19.699211', 'Ding\'an', '定安', '0');
INSERT INTO `sys_area` VALUES ('469022', '469022', '屯昌县', '469000', '区', '', '0898', '571600', '中国,海南省,直辖县级,屯昌县', '110.102773', '19.362916', 'Tunchang', '屯昌', '0');
INSERT INTO `sys_area` VALUES ('469023', '469023', '澄迈县', '469000', '区', '', '0898', '571900', '中国,海南省,直辖县级,澄迈县', '110.007147', '19.737095', 'Chengmai', '澄迈', '0');
INSERT INTO `sys_area` VALUES ('469024', '469024', '临高县', '469000', '区', '', '0898', '571800', '中国,海南省,直辖县级,临高县', '109.687697', '19.908293', 'Lingao', '临高', '0');
INSERT INTO `sys_area` VALUES ('469025', '469025', '白沙黎族自治县', '469000', '区', '', '0898', '572800', '中国,海南省,直辖县级,白沙黎族自治县', '109.452606', '19.224584', 'Baisha', '白沙', '0');
INSERT INTO `sys_area` VALUES ('469026', '469026', '昌江黎族自治县', '469000', '区', '', '0898', '572700', '中国,海南省,直辖县级,昌江黎族自治县', '109.053351', '19.260968', 'Changjiang', '昌江', '0');
INSERT INTO `sys_area` VALUES ('469027', '469027', '乐东黎族自治县', '469000', '区', '', '0898', '572500', '中国,海南省,直辖县级,乐东黎族自治县', '109.175444', '18.747580', 'Ledong', '乐东', '0');
INSERT INTO `sys_area` VALUES ('469028', '469028', '陵水黎族自治县', '469000', '区', '', '0898', '572400', '中国,海南省,直辖县级,陵水黎族自治县', '110.037218', '18.505006', 'Lingshui', '陵水', '0');
INSERT INTO `sys_area` VALUES ('469029', '469029', '保亭黎族苗族自治县', '469000', '区', '', '0898', '572300', '中国,海南省,直辖县级,保亭黎族苗族自治县', '109.702450', '18.636371', 'Baoting', '保亭', '0');
INSERT INTO `sys_area` VALUES ('469030', '469030', '琼中黎族苗族自治县', '469000', '区', '', '0898', '572900', '中国,海南省,直辖县级,琼中黎族苗族自治县', '109.839996', '19.035570', 'Qiongzhong', '琼中', '0');
INSERT INTO `sys_area` VALUES ('500000', '500000', '重庆', '100000', '省', '', '', '', '中国,重庆', '106.504962', '29.533155', 'Chongqing', '重庆', '0');
INSERT INTO `sys_area` VALUES ('500100', '500100', '重庆市', '500000', '市', '', '023', '400000', '中国,重庆,重庆市', '106.504962', '29.533155', 'Chongqing', '重庆', '0');
INSERT INTO `sys_area` VALUES ('500101', '500101', '万州区', '500100', '区', '', '023', '404000', '中国,重庆,重庆市,万州区', '108.408690', '30.807880', 'Wanzhou', '万州', '0');
INSERT INTO `sys_area` VALUES ('500102', '500102', '涪陵区', '500100', '区', '', '023', '408000', '中国,重庆,重庆市,涪陵区', '107.390070', '29.702920', 'Fuling', '涪陵', '0');
INSERT INTO `sys_area` VALUES ('500103', '500103', '渝中区', '500100', '区', '', '023', '400010', '中国,重庆,重庆市,渝中区', '106.569010', '29.552790', 'Yuzhong', '渝中', '0');
INSERT INTO `sys_area` VALUES ('500104', '500104', '大渡口区', '500100', '区', '', '023', '400080', '中国,重庆,重庆市,大渡口区', '106.482620', '29.484470', 'Dadukou', '大渡口', '0');
INSERT INTO `sys_area` VALUES ('500105', '500105', '江北区', '500100', '区', '', '023', '400020', '中国,重庆,重庆市,江北区', '106.574340', '29.606580', 'Jiangbei', '江北', '0');
INSERT INTO `sys_area` VALUES ('500106', '500106', '沙坪坝区', '500100', '区', '', '023', '400030', '中国,重庆,重庆市,沙坪坝区', '106.457520', '29.541130', 'Shapingba', '沙坪坝', '0');
INSERT INTO `sys_area` VALUES ('500107', '500107', '九龙坡区', '500100', '区', '', '023', '400050', '中国,重庆,重庆市,九龙坡区', '106.511070', '29.501970', 'Jiulongpo', '九龙坡', '0');
INSERT INTO `sys_area` VALUES ('500108', '500108', '南岸区', '500100', '区', '', '023', '400064', '中国,重庆,重庆市,南岸区', '106.563470', '29.523110', 'Nan\'an', '南岸', '0');
INSERT INTO `sys_area` VALUES ('500109', '500109', '北碚区', '500100', '区', '', '023', '400700', '中国,重庆,重庆市,北碚区', '106.396140', '29.805740', 'Beibei', '北碚', '0');
INSERT INTO `sys_area` VALUES ('500110', '500110', '綦江区', '500100', '区', '', '023', '400800', '中国,重庆,重庆市,綦江区', '106.926779', '28.960656', 'Qijiang', '綦江', '0');
INSERT INTO `sys_area` VALUES ('500111', '500111', '大足区', '500100', '区', '', '023', '400900', '中国,重庆,重庆市,大足区', '105.768121', '29.484025', 'Dazu', '大足', '0');
INSERT INTO `sys_area` VALUES ('500112', '500112', '渝北区', '500100', '区', '', '023', '401120', '中国,重庆,重庆市,渝北区', '106.630700', '29.718200', 'Yubei', '渝北', '0');
INSERT INTO `sys_area` VALUES ('500113', '500113', '巴南区', '500100', '区', '', '023', '401320', '中国,重庆,重庆市,巴南区', '106.523650', '29.383110', 'Banan', '巴南', '0');
INSERT INTO `sys_area` VALUES ('500114', '500114', '黔江区', '500100', '区', '', '023', '409700', '中国,重庆,重庆市,黔江区', '108.770900', '29.533200', 'Qianjiang', '黔江', '0');
INSERT INTO `sys_area` VALUES ('500115', '500115', '长寿区', '500100', '区', '', '023', '401220', '中国,重庆,重庆市,长寿区', '107.081660', '29.853590', 'Changshou', '长寿', '0');
INSERT INTO `sys_area` VALUES ('500116', '500116', '江津区', '500100', '区', '', '023', '402260', '中国,重庆,重庆市,江津区', '106.259120', '29.290080', 'Jiangjin', '江津', '0');
INSERT INTO `sys_area` VALUES ('500117', '500117', '合川区', '500100', '区', '', '023', '401520', '中国,重庆,重庆市,合川区', '106.276330', '29.972270', 'Hechuan', '合川', '0');
INSERT INTO `sys_area` VALUES ('500118', '500118', '永川区', '500100', '区', '', '023', '402160', '中国,重庆,重庆市,永川区', '105.927000', '29.355930', 'Yongchuan', '永川', '0');
INSERT INTO `sys_area` VALUES ('500119', '500119', '南川区', '500100', '区', '', '023', '408400', '中国,重庆,重庆市,南川区', '107.099360', '29.157510', 'Nanchuan', '南川', '0');
INSERT INTO `sys_area` VALUES ('500120', '500120', '璧山区', '500100', '区', '', '023', '402760', '中国,重庆,重庆市,璧山区', '106.231126', '29.593581', 'Bishan', '璧山', '0');
INSERT INTO `sys_area` VALUES ('500151', '500151', '铜梁区', '500100', '区', '', '023', '402560', '中国,重庆,重庆市,铜梁区', '106.054948', '29.839944', 'Tongliang', '铜梁', '0');
INSERT INTO `sys_area` VALUES ('500223', '500223', '潼南县', '500100', '区', '', '023', '402660', '中国,重庆,重庆市,潼南县', '105.840050', '30.191200', 'Tongnan', '潼南', '0');
INSERT INTO `sys_area` VALUES ('500226', '500226', '荣昌县', '500100', '区', '', '023', '402460', '中国,重庆,重庆市,荣昌县', '105.594420', '29.404880', 'Rongchang', '荣昌', '0');
INSERT INTO `sys_area` VALUES ('500228', '500228', '梁平县', '500100', '区', '', '023', '405200', '中国,重庆,重庆市,梁平县', '107.799980', '30.675450', 'Liangping', '梁平', '0');
INSERT INTO `sys_area` VALUES ('500229', '500229', '城口县', '500100', '区', '', '023', '405900', '中国,重庆,重庆市,城口县', '108.665130', '31.948010', 'Chengkou', '城口', '0');
INSERT INTO `sys_area` VALUES ('500230', '500230', '丰都县', '500100', '区', '', '023', '408200', '中国,重庆,重庆市,丰都县', '107.730980', '29.863480', 'Fengdu', '丰都', '0');
INSERT INTO `sys_area` VALUES ('500231', '500231', '垫江县', '500100', '区', '', '023', '408300', '中国,重庆,重庆市,垫江县', '107.354460', '30.333590', 'Dianjiang', '垫江', '0');
INSERT INTO `sys_area` VALUES ('500232', '500232', '武隆县', '500100', '区', '', '023', '408500', '中国,重庆,重庆市,武隆县', '107.760100', '29.325480', 'Wulong', '武隆', '0');
INSERT INTO `sys_area` VALUES ('500233', '500233', '忠县', '500100', '区', '', '023', '404300', '中国,重庆,重庆市,忠县', '108.036890', '30.288980', 'Zhongxian', '忠县', '0');
INSERT INTO `sys_area` VALUES ('500234', '500234', '开县', '500100', '区', '', '023', '405400', '中国,重庆,重庆市,开县', '108.393060', '31.160950', 'Kaixian', '开县', '0');
INSERT INTO `sys_area` VALUES ('500235', '500235', '云阳县', '500100', '区', '', '023', '404500', '中国,重庆,重庆市,云阳县', '108.697260', '30.930620', 'Yunyang', '云阳', '0');
INSERT INTO `sys_area` VALUES ('500236', '500236', '奉节县', '500100', '区', '', '023', '404600', '中国,重庆,重庆市,奉节县', '109.464780', '31.018250', 'Fengjie', '奉节', '0');
INSERT INTO `sys_area` VALUES ('500237', '500237', '巫山县', '500100', '区', '', '023', '404700', '中国,重庆,重庆市,巫山县', '109.878140', '31.074580', 'Wushan', '巫山', '0');
INSERT INTO `sys_area` VALUES ('500238', '500238', '巫溪县', '500100', '区', '', '023', '405800', '中国,重庆,重庆市,巫溪县', '109.631280', '31.397560', 'Wuxi', '巫溪', '0');
INSERT INTO `sys_area` VALUES ('500240', '500240', '石柱土家族自治县', '500100', '区', '', '023', '409100', '中国,重庆,重庆市,石柱土家族自治县', '108.113890', '30.000540', 'Shizhu', '石柱', '0');
INSERT INTO `sys_area` VALUES ('500241', '500241', '秀山土家族苗族自治县', '500100', '区', '', '023', '409900', '中国,重庆,重庆市,秀山土家族苗族自治县', '108.988610', '28.450620', 'Xiushan', '秀山', '0');
INSERT INTO `sys_area` VALUES ('500242', '500242', '酉阳土家族苗族自治县', '500100', '区', '', '023', '409800', '中国,重庆,重庆市,酉阳土家族苗族自治县', '108.772120', '28.844600', 'Youyang', '酉阳', '0');
INSERT INTO `sys_area` VALUES ('500243', '500243', '彭水苗族土家族自治县', '500100', '区', '', '023', '409600', '中国,重庆,重庆市,彭水苗族土家族自治县', '108.166380', '29.295160', 'Pengshui', '彭水', '0');
INSERT INTO `sys_area` VALUES ('500300', '500300', '两江新区', '500000', '市', '', '023', '400000', '中国,重庆,两江新区', '106.463344', '29.729153', 'Liangjiangxinqu', '两江新区', '0');
INSERT INTO `sys_area` VALUES ('500301', '500301', '北部新区', '500300', '区', '', '023', '400000', '中国,重庆,两江新区,北部新区', '106.488841', '29.667062', 'Beibuxinqu', '北部新区', '0');
INSERT INTO `sys_area` VALUES ('500302', '500302', '保税港区', '500300', '区', '', '023', '400000', '中国,重庆,两江新区,保税港区', '106.638184', '29.716311', 'Baoshuigangqu', '保税港区', '0');
INSERT INTO `sys_area` VALUES ('500303', '500303', '工业园区', '500300', '区', '', '023', '400000', '中国,重庆,两江新区,工业园区', '106.626434', '29.555540', 'Gongyeyuanqu', '工业园区', '0');
INSERT INTO `sys_area` VALUES ('510000', '510000', '四川省', '100000', '省', '', '', '', '中国,四川省', '104.065735', '30.659462', 'Sichuan', '四川', '0');
INSERT INTO `sys_area` VALUES ('510100', '510100', '成都市', '510000', '市', '', '028', '610015', '中国,四川省,成都市', '104.065735', '30.659462', 'Chengdu', '成都', '0');
INSERT INTO `sys_area` VALUES ('510104', '510104', '锦江区', '510100', '区', '', '028', '610021', '中国,四川省,成都市,锦江区', '104.083470', '30.656140', 'Jinjiang', '锦江', '0');
INSERT INTO `sys_area` VALUES ('510105', '510105', '青羊区', '510100', '区', '', '028', '610031', '中国,四川省,成都市,青羊区', '104.061510', '30.673870', 'Qingyang', '青羊', '0');
INSERT INTO `sys_area` VALUES ('510106', '510106', '金牛区', '510100', '区', '', '028', '610036', '中国,四川省,成都市,金牛区', '104.051140', '30.691260', 'Jinniu', '金牛', '0');
INSERT INTO `sys_area` VALUES ('510107', '510107', '武侯区', '510100', '区', '', '028', '610041', '中国,四川省,成都市,武侯区', '104.043030', '30.642350', 'Wuhou', '武侯', '0');
INSERT INTO `sys_area` VALUES ('510108', '510108', '成华区', '510100', '区', '', '028', '610066', '中国,四川省,成都市,成华区', '104.101930', '30.659930', 'Chenghua', '成华', '0');
INSERT INTO `sys_area` VALUES ('510112', '510112', '龙泉驿区', '510100', '区', '', '028', '610100', '中国,四川省,成都市,龙泉驿区', '104.274620', '30.556580', 'Longquanyi', '龙泉驿', '0');
INSERT INTO `sys_area` VALUES ('510113', '510113', '青白江区', '510100', '区', '', '028', '610300', '中国,四川省,成都市,青白江区', '104.251000', '30.878410', 'Qingbaijiang', '青白江', '0');
INSERT INTO `sys_area` VALUES ('510114', '510114', '新都区', '510100', '区', '', '028', '610500', '中国,四川省,成都市,新都区', '104.159210', '30.823140', 'Xindu', '新都', '0');
INSERT INTO `sys_area` VALUES ('510115', '510115', '温江区', '510100', '区', '', '028', '611130', '中国,四川省,成都市,温江区', '103.848810', '30.684440', 'Wenjiang', '温江', '0');
INSERT INTO `sys_area` VALUES ('510121', '510121', '金堂县', '510100', '区', '', '028', '610400', '中国,四川省,成都市,金堂县', '104.411950', '30.861950', 'Jintang', '金堂', '0');
INSERT INTO `sys_area` VALUES ('510122', '510122', '双流县', '510100', '区', '', '028', '610200', '中国,四川省,成都市,双流县', '103.923730', '30.574440', 'Shuangliu', '双流', '0');
INSERT INTO `sys_area` VALUES ('510124', '510124', '郫县', '510100', '区', '', '028', '611730', '中国,四川省,成都市,郫县', '103.887170', '30.810540', 'Pixian', '郫县', '0');
INSERT INTO `sys_area` VALUES ('510129', '510129', '大邑县', '510100', '区', '', '028', '611330', '中国,四川省,成都市,大邑县', '103.520750', '30.587380', 'Dayi', '大邑', '0');
INSERT INTO `sys_area` VALUES ('510131', '510131', '蒲江县', '510100', '区', '', '028', '611630', '中国,四川省,成都市,蒲江县', '103.506160', '30.196670', 'Pujiang', '蒲江', '0');
INSERT INTO `sys_area` VALUES ('510132', '510132', '新津县', '510100', '区', '', '028', '611430', '中国,四川省,成都市,新津县', '103.811400', '30.409830', 'Xinjin', '新津', '0');
INSERT INTO `sys_area` VALUES ('510181', '510181', '都江堰市', '510100', '区', '', '028', '611830', '中国,四川省,成都市,都江堰市', '103.619410', '30.998250', 'Dujiangyan', '都江堰', '0');
INSERT INTO `sys_area` VALUES ('510182', '510182', '彭州市', '510100', '区', '', '028', '611930', '中国,四川省,成都市,彭州市', '103.958000', '30.990110', 'Pengzhou', '彭州', '0');
INSERT INTO `sys_area` VALUES ('510183', '510183', '邛崃市', '510100', '区', '', '028', '611530', '中国,四川省,成都市,邛崃市', '103.462830', '30.414890', 'Qionglai', '邛崃', '0');
INSERT INTO `sys_area` VALUES ('510184', '510184', '崇州市', '510100', '区', '', '028', '611230', '中国,四川省,成都市,崇州市', '103.672850', '30.630140', 'Chongzhou', '崇州', '0');
INSERT INTO `sys_area` VALUES ('510300', '510300', '自贡市', '510000', '市', '', '0813', '643000', '中国,四川省,自贡市', '104.773447', '29.352765', 'Zigong', '自贡', '0');
INSERT INTO `sys_area` VALUES ('510302', '510302', '自流井区', '510300', '区', '', '0813', '643000', '中国,四川省,自贡市,自流井区', '104.777190', '29.337450', 'Ziliujing', '自流井', '0');
INSERT INTO `sys_area` VALUES ('510303', '510303', '贡井区', '510300', '区', '', '0813', '643020', '中国,四川省,自贡市,贡井区', '104.715360', '29.345760', 'Gongjing', '贡井', '0');
INSERT INTO `sys_area` VALUES ('510304', '510304', '大安区', '510300', '区', '', '0813', '643010', '中国,四川省,自贡市,大安区', '104.773830', '29.363640', 'Da\'an', '大安', '0');
INSERT INTO `sys_area` VALUES ('510311', '510311', '沿滩区', '510300', '区', '', '0813', '643030', '中国,四川省,自贡市,沿滩区', '104.880120', '29.266110', 'Yantan', '沿滩', '0');
INSERT INTO `sys_area` VALUES ('510321', '510321', '荣县', '510300', '区', '', '0813', '643100', '中国,四川省,自贡市,荣县', '104.417600', '29.444450', 'Rongxian', '荣县', '0');
INSERT INTO `sys_area` VALUES ('510322', '510322', '富顺县', '510300', '区', '', '0813', '643200', '中国,四川省,自贡市,富顺县', '104.974910', '29.181230', 'Fushun', '富顺', '0');
INSERT INTO `sys_area` VALUES ('510400', '510400', '攀枝花市', '510000', '市', '', '0812', '617000', '中国,四川省,攀枝花市', '101.716007', '26.580446', 'Panzhihua', '攀枝花', '0');
INSERT INTO `sys_area` VALUES ('510402', '510402', '东区', '510400', '区', '', '0812', '617067', '中国,四川省,攀枝花市,东区', '101.705200', '26.546770', 'Dongqu', '东区', '0');
INSERT INTO `sys_area` VALUES ('510403', '510403', '西区', '510400', '区', '', '0812', '617068', '中国,四川省,攀枝花市,西区', '101.630580', '26.597530', 'Xiqu', '西区', '0');
INSERT INTO `sys_area` VALUES ('510411', '510411', '仁和区', '510400', '区', '', '0812', '617061', '中国,四川省,攀枝花市,仁和区', '101.738120', '26.498410', 'Renhe', '仁和', '0');
INSERT INTO `sys_area` VALUES ('510421', '510421', '米易县', '510400', '区', '', '0812', '617200', '中国,四川省,攀枝花市,米易县', '102.111320', '26.887180', 'Miyi', '米易', '0');
INSERT INTO `sys_area` VALUES ('510422', '510422', '盐边县', '510400', '区', '', '0812', '617100', '中国,四川省,攀枝花市,盐边县', '101.854460', '26.688470', 'Yanbian', '盐边', '0');
INSERT INTO `sys_area` VALUES ('510500', '510500', '泸州市', '510000', '市', '', '0830', '646000', '中国,四川省,泸州市', '105.443348', '28.889138', 'Luzhou', '泸州', '0');
INSERT INTO `sys_area` VALUES ('510502', '510502', '江阳区', '510500', '区', '', '0830', '646000', '中国,四川省,泸州市,江阳区', '105.453360', '28.889340', 'Jiangyang', '江阳', '0');
INSERT INTO `sys_area` VALUES ('510503', '510503', '纳溪区', '510500', '区', '', '0830', '646300', '中国,四川省,泸州市,纳溪区', '105.372550', '28.773430', 'Naxi', '纳溪', '0');
INSERT INTO `sys_area` VALUES ('510504', '510504', '龙马潭区', '510500', '区', '', '0830', '646000', '中国,四川省,泸州市,龙马潭区', '105.437740', '28.913080', 'Longmatan', '龙马潭', '0');
INSERT INTO `sys_area` VALUES ('510521', '510521', '泸县', '510500', '区', '', '0830', '646106', '中国,四川省,泸州市,泸县', '105.381920', '29.150410', 'Luxian', '泸县', '0');
INSERT INTO `sys_area` VALUES ('510522', '510522', '合江县', '510500', '区', '', '0830', '646200', '中国,四川省,泸州市,合江县', '105.835200', '28.810050', 'Hejiang', '合江', '0');
INSERT INTO `sys_area` VALUES ('510524', '510524', '叙永县', '510500', '区', '', '0830', '646400', '中国,四川省,泸州市,叙永县', '105.444730', '28.155860', 'Xuyong', '叙永', '0');
INSERT INTO `sys_area` VALUES ('510525', '510525', '古蔺县', '510500', '区', '', '0830', '646500', '中国,四川省,泸州市,古蔺县', '105.813470', '28.038670', 'Gulin', '古蔺', '0');
INSERT INTO `sys_area` VALUES ('510600', '510600', '德阳市', '510000', '市', '', '0838', '618000', '中国,四川省,德阳市', '104.398651', '31.127991', 'Deyang', '德阳', '0');
INSERT INTO `sys_area` VALUES ('510603', '510603', '旌阳区', '510600', '区', '', '0838', '618000', '中国,四川省,德阳市,旌阳区', '104.393670', '31.139060', 'Jingyang', '旌阳', '0');
INSERT INTO `sys_area` VALUES ('510623', '510623', '中江县', '510600', '区', '', '0838', '618100', '中国,四川省,德阳市,中江县', '104.678610', '31.032970', 'Zhongjiang', '中江', '0');
INSERT INTO `sys_area` VALUES ('510626', '510626', '罗江县', '510600', '区', '', '0838', '618500', '中国,四川省,德阳市,罗江县', '104.510250', '31.316650', 'Luojiang', '罗江', '0');
INSERT INTO `sys_area` VALUES ('510681', '510681', '广汉市', '510600', '区', '', '0838', '618300', '中国,四川省,德阳市,广汉市', '104.282340', '30.976860', 'Guanghan', '广汉', '0');
INSERT INTO `sys_area` VALUES ('510682', '510682', '什邡市', '510600', '区', '', '0838', '618400', '中国,四川省,德阳市,什邡市', '104.167540', '31.126400', 'Shifang', '什邡', '0');
INSERT INTO `sys_area` VALUES ('510683', '510683', '绵竹市', '510600', '区', '', '0838', '618200', '中国,四川省,德阳市,绵竹市', '104.220760', '31.337720', 'Mianzhu', '绵竹', '0');
INSERT INTO `sys_area` VALUES ('510700', '510700', '绵阳市', '510000', '市', '', '0816', '621000', '中国,四川省,绵阳市', '104.741722', '31.464020', 'Mianyang', '绵阳', '0');
INSERT INTO `sys_area` VALUES ('510703', '510703', '涪城区', '510700', '区', '', '0816', '621000', '中国,四川省,绵阳市,涪城区', '104.757190', '31.455220', 'Fucheng', '涪城', '0');
INSERT INTO `sys_area` VALUES ('510704', '510704', '游仙区', '510700', '区', '', '0816', '621022', '中国,四川省,绵阳市,游仙区', '104.770920', '31.465740', 'Youxian', '游仙', '0');
INSERT INTO `sys_area` VALUES ('510722', '510722', '三台县', '510700', '区', '', '0816', '621100', '中国,四川省,绵阳市,三台县', '105.090790', '31.091790', 'Santai', '三台', '0');
INSERT INTO `sys_area` VALUES ('510723', '510723', '盐亭县', '510700', '区', '', '0816', '621600', '中国,四川省,绵阳市,盐亭县', '105.389800', '31.221760', 'Yanting', '盐亭', '0');
INSERT INTO `sys_area` VALUES ('510724', '510724', '安县', '510700', '区', '', '0816', '622650', '中国,四川省,绵阳市,安县', '104.567380', '31.534870', 'Anxian', '安县', '0');
INSERT INTO `sys_area` VALUES ('510725', '510725', '梓潼县', '510700', '区', '', '0816', '622150', '中国,四川省,绵阳市,梓潼县', '105.161830', '31.635900', 'Zitong', '梓潼', '0');
INSERT INTO `sys_area` VALUES ('510726', '510726', '北川羌族自治县', '510700', '区', '', '0816', '622750', '中国,四川省,绵阳市,北川羌族自治县', '104.464080', '31.832860', 'Beichuan', '北川', '0');
INSERT INTO `sys_area` VALUES ('510727', '510727', '平武县', '510700', '区', '', '0816', '622550', '中国,四川省,绵阳市,平武县', '104.528620', '32.407910', 'Pingwu', '平武', '0');
INSERT INTO `sys_area` VALUES ('510781', '510781', '江油市', '510700', '区', '', '0816', '621700', '中国,四川省,绵阳市,江油市', '104.745390', '31.777750', 'Jiangyou', '江油', '0');
INSERT INTO `sys_area` VALUES ('510800', '510800', '广元市', '510000', '市', '', '0839', '628000', '中国,四川省,广元市', '105.829757', '32.433668', 'Guangyuan', '广元', '0');
INSERT INTO `sys_area` VALUES ('510802', '510802', '利州区', '510800', '区', '', '0839', '628017', '中国,四川省,广元市,利州区', '105.826194', '32.432276', 'Lizhou', '利州', '0');
INSERT INTO `sys_area` VALUES ('510811', '510811', '昭化区', '510800', '区', '', '0839', '628017', '中国,四川省,广元市,昭化区', '105.640491', '32.386518', 'Zhaohua', '昭化', '0');
INSERT INTO `sys_area` VALUES ('510812', '510812', '朝天区', '510800', '区', '', '0839', '628017', '中国,四川省,广元市,朝天区', '105.892730', '32.643980', 'Chaotian', '朝天', '0');
INSERT INTO `sys_area` VALUES ('510821', '510821', '旺苍县', '510800', '区', '', '0839', '628200', '中国,四川省,广元市,旺苍县', '106.290220', '32.228450', 'Wangcang', '旺苍', '0');
INSERT INTO `sys_area` VALUES ('510822', '510822', '青川县', '510800', '区', '', '0839', '628100', '中国,四川省,广元市,青川县', '105.239100', '32.585630', 'Qingchuan', '青川', '0');
INSERT INTO `sys_area` VALUES ('510823', '510823', '剑阁县', '510800', '区', '', '0839', '628300', '中国,四川省,广元市,剑阁县', '105.525200', '32.288450', 'Jiange', '剑阁', '0');
INSERT INTO `sys_area` VALUES ('510824', '510824', '苍溪县', '510800', '区', '', '0839', '628400', '中国,四川省,广元市,苍溪县', '105.936000', '31.732090', 'Cangxi', '苍溪', '0');
INSERT INTO `sys_area` VALUES ('510900', '510900', '遂宁市', '510000', '市', '', '0825', '629000', '中国,四川省,遂宁市', '105.571331', '30.513311', 'Suining', '遂宁', '0');
INSERT INTO `sys_area` VALUES ('510903', '510903', '船山区', '510900', '区', '', '0825', '629000', '中国,四川省,遂宁市,船山区', '105.580900', '30.499910', 'Chuanshan', '船山', '0');
INSERT INTO `sys_area` VALUES ('510904', '510904', '安居区', '510900', '区', '', '0825', '629000', '中国,四川省,遂宁市,安居区', '105.464020', '30.357780', 'Anju', '安居', '0');
INSERT INTO `sys_area` VALUES ('510921', '510921', '蓬溪县', '510900', '区', '', '0825', '629100', '中国,四川省,遂宁市,蓬溪县', '105.707520', '30.757750', 'Pengxi', '蓬溪', '0');
INSERT INTO `sys_area` VALUES ('510922', '510922', '射洪县', '510900', '区', '', '0825', '629200', '中国,四川省,遂宁市,射洪县', '105.389220', '30.872030', 'Shehong', '射洪', '0');
INSERT INTO `sys_area` VALUES ('510923', '510923', '大英县', '510900', '区', '', '0825', '629300', '中国,四川省,遂宁市,大英县', '105.243460', '30.594340', 'Daying', '大英', '0');
INSERT INTO `sys_area` VALUES ('511000', '511000', '内江市', '510000', '市', '', '0832', '641000', '中国,四川省,内江市', '105.066138', '29.587080', 'Neijiang', '内江', '0');
INSERT INTO `sys_area` VALUES ('511002', '511002', '市中区', '511000', '区', '', '0832', '641000', '中国,四川省,内江市,市中区', '105.067900', '29.587090', 'Shizhongqu', '市中区', '0');
INSERT INTO `sys_area` VALUES ('511011', '511011', '东兴区', '511000', '区', '', '0832', '641100', '中国,四川省,内江市,东兴区', '105.075540', '29.592780', 'Dongxing', '东兴', '0');
INSERT INTO `sys_area` VALUES ('511024', '511024', '威远县', '511000', '区', '', '0832', '642450', '中国,四川省,内江市,威远县', '104.669550', '29.528230', 'Weiyuan', '威远', '0');
INSERT INTO `sys_area` VALUES ('511025', '511025', '资中县', '511000', '区', '', '0832', '641200', '中国,四川省,内江市,资中县', '104.852050', '29.764090', 'Zizhong', '资中', '0');
INSERT INTO `sys_area` VALUES ('511028', '511028', '隆昌县', '511000', '区', '', '0832', '642150', '中国,四川省,内江市,隆昌县', '105.287380', '29.339370', 'Longchang', '隆昌', '0');
INSERT INTO `sys_area` VALUES ('511100', '511100', '乐山市', '510000', '市', '', '0833', '614000', '中国,四川省,乐山市', '103.761263', '29.582024', 'Leshan', '乐山', '0');
INSERT INTO `sys_area` VALUES ('511102', '511102', '市中区', '511100', '区', '', '0833', '614000', '中国,四川省,乐山市,市中区', '103.761590', '29.555430', 'Shizhongqu', '市中区', '0');
INSERT INTO `sys_area` VALUES ('511111', '511111', '沙湾区', '511100', '区', '', '0833', '614900', '中国,四川省,乐山市,沙湾区', '103.548730', '29.411940', 'Shawan', '沙湾', '0');
INSERT INTO `sys_area` VALUES ('511112', '511112', '五通桥区', '511100', '区', '', '0833', '614800', '中国,四川省,乐山市,五通桥区', '103.823450', '29.403440', 'Wutongqiao', '五通桥', '0');
INSERT INTO `sys_area` VALUES ('511113', '511113', '金口河区', '511100', '区', '', '0833', '614700', '中国,四川省,乐山市,金口河区', '103.078580', '29.245780', 'Jinkouhe', '金口河', '0');
INSERT INTO `sys_area` VALUES ('511123', '511123', '犍为县', '511100', '区', '', '0833', '614400', '中国,四川省,乐山市,犍为县', '103.949890', '29.209730', 'Qianwei', '犍为', '0');
INSERT INTO `sys_area` VALUES ('511124', '511124', '井研县', '511100', '区', '', '0833', '613100', '中国,四川省,乐山市,井研县', '104.070190', '29.652280', 'Jingyan', '井研', '0');
INSERT INTO `sys_area` VALUES ('511126', '511126', '夹江县', '511100', '区', '', '0833', '614100', '中国,四川省,乐山市,夹江县', '103.571990', '29.738680', 'Jiajiang', '夹江', '0');
INSERT INTO `sys_area` VALUES ('511129', '511129', '沐川县', '511100', '区', '', '0833', '614500', '中国,四川省,乐山市,沐川县', '103.903530', '28.956460', 'Muchuan', '沐川', '0');
INSERT INTO `sys_area` VALUES ('511132', '511132', '峨边彝族自治县', '511100', '区', '', '0833', '614300', '中国,四川省,乐山市,峨边彝族自治县', '103.263390', '29.230040', 'Ebian', '峨边', '0');
INSERT INTO `sys_area` VALUES ('511133', '511133', '马边彝族自治县', '511100', '区', '', '0833', '614600', '中国,四川省,乐山市,马边彝族自治县', '103.546170', '28.835930', 'Mabian', '马边', '0');
INSERT INTO `sys_area` VALUES ('511181', '511181', '峨眉山市', '511100', '区', '', '0833', '614200', '中国,四川省,乐山市,峨眉山市', '103.484400', '29.601170', 'Emeishan', '峨眉山', '0');
INSERT INTO `sys_area` VALUES ('511300', '511300', '南充市', '510000', '市', '', '0817', '637000', '中国,四川省,南充市', '106.082974', '30.795281', 'Nanchong', '南充', '0');
INSERT INTO `sys_area` VALUES ('511302', '511302', '顺庆区', '511300', '区', '', '0817', '637000', '中国,四川省,南充市,顺庆区', '106.092160', '30.796420', 'Shunqing', '顺庆', '0');
INSERT INTO `sys_area` VALUES ('511303', '511303', '高坪区', '511300', '区', '', '0817', '637100', '中国,四川省,南充市,高坪区', '106.118940', '30.781620', 'Gaoping', '高坪', '0');
INSERT INTO `sys_area` VALUES ('511304', '511304', '嘉陵区', '511300', '区', '', '0817', '637100', '中国,四川省,南充市,嘉陵区', '106.071410', '30.758480', 'Jialing', '嘉陵', '0');
INSERT INTO `sys_area` VALUES ('511321', '511321', '南部县', '511300', '区', '', '0817', '637300', '中国,四川省,南充市,南部县', '106.067380', '31.354510', 'Nanbu', '南部', '0');
INSERT INTO `sys_area` VALUES ('511322', '511322', '营山县', '511300', '区', '', '0817', '637700', '中国,四川省,南充市,营山县', '106.566370', '31.077470', 'Yingshan', '营山', '0');
INSERT INTO `sys_area` VALUES ('511323', '511323', '蓬安县', '511300', '区', '', '0817', '637800', '中国,四川省,南充市,蓬安县', '106.412620', '31.029640', 'Peng\'an', '蓬安', '0');
INSERT INTO `sys_area` VALUES ('511324', '511324', '仪陇县', '511300', '区', '', '0817', '637600', '中国,四川省,南充市,仪陇县', '106.299740', '31.276280', 'Yilong', '仪陇', '0');
INSERT INTO `sys_area` VALUES ('511325', '511325', '西充县', '511300', '区', '', '0817', '637200', '中国,四川省,南充市,西充县', '105.899960', '30.996900', 'Xichong', '西充', '0');
INSERT INTO `sys_area` VALUES ('511381', '511381', '阆中市', '511300', '区', '', '0817', '637400', '中国,四川省,南充市,阆中市', '106.004940', '31.558320', 'Langzhong', '阆中', '0');
INSERT INTO `sys_area` VALUES ('511400', '511400', '眉山市', '510000', '市', '', '028', '620020', '中国,四川省,眉山市', '103.831788', '30.048318', 'Meishan', '眉山', '0');
INSERT INTO `sys_area` VALUES ('511402', '511402', '东坡区', '511400', '区', '', '028', '620010', '中国,四川省,眉山市,东坡区', '103.832000', '30.042190', 'Dongpo', '东坡', '0');
INSERT INTO `sys_area` VALUES ('511403', '511403', '彭山区', '511400', '区', '', '028', '620860', '中国,四川省,眉山市,彭山区', '103.872680', '30.192830', 'Pengshan', '彭山', '0');
INSERT INTO `sys_area` VALUES ('511421', '511421', '仁寿县', '511400', '区', '', '028', '620500', '中国,四川省,眉山市,仁寿县', '104.134120', '29.995990', 'Renshou', '仁寿', '0');
INSERT INTO `sys_area` VALUES ('511423', '511423', '洪雅县', '511400', '区', '', '028', '620360', '中国,四川省,眉山市,洪雅县', '103.373130', '29.906610', 'Hongya', '洪雅', '0');
INSERT INTO `sys_area` VALUES ('511424', '511424', '丹棱县', '511400', '区', '', '028', '620200', '中国,四川省,眉山市,丹棱县', '103.513390', '30.015620', 'Danling', '丹棱', '0');
INSERT INTO `sys_area` VALUES ('511425', '511425', '青神县', '511400', '区', '', '028', '620460', '中国,四川省,眉山市,青神县', '103.847710', '29.832350', 'Qingshen', '青神', '0');
INSERT INTO `sys_area` VALUES ('511500', '511500', '宜宾市', '510000', '市', '', '0831', '644000', '中国,四川省,宜宾市', '104.630825', '28.760189', 'Yibin', '宜宾', '0');
INSERT INTO `sys_area` VALUES ('511502', '511502', '翠屏区', '511500', '区', '', '0831', '644000', '中国,四川省,宜宾市,翠屏区', '104.619780', '28.765660', 'Cuiping', '翠屏', '0');
INSERT INTO `sys_area` VALUES ('511503', '511503', '南溪区', '511500', '区', '', '0831', '644100', '中国,四川省,宜宾市,南溪区', '104.981133', '28.839806', 'Nanxi', '南溪', '0');
INSERT INTO `sys_area` VALUES ('511521', '511521', '宜宾县', '511500', '区', '', '0831', '644600', '中国,四川省,宜宾市,宜宾县', '104.533140', '28.689960', 'Yibin', '宜宾', '0');
INSERT INTO `sys_area` VALUES ('511523', '511523', '江安县', '511500', '区', '', '0831', '644200', '中国,四川省,宜宾市,江安县', '105.066830', '28.723850', 'Jiang\'an', '江安', '0');
INSERT INTO `sys_area` VALUES ('511524', '511524', '长宁县', '511500', '区', '', '0831', '644300', '中国,四川省,宜宾市,长宁县', '104.925200', '28.577770', 'Changning', '长宁', '0');
INSERT INTO `sys_area` VALUES ('511525', '511525', '高县', '511500', '区', '', '0831', '645150', '中国,四川省,宜宾市,高县', '104.517540', '28.436190', 'Gaoxian', '高县', '0');
INSERT INTO `sys_area` VALUES ('511526', '511526', '珙县', '511500', '区', '', '0831', '644500', '中国,四川省,宜宾市,珙县', '104.713980', '28.445120', 'Gongxian', '珙县', '0');
INSERT INTO `sys_area` VALUES ('511527', '511527', '筠连县', '511500', '区', '', '0831', '645250', '中国,四川省,宜宾市,筠连县', '104.512170', '28.164950', 'Junlian', '筠连', '0');
INSERT INTO `sys_area` VALUES ('511528', '511528', '兴文县', '511500', '区', '', '0831', '644400', '中国,四川省,宜宾市,兴文县', '105.236750', '28.304400', 'Xingwen', '兴文', '0');
INSERT INTO `sys_area` VALUES ('511529', '511529', '屏山县', '511500', '区', '', '0831', '645350', '中国,四川省,宜宾市,屏山县', '104.162930', '28.643690', 'Pingshan', '屏山', '0');
INSERT INTO `sys_area` VALUES ('511600', '511600', '广安市', '510000', '市', '', '0826', '638000', '中国,四川省,广安市', '106.633369', '30.456398', 'Guang\'an', '广安', '0');
INSERT INTO `sys_area` VALUES ('511602', '511602', '广安区', '511600', '区', '', '0826', '638000', '中国,四川省,广安市,广安区', '106.641630', '30.473890', 'Guang\'an', '广安', '0');
INSERT INTO `sys_area` VALUES ('511603', '511603', '前锋区', '511600', '区', '', '0826', '638019', '中国,四川省,广安市,前锋区', '106.893537', '30.494572', 'Qianfeng', '前锋', '0');
INSERT INTO `sys_area` VALUES ('511621', '511621', '岳池县', '511600', '区', '', '0826', '638300', '中国,四川省,广安市,岳池县', '106.440790', '30.539180', 'Yuechi', '岳池', '0');
INSERT INTO `sys_area` VALUES ('511622', '511622', '武胜县', '511600', '区', '', '0826', '638400', '中国,四川省,广安市,武胜县', '106.295920', '30.349320', 'Wusheng', '武胜', '0');
INSERT INTO `sys_area` VALUES ('511623', '511623', '邻水县', '511600', '区', '', '0826', '638500', '中国,四川省,广安市,邻水县', '106.929680', '30.334490', 'Linshui', '邻水', '0');
INSERT INTO `sys_area` VALUES ('511681', '511681', '华蓥市', '511600', '区', '', '0826', '638600', '中国,四川省,广安市,华蓥市', '106.784660', '30.390070', 'Huaying', '华蓥', '0');
INSERT INTO `sys_area` VALUES ('511700', '511700', '达州市', '510000', '市', '', '0818', '635000', '中国,四川省,达州市', '107.502262', '31.209484', 'Dazhou', '达州', '0');
INSERT INTO `sys_area` VALUES ('511702', '511702', '通川区', '511700', '区', '', '0818', '635000', '中国,四川省,达州市,通川区', '107.504560', '31.214690', 'Tongchuan', '通川', '0');
INSERT INTO `sys_area` VALUES ('511703', '511703', '达川区', '511700', '区', '', '0818', '635000', '中国,四川省,达州市,达川区', '107.502262', '31.209484', 'Dachuan', '达川', '0');
INSERT INTO `sys_area` VALUES ('511722', '511722', '宣汉县', '511700', '区', '', '0818', '636150', '中国,四川省,达州市,宣汉县', '107.727750', '31.355160', 'Xuanhan', '宣汉', '0');
INSERT INTO `sys_area` VALUES ('511723', '511723', '开江县', '511700', '区', '', '0818', '636250', '中国,四川省,达州市,开江县', '107.868890', '31.084100', 'Kaijiang', '开江', '0');
INSERT INTO `sys_area` VALUES ('511724', '511724', '大竹县', '511700', '区', '', '0818', '635100', '中国,四川省,达州市,大竹县', '107.208550', '30.741470', 'Dazhu', '大竹', '0');
INSERT INTO `sys_area` VALUES ('511725', '511725', '渠县', '511700', '区', '', '0818', '635200', '中国,四川省,达州市,渠县', '106.973810', '30.837600', 'Quxian', '渠县', '0');
INSERT INTO `sys_area` VALUES ('511781', '511781', '万源市', '511700', '区', '', '0818', '636350', '中国,四川省,达州市,万源市', '108.035980', '32.080910', 'Wanyuan', '万源', '0');
INSERT INTO `sys_area` VALUES ('511800', '511800', '雅安市', '510000', '市', '', '0835', '625000', '中国,四川省,雅安市', '103.001033', '29.987722', 'Ya\'an', '雅安', '0');
INSERT INTO `sys_area` VALUES ('511802', '511802', '雨城区', '511800', '区', '', '0835', '625000', '中国,四川省,雅安市,雨城区', '103.033050', '30.005310', 'Yucheng', '雨城', '0');
INSERT INTO `sys_area` VALUES ('511803', '511803', '名山区', '511800', '区', '', '0835', '625100', '中国,四川省,雅安市,名山区', '103.112214', '30.084718', 'Mingshan', '名山', '0');
INSERT INTO `sys_area` VALUES ('511822', '511822', '荥经县', '511800', '区', '', '0835', '625200', '中国,四川省,雅安市,荥经县', '102.846520', '29.794020', 'Yingjing', '荥经', '0');
INSERT INTO `sys_area` VALUES ('511823', '511823', '汉源县', '511800', '区', '', '0835', '625300', '中国,四川省,雅安市,汉源县', '102.678400', '29.351680', 'Hanyuan', '汉源', '0');
INSERT INTO `sys_area` VALUES ('511824', '511824', '石棉县', '511800', '区', '', '0835', '625400', '中国,四川省,雅安市,石棉县', '102.359430', '29.227960', 'Shimian', '石棉', '0');
INSERT INTO `sys_area` VALUES ('511825', '511825', '天全县', '511800', '区', '', '0835', '625500', '中国,四川省,雅安市,天全县', '102.759060', '30.067540', 'Tianquan', '天全', '0');
INSERT INTO `sys_area` VALUES ('511826', '511826', '芦山县', '511800', '区', '', '0835', '625600', '中国,四川省,雅安市,芦山县', '102.927910', '30.143690', 'Lushan', '芦山', '0');
INSERT INTO `sys_area` VALUES ('511827', '511827', '宝兴县', '511800', '区', '', '0835', '625700', '中国,四川省,雅安市,宝兴县', '102.815550', '30.368360', 'Baoxing', '宝兴', '0');
INSERT INTO `sys_area` VALUES ('511900', '511900', '巴中市', '510000', '市', '', '0827', '636000', '中国,四川省,巴中市', '106.753669', '31.858809', 'Bazhong', '巴中', '0');
INSERT INTO `sys_area` VALUES ('511902', '511902', '巴州区', '511900', '区', '', '0827', '636001', '中国,四川省,巴中市,巴州区', '106.768890', '31.851250', 'Bazhou', '巴州', '0');
INSERT INTO `sys_area` VALUES ('511903', '511903', '恩阳区', '511900', '区', '', '0827', '636064', '中国,四川省,巴中市,恩阳区', '106.753669', '31.858809', 'Enyang', '恩阳', '0');
INSERT INTO `sys_area` VALUES ('511921', '511921', '通江县', '511900', '区', '', '0827', '636700', '中国,四川省,巴中市,通江县', '107.243980', '31.912940', 'Tongjiang', '通江', '0');
INSERT INTO `sys_area` VALUES ('511922', '511922', '南江县', '511900', '区', '', '0827', '636600', '中国,四川省,巴中市,南江县', '106.841640', '32.353350', 'Nanjiang', '南江', '0');
INSERT INTO `sys_area` VALUES ('511923', '511923', '平昌县', '511900', '区', '', '0827', '636400', '中国,四川省,巴中市,平昌县', '107.104240', '31.559400', 'Pingchang', '平昌', '0');
INSERT INTO `sys_area` VALUES ('512000', '512000', '资阳市', '510000', '市', '', '028', '641300', '中国,四川省,资阳市', '104.641917', '30.122211', 'Ziyang', '资阳', '0');
INSERT INTO `sys_area` VALUES ('512002', '512002', '雁江区', '512000', '区', '', '028', '641300', '中国,四川省,资阳市,雁江区', '104.652160', '30.115250', 'Yanjiang', '雁江', '0');
INSERT INTO `sys_area` VALUES ('512021', '512021', '安岳县', '512000', '区', '', '028', '642350', '中国,四川省,资阳市,安岳县', '105.336300', '30.097860', 'Anyue', '安岳', '0');
INSERT INTO `sys_area` VALUES ('512022', '512022', '乐至县', '512000', '区', '', '028', '641500', '中国,四川省,资阳市,乐至县', '105.032070', '30.272270', 'Lezhi', '乐至', '0');
INSERT INTO `sys_area` VALUES ('512081', '512081', '简阳市', '512000', '区', '', '028', '641400', '中国,四川省,资阳市,简阳市', '104.548640', '30.390400', 'Jianyang', '简阳', '0');
INSERT INTO `sys_area` VALUES ('513200', '513200', '阿坝藏族羌族自治州', '510000', '市', '', '0837', '624000', '中国,四川省,阿坝藏族羌族自治州', '102.221374', '31.899792', 'Aba', '阿坝', '0');
INSERT INTO `sys_area` VALUES ('513221', '513221', '汶川县', '513200', '区', '', '0837', '623000', '中国,四川省,阿坝藏族羌族自治州,汶川县', '103.590790', '31.473260', 'Wenchuan', '汶川', '0');
INSERT INTO `sys_area` VALUES ('513222', '513222', '理县', '513200', '区', '', '0837', '623100', '中国,四川省,阿坝藏族羌族自治州,理县', '103.171750', '31.436030', 'Lixian', '理县', '0');
INSERT INTO `sys_area` VALUES ('513223', '513223', '茂县', '513200', '区', '', '0837', '623200', '中国,四川省,阿坝藏族羌族自治州,茂县', '103.853720', '31.682000', 'Maoxian', '茂县', '0');
INSERT INTO `sys_area` VALUES ('513224', '513224', '松潘县', '513200', '区', '', '0837', '623300', '中国,四川省,阿坝藏族羌族自治州,松潘县', '103.599240', '32.638710', 'Songpan', '松潘', '0');
INSERT INTO `sys_area` VALUES ('513225', '513225', '九寨沟县', '513200', '区', '', '0837', '623400', '中国,四川省,阿坝藏族羌族自治州,九寨沟县', '104.236720', '33.263180', 'Jiuzhaigou', '九寨沟', '0');
INSERT INTO `sys_area` VALUES ('513226', '513226', '金川县', '513200', '区', '', '0837', '624100', '中国,四川省,阿坝藏族羌族自治州,金川县', '102.065550', '31.476230', 'Jinchuan', '金川', '0');
INSERT INTO `sys_area` VALUES ('513227', '513227', '小金县', '513200', '区', '', '0837', '624200', '中国,四川省,阿坝藏族羌族自治州,小金县', '102.364990', '30.999340', 'Xiaojin', '小金', '0');
INSERT INTO `sys_area` VALUES ('513228', '513228', '黑水县', '513200', '区', '', '0837', '623500', '中国,四川省,阿坝藏族羌族自治州,黑水县', '102.991760', '32.061840', 'Heishui', '黑水', '0');
INSERT INTO `sys_area` VALUES ('513229', '513229', '马尔康县', '513200', '区', '', '0837', '624000', '中国,四川省,阿坝藏族羌族自治州,马尔康县', '102.206250', '31.905840', 'Maerkang', '马尔康', '0');
INSERT INTO `sys_area` VALUES ('513230', '513230', '壤塘县', '513200', '区', '', '0837', '624300', '中国,四川省,阿坝藏族羌族自治州,壤塘县', '100.978300', '32.265780', 'Rangtang', '壤塘', '0');
INSERT INTO `sys_area` VALUES ('513231', '513231', '阿坝县', '513200', '区', '', '0837', '624600', '中国,四川省,阿坝藏族羌族自治州,阿坝县', '101.706320', '32.903010', 'Aba', '阿坝', '0');
INSERT INTO `sys_area` VALUES ('513232', '513232', '若尔盖县', '513200', '区', '', '0837', '624500', '中国,四川省,阿坝藏族羌族自治州,若尔盖县', '102.959800', '33.574320', 'Ruoergai', '若尔盖', '0');
INSERT INTO `sys_area` VALUES ('513233', '513233', '红原县', '513200', '区', '', '0837', '624400', '中国,四川省,阿坝藏族羌族自治州,红原县', '102.545250', '32.789890', 'Hongyuan', '红原', '0');
INSERT INTO `sys_area` VALUES ('513300', '513300', '甘孜藏族自治州', '510000', '市', '', '0836', '626000', '中国,四川省,甘孜藏族自治州', '101.963815', '30.050663', 'Garze', '甘孜', '0');
INSERT INTO `sys_area` VALUES ('513321', '513321', '康定县', '513300', '区', '', '0836', '626000', '中国,四川省,甘孜藏族自治州,康定县', '101.964870', '30.055320', 'Kangding', '康定', '0');
INSERT INTO `sys_area` VALUES ('513322', '513322', '泸定县', '513300', '区', '', '0836', '626100', '中国,四川省,甘孜藏族自治州,泸定县', '102.235070', '29.914750', 'Luding', '泸定', '0');
INSERT INTO `sys_area` VALUES ('513323', '513323', '丹巴县', '513300', '区', '', '0836', '626300', '中国,四川省,甘孜藏族自治州,丹巴县', '101.884240', '30.876560', 'Danba', '丹巴', '0');
INSERT INTO `sys_area` VALUES ('513324', '513324', '九龙县', '513300', '区', '', '0836', '626200', '中国,四川省,甘孜藏族自治州,九龙县', '101.508480', '29.000910', 'Jiulong', '九龙', '0');
INSERT INTO `sys_area` VALUES ('513325', '513325', '雅江县', '513300', '区', '', '0836', '627450', '中国,四川省,甘孜藏族自治州,雅江县', '101.014920', '30.032810', 'Yajiang', '雅江', '0');
INSERT INTO `sys_area` VALUES ('513326', '513326', '道孚县', '513300', '区', '', '0836', '626400', '中国,四川省,甘孜藏族自治州,道孚县', '101.125540', '30.980460', 'Daofu', '道孚', '0');
INSERT INTO `sys_area` VALUES ('513327', '513327', '炉霍县', '513300', '区', '', '0836', '626500', '中国,四川省,甘孜藏族自治州,炉霍县', '100.676810', '31.391700', 'Luhuo', '炉霍', '0');
INSERT INTO `sys_area` VALUES ('513328', '513328', '甘孜县', '513300', '区', '', '0836', '626700', '中国,四川省,甘孜藏族自治州,甘孜县', '99.993070', '31.626720', 'Ganzi', '甘孜', '0');
INSERT INTO `sys_area` VALUES ('513329', '513329', '新龙县', '513300', '区', '', '0836', '626800', '中国,四川省,甘孜藏族自治州,新龙县', '100.312500', '30.940670', 'Xinlong', '新龙', '0');
INSERT INTO `sys_area` VALUES ('513330', '513330', '德格县', '513300', '区', '', '0836', '627250', '中国,四川省,甘孜藏族自治州,德格县', '98.580780', '31.806150', 'Dege', '德格', '0');
INSERT INTO `sys_area` VALUES ('513331', '513331', '白玉县', '513300', '区', '', '0836', '627150', '中国,四川省,甘孜藏族自治州,白玉县', '98.825680', '31.209020', 'Baiyu', '白玉', '0');
INSERT INTO `sys_area` VALUES ('513332', '513332', '石渠县', '513300', '区', '', '0836', '627350', '中国,四川省,甘孜藏族自治州,石渠县', '98.101560', '32.978840', 'Shiqu', '石渠', '0');
INSERT INTO `sys_area` VALUES ('513333', '513333', '色达县', '513300', '区', '', '0836', '626600', '中国,四川省,甘孜藏族自治州,色达县', '100.332240', '32.268390', 'Seda', '色达', '0');
INSERT INTO `sys_area` VALUES ('513334', '513334', '理塘县', '513300', '区', '', '0836', '627550', '中国,四川省,甘孜藏族自治州,理塘县', '100.270050', '29.996740', 'Litang', '理塘', '0');
INSERT INTO `sys_area` VALUES ('513335', '513335', '巴塘县', '513300', '区', '', '0836', '627650', '中国,四川省,甘孜藏族自治州,巴塘县', '99.104090', '30.004230', 'Batang', '巴塘', '0');
INSERT INTO `sys_area` VALUES ('513336', '513336', '乡城县', '513300', '区', '', '0836', '627850', '中国,四川省,甘孜藏族自治州,乡城县', '99.799430', '28.935540', 'Xiangcheng', '乡城', '0');
INSERT INTO `sys_area` VALUES ('513337', '513337', '稻城县', '513300', '区', '', '0836', '627750', '中国,四川省,甘孜藏族自治州,稻城县', '100.298090', '29.037900', 'Daocheng', '稻城', '0');
INSERT INTO `sys_area` VALUES ('513338', '513338', '得荣县', '513300', '区', '', '0836', '627950', '中国,四川省,甘孜藏族自治州,得荣县', '99.286280', '28.712970', 'Derong', '得荣', '0');
INSERT INTO `sys_area` VALUES ('513400', '513400', '凉山彝族自治州', '510000', '市', '', '0834', '615000', '中国,四川省,凉山彝族自治州', '102.258746', '27.886762', 'Liangshan', '凉山', '0');
INSERT INTO `sys_area` VALUES ('513401', '513401', '西昌市', '513400', '区', '', '0835', '615000', '中国,四川省,凉山彝族自治州,西昌市', '102.264130', '27.895240', 'Xichang', '西昌', '0');
INSERT INTO `sys_area` VALUES ('513422', '513422', '木里藏族自治县', '513400', '区', '', '0851', '615800', '中国,四川省,凉山彝族自治州,木里藏族自治县', '101.279600', '27.928750', 'Muli', '木里', '0');
INSERT INTO `sys_area` VALUES ('513423', '513423', '盐源县', '513400', '区', '', '0836', '615700', '中国,四川省,凉山彝族自治州,盐源县', '101.509700', '27.421770', 'Yanyuan', '盐源', '0');
INSERT INTO `sys_area` VALUES ('513424', '513424', '德昌县', '513400', '区', '', '0837', '615500', '中国,四川省,凉山彝族自治州,德昌县', '102.180170', '27.404820', 'Dechang', '德昌', '0');
INSERT INTO `sys_area` VALUES ('513425', '513425', '会理县', '513400', '区', '', '0838', '615100', '中国,四川省,凉山彝族自治州,会理县', '102.245390', '26.656270', 'Huili', '会理', '0');
INSERT INTO `sys_area` VALUES ('513426', '513426', '会东县', '513400', '区', '', '0839', '615200', '中国,四川省,凉山彝族自治州,会东县', '102.578150', '26.634290', 'Huidong', '会东', '0');
INSERT INTO `sys_area` VALUES ('513427', '513427', '宁南县', '513400', '区', '', '0840', '615400', '中国,四川省,凉山彝族自治州,宁南县', '102.761160', '27.065670', 'Ningnan', '宁南', '0');
INSERT INTO `sys_area` VALUES ('513428', '513428', '普格县', '513400', '区', '', '0841', '615300', '中国,四川省,凉山彝族自治州,普格县', '102.540550', '27.374850', 'Puge', '普格', '0');
INSERT INTO `sys_area` VALUES ('513429', '513429', '布拖县', '513400', '区', '', '0842', '616350', '中国,四川省,凉山彝族自治州,布拖县', '102.812340', '27.707900', 'Butuo', '布拖', '0');
INSERT INTO `sys_area` VALUES ('513430', '513430', '金阳县', '513400', '区', '', '0843', '616250', '中国,四川省,凉山彝族自治州,金阳县', '103.247740', '27.696980', 'Jinyang', '金阳', '0');
INSERT INTO `sys_area` VALUES ('513431', '513431', '昭觉县', '513400', '区', '', '0844', '616150', '中国,四川省,凉山彝族自治州,昭觉县', '102.846610', '28.011550', 'Zhaojue', '昭觉', '0');
INSERT INTO `sys_area` VALUES ('513432', '513432', '喜德县', '513400', '区', '', '0845', '616750', '中国,四川省,凉山彝族自治州,喜德县', '102.413360', '28.307390', 'Xide', '喜德', '0');
INSERT INTO `sys_area` VALUES ('513433', '513433', '冕宁县', '513400', '区', '', '0846', '615600', '中国,四川省,凉山彝族自治州,冕宁县', '102.171080', '28.551610', 'Mianning', '冕宁', '0');
INSERT INTO `sys_area` VALUES ('513434', '513434', '越西县', '513400', '区', '', '0847', '616650', '中国,四川省,凉山彝族自治州,越西县', '102.507900', '28.641330', 'Yuexi', '越西', '0');
INSERT INTO `sys_area` VALUES ('513435', '513435', '甘洛县', '513400', '区', '', '0848', '616850', '中国,四川省,凉山彝族自治州,甘洛县', '102.771540', '28.966240', 'Ganluo', '甘洛', '0');
INSERT INTO `sys_area` VALUES ('513436', '513436', '美姑县', '513400', '区', '', '0849', '616450', '中国,四川省,凉山彝族自治州,美姑县', '103.131160', '28.325960', 'Meigu', '美姑', '0');
INSERT INTO `sys_area` VALUES ('513437', '513437', '雷波县', '513400', '区', '', '0850', '616550', '中国,四川省,凉山彝族自治州,雷波县', '103.572870', '28.264070', 'Leibo', '雷波', '0');
INSERT INTO `sys_area` VALUES ('520000', '520000', '贵州省', '100000', '省', '', '', '', '中国,贵州省', '106.713478', '26.578343', 'Guizhou', '贵州', '0');
INSERT INTO `sys_area` VALUES ('520100', '520100', '贵阳市', '520000', '市', '', '0851', '550001', '中国,贵州省,贵阳市', '106.713478', '26.578343', 'Guiyang', '贵阳', '0');
INSERT INTO `sys_area` VALUES ('520102', '520102', '南明区', '520100', '区', '', '0851', '550001', '中国,贵州省,贵阳市,南明区', '106.714500', '26.568190', 'Nanming', '南明', '0');
INSERT INTO `sys_area` VALUES ('520103', '520103', '云岩区', '520100', '区', '', '0851', '550001', '中国,贵州省,贵阳市,云岩区', '106.724850', '26.604840', 'Yunyan', '云岩', '0');
INSERT INTO `sys_area` VALUES ('520111', '520111', '花溪区', '520100', '区', '', '0851', '550025', '中国,贵州省,贵阳市,花溪区', '106.676880', '26.433430', 'Huaxi', '花溪', '0');
INSERT INTO `sys_area` VALUES ('520112', '520112', '乌当区', '520100', '区', '', '0851', '550018', '中国,贵州省,贵阳市,乌当区', '106.752100', '26.630200', 'Wudang', '乌当', '0');
INSERT INTO `sys_area` VALUES ('520113', '520113', '白云区', '520100', '区', '', '0851', '550014', '中国,贵州省,贵阳市,白云区', '106.630880', '26.682840', 'Baiyun', '白云', '0');
INSERT INTO `sys_area` VALUES ('520115', '520115', '观山湖区', '520100', '区', '', '0851', '550009', '中国,贵州省,贵阳市,观山湖区', '106.625442', '26.618209', 'Guanshanhu', '观山湖', '0');
INSERT INTO `sys_area` VALUES ('520121', '520121', '开阳县', '520100', '区', '', '0851', '550300', '中国,贵州省,贵阳市,开阳县', '106.969200', '27.055330', 'Kaiyang', '开阳', '0');
INSERT INTO `sys_area` VALUES ('520122', '520122', '息烽县', '520100', '区', '', '0851', '551100', '中国,贵州省,贵阳市,息烽县', '106.738000', '27.093460', 'Xifeng', '息烽', '0');
INSERT INTO `sys_area` VALUES ('520123', '520123', '修文县', '520100', '区', '', '0851', '550200', '中国,贵州省,贵阳市,修文县', '106.594870', '26.837830', 'Xiuwen', '修文', '0');
INSERT INTO `sys_area` VALUES ('520181', '520181', '清镇市', '520100', '区', '', '0851', '551400', '中国,贵州省,贵阳市,清镇市', '106.468620', '26.552610', 'Qingzhen', '清镇', '0');
INSERT INTO `sys_area` VALUES ('520200', '520200', '六盘水市', '520000', '市', '', '0858', '553400', '中国,贵州省,六盘水市', '104.846743', '26.584643', 'Liupanshui', '六盘水', '0');
INSERT INTO `sys_area` VALUES ('520201', '520201', '钟山区', '520200', '区', '', '0858', '553000', '中国,贵州省,六盘水市,钟山区', '104.878480', '26.576990', 'Zhongshan', '钟山', '0');
INSERT INTO `sys_area` VALUES ('520203', '520203', '六枝特区', '520200', '区', '', '0858', '553400', '中国,贵州省,六盘水市,六枝特区', '105.480620', '26.201170', 'Liuzhi', '六枝', '0');
INSERT INTO `sys_area` VALUES ('520221', '520221', '水城县', '520200', '区', '', '0858', '553000', '中国,贵州省,六盘水市,水城县', '104.957640', '26.547850', 'Shuicheng', '水城', '0');
INSERT INTO `sys_area` VALUES ('520222', '520222', '盘县', '520200', '区', '', '0858', '561601', '中国,贵州省,六盘水市,盘县', '104.470610', '25.713600', 'Panxian', '盘县', '0');
INSERT INTO `sys_area` VALUES ('520300', '520300', '遵义市', '520000', '市', '', '0852', '563000', '中国,贵州省,遵义市', '106.937265', '27.706626', 'Zunyi', '遵义', '0');
INSERT INTO `sys_area` VALUES ('520302', '520302', '红花岗区', '520300', '区', '', '0852', '563000', '中国,贵州省,遵义市,红花岗区', '106.894040', '27.644710', 'Honghuagang', '红花岗', '0');
INSERT INTO `sys_area` VALUES ('520303', '520303', '汇川区', '520300', '区', '', '0852', '563000', '中国,贵州省,遵义市,汇川区', '106.939300', '27.706250', 'Huichuan', '汇川', '0');
INSERT INTO `sys_area` VALUES ('520321', '520321', '遵义县', '520300', '区', '', '0852', '563100', '中国,贵州省,遵义市,遵义县', '106.833310', '27.537720', 'Zunyi', '遵义', '0');
INSERT INTO `sys_area` VALUES ('520322', '520322', '桐梓县', '520300', '区', '', '0852', '563200', '中国,贵州省,遵义市,桐梓县', '106.825680', '28.138060', 'Tongzi', '桐梓', '0');
INSERT INTO `sys_area` VALUES ('520323', '520323', '绥阳县', '520300', '区', '', '0852', '563300', '中国,贵州省,遵义市,绥阳县', '107.190640', '27.947020', 'Suiyang', '绥阳', '0');
INSERT INTO `sys_area` VALUES ('520324', '520324', '正安县', '520300', '区', '', '0852', '563400', '中国,贵州省,遵义市,正安县', '107.443570', '28.551200', 'Zheng\'an', '正安', '0');
INSERT INTO `sys_area` VALUES ('520325', '520325', '道真仡佬族苗族自治县', '520300', '区', '', '0852', '563500', '中国,贵州省,遵义市,道真仡佬族苗族自治县', '107.611520', '28.864000', 'Daozhen', '道真', '0');
INSERT INTO `sys_area` VALUES ('520326', '520326', '务川仡佬族苗族自治县', '520300', '区', '', '0852', '564300', '中国,贵州省,遵义市,务川仡佬族苗族自治县', '107.889350', '28.522270', 'Wuchuan', '务川', '0');
INSERT INTO `sys_area` VALUES ('520327', '520327', '凤冈县', '520300', '区', '', '0852', '564200', '中国,贵州省,遵义市,凤冈县', '107.716820', '27.954610', 'Fenggang', '凤冈', '0');
INSERT INTO `sys_area` VALUES ('520328', '520328', '湄潭县', '520300', '区', '', '0852', '564100', '中国,贵州省,遵义市,湄潭县', '107.487790', '27.766760', 'Meitan', '湄潭', '0');
INSERT INTO `sys_area` VALUES ('520329', '520329', '余庆县', '520300', '区', '', '0852', '564400', '中国,贵州省,遵义市,余庆县', '107.888210', '27.225320', 'Yuqing', '余庆', '0');
INSERT INTO `sys_area` VALUES ('520330', '520330', '习水县', '520300', '区', '', '0852', '564600', '中国,贵州省,遵义市,习水县', '106.212670', '28.319760', 'Xishui', '习水', '0');
INSERT INTO `sys_area` VALUES ('520381', '520381', '赤水市', '520300', '区', '', '0852', '564700', '中国,贵州省,遵义市,赤水市', '105.698450', '28.589210', 'Chishui', '赤水', '0');
INSERT INTO `sys_area` VALUES ('520382', '520382', '仁怀市', '520300', '区', '', '0852', '564500', '中国,贵州省,遵义市,仁怀市', '106.401520', '27.792310', 'Renhuai', '仁怀', '0');
INSERT INTO `sys_area` VALUES ('520400', '520400', '安顺市', '520000', '市', '', '0853', '561000', '中国,贵州省,安顺市', '105.932188', '26.245544', 'Anshun', '安顺', '0');
INSERT INTO `sys_area` VALUES ('520402', '520402', '西秀区', '520400', '区', '', '0853', '561000', '中国,贵州省,安顺市,西秀区', '105.965850', '26.244910', 'Xixiu', '西秀', '0');
INSERT INTO `sys_area` VALUES ('520421', '520421', '平坝区', '520400', '区', '', '0853', '561100', '中国,贵州省,安顺市,平坝区', '106.256830', '26.405430', 'Pingba', '平坝', '0');
INSERT INTO `sys_area` VALUES ('520422', '520422', '普定县', '520400', '区', '', '0853', '562100', '中国,贵州省,安顺市,普定县', '105.742850', '26.301410', 'Puding', '普定', '0');
INSERT INTO `sys_area` VALUES ('520423', '520423', '镇宁布依族苗族自治县', '520400', '区', '', '0853', '561200', '中国,贵州省,安顺市,镇宁布依族苗族自治县', '105.765130', '26.055330', 'Zhenning', '镇宁', '0');
INSERT INTO `sys_area` VALUES ('520424', '520424', '关岭布依族苗族自治县', '520400', '区', '', '0853', '561300', '中国,贵州省,安顺市,关岭布依族苗族自治县', '105.618830', '25.942480', 'Guanling', '关岭', '0');
INSERT INTO `sys_area` VALUES ('520425', '520425', '紫云苗族布依族自治县', '520400', '区', '', '0853', '550800', '中国,贵州省,安顺市,紫云苗族布依族自治县', '106.083640', '25.752580', 'Ziyun', '紫云', '0');
INSERT INTO `sys_area` VALUES ('520500', '520500', '毕节市', '520000', '市', '', '0857', '551700', '中国,贵州省,毕节市', '105.285010', '27.301693', 'Bijie', '毕节', '0');
INSERT INTO `sys_area` VALUES ('520502', '520502', '七星关区', '520500', '区', '', '0857', '551700', '中国,贵州省,毕节市,七星关区', '104.949700', '27.153556', 'Qixingguan', '七星关', '0');
INSERT INTO `sys_area` VALUES ('520521', '520521', '大方县', '520500', '区', '', '0857', '551600', '中国,贵州省,毕节市,大方县', '105.609254', '27.143521', 'Dafang', '大方', '0');
INSERT INTO `sys_area` VALUES ('520522', '520522', '黔西县', '520500', '区', '', '0857', '551500', '中国,贵州省,毕节市,黔西县', '106.038299', '27.024923', 'Qianxi', '黔西', '0');
INSERT INTO `sys_area` VALUES ('520523', '520523', '金沙县', '520500', '区', '', '0857', '551800', '中国,贵州省,毕节市,金沙县', '106.222103', '27.459693', 'Jinsha', '金沙', '0');
INSERT INTO `sys_area` VALUES ('520524', '520524', '织金县', '520500', '区', '', '0857', '552100', '中国,贵州省,毕节市,织金县', '105.768997', '26.668497', 'Zhijin', '织金', '0');
INSERT INTO `sys_area` VALUES ('520525', '520525', '纳雍县', '520500', '区', '', '0857', '553300', '中国,贵州省,毕节市,纳雍县', '105.375322', '26.769875', 'Nayong', '纳雍', '0');
INSERT INTO `sys_area` VALUES ('520526', '520526', '威宁彝族回族苗族自治县', '520500', '区', '', '0857', '553100', '中国,贵州省,毕节市,威宁彝族回族苗族自治县', '104.286523', '26.859099', 'Weining', '威宁', '0');
INSERT INTO `sys_area` VALUES ('520527', '520527', '赫章县', '520500', '区', '', '0857', '553200', '中国,贵州省,毕节市,赫章县', '104.726438', '27.119243', 'Hezhang', '赫章', '0');
INSERT INTO `sys_area` VALUES ('520600', '520600', '铜仁市', '520000', '市', '', '0856', '554300', '中国,贵州省,铜仁市', '109.191555', '27.718346', 'Tongren', '铜仁', '0');
INSERT INTO `sys_area` VALUES ('520602', '520602', '碧江区', '520600', '区', '', '0856', '554300', '中国,贵州省,铜仁市,碧江区', '109.191555', '27.718346', 'Bijiang', '碧江', '0');
INSERT INTO `sys_area` VALUES ('520603', '520603', '万山区', '520600', '区', '', '0856', '554200', '中国,贵州省,铜仁市,万山区', '109.211990', '27.519030', 'Wanshan', '万山', '0');
INSERT INTO `sys_area` VALUES ('520621', '520621', '江口县', '520600', '区', '', '0856', '554400', '中国,贵州省,铜仁市,江口县', '108.848427', '27.691904', 'Jiangkou', '江口', '0');
INSERT INTO `sys_area` VALUES ('520622', '520622', '玉屏侗族自治县', '520600', '区', '', '0856', '554004', '中国,贵州省,铜仁市,玉屏侗族自治县', '108.917882', '27.238024', 'Yuping', '玉屏', '0');
INSERT INTO `sys_area` VALUES ('520623', '520623', '石阡县', '520600', '区', '', '0856', '555100', '中国,贵州省,铜仁市,石阡县', '108.229854', '27.519386', 'Shiqian', '石阡', '0');
INSERT INTO `sys_area` VALUES ('520624', '520624', '思南县', '520600', '区', '', '0856', '565100', '中国,贵州省,铜仁市,思南县', '108.255827', '27.941331', 'Sinan', '思南', '0');
INSERT INTO `sys_area` VALUES ('520625', '520625', '印江土家族苗族自治县', '520600', '区', '', '0856', '555200', '中国,贵州省,铜仁市,印江土家族苗族自治县', '108.405517', '27.997976', 'Yinjiang', '印江', '0');
INSERT INTO `sys_area` VALUES ('520626', '520626', '德江县', '520600', '区', '', '0856', '565200', '中国,贵州省,铜仁市,德江县', '108.117317', '28.260940', 'Dejiang', '德江', '0');
INSERT INTO `sys_area` VALUES ('520627', '520627', '沿河土家族自治县', '520600', '区', '', '0856', '565300', '中国,贵州省,铜仁市,沿河土家族自治县', '108.495746', '28.560487', 'Yuanhe', '沿河', '0');
INSERT INTO `sys_area` VALUES ('520628', '520628', '松桃苗族自治县', '520600', '区', '', '0856', '554100', '中国,贵州省,铜仁市,松桃苗族自治县', '109.202627', '28.165419', 'Songtao', '松桃', '0');
INSERT INTO `sys_area` VALUES ('522300', '522300', '黔西南布依族苗族自治州', '520000', '市', '', '0859', '562400', '中国,贵州省,黔西南布依族苗族自治州', '104.897971', '25.088120', 'Qianxinan', '黔西南', '0');
INSERT INTO `sys_area` VALUES ('522301', '522301', '兴义市 ', '522300', '区', '', '0859', '562400', '中国,贵州省,黔西南布依族苗族自治州,兴义市 ', '104.895480', '25.092050', 'Xingyi', '兴义', '0');
INSERT INTO `sys_area` VALUES ('522322', '522322', '兴仁县', '522300', '区', '', '0859', '562300', '中国,贵州省,黔西南布依族苗族自治州,兴仁县', '105.186520', '25.432820', 'Xingren', '兴仁', '0');
INSERT INTO `sys_area` VALUES ('522323', '522323', '普安县', '522300', '区', '', '0859', '561500', '中国,贵州省,黔西南布依族苗族自治州,普安县', '104.955290', '25.786030', 'Pu\'an', '普安', '0');
INSERT INTO `sys_area` VALUES ('522324', '522324', '晴隆县', '522300', '区', '', '0859', '561400', '中国,贵州省,黔西南布依族苗族自治州,晴隆县', '105.219200', '25.835220', 'Qinglong', '晴隆', '0');
INSERT INTO `sys_area` VALUES ('522325', '522325', '贞丰县', '522300', '区', '', '0859', '562200', '中国,贵州省,黔西南布依族苗族自治州,贞丰县', '105.654540', '25.384640', 'Zhenfeng', '贞丰', '0');
INSERT INTO `sys_area` VALUES ('522326', '522326', '望谟县', '522300', '区', '', '0859', '552300', '中国,贵州省,黔西南布依族苗族自治州,望谟县', '106.099570', '25.178220', 'Wangmo', '望谟', '0');
INSERT INTO `sys_area` VALUES ('522327', '522327', '册亨县', '522300', '区', '', '0859', '552200', '中国,贵州省,黔西南布依族苗族自治州,册亨县', '105.812400', '24.983760', 'Ceheng', '册亨', '0');
INSERT INTO `sys_area` VALUES ('522328', '522328', '安龙县', '522300', '区', '', '0859', '552400', '中国,贵州省,黔西南布依族苗族自治州,安龙县', '105.442680', '25.098180', 'Anlong', '安龙', '0');
INSERT INTO `sys_area` VALUES ('522600', '522600', '黔东南苗族侗族自治州', '520000', '市', '', '0855', '556000', '中国,贵州省,黔东南苗族侗族自治州', '107.977488', '26.583352', 'Qiandongnan', '黔东南', '0');
INSERT INTO `sys_area` VALUES ('522601', '522601', '凯里市', '522600', '区', '', '0855', '556000', '中国,贵州省,黔东南苗族侗族自治州,凯里市', '107.981320', '26.566890', 'Kaili', '凯里', '0');
INSERT INTO `sys_area` VALUES ('522622', '522622', '黄平县', '522600', '区', '', '0855', '556100', '中国,贵州省,黔东南苗族侗族自治州,黄平县', '107.901790', '26.895730', 'Huangping', '黄平', '0');
INSERT INTO `sys_area` VALUES ('522623', '522623', '施秉县', '522600', '区', '', '0855', '556200', '中国,贵州省,黔东南苗族侗族自治州,施秉县', '108.125970', '27.034950', 'Shibing', '施秉', '0');
INSERT INTO `sys_area` VALUES ('522624', '522624', '三穗县', '522600', '区', '', '0855', '556500', '中国,贵州省,黔东南苗族侗族自治州,三穗县', '108.671320', '26.947650', 'Sansui', '三穗', '0');
INSERT INTO `sys_area` VALUES ('522625', '522625', '镇远县', '522600', '区', '', '0855', '557700', '中国,贵州省,黔东南苗族侗族自治州,镇远县', '108.427210', '27.049330', 'Zhenyuan', '镇远', '0');
INSERT INTO `sys_area` VALUES ('522626', '522626', '岑巩县', '522600', '区', '', '0855', '557800', '中国,贵州省,黔东南苗族侗族自治州,岑巩县', '108.818840', '27.175390', 'Cengong', '岑巩', '0');
INSERT INTO `sys_area` VALUES ('522627', '522627', '天柱县', '522600', '区', '', '0855', '556600', '中国,贵州省,黔东南苗族侗族自治州,天柱县', '109.207180', '26.907810', 'Tianzhu', '天柱', '0');
INSERT INTO `sys_area` VALUES ('522628', '522628', '锦屏县', '522600', '区', '', '0855', '556700', '中国,贵州省,黔东南苗族侗族自治州,锦屏县', '109.199820', '26.676350', 'Jinping', '锦屏', '0');
INSERT INTO `sys_area` VALUES ('522629', '522629', '剑河县', '522600', '区', '', '0855', '556400', '中国,贵州省,黔东南苗族侗族自治州,剑河县', '108.591300', '26.652500', 'Jianhe', '剑河', '0');
INSERT INTO `sys_area` VALUES ('522630', '522630', '台江县', '522600', '区', '', '0855', '556300', '中国,贵州省,黔东南苗族侗族自治州,台江县', '108.318140', '26.669160', 'Taijiang', '台江', '0');
INSERT INTO `sys_area` VALUES ('522631', '522631', '黎平县', '522600', '区', '', '0855', '557300', '中国,贵州省,黔东南苗族侗族自治州,黎平县', '109.136070', '26.231140', 'Liping', '黎平', '0');
INSERT INTO `sys_area` VALUES ('522632', '522632', '榕江县', '522600', '区', '', '0855', '557200', '中国,贵州省,黔东南苗族侗族自治州,榕江县', '108.520720', '25.924210', 'Rongjiang', '榕江', '0');
INSERT INTO `sys_area` VALUES ('522633', '522633', '从江县', '522600', '区', '', '0855', '557400', '中国,贵州省,黔东南苗族侗族自治州,从江县', '108.905270', '25.754150', 'Congjiang', '从江', '0');
INSERT INTO `sys_area` VALUES ('522634', '522634', '雷山县', '522600', '区', '', '0855', '557100', '中国,贵州省,黔东南苗族侗族自治州,雷山县', '108.077450', '26.383850', 'Leishan', '雷山', '0');
INSERT INTO `sys_area` VALUES ('522635', '522635', '麻江县', '522600', '区', '', '0855', '557600', '中国,贵州省,黔东南苗族侗族自治州,麻江县', '107.591550', '26.492350', 'Majiang', '麻江', '0');
INSERT INTO `sys_area` VALUES ('522636', '522636', '丹寨县', '522600', '区', '', '0855', '557500', '中国,贵州省,黔东南苗族侗族自治州,丹寨县', '107.797180', '26.198160', 'Danzhai', '丹寨', '0');
INSERT INTO `sys_area` VALUES ('522700', '522700', '黔南布依族苗族自治州', '520000', '市', '', '0854', '558000', '中国,贵州省,黔南布依族苗族自治州', '107.517156', '26.258219', 'Qiannan', '黔南', '0');
INSERT INTO `sys_area` VALUES ('522701', '522701', '都匀市', '522700', '区', '', '0854', '558000', '中国,贵州省,黔南布依族苗族自治州,都匀市', '107.518720', '26.259400', 'Duyun', '都匀', '0');
INSERT INTO `sys_area` VALUES ('522702', '522702', '福泉市', '522700', '区', '', '0854', '550500', '中国,贵州省,黔南布依族苗族自治州,福泉市', '107.517150', '26.679890', 'Fuquan', '福泉', '0');
INSERT INTO `sys_area` VALUES ('522722', '522722', '荔波县', '522700', '区', '', '0854', '558400', '中国,贵州省,黔南布依族苗族自治州,荔波县', '107.885920', '25.413900', 'Libo', '荔波', '0');
INSERT INTO `sys_area` VALUES ('522723', '522723', '贵定县', '522700', '区', '', '0854', '551300', '中国,贵州省,黔南布依族苗族自治州,贵定县', '107.236540', '26.578120', 'Guiding', '贵定', '0');
INSERT INTO `sys_area` VALUES ('522725', '522725', '瓮安县', '522700', '区', '', '0854', '550400', '中国,贵州省,黔南布依族苗族自治州,瓮安县', '107.475700', '27.068130', 'Weng\'an', '瓮安', '0');
INSERT INTO `sys_area` VALUES ('522726', '522726', '独山县', '522700', '区', '', '0854', '558200', '中国,贵州省,黔南布依族苗族自治州,独山县', '107.541010', '25.824500', 'Dushan', '独山', '0');
INSERT INTO `sys_area` VALUES ('522727', '522727', '平塘县', '522700', '区', '', '0854', '558300', '中国,贵州省,黔南布依族苗族自治州,平塘县', '107.324280', '25.832940', 'Pingtang', '平塘', '0');
INSERT INTO `sys_area` VALUES ('522728', '522728', '罗甸县', '522700', '区', '', '0854', '550100', '中国,贵州省,黔南布依族苗族自治州,罗甸县', '106.751860', '25.425860', 'Luodian', '罗甸', '0');
INSERT INTO `sys_area` VALUES ('522729', '522729', '长顺县', '522700', '区', '', '0854', '550700', '中国,贵州省,黔南布依族苗族自治州,长顺县', '106.452170', '26.022990', 'Changshun', '长顺', '0');
INSERT INTO `sys_area` VALUES ('522730', '522730', '龙里县', '522700', '区', '', '0854', '551200', '中国,贵州省,黔南布依族苗族自治州,龙里县', '106.976620', '26.450760', 'Longli', '龙里', '0');
INSERT INTO `sys_area` VALUES ('522731', '522731', '惠水县', '522700', '区', '', '0854', '550600', '中国,贵州省,黔南布依族苗族自治州,惠水县', '106.659110', '26.133890', 'Huishui', '惠水', '0');
INSERT INTO `sys_area` VALUES ('522732', '522732', '三都水族自治县', '522700', '区', '', '0854', '558100', '中国,贵州省,黔南布依族苗族自治州,三都水族自治县', '107.874640', '25.985620', 'Sandu', '三都', '0');
INSERT INTO `sys_area` VALUES ('530000', '530000', '云南省', '100000', '省', '', '', '', '中国,云南省', '102.712251', '25.040609', 'Yunnan', '云南', '0');
INSERT INTO `sys_area` VALUES ('530100', '530100', '昆明市', '530000', '市', '', '0871', '650500', '中国,云南省,昆明市', '102.712251', '25.040609', 'Kunming', '昆明', '0');
INSERT INTO `sys_area` VALUES ('530102', '530102', '五华区', '530100', '区', '', '0871', '650021', '中国,云南省,昆明市,五华区', '102.707860', '25.035210', 'Wuhua', '五华', '0');
INSERT INTO `sys_area` VALUES ('530103', '530103', '盘龙区', '530100', '区', '', '0871', '650051', '中国,云南省,昆明市,盘龙区', '102.719940', '25.040530', 'Panlong', '盘龙', '0');
INSERT INTO `sys_area` VALUES ('530111', '530111', '官渡区', '530100', '区', '', '0871', '650200', '中国,云南省,昆明市,官渡区', '102.743620', '25.014970', 'Guandu', '官渡', '0');
INSERT INTO `sys_area` VALUES ('530112', '530112', '西山区', '530100', '区', '', '0871', '650118', '中国,云南省,昆明市,西山区', '102.664640', '25.037960', 'Xishan', '西山', '0');
INSERT INTO `sys_area` VALUES ('530113', '530113', '东川区', '530100', '区', '', '0871', '654100', '中国,云南省,昆明市,东川区', '103.188320', '26.083000', 'Dongchuan', '东川', '0');
INSERT INTO `sys_area` VALUES ('530114', '530114', '呈贡区', '530100', '区', '', '0871', '650500', '中国,云南省,昆明市,呈贡区', '102.801382', '24.889275', 'Chenggong', '呈贡', '0');
INSERT INTO `sys_area` VALUES ('530122', '530122', '晋宁县', '530100', '区', '', '0871', '650600', '中国,云南省,昆明市,晋宁县', '102.593930', '24.666500', 'Jinning', '晋宁', '0');
INSERT INTO `sys_area` VALUES ('530124', '530124', '富民县', '530100', '区', '', '0871', '650400', '中国,云南省,昆明市,富民县', '102.498500', '25.221190', 'Fumin', '富民', '0');
INSERT INTO `sys_area` VALUES ('530125', '530125', '宜良县', '530100', '区', '', '0871', '652100', '中国,云南省,昆明市,宜良县', '103.141170', '24.917050', 'Yiliang', '宜良', '0');
INSERT INTO `sys_area` VALUES ('530126', '530126', '石林彝族自治县', '530100', '区', '', '0871', '652200', '中国,云南省,昆明市,石林彝族自治县', '103.271480', '24.758970', 'Shilin', '石林', '0');
INSERT INTO `sys_area` VALUES ('530127', '530127', '嵩明县', '530100', '区', '', '0871', '651700', '中国,云南省,昆明市,嵩明县', '103.037290', '25.339860', 'Songming', '嵩明', '0');
INSERT INTO `sys_area` VALUES ('530128', '530128', '禄劝彝族苗族自治县', '530100', '区', '', '0871', '651500', '中国,云南省,昆明市,禄劝彝族苗族自治县', '102.467100', '25.553870', 'Luquan', '禄劝', '0');
INSERT INTO `sys_area` VALUES ('530129', '530129', '寻甸回族彝族自治县 ', '530100', '区', '', '0871', '655200', '中国,云南省,昆明市,寻甸回族彝族自治县 ', '103.255700', '25.559610', 'Xundian', '寻甸', '0');
INSERT INTO `sys_area` VALUES ('530181', '530181', '安宁市', '530100', '区', '', '0871', '650300', '中国,云南省,昆明市,安宁市', '102.469720', '24.916520', 'Anning', '安宁', '0');
INSERT INTO `sys_area` VALUES ('530300', '530300', '曲靖市', '530000', '市', '', '0874', '655000', '中国,云南省,曲靖市', '103.797851', '25.501557', 'Qujing', '曲靖', '0');
INSERT INTO `sys_area` VALUES ('530302', '530302', '麒麟区', '530300', '区', '', '0874', '655000', '中国,云南省,曲靖市,麒麟区', '103.805040', '25.495150', 'Qilin', '麒麟', '0');
INSERT INTO `sys_area` VALUES ('530321', '530321', '马龙县', '530300', '区', '', '0874', '655100', '中国,云南省,曲靖市,马龙县', '103.578730', '25.425210', 'Malong', '马龙', '0');
INSERT INTO `sys_area` VALUES ('530322', '530322', '陆良县', '530300', '区', '', '0874', '655600', '中国,云南省,曲靖市,陆良县', '103.666500', '25.023350', 'Luliang', '陆良', '0');
INSERT INTO `sys_area` VALUES ('530323', '530323', '师宗县', '530300', '区', '', '0874', '655700', '中国,云南省,曲靖市,师宗县', '103.990840', '24.828220', 'Shizong', '师宗', '0');
INSERT INTO `sys_area` VALUES ('530324', '530324', '罗平县', '530300', '区', '', '0874', '655800', '中国,云南省,曲靖市,罗平县', '104.308590', '24.884440', 'Luoping', '罗平', '0');
INSERT INTO `sys_area` VALUES ('530325', '530325', '富源县', '530300', '区', '', '0874', '655500', '中国,云南省,曲靖市,富源县', '104.253870', '25.665870', 'Fuyuan', '富源', '0');
INSERT INTO `sys_area` VALUES ('530326', '530326', '会泽县', '530300', '区', '', '0874', '654200', '中国,云南省,曲靖市,会泽县', '103.300170', '26.410760', 'Huize', '会泽', '0');
INSERT INTO `sys_area` VALUES ('530328', '530328', '沾益县', '530300', '区', '', '0874', '655331', '中国,云南省,曲靖市,沾益县', '103.821350', '25.607150', 'Zhanyi', '沾益', '0');
INSERT INTO `sys_area` VALUES ('530381', '530381', '宣威市', '530300', '区', '', '0874', '655400', '中国,云南省,曲靖市,宣威市', '104.104090', '26.217300', 'Xuanwei', '宣威', '0');
INSERT INTO `sys_area` VALUES ('530400', '530400', '玉溪市', '530000', '市', '', '0877', '653100', '中国,云南省,玉溪市', '102.543907', '24.350461', 'Yuxi', '玉溪', '0');
INSERT INTO `sys_area` VALUES ('530402', '530402', '红塔区', '530400', '区', '', '0877', '653100', '中国,云南省,玉溪市,红塔区', '102.544900', '24.354110', 'Hongta', '红塔', '0');
INSERT INTO `sys_area` VALUES ('530421', '530421', '江川县', '530400', '区', '', '0877', '652600', '中国,云南省,玉溪市,江川县', '102.754120', '24.288630', 'Jiangchuan', '江川', '0');
INSERT INTO `sys_area` VALUES ('530422', '530422', '澄江县', '530400', '区', '', '0877', '652500', '中国,云南省,玉溪市,澄江县', '102.908170', '24.673760', 'Chengjiang', '澄江', '0');
INSERT INTO `sys_area` VALUES ('530423', '530423', '通海县', '530400', '区', '', '0877', '652700', '中国,云南省,玉溪市,通海县', '102.766410', '24.113620', 'Tonghai', '通海', '0');
INSERT INTO `sys_area` VALUES ('530424', '530424', '华宁县', '530400', '区', '', '0877', '652800', '中国,云南省,玉溪市,华宁县', '102.928310', '24.192600', 'Huaning', '华宁', '0');
INSERT INTO `sys_area` VALUES ('530425', '530425', '易门县', '530400', '区', '', '0877', '651100', '中国,云南省,玉溪市,易门县', '102.163540', '24.671220', 'Yimen', '易门', '0');
INSERT INTO `sys_area` VALUES ('530426', '530426', '峨山彝族自治县', '530400', '区', '', '0877', '653200', '中国,云南省,玉溪市,峨山彝族自治县', '102.405760', '24.169040', 'Eshan', '峨山', '0');
INSERT INTO `sys_area` VALUES ('530427', '530427', '新平彝族傣族自治县', '530400', '区', '', '0877', '653400', '中国,云南省,玉溪市,新平彝族傣族自治县', '101.988950', '24.068860', 'Xinping', '新平', '0');
INSERT INTO `sys_area` VALUES ('530428', '530428', '元江哈尼族彝族傣族自治县', '530400', '区', '', '0877', '653300', '中国,云南省,玉溪市,元江哈尼族彝族傣族自治县', '101.998120', '23.596550', 'Yuanjiang', '元江', '0');
INSERT INTO `sys_area` VALUES ('530500', '530500', '保山市', '530000', '市', '', '0875', '678000', '中国,云南省,保山市', '99.167133', '25.111802', 'Baoshan', '保山', '0');
INSERT INTO `sys_area` VALUES ('530502', '530502', '隆阳区', '530500', '区', '', '0875', '678000', '中国,云南省,保山市,隆阳区', '99.163340', '25.111630', 'Longyang', '隆阳', '0');
INSERT INTO `sys_area` VALUES ('530521', '530521', '施甸县', '530500', '区', '', '0875', '678200', '中国,云南省,保山市,施甸县', '99.187680', '24.724180', 'Shidian', '施甸', '0');
INSERT INTO `sys_area` VALUES ('530522', '530522', '腾冲县', '530500', '区', '', '0875', '679100', '中国,云南省,保山市,腾冲县', '98.494140', '25.025390', 'Tengchong', '腾冲', '0');
INSERT INTO `sys_area` VALUES ('530523', '530523', '龙陵县', '530500', '区', '', '0875', '678300', '中国,云南省,保山市,龙陵县', '98.690240', '24.587460', 'Longling', '龙陵', '0');
INSERT INTO `sys_area` VALUES ('530524', '530524', '昌宁县', '530500', '区', '', '0875', '678100', '中国,云南省,保山市,昌宁县', '99.603600', '24.827630', 'Changning', '昌宁', '0');
INSERT INTO `sys_area` VALUES ('530600', '530600', '昭通市', '530000', '市', '', '0870', '657000', '中国,云南省,昭通市', '103.717216', '27.336999', 'Zhaotong', '昭通', '0');
INSERT INTO `sys_area` VALUES ('530602', '530602', '昭阳区', '530600', '区', '', '0870', '657000', '中国,云南省,昭通市,昭阳区', '103.706540', '27.319980', 'Zhaoyang', '昭阳', '0');
INSERT INTO `sys_area` VALUES ('530621', '530621', '鲁甸县', '530600', '区', '', '0870', '657100', '中国,云南省,昭通市,鲁甸县', '103.547210', '27.192380', 'Ludian', '鲁甸', '0');
INSERT INTO `sys_area` VALUES ('530622', '530622', '巧家县', '530600', '区', '', '0870', '654600', '中国,云南省,昭通市,巧家县', '102.924160', '26.912370', 'Qiaojia', '巧家', '0');
INSERT INTO `sys_area` VALUES ('530623', '530623', '盐津县', '530600', '区', '', '0870', '657500', '中国,云南省,昭通市,盐津县', '104.234610', '28.108560', 'Yanjin', '盐津', '0');
INSERT INTO `sys_area` VALUES ('530624', '530624', '大关县', '530600', '区', '', '0870', '657400', '中国,云南省,昭通市,大关县', '103.892540', '27.748800', 'Daguan', '大关', '0');
INSERT INTO `sys_area` VALUES ('530625', '530625', '永善县', '530600', '区', '', '0870', '657300', '中国,云南省,昭通市,永善县', '103.635040', '28.227900', 'Yongshan', '永善', '0');
INSERT INTO `sys_area` VALUES ('530626', '530626', '绥江县', '530600', '区', '', '0870', '657700', '中国,云南省,昭通市,绥江县', '103.949370', '28.596610', 'Suijiang', '绥江', '0');
INSERT INTO `sys_area` VALUES ('530627', '530627', '镇雄县', '530600', '区', '', '0870', '657200', '中国,云南省,昭通市,镇雄县', '104.872580', '27.439810', 'Zhenxiong', '镇雄', '0');
INSERT INTO `sys_area` VALUES ('530628', '530628', '彝良县', '530600', '区', '', '0870', '657600', '中国,云南省,昭通市,彝良县', '104.049830', '27.628090', 'Yiliang', '彝良', '0');
INSERT INTO `sys_area` VALUES ('530629', '530629', '威信县', '530600', '区', '', '0870', '657900', '中国,云南省,昭通市,威信县', '105.047540', '27.840650', 'Weixin', '威信', '0');
INSERT INTO `sys_area` VALUES ('530630', '530630', '水富县', '530600', '区', '', '0870', '657800', '中国,云南省,昭通市,水富县', '104.415800', '28.629860', 'Shuifu', '水富', '0');
INSERT INTO `sys_area` VALUES ('530700', '530700', '丽江市', '530000', '市', '', '0888', '674100', '中国,云南省,丽江市', '100.233026', '26.872108', 'Lijiang', '丽江', '0');
INSERT INTO `sys_area` VALUES ('530702', '530702', '古城区', '530700', '区', '', '0888', '674100', '中国,云南省,丽江市,古城区', '100.225700', '26.876970', 'Gucheng', '古城', '0');
INSERT INTO `sys_area` VALUES ('530721', '530721', '玉龙纳西族自治县', '530700', '区', '', '0888', '674100', '中国,云南省,丽江市,玉龙纳西族自治县', '100.236900', '26.821490', 'Yulong', '玉龙', '0');
INSERT INTO `sys_area` VALUES ('530722', '530722', '永胜县', '530700', '区', '', '0888', '674200', '中国,云南省,丽江市,永胜县', '100.746670', '26.685910', 'Yongsheng', '永胜', '0');
INSERT INTO `sys_area` VALUES ('530723', '530723', '华坪县', '530700', '区', '', '0888', '674800', '中国,云南省,丽江市,华坪县', '101.265620', '26.629670', 'Huaping', '华坪', '0');
INSERT INTO `sys_area` VALUES ('530724', '530724', '宁蒗彝族自治县', '530700', '区', '', '0888', '674300', '中国,云南省,丽江市,宁蒗彝族自治县', '100.850700', '27.281790', 'Ninglang', '宁蒗', '0');
INSERT INTO `sys_area` VALUES ('530800', '530800', '普洱市', '530000', '市', '', '0879', '665000', '中国,云南省,普洱市', '100.972344', '22.777321', 'Pu\'er', '普洱', '0');
INSERT INTO `sys_area` VALUES ('530802', '530802', '思茅区', '530800', '区', '', '0879', '665000', '中国,云南省,普洱市,思茅区', '100.977160', '22.786910', 'Simao', '思茅', '0');
INSERT INTO `sys_area` VALUES ('530821', '530821', '宁洱哈尼族彝族自治县', '530800', '区', '', '0879', '665100', '中国,云南省,普洱市,宁洱哈尼族彝族自治县', '101.046530', '23.063410', 'Ninger', '宁洱', '0');
INSERT INTO `sys_area` VALUES ('530822', '530822', '墨江哈尼族自治县', '530800', '区', '', '0879', '654800', '中国,云南省,普洱市,墨江哈尼族自治县', '101.691710', '23.432140', 'Mojiang', '墨江', '0');
INSERT INTO `sys_area` VALUES ('530823', '530823', '景东彝族自治县', '530800', '区', '', '0879', '676200', '中国,云南省,普洱市,景东彝族自治县', '100.835990', '24.447910', 'Jingdong', '景东', '0');
INSERT INTO `sys_area` VALUES ('530824', '530824', '景谷傣族彝族自治县', '530800', '区', '', '0879', '666400', '中国,云南省,普洱市,景谷傣族彝族自治县', '100.702510', '23.497050', 'Jinggu', '景谷', '0');
INSERT INTO `sys_area` VALUES ('530825', '530825', '镇沅彝族哈尼族拉祜族自治县', '530800', '区', '', '0879', '666500', '中国,云南省,普洱市,镇沅彝族哈尼族拉祜族自治县', '101.106750', '24.005570', 'Zhenyuan', '镇沅', '0');
INSERT INTO `sys_area` VALUES ('530826', '530826', '江城哈尼族彝族自治县', '530800', '区', '', '0879', '665900', '中国,云南省,普洱市,江城哈尼族彝族自治县', '101.857880', '22.584240', 'Jiangcheng', '江城', '0');
INSERT INTO `sys_area` VALUES ('530827', '530827', '孟连傣族拉祜族佤族自治县', '530800', '区', '', '0879', '665800', '中国,云南省,普洱市,孟连傣族拉祜族佤族自治县', '99.584240', '22.329220', 'Menglian', '孟连', '0');
INSERT INTO `sys_area` VALUES ('530828', '530828', '澜沧拉祜族自治县', '530800', '区', '', '0879', '665600', '中国,云南省,普洱市,澜沧拉祜族自治县', '99.935910', '22.554740', 'Lancang', '澜沧', '0');
INSERT INTO `sys_area` VALUES ('530829', '530829', '西盟佤族自治县', '530800', '区', '', '0879', '665700', '中国,云南省,普洱市,西盟佤族自治县', '99.598690', '22.647740', 'Ximeng', '西盟', '0');
INSERT INTO `sys_area` VALUES ('530900', '530900', '临沧市', '530000', '市', '', '0883', '677000', '中国,云南省,临沧市', '100.086970', '23.886567', 'Lincang', '临沧', '0');
INSERT INTO `sys_area` VALUES ('530902', '530902', '临翔区', '530900', '区', '', '0883', '677000', '中国,云南省,临沧市,临翔区', '100.082420', '23.894970', 'Linxiang', '临翔', '0');
INSERT INTO `sys_area` VALUES ('530921', '530921', '凤庆县', '530900', '区', '', '0883', '675900', '中国,云南省,临沧市,凤庆县', '99.928370', '24.580340', 'Fengqing', '凤庆', '0');
INSERT INTO `sys_area` VALUES ('530922', '530922', '云县', '530900', '区', '', '0883', '675800', '中国,云南省,临沧市,云县', '100.128080', '24.446750', 'Yunxian', '云县', '0');
INSERT INTO `sys_area` VALUES ('530923', '530923', '永德县', '530900', '区', '', '0883', '677600', '中国,云南省,临沧市,永德县', '99.253260', '24.027600', 'Yongde', '永德', '0');
INSERT INTO `sys_area` VALUES ('530924', '530924', '镇康县', '530900', '区', '', '0883', '677704', '中国,云南省,临沧市,镇康县', '98.825500', '23.762410', 'Zhenkang', '镇康', '0');
INSERT INTO `sys_area` VALUES ('530925', '530925', '双江拉祜族佤族布朗族傣族自治县', '530900', '区', '', '0883', '677300', '中国,云南省,临沧市,双江拉祜族佤族布朗族傣族自治县', '99.827690', '23.473490', 'Shuangjiang', '双江', '0');
INSERT INTO `sys_area` VALUES ('530926', '530926', '耿马傣族佤族自治县', '530900', '区', '', '0883', '677500', '中国,云南省,临沧市,耿马傣族佤族自治县', '99.397850', '23.537760', 'Gengma', '耿马', '0');
INSERT INTO `sys_area` VALUES ('530927', '530927', '沧源佤族自治县', '530900', '区', '', '0883', '677400', '中国,云南省,临沧市,沧源佤族自治县', '99.245450', '23.148210', 'Cangyuan', '沧源', '0');
INSERT INTO `sys_area` VALUES ('532300', '532300', '楚雄彝族自治州', '530000', '市', '', '0878', '675000', '中国,云南省,楚雄彝族自治州', '101.546046', '25.041988', 'Chuxiong', '楚雄', '0');
INSERT INTO `sys_area` VALUES ('532301', '532301', '楚雄市', '532300', '区', '', '0878', '675000', '中国,云南省,楚雄彝族自治州,楚雄市', '101.546150', '25.032900', 'Chuxiong', '楚雄', '0');
INSERT INTO `sys_area` VALUES ('532322', '532322', '双柏县', '532300', '区', '', '0878', '675100', '中国,云南省,楚雄彝族自治州,双柏县', '101.642050', '24.688820', 'Shuangbai', '双柏', '0');
INSERT INTO `sys_area` VALUES ('532323', '532323', '牟定县', '532300', '区', '', '0878', '675500', '中国,云南省,楚雄彝族自治州,牟定县', '101.540000', '25.315510', 'Mouding', '牟定', '0');
INSERT INTO `sys_area` VALUES ('532324', '532324', '南华县', '532300', '区', '', '0878', '675200', '中国,云南省,楚雄彝族自治州,南华县', '101.273130', '25.192930', 'Nanhua', '南华', '0');
INSERT INTO `sys_area` VALUES ('532325', '532325', '姚安县', '532300', '区', '', '0878', '675300', '中国,云南省,楚雄彝族自治州,姚安县', '101.242790', '25.504670', 'Yao\'an', '姚安', '0');
INSERT INTO `sys_area` VALUES ('532326', '532326', '大姚县', '532300', '区', '', '0878', '675400', '中国,云南省,楚雄彝族自治州,大姚县', '101.323970', '25.722180', 'Dayao', '大姚', '0');
INSERT INTO `sys_area` VALUES ('532327', '532327', '永仁县', '532300', '区', '', '0878', '651400', '中国,云南省,楚雄彝族自治州,永仁县', '101.671600', '26.057940', 'Yongren', '永仁', '0');
INSERT INTO `sys_area` VALUES ('532328', '532328', '元谋县', '532300', '区', '', '0878', '651300', '中国,云南省,楚雄彝族自治州,元谋县', '101.877280', '25.704380', 'Yuanmou', '元谋', '0');
INSERT INTO `sys_area` VALUES ('532329', '532329', '武定县', '532300', '区', '', '0878', '651600', '中国,云南省,楚雄彝族自治州,武定县', '102.403800', '25.529500', 'Wuding', '武定', '0');
INSERT INTO `sys_area` VALUES ('532331', '532331', '禄丰县', '532300', '区', '', '0878', '651200', '中国,云南省,楚雄彝族自治州,禄丰县', '102.077970', '25.148150', 'Lufeng', '禄丰', '0');
INSERT INTO `sys_area` VALUES ('532500', '532500', '红河哈尼族彝族自治州', '530000', '市', '', '0873', '661400', '中国,云南省,红河哈尼族彝族自治州', '103.384182', '23.366775', 'Honghe', '红河', '0');
INSERT INTO `sys_area` VALUES ('532501', '532501', '个旧市', '532500', '区', '', '0873', '661000', '中国,云南省,红河哈尼族彝族自治州,个旧市', '103.159660', '23.358940', 'Gejiu', '个旧', '0');
INSERT INTO `sys_area` VALUES ('532502', '532502', '开远市', '532500', '区', '', '0873', '661600', '中国,云南省,红河哈尼族彝族自治州,开远市', '103.269860', '23.710120', 'Kaiyuan', '开远', '0');
INSERT INTO `sys_area` VALUES ('532503', '532503', '蒙自市', '532500', '区', '', '0873', '661101', '中国,云南省,红河哈尼族彝族自治州,蒙自市', '103.385005', '23.366843', 'Mengzi', '蒙自', '0');
INSERT INTO `sys_area` VALUES ('532504', '532504', '弥勒市', '532500', '区', '', '0873', '652300', '中国,云南省,红河哈尼族彝族自治州,弥勒市', '103.436988', '24.408370', 'Mile ', '弥勒', '0');
INSERT INTO `sys_area` VALUES ('532523', '532523', '屏边苗族自治县', '532500', '区', '', '0873', '661200', '中国,云南省,红河哈尼族彝族自治州,屏边苗族自治县', '103.685540', '22.984250', 'Pingbian', '屏边', '0');
INSERT INTO `sys_area` VALUES ('532524', '532524', '建水县', '532500', '区', '', '0873', '654300', '中国,云南省,红河哈尼族彝族自治州,建水县', '102.826560', '23.634720', 'Jianshui', '建水', '0');
INSERT INTO `sys_area` VALUES ('532525', '532525', '石屏县', '532500', '区', '', '0873', '662200', '中国,云南省,红河哈尼族彝族自治州,石屏县', '102.494080', '23.714410', 'Shiping', '石屏', '0');
INSERT INTO `sys_area` VALUES ('532527', '532527', '泸西县', '532500', '区', '', '0873', '652400', '中国,云南省,红河哈尼族彝族自治州,泸西县', '103.763730', '24.528540', 'Luxi', '泸西', '0');
INSERT INTO `sys_area` VALUES ('532528', '532528', '元阳县', '532500', '区', '', '0873', '662400', '中国,云南省,红河哈尼族彝族自治州,元阳县', '102.832610', '23.222810', 'Yuanyang', '元阳', '0');
INSERT INTO `sys_area` VALUES ('532529', '532529', '红河县', '532500', '区', '', '0873', '654400', '中国,云南省,红河哈尼族彝族自治州,红河县', '102.420590', '23.367670', 'Honghexian', '红河县', '0');
INSERT INTO `sys_area` VALUES ('532530', '532530', '金平苗族瑶族傣族自治县', '532500', '区', '', '0873', '661500', '中国,云南省,红河哈尼族彝族自治州,金平苗族瑶族傣族自治县', '103.226510', '22.779590', 'Jinping', '金平', '0');
INSERT INTO `sys_area` VALUES ('532531', '532531', '绿春县', '532500', '区', '', '0873', '662500', '中国,云南省,红河哈尼族彝族自治州,绿春县', '102.396720', '22.993710', 'Lvchun', '绿春', '0');
INSERT INTO `sys_area` VALUES ('532532', '532532', '河口瑶族自治县', '532500', '区', '', '0873', '661300', '中国,云南省,红河哈尼族彝族自治州,河口瑶族自治县', '103.939360', '22.529290', 'Hekou', '河口', '0');
INSERT INTO `sys_area` VALUES ('532600', '532600', '文山壮族苗族自治州', '530000', '市', '', '0876', '663000', '中国,云南省,文山壮族苗族自治州', '104.244010', '23.369510', 'Wenshan', '文山', '0');
INSERT INTO `sys_area` VALUES ('532601', '532601', '文山市', '532600', '区', '', '0876', '663000', '中国,云南省,文山壮族苗族自治州,文山市', '104.244277', '23.369216', 'Wenshan', '文山', '0');
INSERT INTO `sys_area` VALUES ('532622', '532622', '砚山县', '532600', '区', '', '0876', '663100', '中国,云南省,文山壮族苗族自治州,砚山县', '104.333060', '23.607230', 'Yanshan', '砚山', '0');
INSERT INTO `sys_area` VALUES ('532623', '532623', '西畴县', '532600', '区', '', '0876', '663500', '中国,云南省,文山壮族苗族自治州,西畴县', '104.674190', '23.439410', 'Xichou', '西畴', '0');
INSERT INTO `sys_area` VALUES ('532624', '532624', '麻栗坡县', '532600', '区', '', '0876', '663600', '中国,云南省,文山壮族苗族自治州,麻栗坡县', '104.701320', '23.120280', 'Malipo', '麻栗坡', '0');
INSERT INTO `sys_area` VALUES ('532625', '532625', '马关县', '532600', '区', '', '0876', '663700', '中国,云南省,文山壮族苗族自治州,马关县', '104.395140', '23.012930', 'Maguan', '马关', '0');
INSERT INTO `sys_area` VALUES ('532626', '532626', '丘北县', '532600', '区', '', '0876', '663200', '中国,云南省,文山壮族苗族自治州,丘北县', '104.192560', '24.039570', 'Qiubei', '丘北', '0');
INSERT INTO `sys_area` VALUES ('532627', '532627', '广南县', '532600', '区', '', '0876', '663300', '中国,云南省,文山壮族苗族自治州,广南县', '105.055110', '24.046400', 'Guangnan', '广南', '0');
INSERT INTO `sys_area` VALUES ('532628', '532628', '富宁县', '532600', '区', '', '0876', '663400', '中国,云南省,文山壮族苗族自治州,富宁县', '105.630850', '23.625360', 'Funing', '富宁', '0');
INSERT INTO `sys_area` VALUES ('532800', '532800', '西双版纳傣族自治州', '530000', '市', '', '0691', '666100', '中国,云南省,西双版纳傣族自治州', '100.797941', '22.001724', 'Xishuangbanna', '西双版纳', '0');
INSERT INTO `sys_area` VALUES ('532801', '532801', '景洪市', '532800', '区', '', '0691', '666100', '中国,云南省,西双版纳傣族自治州,景洪市', '100.799770', '22.010710', 'Jinghong', '景洪', '0');
INSERT INTO `sys_area` VALUES ('532822', '532822', '勐海县', '532800', '区', '', '0691', '666200', '中国,云南省,西双版纳傣族自治州,勐海县', '100.449310', '21.961750', 'Menghai', '勐海', '0');
INSERT INTO `sys_area` VALUES ('532823', '532823', '勐腊县', '532800', '区', '', '0691', '666300', '中国,云南省,西双版纳傣族自治州,勐腊县', '101.564880', '21.481620', 'Mengla', '勐腊', '0');
INSERT INTO `sys_area` VALUES ('532900', '532900', '大理白族自治州', '530000', '市', '', '0872', '671000', '中国,云南省,大理白族自治州', '100.240037', '25.592765', 'Dali', '大理', '0');
INSERT INTO `sys_area` VALUES ('532901', '532901', '大理市', '532900', '区', '', '0872', '671000', '中国,云南省,大理白族自治州,大理市', '100.229980', '25.591570', 'Dali', '大理', '0');
INSERT INTO `sys_area` VALUES ('532922', '532922', '漾濞彝族自治县', '532900', '区', '', '0872', '672500', '中国,云南省,大理白族自治州,漾濞彝族自治县', '99.954740', '25.665200', 'Yangbi', '漾濞', '0');
INSERT INTO `sys_area` VALUES ('532923', '532923', '祥云县', '532900', '区', '', '0872', '672100', '中国,云南省,大理白族自治州,祥云县', '100.557610', '25.473420', 'Xiangyun', '祥云', '0');
INSERT INTO `sys_area` VALUES ('532924', '532924', '宾川县', '532900', '区', '', '0872', '671600', '中国,云南省,大理白族自治州,宾川县', '100.576660', '25.831440', 'Binchuan', '宾川', '0');
INSERT INTO `sys_area` VALUES ('532925', '532925', '弥渡县', '532900', '区', '', '0872', '675600', '中国,云南省,大理白族自治州,弥渡县', '100.490750', '25.341790', 'Midu', '弥渡', '0');
INSERT INTO `sys_area` VALUES ('532926', '532926', '南涧彝族自治县', '532900', '区', '', '0872', '675700', '中国,云南省,大理白族自治州,南涧彝族自治县', '100.509640', '25.043490', 'Nanjian', '南涧', '0');
INSERT INTO `sys_area` VALUES ('532927', '532927', '巍山彝族回族自治县', '532900', '区', '', '0872', '672400', '中国,云南省,大理白族自治州,巍山彝族回族自治县', '100.306120', '25.231970', 'Weishan', '巍山', '0');
INSERT INTO `sys_area` VALUES ('532928', '532928', '永平县', '532900', '区', '', '0872', '672600', '中国,云南省,大理白族自治州,永平县', '99.540950', '25.464510', 'Yongping', '永平', '0');
INSERT INTO `sys_area` VALUES ('532929', '532929', '云龙县', '532900', '区', '', '0872', '672700', '中国,云南省,大理白族自治州,云龙县', '99.372550', '25.885050', 'Yunlong', '云龙', '0');
INSERT INTO `sys_area` VALUES ('532930', '532930', '洱源县', '532900', '区', '', '0872', '671200', '中国,云南省,大理白族自治州,洱源县', '99.949030', '26.108290', 'Eryuan', '洱源', '0');
INSERT INTO `sys_area` VALUES ('532931', '532931', '剑川县', '532900', '区', '', '0872', '671300', '中国,云南省,大理白族自治州,剑川县', '99.905450', '26.536880', 'Jianchuan', '剑川', '0');
INSERT INTO `sys_area` VALUES ('532932', '532932', '鹤庆县', '532900', '区', '', '0872', '671500', '中国,云南省,大理白族自治州,鹤庆县', '100.176970', '26.557980', 'Heqing', '鹤庆', '0');
INSERT INTO `sys_area` VALUES ('533100', '533100', '德宏傣族景颇族自治州', '530000', '市', '', '0692', '678400', '中国,云南省,德宏傣族景颇族自治州', '98.578363', '24.436694', 'Dehong', '德宏', '0');
INSERT INTO `sys_area` VALUES ('533102', '533102', '瑞丽市', '533100', '区', '', '0692', '678600', '中国,云南省,德宏傣族景颇族自治州,瑞丽市', '97.851830', '24.012770', 'Ruili', '瑞丽', '0');
INSERT INTO `sys_area` VALUES ('533103', '533103', '芒市', '533100', '区', '', '0692', '678400', '中国,云南省,德宏傣族景颇族自治州,芒市', '98.588641', '24.433735', 'Mangshi', '芒市', '0');
INSERT INTO `sys_area` VALUES ('533122', '533122', '梁河县', '533100', '区', '', '0692', '679200', '中国,云南省,德宏傣族景颇族自治州,梁河县', '98.297050', '24.806580', 'Lianghe', '梁河', '0');
INSERT INTO `sys_area` VALUES ('533123', '533123', '盈江县', '533100', '区', '', '0692', '679300', '中国,云南省,德宏傣族景颇族自治州,盈江县', '97.931790', '24.705790', 'Yingjiang', '盈江', '0');
INSERT INTO `sys_area` VALUES ('533124', '533124', '陇川县', '533100', '区', '', '0692', '678700', '中国,云南省,德宏傣族景颇族自治州,陇川县', '97.791990', '24.183020', 'Longchuan', '陇川', '0');
INSERT INTO `sys_area` VALUES ('533300', '533300', '怒江傈僳族自治州', '530000', '市', '', '0886', '673100', '中国,云南省,怒江傈僳族自治州', '98.854304', '25.850949', 'Nujiang', '怒江', '0');
INSERT INTO `sys_area` VALUES ('533321', '533321', '泸水县', '533300', '区', '', '0886', '673100', '中国,云南省,怒江傈僳族自治州,泸水县', '98.855340', '25.837720', 'Lushui', '泸水', '0');
INSERT INTO `sys_area` VALUES ('533323', '533323', '福贡县', '533300', '区', '', '0886', '673400', '中国,云南省,怒江傈僳族自治州,福贡县', '98.869690', '26.903660', 'Fugong', '福贡', '0');
INSERT INTO `sys_area` VALUES ('533324', '533324', '贡山独龙族怒族自治县', '533300', '区', '', '0886', '673500', '中国,云南省,怒江傈僳族自治州,贡山独龙族怒族自治县', '98.665830', '27.740880', 'Gongshan', '贡山', '0');
INSERT INTO `sys_area` VALUES ('533325', '533325', '兰坪白族普米族自治县', '533300', '区', '', '0886', '671400', '中国,云南省,怒江傈僳族自治州,兰坪白族普米族自治县', '99.418910', '26.452510', 'Lanping', '兰坪', '0');
INSERT INTO `sys_area` VALUES ('533400', '533400', '迪庆藏族自治州', '530000', '市', '', '0887', '674400', '中国,云南省,迪庆藏族自治州', '99.706463', '27.826853', 'Deqen', '迪庆', '0');
INSERT INTO `sys_area` VALUES ('533421', '533421', '香格里拉市', '533400', '区', '', '0887', '674400', '中国,云南省,迪庆藏族自治州,香格里拉市', '99.706010', '27.823080', 'Xianggelila', '香格里拉', '0');
INSERT INTO `sys_area` VALUES ('533422', '533422', '德钦县', '533400', '区', '', '0887', '674500', '中国,云南省,迪庆藏族自治州,德钦县', '98.910820', '28.486300', 'Deqin', '德钦', '0');
INSERT INTO `sys_area` VALUES ('533423', '533423', '维西傈僳族自治县', '533400', '区', '', '0887', '674600', '中国,云南省,迪庆藏族自治州,维西傈僳族自治县', '99.284020', '27.179300', 'Weixi', '维西', '0');
INSERT INTO `sys_area` VALUES ('540000', '540000', '西藏自治区', '100000', '省', '', '', '', '中国,西藏自治区', '91.132212', '29.660361', 'Tibet', '西藏', '0');
INSERT INTO `sys_area` VALUES ('540100', '540100', '拉萨市', '540000', '市', '', '0891', '850000', '中国,西藏自治区,拉萨市', '91.132212', '29.660361', 'Lhasa', '拉萨', '0');
INSERT INTO `sys_area` VALUES ('540102', '540102', '城关区', '540100', '区', '', '0891', '850000', '中国,西藏自治区,拉萨市,城关区', '91.138590', '29.653120', 'Chengguan', '城关', '0');
INSERT INTO `sys_area` VALUES ('540121', '540121', '林周县', '540100', '区', '', '0891', '851600', '中国,西藏自治区,拉萨市,林周县', '91.258600', '29.894450', 'Linzhou', '林周', '0');
INSERT INTO `sys_area` VALUES ('540122', '540122', '当雄县', '540100', '区', '', '0891', '851500', '中国,西藏自治区,拉萨市,当雄县', '91.100760', '30.483090', 'Dangxiong', '当雄', '0');
INSERT INTO `sys_area` VALUES ('540123', '540123', '尼木县', '540100', '区', '', '0891', '851300', '中国,西藏自治区,拉萨市,尼木县', '90.163780', '29.433530', 'Nimu', '尼木', '0');
INSERT INTO `sys_area` VALUES ('540124', '540124', '曲水县', '540100', '区', '', '0891', '850600', '中国,西藏自治区,拉萨市,曲水县', '90.731870', '29.356360', 'Qushui', '曲水', '0');
INSERT INTO `sys_area` VALUES ('540125', '540125', '堆龙德庆县', '540100', '区', '', '0891', '851400', '中国,西藏自治区,拉萨市,堆龙德庆县', '91.000330', '29.650020', 'Duilongdeqing', '堆龙德庆', '0');
INSERT INTO `sys_area` VALUES ('540126', '540126', '达孜县', '540100', '区', '', '0891', '850100', '中国,西藏自治区,拉萨市,达孜县', '91.357570', '29.672200', 'Dazi', '达孜', '0');
INSERT INTO `sys_area` VALUES ('540127', '540127', '墨竹工卡县', '540100', '区', '', '0891', '850200', '中国,西藏自治区,拉萨市,墨竹工卡县', '91.728140', '29.836140', 'Mozhugongka', '墨竹工卡', '0');
INSERT INTO `sys_area` VALUES ('540200', '540200', '日喀则市', '540000', '市', '', '0892', '857000', '中国,西藏自治区,日喀则市', '88.884874', '29.263792', 'Rikaze', '日喀则', '0');
INSERT INTO `sys_area` VALUES ('540202', '540202', '桑珠孜区', '540200', '区', '', '0892', '857000', '中国,西藏自治区,日喀则市,桑珠孜区', '88.880367', '29.269565', 'Sangzhuzi', '桑珠孜', '0');
INSERT INTO `sys_area` VALUES ('540221', '540221', '南木林县', '540200', '区', '', '0892', '857100', '中国,西藏自治区,日喀则市,南木林县', '89.096860', '29.682060', 'Nanmulin', '南木林', '0');
INSERT INTO `sys_area` VALUES ('540222', '540222', '江孜县', '540200', '区', '', '0892', '857400', '中国,西藏自治区,日喀则市,江孜县', '89.602630', '28.917440', 'Jiangzi', '江孜', '0');
INSERT INTO `sys_area` VALUES ('540223', '540223', '定日县', '540200', '区', '', '0892', '858200', '中国,西藏自治区,日喀则市,定日县', '87.121760', '28.661290', 'Dingri', '定日', '0');
INSERT INTO `sys_area` VALUES ('540224', '540224', '萨迦县', '540200', '区', '', '0892', '857800', '中国,西藏自治区,日喀则市,萨迦县', '88.021910', '28.902990', 'Sajia', '萨迦', '0');
INSERT INTO `sys_area` VALUES ('540225', '540225', '拉孜县', '540200', '区', '', '0892', '858100', '中国,西藏自治区,日喀则市,拉孜县', '87.634120', '29.085000', 'Lazi', '拉孜', '0');
INSERT INTO `sys_area` VALUES ('540226', '540226', '昂仁县', '540200', '区', '', '0892', '858500', '中国,西藏自治区,日喀则市,昂仁县', '87.238580', '29.294960', 'Angren', '昂仁', '0');
INSERT INTO `sys_area` VALUES ('540227', '540227', '谢通门县', '540200', '区', '', '0892', '858900', '中国,西藏自治区,日喀则市,谢通门县', '88.262420', '29.433370', 'Xietongmen', '谢通门', '0');
INSERT INTO `sys_area` VALUES ('540228', '540228', '白朗县', '540200', '区', '', '0892', '857300', '中国,西藏自治区,日喀则市,白朗县', '89.262050', '29.105530', 'Bailang', '白朗', '0');
INSERT INTO `sys_area` VALUES ('540229', '540229', '仁布县', '540200', '区', '', '0892', '857200', '中国,西藏自治区,日喀则市,仁布县', '89.842280', '29.230100', 'Renbu', '仁布', '0');
INSERT INTO `sys_area` VALUES ('540230', '540230', '康马县', '540200', '区', '', '0892', '857500', '中国,西藏自治区,日喀则市,康马县', '89.685270', '28.556700', 'Kangma', '康马', '0');
INSERT INTO `sys_area` VALUES ('540231', '540231', '定结县', '540200', '区', '', '0892', '857900', '中国,西藏自治区,日喀则市,定结县', '87.772550', '28.364030', 'Dingjie', '定结', '0');
INSERT INTO `sys_area` VALUES ('540232', '540232', '仲巴县', '540200', '区', '', '0892', '858800', '中国,西藏自治区,日喀则市,仲巴县', '84.029510', '29.765950', 'Zhongba', '仲巴', '0');
INSERT INTO `sys_area` VALUES ('540233', '540233', '亚东县', '540200', '区', '', '0892', '857600', '中国,西藏自治区,日喀则市,亚东县', '88.908020', '27.483900', 'Yadong', '亚东', '0');
INSERT INTO `sys_area` VALUES ('540234', '540234', '吉隆县', '540200', '区', '', '0892', '858700', '中国,西藏自治区,日喀则市,吉隆县', '85.298460', '28.853820', 'Jilong', '吉隆', '0');
INSERT INTO `sys_area` VALUES ('540235', '540235', '聂拉木县', '540200', '区', '', '0892', '858300', '中国,西藏自治区,日喀则市,聂拉木县', '85.979980', '28.156450', 'Nielamu', '聂拉木', '0');
INSERT INTO `sys_area` VALUES ('540236', '540236', '萨嘎县', '540200', '区', '', '0892', '857800', '中国,西藏自治区,日喀则市,萨嘎县', '85.234130', '29.329360', 'Saga', '萨嘎', '0');
INSERT INTO `sys_area` VALUES ('540237', '540237', '岗巴县', '540200', '区', '', '0892', '857700', '中国,西藏自治区,日喀则市,岗巴县', '88.520690', '28.275040', 'Gangba', '岗巴', '0');
INSERT INTO `sys_area` VALUES ('540300', '540300', '昌都市', '540000', '市', '', '0895', '854000', '中国,西藏自治区,昌都市', '97.178452', '31.136875', 'Qamdo', '昌都', '0');
INSERT INTO `sys_area` VALUES ('540302', '540302', '卡若区', '540300', '区', '', '0895', '854000', '中国,西藏自治区,昌都市,卡若区', '97.180430', '31.138500', 'Karuo', '昌都', '0');
INSERT INTO `sys_area` VALUES ('540321', '540321', '江达县', '540300', '区', '', '0895', '854100', '中国,西藏自治区,昌都市,江达县', '98.218650', '31.503430', 'Jiangda', '江达', '0');
INSERT INTO `sys_area` VALUES ('540322', '540322', '贡觉县', '540300', '区', '', '0895', '854200', '中国,西藏自治区,昌都市,贡觉县', '98.271630', '30.859410', 'Gongjue', '贡觉', '0');
INSERT INTO `sys_area` VALUES ('540323', '540323', '类乌齐县', '540300', '区', '', '0895', '855600', '中国,西藏自治区,昌都市,类乌齐县', '96.600150', '31.212070', 'Leiwuqi', '类乌齐', '0');
INSERT INTO `sys_area` VALUES ('540324', '540324', '丁青县', '540300', '区', '', '0895', '855700', '中国,西藏自治区,昌都市,丁青县', '95.593620', '31.416210', 'Dingqing', '丁青', '0');
INSERT INTO `sys_area` VALUES ('540325', '540325', '察雅县', '540300', '区', '', '0895', '854300', '中国,西藏自治区,昌都市,察雅县', '97.565210', '30.653360', 'Chaya', '察雅', '0');
INSERT INTO `sys_area` VALUES ('540326', '540326', '八宿县', '540300', '区', '', '0895', '854600', '中国,西藏自治区,昌都市,八宿县', '96.917600', '30.053460', 'Basu', '八宿', '0');
INSERT INTO `sys_area` VALUES ('540327', '540327', '左贡县', '540300', '区', '', '0895', '854400', '中国,西藏自治区,昌都市,左贡县', '97.844290', '29.671080', 'Zuogong', '左贡', '0');
INSERT INTO `sys_area` VALUES ('540328', '540328', '芒康县', '540300', '区', '', '0895', '854500', '中国,西藏自治区,昌都市,芒康县', '98.593780', '29.679460', 'Mangkang', '芒康', '0');
INSERT INTO `sys_area` VALUES ('540329', '540329', '洛隆县', '540300', '区', '', '0895', '855400', '中国,西藏自治区,昌都市,洛隆县', '95.826440', '30.740490', 'Luolong', '洛隆', '0');
INSERT INTO `sys_area` VALUES ('540330', '540330', '边坝县', '540300', '区', '', '0895', '855500', '中国,西藏自治区,昌都市,边坝县', '94.706870', '30.934340', 'Bianba', '边坝', '0');
INSERT INTO `sys_area` VALUES ('542200', '542200', '山南地区', '540000', '市', '', '0893', '856000', '中国,西藏自治区,山南地区', '91.766529', '29.236023', 'Shannan', '山南', '0');
INSERT INTO `sys_area` VALUES ('542221', '542221', '乃东县', '542200', '区', '', '0893', '856100', '中国,西藏自治区,山南地区,乃东县', '91.761530', '29.224900', 'Naidong', '乃东', '0');
INSERT INTO `sys_area` VALUES ('542222', '542222', '扎囊县', '542200', '区', '', '0893', '850800', '中国,西藏自治区,山南地区,扎囊县', '91.332880', '29.239900', 'Zhanang', '扎囊', '0');
INSERT INTO `sys_area` VALUES ('542223', '542223', '贡嘎县', '542200', '区', '', '0893', '850700', '中国,西藏自治区,山南地区,贡嘎县', '90.988670', '29.294080', 'Gongga', '贡嘎', '0');
INSERT INTO `sys_area` VALUES ('542224', '542224', '桑日县', '542200', '区', '', '0893', '856200', '中国,西藏自治区,山南地区,桑日县', '92.020050', '29.266430', 'Sangri', '桑日', '0');
INSERT INTO `sys_area` VALUES ('542225', '542225', '琼结县', '542200', '区', '', '0893', '856800', '中国,西藏自治区,山南地区,琼结县', '91.680930', '29.026320', 'Qiongjie', '琼结', '0');
INSERT INTO `sys_area` VALUES ('542226', '542226', '曲松县', '542200', '区', '', '0893', '856300', '中国,西藏自治区,山南地区,曲松县', '92.202630', '29.064120', 'Qusong', '曲松', '0');
INSERT INTO `sys_area` VALUES ('542227', '542227', '措美县', '542200', '区', '', '0893', '856900', '中国,西藏自治区,山南地区,措美县', '91.432370', '28.437940', 'Cuomei', '措美', '0');
INSERT INTO `sys_area` VALUES ('542228', '542228', '洛扎县', '542200', '区', '', '0893', '856600', '中国,西藏自治区,山南地区,洛扎县', '90.860350', '28.387200', 'Luozha', '洛扎', '0');
INSERT INTO `sys_area` VALUES ('542229', '542229', '加查县', '542200', '区', '', '0893', '856400', '中国,西藏自治区,山南地区,加查县', '92.577020', '29.139730', 'Jiacha', '加查', '0');
INSERT INTO `sys_area` VALUES ('542231', '542231', '隆子县', '542200', '区', '', '0893', '856600', '中国,西藏自治区,山南地区,隆子县', '92.461480', '28.407970', 'Longzi', '隆子', '0');
INSERT INTO `sys_area` VALUES ('542232', '542232', '错那县', '542200', '区', '', '0893', '856700', '中国,西藏自治区,山南地区,错那县', '91.957520', '27.992240', 'Cuona', '错那', '0');
INSERT INTO `sys_area` VALUES ('542233', '542233', '浪卡子县', '542200', '区', '', '0893', '851100', '中国,西藏自治区,山南地区,浪卡子县', '90.400020', '28.969480', 'Langkazi', '浪卡子', '0');
INSERT INTO `sys_area` VALUES ('542400', '542400', '那曲地区', '540000', '市', '', '0896', '852000', '中国,西藏自治区,那曲地区', '92.060214', '31.476004', 'Nagqu', '那曲', '0');
INSERT INTO `sys_area` VALUES ('542421', '542421', '那曲县', '542400', '区', '', '0896', '852000', '中国,西藏自治区,那曲地区,那曲县', '92.053500', '31.469640', 'Naqu', '那曲', '0');
INSERT INTO `sys_area` VALUES ('542422', '542422', '嘉黎县', '542400', '区', '', '0896', '852400', '中国,西藏自治区,那曲地区,嘉黎县', '93.249870', '30.642330', 'Jiali', '嘉黎', '0');
INSERT INTO `sys_area` VALUES ('542423', '542423', '比如县', '542400', '区', '', '0896', '852300', '中国,西藏自治区,那曲地区,比如县', '93.686850', '31.477900', 'Biru', '比如', '0');
INSERT INTO `sys_area` VALUES ('542424', '542424', '聂荣县', '542400', '区', '', '0896', '853500', '中国,西藏自治区,那曲地区,聂荣县', '92.295740', '32.111930', 'Nierong', '聂荣', '0');
INSERT INTO `sys_area` VALUES ('542425', '542425', '安多县', '542400', '区', '', '0896', '853400', '中国,西藏自治区,那曲地区,安多县', '91.679500', '32.261250', 'Anduo', '安多', '0');
INSERT INTO `sys_area` VALUES ('542426', '542426', '申扎县', '542400', '区', '', '0896', '853100', '中国,西藏自治区,那曲地区,申扎县', '88.707760', '30.929950', 'Shenzha', '申扎', '0');
INSERT INTO `sys_area` VALUES ('542427', '542427', '索县', '542400', '区', '', '0896', '852200', '中国,西藏自治区,那曲地区,索县', '93.782950', '31.884270', 'Suoxian', '索县', '0');
INSERT INTO `sys_area` VALUES ('542428', '542428', '班戈县', '542400', '区', '', '0896', '852500', '中国,西藏自治区,那曲地区,班戈县', '90.019070', '31.361490', 'Bange', '班戈', '0');
INSERT INTO `sys_area` VALUES ('542429', '542429', '巴青县', '542400', '区', '', '0896', '852100', '中国,西藏自治区,那曲地区,巴青县', '94.053160', '31.918330', 'Baqing', '巴青', '0');
INSERT INTO `sys_area` VALUES ('542430', '542430', '尼玛县', '542400', '区', '', '0896', '852600', '中国,西藏自治区,那曲地区,尼玛县', '87.252560', '31.796540', 'Nima', '尼玛', '0');
INSERT INTO `sys_area` VALUES ('542431', '542431', '双湖县', '542400', '区', '', '0896', '852600', '中国,西藏自治区,那曲地区,双湖县', '88.837776', '33.189032', 'Shuanghu', '双湖', '0');
INSERT INTO `sys_area` VALUES ('542500', '542500', '阿里地区', '540000', '市', '', '0897', '859000', '中国,西藏自治区,阿里地区', '80.105498', '32.503187', 'Ngari', '阿里', '0');
INSERT INTO `sys_area` VALUES ('542521', '542521', '普兰县', '542500', '区', '', '0897', '859500', '中国,西藏自治区,阿里地区,普兰县', '81.177000', '30.300020', 'Pulan', '普兰', '0');
INSERT INTO `sys_area` VALUES ('542522', '542522', '札达县', '542500', '区', '', '0897', '859600', '中国,西藏自治区,阿里地区,札达县', '79.802550', '31.483450', 'Zhada', '札达', '0');
INSERT INTO `sys_area` VALUES ('542523', '542523', '噶尔县', '542500', '区', '', '0897', '859400', '中国,西藏自治区,阿里地区,噶尔县', '80.095790', '32.500240', 'Gaer', '噶尔', '0');
INSERT INTO `sys_area` VALUES ('542524', '542524', '日土县', '542500', '区', '', '0897', '859700', '中国,西藏自治区,阿里地区,日土县', '79.713100', '33.387410', 'Ritu', '日土', '0');
INSERT INTO `sys_area` VALUES ('542525', '542525', '革吉县', '542500', '区', '', '0897', '859100', '中国,西藏自治区,阿里地区,革吉县', '81.151000', '32.396400', 'Geji', '革吉', '0');
INSERT INTO `sys_area` VALUES ('542526', '542526', '改则县', '542500', '区', '', '0897', '859200', '中国,西藏自治区,阿里地区,改则县', '84.062950', '32.304460', 'Gaize', '改则', '0');
INSERT INTO `sys_area` VALUES ('542527', '542527', '措勤县', '542500', '区', '', '0897', '859300', '中国,西藏自治区,阿里地区,措勤县', '85.166160', '31.020950', 'Cuoqin', '措勤', '0');
INSERT INTO `sys_area` VALUES ('542600', '542600', '林芝地区', '540000', '市', '', '0894', '850400', '中国,西藏自治区,林芝地区', '94.362348', '29.654693', 'Nyingchi', '林芝', '0');
INSERT INTO `sys_area` VALUES ('542621', '542621', '林芝县', '542600', '区', '', '0894', '850400', '中国,西藏自治区,林芝地区,林芝县', '94.483910', '29.575620', 'Linzhi', '林芝', '0');
INSERT INTO `sys_area` VALUES ('542622', '542622', '工布江达县', '542600', '区', '', '0894', '850300', '中国,西藏自治区,林芝地区,工布江达县', '93.245200', '29.885760', 'Gongbujiangda', '工布江达', '0');
INSERT INTO `sys_area` VALUES ('542623', '542623', '米林县', '542600', '区', '', '0894', '850500', '中国,西藏自治区,林芝地区,米林县', '94.213160', '29.215350', 'Milin', '米林', '0');
INSERT INTO `sys_area` VALUES ('542624', '542624', '墨脱县', '542600', '区', '', '0894', '855300', '中国,西藏自治区,林芝地区,墨脱县', '95.331600', '29.326980', 'Motuo', '墨脱', '0');
INSERT INTO `sys_area` VALUES ('542625', '542625', '波密县', '542600', '区', '', '0894', '855200', '中国,西藏自治区,林芝地区,波密县', '95.770960', '29.859070', 'Bomi', '波密', '0');
INSERT INTO `sys_area` VALUES ('542626', '542626', '察隅县', '542600', '区', '', '0894', '855100', '中国,西藏自治区,林芝地区,察隅县', '97.466790', '28.661800', 'Chayu', '察隅', '0');
INSERT INTO `sys_area` VALUES ('542627', '542627', '朗县', '542600', '区', '', '0894', '856500', '中国,西藏自治区,林芝地区,朗县', '93.075400', '29.045490', 'Langxian', '朗县', '0');
INSERT INTO `sys_area` VALUES ('610000', '610000', '陕西省', '100000', '省', '', '', '', '中国,陕西省', '108.948024', '34.263161', 'Shaanxi', '陕西', '0');
INSERT INTO `sys_area` VALUES ('610100', '610100', '西安市', '610000', '市', '', '029', '710003', '中国,陕西省,西安市', '108.948024', '34.263161', 'Xi\'an', '西安', '0');
INSERT INTO `sys_area` VALUES ('610102', '610102', '新城区', '610100', '区', '', '029', '710004', '中国,陕西省,西安市,新城区', '108.960800', '34.266410', 'Xincheng', '新城', '0');
INSERT INTO `sys_area` VALUES ('610103', '610103', '碑林区', '610100', '区', '', '029', '710001', '中国,陕西省,西安市,碑林区', '108.934260', '34.230400', 'Beilin', '碑林', '0');
INSERT INTO `sys_area` VALUES ('610104', '610104', '莲湖区', '610100', '区', '', '029', '710003', '中国,陕西省,西安市,莲湖区', '108.940100', '34.267090', 'Lianhu', '莲湖', '0');
INSERT INTO `sys_area` VALUES ('610111', '610111', '灞桥区', '610100', '区', '', '029', '710038', '中国,陕西省,西安市,灞桥区', '109.064510', '34.272640', 'Baqiao', '灞桥', '0');
INSERT INTO `sys_area` VALUES ('610112', '610112', '未央区', '610100', '区', '', '029', '710014', '中国,陕西省,西安市,未央区', '108.946830', '34.292960', 'Weiyang', '未央', '0');
INSERT INTO `sys_area` VALUES ('610113', '610113', '雁塔区', '610100', '区', '', '029', '710061', '中国,陕西省,西安市,雁塔区', '108.948660', '34.222450', 'Yanta', '雁塔', '0');
INSERT INTO `sys_area` VALUES ('610114', '610114', '阎良区', '610100', '区', '', '029', '710087', '中国,陕西省,西安市,阎良区', '109.226160', '34.662210', 'Yanliang', '阎良', '0');
INSERT INTO `sys_area` VALUES ('610115', '610115', '临潼区', '610100', '区', '', '029', '710600', '中国,陕西省,西安市,临潼区', '109.214170', '34.366650', 'Lintong', '临潼', '0');
INSERT INTO `sys_area` VALUES ('610116', '610116', '长安区', '610100', '区', '', '029', '710100', '中国,陕西省,西安市,长安区', '108.945860', '34.155590', 'Chang\'an', '长安', '0');
INSERT INTO `sys_area` VALUES ('610122', '610122', '蓝田县', '610100', '区', '', '029', '710500', '中国,陕西省,西安市,蓝田县', '109.323390', '34.151280', 'Lantian', '蓝田', '0');
INSERT INTO `sys_area` VALUES ('610124', '610124', '周至县', '610100', '区', '', '029', '710400', '中国,陕西省,西安市,周至县', '108.222070', '34.163370', 'Zhouzhi', '周至', '0');
INSERT INTO `sys_area` VALUES ('610125', '610125', '户县', '610100', '区', '', '029', '710300', '中国,陕西省,西安市,户县', '108.605130', '34.108560', 'Huxian', '户县', '0');
INSERT INTO `sys_area` VALUES ('610126', '610126', '高陵区', '610100', '区', '', '029', '710200', '中国,陕西省,西安市,高陵区', '109.088160', '34.534830', 'Gaoling', '高陵', '0');
INSERT INTO `sys_area` VALUES ('610200', '610200', '铜川市', '610000', '市', '', '0919', '727100', '中国,陕西省,铜川市', '108.963122', '34.908920', 'Tongchuan', '铜川', '0');
INSERT INTO `sys_area` VALUES ('610202', '610202', '王益区', '610200', '区', '', '0919', '727000', '中国,陕西省,铜川市,王益区', '109.075640', '35.068960', 'Wangyi', '王益', '0');
INSERT INTO `sys_area` VALUES ('610203', '610203', '印台区', '610200', '区', '', '0919', '727007', '中国,陕西省,铜川市,印台区', '109.102080', '35.116900', 'Yintai', '印台', '0');
INSERT INTO `sys_area` VALUES ('610204', '610204', '耀州区', '610200', '区', '', '0919', '727100', '中国,陕西省,铜川市,耀州区', '108.985560', '34.913080', 'Yaozhou', '耀州', '0');
INSERT INTO `sys_area` VALUES ('610222', '610222', '宜君县', '610200', '区', '', '0919', '727200', '中国,陕西省,铜川市,宜君县', '109.118130', '35.401080', 'Yijun', '宜君', '0');
INSERT INTO `sys_area` VALUES ('610300', '610300', '宝鸡市', '610000', '市', '', '0917', '721000', '中国,陕西省,宝鸡市', '107.144870', '34.369315', 'Baoji', '宝鸡', '0');
INSERT INTO `sys_area` VALUES ('610302', '610302', '渭滨区', '610300', '区', '', '0917', '721000', '中国,陕西省,宝鸡市,渭滨区', '107.149910', '34.371160', 'Weibin', '渭滨', '0');
INSERT INTO `sys_area` VALUES ('610303', '610303', '金台区', '610300', '区', '', '0917', '721000', '中国,陕西省,宝鸡市,金台区', '107.146910', '34.376120', 'Jintai', '金台', '0');
INSERT INTO `sys_area` VALUES ('610304', '610304', '陈仓区', '610300', '区', '', '0917', '721300', '中国,陕西省,宝鸡市,陈仓区', '107.387420', '34.354510', 'Chencang', '陈仓', '0');
INSERT INTO `sys_area` VALUES ('610322', '610322', '凤翔县', '610300', '区', '', '0917', '721400', '中国,陕西省,宝鸡市,凤翔县', '107.396450', '34.523210', 'Fengxiang', '凤翔', '0');
INSERT INTO `sys_area` VALUES ('610323', '610323', '岐山县', '610300', '区', '', '0917', '722400', '中国,陕西省,宝鸡市,岐山县', '107.621730', '34.443780', 'Qishan', '岐山', '0');
INSERT INTO `sys_area` VALUES ('610324', '610324', '扶风县', '610300', '区', '', '0917', '722200', '中国,陕西省,宝鸡市,扶风县', '107.900170', '34.375240', 'Fufeng', '扶风', '0');
INSERT INTO `sys_area` VALUES ('610326', '610326', '眉县', '610300', '区', '', '0917', '722300', '中国,陕西省,宝鸡市,眉县', '107.750790', '34.275690', 'Meixian', '眉县', '0');
INSERT INTO `sys_area` VALUES ('610327', '610327', '陇县', '610300', '区', '', '0917', '721200', '中国,陕西省,宝鸡市,陇县', '106.859460', '34.894040', 'Longxian', '陇县', '0');
INSERT INTO `sys_area` VALUES ('610328', '610328', '千阳县', '610300', '区', '', '0917', '721100', '中国,陕西省,宝鸡市,千阳县', '107.130430', '34.642190', 'Qianyang', '千阳', '0');
INSERT INTO `sys_area` VALUES ('610329', '610329', '麟游县', '610300', '区', '', '0917', '721500', '中国,陕西省,宝鸡市,麟游县', '107.796230', '34.678440', 'Linyou', '麟游', '0');
INSERT INTO `sys_area` VALUES ('610330', '610330', '凤县', '610300', '区', '', '0917', '721700', '中国,陕西省,宝鸡市,凤县', '106.523560', '33.911720', 'Fengxian', '凤县', '0');
INSERT INTO `sys_area` VALUES ('610331', '610331', '太白县', '610300', '区', '', '0917', '721600', '中国,陕西省,宝鸡市,太白县', '107.316460', '34.062070', 'Taibai', '太白', '0');
INSERT INTO `sys_area` VALUES ('610400', '610400', '咸阳市', '610000', '市', '', '029', '712000', '中国,陕西省,咸阳市', '108.705117', '34.333439', 'Xianyang', '咸阳', '0');
INSERT INTO `sys_area` VALUES ('610402', '610402', '秦都区', '610400', '区', '', '029', '712000', '中国,陕西省,咸阳市,秦都区', '108.714930', '34.338040', 'Qindu', '秦都', '0');
INSERT INTO `sys_area` VALUES ('610403', '610403', '杨陵区', '610400', '区', '', '029', '712100', '中国,陕西省,咸阳市,杨陵区', '108.083481', '34.270434', 'Yangling', '杨陵', '0');
INSERT INTO `sys_area` VALUES ('610404', '610404', '渭城区', '610400', '区', '', '029', '712000', '中国,陕西省,咸阳市,渭城区', '108.722270', '34.331980', 'Weicheng', '渭城', '0');
INSERT INTO `sys_area` VALUES ('610422', '610422', '三原县', '610400', '区', '', '029', '713800', '中国,陕西省,咸阳市,三原县', '108.931940', '34.615560', 'Sanyuan', '三原', '0');
INSERT INTO `sys_area` VALUES ('610423', '610423', '泾阳县', '610400', '区', '', '029', '713700', '中国,陕西省,咸阳市,泾阳县', '108.842590', '34.527050', 'Jingyang', '泾阳', '0');
INSERT INTO `sys_area` VALUES ('610424', '610424', '乾县', '610400', '区', '', '029', '713300', '中国,陕西省,咸阳市,乾县', '108.242310', '34.529460', 'Qianxian', '乾县', '0');
INSERT INTO `sys_area` VALUES ('610425', '610425', '礼泉县', '610400', '区', '', '029', '713200', '中国,陕西省,咸阳市,礼泉县', '108.426300', '34.484550', 'Liquan', '礼泉', '0');
INSERT INTO `sys_area` VALUES ('610426', '610426', '永寿县', '610400', '区', '', '029', '713400', '中国,陕西省,咸阳市,永寿县', '108.144740', '34.690810', 'Yongshou', '永寿', '0');
INSERT INTO `sys_area` VALUES ('610427', '610427', '彬县', '610400', '区', '', '029', '713500', '中国,陕西省,咸阳市,彬县', '108.084680', '35.034200', 'Binxian', '彬县', '0');
INSERT INTO `sys_area` VALUES ('610428', '610428', '长武县', '610400', '区', '', '029', '713600', '中国,陕西省,咸阳市,长武县', '107.795100', '35.206700', 'Changwu', '长武', '0');
INSERT INTO `sys_area` VALUES ('610429', '610429', '旬邑县', '610400', '区', '', '029', '711300', '中国,陕西省,咸阳市,旬邑县', '108.334100', '35.113380', 'Xunyi', '旬邑', '0');
INSERT INTO `sys_area` VALUES ('610430', '610430', '淳化县', '610400', '区', '', '029', '711200', '中国,陕西省,咸阳市,淳化县', '108.580260', '34.798860', 'Chunhua', '淳化', '0');
INSERT INTO `sys_area` VALUES ('610431', '610431', '武功县', '610400', '区', '', '029', '712200', '中国,陕西省,咸阳市,武功县', '108.204340', '34.260030', 'Wugong', '武功', '0');
INSERT INTO `sys_area` VALUES ('610481', '610481', '兴平市', '610400', '区', '', '029', '713100', '中国,陕西省,咸阳市,兴平市', '108.490570', '34.297850', 'Xingping', '兴平', '0');
INSERT INTO `sys_area` VALUES ('610500', '610500', '渭南市', '610000', '市', '', '0913', '714000', '中国,陕西省,渭南市', '109.502882', '34.499381', 'Weinan', '渭南', '0');
INSERT INTO `sys_area` VALUES ('610502', '610502', '临渭区', '610500', '区', '', '0913', '714000', '中国,陕西省,渭南市,临渭区', '109.492960', '34.498220', 'Linwei', '临渭', '0');
INSERT INTO `sys_area` VALUES ('610521', '610521', '华县', '610500', '区', '', '0913', '714100', '中国,陕西省,渭南市,华县', '109.771850', '34.512550', 'Huaxian', '华县', '0');
INSERT INTO `sys_area` VALUES ('610522', '610522', '潼关县', '610500', '区', '', '0913', '714300', '中国,陕西省,渭南市,潼关县', '110.243620', '34.542840', 'Tongguan', '潼关', '0');
INSERT INTO `sys_area` VALUES ('610523', '610523', '大荔县', '610500', '区', '', '0913', '715100', '中国,陕西省,渭南市,大荔县', '109.942160', '34.795650', 'Dali', '大荔', '0');
INSERT INTO `sys_area` VALUES ('610524', '610524', '合阳县', '610500', '区', '', '0913', '715300', '中国,陕西省,渭南市,合阳县', '110.148620', '35.238050', 'Heyang', '合阳', '0');
INSERT INTO `sys_area` VALUES ('610525', '610525', '澄城县', '610500', '区', '', '0913', '715200', '中国,陕西省,渭南市,澄城县', '109.934440', '35.183960', 'Chengcheng', '澄城', '0');
INSERT INTO `sys_area` VALUES ('610526', '610526', '蒲城县', '610500', '区', '', '0913', '715500', '中国,陕西省,渭南市,蒲城县', '109.590300', '34.956800', 'Pucheng', '蒲城', '0');
INSERT INTO `sys_area` VALUES ('610527', '610527', '白水县', '610500', '区', '', '0913', '715600', '中国,陕西省,渭南市,白水县', '109.592860', '35.178630', 'Baishui', '白水', '0');
INSERT INTO `sys_area` VALUES ('610528', '610528', '富平县', '610500', '区', '', '0913', '711700', '中国,陕西省,渭南市,富平县', '109.180200', '34.751090', 'Fuping', '富平', '0');
INSERT INTO `sys_area` VALUES ('610581', '610581', '韩城市', '610500', '区', '', '0913', '715400', '中国,陕西省,渭南市,韩城市', '110.442380', '35.479260', 'Hancheng', '韩城', '0');
INSERT INTO `sys_area` VALUES ('610582', '610582', '华阴市', '610500', '区', '', '0913', '714200', '中国,陕西省,渭南市,华阴市', '110.087520', '34.566080', 'Huayin', '华阴', '0');
INSERT INTO `sys_area` VALUES ('610600', '610600', '延安市', '610000', '市', '', '0911', '716000', '中国,陕西省,延安市', '109.490810', '36.596537', 'Yan\'an', '延安', '0');
INSERT INTO `sys_area` VALUES ('610602', '610602', '宝塔区', '610600', '区', '', '0911', '716000', '中国,陕西省,延安市,宝塔区', '109.493360', '36.591540', 'Baota', '宝塔', '0');
INSERT INTO `sys_area` VALUES ('610621', '610621', '延长县', '610600', '区', '', '0911', '717100', '中国,陕西省,延安市,延长县', '110.010830', '36.579040', 'Yanchang', '延长', '0');
INSERT INTO `sys_area` VALUES ('610622', '610622', '延川县', '610600', '区', '', '0911', '717200', '中国,陕西省,延安市,延川县', '110.194150', '36.878170', 'Yanchuan', '延川', '0');
INSERT INTO `sys_area` VALUES ('610623', '610623', '子长县', '610600', '区', '', '0911', '717300', '中国,陕西省,延安市,子长县', '109.675320', '37.142530', 'Zichang', '子长', '0');
INSERT INTO `sys_area` VALUES ('610624', '610624', '安塞县', '610600', '区', '', '0911', '717400', '中国,陕西省,延安市,安塞县', '109.327080', '36.865070', 'Ansai', '安塞', '0');
INSERT INTO `sys_area` VALUES ('610625', '610625', '志丹县', '610600', '区', '', '0911', '717500', '中国,陕西省,延安市,志丹县', '108.768150', '36.821770', 'Zhidan', '志丹', '0');
INSERT INTO `sys_area` VALUES ('610626', '610626', '吴起县', '610600', '区', '', '0911', '717600', '中国,陕西省,延安市,吴起县', '108.176110', '36.927850', 'Wuqi', '吴起', '0');
INSERT INTO `sys_area` VALUES ('610627', '610627', '甘泉县', '610600', '区', '', '0911', '716100', '中国,陕西省,延安市,甘泉县', '109.350120', '36.277540', 'Ganquan', '甘泉', '0');
INSERT INTO `sys_area` VALUES ('610628', '610628', '富县', '610600', '区', '', '0911', '727500', '中国,陕西省,延安市,富县', '109.379270', '35.988030', 'Fuxian', '富县', '0');
INSERT INTO `sys_area` VALUES ('610629', '610629', '洛川县', '610600', '区', '', '0911', '727400', '中国,陕西省,延安市,洛川县', '109.432860', '35.760760', 'Luochuan', '洛川', '0');
INSERT INTO `sys_area` VALUES ('610630', '610630', '宜川县', '610600', '区', '', '0911', '716200', '中国,陕西省,延安市,宜川县', '110.171960', '36.047320', 'Yichuan', '宜川', '0');
INSERT INTO `sys_area` VALUES ('610631', '610631', '黄龙县', '610600', '区', '', '0911', '715700', '中国,陕西省,延安市,黄龙县', '109.842590', '35.583490', 'Huanglong', '黄龙', '0');
INSERT INTO `sys_area` VALUES ('610632', '610632', '黄陵县', '610600', '区', '', '0911', '727300', '中国,陕西省,延安市,黄陵县', '109.263330', '35.583570', 'Huangling', '黄陵', '0');
INSERT INTO `sys_area` VALUES ('610700', '610700', '汉中市', '610000', '市', '', '0916', '723000', '中国,陕西省,汉中市', '107.028621', '33.077668', 'Hanzhong', '汉中', '0');
INSERT INTO `sys_area` VALUES ('610702', '610702', '汉台区', '610700', '区', '', '0916', '723000', '中国,陕西省,汉中市,汉台区', '107.031870', '33.067740', 'Hantai', '汉台', '0');
INSERT INTO `sys_area` VALUES ('610721', '610721', '南郑县', '610700', '区', '', '0916', '723100', '中国,陕西省,汉中市,南郑县', '106.940240', '33.002990', 'Nanzheng', '南郑', '0');
INSERT INTO `sys_area` VALUES ('610722', '610722', '城固县', '610700', '区', '', '0916', '723200', '中国,陕西省,汉中市,城固县', '107.333670', '33.156610', 'Chenggu', '城固', '0');
INSERT INTO `sys_area` VALUES ('610723', '610723', '洋县', '610700', '区', '', '0916', '723300', '中国,陕西省,汉中市,洋县', '107.546720', '33.221020', 'Yangxian', '洋县', '0');
INSERT INTO `sys_area` VALUES ('610724', '610724', '西乡县', '610700', '区', '', '0916', '723500', '中国,陕西省,汉中市,西乡县', '107.768670', '32.984110', 'Xixiang', '西乡', '0');
INSERT INTO `sys_area` VALUES ('610725', '610725', '勉县', '610700', '区', '', '0916', '724200', '中国,陕西省,汉中市,勉县', '106.675840', '33.152730', 'Mianxian', '勉县', '0');
INSERT INTO `sys_area` VALUES ('610726', '610726', '宁强县', '610700', '区', '', '0916', '724400', '中国,陕西省,汉中市,宁强县', '106.259580', '32.828810', 'Ningqiang', '宁强', '0');
INSERT INTO `sys_area` VALUES ('610727', '610727', '略阳县', '610700', '区', '', '0916', '724300', '中国,陕西省,汉中市,略阳县', '106.153990', '33.330090', 'Lueyang', '略阳', '0');
INSERT INTO `sys_area` VALUES ('610728', '610728', '镇巴县', '610700', '区', '', '0916', '723600', '中国,陕西省,汉中市,镇巴县', '107.896480', '32.534870', 'Zhenba', '镇巴', '0');
INSERT INTO `sys_area` VALUES ('610729', '610729', '留坝县', '610700', '区', '', '0916', '724100', '中国,陕西省,汉中市,留坝县', '106.922330', '33.616060', 'Liuba', '留坝', '0');
INSERT INTO `sys_area` VALUES ('610730', '610730', '佛坪县', '610700', '区', '', '0916', '723400', '中国,陕西省,汉中市,佛坪县', '107.989740', '33.524960', 'Foping', '佛坪', '0');
INSERT INTO `sys_area` VALUES ('610800', '610800', '榆林市', '610000', '市', '', '0912', '719000', '中国,陕西省,榆林市', '109.741193', '38.290162', 'Yulin', '榆林', '0');
INSERT INTO `sys_area` VALUES ('610802', '610802', '榆阳区', '610800', '区', '', '0912', '719000', '中国,陕西省,榆林市,榆阳区', '109.734730', '38.278430', 'Yuyang', '榆阳', '0');
INSERT INTO `sys_area` VALUES ('610821', '610821', '神木县', '610800', '区', '', '0912', '719300', '中国,陕西省,榆林市,神木县', '110.498900', '38.842340', 'Shenmu', '神木', '0');
INSERT INTO `sys_area` VALUES ('610822', '610822', '府谷县', '610800', '区', '', '0912', '719400', '中国,陕西省,榆林市,府谷县', '111.067230', '39.028050', 'Fugu', '府谷', '0');
INSERT INTO `sys_area` VALUES ('610823', '610823', '横山县', '610800', '区', '', '0912', '719100', '中国,陕西省,榆林市,横山县', '109.295680', '37.958000', 'Hengshan', '横山', '0');
INSERT INTO `sys_area` VALUES ('610824', '610824', '靖边县', '610800', '区', '', '0912', '718500', '中国,陕西省,榆林市,靖边县', '108.794120', '37.599380', 'Jingbian', '靖边', '0');
INSERT INTO `sys_area` VALUES ('610825', '610825', '定边县', '610800', '区', '', '0912', '718600', '中国,陕西省,榆林市,定边县', '107.597930', '37.590370', 'Dingbian', '定边', '0');
INSERT INTO `sys_area` VALUES ('610826', '610826', '绥德县', '610800', '区', '', '0912', '718000', '中国,陕西省,榆林市,绥德县', '110.261260', '37.497780', 'Suide', '绥德', '0');
INSERT INTO `sys_area` VALUES ('610827', '610827', '米脂县', '610800', '区', '', '0912', '718100', '中国,陕西省,榆林市,米脂县', '110.184170', '37.755290', 'Mizhi', '米脂', '0');
INSERT INTO `sys_area` VALUES ('610828', '610828', '佳县', '610800', '区', '', '0912', '719200', '中国,陕西省,榆林市,佳县', '110.493620', '38.022480', 'Jiaxian', '佳县', '0');
INSERT INTO `sys_area` VALUES ('610829', '610829', '吴堡县', '610800', '区', '', '0912', '718200', '中国,陕西省,榆林市,吴堡县', '110.745330', '37.457090', 'Wubu', '吴堡', '0');
INSERT INTO `sys_area` VALUES ('610830', '610830', '清涧县', '610800', '区', '', '0912', '718300', '中国,陕西省,榆林市,清涧县', '110.121730', '37.088540', 'Qingjian', '清涧', '0');
INSERT INTO `sys_area` VALUES ('610831', '610831', '子洲县', '610800', '区', '', '0912', '718400', '中国,陕西省,榆林市,子洲县', '110.034880', '37.612380', 'Zizhou', '子洲', '0');
INSERT INTO `sys_area` VALUES ('610900', '610900', '安康市', '610000', '市', '', '0915', '725000', '中国,陕西省,安康市', '109.029273', '32.690300', 'Ankang', '安康', '0');
INSERT INTO `sys_area` VALUES ('610902', '610902', '汉滨区', '610900', '区', '', '0915', '725000', '中国,陕西省,安康市,汉滨区', '109.026830', '32.695170', 'Hanbin', '汉滨', '0');
INSERT INTO `sys_area` VALUES ('610921', '610921', '汉阴县', '610900', '区', '', '0915', '725100', '中国,陕西省,安康市,汉阴县', '108.510980', '32.891290', 'Hanyin', '汉阴', '0');
INSERT INTO `sys_area` VALUES ('610922', '610922', '石泉县', '610900', '区', '', '0915', '725200', '中国,陕西省,安康市,石泉县', '108.247550', '33.039710', 'Shiquan', '石泉', '0');
INSERT INTO `sys_area` VALUES ('610923', '610923', '宁陕县', '610900', '区', '', '0915', '711600', '中国,陕西省,安康市,宁陕县', '108.315150', '33.317260', 'Ningshan', '宁陕', '0');
INSERT INTO `sys_area` VALUES ('610924', '610924', '紫阳县', '610900', '区', '', '0915', '725300', '中国,陕西省,安康市,紫阳县', '108.536800', '32.521150', 'Ziyang', '紫阳', '0');
INSERT INTO `sys_area` VALUES ('610925', '610925', '岚皋县', '610900', '区', '', '0915', '725400', '中国,陕西省,安康市,岚皋县', '108.902890', '32.307940', 'Langao', '岚皋', '0');
INSERT INTO `sys_area` VALUES ('610926', '610926', '平利县', '610900', '区', '', '0915', '725500', '中国,陕西省,安康市,平利县', '109.357750', '32.391110', 'Pingli', '平利', '0');
INSERT INTO `sys_area` VALUES ('610927', '610927', '镇坪县', '610900', '区', '', '0915', '725600', '中国,陕西省,安康市,镇坪县', '109.524560', '31.883300', 'Zhenping', '镇坪', '0');
INSERT INTO `sys_area` VALUES ('610928', '610928', '旬阳县', '610900', '区', '', '0915', '725700', '中国,陕西省,安康市,旬阳县', '109.361900', '32.832070', 'Xunyang', '旬阳', '0');
INSERT INTO `sys_area` VALUES ('610929', '610929', '白河县', '610900', '区', '', '0915', '725800', '中国,陕西省,安康市,白河县', '110.113150', '32.809550', 'Baihe', '白河', '0');
INSERT INTO `sys_area` VALUES ('611000', '611000', '商洛市', '610000', '市', '', '0914', '726000', '中国,陕西省,商洛市', '109.939776', '33.868319', 'Shangluo', '商洛', '0');
INSERT INTO `sys_area` VALUES ('611002', '611002', '商州区', '611000', '区', '', '0914', '726000', '中国,陕西省,商洛市,商州区', '109.941260', '33.862700', 'Shangzhou', '商州', '0');
INSERT INTO `sys_area` VALUES ('611021', '611021', '洛南县', '611000', '区', '', '0914', '726100', '中国,陕西省,商洛市,洛南县', '110.146450', '34.089940', 'Luonan', '洛南', '0');
INSERT INTO `sys_area` VALUES ('611022', '611022', '丹凤县', '611000', '区', '', '0914', '726200', '中国,陕西省,商洛市,丹凤县', '110.334860', '33.694680', 'Danfeng', '丹凤', '0');
INSERT INTO `sys_area` VALUES ('611023', '611023', '商南县', '611000', '区', '', '0914', '726300', '中国,陕西省,商洛市,商南县', '110.883750', '33.525810', 'Shangnan', '商南', '0');
INSERT INTO `sys_area` VALUES ('611024', '611024', '山阳县', '611000', '区', '', '0914', '726400', '中国,陕西省,商洛市,山阳县', '109.887840', '33.529310', 'Shanyang', '山阳', '0');
INSERT INTO `sys_area` VALUES ('611025', '611025', '镇安县', '611000', '区', '', '0914', '711500', '中国,陕西省,商洛市,镇安县', '109.153740', '33.423660', 'Zhen\'an', '镇安', '0');
INSERT INTO `sys_area` VALUES ('611026', '611026', '柞水县', '611000', '区', '', '0914', '711400', '中国,陕西省,商洛市,柞水县', '109.111050', '33.683100', 'Zhashui', '柞水', '0');
INSERT INTO `sys_area` VALUES ('611100', '611100', '西咸新区', '610000', '市', '', '029', '712000', '中国,陕西省,西咸新区', '108.810654', '34.307144', 'Xixian', '西咸', '0');
INSERT INTO `sys_area` VALUES ('611101', '611101', '空港新城', '611100', '区', '', '0374', '461000', '中国,陕西省,西咸新区,空港新城', '108.760529', '34.440894', 'Konggang', '空港', '0');
INSERT INTO `sys_area` VALUES ('611102', '611102', '沣东新城', '611100', '区', '', '029', '710000', '中国,陕西省,西咸新区,沣东新城', '108.829880', '34.267431', 'Fengdong', '沣东', '0');
INSERT INTO `sys_area` VALUES ('611103', '611103', '秦汉新城', '611100', '区', '', '029', '712000', '中国,陕西省,西咸新区,秦汉新城', '108.838120', '34.386513', 'Qinhan', '秦汉', '0');
INSERT INTO `sys_area` VALUES ('611104', '611104', '沣西新城', '611100', '区', '', '029', '710000', '中国,陕西省,西咸新区,沣西新城', '108.712150', '34.190453', 'Fengxi', '沣西', '0');
INSERT INTO `sys_area` VALUES ('611105', '611105', '泾河新城', '611100', '区', '', '029', '713700', '中国,陕西省,西咸新区,泾河新城', '109.049603', '34.460587', 'Jinghe', '泾河', '0');
INSERT INTO `sys_area` VALUES ('620000', '620000', '甘肃省', '100000', '省', '', '', '', '中国,甘肃省', '103.823557', '36.058039', 'Gansu', '甘肃', '0');
INSERT INTO `sys_area` VALUES ('620100', '620100', '兰州市', '620000', '市', '', '0931', '730030', '中国,甘肃省,兰州市', '103.823557', '36.058039', 'Lanzhou', '兰州', '0');
INSERT INTO `sys_area` VALUES ('620102', '620102', '城关区', '620100', '区', '', '0931', '730030', '中国,甘肃省,兰州市,城关区', '103.825200', '36.057250', 'Chengguan', '城关', '0');
INSERT INTO `sys_area` VALUES ('620103', '620103', '七里河区', '620100', '区', '', '0931', '730050', '中国,甘肃省,兰州市,七里河区', '103.785640', '36.065850', 'Qilihe', '七里河', '0');
INSERT INTO `sys_area` VALUES ('620104', '620104', '西固区', '620100', '区', '', '0931', '730060', '中国,甘肃省,兰州市,西固区', '103.628110', '36.088580', 'Xigu', '西固', '0');
INSERT INTO `sys_area` VALUES ('620105', '620105', '安宁区', '620100', '区', '', '0931', '730070', '中国,甘肃省,兰州市,安宁区', '103.718900', '36.103840', 'Anning', '安宁', '0');
INSERT INTO `sys_area` VALUES ('620111', '620111', '红古区', '620100', '区', '', '0931', '730084', '中国,甘肃省,兰州市,红古区', '102.859550', '36.345370', 'Honggu', '红古', '0');
INSERT INTO `sys_area` VALUES ('620121', '620121', '永登县', '620100', '区', '', '0931', '730300', '中国,甘肃省,兰州市,永登县', '103.260550', '36.735220', 'Yongdeng', '永登', '0');
INSERT INTO `sys_area` VALUES ('620122', '620122', '皋兰县', '620100', '区', '', '0931', '730200', '中国,甘肃省,兰州市,皋兰县', '103.945060', '36.332150', 'Gaolan', '皋兰', '0');
INSERT INTO `sys_area` VALUES ('620123', '620123', '榆中县', '620100', '区', '', '0931', '730100', '中国,甘肃省,兰州市,榆中县', '104.114500', '35.844150', 'Yuzhong', '榆中', '0');
INSERT INTO `sys_area` VALUES ('620200', '620200', '嘉峪关市', '620000', '市', '', '0937', '735100', '中国,甘肃省,嘉峪关市', '98.277304', '39.786529', 'Jiayuguan', '嘉峪关', '0');
INSERT INTO `sys_area` VALUES ('620201', '620201', '雄关区', '620200', '区', '', '0937', '735100', '中国,甘肃省,嘉峪关市,雄关区', '98.277398', '39.779250', 'Xiongguan', '雄关', '0');
INSERT INTO `sys_area` VALUES ('620202', '620202', '长城区', '620200', '区', '', '0937', '735106', '中国,甘肃省,嘉峪关市,长城区', '98.273523', '39.787431', 'Changcheng', '长城', '0');
INSERT INTO `sys_area` VALUES ('620203', '620203', '镜铁区', '620200', '区', '', '0937', '735100', '中国,甘肃省,嘉峪关市,镜铁区', '98.277304', '39.786529', 'Jingtie', '镜铁', '0');
INSERT INTO `sys_area` VALUES ('620300', '620300', '金昌市', '620000', '市', '', '0935', '737100', '中国,甘肃省,金昌市', '102.187888', '38.514238', 'Jinchang', '金昌', '0');
INSERT INTO `sys_area` VALUES ('620302', '620302', '金川区', '620300', '区', '', '0935', '737100', '中国,甘肃省,金昌市,金川区', '102.193760', '38.521010', 'Jinchuan', '金川', '0');
INSERT INTO `sys_area` VALUES ('620321', '620321', '永昌县', '620300', '区', '', '0935', '737200', '中国,甘肃省,金昌市,永昌县', '101.972220', '38.247110', 'Yongchang', '永昌', '0');
INSERT INTO `sys_area` VALUES ('620400', '620400', '白银市', '620000', '市', '', '0943', '730900', '中国,甘肃省,白银市', '104.173606', '36.545680', 'Baiyin', '白银', '0');
INSERT INTO `sys_area` VALUES ('620402', '620402', '白银区', '620400', '区', '', '0943', '730900', '中国,甘肃省,白银市,白银区', '104.173550', '36.544110', 'Baiyin', '白银', '0');
INSERT INTO `sys_area` VALUES ('620403', '620403', '平川区', '620400', '区', '', '0943', '730913', '中国,甘肃省,白银市,平川区', '104.824980', '36.727700', 'Pingchuan', '平川', '0');
INSERT INTO `sys_area` VALUES ('620421', '620421', '靖远县', '620400', '区', '', '0943', '730600', '中国,甘肃省,白银市,靖远县', '104.683250', '36.566020', 'Jingyuan', '靖远', '0');
INSERT INTO `sys_area` VALUES ('620422', '620422', '会宁县', '620400', '区', '', '0943', '730700', '中国,甘肃省,白银市,会宁县', '105.052970', '35.696260', 'Huining', '会宁', '0');
INSERT INTO `sys_area` VALUES ('620423', '620423', '景泰县', '620400', '区', '', '0943', '730400', '中国,甘肃省,白银市,景泰县', '104.062950', '37.183590', 'Jingtai', '景泰', '0');
INSERT INTO `sys_area` VALUES ('620500', '620500', '天水市', '620000', '市', '', '0938', '741000', '中国,甘肃省,天水市', '105.724998', '34.578529', 'Tianshui', '天水', '0');
INSERT INTO `sys_area` VALUES ('620502', '620502', '秦州区', '620500', '区', '', '0938', '741000', '中国,甘肃省,天水市,秦州区', '105.724210', '34.580890', 'Qinzhou', '秦州', '0');
INSERT INTO `sys_area` VALUES ('620503', '620503', '麦积区', '620500', '区', '', '0938', '741020', '中国,甘肃省,天水市,麦积区', '105.890130', '34.570690', 'Maiji', '麦积', '0');
INSERT INTO `sys_area` VALUES ('620521', '620521', '清水县', '620500', '区', '', '0938', '741400', '中国,甘肃省,天水市,清水县', '106.136710', '34.750320', 'Qingshui', '清水', '0');
INSERT INTO `sys_area` VALUES ('620522', '620522', '秦安县', '620500', '区', '', '0938', '741600', '中国,甘肃省,天水市,秦安县', '105.669550', '34.858940', 'Qin\'an', '秦安', '0');
INSERT INTO `sys_area` VALUES ('620523', '620523', '甘谷县', '620500', '区', '', '0938', '741200', '中国,甘肃省,天水市,甘谷县', '105.332910', '34.736650', 'Gangu', '甘谷', '0');
INSERT INTO `sys_area` VALUES ('620524', '620524', '武山县', '620500', '区', '', '0938', '741300', '中国,甘肃省,天水市,武山县', '104.883820', '34.721230', 'Wushan', '武山', '0');
INSERT INTO `sys_area` VALUES ('620525', '620525', '张家川回族自治县', '620500', '区', '', '0938', '741500', '中国,甘肃省,天水市,张家川回族自治县', '106.215820', '34.995820', 'Zhangjiachuan', '张家川', '0');
INSERT INTO `sys_area` VALUES ('620600', '620600', '武威市', '620000', '市', '', '0935', '733000', '中国,甘肃省,武威市', '102.634697', '37.929996', 'Wuwei', '武威', '0');
INSERT INTO `sys_area` VALUES ('620602', '620602', '凉州区', '620600', '区', '', '0935', '733000', '中国,甘肃省,武威市,凉州区', '102.642030', '37.928320', 'Liangzhou', '凉州', '0');
INSERT INTO `sys_area` VALUES ('620621', '620621', '民勤县', '620600', '区', '', '0935', '733300', '中国,甘肃省,武威市,民勤县', '103.090110', '38.624870', 'Minqin', '民勤', '0');
INSERT INTO `sys_area` VALUES ('620622', '620622', '古浪县', '620600', '区', '', '0935', '733100', '中国,甘肃省,武威市,古浪县', '102.891540', '37.465080', 'Gulang', '古浪', '0');
INSERT INTO `sys_area` VALUES ('620623', '620623', '天祝藏族自治县', '620600', '区', '', '0935', '733200', '中国,甘肃省,武威市,天祝藏族自治县', '103.136100', '36.977150', 'Tianzhu', '天祝', '0');
INSERT INTO `sys_area` VALUES ('620700', '620700', '张掖市', '620000', '市', '', '0936', '734000', '中国,甘肃省,张掖市', '100.455472', '38.932897', 'Zhangye', '张掖', '0');
INSERT INTO `sys_area` VALUES ('620702', '620702', '甘州区', '620700', '区', '', '0936', '734000', '中国,甘肃省,张掖市,甘州区', '100.452700', '38.929470', 'Ganzhou', '甘州', '0');
INSERT INTO `sys_area` VALUES ('620721', '620721', '肃南裕固族自治县', '620700', '区', '', '0936', '734400', '中国,甘肃省,张掖市,肃南裕固族自治县', '99.614070', '38.837760', 'Sunan', '肃南', '0');
INSERT INTO `sys_area` VALUES ('620722', '620722', '民乐县', '620700', '区', '', '0936', '734500', '中国,甘肃省,张掖市,民乐县', '100.810910', '38.434790', 'Minle', '民乐', '0');
INSERT INTO `sys_area` VALUES ('620723', '620723', '临泽县', '620700', '区', '', '0936', '734200', '中国,甘肃省,张掖市,临泽县', '100.164450', '39.152520', 'Linze', '临泽', '0');
INSERT INTO `sys_area` VALUES ('620724', '620724', '高台县', '620700', '区', '', '0936', '734300', '中国,甘肃省,张掖市,高台县', '99.819180', '39.378290', 'Gaotai', '高台', '0');
INSERT INTO `sys_area` VALUES ('620725', '620725', '山丹县', '620700', '区', '', '0936', '734100', '中国,甘肃省,张掖市,山丹县', '101.093590', '38.784680', 'Shandan', '山丹', '0');
INSERT INTO `sys_area` VALUES ('620800', '620800', '平凉市', '620000', '市', '', '0933', '744000', '中国,甘肃省,平凉市', '106.684691', '35.542790', 'Pingliang', '平凉', '0');
INSERT INTO `sys_area` VALUES ('620802', '620802', '崆峒区', '620800', '区', '', '0933', '744000', '中国,甘肃省,平凉市,崆峒区', '106.674830', '35.542620', 'Kongtong', '崆峒', '0');
INSERT INTO `sys_area` VALUES ('620821', '620821', '泾川县', '620800', '区', '', '0933', '744300', '中国,甘肃省,平凉市,泾川县', '107.365810', '35.332230', 'Jingchuan', '泾川', '0');
INSERT INTO `sys_area` VALUES ('620822', '620822', '灵台县', '620800', '区', '', '0933', '744400', '中国,甘肃省,平凉市,灵台县', '107.617400', '35.067680', 'Lingtai', '灵台', '0');
INSERT INTO `sys_area` VALUES ('620823', '620823', '崇信县', '620800', '区', '', '0933', '744200', '中国,甘肃省,平凉市,崇信县', '107.037380', '35.303440', 'Chongxin', '崇信', '0');
INSERT INTO `sys_area` VALUES ('620824', '620824', '华亭县', '620800', '区', '', '0933', '744100', '中国,甘肃省,平凉市,华亭县', '106.654630', '35.218300', 'Huating', '华亭', '0');
INSERT INTO `sys_area` VALUES ('620825', '620825', '庄浪县', '620800', '区', '', '0933', '744600', '中国,甘肃省,平凉市,庄浪县', '106.036620', '35.202350', 'Zhuanglang', '庄浪', '0');
INSERT INTO `sys_area` VALUES ('620826', '620826', '静宁县', '620800', '区', '', '0933', '743400', '中国,甘肃省,平凉市,静宁县', '105.727230', '35.519910', 'Jingning', '静宁', '0');
INSERT INTO `sys_area` VALUES ('620900', '620900', '酒泉市', '620000', '市', '', '0937', '735000', '中国,甘肃省,酒泉市', '98.510795', '39.744023', 'Jiuquan', '酒泉', '0');
INSERT INTO `sys_area` VALUES ('620902', '620902', '肃州区', '620900', '区', '', '0937', '735000', '中国,甘肃省,酒泉市,肃州区', '98.507750', '39.745060', 'Suzhou', '肃州', '0');
INSERT INTO `sys_area` VALUES ('620921', '620921', '金塔县', '620900', '区', '', '0937', '735300', '中国,甘肃省,酒泉市,金塔县', '98.900020', '39.977330', 'Jinta', '金塔', '0');
INSERT INTO `sys_area` VALUES ('620922', '620922', '瓜州县', '620900', '区', '', '0937', '736100', '中国,甘肃省,酒泉市,瓜州县', '95.782710', '40.515480', 'Guazhou', '瓜州', '0');
INSERT INTO `sys_area` VALUES ('620923', '620923', '肃北蒙古族自治县', '620900', '区', '', '0937', '736300', '中国,甘肃省,酒泉市,肃北蒙古族自治县', '94.876490', '39.512140', 'Subei', '肃北', '0');
INSERT INTO `sys_area` VALUES ('620924', '620924', '阿克塞哈萨克族自治县', '620900', '区', '', '0937', '736400', '中国,甘肃省,酒泉市,阿克塞哈萨克族自治县', '94.340970', '39.634350', 'Akesai', '阿克塞', '0');
INSERT INTO `sys_area` VALUES ('620981', '620981', '玉门市', '620900', '区', '', '0937', '735200', '中国,甘肃省,酒泉市,玉门市', '97.045380', '40.291720', 'Yumen', '玉门', '0');
INSERT INTO `sys_area` VALUES ('620982', '620982', '敦煌市', '620900', '区', '', '0937', '736200', '中国,甘肃省,酒泉市,敦煌市', '94.661590', '40.142110', 'Dunhuang', '敦煌', '0');
INSERT INTO `sys_area` VALUES ('621000', '621000', '庆阳市', '620000', '市', '', '0934', '745000', '中国,甘肃省,庆阳市', '107.638372', '35.734218', 'Qingyang', '庆阳', '0');
INSERT INTO `sys_area` VALUES ('621002', '621002', '西峰区', '621000', '区', '', '0934', '745000', '中国,甘肃省,庆阳市,西峰区', '107.651070', '35.730650', 'Xifeng', '西峰', '0');
INSERT INTO `sys_area` VALUES ('621021', '621021', '庆城县', '621000', '区', '', '0934', '745100', '中国,甘肃省,庆阳市,庆城县', '107.882720', '36.015070', 'Qingcheng', '庆城', '0');
INSERT INTO `sys_area` VALUES ('621022', '621022', '环县', '621000', '区', '', '0934', '745700', '中国,甘肃省,庆阳市,环县', '107.308350', '36.568460', 'Huanxian', '环县', '0');
INSERT INTO `sys_area` VALUES ('621023', '621023', '华池县', '621000', '区', '', '0934', '745600', '中国,甘肃省,庆阳市,华池县', '107.989100', '36.461080', 'Huachi', '华池', '0');
INSERT INTO `sys_area` VALUES ('621024', '621024', '合水县', '621000', '区', '', '0934', '745400', '中国,甘肃省,庆阳市,合水县', '108.020320', '35.819110', 'Heshui', '合水', '0');
INSERT INTO `sys_area` VALUES ('621025', '621025', '正宁县', '621000', '区', '', '0934', '745300', '中国,甘肃省,庆阳市,正宁县', '108.360070', '35.491740', 'Zhengning', '正宁', '0');
INSERT INTO `sys_area` VALUES ('621026', '621026', '宁县', '621000', '区', '', '0934', '745200', '中国,甘肃省,庆阳市,宁县', '107.925170', '35.501640', 'Ningxian', '宁县', '0');
INSERT INTO `sys_area` VALUES ('621027', '621027', '镇原县', '621000', '区', '', '0934', '744500', '中国,甘肃省,庆阳市,镇原县', '107.199000', '35.677120', 'Zhenyuan', '镇原', '0');
INSERT INTO `sys_area` VALUES ('621100', '621100', '定西市', '620000', '市', '', '0932', '743000', '中国,甘肃省,定西市', '104.626294', '35.579578', 'Dingxi', '定西', '0');
INSERT INTO `sys_area` VALUES ('621102', '621102', '安定区', '621100', '区', '', '0932', '743000', '中国,甘肃省,定西市,安定区', '104.610600', '35.580660', 'Anding', '安定', '0');
INSERT INTO `sys_area` VALUES ('621121', '621121', '通渭县', '621100', '区', '', '0932', '743300', '中国,甘肃省,定西市,通渭县', '105.242240', '35.211010', 'Tongwei', '通渭', '0');
INSERT INTO `sys_area` VALUES ('621122', '621122', '陇西县', '621100', '区', '', '0932', '748100', '中国,甘肃省,定西市,陇西县', '104.634460', '35.002380', 'Longxi', '陇西', '0');
INSERT INTO `sys_area` VALUES ('621123', '621123', '渭源县', '621100', '区', '', '0932', '748200', '中国,甘肃省,定西市,渭源县', '104.214350', '35.136490', 'Weiyuan', '渭源', '0');
INSERT INTO `sys_area` VALUES ('621124', '621124', '临洮县', '621100', '区', '', '0932', '730500', '中国,甘肃省,定西市,临洮县', '103.861960', '35.375100', 'Lintao', '临洮', '0');
INSERT INTO `sys_area` VALUES ('621125', '621125', '漳县', '621100', '区', '', '0932', '748300', '中国,甘肃省,定西市,漳县', '104.467040', '34.849770', 'Zhangxian', '漳县', '0');
INSERT INTO `sys_area` VALUES ('621126', '621126', '岷县', '621100', '区', '', '0932', '748400', '中国,甘肃省,定西市,岷县', '104.037720', '34.434440', 'Minxian', '岷县', '0');
INSERT INTO `sys_area` VALUES ('621200', '621200', '陇南市', '620000', '市', '', '0939', '746000', '中国,甘肃省,陇南市', '104.929379', '33.388598', 'Longnan', '陇南', '0');
INSERT INTO `sys_area` VALUES ('621202', '621202', '武都区', '621200', '区', '', '0939', '746000', '中国,甘肃省,陇南市,武都区', '104.926520', '33.392390', 'Wudu', '武都', '0');
INSERT INTO `sys_area` VALUES ('621221', '621221', '成县', '621200', '区', '', '0939', '742500', '中国,甘肃省,陇南市,成县', '105.725860', '33.739250', 'Chengxian', '成县', '0');
INSERT INTO `sys_area` VALUES ('621222', '621222', '文县', '621200', '区', '', '0939', '746400', '中国,甘肃省,陇南市,文县', '104.683620', '32.943370', 'Wenxian', '文县', '0');
INSERT INTO `sys_area` VALUES ('621223', '621223', '宕昌县', '621200', '区', '', '0939', '748500', '中国,甘肃省,陇南市,宕昌县', '104.393490', '34.047320', 'Dangchang', '宕昌', '0');
INSERT INTO `sys_area` VALUES ('621224', '621224', '康县', '621200', '区', '', '0939', '746500', '中国,甘肃省,陇南市,康县', '105.607110', '33.329120', 'Kangxian', '康县', '0');
INSERT INTO `sys_area` VALUES ('621225', '621225', '西和县', '621200', '区', '', '0939', '742100', '中国,甘肃省,陇南市,西和县', '105.300990', '34.014320', 'Xihe', '西和', '0');
INSERT INTO `sys_area` VALUES ('621226', '621226', '礼县', '621200', '区', '', '0939', '742200', '中国,甘肃省,陇南市,礼县', '105.177850', '34.189350', 'Lixian', '礼县', '0');
INSERT INTO `sys_area` VALUES ('621227', '621227', '徽县', '621200', '区', '', '0939', '742300', '中国,甘肃省,陇南市,徽县', '106.085290', '33.768980', 'Huixian', '徽县', '0');
INSERT INTO `sys_area` VALUES ('621228', '621228', '两当县', '621200', '区', '', '0939', '742400', '中国,甘肃省,陇南市,两当县', '106.304840', '33.909600', 'Liangdang', '两当', '0');
INSERT INTO `sys_area` VALUES ('622900', '622900', '临夏回族自治州', '620000', '市', '', '0930', '731100', '中国,甘肃省,临夏回族自治州', '103.212006', '35.599446', 'Linxia', '临夏', '0');
INSERT INTO `sys_area` VALUES ('622901', '622901', '临夏市', '622900', '区', '', '0930', '731100', '中国,甘肃省,临夏回族自治州,临夏市', '103.210000', '35.599160', 'Linxia', '临夏', '0');
INSERT INTO `sys_area` VALUES ('622921', '622921', '临夏县', '622900', '区', '', '0930', '731800', '中国,甘肃省,临夏回族自治州,临夏县', '102.993800', '35.495190', 'Linxia', '临夏', '0');
INSERT INTO `sys_area` VALUES ('622922', '622922', '康乐县', '622900', '区', '', '0930', '731500', '中国,甘肃省,临夏回族自治州,康乐县', '103.710930', '35.372190', 'Kangle', '康乐', '0');
INSERT INTO `sys_area` VALUES ('622923', '622923', '永靖县', '622900', '区', '', '0930', '731600', '中国,甘肃省,临夏回族自治州,永靖县', '103.320430', '35.938350', 'Yongjing', '永靖', '0');
INSERT INTO `sys_area` VALUES ('622924', '622924', '广河县', '622900', '区', '', '0930', '731300', '中国,甘肃省,临夏回族自治州,广河县', '103.569330', '35.480970', 'Guanghe', '广河', '0');
INSERT INTO `sys_area` VALUES ('622925', '622925', '和政县', '622900', '区', '', '0930', '731200', '中国,甘肃省,临夏回族自治州,和政县', '103.349360', '35.425920', 'Hezheng', '和政', '0');
INSERT INTO `sys_area` VALUES ('622926', '622926', '东乡族自治县', '622900', '区', '', '0930', '731400', '中国,甘肃省,临夏回族自治州,东乡族自治县', '103.394770', '35.664710', 'Dongxiangzu', '东乡族', '0');
INSERT INTO `sys_area` VALUES ('622927', '622927', '积石山保安族东乡族撒拉族自治县', '622900', '区', '', '0930', '731700', '中国,甘肃省,临夏回族自治州,积石山保安族东乡族撒拉族自治县', '102.873740', '35.718200', 'Jishishan', '积石山', '0');
INSERT INTO `sys_area` VALUES ('623000', '623000', '甘南藏族自治州', '620000', '市', '', '0941', '747000', '中国,甘肃省,甘南藏族自治州', '102.911008', '34.986354', 'Gannan', '甘南', '0');
INSERT INTO `sys_area` VALUES ('623001', '623001', '合作市', '623000', '区', '', '0941', '747000', '中国,甘肃省,甘南藏族自治州,合作市', '102.910820', '35.000160', 'Hezuo', '合作', '0');
INSERT INTO `sys_area` VALUES ('623021', '623021', '临潭县', '623000', '区', '', '0941', '747500', '中国,甘肃省,甘南藏族自治州,临潭县', '103.352870', '34.695150', 'Lintan', '临潭', '0');
INSERT INTO `sys_area` VALUES ('623022', '623022', '卓尼县', '623000', '区', '', '0941', '747600', '中国,甘肃省,甘南藏族自治州,卓尼县', '103.508110', '34.589190', 'Zhuoni', '卓尼', '0');
INSERT INTO `sys_area` VALUES ('623023', '623023', '舟曲县', '623000', '区', '', '0941', '746300', '中国,甘肃省,甘南藏族自治州,舟曲县', '104.371550', '33.784680', 'Zhouqu', '舟曲', '0');
INSERT INTO `sys_area` VALUES ('623024', '623024', '迭部县', '623000', '区', '', '0941', '747400', '中国,甘肃省,甘南藏族自治州,迭部县', '103.222740', '34.056230', 'Diebu', '迭部', '0');
INSERT INTO `sys_area` VALUES ('623025', '623025', '玛曲县', '623000', '区', '', '0941', '747300', '中国,甘肃省,甘南藏族自治州,玛曲县', '102.075400', '33.997000', 'Maqu', '玛曲', '0');
INSERT INTO `sys_area` VALUES ('623026', '623026', '碌曲县', '623000', '区', '', '0941', '747200', '中国,甘肃省,甘南藏族自治州,碌曲县', '102.491760', '34.588720', 'Luqu', '碌曲', '0');
INSERT INTO `sys_area` VALUES ('623027', '623027', '夏河县', '623000', '区', '', '0941', '747100', '中国,甘肃省,甘南藏族自治州,夏河县', '102.522150', '35.204870', 'Xiahe', '夏河', '0');
INSERT INTO `sys_area` VALUES ('630000', '630000', '青海省', '100000', '省', '', '', '', '中国,青海省', '101.778916', '36.623178', 'Qinghai', '青海', '0');
INSERT INTO `sys_area` VALUES ('630100', '630100', '西宁市', '630000', '市', '', '0971', '810000', '中国,青海省,西宁市', '101.778916', '36.623178', 'Xining', '西宁', '0');
INSERT INTO `sys_area` VALUES ('630102', '630102', '城东区', '630100', '区', '', '0971', '810007', '中国,青海省,西宁市,城东区', '101.803730', '36.599690', 'Chengdong', '城东', '0');
INSERT INTO `sys_area` VALUES ('630103', '630103', '城中区', '630100', '区', '', '0971', '810000', '中国,青海省,西宁市,城中区', '101.783940', '36.622790', 'Chengzhong', '城中', '0');
INSERT INTO `sys_area` VALUES ('630104', '630104', '城西区', '630100', '区', '', '0971', '810001', '中国,青海省,西宁市,城西区', '101.765880', '36.628280', 'Chengxi', '城西', '0');
INSERT INTO `sys_area` VALUES ('630105', '630105', '城北区', '630100', '区', '', '0971', '810003', '中国,青海省,西宁市,城北区', '101.766200', '36.650140', 'Chengbei', '城北', '0');
INSERT INTO `sys_area` VALUES ('630121', '630121', '大通回族土族自治县', '630100', '区', '', '0971', '810100', '中国,青海省,西宁市,大通回族土族自治县', '101.702360', '36.934890', 'Datong', '大通', '0');
INSERT INTO `sys_area` VALUES ('630122', '630122', '湟中县', '630100', '区', '', '0971', '811600', '中国,青海省,西宁市,湟中县', '101.571590', '36.500830', 'Huangzhong', '湟中', '0');
INSERT INTO `sys_area` VALUES ('630123', '630123', '湟源县', '630100', '区', '', '0971', '812100', '中国,青海省,西宁市,湟源县', '101.256430', '36.682430', 'Huangyuan', '湟源', '0');
INSERT INTO `sys_area` VALUES ('630200', '630200', '海东市', '630000', '市', '', '0972', '810700', '中国,青海省,海东市', '102.103270', '36.502916', 'Haidong', '海东', '0');
INSERT INTO `sys_area` VALUES ('630202', '630202', '乐都区', '630200', '区', '', '0972', '810700', '中国,青海省,海东市,乐都区', '102.402431', '36.480291', 'Ledu', '乐都', '0');
INSERT INTO `sys_area` VALUES ('630221', '630221', '平安县', '630200', '区', '', '0972', '810600', '中国,青海省,海东市,平安县', '102.104295', '36.502714', 'Ping\'an', '平安', '0');
INSERT INTO `sys_area` VALUES ('630222', '630222', '民和回族土族自治县', '630200', '区', '', '0972', '810800', '中国,青海省,海东市,民和回族土族自治县', '102.804209', '36.329451', 'Minhe', '民和', '0');
INSERT INTO `sys_area` VALUES ('630223', '630223', '互助土族自治县', '630200', '区', '', '0972', '810500', '中国,青海省,海东市,互助土族自治县', '101.956734', '36.839940', 'Huzhu', '互助', '0');
INSERT INTO `sys_area` VALUES ('630224', '630224', '化隆回族自治县', '630200', '区', '', '0972', '810900', '中国,青海省,海东市,化隆回族自治县', '102.262329', '36.098322', 'Hualong', '化隆', '0');
INSERT INTO `sys_area` VALUES ('630225', '630225', '循化撒拉族自治县', '630200', '区', '', '0972', '811100', '中国,青海省,海东市,循化撒拉族自治县', '102.486534', '35.847247', 'Xunhua', '循化', '0');
INSERT INTO `sys_area` VALUES ('632200', '632200', '海北藏族自治州', '630000', '市', '', '0970', '812200', '中国,青海省,海北藏族自治州', '100.901059', '36.959435', 'Haibei', '海北', '0');
INSERT INTO `sys_area` VALUES ('632221', '632221', '门源回族自治县', '632200', '区', '', '0970', '810300', '中国,青海省,海北藏族自治州,门源回族自治县', '101.622280', '37.376110', 'Menyuan', '门源', '0');
INSERT INTO `sys_area` VALUES ('632222', '632222', '祁连县', '632200', '区', '', '0970', '810400', '中国,青海省,海北藏族自治州,祁连县', '100.246180', '38.179010', 'Qilian', '祁连', '0');
INSERT INTO `sys_area` VALUES ('632223', '632223', '海晏县', '632200', '区', '', '0970', '812200', '中国,青海省,海北藏族自治州,海晏县', '100.992700', '36.899020', 'Haiyan', '海晏', '0');
INSERT INTO `sys_area` VALUES ('632224', '632224', '刚察县', '632200', '区', '', '0970', '812300', '中国,青海省,海北藏族自治州,刚察县', '100.146750', '37.321610', 'Gangcha', '刚察', '0');
INSERT INTO `sys_area` VALUES ('632300', '632300', '黄南藏族自治州', '630000', '市', '', '0973', '811300', '中国,青海省,黄南藏族自治州', '102.019988', '35.517744', 'Huangnan', '黄南', '0');
INSERT INTO `sys_area` VALUES ('632321', '632321', '同仁县', '632300', '区', '', '0973', '811300', '中国,青海省,黄南藏族自治州,同仁县', '102.018400', '35.516030', 'Tongren', '同仁', '0');
INSERT INTO `sys_area` VALUES ('632322', '632322', '尖扎县', '632300', '区', '', '0973', '811200', '中国,青海省,黄南藏族自治州,尖扎县', '102.034110', '35.939470', 'Jianzha', '尖扎', '0');
INSERT INTO `sys_area` VALUES ('632323', '632323', '泽库县', '632300', '区', '', '0973', '811400', '中国,青海省,黄南藏族自治州,泽库县', '101.464440', '35.035190', 'Zeku', '泽库', '0');
INSERT INTO `sys_area` VALUES ('632324', '632324', '河南蒙古族自治县', '632300', '区', '', '0973', '811500', '中国,青海省,黄南藏族自治州,河南蒙古族自治县', '101.608640', '34.734760', 'Henan', '河南', '0');
INSERT INTO `sys_area` VALUES ('632500', '632500', '海南藏族自治州', '630000', '市', '', '0974', '813000', '中国,青海省,海南藏族自治州', '100.619542', '36.280353', 'Hainan', '海南', '0');
INSERT INTO `sys_area` VALUES ('632521', '632521', '共和县', '632500', '区', '', '0974', '813000', '中国,青海省,海南藏族自治州,共和县', '100.620030', '36.284100', 'Gonghe', '共和', '0');
INSERT INTO `sys_area` VALUES ('632522', '632522', '同德县', '632500', '区', '', '0974', '813200', '中国,青海省,海南藏族自治州,同德县', '100.571590', '35.254880', 'Tongde', '同德', '0');
INSERT INTO `sys_area` VALUES ('632523', '632523', '贵德县', '632500', '区', '', '0974', '811700', '中国,青海省,海南藏族自治州,贵德县', '101.432000', '36.044000', 'Guide', '贵德', '0');
INSERT INTO `sys_area` VALUES ('632524', '632524', '兴海县', '632500', '区', '', '0974', '813300', '中国,青海省,海南藏族自治州,兴海县', '99.988460', '35.590310', 'Xinghai', '兴海', '0');
INSERT INTO `sys_area` VALUES ('632525', '632525', '贵南县', '632500', '区', '', '0974', '813100', '中国,青海省,海南藏族自治州,贵南县', '100.747160', '35.586670', 'Guinan', '贵南', '0');
INSERT INTO `sys_area` VALUES ('632600', '632600', '果洛藏族自治州', '630000', '市', '', '0975', '814000', '中国,青海省,果洛藏族自治州', '100.242143', '34.473600', 'Golog', '果洛', '0');
INSERT INTO `sys_area` VALUES ('632621', '632621', '玛沁县', '632600', '区', '', '0975', '814000', '中国,青海省,果洛藏族自治州,玛沁县', '100.239010', '34.477460', 'Maqin', '玛沁', '0');
INSERT INTO `sys_area` VALUES ('632622', '632622', '班玛县', '632600', '区', '', '0975', '814300', '中国,青海省,果洛藏族自治州,班玛县', '100.737450', '32.932530', 'Banma', '班玛', '0');
INSERT INTO `sys_area` VALUES ('632623', '632623', '甘德县', '632600', '区', '', '0975', '814100', '中国,青海省,果洛藏族自治州,甘德县', '99.902460', '33.968380', 'Gande', '甘德', '0');
INSERT INTO `sys_area` VALUES ('632624', '632624', '达日县', '632600', '区', '', '0975', '814200', '中国,青海省,果洛藏族自治州,达日县', '99.651790', '33.751930', 'Dari', '达日', '0');
INSERT INTO `sys_area` VALUES ('632625', '632625', '久治县', '632600', '区', '', '0975', '624700', '中国,青海省,果洛藏族自治州,久治县', '101.483420', '33.429890', 'Jiuzhi', '久治', '0');
INSERT INTO `sys_area` VALUES ('632626', '632626', '玛多县', '632600', '区', '', '0975', '813500', '中国,青海省,果洛藏族自治州,玛多县', '98.209960', '34.915670', 'Maduo', '玛多', '0');
INSERT INTO `sys_area` VALUES ('632700', '632700', '玉树藏族自治州', '630000', '市', '', '0976', '815000', '中国,青海省,玉树藏族自治州', '97.008522', '33.004049', 'Yushu', '玉树', '0');
INSERT INTO `sys_area` VALUES ('632701', '632701', '玉树市', '632700', '区', '', '0976', '815000', '中国,青海省,玉树藏族自治州,玉树市', '97.008762', '33.003930', 'Yushu', '玉树', '0');
INSERT INTO `sys_area` VALUES ('632722', '632722', '杂多县', '632700', '区', '', '0976', '815300', '中国,青海省,玉树藏族自治州,杂多县', '95.298640', '32.893180', 'Zaduo', '杂多', '0');
INSERT INTO `sys_area` VALUES ('632723', '632723', '称多县', '632700', '区', '', '0976', '815100', '中国,青海省,玉树藏族自治州,称多县', '97.107880', '33.368990', 'Chenduo', '称多', '0');
INSERT INTO `sys_area` VALUES ('632724', '632724', '治多县', '632700', '区', '', '0976', '815400', '中国,青海省,玉树藏族自治州,治多县', '95.615720', '33.852800', 'Zhiduo', '治多', '0');
INSERT INTO `sys_area` VALUES ('632725', '632725', '囊谦县', '632700', '区', '', '0976', '815200', '中国,青海省,玉树藏族自治州,囊谦县', '96.477530', '32.203590', 'Nangqian', '囊谦', '0');
INSERT INTO `sys_area` VALUES ('632726', '632726', '曲麻莱县', '632700', '区', '', '0976', '815500', '中国,青海省,玉树藏族自治州,曲麻莱县', '95.797570', '34.126090', 'Qumalai', '曲麻莱', '0');
INSERT INTO `sys_area` VALUES ('632800', '632800', '海西蒙古族藏族自治州', '630000', '市', '', '0977', '817000', '中国,青海省,海西蒙古族藏族自治州', '97.370785', '37.374663', 'Haixi', '海西', '0');
INSERT INTO `sys_area` VALUES ('632801', '632801', '格尔木市', '632800', '区', '', '0977', '816000', '中国,青海省,海西蒙古族藏族自治州,格尔木市', '94.903290', '36.402360', 'Geermu', '格尔木', '0');
INSERT INTO `sys_area` VALUES ('632802', '632802', '德令哈市', '632800', '区', '', '0977', '817000', '中国,青海省,海西蒙古族藏族自治州,德令哈市', '97.360840', '37.369460', 'Delingha', '德令哈', '0');
INSERT INTO `sys_area` VALUES ('632821', '632821', '乌兰县', '632800', '区', '', '0977', '817100', '中国,青海省,海西蒙古族藏族自治州,乌兰县', '98.481960', '36.934710', 'Wulan', '乌兰', '0');
INSERT INTO `sys_area` VALUES ('632822', '632822', '都兰县', '632800', '区', '', '0977', '816100', '中国,青海省,海西蒙古族藏族自治州,都兰县', '98.092280', '36.301350', 'Dulan', '都兰', '0');
INSERT INTO `sys_area` VALUES ('632823', '632823', '天峻县', '632800', '区', '', '0977', '817200', '中国,青海省,海西蒙古族藏族自治州,天峻县', '99.024530', '37.303260', 'Tianjun', '天峻', '0');
INSERT INTO `sys_area` VALUES ('640000', '640000', '宁夏回族自治区', '100000', '省', '', '', '', '中国,宁夏回族自治区', '106.278179', '38.466370', 'Ningxia', '宁夏', '0');
INSERT INTO `sys_area` VALUES ('640100', '640100', '银川市', '640000', '市', '', '0951', '750004', '中国,宁夏回族自治区,银川市', '106.278179', '38.466370', 'Yinchuan', '银川', '0');
INSERT INTO `sys_area` VALUES ('640104', '640104', '兴庆区', '640100', '区', '', '0951', '750001', '中国,宁夏回族自治区,银川市,兴庆区', '106.288720', '38.473920', 'Xingqing', '兴庆', '0');
INSERT INTO `sys_area` VALUES ('640105', '640105', '西夏区', '640100', '区', '', '0951', '750021', '中国,宁夏回族自治区,银川市,西夏区', '106.150230', '38.491370', 'Xixia', '西夏', '0');
INSERT INTO `sys_area` VALUES ('640106', '640106', '金凤区', '640100', '区', '', '0951', '750011', '中国,宁夏回族自治区,银川市,金凤区', '106.242610', '38.472940', 'Jinfeng', '金凤', '0');
INSERT INTO `sys_area` VALUES ('640121', '640121', '永宁县', '640100', '区', '', '0951', '750100', '中国,宁夏回族自治区,银川市,永宁县', '106.251700', '38.275590', 'Yongning', '永宁', '0');
INSERT INTO `sys_area` VALUES ('640122', '640122', '贺兰县', '640100', '区', '', '0951', '750200', '中国,宁夏回族自治区,银川市,贺兰县', '106.349820', '38.554400', 'Helan', '贺兰', '0');
INSERT INTO `sys_area` VALUES ('640181', '640181', '灵武市', '640100', '区', '', '0951', '750004', '中国,宁夏回族自治区,银川市,灵武市', '106.339990', '38.102660', 'Lingwu', '灵武', '0');
INSERT INTO `sys_area` VALUES ('640200', '640200', '石嘴山市', '640000', '市', '', '0952', '753000', '中国,宁夏回族自治区,石嘴山市', '106.376173', '39.013330', 'Shizuishan', '石嘴山', '0');
INSERT INTO `sys_area` VALUES ('640202', '640202', '大武口区', '640200', '区', '', '0952', '753000', '中国,宁夏回族自治区,石嘴山市,大武口区', '106.377170', '39.012260', 'Dawukou', '大武口', '0');
INSERT INTO `sys_area` VALUES ('640205', '640205', '惠农区', '640200', '区', '', '0952', '753600', '中国,宁夏回族自治区,石嘴山市,惠农区', '106.711450', '39.131930', 'Huinong', '惠农', '0');
INSERT INTO `sys_area` VALUES ('640221', '640221', '平罗县', '640200', '区', '', '0952', '753400', '中国,宁夏回族自治区,石嘴山市,平罗县', '106.545380', '38.904290', 'Pingluo', '平罗', '0');
INSERT INTO `sys_area` VALUES ('640300', '640300', '吴忠市', '640000', '市', '', '0953', '751100', '中国,宁夏回族自治区,吴忠市', '106.199409', '37.986165', 'Wuzhong', '吴忠', '0');
INSERT INTO `sys_area` VALUES ('640302', '640302', '利通区', '640300', '区', '', '0953', '751100', '中国,宁夏回族自治区,吴忠市,利通区', '106.203110', '37.985120', 'Litong', '利通', '0');
INSERT INTO `sys_area` VALUES ('640303', '640303', '红寺堡区', '640300', '区', '', '0953', '751900', '中国,宁夏回族自治区,吴忠市,红寺堡区', '106.198220', '37.997470', 'Hongsibao', '红寺堡', '0');
INSERT INTO `sys_area` VALUES ('640323', '640323', '盐池县', '640300', '区', '', '0953', '751500', '中国,宁夏回族自治区,吴忠市,盐池县', '107.407070', '37.783300', 'Yanchi', '盐池', '0');
INSERT INTO `sys_area` VALUES ('640324', '640324', '同心县', '640300', '区', '', '0953', '751300', '中国,宁夏回族自治区,吴忠市,同心县', '105.914180', '36.981160', 'Tongxin', '同心', '0');
INSERT INTO `sys_area` VALUES ('640381', '640381', '青铜峡市', '640300', '区', '', '0953', '751600', '中国,宁夏回族自治区,吴忠市,青铜峡市', '106.074890', '38.020040', 'Qingtongxia', '青铜峡', '0');
INSERT INTO `sys_area` VALUES ('640400', '640400', '固原市', '640000', '市', '', '0954', '756000', '中国,宁夏回族自治区,固原市', '106.285241', '36.004561', 'Guyuan', '固原', '0');
INSERT INTO `sys_area` VALUES ('640402', '640402', '原州区', '640400', '区', '', '0954', '756000', '中国,宁夏回族自治区,固原市,原州区', '106.287780', '36.003740', 'Yuanzhou', '原州', '0');
INSERT INTO `sys_area` VALUES ('640422', '640422', '西吉县', '640400', '区', '', '0954', '756200', '中国,宁夏回族自治区,固原市,西吉县', '105.731070', '35.966160', 'Xiji', '西吉', '0');
INSERT INTO `sys_area` VALUES ('640423', '640423', '隆德县', '640400', '区', '', '0954', '756300', '中国,宁夏回族自治区,固原市,隆德县', '106.124260', '35.617180', 'Longde', '隆德', '0');
INSERT INTO `sys_area` VALUES ('640424', '640424', '泾源县', '640400', '区', '', '0954', '756400', '中国,宁夏回族自治区,固原市,泾源县', '106.339020', '35.490720', 'Jingyuan', '泾源', '0');
INSERT INTO `sys_area` VALUES ('640425', '640425', '彭阳县', '640400', '区', '', '0954', '756500', '中国,宁夏回族自治区,固原市,彭阳县', '106.644620', '35.850760', 'Pengyang', '彭阳', '0');
INSERT INTO `sys_area` VALUES ('640500', '640500', '中卫市', '640000', '市', '', '0955', '751700', '中国,宁夏回族自治区,中卫市', '105.189568', '37.514951', 'Zhongwei', '中卫', '0');
INSERT INTO `sys_area` VALUES ('640502', '640502', '沙坡头区', '640500', '区', '', '0955', '755000', '中国,宁夏回族自治区,中卫市,沙坡头区', '105.189620', '37.510440', 'Shapotou', '沙坡头', '0');
INSERT INTO `sys_area` VALUES ('640521', '640521', '中宁县', '640500', '区', '', '0955', '751200', '中国,宁夏回族自治区,中卫市,中宁县', '105.685150', '37.491490', 'Zhongning', '中宁', '0');
INSERT INTO `sys_area` VALUES ('640522', '640522', '海原县', '640500', '区', '', '0955', '751800', '中国,宁夏回族自治区,中卫市,海原县', '105.647120', '36.564980', 'Haiyuan', '海原', '0');
INSERT INTO `sys_area` VALUES ('650000', '650000', '新疆维吾尔自治区', '100000', '省', '', '', '', '中国,新疆维吾尔自治区', '87.617733', '43.792818', 'Xinjiang', '新疆', '0');
INSERT INTO `sys_area` VALUES ('650100', '650100', '乌鲁木齐市', '650000', '市', '', '0991', '830002', '中国,新疆维吾尔自治区,乌鲁木齐市', '87.617733', '43.792818', 'Urumqi', '乌鲁木齐', '0');
INSERT INTO `sys_area` VALUES ('650102', '650102', '天山区', '650100', '区', '', '0991', '830002', '中国,新疆维吾尔自治区,乌鲁木齐市,天山区', '87.631670', '43.794390', 'Tianshan', '天山', '0');
INSERT INTO `sys_area` VALUES ('650103', '650103', '沙依巴克区', '650100', '区', '', '0991', '830000', '中国,新疆维吾尔自治区,乌鲁木齐市,沙依巴克区', '87.597880', '43.801180', 'Shayibake', '沙依巴克', '0');
INSERT INTO `sys_area` VALUES ('650104', '650104', '新市区', '650100', '区', '', '0991', '830011', '中国,新疆维吾尔自治区,乌鲁木齐市,新市区', '87.574060', '43.843480', 'Xinshi', '新市', '0');
INSERT INTO `sys_area` VALUES ('650105', '650105', '水磨沟区', '650100', '区', '', '0991', '830017', '中国,新疆维吾尔自治区,乌鲁木齐市,水磨沟区', '87.642490', '43.832470', 'Shuimogou', '水磨沟', '0');
INSERT INTO `sys_area` VALUES ('650106', '650106', '头屯河区', '650100', '区', '', '0991', '830022', '中国,新疆维吾尔自治区,乌鲁木齐市,头屯河区', '87.291380', '43.854870', 'Toutunhe', '头屯河', '0');
INSERT INTO `sys_area` VALUES ('650107', '650107', '达坂城区', '650100', '区', '', '0991', '830039', '中国,新疆维吾尔自治区,乌鲁木齐市,达坂城区', '88.306970', '43.357970', 'Dabancheng', '达坂城', '0');
INSERT INTO `sys_area` VALUES ('650109', '650109', '米东区', '650100', '区', '', '0991', '830019', '中国,新疆维吾尔自治区,乌鲁木齐市,米东区', '87.685830', '43.947390', 'Midong', '米东', '0');
INSERT INTO `sys_area` VALUES ('650121', '650121', '乌鲁木齐县', '650100', '区', '', '0991', '830063', '中国,新疆维吾尔自治区,乌鲁木齐市,乌鲁木齐县', '87.409390', '43.471250', 'Wulumuqi', '乌鲁木齐', '0');
INSERT INTO `sys_area` VALUES ('650200', '650200', '克拉玛依市', '650000', '市', '', '0990', '834000', '中国,新疆维吾尔自治区,克拉玛依市', '84.873946', '45.595886', 'Karamay', '克拉玛依', '0');
INSERT INTO `sys_area` VALUES ('650202', '650202', '独山子区', '650200', '区', '', '0992', '834021', '中国,新疆维吾尔自治区,克拉玛依市,独山子区', '84.886710', '44.328670', 'Dushanzi', '独山子', '0');
INSERT INTO `sys_area` VALUES ('650203', '650203', '克拉玛依区', '650200', '区', '', '0990', '834000', '中国,新疆维吾尔自治区,克拉玛依市,克拉玛依区', '84.862250', '45.590890', 'Kelamayi', '克拉玛依', '0');
INSERT INTO `sys_area` VALUES ('650204', '650204', '白碱滩区', '650200', '区', '', '0990', '834008', '中国,新疆维吾尔自治区,克拉玛依市,白碱滩区', '85.132440', '45.687680', 'Baijiantan', '白碱滩', '0');
INSERT INTO `sys_area` VALUES ('650205', '650205', '乌尔禾区', '650200', '区', '', '0990', '834012', '中国,新疆维吾尔自治区,克拉玛依市,乌尔禾区', '85.691430', '46.090060', 'Wuerhe', '乌尔禾', '0');
INSERT INTO `sys_area` VALUES ('652100', '652100', '吐鲁番地区', '650000', '市', '', '0995', '838000', '中国,新疆维吾尔自治区,吐鲁番地区', '89.184078', '42.947613', 'Turpan', '吐鲁番', '0');
INSERT INTO `sys_area` VALUES ('652101', '652101', '吐鲁番市', '652100', '区', '', '0995', '838000', '中国,新疆维吾尔自治区,吐鲁番地区,吐鲁番市', '89.185790', '42.935050', 'Tulufan', '吐鲁番', '0');
INSERT INTO `sys_area` VALUES ('652122', '652122', '鄯善县', '652100', '区', '', '0995', '838200', '中国,新疆维吾尔自治区,吐鲁番地区,鄯善县', '90.214020', '42.863500', 'Shanshan', '鄯善', '0');
INSERT INTO `sys_area` VALUES ('652123', '652123', '托克逊县', '652100', '区', '', '0995', '838100', '中国,新疆维吾尔自治区,吐鲁番地区,托克逊县', '88.658230', '42.792310', 'Tuokexun', '托克逊', '0');
INSERT INTO `sys_area` VALUES ('652200', '652200', '哈密地区', '650000', '市', '', '0902', '839000', '中国,新疆维吾尔自治区,哈密地区', '93.513160', '42.833248', 'Hami', '哈密', '0');
INSERT INTO `sys_area` VALUES ('652201', '652201', '哈密市', '652200', '区', '', '0902', '839000', '中国,新疆维吾尔自治区,哈密地区,哈密市', '93.514520', '42.826990', 'Hami', '哈密', '0');
INSERT INTO `sys_area` VALUES ('652222', '652222', '巴里坤哈萨克自治县', '652200', '区', '', '0902', '839200', '中国,新疆维吾尔自治区,哈密地区,巴里坤哈萨克自治县', '93.012360', '43.599930', 'Balikun', '巴里坤', '0');
INSERT INTO `sys_area` VALUES ('652223', '652223', '伊吾县', '652200', '区', '', '0902', '839300', '中国,新疆维吾尔自治区,哈密地区,伊吾县', '94.694030', '43.253700', 'Yiwu', '伊吾', '0');
INSERT INTO `sys_area` VALUES ('652300', '652300', '昌吉回族自治州', '650000', '市', '', '0994', '831100', '中国,新疆维吾尔自治区,昌吉回族自治州', '87.304012', '44.014577', 'Changji', '昌吉', '0');
INSERT INTO `sys_area` VALUES ('652301', '652301', '昌吉市', '652300', '区', '', '0994', '831100', '中国,新疆维吾尔自治区,昌吉回族自治州,昌吉市', '87.302490', '44.012670', 'Changji', '昌吉', '0');
INSERT INTO `sys_area` VALUES ('652302', '652302', '阜康市', '652300', '区', '', '0994', '831500', '中国,新疆维吾尔自治区,昌吉回族自治州,阜康市', '87.985290', '44.158400', 'Fukang', '阜康', '0');
INSERT INTO `sys_area` VALUES ('652323', '652323', '呼图壁县', '652300', '区', '', '0994', '831200', '中国,新疆维吾尔自治区,昌吉回族自治州,呼图壁县', '86.898920', '44.189770', 'Hutubi', '呼图壁', '0');
INSERT INTO `sys_area` VALUES ('652324', '652324', '玛纳斯县', '652300', '区', '', '0994', '832200', '中国,新疆维吾尔自治区,昌吉回族自治州,玛纳斯县', '86.214500', '44.304380', 'Manasi', '玛纳斯', '0');
INSERT INTO `sys_area` VALUES ('652325', '652325', '奇台县', '652300', '区', '', '0994', '831800', '中国,新疆维吾尔自治区,昌吉回族自治州,奇台县', '89.593200', '44.022210', 'Qitai', '奇台', '0');
INSERT INTO `sys_area` VALUES ('652327', '652327', '吉木萨尔县', '652300', '区', '', '0994', '831700', '中国,新疆维吾尔自治区,昌吉回族自治州,吉木萨尔县', '89.180780', '44.000480', 'Jimusaer', '吉木萨尔', '0');
INSERT INTO `sys_area` VALUES ('652328', '652328', '木垒哈萨克自治县', '652300', '区', '', '0994', '831900', '中国,新疆维吾尔自治区,昌吉回族自治州,木垒哈萨克自治县', '90.288970', '43.835080', 'Mulei', '木垒', '0');
INSERT INTO `sys_area` VALUES ('652700', '652700', '博尔塔拉蒙古自治州', '650000', '市', '', '0909', '833400', '中国,新疆维吾尔自治区,博尔塔拉蒙古自治州', '82.074778', '44.903258', 'Bortala', '博尔塔拉', '0');
INSERT INTO `sys_area` VALUES ('652701', '652701', '博乐市', '652700', '区', '', '0909', '833400', '中国,新疆维吾尔自治区,博尔塔拉蒙古自治州,博乐市', '82.071300', '44.900520', 'Bole', '博乐', '0');
INSERT INTO `sys_area` VALUES ('652702', '652702', '阿拉山口市', '652700', '区', '', '0909', '833400', '中国,新疆维吾尔自治区,博尔塔拉蒙古自治州,阿拉山口市', '82.567721', '45.170616', 'Alashankou', '阿拉山口', '0');
INSERT INTO `sys_area` VALUES ('652722', '652722', '精河县', '652700', '区', '', '0909', '833300', '中国,新疆维吾尔自治区,博尔塔拉蒙古自治州,精河县', '82.894190', '44.607740', 'Jinghe', '精河', '0');
INSERT INTO `sys_area` VALUES ('652723', '652723', '温泉县', '652700', '区', '', '0909', '833500', '中国,新疆维吾尔自治区,博尔塔拉蒙古自治州,温泉县', '81.031340', '44.973730', 'Wenquan', '温泉', '0');
INSERT INTO `sys_area` VALUES ('652800', '652800', '巴音郭楞蒙古自治州', '650000', '市', '', '0996', '841000', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州', '86.150969', '41.768552', 'Bayingol', '巴音郭楞', '0');
INSERT INTO `sys_area` VALUES ('652801', '652801', '库尔勒市', '652800', '区', '', '0996', '841000', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,库尔勒市', '86.155280', '41.766020', 'Kuerle', '库尔勒', '0');
INSERT INTO `sys_area` VALUES ('652822', '652822', '轮台县', '652800', '区', '', '0996', '841600', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,轮台县', '84.261010', '41.776420', 'Luntai', '轮台', '0');
INSERT INTO `sys_area` VALUES ('652823', '652823', '尉犁县', '652800', '区', '', '0996', '841500', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,尉犁县', '86.259030', '41.336320', 'Yuli', '尉犁', '0');
INSERT INTO `sys_area` VALUES ('652824', '652824', '若羌县', '652800', '区', '', '0996', '841800', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,若羌县', '88.168120', '39.017900', 'Ruoqiang', '若羌', '0');
INSERT INTO `sys_area` VALUES ('652825', '652825', '且末县', '652800', '区', '', '0996', '841900', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,且末县', '85.529750', '38.145340', 'Qiemo', '且末', '0');
INSERT INTO `sys_area` VALUES ('652826', '652826', '焉耆回族自治县', '652800', '区', '', '0996', '841100', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,焉耆回族自治县', '86.574400', '42.059000', 'Yanqi', '焉耆', '0');
INSERT INTO `sys_area` VALUES ('652827', '652827', '和静县', '652800', '区', '', '0996', '841300', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,和静县', '86.396110', '42.318380', 'Hejing', '和静', '0');
INSERT INTO `sys_area` VALUES ('652828', '652828', '和硕县', '652800', '区', '', '0996', '841200', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,和硕县', '86.863920', '42.268140', 'Heshuo', '和硕', '0');
INSERT INTO `sys_area` VALUES ('652829', '652829', '博湖县', '652800', '区', '', '0996', '841400', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,博湖县', '86.633330', '41.980140', 'Bohu', '博湖', '0');
INSERT INTO `sys_area` VALUES ('652900', '652900', '阿克苏地区', '650000', '市', '', '0997', '843000', '中国,新疆维吾尔自治区,阿克苏地区', '80.265068', '41.170712', 'Aksu', '阿克苏', '0');
INSERT INTO `sys_area` VALUES ('652901', '652901', '阿克苏市', '652900', '区', '', '0997', '843000', '中国,新疆维吾尔自治区,阿克苏地区,阿克苏市', '80.263380', '41.167540', 'Akesu', '阿克苏', '0');
INSERT INTO `sys_area` VALUES ('652922', '652922', '温宿县', '652900', '区', '', '0997', '843100', '中国,新疆维吾尔自治区,阿克苏地区,温宿县', '80.241730', '41.276790', 'Wensu', '温宿', '0');
INSERT INTO `sys_area` VALUES ('652923', '652923', '库车县', '652900', '区', '', '0997', '842000', '中国,新疆维吾尔自治区,阿克苏地区,库车县', '82.962090', '41.717930', 'Kuche', '库车', '0');
INSERT INTO `sys_area` VALUES ('652924', '652924', '沙雅县', '652900', '区', '', '0997', '842200', '中国,新疆维吾尔自治区,阿克苏地区,沙雅县', '82.781310', '41.224970', 'Shaya', '沙雅', '0');
INSERT INTO `sys_area` VALUES ('652925', '652925', '新和县', '652900', '区', '', '0997', '842100', '中国,新疆维吾尔自治区,阿克苏地区,新和县', '82.610530', '41.549640', 'Xinhe', '新和', '0');
INSERT INTO `sys_area` VALUES ('652926', '652926', '拜城县', '652900', '区', '', '0997', '842300', '中国,新疆维吾尔自治区,阿克苏地区,拜城县', '81.875640', '41.798010', 'Baicheng', '拜城', '0');
INSERT INTO `sys_area` VALUES ('652927', '652927', '乌什县', '652900', '区', '', '0997', '843400', '中国,新疆维吾尔自治区,阿克苏地区,乌什县', '79.229370', '41.215690', 'Wushi', '乌什', '0');
INSERT INTO `sys_area` VALUES ('652928', '652928', '阿瓦提县', '652900', '区', '', '0997', '843200', '中国,新疆维吾尔自治区,阿克苏地区,阿瓦提县', '80.383360', '40.639260', 'Awati', '阿瓦提', '0');
INSERT INTO `sys_area` VALUES ('652929', '652929', '柯坪县', '652900', '区', '', '0997', '843600', '中国,新疆维吾尔自治区,阿克苏地区,柯坪县', '79.047510', '40.505850', 'Keping', '柯坪', '0');
INSERT INTO `sys_area` VALUES ('653000', '653000', '克孜勒苏柯尔克孜自治州', '650000', '市', '', '0908', '845350', '中国,新疆维吾尔自治区,克孜勒苏柯尔克孜自治州', '76.172825', '39.713431', 'Kizilsu', '克孜勒苏', '0');
INSERT INTO `sys_area` VALUES ('653001', '653001', '阿图什市', '653000', '区', '', '0908', '845350', '中国,新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿图什市', '76.168270', '39.716150', 'Atushi', '阿图什', '0');
INSERT INTO `sys_area` VALUES ('653022', '653022', '阿克陶县', '653000', '区', '', '0908', '845550', '中国,新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿克陶县', '75.946920', '39.148920', 'Aketao', '阿克陶', '0');
INSERT INTO `sys_area` VALUES ('653023', '653023', '阿合奇县', '653000', '区', '', '0997', '843500', '中国,新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿合奇县', '78.448480', '40.939470', 'Aheqi', '阿合奇', '0');
INSERT INTO `sys_area` VALUES ('653024', '653024', '乌恰县', '653000', '区', '', '0908', '845450', '中国,新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,乌恰县', '75.258390', '39.719840', 'Wuqia', '乌恰', '0');
INSERT INTO `sys_area` VALUES ('653100', '653100', '喀什地区', '650000', '市', '', '0998', '844000', '中国,新疆维吾尔自治区,喀什地区', '75.989138', '39.467664', 'Kashgar', '喀什', '0');
INSERT INTO `sys_area` VALUES ('653101', '653101', '喀什市', '653100', '区', '', '0998', '844000', '中国,新疆维吾尔自治区,喀什地区,喀什市', '75.993790', '39.467680', 'Kashi', '喀什', '0');
INSERT INTO `sys_area` VALUES ('653121', '653121', '疏附县', '653100', '区', '', '0998', '844100', '中国,新疆维吾尔自治区,喀什地区,疏附县', '75.860290', '39.375340', 'Shufu', '疏附', '0');
INSERT INTO `sys_area` VALUES ('653122', '653122', '疏勒县', '653100', '区', '', '0998', '844200', '中国,新疆维吾尔自治区,喀什地区,疏勒县', '76.053980', '39.406250', 'Shule', '疏勒', '0');
INSERT INTO `sys_area` VALUES ('653123', '653123', '英吉沙县', '653100', '区', '', '0998', '844500', '中国,新疆维吾尔自治区,喀什地区,英吉沙县', '76.175650', '38.929680', 'Yingjisha', '英吉沙', '0');
INSERT INTO `sys_area` VALUES ('653124', '653124', '泽普县', '653100', '区', '', '0998', '844800', '中国,新疆维吾尔自治区,喀什地区,泽普县', '77.271450', '38.189350', 'Zepu', '泽普', '0');
INSERT INTO `sys_area` VALUES ('653125', '653125', '莎车县', '653100', '区', '', '0998', '844700', '中国,新疆维吾尔自治区,喀什地区,莎车县', '77.243160', '38.416010', 'Shache', '莎车', '0');
INSERT INTO `sys_area` VALUES ('653126', '653126', '叶城县', '653100', '区', '', '0998', '844900', '中国,新疆维吾尔自治区,喀什地区,叶城县', '77.416590', '37.883240', 'Yecheng', '叶城', '0');
INSERT INTO `sys_area` VALUES ('653127', '653127', '麦盖提县', '653100', '区', '', '0998', '844600', '中国,新疆维吾尔自治区,喀什地区,麦盖提县', '77.642240', '38.896620', 'Maigaiti', '麦盖提', '0');
INSERT INTO `sys_area` VALUES ('653128', '653128', '岳普湖县', '653100', '区', '', '0998', '844400', '中国,新疆维吾尔自治区,喀什地区,岳普湖县', '76.772330', '39.235610', 'Yuepuhu', '岳普湖', '0');
INSERT INTO `sys_area` VALUES ('653129', '653129', '伽师县', '653100', '区', '', '0998', '844300', '中国,新疆维吾尔自治区,喀什地区,伽师县', '76.723720', '39.488010', 'Jiashi', '伽师', '0');
INSERT INTO `sys_area` VALUES ('653130', '653130', '巴楚县', '653100', '区', '', '0998', '843800', '中国,新疆维吾尔自治区,喀什地区,巴楚县', '78.548880', '39.785500', 'Bachu', '巴楚', '0');
INSERT INTO `sys_area` VALUES ('653131', '653131', '塔什库尔干塔吉克自治县', '653100', '区', '', '0998', '845250', '中国,新疆维吾尔自治区,喀什地区,塔什库尔干塔吉克自治县', '75.231960', '37.778930', 'Tashikuergantajike', '塔什库尔干塔吉克', '0');
INSERT INTO `sys_area` VALUES ('653200', '653200', '和田地区', '650000', '市', '', '0903', '848000', '中国,新疆维吾尔自治区,和田地区', '79.925330', '37.110687', 'Hotan', '和田', '0');
INSERT INTO `sys_area` VALUES ('653201', '653201', '和田市', '653200', '区', '', '0903', '848000', '中国,新疆维吾尔自治区,和田地区,和田市', '79.913530', '37.112140', 'Hetianshi', '和田市', '0');
INSERT INTO `sys_area` VALUES ('653221', '653221', '和田县', '653200', '区', '', '0903', '848000', '中国,新疆维吾尔自治区,和田地区,和田县', '79.828740', '37.089220', 'Hetianxian', '和田县', '0');
INSERT INTO `sys_area` VALUES ('653222', '653222', '墨玉县', '653200', '区', '', '0903', '848100', '中国,新疆维吾尔自治区,和田地区,墨玉县', '79.740350', '37.272480', 'Moyu', '墨玉', '0');
INSERT INTO `sys_area` VALUES ('653223', '653223', '皮山县', '653200', '区', '', '0903', '845150', '中国,新疆维吾尔自治区,和田地区,皮山县', '78.281250', '37.620070', 'Pishan', '皮山', '0');
INSERT INTO `sys_area` VALUES ('653224', '653224', '洛浦县', '653200', '区', '', '0903', '848200', '中国,新疆维吾尔自治区,和田地区,洛浦县', '80.185360', '37.073640', 'Luopu', '洛浦', '0');
INSERT INTO `sys_area` VALUES ('653225', '653225', '策勒县', '653200', '区', '', '0903', '848300', '中国,新疆维吾尔自治区,和田地区,策勒县', '80.809990', '36.998430', 'Cele', '策勒', '0');
INSERT INTO `sys_area` VALUES ('653226', '653226', '于田县', '653200', '区', '', '0903', '848400', '中国,新疆维吾尔自治区,和田地区,于田县', '81.667170', '36.854000', 'Yutian', '于田', '0');
INSERT INTO `sys_area` VALUES ('653227', '653227', '民丰县', '653200', '区', '', '0903', '848500', '中国,新疆维吾尔自治区,和田地区,民丰县', '82.684440', '37.065770', 'Minfeng', '民丰', '0');
INSERT INTO `sys_area` VALUES ('654000', '654000', '伊犁哈萨克自治州', '650000', '市', '', '0999', '835100', '中国,新疆维吾尔自治区,伊犁哈萨克自治州', '81.317946', '43.921860', 'Ili', '伊犁', '0');
INSERT INTO `sys_area` VALUES ('654002', '654002', '伊宁市', '654000', '区', '', '0999', '835000', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,伊宁市', '81.329320', '43.912940', 'Yining', '伊宁', '0');
INSERT INTO `sys_area` VALUES ('654003', '654003', '奎屯市', '654000', '区', '', '0992', '833200', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,奎屯市', '84.902280', '44.425000', 'Kuitun', '奎屯', '0');
INSERT INTO `sys_area` VALUES ('654004', '654004', '霍尔果斯市', '654000', '区', '', '0999', '835221', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,霍尔果斯市', '80.418189', '44.205778', 'Huoerguosi', '霍尔果斯', '0');
INSERT INTO `sys_area` VALUES ('654021', '654021', '伊宁县', '654000', '区', '', '0999', '835100', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,伊宁县', '81.527640', '43.978630', 'Yining', '伊宁', '0');
INSERT INTO `sys_area` VALUES ('654022', '654022', '察布查尔锡伯自治县', '654000', '区', '', '0999', '835300', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,察布查尔锡伯自治县', '81.149560', '43.840230', 'Chabuchaerxibo', '察布查尔锡伯', '0');
INSERT INTO `sys_area` VALUES ('654023', '654023', '霍城县', '654000', '区', '', '0999', '835200', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,霍城县', '80.878260', '44.053300', 'Huocheng', '霍城', '0');
INSERT INTO `sys_area` VALUES ('654024', '654024', '巩留县', '654000', '区', '', '0999', '835400', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,巩留县', '82.228510', '43.484290', 'Gongliu', '巩留', '0');
INSERT INTO `sys_area` VALUES ('654025', '654025', '新源县', '654000', '区', '', '0999', '835800', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,新源县', '83.260950', '43.428400', 'Xinyuan', '新源', '0');
INSERT INTO `sys_area` VALUES ('654026', '654026', '昭苏县', '654000', '区', '', '0999', '835600', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,昭苏县', '81.130700', '43.158280', 'Zhaosu', '昭苏', '0');
INSERT INTO `sys_area` VALUES ('654027', '654027', '特克斯县', '654000', '区', '', '0999', '835500', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,特克斯县', '81.840050', '43.219380', 'Tekesi', '特克斯', '0');
INSERT INTO `sys_area` VALUES ('654028', '654028', '尼勒克县', '654000', '区', '', '0999', '835700', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,尼勒克县', '82.511840', '43.799010', 'Nileke', '尼勒克', '0');
INSERT INTO `sys_area` VALUES ('654200', '654200', '塔城地区', '650000', '市', '', '0901', '834700', '中国,新疆维吾尔自治区,塔城地区', '82.985732', '46.746301', 'Qoqek', '塔城', '0');
INSERT INTO `sys_area` VALUES ('654201', '654201', '塔城市', '654200', '区', '', '0901', '834700', '中国,新疆维吾尔自治区,塔城地区,塔城市', '82.978920', '46.748520', 'Tacheng', '塔城', '0');
INSERT INTO `sys_area` VALUES ('654202', '654202', '乌苏市', '654200', '区', '', '0992', '833000', '中国,新疆维吾尔自治区,塔城地区,乌苏市', '84.682580', '44.437290', 'Wusu', '乌苏', '0');
INSERT INTO `sys_area` VALUES ('654221', '654221', '额敏县', '654200', '区', '', '0901', '834600', '中国,新疆维吾尔自治区,塔城地区,额敏县', '83.628720', '46.528400', 'Emin', '额敏', '0');
INSERT INTO `sys_area` VALUES ('654223', '654223', '沙湾县', '654200', '区', '', '0993', '832100', '中国,新疆维吾尔自治区,塔城地区,沙湾县', '85.619320', '44.331440', 'Shawan', '沙湾', '0');
INSERT INTO `sys_area` VALUES ('654224', '654224', '托里县', '654200', '区', '', '0901', '834500', '中国,新疆维吾尔自治区,塔城地区,托里县', '83.605920', '45.936230', 'Tuoli', '托里', '0');
INSERT INTO `sys_area` VALUES ('654225', '654225', '裕民县', '654200', '区', '', '0901', '834800', '中国,新疆维吾尔自治区,塔城地区,裕民县', '82.990020', '46.203770', 'Yumin', '裕民', '0');
INSERT INTO `sys_area` VALUES ('654226', '654226', '和布克赛尔蒙古自治县', '654200', '区', '', '0990', '834400', '中国,新疆维吾尔自治区,塔城地区,和布克赛尔蒙古自治县', '85.726620', '46.793620', 'Hebukesaier', '和布克赛尔', '0');
INSERT INTO `sys_area` VALUES ('654300', '654300', '阿勒泰地区', '650000', '市', '', '0906', '836500', '中国,新疆维吾尔自治区,阿勒泰地区', '88.139630', '47.848393', 'Altay', '阿勒泰', '0');
INSERT INTO `sys_area` VALUES ('654301', '654301', '阿勒泰市', '654300', '区', '', '0906', '836500', '中国,新疆维吾尔自治区,阿勒泰地区,阿勒泰市', '88.139130', '47.831700', 'Aletai', '阿勒泰', '0');
INSERT INTO `sys_area` VALUES ('654321', '654321', '布尔津县', '654300', '区', '', '0906', '836600', '中国,新疆维吾尔自治区,阿勒泰地区,布尔津县', '86.857510', '47.700620', 'Buerjin', '布尔津', '0');
INSERT INTO `sys_area` VALUES ('654322', '654322', '富蕴县', '654300', '区', '', '0906', '836100', '中国,新疆维吾尔自治区,阿勒泰地区,富蕴县', '89.526790', '46.994440', 'Fuyun', '富蕴', '0');
INSERT INTO `sys_area` VALUES ('654323', '654323', '福海县', '654300', '区', '', '0906', '836400', '中国,新疆维吾尔自治区,阿勒泰地区,福海县', '87.495080', '47.110650', 'Fuhai', '福海', '0');
INSERT INTO `sys_area` VALUES ('654324', '654324', '哈巴河县', '654300', '区', '', '0906', '836700', '中国,新疆维吾尔自治区,阿勒泰地区,哈巴河县', '86.420920', '48.060460', 'Habahe', '哈巴河', '0');
INSERT INTO `sys_area` VALUES ('654325', '654325', '青河县', '654300', '区', '', '0906', '836200', '中国,新疆维吾尔自治区,阿勒泰地区,青河县', '90.383050', '46.673820', 'Qinghe', '青河', '0');
INSERT INTO `sys_area` VALUES ('654326', '654326', '吉木乃县', '654300', '区', '', '0906', '836800', '中国,新疆维吾尔自治区,阿勒泰地区,吉木乃县', '85.878140', '47.433590', 'Jimunai', '吉木乃', '0');
INSERT INTO `sys_area` VALUES ('659000', '659000', '直辖县级', '650000', '市', '', '', '', '中国,新疆维吾尔自治区,直辖县级', '91.132212', '29.660361', '', ' ', '0');
INSERT INTO `sys_area` VALUES ('659001', '659001', '石河子市', '659000', '区', '', '0993', '832000', '中国,新疆维吾尔自治区,直辖县级,石河子市', '86.041075', '44.305886', 'Shihezi', '石河子', '0');
INSERT INTO `sys_area` VALUES ('659002', '659002', '阿拉尔市', '659000', '区', '', '0997', '843300', '中国,新疆维吾尔自治区,直辖县级,阿拉尔市', '81.285884', '40.541914', 'Aral', '阿拉尔', '0');
INSERT INTO `sys_area` VALUES ('659003', '659003', '图木舒克市', '659000', '区', '', '0998', '843806', '中国,新疆维吾尔自治区,直辖县级,图木舒克市', '79.077978', '39.867316', 'Tumxuk', '图木舒克', '0');
INSERT INTO `sys_area` VALUES ('659004', '659004', '五家渠市', '659000', '区', '', '0994', '831300', '中国,新疆维吾尔自治区,直辖县级,五家渠市', '87.526884', '44.167401', 'Wujiaqu', '五家渠', '0');
INSERT INTO `sys_area` VALUES ('659005', '659005', '北屯市', '659000', '区', '', '0906', '836000', '中国,新疆维吾尔自治区,直辖县级,北屯市', '87.808456', '47.362308', 'Beitun', '北屯', '0');
INSERT INTO `sys_area` VALUES ('659006', '659006', '铁门关市', '659000', '区', '', '0906', '836000', '中国,新疆维吾尔自治区,直辖县级,铁门关市', '86.194687', '41.811007', 'Tiemenguan', '铁门关', '0');
INSERT INTO `sys_area` VALUES ('659007', '659007', '双河市', '659000', '区', '', '0909', '833408', '中国,新疆维吾尔自治区,直辖县级,双河市', '91.132212', '29.660361', 'Shuanghe', '双河', '0');
INSERT INTO `sys_area` VALUES ('710000', '710000', '台湾', '100000', '省', '', '', '', '中国,台湾', '121.509062', '25.044332', 'Taiwan', '台湾', '0');
INSERT INTO `sys_area` VALUES ('710100', '710100', '台北市', '710000', '市', '', '02', '1', '中国,台湾,台北市', '121.565170', '25.037798', 'Taipei', '台北', '0');
INSERT INTO `sys_area` VALUES ('710101', '710101', '松山区', '710100', '区', '', '02', '105', '中国,台湾,台北市,松山区', '121.577206', '25.049698', 'Songshan', '松山', '0');
INSERT INTO `sys_area` VALUES ('710102', '710102', '信义区', '710100', '区', '', '02', '110', '中国,台湾,台北市,信义区', '121.751381', '25.129407', 'Xinyi', '信义', '0');
INSERT INTO `sys_area` VALUES ('710103', '710103', '大安区', '710100', '区', '', '02', '106', '中国,台湾,台北市,大安区', '121.534648', '25.026406', 'Da\'an', '大安', '0');
INSERT INTO `sys_area` VALUES ('710104', '710104', '中山区', '710100', '区', '', '02', '104', '中国,台湾,台北市,中山区', '121.533468', '25.064361', 'Zhongshan', '中山', '0');
INSERT INTO `sys_area` VALUES ('710105', '710105', '中正区', '710100', '区', '', '02', '100', '中国,台湾,台北市,中正区', '121.518267', '25.032361', 'Zhongzheng', '中正', '0');
INSERT INTO `sys_area` VALUES ('710106', '710106', '大同区', '710100', '区', '', '02', '103', '中国,台湾,台北市,大同区', '121.515514', '25.065986', 'Datong', '大同', '0');
INSERT INTO `sys_area` VALUES ('710107', '710107', '万华区', '710100', '区', '', '02', '108', '中国,台湾,台北市,万华区', '121.499332', '25.031933', 'Wanhua', '万华', '0');
INSERT INTO `sys_area` VALUES ('710108', '710108', '文山区', '710100', '区', '', '02', '116', '中国,台湾,台北市,文山区', '121.570458', '24.989786', 'Wenshan', '文山', '0');
INSERT INTO `sys_area` VALUES ('710109', '710109', '南港区', '710100', '区', '', '02', '115', '中国,台湾,台北市,南港区', '121.606858', '25.054656', 'Nangang', '南港', '0');
INSERT INTO `sys_area` VALUES ('710110', '710110', '内湖区', '710100', '区', '', '02', '114', '中国,台湾,台北市,内湖区', '121.588998', '25.069664', 'Nahu', '内湖', '0');
INSERT INTO `sys_area` VALUES ('710111', '710111', '士林区', '710100', '区', '', '02', '111', '中国,台湾,台北市,士林区', '121.519874', '25.092822', 'Shilin', '士林', '0');
INSERT INTO `sys_area` VALUES ('710112', '710112', '北投区', '710100', '区', '', '02', '112', '中国,台湾,台北市,北投区', '121.501379', '25.132419', 'Beitou', '北投', '0');
INSERT INTO `sys_area` VALUES ('710200', '710200', '高雄市', '710000', '市', '', '07', '8', '中国,台湾,高雄市', '120.311922', '22.620856', 'Kaohsiung', '高雄', '0');
INSERT INTO `sys_area` VALUES ('710201', '710201', '盐埕区', '710200', '区', '', '07', '803', '中国,台湾,高雄市,盐埕区', '120.286795', '22.624666', 'Yancheng', '盐埕', '0');
INSERT INTO `sys_area` VALUES ('710202', '710202', '鼓山区', '710200', '区', '', '07', '804', '中国,台湾,高雄市,鼓山区', '120.281154', '22.636797', 'Gushan', '鼓山', '0');
INSERT INTO `sys_area` VALUES ('710203', '710203', '左营区', '710200', '区', '', '07', '813', '中国,台湾,高雄市,左营区', '120.294958', '22.690124', 'Zuoying', '左营', '0');
INSERT INTO `sys_area` VALUES ('710204', '710204', '楠梓区', '710200', '区', '', '07', '811', '中国,台湾,高雄市,楠梓区', '120.326314', '22.728401', 'Nanzi', '楠梓', '0');
INSERT INTO `sys_area` VALUES ('710205', '710205', '三民区', '710200', '区', '', '07', '807', '中国,台湾,高雄市,三民区', '120.299622', '22.647695', 'Sanmin', '三民', '0');
INSERT INTO `sys_area` VALUES ('710206', '710206', '新兴区', '710200', '区', '', '07', '800', '中国,台湾,高雄市,新兴区', '120.309535', '22.631147', 'Xinxing', '新兴', '0');
INSERT INTO `sys_area` VALUES ('710207', '710207', '前金区', '710200', '区', '', '07', '801', '中国,台湾,高雄市,前金区', '120.294159', '22.627421', 'Qianjin', '前金', '0');
INSERT INTO `sys_area` VALUES ('710208', '710208', '苓雅区', '710200', '区', '', '07', '802', '中国,台湾,高雄市,苓雅区', '120.312347', '22.621770', 'Lingya', '苓雅', '0');
INSERT INTO `sys_area` VALUES ('710209', '710209', '前镇区', '710200', '区', '', '07', '806', '中国,台湾,高雄市,前镇区', '120.318583', '22.586425', 'Qianzhen', '前镇', '0');
INSERT INTO `sys_area` VALUES ('710210', '710210', '旗津区', '710200', '区', '', '07', '805', '中国,台湾,高雄市,旗津区', '120.284429', '22.590565', 'Qijin', '旗津', '0');
INSERT INTO `sys_area` VALUES ('710211', '710211', '小港区', '710200', '区', '', '07', '812', '中国,台湾,高雄市,小港区', '120.337970', '22.565354', 'Xiaogang', '小港', '0');
INSERT INTO `sys_area` VALUES ('710212', '710212', '凤山区', '710200', '区', '', '07', '830', '中国,台湾,高雄市,凤山区', '120.356892', '22.626945', 'Fengshan', '凤山', '0');
INSERT INTO `sys_area` VALUES ('710213', '710213', '林园区', '710200', '区', '', '07', '832', '中国,台湾,高雄市,林园区', '120.395977', '22.501490', 'Linyuan', '林园', '0');
INSERT INTO `sys_area` VALUES ('710214', '710214', '大寮区', '710200', '区', '', '07', '831', '中国,台湾,高雄市,大寮区', '120.395422', '22.605386', 'Daliao', '大寮', '0');
INSERT INTO `sys_area` VALUES ('710215', '710215', '大树区', '710200', '区', '', '07', '840', '中国,台湾,高雄市,大树区', '120.433095', '22.693394', 'Dashu', '大树', '0');
INSERT INTO `sys_area` VALUES ('710216', '710216', '大社区', '710200', '区', '', '07', '815', '中国,台湾,高雄市,大社区', '120.346635', '22.729966', 'Dashe', '大社', '0');
INSERT INTO `sys_area` VALUES ('710217', '710217', '仁武区', '710200', '区', '', '07', '814', '中国,台湾,高雄市,仁武区', '120.347779', '22.701901', 'Renwu', '仁武', '0');
INSERT INTO `sys_area` VALUES ('710218', '710218', '鸟松区', '710200', '区', '', '07', '833', '中国,台湾,高雄市,鸟松区', '120.364402', '22.659340', 'Niaosong', '鸟松', '0');
INSERT INTO `sys_area` VALUES ('710219', '710219', '冈山区', '710200', '区', '', '07', '820', '中国,台湾,高雄市,冈山区', '120.295820', '22.796762', 'Gangshan', '冈山', '0');
INSERT INTO `sys_area` VALUES ('710220', '710220', '桥头区', '710200', '区', '', '07', '825', '中国,台湾,高雄市,桥头区', '120.305741', '22.757501', 'Qiaotou', '桥头', '0');
INSERT INTO `sys_area` VALUES ('710221', '710221', '燕巢区', '710200', '区', '', '07', '824', '中国,台湾,高雄市,燕巢区', '120.361956', '22.793370', 'Yanchao', '燕巢', '0');
INSERT INTO `sys_area` VALUES ('710222', '710222', '田寮区', '710200', '区', '', '07', '823', '中国,台湾,高雄市,田寮区', '120.359636', '22.869307', 'Tianliao', '田寮', '0');
INSERT INTO `sys_area` VALUES ('710223', '710223', '阿莲区', '710200', '区', '', '07', '822', '中国,台湾,高雄市,阿莲区', '120.327036', '22.883703', 'Alian', '阿莲', '0');
INSERT INTO `sys_area` VALUES ('710224', '710224', '路竹区', '710200', '区', '', '07', '821', '中国,台湾,高雄市,路竹区', '120.261828', '22.856851', 'Luzhu', '路竹', '0');
INSERT INTO `sys_area` VALUES ('710225', '710225', '湖内区', '710200', '区', '', '07', '829', '中国,台湾,高雄市,湖内区', '120.211530', '22.908188', 'Huna', '湖内', '0');
INSERT INTO `sys_area` VALUES ('710226', '710226', '茄萣区', '710200', '区', '', '07', '852', '中国,台湾,高雄市,茄萣区', '120.182815', '22.906556', 'Qieding', '茄萣', '0');
INSERT INTO `sys_area` VALUES ('710227', '710227', '永安区', '710200', '区', '', '07', '828', '中国,台湾,高雄市,永安区', '120.225308', '22.818580', 'Yong\'an', '永安', '0');
INSERT INTO `sys_area` VALUES ('710228', '710228', '弥陀区', '710200', '区', '', '07', '827', '中国,台湾,高雄市,弥陀区', '120.247344', '22.782879', 'Mituo', '弥陀', '0');
INSERT INTO `sys_area` VALUES ('710229', '710229', '梓官区', '710200', '区', '', '07', '826', '中国,台湾,高雄市,梓官区', '120.267322', '22.760475', 'Ziguan', '梓官', '0');
INSERT INTO `sys_area` VALUES ('710230', '710230', '旗山区', '710200', '区', '', '07', '842', '中国,台湾,高雄市,旗山区', '120.483550', '22.888491', 'Qishan', '旗山', '0');
INSERT INTO `sys_area` VALUES ('710231', '710231', '美浓区', '710200', '区', '', '07', '843', '中国,台湾,高雄市,美浓区', '120.541530', '22.897880', 'Meinong', '美浓', '0');
INSERT INTO `sys_area` VALUES ('710232', '710232', '六龟区', '710200', '区', '', '07', '844', '中国,台湾,高雄市,六龟区', '120.633418', '22.997914', 'Liugui', '六龟', '0');
INSERT INTO `sys_area` VALUES ('710233', '710233', '甲仙区', '710200', '区', '', '07', '847', '中国,台湾,高雄市,甲仙区', '120.591185', '23.084688', 'Jiaxian', '甲仙', '0');
INSERT INTO `sys_area` VALUES ('710234', '710234', '杉林区', '710200', '区', '', '07', '846', '中国,台湾,高雄市,杉林区', '120.538980', '22.970712', 'Shanlin', '杉林', '0');
INSERT INTO `sys_area` VALUES ('710235', '710235', '内门区', '710200', '区', '', '07', '845', '中国,台湾,高雄市,内门区', '120.462351', '22.943437', 'Namen', '内门', '0');
INSERT INTO `sys_area` VALUES ('710236', '710236', '茂林区', '710200', '区', '', '07', '851', '中国,台湾,高雄市,茂林区', '120.663217', '22.886248', 'Maolin', '茂林', '0');
INSERT INTO `sys_area` VALUES ('710237', '710237', '桃源区', '710200', '区', '', '07', '848', '中国,台湾,高雄市,桃源区', '120.760049', '23.159137', 'Taoyuan', '桃源', '0');
INSERT INTO `sys_area` VALUES ('710238', '710238', '那玛夏区', '710200', '区', '', '07', '849', '中国,台湾,高雄市,那玛夏区', '120.692799', '23.216964', 'Namaxia', '那玛夏', '0');
INSERT INTO `sys_area` VALUES ('710300', '710300', '基隆市', '710000', '市', '', '02', '2', '中国,台湾,基隆市', '121.746248', '25.130741', 'Keelung', '基隆', '0');
INSERT INTO `sys_area` VALUES ('710301', '710301', '中正区', '710300', '区', '', '02', '202', '中国,台湾,基隆市,中正区', '121.518267', '25.032361', 'Zhongzheng', '中正', '0');
INSERT INTO `sys_area` VALUES ('710302', '710302', '七堵区', '710300', '区', '', '02', '206', '中国,台湾,基隆市,七堵区', '121.713032', '25.095739', 'Qidu', '七堵', '0');
INSERT INTO `sys_area` VALUES ('710303', '710303', '暖暖区', '710300', '区', '', '02', '205', '中国,台湾,基隆市,暖暖区', '121.736102', '25.099777', 'Nuannuan', '暖暖', '0');
INSERT INTO `sys_area` VALUES ('710304', '710304', '仁爱区', '710300', '区', '', '02', '200', '中国,台湾,基隆市,仁爱区', '121.740940', '25.127526', 'Renai', '仁爱', '0');
INSERT INTO `sys_area` VALUES ('710305', '710305', '中山区', '710300', '区', '', '02', '203', '中国,台湾,基隆市,中山区', '121.739132', '25.133991', 'Zhongshan', '中山', '0');
INSERT INTO `sys_area` VALUES ('710306', '710306', '安乐区', '710300', '区', '', '02', '204', '中国,台湾,基隆市,安乐区', '121.723203', '25.120910', 'Anle', '安乐', '0');
INSERT INTO `sys_area` VALUES ('710307', '710307', '信义区', '710300', '区', '', '02', '201', '中国,台湾,基隆市,信义区', '121.751381', '25.129407', 'Xinyi', '信义', '0');
INSERT INTO `sys_area` VALUES ('710400', '710400', '台中市', '710000', '市', '', '04', '4', '中国,台湾,台中市', '120.679040', '24.138620', 'Taichung', '台中', '0');
INSERT INTO `sys_area` VALUES ('710401', '710401', '中区', '710400', '区', '', '04', '400', '中国,台湾,台中市,中区', '120.679510', '24.143830', 'Zhongqu', '中区', '0');
INSERT INTO `sys_area` VALUES ('710402', '710402', '东区', '710400', '区', '', '04', '401', '中国,台湾,台中市,东区', '120.704000', '24.136620', 'Dongqu', '东区', '0');
INSERT INTO `sys_area` VALUES ('710403', '710403', '南区', '710400', '区', '', '04', '402', '中国,台湾,台中市,南区', '120.188648', '22.960944', 'Nanqu', '南区', '0');
INSERT INTO `sys_area` VALUES ('710404', '710404', '西区', '710400', '区', '', '04', '403', '中国,台湾,台中市,西区', '120.671040', '24.141380', 'Xiqu', '西区', '0');
INSERT INTO `sys_area` VALUES ('710405', '710405', '北区', '710400', '区', '', '04', '404', '中国,台湾,台中市,北区', '120.682410', '24.166040', 'Beiqu', '北区', '0');
INSERT INTO `sys_area` VALUES ('710406', '710406', '西屯区', '710400', '区', '', '04', '407', '中国,台湾,台中市,西屯区', '120.639820', '24.181340', 'Xitun', '西屯', '0');
INSERT INTO `sys_area` VALUES ('710407', '710407', '南屯区', '710400', '区', '', '04', '408', '中国,台湾,台中市,南屯区', '120.643080', '24.138270', 'Nantun', '南屯', '0');
INSERT INTO `sys_area` VALUES ('710408', '710408', '北屯区', '710400', '区', '', '04', '406', '中国,台湾,台中市,北屯区', '120.686250', '24.182220', 'Beitun', '北屯', '0');
INSERT INTO `sys_area` VALUES ('710409', '710409', '丰原区', '710400', '区', '', '04', '420', '中国,台湾,台中市,丰原区', '120.718460', '24.242190', 'Fengyuan', '丰原', '0');
INSERT INTO `sys_area` VALUES ('710410', '710410', '东势区', '710400', '区', '', '04', '423', '中国,台湾,台中市,东势区', '120.827770', '24.258610', 'Dongshi', '东势', '0');
INSERT INTO `sys_area` VALUES ('710411', '710411', '大甲区', '710400', '区', '', '04', '437', '中国,台湾,台中市,大甲区', '120.622390', '24.348920', 'Dajia', '大甲', '0');
INSERT INTO `sys_area` VALUES ('710412', '710412', '清水区', '710400', '区', '', '04', '436', '中国,台湾,台中市,清水区', '120.559780', '24.268650', 'Qingshui', '清水', '0');
INSERT INTO `sys_area` VALUES ('710413', '710413', '沙鹿区', '710400', '区', '', '04', '433', '中国,台湾,台中市,沙鹿区', '120.565700', '24.233480', 'Shalu', '沙鹿', '0');
INSERT INTO `sys_area` VALUES ('710414', '710414', '梧栖区', '710400', '区', '', '04', '435', '中国,台湾,台中市,梧栖区', '120.531520', '24.254960', 'Wuqi', '梧栖', '0');
INSERT INTO `sys_area` VALUES ('710415', '710415', '后里区', '710400', '区', '', '04', '421', '中国,台湾,台中市,后里区', '120.710710', '24.304910', 'Houli', '后里', '0');
INSERT INTO `sys_area` VALUES ('710416', '710416', '神冈区', '710400', '区', '', '04', '429', '中国,台湾,台中市,神冈区', '120.661550', '24.257770', 'Shengang', '神冈', '0');
INSERT INTO `sys_area` VALUES ('710417', '710417', '潭子区', '710400', '区', '', '04', '427', '中国,台湾,台中市,潭子区', '120.705160', '24.209530', 'Tanzi', '潭子', '0');
INSERT INTO `sys_area` VALUES ('710418', '710418', '大雅区', '710400', '区', '', '04', '428', '中国,台湾,台中市,大雅区', '120.647780', '24.229230', 'Daya', '大雅', '0');
INSERT INTO `sys_area` VALUES ('710419', '710419', '新社区', '710400', '区', '', '04', '426', '中国,台湾,台中市,新社区', '120.809500', '24.234140', 'Xinshe', '新社', '0');
INSERT INTO `sys_area` VALUES ('710420', '710420', '石冈区', '710400', '区', '', '04', '422', '中国,台湾,台中市,石冈区', '120.780410', '24.274980', 'Shigang', '石冈', '0');
INSERT INTO `sys_area` VALUES ('710421', '710421', '外埔区', '710400', '区', '', '04', '438', '中国,台湾,台中市,外埔区', '120.654370', '24.332010', 'Waipu', '外埔', '0');
INSERT INTO `sys_area` VALUES ('710422', '710422', '大安区', '710400', '区', '', '04', '439', '中国,台湾,台中市,大安区', '120.586520', '24.346070', 'Da\'an', '大安', '0');
INSERT INTO `sys_area` VALUES ('710423', '710423', '乌日区', '710400', '区', '', '04', '414', '中国,台湾,台中市,乌日区', '120.623810', '24.104500', 'Wuri', '乌日', '0');
INSERT INTO `sys_area` VALUES ('710424', '710424', '大肚区', '710400', '区', '', '04', '432', '中国,台湾,台中市,大肚区', '120.540960', '24.153660', 'Dadu', '大肚', '0');
INSERT INTO `sys_area` VALUES ('710425', '710425', '龙井区', '710400', '区', '', '04', '434', '中国,台湾,台中市,龙井区', '120.545940', '24.192710', 'Longjing', '龙井', '0');
INSERT INTO `sys_area` VALUES ('710426', '710426', '雾峰区', '710400', '区', '', '04', '413', '中国,台湾,台中市,雾峰区', '120.700200', '24.061520', 'Wufeng', '雾峰', '0');
INSERT INTO `sys_area` VALUES ('710427', '710427', '太平区', '710400', '区', '', '04', '411', '中国,台湾,台中市,太平区', '120.718523', '24.126472', 'Taiping', '太平', '0');
INSERT INTO `sys_area` VALUES ('710428', '710428', '大里区', '710400', '区', '', '04', '412', '中国,台湾,台中市,大里区', '120.677860', '24.099390', 'Dali', '大里', '0');
INSERT INTO `sys_area` VALUES ('710429', '710429', '和平区', '710400', '区', '', '04', '424', '中国,台湾,台中市,和平区', '120.883490', '24.174770', 'Heping', '和平', '0');
INSERT INTO `sys_area` VALUES ('710500', '710500', '台南市', '710000', '市', '', '06', '7', '中国,台湾,台南市', '120.279363', '23.172478', 'Tainan', '台南', '0');
INSERT INTO `sys_area` VALUES ('710501', '710501', '东区', '710500', '区', '', '06', '701', '中国,台湾,台南市,东区', '120.224198', '22.980072', 'Dongqu', '东区', '0');
INSERT INTO `sys_area` VALUES ('710502', '710502', '南区', '710500', '区', '', '06', '702', '中国,台湾,台南市,南区', '120.188648', '22.960944', 'Nanqu', '南区', '0');
INSERT INTO `sys_area` VALUES ('710504', '710504', '北区', '710500', '区', '', '06', '704', '中国,台湾,台南市,北区', '120.682410', '24.166040', 'Beiqu', '北区', '0');
INSERT INTO `sys_area` VALUES ('710506', '710506', '安南区', '710500', '区', '', '06', '709', '中国,台湾,台南市,安南区', '120.184617', '23.047230', 'Annan', '安南', '0');
INSERT INTO `sys_area` VALUES ('710507', '710507', '安平区', '710500', '区', '', '06', '708', '中国,台湾,台南市,安平区', '120.166810', '23.000763', 'Anping', '安平', '0');
INSERT INTO `sys_area` VALUES ('710508', '710508', '中西区', '710500', '区', '', '06', '700', '中国,台湾,台南市,中西区', '120.205957', '22.992152', 'Zhongxi', '中西', '0');
INSERT INTO `sys_area` VALUES ('710509', '710509', '新营区', '710500', '区', '', '06', '730', '中国,台湾,台南市,新营区', '120.316698', '23.310274', 'Xinying', '新营', '0');
INSERT INTO `sys_area` VALUES ('710510', '710510', '盐水区', '710500', '区', '', '06', '737', '中国,台湾,台南市,盐水区', '120.266398', '23.319828', 'Yanshui', '盐水', '0');
INSERT INTO `sys_area` VALUES ('710511', '710511', '白河区', '710500', '区', '', '06', '732', '中国,台湾,台南市,白河区', '120.415810', '23.351221', 'Baihe', '白河', '0');
INSERT INTO `sys_area` VALUES ('710512', '710512', '柳营区', '710500', '区', '', '06', '736', '中国,台湾,台南市,柳营区', '120.311286', '23.278133', 'Liuying', '柳营', '0');
INSERT INTO `sys_area` VALUES ('710513', '710513', '后壁区', '710500', '区', '', '06', '731', '中国,台湾,台南市,后壁区', '120.362726', '23.366721', 'Houbi', '后壁', '0');
INSERT INTO `sys_area` VALUES ('710514', '710514', '东山区', '710500', '区', '', '06', '733', '中国,台湾,台南市,东山区', '120.403984', '23.326092', 'Dongshan', '东山', '0');
INSERT INTO `sys_area` VALUES ('710515', '710515', '麻豆区', '710500', '区', '', '06', '721', '中国,台湾,台南市,麻豆区', '120.248179', '23.181680', 'Madou', '麻豆', '0');
INSERT INTO `sys_area` VALUES ('710516', '710516', '下营区', '710500', '区', '', '06', '735', '中国,台湾,台南市,下营区', '120.264484', '23.235413', 'Xiaying', '下营', '0');
INSERT INTO `sys_area` VALUES ('710517', '710517', '六甲区', '710500', '区', '', '06', '734', '中国,台湾,台南市,六甲区', '120.347600', '23.231931', 'Liujia', '六甲', '0');
INSERT INTO `sys_area` VALUES ('710518', '710518', '官田区', '710500', '区', '', '06', '720', '中国,台湾,台南市,官田区', '120.314374', '23.194652', 'Guantian', '官田', '0');
INSERT INTO `sys_area` VALUES ('710519', '710519', '大内区', '710500', '区', '', '06', '742', '中国,台湾,台南市,大内区', '120.348853', '23.119460', 'Dana', '大内', '0');
INSERT INTO `sys_area` VALUES ('710520', '710520', '佳里区', '710500', '区', '', '06', '722', '中国,台湾,台南市,佳里区', '120.177211', '23.165121', 'Jiali', '佳里', '0');
INSERT INTO `sys_area` VALUES ('710521', '710521', '学甲区', '710500', '区', '', '06', '726', '中国,台湾,台南市,学甲区', '120.180255', '23.232348', 'Xuejia', '学甲', '0');
INSERT INTO `sys_area` VALUES ('710522', '710522', '西港区', '710500', '区', '', '06', '723', '中国,台湾,台南市,西港区', '120.203618', '23.123057', 'Xigang', '西港', '0');
INSERT INTO `sys_area` VALUES ('710523', '710523', '七股区', '710500', '区', '', '06', '724', '中国,台湾,台南市,七股区', '120.140003', '23.140545', 'Qigu', '七股', '0');
INSERT INTO `sys_area` VALUES ('710524', '710524', '将军区', '710500', '区', '', '06', '725', '中国,台湾,台南市,将军区', '120.156871', '23.199543', 'Jiangjun', '将军', '0');
INSERT INTO `sys_area` VALUES ('710525', '710525', '北门区', '710500', '区', '', '06', '727', '中国,台湾,台南市,北门区', '120.125821', '23.267148', 'Beimen', '北门', '0');
INSERT INTO `sys_area` VALUES ('710526', '710526', '新化区', '710500', '区', '', '06', '712', '中国,台湾,台南市,新化区', '120.310807', '23.038533', 'Xinhua', '新化', '0');
INSERT INTO `sys_area` VALUES ('710527', '710527', '善化区', '710500', '区', '', '06', '741', '中国,台湾,台南市,善化区', '120.296895', '23.132261', 'Shanhua', '善化', '0');
INSERT INTO `sys_area` VALUES ('710528', '710528', '新市区', '710500', '区', '', '06', '744', '中国,台湾,台南市,新市区', '120.295138', '23.078970', 'Xinshi', '新市', '0');
INSERT INTO `sys_area` VALUES ('710529', '710529', '安定区', '710500', '区', '', '06', '745', '中国,台湾,台南市,安定区', '120.237083', '23.121498', 'Anding', '安定', '0');
INSERT INTO `sys_area` VALUES ('710530', '710530', '山上区', '710500', '区', '', '06', '743', '中国,台湾,台南市,山上区', '120.352908', '23.103223', 'Shanshang', '山上', '0');
INSERT INTO `sys_area` VALUES ('710531', '710531', '玉井区', '710500', '区', '', '06', '714', '中国,台湾,台南市,玉井区', '120.460110', '23.123859', 'Yujing', '玉井', '0');
INSERT INTO `sys_area` VALUES ('710532', '710532', '楠西区', '710500', '区', '', '06', '715', '中国,台湾,台南市,楠西区', '120.485396', '23.173454', 'Nanxi', '楠西', '0');
INSERT INTO `sys_area` VALUES ('710533', '710533', '南化区', '710500', '区', '', '06', '716', '中国,台湾,台南市,南化区', '120.477116', '23.042614', 'Nanhua', '南化', '0');
INSERT INTO `sys_area` VALUES ('710534', '710534', '左镇区', '710500', '区', '', '06', '713', '中国,台湾,台南市,左镇区', '120.407309', '23.057955', 'Zuozhen', '左镇', '0');
INSERT INTO `sys_area` VALUES ('710535', '710535', '仁德区', '710500', '区', '', '06', '717', '中国,台湾,台南市,仁德区', '120.251520', '22.972212', 'Rende', '仁德', '0');
INSERT INTO `sys_area` VALUES ('710536', '710536', '归仁区', '710500', '区', '', '06', '711', '中国,台湾,台南市,归仁区', '120.293791', '22.967081', 'Guiren', '归仁', '0');
INSERT INTO `sys_area` VALUES ('710537', '710537', '关庙区', '710500', '区', '', '06', '718', '中国,台湾,台南市,关庙区', '120.327689', '22.962949', 'Guanmiao', '关庙', '0');
INSERT INTO `sys_area` VALUES ('710538', '710538', '龙崎区', '710500', '区', '', '06', '719', '中国,台湾,台南市,龙崎区', '120.360824', '22.965681', 'Longqi', '龙崎', '0');
INSERT INTO `sys_area` VALUES ('710539', '710539', '永康区', '710500', '区', '', '06', '710', '中国,台湾,台南市,永康区', '120.257069', '23.026061', 'Yongkang', '永康', '0');
INSERT INTO `sys_area` VALUES ('710600', '710600', '新竹市', '710000', '市', '', '03', '3', '中国,台湾,新竹市', '120.968798', '24.806738', 'Hsinchu', '新竹', '0');
INSERT INTO `sys_area` VALUES ('710601', '710601', '东区', '710600', '区', '', '03', '300', '中国,台湾,新竹市,东区', '120.970239', '24.801337', 'Dongqu', '东区', '0');
INSERT INTO `sys_area` VALUES ('710602', '710602', '北区', '710600', '区', '', '03', '', '中国,台湾,新竹市,北区', '120.682410', '24.166040', 'Beiqu', '北区', '0');
INSERT INTO `sys_area` VALUES ('710603', '710603', '香山区', '710600', '区', '', '03', '', '中国,台湾,新竹市,香山区', '120.956679', '24.768933', 'Xiangshan', '香山', '0');
INSERT INTO `sys_area` VALUES ('710700', '710700', '嘉义市', '710000', '市', '', '05', '6', '中国,台湾,嘉义市', '120.452538', '23.481568', 'Chiayi', '嘉义', '0');
INSERT INTO `sys_area` VALUES ('710701', '710701', '东区', '710700', '区', '', '05', '600', '中国,台湾,嘉义市,东区', '120.458009', '23.486213', 'Dongqu', '东区', '0');
INSERT INTO `sys_area` VALUES ('710702', '710702', '西区', '710700', '区', '', '05', '600', '中国,台湾,嘉义市,西区', '120.437493', '23.473029', 'Xiqu', '西区', '0');
INSERT INTO `sys_area` VALUES ('710800', '710800', '新北市', '710000', '市', '', '02', '2', '中国,台湾,新北市', '121.465746', '25.012366', 'New Taipei', '新北', '0');
INSERT INTO `sys_area` VALUES ('710801', '710801', '板桥区', '710800', '区', '', '02', '220', '中国,台湾,新北市,板桥区', '121.459084', '25.009578', 'Banqiao', '板桥', '0');
INSERT INTO `sys_area` VALUES ('710802', '710802', '三重区', '710800', '区', '', '02', '241', '中国,台湾,新北市,三重区', '121.488102', '25.061486', 'Sanzhong', '三重', '0');
INSERT INTO `sys_area` VALUES ('710803', '710803', '中和区', '710800', '区', '', '02', '235', '中国,台湾,新北市,中和区', '121.498980', '24.999397', 'Zhonghe', '中和', '0');
INSERT INTO `sys_area` VALUES ('710804', '710804', '永和区', '710800', '区', '', '02', '234', '中国,台湾,新北市,永和区', '121.513660', '25.007802', 'Yonghe', '永和', '0');
INSERT INTO `sys_area` VALUES ('710805', '710805', '新庄区', '710800', '区', '', '02', '242', '中国,台湾,新北市,新庄区', '121.450413', '25.035947', 'Xinzhuang', '新庄', '0');
INSERT INTO `sys_area` VALUES ('710806', '710806', '新店区', '710800', '区', '', '02', '231', '中国,台湾,新北市,新店区', '121.541750', '24.967558', 'Xindian', '新店', '0');
INSERT INTO `sys_area` VALUES ('710807', '710807', '树林区', '710800', '区', '', '02', '238', '中国,台湾,新北市,树林区', '121.420533', '24.990706', 'Shulin', '树林', '0');
INSERT INTO `sys_area` VALUES ('710808', '710808', '莺歌区', '710800', '区', '', '02', '239', '中国,台湾,新北市,莺歌区', '121.354573', '24.955413', 'Yingge', '莺歌', '0');
INSERT INTO `sys_area` VALUES ('710809', '710809', '三峡区', '710800', '区', '', '02', '237', '中国,台湾,新北市,三峡区', '121.368905', '24.934339', 'Sanxia', '三峡', '0');
INSERT INTO `sys_area` VALUES ('710810', '710810', '淡水区', '710800', '区', '', '02', '251', '中国,台湾,新北市,淡水区', '121.440915', '25.169452', 'Danshui', '淡水', '0');
INSERT INTO `sys_area` VALUES ('710811', '710811', '汐止区', '710800', '区', '', '02', '221', '中国,台湾,新北市,汐止区', '121.629470', '25.062999', 'Xizhi', '汐止', '0');
INSERT INTO `sys_area` VALUES ('710812', '710812', '瑞芳区', '710800', '区', '', '02', '224', '中国,台湾,新北市,瑞芳区', '121.810061', '25.108895', 'Ruifang', '瑞芳', '0');
INSERT INTO `sys_area` VALUES ('710813', '710813', '土城区', '710800', '区', '', '02', '236', '中国,台湾,新北市,土城区', '121.443348', '24.972201', 'Tucheng', '土城', '0');
INSERT INTO `sys_area` VALUES ('710814', '710814', '芦洲区', '710800', '区', '', '02', '247', '中国,台湾,新北市,芦洲区', '121.473700', '25.084923', 'Luzhou', '芦洲', '0');
INSERT INTO `sys_area` VALUES ('710815', '710815', '五股区', '710800', '区', '', '02', '248', '中国,台湾,新北市,五股区', '121.438156', '25.082743', 'Wugu', '五股', '0');
INSERT INTO `sys_area` VALUES ('710816', '710816', '泰山区', '710800', '区', '', '02', '243', '中国,台湾,新北市,泰山区', '121.430811', '25.058864', 'Taishan', '泰山', '0');
INSERT INTO `sys_area` VALUES ('710817', '710817', '林口区', '710800', '区', '', '02', '244', '中国,台湾,新北市,林口区', '121.391602', '25.077531', 'Linkou', '林口', '0');
INSERT INTO `sys_area` VALUES ('710818', '710818', '深坑区', '710800', '区', '', '02', '222', '中国,台湾,新北市,深坑区', '121.615670', '25.002329', 'Shenkeng', '深坑', '0');
INSERT INTO `sys_area` VALUES ('710819', '710819', '石碇区', '710800', '区', '', '02', '223', '中国,台湾,新北市,石碇区', '121.658567', '24.991679', 'Shiding', '石碇', '0');
INSERT INTO `sys_area` VALUES ('710820', '710820', '坪林区', '710800', '区', '', '02', '232', '中国,台湾,新北市,坪林区', '121.711185', '24.937388', 'Pinglin', '坪林', '0');
INSERT INTO `sys_area` VALUES ('710821', '710821', '三芝区', '710800', '区', '', '02', '252', '中国,台湾,新北市,三芝区', '121.500866', '25.258047', 'Sanzhi', '三芝', '0');
INSERT INTO `sys_area` VALUES ('710822', '710822', '石门区', '710800', '区', '', '02', '253', '中国,台湾,新北市,石门区', '121.568491', '25.290412', 'Shimen', '石门', '0');
INSERT INTO `sys_area` VALUES ('710823', '710823', '八里区', '710800', '区', '', '02', '249', '中国,台湾,新北市,八里区', '121.398227', '25.146680', 'Bali', '八里', '0');
INSERT INTO `sys_area` VALUES ('710824', '710824', '平溪区', '710800', '区', '', '02', '226', '中国,台湾,新北市,平溪区', '121.738255', '25.025725', 'Pingxi', '平溪', '0');
INSERT INTO `sys_area` VALUES ('710825', '710825', '双溪区', '710800', '区', '', '02', '227', '中国,台湾,新北市,双溪区', '121.865676', '25.033409', 'Shuangxi', '双溪', '0');
INSERT INTO `sys_area` VALUES ('710826', '710826', '贡寮区', '710800', '区', '', '02', '228', '中国,台湾,新北市,贡寮区', '121.908185', '25.022388', 'Gongliao', '贡寮', '0');
INSERT INTO `sys_area` VALUES ('710827', '710827', '金山区', '710800', '区', '', '02', '208', '中国,台湾,新北市,金山区', '121.636427', '25.221883', 'Jinshan', '金山', '0');
INSERT INTO `sys_area` VALUES ('710828', '710828', '万里区', '710800', '区', '', '02', '207', '中国,台湾,新北市,万里区', '121.688687', '25.181234', 'Wanli', '万里', '0');
INSERT INTO `sys_area` VALUES ('710829', '710829', '乌来区', '710800', '区', '', '02', '233', '中国,台湾,新北市,乌来区', '121.550531', '24.865296', 'Wulai', '乌来', '0');
INSERT INTO `sys_area` VALUES ('712200', '712200', '宜兰县', '710000', '市', '', '03', '2', '中国,台湾,宜兰县', '121.500000', '24.600000', 'Yilan', '宜兰', '0');
INSERT INTO `sys_area` VALUES ('712201', '712201', '宜兰市', '712200', '区', '', '03', '260', '中国,台湾,宜兰县,宜兰市', '121.753476', '24.751682', 'Yilan', '宜兰', '0');
INSERT INTO `sys_area` VALUES ('712221', '712221', '罗东镇', '712200', '区', '', '03', '265', '中国,台湾,宜兰县,罗东镇', '121.766919', '24.677033', 'Luodong', '罗东', '0');
INSERT INTO `sys_area` VALUES ('712222', '712222', '苏澳镇', '712200', '区', '', '03', '270', '中国,台湾,宜兰县,苏澳镇', '121.842656', '24.594622', 'Suao', '苏澳', '0');
INSERT INTO `sys_area` VALUES ('712223', '712223', '头城镇', '712200', '区', '', '03', '261', '中国,台湾,宜兰县,头城镇', '121.823307', '24.859217', 'Toucheng', '头城', '0');
INSERT INTO `sys_area` VALUES ('712224', '712224', '礁溪乡', '712200', '区', '', '03', '262', '中国,台湾,宜兰县,礁溪乡', '121.766680', '24.822345', 'Jiaoxi', '礁溪', '0');
INSERT INTO `sys_area` VALUES ('712225', '712225', '壮围乡', '712200', '区', '', '03', '263', '中国,台湾,宜兰县,壮围乡', '121.781619', '24.744949', 'Zhuangwei', '壮围', '0');
INSERT INTO `sys_area` VALUES ('712226', '712226', '员山乡', '712200', '区', '', '03', '264', '中国,台湾,宜兰县,员山乡', '121.721733', '24.741771', 'Yuanshan', '员山', '0');
INSERT INTO `sys_area` VALUES ('712227', '712227', '冬山乡', '712200', '区', '', '03', '269', '中国,台湾,宜兰县,冬山乡', '121.792280', '24.634514', 'Dongshan', '冬山', '0');
INSERT INTO `sys_area` VALUES ('712228', '712228', '五结乡', '712200', '区', '', '03', '268', '中国,台湾,宜兰县,五结乡', '121.798297', '24.684640', 'Wujie', '五结', '0');
INSERT INTO `sys_area` VALUES ('712229', '712229', '三星乡', '712200', '区', '', '03', '266', '中国,台湾,宜兰县,三星乡', '121.003418', '23.775291', 'Sanxing', '三星', '0');
INSERT INTO `sys_area` VALUES ('712230', '712230', '大同乡', '712200', '区', '', '03', '267', '中国,台湾,宜兰县,大同乡', '121.605557', '24.675997', 'Datong', '大同', '0');
INSERT INTO `sys_area` VALUES ('712231', '712231', '南澳乡', '712200', '区', '', '03', '272', '中国,台湾,宜兰县,南澳乡', '121.799810', '24.465393', 'Nanao', '南澳', '0');
INSERT INTO `sys_area` VALUES ('712300', '712300', '桃园县', '710000', '市', '', '03', '3', '中国,台湾,桃园县', '121.083000', '25.000000', 'Taoyuan', '桃园', '0');
INSERT INTO `sys_area` VALUES ('712301', '712301', '桃园市', '712300', '区', '', '03', '330', '中国,台湾,桃园县,桃园市', '121.301337', '24.993777', 'Taoyuan', '桃园', '0');
INSERT INTO `sys_area` VALUES ('712302', '712302', '中坜市', '712300', '区', '', '03', '320', '中国,台湾,桃园县,中坜市', '121.224926', '24.965353', 'Zhongli', '中坜', '0');
INSERT INTO `sys_area` VALUES ('712303', '712303', '平镇市', '712300', '区', '', '03', '324', '中国,台湾,桃园县,平镇市', '121.218359', '24.945752', 'Pingzhen', '平镇', '0');
INSERT INTO `sys_area` VALUES ('712304', '712304', '八德市', '712300', '区', '', '03', '334', '中国,台湾,桃园县,八德市', '121.284655', '24.928651', 'Bade', '八德', '0');
INSERT INTO `sys_area` VALUES ('712305', '712305', '杨梅市', '712300', '区', '', '03', '326', '中国,台湾,桃园县,杨梅市', '121.145873', '24.907575', 'Yangmei', '杨梅', '0');
INSERT INTO `sys_area` VALUES ('712306', '712306', '芦竹市', '712300', '区', '', '03', '338', '中国,台湾,桃园县,芦竹市', '121.292064', '25.045392', 'Luzhu', '芦竹', '0');
INSERT INTO `sys_area` VALUES ('712321', '712321', '大溪镇', '712300', '区', '', '03', '335', '中国,台湾,桃园县,大溪镇', '121.286962', '24.880584', 'Daxi', '大溪', '0');
INSERT INTO `sys_area` VALUES ('712324', '712324', '大园乡', '712300', '区', '', '03', '337', '中国,台湾,桃园县,大园乡', '121.196292', '25.064471', 'Dayuan', '大园', '0');
INSERT INTO `sys_area` VALUES ('712325', '712325', '龟山乡', '712300', '区', '', '03', '333', '中国,台湾,桃园县,龟山乡', '121.337767', '24.992517', 'Guishan', '龟山', '0');
INSERT INTO `sys_area` VALUES ('712327', '712327', '龙潭乡', '712300', '区', '', '03', '325', '中国,台湾,桃园县,龙潭乡', '121.216392', '24.863851', 'Longtan', '龙潭', '0');
INSERT INTO `sys_area` VALUES ('712329', '712329', '新屋乡', '712300', '区', '', '03', '327', '中国,台湾,桃园县,新屋乡', '121.105801', '24.972203', 'Xinwu', '新屋', '0');
INSERT INTO `sys_area` VALUES ('712330', '712330', '观音乡', '712300', '区', '', '03', '328', '中国,台湾,桃园县,观音乡', '121.077519', '25.033303', 'Guanyin', '观音', '0');
INSERT INTO `sys_area` VALUES ('712331', '712331', '复兴乡', '712300', '区', '', '03', '336', '中国,台湾,桃园县,复兴乡', '121.352613', '24.820908', 'Fuxing', '复兴', '0');
INSERT INTO `sys_area` VALUES ('712400', '712400', '新竹县', '710000', '市', '', '03', '3', '中国,台湾,新竹县', '121.160000', '24.600000', 'Hsinchu', '新竹', '0');
INSERT INTO `sys_area` VALUES ('712401', '712401', '竹北市', '712400', '区', '', '03', '302', '中国,台湾,新竹县,竹北市', '121.004317', '24.839652', 'Zhubei', '竹北', '0');
INSERT INTO `sys_area` VALUES ('712421', '712421', '竹东镇', '712400', '区', '', '03', '310', '中国,台湾,新竹县,竹东镇', '121.086418', '24.733601', 'Zhudong', '竹东', '0');
INSERT INTO `sys_area` VALUES ('712422', '712422', '新埔镇', '712400', '区', '', '03', '305', '中国,台湾,新竹县,新埔镇', '121.072804', '24.824820', 'Xinpu', '新埔', '0');
INSERT INTO `sys_area` VALUES ('712423', '712423', '关西镇', '712400', '区', '', '03', '306', '中国,台湾,新竹县,关西镇', '121.177301', '24.788842', 'Guanxi', '关西', '0');
INSERT INTO `sys_area` VALUES ('712424', '712424', '湖口乡', '712400', '区', '', '03', '303', '中国,台湾,新竹县,湖口乡', '121.043691', '24.903943', 'Hukou', '湖口', '0');
INSERT INTO `sys_area` VALUES ('712425', '712425', '新丰乡', '712400', '区', '', '03', '304', '中国,台湾,新竹县,新丰乡', '120.983006', '24.899600', 'Xinfeng', '新丰', '0');
INSERT INTO `sys_area` VALUES ('712426', '712426', '芎林乡', '712400', '区', '', '03', '307', '中国,台湾,新竹县,芎林乡', '121.076924', '24.774436', 'Xionglin', '芎林', '0');
INSERT INTO `sys_area` VALUES ('712427', '712427', '横山乡', '712400', '区', '', '03', '312', '中国,台湾,新竹县,横山乡', '121.116244', '24.720807', 'Hengshan', '横山', '0');
INSERT INTO `sys_area` VALUES ('712428', '712428', '北埔乡', '712400', '区', '', '03', '314', '中国,台湾,新竹县,北埔乡', '121.053156', '24.697126', 'Beipu', '北埔', '0');
INSERT INTO `sys_area` VALUES ('712429', '712429', '宝山乡', '712400', '区', '', '03', '308', '中国,台湾,新竹县,宝山乡', '120.985752', '24.760975', 'Baoshan', '宝山', '0');
INSERT INTO `sys_area` VALUES ('712430', '712430', '峨眉乡', '712400', '区', '', '03', '315', '中国,台湾,新竹县,峨眉乡', '121.015291', '24.686127', 'Emei', '峨眉', '0');
INSERT INTO `sys_area` VALUES ('712431', '712431', '尖石乡', '712400', '区', '', '03', '313', '中国,台湾,新竹县,尖石乡', '121.197802', '24.704360', 'Jianshi', '尖石', '0');
INSERT INTO `sys_area` VALUES ('712432', '712432', '五峰乡', '712400', '区', '', '03', '311', '中国,台湾,新竹县,五峰乡', '121.003418', '23.775291', 'Wufeng', '五峰', '0');
INSERT INTO `sys_area` VALUES ('712500', '712500', '苗栗县', '710000', '市', '', '037', '3', '中国,台湾,苗栗县', '120.750000', '24.500000', 'Miaoli', '苗栗', '0');
INSERT INTO `sys_area` VALUES ('712501', '712501', '苗栗市', '712500', '区', '', '037', '360', '中国,台湾,苗栗县,苗栗市', '120.818869', '24.561472', 'Miaoli', '苗栗', '0');
INSERT INTO `sys_area` VALUES ('712521', '712521', '苑里镇', '712500', '区', '', '037', '358', '中国,台湾,苗栗县,苑里镇', '120.648907', '24.441750', 'Yuanli', '苑里', '0');
INSERT INTO `sys_area` VALUES ('712522', '712522', '通霄镇', '712500', '区', '', '037', '357', '中国,台湾,苗栗县,通霄镇', '120.676700', '24.489087', 'Tongxiao', '通霄', '0');
INSERT INTO `sys_area` VALUES ('712523', '712523', '竹南镇', '712500', '区', '', '037', '350', '中国,台湾,苗栗县,竹南镇', '120.872641', '24.685513', 'Zhunan', '竹南', '0');
INSERT INTO `sys_area` VALUES ('712524', '712524', '头份镇', '712500', '区', '', '037', '351', '中国,台湾,苗栗县,头份镇', '120.895188', '24.687993', 'Toufen', '头份', '0');
INSERT INTO `sys_area` VALUES ('712525', '712525', '后龙镇', '712500', '区', '', '037', '356', '中国,台湾,苗栗县,后龙镇', '120.786480', '24.612617', 'Houlong', '后龙', '0');
INSERT INTO `sys_area` VALUES ('712526', '712526', '卓兰镇', '712500', '区', '', '037', '369', '中国,台湾,苗栗县,卓兰镇', '120.823441', '24.309509', 'Zhuolan', '卓兰', '0');
INSERT INTO `sys_area` VALUES ('712527', '712527', '大湖乡', '712500', '区', '', '037', '364', '中国,台湾,苗栗县,大湖乡', '120.863641', '24.422547', 'Dahu', '大湖', '0');
INSERT INTO `sys_area` VALUES ('712528', '712528', '公馆乡', '712500', '区', '', '037', '363', '中国,台湾,苗栗县,公馆乡', '120.822983', '24.499108', 'Gongguan', '公馆', '0');
INSERT INTO `sys_area` VALUES ('712529', '712529', '铜锣乡', '712500', '区', '', '037', '366', '中国,台湾,苗栗县,铜锣乡', '121.003418', '23.775291', 'Tongluo', '铜锣', '0');
INSERT INTO `sys_area` VALUES ('712530', '712530', '南庄乡', '712500', '区', '', '037', '353', '中国,台湾,苗栗县,南庄乡', '120.994957', '24.596835', 'Nanzhuang', '南庄', '0');
INSERT INTO `sys_area` VALUES ('712531', '712531', '头屋乡', '712500', '区', '', '037', '362', '中国,台湾,苗栗县,头屋乡', '120.846616', '24.574249', 'Touwu', '头屋', '0');
INSERT INTO `sys_area` VALUES ('712532', '712532', '三义乡', '712500', '区', '', '037', '367', '中国,台湾,苗栗县,三义乡', '120.742340', '24.350270', 'Sanyi', '三义', '0');
INSERT INTO `sys_area` VALUES ('712533', '712533', '西湖乡', '712500', '区', '', '037', '368', '中国,台湾,苗栗县,西湖乡', '121.003418', '23.775291', 'Xihu', '西湖', '0');
INSERT INTO `sys_area` VALUES ('712534', '712534', '造桥乡', '712500', '区', '', '037', '361', '中国,台湾,苗栗县,造桥乡', '120.862399', '24.637537', 'Zaoqiao', '造桥', '0');
INSERT INTO `sys_area` VALUES ('712535', '712535', '三湾乡', '712500', '区', '', '037', '352', '中国,台湾,苗栗县,三湾乡', '120.951484', '24.651051', 'Sanwan', '三湾', '0');
INSERT INTO `sys_area` VALUES ('712536', '712536', '狮潭乡', '712500', '区', '', '037', '354', '中国,台湾,苗栗县,狮潭乡', '120.918024', '24.540004', 'Shitan', '狮潭', '0');
INSERT INTO `sys_area` VALUES ('712537', '712537', '泰安乡', '712500', '区', '', '037', '365', '中国,台湾,苗栗县,泰安乡', '120.904441', '24.442600', 'Tai\'an', '泰安', '0');
INSERT INTO `sys_area` VALUES ('712700', '712700', '彰化县', '710000', '市', '', '04', '5', '中国,台湾,彰化县', '120.416000', '24.000000', 'Changhua', '彰化', '0');
INSERT INTO `sys_area` VALUES ('712701', '712701', '彰化市', '712700', '区', '', '04', '500', '中国,台湾,彰化县,彰化市', '120.542294', '24.080911', 'Zhanghuashi', '彰化市', '0');
INSERT INTO `sys_area` VALUES ('712721', '712721', '鹿港镇', '712700', '区', '', '04', '505', '中国,台湾,彰化县,鹿港镇', '120.435392', '24.056937', 'Lugang', '鹿港', '0');
INSERT INTO `sys_area` VALUES ('712722', '712722', '和美镇', '712700', '区', '', '04', '508', '中国,台湾,彰化县,和美镇', '120.500265', '24.110904', 'Hemei', '和美', '0');
INSERT INTO `sys_area` VALUES ('712723', '712723', '线西乡', '712700', '区', '', '04', '507', '中国,台湾,彰化县,线西乡', '120.465921', '24.128653', 'Xianxi', '线西', '0');
INSERT INTO `sys_area` VALUES ('712724', '712724', '伸港乡', '712700', '区', '', '04', '509', '中国,台湾,彰化县,伸港乡', '120.484224', '24.146081', 'Shengang', '伸港', '0');
INSERT INTO `sys_area` VALUES ('712725', '712725', '福兴乡', '712700', '区', '', '04', '506', '中国,台湾,彰化县,福兴乡', '120.443682', '24.047883', 'Fuxing', '福兴', '0');
INSERT INTO `sys_area` VALUES ('712726', '712726', '秀水乡', '712700', '区', '', '04', '504', '中国,台湾,彰化县,秀水乡', '120.502658', '24.035267', 'Xiushui', '秀水', '0');
INSERT INTO `sys_area` VALUES ('712727', '712727', '花坛乡', '712700', '区', '', '04', '503', '中国,台湾,彰化县,花坛乡', '120.538403', '24.029399', 'Huatan', '花坛', '0');
INSERT INTO `sys_area` VALUES ('712728', '712728', '芬园乡', '712700', '区', '', '04', '502', '中国,台湾,彰化县,芬园乡', '120.629024', '24.013658', 'Fenyuan', '芬园', '0');
INSERT INTO `sys_area` VALUES ('712729', '712729', '员林镇', '712700', '区', '', '04', '510', '中国,台湾,彰化县,员林镇', '120.574625', '23.958999', 'Yuanlin', '员林', '0');
INSERT INTO `sys_area` VALUES ('712730', '712730', '溪湖镇', '712700', '区', '', '04', '514', '中国,台湾,彰化县,溪湖镇', '120.479144', '23.962315', 'Xihu', '溪湖', '0');
INSERT INTO `sys_area` VALUES ('712731', '712731', '田中镇', '712700', '区', '', '04', '520', '中国,台湾,彰化县,田中镇', '120.580629', '23.861718', 'Tianzhong', '田中', '0');
INSERT INTO `sys_area` VALUES ('712732', '712732', '大村乡', '712700', '区', '', '04', '515', '中国,台湾,彰化县,大村乡', '120.540713', '23.993726', 'Dacun', '大村', '0');
INSERT INTO `sys_area` VALUES ('712733', '712733', '埔盐乡', '712700', '区', '', '04', '516', '中国,台湾,彰化县,埔盐乡', '120.464044', '24.000346', 'Puyan', '埔盐', '0');
INSERT INTO `sys_area` VALUES ('712734', '712734', '埔心乡', '712700', '区', '', '04', '513', '中国,台湾,彰化县,埔心乡', '120.543568', '23.953019', 'Puxin', '埔心', '0');
INSERT INTO `sys_area` VALUES ('712735', '712735', '永靖乡', '712700', '区', '', '04', '512', '中国,台湾,彰化县,永靖乡', '120.547775', '23.924703', 'Yongjing', '永靖', '0');
INSERT INTO `sys_area` VALUES ('712736', '712736', '社头乡', '712700', '区', '', '04', '511', '中国,台湾,彰化县,社头乡', '120.582681', '23.896686', 'Shetou', '社头', '0');
INSERT INTO `sys_area` VALUES ('712737', '712737', '二水乡', '712700', '区', '', '04', '530', '中国,台湾,彰化县,二水乡', '120.618788', '23.806995', 'Ershui', '二水', '0');
INSERT INTO `sys_area` VALUES ('712738', '712738', '北斗镇', '712700', '区', '', '04', '521', '中国,台湾,彰化县,北斗镇', '120.520449', '23.870911', 'Beidou', '北斗', '0');
INSERT INTO `sys_area` VALUES ('712739', '712739', '二林镇', '712700', '区', '', '04', '526', '中国,台湾,彰化县,二林镇', '120.374468', '23.899751', 'Erlin', '二林', '0');
INSERT INTO `sys_area` VALUES ('712740', '712740', '田尾乡', '712700', '区', '', '04', '522', '中国,台湾,彰化县,田尾乡', '120.524717', '23.890735', 'Tianwei', '田尾', '0');
INSERT INTO `sys_area` VALUES ('712741', '712741', '埤头乡', '712700', '区', '', '04', '523', '中国,台湾,彰化县,埤头乡', '120.462599', '23.891324', 'Pitou', '埤头', '0');
INSERT INTO `sys_area` VALUES ('712742', '712742', '芳苑乡', '712700', '区', '', '04', '528', '中国,台湾,彰化县,芳苑乡', '120.320329', '23.924222', 'Fangyuan', '芳苑', '0');
INSERT INTO `sys_area` VALUES ('712743', '712743', '大城乡', '712700', '区', '', '04', '527', '中国,台湾,彰化县,大城乡', '120.320934', '23.852382', 'Dacheng', '大城', '0');
INSERT INTO `sys_area` VALUES ('712744', '712744', '竹塘乡', '712700', '区', '', '04', '525', '中国,台湾,彰化县,竹塘乡', '120.427499', '23.860112', 'Zhutang', '竹塘', '0');
INSERT INTO `sys_area` VALUES ('712745', '712745', '溪州乡', '712700', '区', '', '04', '524', '中国,台湾,彰化县,溪州乡', '120.498706', '23.851229', 'Xizhou', '溪州', '0');
INSERT INTO `sys_area` VALUES ('712800', '712800', '南投县', '710000', '市', '', '049', '5', '中国,台湾,南投县', '120.830000', '23.830000', 'Nantou', '南投', '0');
INSERT INTO `sys_area` VALUES ('712801', '712801', '南投市', '712800', '区', '', '049', '540', '中国,台湾,南投县,南投市', '120.683706', '23.909956', 'Nantoushi', '南投市', '0');
INSERT INTO `sys_area` VALUES ('712821', '712821', '埔里镇', '712800', '区', '', '049', '545', '中国,台湾,南投县,埔里镇', '120.964648', '23.964789', 'Puli', '埔里', '0');
INSERT INTO `sys_area` VALUES ('712822', '712822', '草屯镇', '712800', '区', '', '049', '542', '中国,台湾,南投县,草屯镇', '120.680343', '23.973947', 'Caotun', '草屯', '0');
INSERT INTO `sys_area` VALUES ('712823', '712823', '竹山镇', '712800', '区', '', '049', '557', '中国,台湾,南投县,竹山镇', '120.672007', '23.757655', 'Zhushan', '竹山', '0');
INSERT INTO `sys_area` VALUES ('712824', '712824', '集集镇', '712800', '区', '', '049', '552', '中国,台湾,南投县,集集镇', '120.783673', '23.829013', 'Jiji', '集集', '0');
INSERT INTO `sys_area` VALUES ('712825', '712825', '名间乡', '712800', '区', '', '049', '551', '中国,台湾,南投县,名间乡', '120.702797', '23.838427', 'Mingjian', '名间', '0');
INSERT INTO `sys_area` VALUES ('712826', '712826', '鹿谷乡', '712800', '区', '', '049', '558', '中国,台湾,南投县,鹿谷乡', '120.752796', '23.744471', 'Lugu', '鹿谷', '0');
INSERT INTO `sys_area` VALUES ('712827', '712827', '中寮乡', '712800', '区', '', '049', '541', '中国,台湾,南投县,中寮乡', '120.766654', '23.878935', 'Zhongliao', '中寮', '0');
INSERT INTO `sys_area` VALUES ('712828', '712828', '鱼池乡', '712800', '区', '', '049', '555', '中国,台湾,南投县,鱼池乡', '120.936060', '23.896356', 'Yuchi', '鱼池', '0');
INSERT INTO `sys_area` VALUES ('712829', '712829', '国姓乡', '712800', '区', '', '049', '544', '中国,台湾,南投县,国姓乡', '120.858541', '24.042298', 'Guoxing', '国姓', '0');
INSERT INTO `sys_area` VALUES ('712830', '712830', '水里乡', '712800', '区', '', '049', '553', '中国,台湾,南投县,水里乡', '120.855912', '23.812086', 'Shuili', '水里', '0');
INSERT INTO `sys_area` VALUES ('712831', '712831', '信义乡', '712800', '区', '', '049', '556', '中国,台湾,南投县,信义乡', '120.855257', '23.699922', 'Xinyi', '信义', '0');
INSERT INTO `sys_area` VALUES ('712832', '712832', '仁爱乡', '712800', '区', '', '049', '546', '中国,台湾,南投县,仁爱乡', '121.133543', '24.024429', 'Renai', '仁爱', '0');
INSERT INTO `sys_area` VALUES ('712900', '712900', '云林县', '710000', '市', '', '05', '6', '中国,台湾,云林县', '120.250000', '23.750000', 'Yunlin', '云林', '0');
INSERT INTO `sys_area` VALUES ('712901', '712901', '斗六市', '712900', '区', '', '05', '640', '中国,台湾,云林县,斗六市', '120.527360', '23.697651', 'Douliu', '斗六', '0');
INSERT INTO `sys_area` VALUES ('712921', '712921', '斗南镇', '712900', '区', '', '05', '630', '中国,台湾,云林县,斗南镇', '120.479075', '23.679731', 'Dounan', '斗南', '0');
INSERT INTO `sys_area` VALUES ('712922', '712922', '虎尾镇', '712900', '区', '', '05', '632', '中国,台湾,云林县,虎尾镇', '120.445339', '23.708182', 'Huwei', '虎尾', '0');
INSERT INTO `sys_area` VALUES ('712923', '712923', '西螺镇', '712900', '区', '', '05', '648', '中国,台湾,云林县,西螺镇', '120.466010', '23.797984', 'Xiluo', '西螺', '0');
INSERT INTO `sys_area` VALUES ('712924', '712924', '土库镇', '712900', '区', '', '05', '633', '中国,台湾,云林县,土库镇', '120.392572', '23.677822', 'Tuku', '土库', '0');
INSERT INTO `sys_area` VALUES ('712925', '712925', '北港镇', '712900', '区', '', '05', '651', '中国,台湾,云林县,北港镇', '120.302393', '23.575525', 'Beigang', '北港', '0');
INSERT INTO `sys_area` VALUES ('712926', '712926', '古坑乡', '712900', '区', '', '05', '646', '中国,台湾,云林县,古坑乡', '120.562043', '23.642568', 'Gukeng', '古坑', '0');
INSERT INTO `sys_area` VALUES ('712927', '712927', '大埤乡', '712900', '区', '', '05', '631', '中国,台湾,云林县,大埤乡', '120.430516', '23.645908', 'Dapi', '大埤', '0');
INSERT INTO `sys_area` VALUES ('712928', '712928', '莿桐乡', '712900', '区', '', '05', '647', '中国,台湾,云林县,莿桐乡', '120.502374', '23.760784', 'Citong', '莿桐', '0');
INSERT INTO `sys_area` VALUES ('712929', '712929', '林内乡', '712900', '区', '', '05', '643', '中国,台湾,云林县,林内乡', '120.611365', '23.758712', 'Linna', '林内', '0');
INSERT INTO `sys_area` VALUES ('712930', '712930', '二仑乡', '712900', '区', '', '05', '649', '中国,台湾,云林县,二仑乡', '120.415077', '23.771273', 'Erlun', '二仑', '0');
INSERT INTO `sys_area` VALUES ('712931', '712931', '仑背乡', '712900', '区', '', '05', '637', '中国,台湾,云林县,仑背乡', '120.353895', '23.758840', 'Lunbei', '仑背', '0');
INSERT INTO `sys_area` VALUES ('712932', '712932', '麦寮乡', '712900', '区', '', '05', '638', '中国,台湾,云林县,麦寮乡', '120.252043', '23.753841', 'Mailiao', '麦寮', '0');
INSERT INTO `sys_area` VALUES ('712933', '712933', '东势乡', '712900', '区', '', '05', '635', '中国,台湾,云林县,东势乡', '120.252672', '23.674679', 'Dongshi', '东势', '0');
INSERT INTO `sys_area` VALUES ('712934', '712934', '褒忠乡', '712900', '区', '', '05', '634', '中国,台湾,云林县,褒忠乡', '120.310488', '23.694245', 'Baozhong', '褒忠', '0');
INSERT INTO `sys_area` VALUES ('712935', '712935', '台西乡', '712900', '区', '', '05', '636', '中国,台湾,云林县,台西乡', '120.196141', '23.702819', 'Taixi', '台西', '0');
INSERT INTO `sys_area` VALUES ('712936', '712936', '元长乡', '712900', '区', '', '05', '655', '中国,台湾,云林县,元长乡', '120.315124', '23.649458', 'Yuanchang', '元长', '0');
INSERT INTO `sys_area` VALUES ('712937', '712937', '四湖乡', '712900', '区', '', '05', '654', '中国,台湾,云林县,四湖乡', '120.225741', '23.637740', 'Sihu', '四湖', '0');
INSERT INTO `sys_area` VALUES ('712938', '712938', '口湖乡', '712900', '区', '', '05', '653', '中国,台湾,云林县,口湖乡', '120.185370', '23.582406', 'Kouhu', '口湖', '0');
INSERT INTO `sys_area` VALUES ('712939', '712939', '水林乡', '712900', '区', '', '05', '652', '中国,台湾,云林县,水林乡', '120.245948', '23.572634', 'Shuilin', '水林', '0');
INSERT INTO `sys_area` VALUES ('713000', '713000', '嘉义县', '710000', '市', '', '05', '6', '中国,台湾,嘉义县', '120.300000', '23.500000', 'Chiayi', '嘉义', '0');
INSERT INTO `sys_area` VALUES ('713001', '713001', '太保市', '713000', '区', '', '05', '612', '中国,台湾,嘉义县,太保市', '120.332876', '23.459647', 'Taibao', '太保', '0');
INSERT INTO `sys_area` VALUES ('713002', '713002', '朴子市', '713000', '区', '', '05', '613', '中国,台湾,嘉义县,朴子市', '120.247014', '23.464961', 'Puzi', '朴子', '0');
INSERT INTO `sys_area` VALUES ('713023', '713023', '布袋镇', '713000', '区', '', '05', '625', '中国,台湾,嘉义县,布袋镇', '120.166936', '23.377979', 'Budai', '布袋', '0');
INSERT INTO `sys_area` VALUES ('713024', '713024', '大林镇', '713000', '区', '', '05', '622', '中国,台湾,嘉义县,大林镇', '120.471336', '23.603815', 'Dalin', '大林', '0');
INSERT INTO `sys_area` VALUES ('713025', '713025', '民雄乡', '713000', '区', '', '05', '621', '中国,台湾,嘉义县,民雄乡', '120.428577', '23.551456', 'Minxiong', '民雄', '0');
INSERT INTO `sys_area` VALUES ('713026', '713026', '溪口乡', '713000', '区', '', '05', '623', '中国,台湾,嘉义县,溪口乡', '120.393822', '23.602223', 'Xikou', '溪口', '0');
INSERT INTO `sys_area` VALUES ('713027', '713027', '新港乡', '713000', '区', '', '05', '616', '中国,台湾,嘉义县,新港乡', '120.347647', '23.551806', 'Xingang', '新港', '0');
INSERT INTO `sys_area` VALUES ('713028', '713028', '六脚乡', '713000', '区', '', '05', '615', '中国,台湾,嘉义县,六脚乡', '120.291083', '23.493942', 'Liujiao', '六脚', '0');
INSERT INTO `sys_area` VALUES ('713029', '713029', '东石乡', '713000', '区', '', '05', '614', '中国,台湾,嘉义县,东石乡', '120.153822', '23.459235', 'Dongshi', '东石', '0');
INSERT INTO `sys_area` VALUES ('713030', '713030', '义竹乡', '713000', '区', '', '05', '624', '中国,台湾,嘉义县,义竹乡', '120.243423', '23.336277', 'Yizhu', '义竹', '0');
INSERT INTO `sys_area` VALUES ('713031', '713031', '鹿草乡', '713000', '区', '', '05', '611', '中国,台湾,嘉义县,鹿草乡', '120.308370', '23.410784', 'Lucao', '鹿草', '0');
INSERT INTO `sys_area` VALUES ('713032', '713032', '水上乡', '713000', '区', '', '05', '608', '中国,台湾,嘉义县,水上乡', '120.397936', '23.428104', 'Shuishang', '水上', '0');
INSERT INTO `sys_area` VALUES ('713033', '713033', '中埔乡', '713000', '区', '', '05', '606', '中国,台湾,嘉义县,中埔乡', '120.522948', '23.425148', 'Zhongpu', '中埔', '0');
INSERT INTO `sys_area` VALUES ('713034', '713034', '竹崎乡', '713000', '区', '', '05', '604', '中国,台湾,嘉义县,竹崎乡', '120.551466', '23.523184', 'Zhuqi', '竹崎', '0');
INSERT INTO `sys_area` VALUES ('713035', '713035', '梅山乡', '713000', '区', '', '05', '603', '中国,台湾,嘉义县,梅山乡', '120.557192', '23.584915', 'Meishan', '梅山', '0');
INSERT INTO `sys_area` VALUES ('713036', '713036', '番路乡', '713000', '区', '', '05', '602', '中国,台湾,嘉义县,番路乡', '120.555043', '23.465222', 'Fanlu', '番路', '0');
INSERT INTO `sys_area` VALUES ('713037', '713037', '大埔乡', '713000', '区', '', '05', '607', '中国,台湾,嘉义县,大埔乡', '120.593795', '23.296715', 'Dapu', '大埔', '0');
INSERT INTO `sys_area` VALUES ('713038', '713038', '阿里山乡', '713000', '区', '', '05', '605', '中国,台湾,嘉义县,阿里山乡', '120.732520', '23.467950', 'Alishan', '阿里山', '0');
INSERT INTO `sys_area` VALUES ('713300', '713300', '屏东县', '710000', '市', '', '08', '9', '中国,台湾,屏东县', '120.487928', '22.682802', 'Pingtung', '屏东', '0');
INSERT INTO `sys_area` VALUES ('713301', '713301', '屏东市', '713300', '区', '', '08', '900', '中国,台湾,屏东县,屏东市', '120.488465', '22.669723', 'Pingdong', '屏东', '0');
INSERT INTO `sys_area` VALUES ('713321', '713321', '潮州镇', '713300', '区', '', '08', '920', '中国,台湾,屏东县,潮州镇', '120.542854', '22.550536', 'Chaozhou', '潮州', '0');
INSERT INTO `sys_area` VALUES ('713322', '713322', '东港镇', '713300', '区', '', '08', '928', '中国,台湾,屏东县,东港镇', '120.454489', '22.466626', 'Donggang', '东港', '0');
INSERT INTO `sys_area` VALUES ('713323', '713323', '恒春镇', '713300', '区', '', '08', '946', '中国,台湾,屏东县,恒春镇', '120.745451', '22.002373', 'Hengchun', '恒春', '0');
INSERT INTO `sys_area` VALUES ('713324', '713324', '万丹乡', '713300', '区', '', '08', '913', '中国,台湾,屏东县,万丹乡', '120.484533', '22.589839', 'Wandan', '万丹', '0');
INSERT INTO `sys_area` VALUES ('713325', '713325', '长治乡', '713300', '区', '', '08', '908', '中国,台湾,屏东县,长治乡', '120.527614', '22.677062', 'Changzhi', '长治', '0');
INSERT INTO `sys_area` VALUES ('713326', '713326', '麟洛乡', '713300', '区', '', '08', '909', '中国,台湾,屏东县,麟洛乡', '120.527283', '22.650604', 'Linluo', '麟洛', '0');
INSERT INTO `sys_area` VALUES ('713327', '713327', '九如乡', '713300', '区', '', '08', '904', '中国,台湾,屏东县,九如乡', '120.490142', '22.739778', 'Jiuru', '九如', '0');
INSERT INTO `sys_area` VALUES ('713328', '713328', '里港乡', '713300', '区', '', '08', '905', '中国,台湾,屏东县,里港乡', '120.494490', '22.779220', 'Ligang', '里港', '0');
INSERT INTO `sys_area` VALUES ('713329', '713329', '盐埔乡', '713300', '区', '', '08', '907', '中国,台湾,屏东县,盐埔乡', '120.572849', '22.754783', 'Yanpu', '盐埔', '0');
INSERT INTO `sys_area` VALUES ('713330', '713330', '高树乡', '713300', '区', '', '08', '906', '中国,台湾,屏东县,高树乡', '120.600214', '22.826789', 'Gaoshu', '高树', '0');
INSERT INTO `sys_area` VALUES ('713331', '713331', '万峦乡', '713300', '区', '', '08', '923', '中国,台湾,屏东县,万峦乡', '120.566477', '22.571965', 'Wanluan', '万峦', '0');
INSERT INTO `sys_area` VALUES ('713332', '713332', '内埔乡', '713300', '区', '', '08', '912', '中国,台湾,屏东县,内埔乡', '120.566865', '22.611967', 'Napu', '内埔', '0');
INSERT INTO `sys_area` VALUES ('713333', '713333', '竹田乡', '713300', '区', '', '08', '911', '中国,台湾,屏东县,竹田乡', '120.544038', '22.584678', 'Zhutian', '竹田', '0');
INSERT INTO `sys_area` VALUES ('713334', '713334', '新埤乡', '713300', '区', '', '08', '925', '中国,台湾,屏东县,新埤乡', '120.549546', '22.469976', 'Xinpi', '新埤', '0');
INSERT INTO `sys_area` VALUES ('713335', '713335', '枋寮乡', '713300', '区', '', '08', '940', '中国,台湾,屏东县,枋寮乡', '120.593438', '22.365560', 'Fangliao', '枋寮', '0');
INSERT INTO `sys_area` VALUES ('713336', '713336', '新园乡', '713300', '区', '', '08', '932', '中国,台湾,屏东县,新园乡', '120.461739', '22.543952', 'Xinyuan', '新园', '0');
INSERT INTO `sys_area` VALUES ('713337', '713337', '崁顶乡', '713300', '区', '', '08', '924', '中国,台湾,屏东县,崁顶乡', '120.514571', '22.514795', 'Kanding', '崁顶', '0');
INSERT INTO `sys_area` VALUES ('713338', '713338', '林边乡', '713300', '区', '', '08', '927', '中国,台湾,屏东县,林边乡', '120.515091', '22.434015', 'Linbian', '林边', '0');
INSERT INTO `sys_area` VALUES ('713339', '713339', '南州乡', '713300', '区', '', '08', '926', '中国,台湾,屏东县,南州乡', '120.509808', '22.490192', 'Nanzhou', '南州', '0');
INSERT INTO `sys_area` VALUES ('713340', '713340', '佳冬乡', '713300', '区', '', '08', '931', '中国,台湾,屏东县,佳冬乡', '120.551544', '22.417653', 'Jiadong', '佳冬', '0');
INSERT INTO `sys_area` VALUES ('713341', '713341', '琉球乡', '713300', '区', '', '08', '929', '中国,台湾,屏东县,琉球乡', '120.369020', '22.342366', 'Liuqiu', '琉球', '0');
INSERT INTO `sys_area` VALUES ('713342', '713342', '车城乡', '713300', '区', '', '08', '944', '中国,台湾,屏东县,车城乡', '120.710979', '22.072077', 'Checheng', '车城', '0');
INSERT INTO `sys_area` VALUES ('713343', '713343', '满州乡', '713300', '区', '', '08', '947', '中国,台湾,屏东县,满州乡', '120.838843', '22.020853', 'Manzhou', '满州', '0');
INSERT INTO `sys_area` VALUES ('713344', '713344', '枋山乡', '713300', '区', '', '08', '941', '中国,台湾,屏东县,枋山乡', '120.656356', '22.260338', 'Fangshan', '枋山', '0');
INSERT INTO `sys_area` VALUES ('713345', '713345', '三地门乡', '713300', '区', '', '08', '901', '中国,台湾,屏东县,三地门乡', '120.654486', '22.713877', 'Sandimen', '三地门', '0');
INSERT INTO `sys_area` VALUES ('713346', '713346', '雾台乡', '713300', '区', '', '08', '902', '中国,台湾,屏东县,雾台乡', '120.732318', '22.744877', 'Wutai', '雾台', '0');
INSERT INTO `sys_area` VALUES ('713347', '713347', '玛家乡', '713300', '区', '', '08', '903', '中国,台湾,屏东县,玛家乡', '120.644130', '22.706718', 'Majia', '玛家', '0');
INSERT INTO `sys_area` VALUES ('713348', '713348', '泰武乡', '713300', '区', '', '08', '921', '中国,台湾,屏东县,泰武乡', '120.632856', '22.591819', 'Taiwu', '泰武', '0');
INSERT INTO `sys_area` VALUES ('713349', '713349', '来义乡', '713300', '区', '', '08', '922', '中国,台湾,屏东县,来义乡', '120.633601', '22.525866', 'Laiyi', '来义', '0');
INSERT INTO `sys_area` VALUES ('713350', '713350', '春日乡', '713300', '区', '', '08', '942', '中国,台湾,屏东县,春日乡', '120.628793', '22.370672', 'Chunri', '春日', '0');
INSERT INTO `sys_area` VALUES ('713351', '713351', '狮子乡', '713300', '区', '', '08', '943', '中国,台湾,屏东县,狮子乡', '120.704617', '22.201917', 'Shizi', '狮子', '0');
INSERT INTO `sys_area` VALUES ('713352', '713352', '牡丹乡', '713300', '区', '', '08', '945', '中国,台湾,屏东县,牡丹乡', '120.770108', '22.125687', 'Mudan', '牡丹', '0');
INSERT INTO `sys_area` VALUES ('713400', '713400', '台东县', '710000', '市', '', '089', '9', '中国,台湾,台东县', '120.916000', '23.000000', 'Taitung', '台东', '0');
INSERT INTO `sys_area` VALUES ('713401', '713401', '台东市', '713400', '区', '', '089', '950', '中国,台湾,台东县,台东市', '121.145654', '22.756045', 'Taidong', '台东', '0');
INSERT INTO `sys_area` VALUES ('713421', '713421', '成功镇', '713400', '区', '', '089', '961', '中国,台湾,台东县,成功镇', '121.379571', '23.100223', 'Chenggong', '成功', '0');
INSERT INTO `sys_area` VALUES ('713422', '713422', '关山镇', '713400', '区', '', '089', '956', '中国,台湾,台东县,关山镇', '121.163134', '23.047450', 'Guanshan', '关山', '0');
INSERT INTO `sys_area` VALUES ('713423', '713423', '卑南乡', '713400', '区', '', '089', '954', '中国,台湾,台东县,卑南乡', '121.083503', '22.786039', 'Beinan', '卑南', '0');
INSERT INTO `sys_area` VALUES ('713424', '713424', '鹿野乡', '713400', '区', '', '089', '955', '中国,台湾,台东县,鹿野乡', '121.135982', '22.913951', 'Luye', '鹿野', '0');
INSERT INTO `sys_area` VALUES ('713425', '713425', '池上乡', '713400', '区', '', '089', '958', '中国,台湾,台东县,池上乡', '121.215139', '23.122393', 'Chishang', '池上', '0');
INSERT INTO `sys_area` VALUES ('713426', '713426', '东河乡', '713400', '区', '', '089', '959', '中国,台湾,台东县,东河乡', '121.300334', '22.969934', 'Donghe', '东河', '0');
INSERT INTO `sys_area` VALUES ('713427', '713427', '长滨乡', '713400', '区', '', '089', '962', '中国,台湾,台东县,长滨乡', '121.451522', '23.315041', 'Changbin', '长滨', '0');
INSERT INTO `sys_area` VALUES ('713428', '713428', '太麻里乡', '713400', '区', '', '089', '963', '中国,台湾,台东县,太麻里乡', '121.007394', '22.615383', 'Taimali', '太麻里', '0');
INSERT INTO `sys_area` VALUES ('713429', '713429', '大武乡', '713400', '区', '', '089', '965', '中国,台湾,台东县,大武乡', '120.889938', '22.339919', 'Dawu', '大武', '0');
INSERT INTO `sys_area` VALUES ('713430', '713430', '绿岛乡', '713400', '区', '', '089', '951', '中国,台湾,台东县,绿岛乡', '121.492596', '22.661676', 'Lvdao', '绿岛', '0');
INSERT INTO `sys_area` VALUES ('713431', '713431', '海端乡', '713400', '区', '', '089', '957', '中国,台湾,台东县,海端乡', '121.172008', '23.101074', 'Haiduan', '海端', '0');
INSERT INTO `sys_area` VALUES ('713432', '713432', '延平乡', '713400', '区', '', '089', '953', '中国,台湾,台东县,延平乡', '121.084499', '22.902358', 'Yanping', '延平', '0');
INSERT INTO `sys_area` VALUES ('713433', '713433', '金峰乡', '713400', '区', '', '089', '964', '中国,台湾,台东县,金峰乡', '120.971292', '22.595511', 'Jinfeng', '金峰', '0');
INSERT INTO `sys_area` VALUES ('713434', '713434', '达仁乡', '713400', '区', '', '089', '966', '中国,台湾,台东县,达仁乡', '120.884131', '22.294869', 'Daren', '达仁', '0');
INSERT INTO `sys_area` VALUES ('713435', '713435', '兰屿乡', '713400', '区', '', '089', '952', '中国,台湾,台东县,兰屿乡', '121.532473', '22.056736', 'Lanyu', '兰屿', '0');
INSERT INTO `sys_area` VALUES ('713500', '713500', '花莲县', '710000', '市', '', '03', '9', '中国,台湾,花莲县', '121.300000', '23.830000', 'Hualien', '花莲', '0');
INSERT INTO `sys_area` VALUES ('713501', '713501', '花莲市', '713500', '区', '', '03', '970', '中国,台湾,花莲县,花莲市', '121.606810', '23.982074', 'Hualian', '花莲', '0');
INSERT INTO `sys_area` VALUES ('713521', '713521', '凤林镇', '713500', '区', '', '03', '975', '中国,台湾,花莲县,凤林镇', '121.451687', '23.744648', 'Fenglin', '凤林', '0');
INSERT INTO `sys_area` VALUES ('713522', '713522', '玉里镇', '713500', '区', '', '03', '981', '中国,台湾,花莲县,玉里镇', '121.316445', '23.336509', 'Yuli', '玉里', '0');
INSERT INTO `sys_area` VALUES ('713523', '713523', '新城乡', '713500', '区', '', '03', '971', '中国,台湾,花莲县,新城乡', '121.640512', '24.128133', 'Xincheng', '新城', '0');
INSERT INTO `sys_area` VALUES ('713524', '713524', '吉安乡', '713500', '区', '', '03', '973', '中国,台湾,花莲县,吉安乡', '121.568005', '23.961635', 'Ji\'an', '吉安', '0');
INSERT INTO `sys_area` VALUES ('713525', '713525', '寿丰乡', '713500', '区', '', '03', '974', '中国,台湾,花莲县,寿丰乡', '121.508955', '23.870680', 'Shoufeng', '寿丰', '0');
INSERT INTO `sys_area` VALUES ('713526', '713526', '光复乡', '713500', '区', '', '03', '976', '中国,台湾,花莲县,光复乡', '121.423496', '23.669084', 'Guangfu', '光复', '0');
INSERT INTO `sys_area` VALUES ('713527', '713527', '丰滨乡', '713500', '区', '', '03', '977', '中国,台湾,花莲县,丰滨乡', '121.518639', '23.597080', 'Fengbin', '丰滨', '0');
INSERT INTO `sys_area` VALUES ('713528', '713528', '瑞穗乡', '713500', '区', '', '03', '978', '中国,台湾,花莲县,瑞穗乡', '121.375992', '23.496817', 'Ruisui', '瑞穗', '0');
INSERT INTO `sys_area` VALUES ('713529', '713529', '富里乡', '713500', '区', '', '03', '983', '中国,台湾,花莲县,富里乡', '121.250124', '23.179984', 'Fuli', '富里', '0');
INSERT INTO `sys_area` VALUES ('713530', '713530', '秀林乡', '713500', '区', '', '03', '972', '中国,台湾,花莲县,秀林乡', '121.620381', '24.116642', 'Xiulin', '秀林', '0');
INSERT INTO `sys_area` VALUES ('713531', '713531', '万荣乡', '713500', '区', '', '03', '979', '中国,台湾,花莲县,万荣乡', '121.407493', '23.715346', 'Wanrong', '万荣', '0');
INSERT INTO `sys_area` VALUES ('713532', '713532', '卓溪乡', '713500', '区', '', '03', '982', '中国,台湾,花莲县,卓溪乡', '121.303422', '23.346369', 'Zhuoxi', '卓溪', '0');
INSERT INTO `sys_area` VALUES ('713600', '713600', '澎湖县', '710000', '市', '', '06', '8', '中国,台湾,澎湖县', '119.566417', '23.569733', 'Penghu', '澎湖', '0');
INSERT INTO `sys_area` VALUES ('713601', '713601', '马公市', '713600', '区', '', '06', '880', '中国,台湾,澎湖县,马公市', '119.566499', '23.565845', 'Magong', '马公', '0');
INSERT INTO `sys_area` VALUES ('713621', '713621', '湖西乡', '713600', '区', '', '06', '885', '中国,台湾,澎湖县,湖西乡', '119.659666', '23.583358', 'Huxi', '湖西', '0');
INSERT INTO `sys_area` VALUES ('713622', '713622', '白沙乡', '713600', '区', '', '06', '884', '中国,台湾,澎湖县,白沙乡', '119.597919', '23.666060', 'Baisha', '白沙', '0');
INSERT INTO `sys_area` VALUES ('713623', '713623', '西屿乡', '713600', '区', '', '06', '881', '中国,台湾,澎湖县,西屿乡', '119.506974', '23.600836', 'Xiyu', '西屿', '0');
INSERT INTO `sys_area` VALUES ('713624', '713624', '望安乡', '713600', '区', '', '06', '882', '中国,台湾,澎湖县,望安乡', '119.500538', '23.357531', 'Wang\'an', '望安', '0');
INSERT INTO `sys_area` VALUES ('713625', '713625', '七美乡', '713600', '区', '', '06', '883', '中国,台湾,澎湖县,七美乡', '119.423929', '23.206018', 'Qimei', '七美', '0');
INSERT INTO `sys_area` VALUES ('713700', '713700', '金门县', '710000', '市', '', '082', '8', '中国,台湾,金门县', '118.317089', '24.432706', 'Jinmen', '金门', '0');
INSERT INTO `sys_area` VALUES ('713701', '713701', '金城镇', '713700', '区', '', '082', '893', '中国,台湾,金门县,金城镇', '118.316667', '24.416667', 'Jincheng', '金城', '0');
INSERT INTO `sys_area` VALUES ('713702', '713702', '金湖镇', '713700', '区', '', '082', '891', '中国,台湾,金门县,金湖镇', '118.419743', '24.438633', 'Jinhu', '金湖', '0');
INSERT INTO `sys_area` VALUES ('713703', '713703', '金沙镇', '713700', '区', '', '082', '890', '中国,台湾,金门县,金沙镇', '118.427993', '24.481109', 'Jinsha', '金沙', '0');
INSERT INTO `sys_area` VALUES ('713704', '713704', '金宁乡', '713700', '区', '', '082', '892', '中国,台湾,金门县,金宁乡', '118.334506', '24.456720', 'Jinning', '金宁', '0');
INSERT INTO `sys_area` VALUES ('713705', '713705', '烈屿乡', '713700', '区', '', '082', '894', '中国,台湾,金门县,烈屿乡', '118.247255', '24.433102', 'Lieyu', '烈屿', '0');
INSERT INTO `sys_area` VALUES ('713706', '713706', '乌丘乡', '713700', '区', '', '082', '896', '中国,台湾,金门县,乌丘乡', '118.319578', '24.435038', 'Wuqiu', '乌丘', '0');
INSERT INTO `sys_area` VALUES ('713800', '713800', '连江县', '710000', '市', '', '0836', '2', '中国,台湾,连江县', '119.539704', '26.197364', 'Lienchiang', '连江', '0');
INSERT INTO `sys_area` VALUES ('713801', '713801', '南竿乡', '713800', '区', '', '0836', '209', '中国,台湾,连江县,南竿乡', '119.944267', '26.144035', 'Nangan', '南竿', '0');
INSERT INTO `sys_area` VALUES ('713802', '713802', '北竿乡', '713800', '区', '', '0836', '210', '中国,台湾,连江县,北竿乡', '120.000572', '26.221983', 'Beigan', '北竿', '0');
INSERT INTO `sys_area` VALUES ('713803', '713803', '莒光乡', '713800', '区', '', '0836', '211', '中国,台湾,连江县,莒光乡', '119.940405', '25.976256', 'Juguang', '莒光', '0');
INSERT INTO `sys_area` VALUES ('713804', '713804', '东引乡', '713800', '区', '', '0836', '212', '中国,台湾,连江县,东引乡', '120.493955', '26.366164', 'Dongyin', '东引', '0');
INSERT INTO `sys_area` VALUES ('810000', '810000', '香港特别行政区', '100000', '省', '', '', '', '中国,香港特别行政区', '114.173355', '22.320048', 'Hong Kong', '香港', '0');
INSERT INTO `sys_area` VALUES ('810100', '810100', '香港岛', '810000', '市', '', '00852', '999077', '中国,香港特别行政区,香港岛', '114.177314', '22.266416', 'Hong Kong Island', '香港岛', '0');
INSERT INTO `sys_area` VALUES ('810101', '810101', '中西区', '810100', '区', '', '00852', '999077', '中国,香港特别行政区,香港岛,中西区', '114.154374', '22.281981', 'Central and Western District', '中西区', '0');
INSERT INTO `sys_area` VALUES ('810102', '810102', '湾仔区', '810100', '区', '', '00852', '999077', '中国,香港特别行政区,香港岛,湾仔区', '114.182915', '22.276389', 'Wan Chai District', '湾仔区', '0');
INSERT INTO `sys_area` VALUES ('810103', '810103', '东区', '810100', '区', '', '00852', '999077', '中国,香港特别行政区,香港岛,东区', '114.255993', '22.262755', 'Eastern District', '东区', '0');
INSERT INTO `sys_area` VALUES ('810104', '810104', '南区', '810100', '区', '', '00852', '999077', '中国,香港特别行政区,香港岛,南区', '114.174134', '22.246760', 'Southern District', '南区', '0');
INSERT INTO `sys_area` VALUES ('810200', '810200', '九龙', '810000', '市', '', '00852', '999077', '中国,香港特别行政区,九龙', '114.174950', '22.327115', 'Kowloon', '九龙', '0');
INSERT INTO `sys_area` VALUES ('810201', '810201', '油尖旺区', '810200', '区', '', '00852', '999077', '中国,香港特别行政区,九龙,油尖旺区', '114.173332', '22.311704', 'Yau Tsim Mong', '油尖旺', '0');
INSERT INTO `sys_area` VALUES ('810202', '810202', '深水埗区', '810200', '区', '', '00852', '999077', '中国,香港特别行政区,九龙,深水埗区', '114.167210', '22.328171', 'Sham Shui Po', '深水埗', '0');
INSERT INTO `sys_area` VALUES ('810203', '810203', '九龙城区', '810200', '区', '', '00852', '999077', '中国,香港特别行政区,九龙,九龙城区', '114.195053', '22.326730', 'Jiulongcheng', '九龙城', '0');
INSERT INTO `sys_area` VALUES ('810204', '810204', '黄大仙区', '810200', '区', '', '00852', '999077', '中国,香港特别行政区,九龙,黄大仙区', '114.199240', '22.336313', 'Wong Tai Sin', '黄大仙', '0');
INSERT INTO `sys_area` VALUES ('810205', '810205', '观塘区', '810200', '区', '', '00852', '999077', '中国,香港特别行政区,九龙,观塘区', '114.231268', '22.309430', 'Kwun Tong', '观塘', '0');
INSERT INTO `sys_area` VALUES ('810300', '810300', '新界', '810000', '市', '', '00852', '999077', '中国,香港特别行政区,新界', '114.202408', '22.341766', 'New Territories', '新界', '0');
INSERT INTO `sys_area` VALUES ('810301', '810301', '荃湾区', '810300', '区', '', '00852', '999077', '中国,香港特别行政区,新界,荃湾区', '114.122952', '22.370973', 'Tsuen Wan', '荃湾', '0');
INSERT INTO `sys_area` VALUES ('810302', '810302', '屯门区', '810300', '区', '', '00852', '999077', '中国,香港特别行政区,新界,屯门区', '113.977416', '22.391047', 'Tuen Mun', '屯门', '0');
INSERT INTO `sys_area` VALUES ('810303', '810303', '元朗区', '810300', '区', '', '00852', '999077', '中国,香港特别行政区,新界,元朗区', '114.039796', '22.443342', 'Yuen Long', '元朗', '0');
INSERT INTO `sys_area` VALUES ('810304', '810304', '北区', '810300', '区', '', '00852', '999077', '中国,香港特别行政区,新界,北区', '114.148959', '22.494086', 'North District', '北区', '0');
INSERT INTO `sys_area` VALUES ('810305', '810305', '大埔区', '810300', '区', '', '00852', '999077', '中国,香港特别行政区,新界,大埔区', '114.171743', '22.445653', 'Tai Po', '大埔', '0');
INSERT INTO `sys_area` VALUES ('810306', '810306', '西贡区', '810300', '区', '', '00852', '999077', '中国,香港特别行政区,新界,西贡区', '114.278540', '22.379440', 'Sai Kung', '西贡', '0');
INSERT INTO `sys_area` VALUES ('810307', '810307', '沙田区', '810300', '区', '', '00852', '999077', '中国,香港特别行政区,新界,沙田区', '114.191941', '22.379294', 'Sha Tin', '沙田', '0');
INSERT INTO `sys_area` VALUES ('810308', '810308', '葵青区', '810300', '区', '', '00852', '999077', '中国,香港特别行政区,新界,葵青区', '114.139320', '22.363877', 'Kwai Tsing', '葵青', '0');
INSERT INTO `sys_area` VALUES ('810309', '810309', '离岛区', '810300', '区', '', '00852', '999077', '中国,香港特别行政区,新界,离岛区', '113.945842', '22.281508', 'Outlying Islands', '离岛', '0');
INSERT INTO `sys_area` VALUES ('820000', '820000', '澳门特别行政区', '100000', '省', '', '', '', '中国,澳门特别行政区', '113.549090', '22.198951', 'Macau', '澳门', '0');
INSERT INTO `sys_area` VALUES ('820100', '820100', '澳门半岛', '820000', '市', '', '00853', '999078', '中国,澳门特别行政区,澳门半岛', '113.549134', '22.198751', 'MacauPeninsula', '澳门半岛', '0');
INSERT INTO `sys_area` VALUES ('820101', '820101', '花地玛堂区', '820100', '区', '', '00853', '999078', '中国,澳门特别行政区,澳门半岛,花地玛堂区', '113.552284', '22.208067', 'Nossa Senhora de Fatima', '花地玛堂区', '0');
INSERT INTO `sys_area` VALUES ('820102', '820102', '圣安多尼堂区', '820100', '区', '', '00853', '999078', '中国,澳门特别行政区,澳门半岛,圣安多尼堂区', '113.564301', '22.123810', 'Santo Antonio', '圣安多尼堂区', '0');
INSERT INTO `sys_area` VALUES ('820103', '820103', '大堂区', '820100', '区', '', '00853', '999078', '中国,澳门特别行政区,澳门半岛,大堂区', '113.552971', '22.188359', 'Sé', '大堂', '0');
INSERT INTO `sys_area` VALUES ('820104', '820104', '望德堂区', '820100', '区', '', '00853', '999078', '中国,澳门特别行政区,澳门半岛,望德堂区', '113.550568', '22.194081', 'Sao Lazaro', '望德堂区', '0');
INSERT INTO `sys_area` VALUES ('820105', '820105', '风顺堂区', '820100', '区', '', '00853', '999078', '中国,澳门特别行政区,澳门半岛,风顺堂区', '113.541928', '22.187368', 'Sao Lourenco', '风顺堂区', '0');
INSERT INTO `sys_area` VALUES ('820200', '820200', '氹仔岛', '820000', '市', '', '00853', '999078', '中国,澳门特别行政区,氹仔岛', '113.577669', '22.156838', 'Taipa', '氹仔岛', '0');
INSERT INTO `sys_area` VALUES ('820201', '820201', '嘉模堂区', '820200', '区', '', '00853', '999078', '中国,澳门特别行政区,氹仔岛,嘉模堂区', '113.565303', '22.149029', 'Our Lady Of Carmel\'s Parish', '嘉模堂区', '0');
INSERT INTO `sys_area` VALUES ('820300', '820300', '路环岛', '820000', '市', '', '00853', '999078', '中国,澳门特别行政区,路环岛', '113.564857', '22.116226', 'Coloane', '路环岛', '0');
INSERT INTO `sys_area` VALUES ('820301', '820301', '圣方济各堂区', '820300', '区', '', '00853', '999078', '中国,澳门特别行政区,路环岛,圣方济各堂区', '113.559954', '22.123486', 'St Francis Xavier\'s Parish', '圣方济各堂区', '0');
INSERT INTO `sys_area` VALUES ('900000', '900000', '钓鱼岛', '100000', '省', '', '', '', '中国,钓鱼岛', '123.478088', '25.742385', 'DiaoyuDao', '钓鱼岛', '0');

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` int(11) NOT NULL auto_increment,
  `keyid` varchar(64) default NULL COMMENT '键ID',
  `keyname` varchar(255) default NULL COMMENT '名称',
  `keyvalue` varchar(255) default NULL COMMENT '键值',
  `memo` varchar(255) default NULL COMMENT '备注',
  `deleted` int(1) default NULL COMMENT '删除标识',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_config
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(100) NOT NULL COMMENT '名称',
  `label` varchar(100) default NULL COMMENT '标签名',
  `type` varchar(100) default NULL COMMENT '类型',
  `description` varchar(255) default NULL COMMENT '描述',
  `sort` int(11) default NULL COMMENT '排序',
  `parentid` int(11) default NULL COMMENT '父级ID',
  `createuser` int(11) default NULL COMMENT '创建者',
  `createtime` datetime default NULL COMMENT '创建时间',
  `updateuser` int(11) default NULL COMMENT '更新者',
  `updatetime` datetime default NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `deleted` int(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '1', '男', 'SEX', '性别', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('2', '2', '女', 'SEX', '性别', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('30', '1', '是', 'YesOrNo', '是否', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('31', '0', '否', 'YesOrNo', '是否', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('32', '1', '买家中心', 'HelpCenter', '帮助菜单所属类型', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('33', '2', '卖家中心', 'HelpCenter', '帮助菜单所属类型', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('34', '-1', '顶级菜单父id', 'TopMenuPid', '顶级类目菜单父id', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('35', '1', '显示', 'ShowOrHidden', '隐藏或显示', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('36', '0', '隐藏', 'ShowOrHidden', '隐藏或显示', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('37', '1', '收获地址', 'LabelType', '标签类型', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('38', '2', '好评内容', 'LabelType', '标签类型', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '淘宝店铺', 'ShopType', '店铺类型', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('40', '1', '买家信用', 'LevelType', '信用等级类型', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('41', '1', '收入', 'TraceType', '交易类型', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('42', '2', '支出', 'TraceType', '交易类型', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('43', '1', '正常到账(24小时)', 'WithdrawlsType', '提现类型', null, null, null, null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('44', '2', '快速到账(2小时)', 'WithdrawlsType', '提现类型', null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL auto_increment,
  `type` int(1) default NULL COMMENT '日志类型',
  `title` varchar(255) default NULL COMMENT '日志标题',
  `createuser` int(11) default NULL COMMENT '创建人',
  `createtime` datetime default NULL COMMENT '创建时间',
  `remoteip` varchar(32) default NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) default NULL COMMENT '用户代理',
  `requesturi` varchar(255) default NULL COMMENT '请求uri',
  `method` varchar(255) default NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL auto_increment COMMENT '编号',
  `parentid` int(11) NOT NULL COMMENT '父级编号',
  `parentids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` int(11) NOT NULL COMMENT '排序',
  `href` varchar(2000) default NULL COMMENT '链接',
  `target` varchar(20) default NULL COMMENT '目标',
  `icon` varchar(100) default NULL COMMENT '图标',
  `isshow` int(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) default NULL COMMENT '权限标识',
  `createuser` int(11) default NULL COMMENT '创建者',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updateuser` int(11) default NULL COMMENT '更新者',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `deleted` int(1) NOT NULL default '0' COMMENT '删除标记',
  `type` int(1) default '0' COMMENT '菜单类型(0:菜单1:按钮)',
  `belong` int(1) default '0' COMMENT '菜单所属(0:后台1:前台)',
  PRIMARY KEY  (`id`),
  KEY `sys_menu_parent_id` USING BTREE (`parentid`),
  KEY `sys_menu_del_flag` USING BTREE (`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '-1', '-1', '所有菜单', '-10', null, 'admin', null, '0', null, '0', '2016-06-02 11:59:13', '0', '2016-06-02 11:59:16', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('7', '1', '-1,1', '系统设置', '10', '', 'admin', null, '1', null, null, '2016-06-06 15:47:43', null, '2016-06-06 15:47:47', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '-1,1,7', '菜单管理', '10', 'admin/sys/menu/menuManageFrame.htm', 'admin', null, '1', null, null, '2016-06-06 15:49:17', null, '2016-06-06 15:49:20', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '-1,1,7', '角色管理', '20', 'admin/sys/role/roleList.htm', 'admin', null, '1', null, null, '2016-06-06 15:50:22', null, '2016-06-06 15:50:24', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('10', '1', '-1,1', '用户管理', '70', '', 'admin', null, '1', '', null, '2016-06-06 17:01:14', null, '2016-06-06 17:01:14', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '-1,1,10', '会员中心', '1', 'admin/user/member/list.htm', 'admin', null, '1', '', null, '2016-06-06 17:02:27', null, '2016-06-06 17:02:27', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('26', '1', '-1,1', '基础数据', '160', '', 'admin', null, '1', '', null, '2016-06-06 19:33:08', null, '2016-06-06 19:33:08', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('53', '7', '-1,7,1', '数据字典', '50', 'admin/sys/dict/list.htm', 'admin', null, '1', '', '3', '2016-06-12 15:57:10', '3', '2016-06-12 15:57:10', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('54', '7', '-1,7,1', '地域管理', '80', 'admin/sys/area/list.htm', 'admin', null, '1', '', '3', '2016-06-13 11:42:47', '3', '2016-06-13 11:42:47', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('67', '1', '-1,1', '用户管理', '370', '', null, null, '1', '', '3', '2016-06-17 09:42:54', '3', '2016-06-17 09:42:54', null, '0', '0', '1');
INSERT INTO `sys_menu` VALUES ('73', '26', '-1,126,', '帮助菜单', '1', 'admin/helpcenter/menu/menuManageFrame.htm', 'admin', null, '1', '', '3', '2016-06-26 20:39:09', '3', '2016-07-05 20:39:57', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('74', '26', '-1,126,', '商品类目管理', '31', 'admin/goods/type/typeList.htm', 'admin', null, '1', '', '3', '2016-06-27 21:10:43', '3', '2016-07-05 20:39:47', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('75', '1', '-11,', '商家管理', '400', '', 'admin', null, '1', '', '3', '2016-06-27 23:07:15', '3', '2016-06-27 23:07:15', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('76', '75', '-11,75,', '店铺管理', '1', 'admin/seller/shop/shopList.htm', 'admin', null, '1', '', '3', '2016-06-27 23:07:34', '3', '2016-07-05 20:39:33', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('77', '75', '-11,75,', '收获地址管理', '31', 'admin/seller/receiptaddress/receiptaddressList.htm', 'admin', null, '1', '', '3', '2016-06-27 23:08:06', '3', '2016-07-05 22:10:13', null, '1', '0', '0');
INSERT INTO `sys_menu` VALUES ('78', '75', '-11,75,', '标签管理', '61', 'admin/seller/label/labelList.htm', 'admin', null, '1', '', '3', '2016-06-27 23:08:23', '3', '2016-07-05 20:39:23', null, '1', '0', '0');
INSERT INTO `sys_menu` VALUES ('79', '75', '-11,75,', ' 好评内容管理', '91', 'admin/seller/praise/praiseList.htm', 'admin', null, '1', '', '3', '2016-06-27 23:08:36', '3', '2016-07-16 09:39:12', null, '1', '0', '1');
INSERT INTO `sys_menu` VALUES ('80', '26', '-1,126,', '帮助文档', '1', 'admin/helpcenter/document/documentList.htm', 'admin', null, '1', '', '3', '2016-06-28 21:02:52', '3', '2016-07-05 20:39:07', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('81', '1', '-11,', '买家管理', '430', '', 'admin', null, '1', '', '3', '2016-07-06 22:54:32', '3', '2016-07-06 22:54:32', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('82', '26', '-1,126,', '淘宝等级管理', '61', 'admin/buyer/level/levelList.htm', 'admin', null, '1', '', '3', '2016-07-06 22:55:49', '3', '2016-07-06 22:55:49', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('83', '81', '-11,81,', '小号管理', '1', 'admin/buyer/account/accountList.htm', 'admin', null, '1', '', '3', '2016-07-06 22:56:53', '3', '2016-07-09 14:00:02', null, '1', '0', '0');
INSERT INTO `sys_menu` VALUES ('84', '81', '-11,81,', '刷手首页', '31', 'front/buyer/index.htm', null, null, '1', '', '3', '2016-07-09 18:00:24', '3', '2016-07-09 18:00:24', null, '0', '0', '1');
INSERT INTO `sys_menu` VALUES ('85', '1', '-1,1', '我的账户', '431', '', 'admin', null, '1', '', '3', '2016-07-16 09:41:22', '3', '2016-07-16 09:41:22', null, '0', '0', '1');
INSERT INTO `sys_menu` VALUES ('86', '85', '-1,1,85', '出错', '1', '才', 'admin', null, '1', '', '3', '2016-07-16 09:41:43', '3', '2016-07-16 09:41:43', null, '1', '0', '0');
INSERT INTO `sys_menu` VALUES ('87', '81', '-11,,81', '实名认证审核', '32', '', 'admin', null, '1', '', '3', '2016-08-11 17:42:14', '3', '2016-08-11 17:42:14', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('88', '1', '-1,1', '账户管理', '432', '', 'admin', null, '1', '', '3', '2016-08-11 17:42:56', '3', '2016-08-11 17:42:56', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('89', '88', '-1,1,88', '账户充值处理', '1', 'admin/trace/recharge/rechargeList.htm', 'admin', null, '1', '', '3', '2016-08-11 17:43:38', '3', '2016-08-18 08:55:27', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('90', '88', '-1,1,88', '账户提现处理', '2', 'admin/trace/withdrawls/withdrawlsList.htm', 'admin', null, '1', '', '3', '2016-08-11 17:43:55', '3', '2016-08-18 08:54:45', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('91', '1', '-1,1', '任务管理', '433', '', 'admin', null, '1', '', '3', '2016-08-12 21:57:32', '3', '2016-08-12 21:57:32', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('92', '91', '-1,1,91', '任务属性管理', '1', 'admin/task/properties/propertiesList.htm', 'admin', null, '1', '', '3', '2016-08-12 21:58:01', '3', '2016-08-12 22:41:14', null, '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('93', '91', '-1,1,91', '任务属性值管理', '2', 'admin/task/propertiesvalue/propertiesValueList.htm', 'admin', null, '1', '', '3', '2016-08-17 21:58:33', '3', '2016-08-17 21:58:33', null, '0', '0', '0');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL auto_increment,
  `content` varchar(255) default NULL COMMENT '消息内容',
  `type` int(1) default NULL COMMENT '消息类型',
  `status` int(1) default NULL COMMENT '状态',
  `userid` int(11) default NULL COMMENT '接收用户',
  `source` int(1) default NULL COMMENT '来源',
  `createtime` datetime default NULL COMMENT '消息发送时间',
  `title` varchar(64) default NULL COMMENT '消息标题',
  `img` varchar(255) default NULL COMMENT '消息封面',
  `url` varchar(255) default NULL COMMENT '消息跳转地址',
  `createUser` int(11) default NULL COMMENT '创建人',
  `memo` varchar(255) default NULL COMMENT '备注',
  `deleted` int(1) default NULL COMMENT '删除标识',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL auto_increment COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) default NULL COMMENT '英文名称',
  `datascope` char(1) default NULL COMMENT '数据范围',
  `issys` varchar(64) default NULL COMMENT '是否系统数据',
  `useable` int(1) default NULL COMMENT '是否可用',
  `createuser` int(11) default NULL COMMENT '创建者',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updateuser` int(11) default NULL COMMENT '更新者',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `deleted` int(1) NOT NULL default '0' COMMENT '删除标记',
  `companyid` int(11) default NULL COMMENT '公司ID',
  PRIMARY KEY  (`id`),
  KEY `sys_role_del_flag` USING BTREE (`deleted`),
  KEY `sys_role_enname` USING BTREE (`enname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '后台管理者', null, null, null, '1', null, '2016-06-06 15:43:31', null, '2016-06-06 15:43:33', null, '0', null);
INSERT INTO `sys_role` VALUES ('2', '刷手', null, null, null, '1', '3', '2016-07-16 09:42:47', '3', '2016-07-16 09:42:47', null, '0', null);
INSERT INTO `sys_role` VALUES ('3', '商家', null, null, null, '1', '3', '2016-07-16 09:43:08', '3', '2016-07-16 09:43:08', null, '0', null);

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `roleid` int(11) NOT NULL COMMENT '角色编号',
  `menuid` int(11) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY  (`roleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '26');
INSERT INTO `sys_role_menu` VALUES ('1', '53');
INSERT INTO `sys_role_menu` VALUES ('1', '54');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '73');
INSERT INTO `sys_role_menu` VALUES ('1', '74');
INSERT INTO `sys_role_menu` VALUES ('1', '75');
INSERT INTO `sys_role_menu` VALUES ('1', '76');
INSERT INTO `sys_role_menu` VALUES ('1', '80');
INSERT INTO `sys_role_menu` VALUES ('1', '81');
INSERT INTO `sys_role_menu` VALUES ('1', '82');
INSERT INTO `sys_role_menu` VALUES ('1', '84');
INSERT INTO `sys_role_menu` VALUES ('1', '85');
INSERT INTO `sys_role_menu` VALUES ('1', '87');
INSERT INTO `sys_role_menu` VALUES ('1', '88');
INSERT INTO `sys_role_menu` VALUES ('1', '89');
INSERT INTO `sys_role_menu` VALUES ('1', '90');
INSERT INTO `sys_role_menu` VALUES ('1', '91');
INSERT INTO `sys_role_menu` VALUES ('1', '92');
INSERT INTO `sys_role_menu` VALUES ('1', '93');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `userid` int(11) NOT NULL COMMENT '用户编号',
  `roleid` int(11) NOT NULL COMMENT '角色编号',
  PRIMARY KEY  (`userid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '1');
INSERT INTO `sys_user_role` VALUES ('4', '1');

-- ----------------------------
-- Table structure for `task_combo`
-- ----------------------------
DROP TABLE IF EXISTS `task_combo`;
CREATE TABLE `task_combo` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(128) default NULL COMMENT '模板名称',
  `sort` int(11) default NULL COMMENT '模板排序',
  `price` double(10,2) default NULL COMMENT '模板价格',
  `createtime` datetime default NULL COMMENT '创建时间',
  `createuser` int(11) default NULL COMMENT '创建人',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务套餐';

-- ----------------------------
-- Records of task_combo
-- ----------------------------

-- ----------------------------
-- Table structure for `task_combo_properties`
-- ----------------------------
DROP TABLE IF EXISTS `task_combo_properties`;
CREATE TABLE `task_combo_properties` (
  `id` int(11) NOT NULL auto_increment,
  `templateid` int(11) default NULL COMMENT '模板ID',
  `propertiesid` int(11) default NULL COMMENT '属性ID',
  `propertiesvalue` int(11) default NULL COMMENT '属性值',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务套餐属性';

-- ----------------------------
-- Records of task_combo_properties
-- ----------------------------

-- ----------------------------
-- Table structure for `task_properties`
-- ----------------------------
DROP TABLE IF EXISTS `task_properties`;
CREATE TABLE `task_properties` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(128) default NULL COMMENT '属性名称',
  `elementname` varchar(255) default NULL COMMENT '别名',
  `status` int(1) default NULL COMMENT '使用状态(0,1)',
  `type` int(1) default NULL COMMENT '展示区域',
  `price` int(11) default '0' COMMENT '所需蚂蚁币',
  `elementtype` varchar(255) default NULL COMMENT '元素类型',
  `elementnum` int(11) default NULL COMMENT '元素个数',
  `needtype` varchar(255) default NULL COMMENT '所需类型',
  `neednum` int(11) default NULL COMMENT '所需个数',
  `sort` int(11) default NULL COMMENT '任务完成排序',
  `parentid` int(11) default NULL COMMENT '所属属性',
  `valueid` int(11) default NULL COMMENT '所属属性值id(只有parentid不等于-1)才有该属性',
  `showsort` int(11) default NULL COMMENT '显示顺序',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='任务属性';

-- ----------------------------
-- Records of task_properties
-- ----------------------------
INSERT INTO `task_properties` VALUES ('1', 'isphoneorder', '是否手机下单', '1', '1', '2', 'radio', '2', 'null', '0', '1', '-1', null, '1');
INSERT INTO `task_properties` VALUES ('2', 'ordermode', '拍单方式', '0', '1', '0', 'radio', '3', 'img', '1', '1', '-1', null, '1');
INSERT INTO `task_properties` VALUES ('3', 'searchshopmode', '搜索进店方式', '0', '1', '0', 'radio', '4', 'img', '1', '1', '-1', null, '1');
INSERT INTO `task_properties` VALUES ('4', 'searchgoodskey', '搜商品关键字', '0', '1', '0', 'text', '1', 'img', '1', '2', '3', '62', '2');
INSERT INTO `task_properties` VALUES ('5', 'searchshopname', '搜店铺名称', '0', '1', '0', 'text', '1', 'img', '1', '2', '3', '63', '2');
INSERT INTO `task_properties` VALUES ('6', 'searchtrainkey', '搜直通车关键字', '0', '1', '0', 'text', '1', 'img', '1', '2', '3', '64', '2');
INSERT INTO `task_properties` VALUES ('7', 'commandaddr', '淘口令地址', '0', '1', '0', 'text', '1', 'img', '1', '2', '3', '65', '2');
INSERT INTO `task_properties` VALUES ('8', 'searchgoodstip', '商品搜索提示', '0', '1', '0', 'text', '1', 'null', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('9', 'gooodslinkimg', '商品链接位置截图', '0', '1', '0', 'img', '1', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('10', 'searchflowtip', '搜索流程提示图', '0', '1', '0', 'img', '4', 'null', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('11', 'goodslinkaddr', '商品链接地址', '0', '1', '0', 'text', '1', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('12', 'bond', '单个商品保证金', '0', '1', '0', 'text', '1', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('13', 'freemail', '是否包邮', '0', '1', '0', 'radio', '2', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('14', 'batchordernum', '批量放单份数', '0', '1', '0', 'text', '1', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('15', 'batchpublishinterval', '批量发布间隔', '0', '1', '0', 'text', '1', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('16', 'goodsnum', '单任务拍下宝贝数', '0', '1', '0', 'text', '1', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('17', 'basescore', '基本旺点', '0', '1', '0', 'text', '1', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('18', 'appendrewardscore', '追加悬赏旺点', '0', '1', '0', 'text', '1', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('19', 'confirmtime', '要求确认时间', '0', '2', '0', 'select', '1', 'null', '0', '1', '-1', null, '1');
INSERT INTO `task_properties` VALUES ('20', 'msgreminder', '留言提醒', '0', '2', '1', 'radio', '2', 'img', '1', '1', '-1', null, '1');
INSERT INTO `task_properties` VALUES ('21', 'askeveryone', '问大家', '0', '2', '40', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('22', 'limitreceiveaddr', '规定收货地址', '0', '2', '5', 'radio', '2', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('23', 'collectshop', '收藏店铺', '0', '2', '6', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('24', 'collectmaineye', '需要收藏主宝贝', '0', '2', '6', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('25', 'shareeye', '分享宝贝', '0', '2', '5', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('26', 'searchlistimg', '搜索列表页截图', '0', '2', '2', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('27', 'buystop', '购买前停留', '0', '2', '0', 'radio', '2', 'mull', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('28', 'viewbottom', '完整浏览到底', '0', '2', '5', 'radio', '2', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('29', 'shopviewgoods', '店内浏览商品', '0', '2', '5', 'radio', '2', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('30', 'buybeforechat', '旺旺聊天(拍前聊)', '0', '2', '10', 'radio', '2', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('31', 'compare3', '货比三家', '0', '2', '8', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('32', 'limitappraisetext', '规定好评内容', '0', '2', '10', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('33', 'appraiseimg', '好评需要截图', '0', '2', '10', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('34', 'appraiseshow', '好评要晒图', '0', '2', '45', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('35', 'iscreditpay', '是否允许信用支付', '0', '2', '-1', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('36', 'limitbuyaccount', '设置买号限制', '0', '3', '4', 'radio', '2', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('37', 'artificialaudit', '人工审核接手人', '0', '3', '3', 'radio', '2', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('38', 'videoauth', '视频认证', '0', '3', '10', 'radio', '2', 'null', '2', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('39', 'limitbuyer', '限制接手人', '0', '3', '0', 'radio', '2', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('40', 'buyerrealauth', '买号实名认证', '0', '3', '10', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('41', 'limitbuyerarea', '指定接手地区', '0', '3', '45', 'radio', '2', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('42', 'wwhsex', '旺旺号性别', '0', '3', '30', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('43', 'mmhage', '旺旺号买手年龄', '0', '3', '30', 'radio', '2', 'img', '1', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('44', 'buyerlevel', '过滤买号等级', '0', '3', '-2', 'radio', '2', 'null', '0', '1', '-1', null, '1');
INSERT INTO `task_properties` VALUES ('45', 'isoldbuyer', '是否老客户才可接', '0', '3', '45', 'radio', '2', 'null', '0', '1', '-1', null, null);
INSERT INTO `task_properties` VALUES ('48', 'assist1pic', '副宝贝1主图', '0', '1', '0', 'img', '1', 'null', '0', '2', '2', '60', '2');
INSERT INTO `task_properties` VALUES ('49', 'assist1link', '副宝贝1链接地址', '0', '1', '0', 'text', '1', 'null', '0', '2', '2', '60', '2');
INSERT INTO `task_properties` VALUES ('50', 'assist1price', '副宝贝1单价', '0', '1', '0', 'text', '1', 'null', '0', '2', '2', '60', '2');
INSERT INTO `task_properties` VALUES ('51', 'searchAname', '搜A商品名称', '0', '1', '0', 'text', '1', 'null', '0', '2', '2', '61', '2');
INSERT INTO `task_properties` VALUES ('52', 'searchAlink', '搜A商品链接地址', '0', '1', '0', 'text', '1', 'null', '0', '2', '2', '61', '2');
INSERT INTO `task_properties` VALUES ('53', 'searchAprice', '搜A商品单价', '0', '1', '0', 'text', '1', 'null', '0', '2', '2', '61', '2');
INSERT INTO `task_properties` VALUES ('54', 'orderBpic', '拍B商品主图', '0', '1', '0', 'img', '1', 'null', '0', '2', '2', '61', '2');
INSERT INTO `task_properties` VALUES ('55', 'signtype', '签收类型', '0', '2', '0', 'radio', '2', 'null', '0', '2', '19', '67', '2');
INSERT INTO `task_properties` VALUES ('56', 'filterlevelassist', '过滤买号等级副属性', '0', '3', '0', 'select', '10', 'null', '0', '2', '44', '56', '2');
INSERT INTO `task_properties` VALUES ('57', 'msgcontent', '给卖家留言内容', '0', '2', '0', 'text', '1', 'null', '0', '2', '20', '32', '2');
INSERT INTO `task_properties` VALUES ('58', 'msgreminderassist', '留言提醒副属性', '0', '2', '0', 'checkbox', '2', 'null', '0', '2', '20', '32', '2');
INSERT INTO `task_properties` VALUES ('59', 'maingoodspic', '主宝贝图', '0', '1', '0', 'img', '1', 'null', '0', '2', '1', '30', '2');
INSERT INTO `task_properties` VALUES ('60', 'askquestion', '给卖家提问的问题内容', '0', '2', '0', 'text', '1', 'null', '1', '0', '21', '33', null);
INSERT INTO `task_properties` VALUES ('61', 'creditpayassist', '是否允许信用支付副属性', '0', '2', '0', 'checkbox', '5', 'null', '0', '0', '35', '47', null);
INSERT INTO `task_properties` VALUES ('62', 'receivername', '姓名', '0', '2', '0', 'text', '1', 'null', '0', '0', '22', '34', null);
INSERT INTO `task_properties` VALUES ('63', 'receiverphone', '手机', '0', '2', '0', 'text', '1', 'null', '0', '0', '22', '34', null);
INSERT INTO `task_properties` VALUES ('64', 'receivercode', '邮编', '0', '2', '0', 'text', '1', 'null', '0', '0', '22', '34', null);
INSERT INTO `task_properties` VALUES ('65', 'reviceveraddr', '地址', '0', '2', '0', 'text', '1', 'null', '0', '0', '22', '34', null);
INSERT INTO `task_properties` VALUES ('66', 'collectassist', '收藏副宝贝', '0', '2', '0', 'radio', '2', 'null', '0', '0', '-1', null, null);
INSERT INTO `task_properties` VALUES ('67', 'collectassist2', '收藏副宝贝副属性', '0', '2', '0', 'radio', '2', 'null', '0', '0', '66', '87', null);
INSERT INTO `task_properties` VALUES ('68', 'compare3assist', '货比三家副属性', '0', '2', '0', 'radio', '3', 'null', '0', '0', '31', '43', null);
INSERT INTO `task_properties` VALUES ('69', 'appraisetextassist', '规定好评内容副属性', '0', '2', '0', 'text', '1', 'null', '0', '0', '-1', null, null);
INSERT INTO `task_properties` VALUES ('70', 'ppraiseshowassist', '好评要嗮图副属性', '0', '2', '0', 'img', '4', 'null', '0', '0', '34', '46', null);

-- ----------------------------
-- Table structure for `task_properties_value`
-- ----------------------------
DROP TABLE IF EXISTS `task_properties_value`;
CREATE TABLE `task_properties_value` (
  `id` int(11) NOT NULL auto_increment,
  `propertiesid` int(11) default NULL COMMENT '属性ID',
  `label` varchar(50) default NULL COMMENT '选项名称',
  `keyvalue` varchar(255) default NULL COMMENT '值',
  `memo` varchar(255) default NULL COMMENT '备注',
  `isdefault` int(1) default NULL COMMENT '是否默认',
  `func` varchar(64) default NULL COMMENT '点击值触发事件名',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_properties_value
-- ----------------------------
INSERT INTO `task_properties_value` VALUES ('1', '1', '否', '0', '', '1', 'showProByValue(this)');
INSERT INTO `task_properties_value` VALUES ('2', '13', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('3', '20', '否', '0', '', '1', 'showProByValue(this)');
INSERT INTO `task_properties_value` VALUES ('4', '21', '否', '0', '', '1', 'showProByValue(this)');
INSERT INTO `task_properties_value` VALUES ('5', '22', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('6', '23', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('7', '24', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('8', '25', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('9', '26', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('10', '27', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('11', '28', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('12', '29', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('13', '30', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('14', '31', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('15', '32', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('16', '33', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('17', '34', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('18', '35', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('19', '36', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('20', '37', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('21', '38', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('22', '39', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('23', '40', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('24', '41', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('25', '42', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('26', '43', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('27', '44', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('28', '45', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('29', '46', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('30', '1', '是', '1', null, '0', 'showProByValue(this)');
INSERT INTO `task_properties_value` VALUES ('31', '13', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('32', '20', '是', '1', '', '0', 'showProByValue(this)');
INSERT INTO `task_properties_value` VALUES ('33', '21', '是', '1', '', '0', 'showProByValue(this)');
INSERT INTO `task_properties_value` VALUES ('34', '22', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('35', '23', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('36', '24', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('37', '25', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('38', '26', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('39', '27', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('40', '28', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('41', '29', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('42', '30', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('43', '31', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('44', '32', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('45', '33', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('46', '34', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('47', '35', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('48', '36', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('49', '37', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('50', '38', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('51', '39', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('52', '40', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('53', '41', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('54', '42', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('55', '43', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('56', '44', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('57', '45', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('58', '46', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('59', '2', '单链接', '1', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('60', '2', '多链接', '2', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('61', '2', '搜A拍B', '3', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('62', '3', '搜商品', '1', null, '1', 'showProByValue(this)');
INSERT INTO `task_properties_value` VALUES ('63', '3', '搜店铺', '2', null, '0', 'showProByValue(this)');
INSERT INTO `task_properties_value` VALUES ('64', '3', '搜直通车', '3', null, '0', 'showProByValue(this)');
INSERT INTO `task_properties_value` VALUES ('65', '3', '淘口令', '4', null, '0', 'showProByValue(this)');
INSERT INTO `task_properties_value` VALUES ('66', '19', '马上好评（针对店铺卖虚拟商品，如：话费、游戏币）', '1', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('67', '19', '物流显示签收后才能确认收货(旺点2)', '2', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('68', '55', '需买手本人签收', '1', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('69', '55', '落地签收', '2', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('70', '56', '一心买号及以上(信誉>=4)5个旺点', '1', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('71', '56', '二心买号及以上(信誉>=11)10个旺点', '2', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('72', '56', '三心买号及以上(信誉>=41)15个旺点', '3', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('73', '56', '四心买号及以上(信誉>=91)25个旺点', '4', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('74', '56', '五心买号及以上(信誉>=151)35个旺点', '5', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('75', '56', '一钻买号及以上(信誉>=251)50个旺点', '6', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('76', '56', '二钻买号及以上(信誉>=501)100个旺点', '7', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('77', '56', '三钻买号及以上(信誉>=1001)150个旺点', '8', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('78', '56', '四钻买号及以上(信誉>=2001)200个旺点', '9', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('79', '56', '五钻买号及以上(信誉>=5001)250个旺点', '10', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('80', '58', '请匿名购买', '1', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('81', '58', ' 请只收货等待默认好评', '2', '', '0', null);
INSERT INTO `task_properties_value` VALUES ('82', '61', '花呗', '1', '', '0', '');
INSERT INTO `task_properties_value` VALUES ('83', '61', '信用卡', '2', '', '0', '');
INSERT INTO `task_properties_value` VALUES ('84', '61', '余额宝分期', '3', '', '0', '');
INSERT INTO `task_properties_value` VALUES ('85', '61', '淘宝信用支付', '4', '', '0', '');
INSERT INTO `task_properties_value` VALUES ('86', '61', '店铺优惠券', '5', '', '0', '');
INSERT INTO `task_properties_value` VALUES ('87', '66', '是', '1', null, '0', null);
INSERT INTO `task_properties_value` VALUES ('88', '66', '否', '0', null, '1', null);
INSERT INTO `task_properties_value` VALUES ('89', '67', '收藏任意一款副宝贝', '1', '', '1', '');
INSERT INTO `task_properties_value` VALUES ('90', '67', '收藏排行榜销量最多的那款副宝贝', '2', '', '0', '');
INSERT INTO `task_properties_value` VALUES ('91', '68', '货比一家', '1', '', '1', '');
INSERT INTO `task_properties_value` VALUES ('92', '68', '货比二家', '2', '', '0', '');
INSERT INTO `task_properties_value` VALUES ('93', '68', '货比三家', '3', '', '0', '');

-- ----------------------------
-- Table structure for `trace_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `trace_recharge`;
CREATE TABLE `trace_recharge` (
  `id` int(11) NOT NULL auto_increment,
  `payaccount` varchar(128) default NULL COMMENT '支付账号',
  `payno` varchar(128) default NULL COMMENT '交易号',
  `createtime` datetime default NULL COMMENT '充值时间',
  `createuser` int(11) default NULL COMMENT '充值申请人',
  `handleuser` int(11) default NULL COMMENT '充值审核人',
  `handletime` datetime default NULL COMMENT '审核时间',
  `money` decimal(12,2) default NULL COMMENT '充值金额',
  `status` int(1) default NULL COMMENT '充值状态 0初始待审核 1 充值成功 -1充值失败',
  `memo` varchar(128) default NULL COMMENT '备注',
  `channel` int(1) default NULL COMMENT '充值渠道 1 支付宝 2财付通',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='交易充值表';

-- ----------------------------
-- Records of trace_recharge
-- ----------------------------
INSERT INTO `trace_recharge` VALUES ('1', '46438730@qq.com', '20160808164121', '2016-08-08 00:00:00', '3', null, null, '110.00', '0', 'admin', '1');
INSERT INTO `trace_recharge` VALUES ('2', '464380730', '201608081644112', '2016-08-08 00:00:00', '3', null, null, '100.00', '0', 'admin', '2');

-- ----------------------------
-- Table structure for `trace_record`
-- ----------------------------
DROP TABLE IF EXISTS `trace_record`;
CREATE TABLE `trace_record` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一标示',
  `userid` int(11) default NULL COMMENT '所属用户',
  `type` int(1) default NULL COMMENT '交易类型 1收入(任务奖金/充值) 2支出(提现)',
  `money` double(12,2) default NULL COMMENT '交易金额',
  `tracetime` datetime default NULL COMMENT '交易时间',
  `orderid` int(11) default NULL COMMENT '订单(金额增加变动关联任务)',
  `memo` varchar(255) default NULL COMMENT '备注',
  `traceno` varchar(64) default NULL COMMENT '交易编号',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='交易记录表';

-- ----------------------------
-- Records of trace_record
-- ----------------------------
INSERT INTO `trace_record` VALUES ('1', '3', '1', '100.00', '2016-07-31 17:37:07', null, '测试收入100', '2016007311737001');

-- ----------------------------
-- Table structure for `trace_withdrawls`
-- ----------------------------
DROP TABLE IF EXISTS `trace_withdrawls`;
CREATE TABLE `trace_withdrawls` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一标示',
  `money` double(12,2) default NULL COMMENT '提现金额',
  `commission` double(12,2) default NULL COMMENT '手续费',
  `arrivalmoney` double(12,2) default NULL COMMENT '到账金额',
  `withdrawalsaccount` int(11) default NULL COMMENT '提现用户银行卡账户',
  `status` int(11) default NULL COMMENT '提现状态',
  `createtime` datetime default NULL COMMENT '提现时间',
  `finishtime` datetime default NULL COMMENT '提现转账完成时间',
  `withdrawalno` varchar(64) default NULL COMMENT '交易提现编号',
  `type` int(1) default NULL COMMENT '提现类型 1正常到账 2快速到账',
  `userid` int(11) default NULL COMMENT '提现申请人',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='交易提现表';

-- ----------------------------
-- Records of trace_withdrawls
-- ----------------------------
INSERT INTO `trace_withdrawls` VALUES ('1', '6.00', '4.00', '2.00', '4', '0', '2016-08-06 16:45:51', null, null, '2', '3');
INSERT INTO `trace_withdrawls` VALUES ('2', '100.00', '4.00', '96.00', '4', '0', '2016-08-06 16:54:49', null, null, '1', '3');
INSERT INTO `trace_withdrawls` VALUES ('3', '8.00', '4.00', '4.00', '4', '0', '2016-08-06 16:55:45', null, null, '2', '3');
INSERT INTO `trace_withdrawls` VALUES ('4', '9.00', '4.00', '5.00', '4', '0', '2016-08-06 17:02:12', null, null, '2', '3');
INSERT INTO `trace_withdrawls` VALUES ('5', '11.00', '4.00', '7.00', '4', '0', '2016-08-07 22:33:32', null, null, '2', '3');

-- ----------------------------
-- Table structure for `user_account`
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL COMMENT '用户ID',
  `createtime` datetime default NULL COMMENT '创建时间',
  `bankid` int(11) default NULL COMMENT '所属银行',
  `accountname` varchar(32) default NULL COMMENT '银行开户名',
  `accountno` varchar(32) default NULL COMMENT '银行账号',
  `region` varchar(255) default NULL COMMENT '开户行(省/市)',
  `bankname` varchar(255) default NULL COMMENT '支行名称',
  `regionid` int(11) default NULL COMMENT '开户地区id',
  `deleted` int(1) default '0' COMMENT '删除标识',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户银行卡';

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('1', '3', '2016-08-06 11:31:01', '1', '热', '让人', null, 'bb', '110100', '0');
INSERT INTO `user_account` VALUES ('2', '3', '2016-08-06 12:40:05', '2', '信息', '21554012454535353', null, '嘎嘎', '110100', '0');
INSERT INTO `user_account` VALUES ('3', '3', '2016-08-06 12:56:08', '3', '日3额', '热 ', null, '放大', '120101', '0');
INSERT INTO `user_account` VALUES ('4', '3', '2016-08-06 14:05:48', '10', 'gg', '1252465235656323', null, '支行个', '421200', '0');

-- ----------------------------
-- Table structure for `user_auth_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_auth_info`;
CREATE TABLE `user_auth_info` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(11) default NULL COMMENT '证件类型(0:身份证，(身份证正面照、手持身份证照、生活照);1:学生证，(学生证正面照、手持学生证照);)',
  `userid` int(11) default NULL COMMENT '账号ID',
  `certificationstatus` int(1) default NULL COMMENT '实名认证状态',
  `certificationtime` datetime default NULL COMMENT '实名认证时间',
  `handletime` datetime default NULL COMMENT '实名认证处理时间',
  `handler` int(11) default NULL COMMENT '实名认证处理人',
  `handlememo` varchar(128) default NULL COMMENT '实名认证处理意见',
  `deleted` int(1) default NULL COMMENT '删除标识',
  `realname` varchar(128) default NULL COMMENT '真实姓名',
  `certificateno` varchar(128) default NULL COMMENT '身份证号',
  `cardphoto` varchar(128) default NULL COMMENT '身份证正面照',
  `lifephoto` varchar(128) default NULL COMMENT '生活照',
  `handcardphoto` varchar(128) default NULL COMMENT '手持身份证正面照',
  `stucardphoto` varchar(128) default NULL COMMENT '学生证正面照',
  `handstucardphoto` varchar(128) default NULL COMMENT '手持学生证照',
  `stuno` varchar(32) default NULL COMMENT '学生证号',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='个人认证信息';

-- ----------------------------
-- Records of user_auth_info
-- ----------------------------
INSERT INTO `user_auth_info` VALUES ('1', null, '4', null, null, null, null, null, '0', null, null, null, null, null, null, null, null);
INSERT INTO `user_auth_info` VALUES ('3', '1', '3', '0', '2016-08-11 16:48:18', null, null, null, '0', '发', '35121992041335656', 'http://localhost:8080/core//upload/2016/08/11/1650ed050fb8ac2a53e7c914eb8d1e0b.png', 'http://localhost:8080/core//upload/2016/08/11/1650ed050fb8ac2a53e7c914eb8d1e0b.png', 'http://localhost:8080/core//upload/2016/08/11/1650ed050fb8ac2a53e7c914eb8d1e0b.png', '', '', '');

-- ----------------------------
-- Table structure for `user_config`
-- ----------------------------
DROP TABLE IF EXISTS `user_config`;
CREATE TABLE `user_config` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL COMMENT '用户ID',
  `message` varchar(10) default 'YES' COMMENT '消息通知设置(NO：否；YES：是)',
  `autoaudit` varchar(10) default 'YES' COMMENT '自动审核(NO：否；YES：是)',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_config
-- ----------------------------

-- ----------------------------
-- Table structure for `user_detail_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_detail_info`;
CREATE TABLE `user_detail_info` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL COMMENT '账号ID',
  `icon` varchar(128) default NULL COMMENT '头像',
  `sex` int(1) default NULL COMMENT '性别',
  `birthday` date default NULL COMMENT '生日',
  `bloodtype` varchar(10) default NULL COMMENT '血型',
  `birthplace` varchar(128) default NULL COMMENT '出生地',
  `apartment` varchar(128) default NULL COMMENT '居住地',
  `personsesc` varchar(1024) default NULL COMMENT '个人简介',
  `educationdegree` int(1) default NULL COMMENT '教育程度',
  `job` int(11) default NULL COMMENT '职业',
  `position` varchar(32) default NULL COMMENT '职位',
  `contactaddress` varchar(128) default NULL COMMENT '联系地址',
  `email` varchar(128) default NULL COMMENT '邮箱地址',
  `qq` varchar(32) default NULL COMMENT 'QQ号码',
  `realname` varchar(32) default NULL COMMENT '真实姓名',
  `certificatetype` int(11) default NULL COMMENT '证件类别',
  `certificateno` varchar(32) default NULL COMMENT '证件号',
  `modifytime` datetime default NULL COMMENT '更新时间',
  `deleted` int(1) default NULL COMMENT '删除标识',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='个人信息';

-- ----------------------------
-- Records of user_detail_info
-- ----------------------------
INSERT INTO `user_detail_info` VALUES ('1', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `user_detail_info` VALUES ('2', '3', null, '1', '2016-06-07', null, null, null, '1', null, null, '1', null, null, '464380730', '薛云腾', null, null, null, '1');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL COMMENT '用户名(登录账号)',
  `password` varchar(128) default NULL COMMENT 'MD5加密后的密码',
  `phone` varchar(32) default NULL COMMENT '联系电话',
  `registertime` datetime default NULL COMMENT '注册时间',
  `lastlogintime` datetime default NULL COMMENT '最后登录时间',
  `loginip` varchar(32) default NULL COMMENT '上次登录IP',
  `type` int(1) default NULL COMMENT '账号类型',
  `status` int(1) default NULL COMMENT '状态',
  `deleted` int(1) default NULL COMMENT '删除标识',
  `channel` int(1) default NULL COMMENT '来源',
  `icon` varchar(128) default NULL COMMENT '头像',
  `memo` varchar(255) default NULL,
  `updatetime` datetime default NULL COMMENT '更新时间',
  `creditscore` int(11) default NULL COMMENT '信用分',
  `uuid` varchar(50) default NULL COMMENT 'UUID手机唯一编号',
  `platform` varchar(50) default NULL COMMENT 'android:android平台;ios:ios平台;',
  `inviter` varchar(50) default NULL COMMENT '邀请人',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='账号信息';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'yun', 'ifS7tw1E6a7Yx0lPE3rcSw==', '13067356435', '2016-05-20 11:37:27', '2016-05-20 11:37:30', '127.0.0.1', '1', '1', '0', '1', null, null, null, null, null, null, null);
INSERT INTO `user_info` VALUES ('2', 'seller', 'ifS7tw1E6a7Yx0lPE3rcSw==', '18050804169', '2016-05-18 11:38:15', '2016-05-20 11:38:19', '127.0.0.1', '2', '2', '0', '1', null, null, null, null, null, null, null);
INSERT INTO `user_info` VALUES ('3', 'admin', 'ifS7tw1E6a7Yx0lPE3rcSw==', '13067356435', '2016-06-06 15:34:26', '2016-06-06 15:34:28', '127.0.0.1', '0', '1', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `user_info` VALUES ('4', 'luoxh', 'ifS7tw1E6a7Yx0lPE3rcSw==', '15980267262', '2016-06-08 10:10:34', null, null, '1', '1', '0', '1', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `user_money`
-- ----------------------------
DROP TABLE IF EXISTS `user_money`;
CREATE TABLE `user_money` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL COMMENT '账号ID',
  `paypassword` varchar(32) default NULL COMMENT '交易密码',
  `allbalance` double(20,2) default NULL COMMENT '总余额',
  `usablebalance` double(20,2) default NULL COMMENT '可用余额',
  `frozenbalance` double(20,2) default NULL COMMENT '冻结金额',
  `deleted` int(1) default NULL COMMENT '删除标识',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='账户信息';

-- ----------------------------
-- Records of user_money
-- ----------------------------
INSERT INTO `user_money` VALUES ('1', '3', 'ifS7tw1E6a7Yx0lPE3rcSw==', '100.00', '272.00', '224.00', '0');
INSERT INTO `user_money` VALUES ('2', '2', 'ifS7tw1E6a7Yx0lPE3rcSw==', '100.00', '100.00', '0.00', '0');
