/*
 Navicat Premium Data Transfer

 Source Server         : local host
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : gdio

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 20/04/2023 11:00:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for we_abc
-- ----------------------------
DROP TABLE IF EXISTS `we_abc`;
CREATE TABLE `we_abc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(50) DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `setting` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `num` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '调用数',
  `items` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_abc
-- ----------------------------
BEGIN;
INSERT INTO `we_abc` VALUES (1, '首页幻灯', '首页', 722, 257, '<loop><li><a href=\"{$url}\"><img src=\"{$content}\" width=\"{$width}\" height=\"{$height}\" /></a></li></loop>', 2, 2, 2);
INSERT INTO `we_abc` VALUES (2, '手机幻灯', '', 0, 0, '<loop><a href=\"{$url}\"><img src=\"{$content}\" /></a></loop>', 2, 1, 1);
INSERT INTO `we_abc` VALUES (3, '合作伙伴', '', 80, 20, '<loop><a href=\"{$url}\"><img src=\"{$content}\" /></a></loop>', 2, 1, 36);
COMMIT;

-- ----------------------------
-- Table structure for we_abc_detail
-- ----------------------------
DROP TABLE IF EXISTS `we_abc_detail`;
CREATE TABLE `we_abc_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `start_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `end_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_abc_detail
-- ----------------------------
BEGIN;
INSERT INTO `we_abc_detail` VALUES (1, '图片1', '/uploads/abc1/20200515/5ebe548d44ed8.jpg', '#', '2014-11-18 10:00:00', '2030-12-31 10:00:00', 1, 1, 1, '/uploads/abc1/20200429/5ea8e78447863.jpg');
INSERT INTO `we_abc_detail` VALUES (3, '004-德稻集团', '/uploads/abc1/20200330/5e8181443c8fd.jpg', 'http://www.detaoma.com/', '2020-01-01 16:45:00', '2032-01-31 16:45:00', 3, 1, 1, '/uploads/abc1/20200330/5e81813ed1c13.jpg');
INSERT INTO `we_abc_detail` VALUES (50, '005-香港设计商会', '/uploads/abc1/20200330/5e8181662d67d.jpg', '', '2020-03-16 17:39:17', '2032-01-31 16:45:00', 3, 2, 1, '/uploads/abc1/20200330/5e81816f35855.jpg');
INSERT INTO `we_abc_detail` VALUES (51, '006-香港设计中心', '/uploads/abc1/20200330/5e81817dd112d.jpg', 'https://www.hkdesigncentre.org/', '2020-03-16 17:39:59', '2032-01-31 16:45:00', 3, 3, 1, '/uploads/abc1/20200330/5e818185154b5.jpg');
INSERT INTO `we_abc_detail` VALUES (83, 'qww', '/uploads/abc1/20200330/5e81914460bd1.jpg', 'http://www.deboerwang.com/', '2020-03-30 14:26:47', '2032-01-31 16:45:00', 3, 30, 1, '/uploads/abc1/20200330/5e81913d7e892.jpg');
INSERT INTO `we_abc_detail` VALUES (7, '1', '/uploads/abc1/20200516/5ebf9d83699e9.jpg', '', '2020-01-13 16:59:23', '2029-02-15 16:59:00', 2, 1, 1, '/uploads/abc1/20200113/5e1c31e29c117.jpg');
INSERT INTO `we_abc_detail` VALUES (81, '中国工业设计协会', '/uploads/abc1/20200330/5e8187ce2ef55.jpg', 'http://www.chinadesign.cn/', '2020-03-16 17:51:38', '2032-01-31 16:45:00', 3, 4, 1, '/uploads/abc1/20200330/5e8187c881559.jpg');
INSERT INTO `we_abc_detail` VALUES (80, '省院 中德组合规范-06', '/uploads/abc1/20200330/5e8187ac31291.jpg', '', '2020-03-16 17:51:22', '2032-01-31 16:45:00', 3, 5, 1, '/uploads/abc1/20200330/5e8187b57db6b.jpg');
INSERT INTO `we_abc_detail` VALUES (79, '欧洲设计促进会', '/uploads/abc1/20200330/5e81879e07893.jpg', 'https://designpromotion.org/', '2020-03-16 17:51:01', '2032-01-31 16:45:00', 3, 7, 1, '/uploads/abc1/20200330/5e818798a5d11.jpg');
INSERT INTO `we_abc_detail` VALUES (78, 'lplus', '/uploads/abc1/20200330/5e81a2db9c9cf.jpg', '', '2020-03-16 17:50:47', '2032-01-31 16:45:00', 3, 8, 1, '/uploads/abc1/20200330/5e81a2dea296c.jpg');
INSERT INTO `we_abc_detail` VALUES (77, 'prophet', '/uploads/abc1/20200330/5e8186e4bdd99.jpg', 'https://www.prophet.com/', '2020-03-16 17:50:35', '2032-01-31 16:45:00', 3, 9, 1, '/uploads/abc1/20200408/5e8d84612c1d1.png');
INSERT INTO `we_abc_detail` VALUES (82, '中国工业设计中心', '/uploads/abc1/20200330/5e8188c64a044.jpg', '', '2020-03-30 13:50:27', '2032-01-31 16:45:00', 3, 6, 1, '/uploads/abc1/20200330/5e8188c052757.jpg');
INSERT INTO `we_abc_detail` VALUES (52, '007-MYS工作室', '/uploads/abc1/20200330/5e8181958a242.jpg', 'http://www.michael-young.com/', '2020-03-16 17:40:20', '2032-01-31 16:45:00', 3, 23, 1, '/uploads/abc1/20200330/5e81819c2a8a2.jpg');
INSERT INTO `we_abc_detail` VALUES (53, '009-pininfanina', '/uploads/abc1/20200428/5ea7ef897d488.jpg', 'https://pininfarina.it/en/', '2020-03-16 17:40:35', '2032-01-31 16:45:00', 3, 10, 1, '/uploads/abc1/20200428/5ea7ef982015a.jpg');
INSERT INTO `we_abc_detail` VALUES (54, '012-阿根廷杂志社', '/uploads/abc1/20200330/5e8181d4d3671.jpg', 'www.feriasycongresos.com.ar', '2020-03-16 17:40:55', '2032-01-31 16:45:00', 3, 34, 1, '/uploads/abc1/20200330/5e8181d02447e.jpg');
INSERT INTO `we_abc_detail` VALUES (55, '013-奥地利设计协会', '/uploads/abc1/20200330/5e81909c734a1.jpg', 'http://www.designaustria.at/', '2020-03-16 17:41:14', '2032-01-31 16:45:00', 3, 12, 1, '/uploads/abc1/20200330/5e81908fa1c56.jpg');
INSERT INTO `we_abc_detail` VALUES (56, '015-昆士兰理工大学', '/uploads/abc1/20200330/5e8183ec9cd9f.jpg', 'https://www.qut.edu.au/', '2020-03-16 17:41:29', '2032-01-31 16:45:00', 3, 18, 1, '/uploads/abc1/20200330/5e8183e5483f2.jpg');
INSERT INTO `we_abc_detail` VALUES (57, '018-巴西DDID设计公司1', '/uploads/abc1/20200330/5e818414dff20.jpg', '', '2020-03-16 17:42:21', '2032-01-31 16:45:00', 3, 13, 1, '/uploads/abc1/20200330/5e81840ecdf14.jpg');
INSERT INTO `we_abc_detail` VALUES (58, '020-柬埔寨ArrowDot公司', '/uploads/abc1/20200330/5e81842d73b15.jpg', 'ArrowDot.io', '2020-03-16 17:42:35', '2032-01-31 16:45:00', 3, 16, 1, '/uploads/abc1/20200330/5e818425a522e.jpg');
INSERT INTO `we_abc_detail` VALUES (59, '021-柬埔寨GROOD 公司', '/uploads/abc1/20200330/5e8184472fac7.jpg', '', '2020-03-16 17:43:15', '2032-01-31 16:45:00', 3, 15, 1, '/uploads/abc1/20200330/5e81843f1c69b.jpg');
INSERT INTO `we_abc_detail` VALUES (60, '026-印度POOL杂志', '/uploads/abc1/20200330/5e81846ca71b7.jpg', 'https://www.indipool.com/', '2020-03-16 17:43:30', '2032-01-31 16:45:00', 3, 17, 1, '/uploads/abc1/20200330/5e81846421bb0.jpg');
INSERT INTO `we_abc_detail` VALUES (61, '027-印度阿金基亚·迪·帕蒂尔大学', '/uploads/abc1/20200330/5e81848896b93.jpg', 'https://adypu.edu.in/', '2020-03-16 17:43:46', '2032-01-31 16:45:00', 3, 14, 1, '/uploads/abc1/20200330/5e818482a749d.jpg');
INSERT INTO `we_abc_detail` VALUES (62, '029-Studio ABD Design Services Pvt Ltd', '/uploads/abc1/20200330/5e8184a285066.jpg', 'https://studioabd.in/', '2020-03-16 17:44:00', '2032-01-31 16:45:00', 3, 11, 1, '/uploads/abc1/20200330/5e81849b24c85.jpg');
INSERT INTO `we_abc_detail` VALUES (63, '035-日本设计振兴会', '/uploads/abc1/20200330/5e81903025996.jpg', 'https://www.jidp.or.jp/en/', '2020-03-16 17:47:03', '2032-01-31 16:45:00', 3, 19, 1, '/uploads/abc1/20200330/5e81902acca80.jpg');
INSERT INTO `we_abc_detail` VALUES (64, '036-东京设计株式会社', '/uploads/abc1/20200330/5e8184f340d64.jpg', '', '2020-03-16 17:47:21', '2032-01-31 16:45:00', 3, 20, 1, '/uploads/abc1/20200330/5e8184eb7051f.jpg');
INSERT INTO `we_abc_detail` VALUES (65, '038-仰光计算机研究大学', '/uploads/abc1/20200330/5e81850a70cf7.jpg', 'https://www.ucsy.edu.mm/', '2020-03-16 17:47:42', '2032-01-31 16:45:00', 3, 21, 1, '/uploads/abc1/20200330/5e8185051e288.jpg');
INSERT INTO `we_abc_detail` VALUES (66, '039-缅甸曼德勒大学', '/uploads/abc1/20200330/5e8185226e551.jpg', 'https://www.mu.edu.mm/', '2020-03-16 17:47:58', '2032-01-31 16:45:00', 3, 22, 1, '/uploads/abc1/20200330/5e81851cec174.jpg');
INSERT INTO `we_abc_detail` VALUES (67, '040-创意荷兰', '/uploads/abc1/20200330/5e818538cecd0.jpg', 'https://www.creativeholland.com/en', '2020-03-16 17:48:17', '2032-01-31 16:45:00', 3, 33, 1, '/uploads/abc1/20200330/5e81853339635.jpg');
INSERT INTO `we_abc_detail` VALUES (68, '041-荷兰埃因霍芬理工大学', '/uploads/abc1/20200330/5e8190f557344.jpg', 'https://www.tue.nl/universiteit/faculteiten/faculteit-industrial-design/', '2020-03-16 17:48:30', '2032-01-31 16:45:00', 3, 24, 1, '/uploads/abc1/20200330/5e8190e4ef84f.jpg');
INSERT INTO `we_abc_detail` VALUES (69, '044-新西兰惠灵顿维多利亚大学', '/uploads/abc1/20200330/5e81854fc94b7.jpg', 'https://www.wgtn.ac.nz/', '2020-03-16 17:48:45', '2032-01-31 16:45:00', 3, 25, 1, '/uploads/abc1/20200330/5e81854942e5c.jpg');
INSERT INTO `we_abc_detail` VALUES (70, '045-俄罗斯设计协会', '/uploads/abc1/20200330/5e8185679cf8c.jpg', 'http://www.sdrussia.ru/', '2020-03-16 17:49:02', '2032-01-31 16:45:00', 3, 27, 1, '/uploads/abc1/20200330/5e8185620f572.jpg');
INSERT INTO `we_abc_detail` VALUES (71, '052-土耳其专利局', '/uploads/abc1/20200330/5e818585e86f9.jpg', 'https://www.turkpatent.gov.tr/TURKPATENT/', '2020-03-16 17:49:14', '2032-01-31 16:45:00', 3, 26, 1, '/uploads/abc1/20200330/5e81857f68cbc.jpg');
INSERT INTO `we_abc_detail` VALUES (72, '053-英国设计基金', '/uploads/abc1/20200330/5e81859b35b98.jpg', 'https://britishdesignfund.co.uk/', '2020-03-16 17:49:27', '2032-01-31 16:45:00', 3, 31, 1, '/uploads/abc1/20200330/5e8185946e33e.jpg');
INSERT INTO `we_abc_detail` VALUES (73, '054-英国工业设计协会', '/uploads/abc1/20200330/5e8185b452954.jpg', 'http://www.britishindustrialdesign.org.uk/', '2020-03-16 17:49:42', '2032-01-31 16:45:00', 3, 30, 1, '/uploads/abc1/20200330/5e8185acc43e2.jpg');
INSERT INTO `we_abc_detail` VALUES (74, '055-英国诺丁汉大学', '/uploads/abc1/20200330/5e8185ca61acf.png', '', '2020-03-16 17:49:56', '2032-01-31 16:45:00', 3, 28, 1, '/uploads/abc1/20200330/5e8185c41e6b3.png');
INSERT INTO `we_abc_detail` VALUES (75, 'CHEFEU TECHNIK', '/uploads/abc1/20200330/5e8185de72e0e.jpg', 'https://www.chefeu.de/index.php/de/', '2020-03-16 17:50:08', '2032-01-31 16:45:00', 3, 35, 1, '/uploads/abc1/20200330/5e8185d969553.jpg');
INSERT INTO `we_abc_detail` VALUES (76, 'hyvonen design', '/uploads/abc1/20200330/5e8185f20ee32.jpg', 'http://www.hyde.fi/', '2020-03-16 17:50:22', '2032-01-31 16:45:00', 3, 29, 1, '/uploads/abc1/20200330/5e8185ec86b4e.jpg');
INSERT INTO `we_abc_detail` VALUES (84, '322', '/uploads/abc1/20200330/5e8191a449597.jpg', 'http://dai.ch/home.php', '2020-03-30 14:28:09', '2032-01-31 16:45:00', 3, 32, 1, '/uploads/abc1/20200330/5e81919c70048.jpg');
INSERT INTO `we_abc_detail` VALUES (85, '图片2', '/uploads/abc1/20200411/5e916d5568cd1.jpg', '', '2020-04-11 11:54:21', '2020-05-11 11:54:21', 1, 1, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for we_active
-- ----------------------------
DROP TABLE IF EXISTS `we_active`;
CREATE TABLE `we_active` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `code` varchar(11) NOT NULL DEFAULT '' COMMENT '激活码',
  `expire` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_active
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_admin
-- ----------------------------
DROP TABLE IF EXISTS `we_admin`;
CREATE TABLE `we_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `department` varchar(255) DEFAULT '' COMMENT '部门',
  `realname` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `user_type` tinyint(4) NOT NULL DEFAULT '0',
  `login_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `login_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '登录IP',
  `is_lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '锁定状态',
  `login_num` int(11) DEFAULT '0' COMMENT '登录次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表';

-- ----------------------------
-- Records of we_admin
-- ----------------------------
BEGIN;
INSERT INTO `we_admin` VALUES (1, 'admin', 'a37663958b8a43cd466c7117fff5f8b3', 'LfJPXG', '', '', '', 9, '2023-04-18 16:17:45', '127.0.0.1', 0, 135);
COMMIT;

-- ----------------------------
-- Table structure for we_announce
-- ----------------------------
DROP TABLE IF EXISTS `we_announce`;
CREATE TABLE `we_announce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `start_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '开始时间',
  `end_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '结束时间',
  `post_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_announce
-- ----------------------------
BEGIN;
INSERT INTO `we_announce` VALUES (1, '手机版网站开通', '<p>手机版网站开通，用手机版网站开通手机访问http://demo.0871k.com 即可访问手机站</p>', '1970-01-01 08:00:00', '2018-04-30 08:36:00', '2014-04-02 08:36:54', 1);
COMMIT;

-- ----------------------------
-- Table structure for we_area
-- ----------------------------
DROP TABLE IF EXISTS `we_area`;
CREATE TABLE `we_area` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `sname` varchar(10) NOT NULL DEFAULT '' COMMENT '简称',
  `ename` varchar(50) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_area
-- ----------------------------
BEGIN;
INSERT INTO `we_area` VALUES (1, '北京市', '北京', '', 0, 0);
INSERT INTO `we_area` VALUES (2, '上海市', '上海', '', 0, 0);
INSERT INTO `we_area` VALUES (3, '天津市', '天津', '', 0, 0);
INSERT INTO `we_area` VALUES (4, '重庆市', '重庆', '', 0, 0);
INSERT INTO `we_area` VALUES (5, '广东省', '广东', '', 0, 0);
INSERT INTO `we_area` VALUES (6, '福建省', '福建', '', 0, 0);
INSERT INTO `we_area` VALUES (7, '浙江省', '浙江', '', 0, 0);
INSERT INTO `we_area` VALUES (8, '江苏省', '江苏', '', 0, 0);
INSERT INTO `we_area` VALUES (9, '山东省', '山东', '', 0, 0);
INSERT INTO `we_area` VALUES (10, '辽宁省', '辽宁', '', 0, 0);
INSERT INTO `we_area` VALUES (11, '江西省', '江西', '', 0, 0);
INSERT INTO `we_area` VALUES (12, '四川省', '四川', '', 0, 0);
INSERT INTO `we_area` VALUES (13, '陕西省', '陕西', '', 0, 0);
INSERT INTO `we_area` VALUES (14, '湖北省', '湖北', '', 0, 0);
INSERT INTO `we_area` VALUES (15, '河南省', '河南', '', 0, 0);
INSERT INTO `we_area` VALUES (16, '河北省', '河北', '', 0, 0);
INSERT INTO `we_area` VALUES (17, '山西省', '山西', '', 0, 0);
INSERT INTO `we_area` VALUES (18, '内蒙古', '内蒙古', '', 0, 0);
INSERT INTO `we_area` VALUES (19, '吉林省', '吉林', '', 0, 0);
INSERT INTO `we_area` VALUES (20, '黑龙江', '黑龙江', '', 0, 0);
INSERT INTO `we_area` VALUES (21, '安徽省', '安徽', '', 0, 0);
INSERT INTO `we_area` VALUES (22, '湖南省', '湖南', '', 0, 0);
INSERT INTO `we_area` VALUES (23, '广西', '广西', '', 0, 0);
INSERT INTO `we_area` VALUES (24, '海南省', '海南', '', 0, 0);
INSERT INTO `we_area` VALUES (25, '云南省', '云南', '', 0, 0);
INSERT INTO `we_area` VALUES (26, '贵州省', '贵州', '', 0, 0);
INSERT INTO `we_area` VALUES (27, '西藏', '西藏', '', 0, 0);
INSERT INTO `we_area` VALUES (28, '甘肃省', '甘肃', '', 0, 0);
INSERT INTO `we_area` VALUES (29, '宁夏区', '宁夏区', '', 0, 0);
INSERT INTO `we_area` VALUES (30, '青海省', '青海', '', 0, 0);
INSERT INTO `we_area` VALUES (31, '新疆', '新疆', '', 0, 0);
INSERT INTO `we_area` VALUES (32, '香港', '香港', '', 0, 0);
INSERT INTO `we_area` VALUES (33, '澳门', '澳门', '', 0, 0);
INSERT INTO `we_area` VALUES (34, '台湾省', '台湾', '', 0, 0);
INSERT INTO `we_area` VALUES (60, '海外', '海外', '', 0, 0);
INSERT INTO `we_area` VALUES (101, '东城区', '东城区', '', 1, 0);
INSERT INTO `we_area` VALUES (102, '西城区', '西城区', '', 1, 0);
INSERT INTO `we_area` VALUES (103, '崇文区', '崇文区', '', 1, 0);
INSERT INTO `we_area` VALUES (104, '宣武区', '宣武区', '', 1, 0);
INSERT INTO `we_area` VALUES (105, '朝阳区', '朝阳区', '', 1, 0);
INSERT INTO `we_area` VALUES (106, '海淀区', '海淀区', '', 1, 0);
INSERT INTO `we_area` VALUES (107, '丰台区', '丰台区', '', 1, 0);
INSERT INTO `we_area` VALUES (108, '石景山区', '石景山区', '', 1, 0);
INSERT INTO `we_area` VALUES (109, '门头沟区', '门头沟区', '', 1, 0);
INSERT INTO `we_area` VALUES (110, '房山区', '房山区', '', 1, 0);
INSERT INTO `we_area` VALUES (111, '通州区', '通区', '', 1, 0);
INSERT INTO `we_area` VALUES (112, '顺义区', '顺义区', '', 1, 0);
INSERT INTO `we_area` VALUES (113, '昌平区', '昌平区', '', 1, 0);
INSERT INTO `we_area` VALUES (114, '大兴区', '大兴区', '', 1, 0);
INSERT INTO `we_area` VALUES (115, '平谷县', '平谷县', '', 1, 0);
INSERT INTO `we_area` VALUES (116, '怀柔县', '怀柔县', '', 1, 0);
INSERT INTO `we_area` VALUES (117, '密云县', '密云县', '', 1, 0);
INSERT INTO `we_area` VALUES (118, '延庆县', '延庆县', '', 1, 0);
INSERT INTO `we_area` VALUES (201, '黄浦区', '黄浦区', '', 2, 0);
INSERT INTO `we_area` VALUES (202, '卢湾区', '卢湾区', '', 2, 0);
INSERT INTO `we_area` VALUES (203, '徐汇区', '徐汇区', '', 2, 0);
INSERT INTO `we_area` VALUES (204, '长宁区', '长宁区', '', 2, 0);
INSERT INTO `we_area` VALUES (205, '静安区', '静安区', '', 2, 0);
INSERT INTO `we_area` VALUES (206, '普陀区', '普陀区', '', 2, 0);
INSERT INTO `we_area` VALUES (207, '闸北区', '闸北区', '', 2, 0);
INSERT INTO `we_area` VALUES (208, '虹口区', '虹口区', '', 2, 0);
INSERT INTO `we_area` VALUES (209, '杨浦区', '杨浦区', '', 2, 0);
INSERT INTO `we_area` VALUES (210, '宝山区', '宝山区', '', 2, 0);
INSERT INTO `we_area` VALUES (211, '闵行区', '闵行区', '', 2, 0);
INSERT INTO `we_area` VALUES (212, '嘉定区', '嘉定区', '', 2, 0);
INSERT INTO `we_area` VALUES (213, '浦东新区', '浦东新区', '', 2, 0);
INSERT INTO `we_area` VALUES (214, '松江区', '松江区', '', 2, 0);
INSERT INTO `we_area` VALUES (215, '金山区', '金山区', '', 2, 0);
INSERT INTO `we_area` VALUES (216, '青浦区', '青浦区', '', 2, 0);
INSERT INTO `we_area` VALUES (217, '南汇区', '南汇区', '', 2, 0);
INSERT INTO `we_area` VALUES (218, '奉贤区', '奉贤区', '', 2, 0);
INSERT INTO `we_area` VALUES (219, '崇明县', '崇明县', '', 2, 0);
INSERT INTO `we_area` VALUES (301, '和平区', '和平区', '', 3, 0);
INSERT INTO `we_area` VALUES (302, '河东区', '河东区', '', 3, 0);
INSERT INTO `we_area` VALUES (303, '河西区', '河西区', '', 3, 0);
INSERT INTO `we_area` VALUES (304, '南开区', '南开区', '', 3, 0);
INSERT INTO `we_area` VALUES (305, '河北区', '河北区', '', 3, 0);
INSERT INTO `we_area` VALUES (306, '红桥区', '红桥区', '', 3, 0);
INSERT INTO `we_area` VALUES (307, '塘沽区', '塘沽区', '', 3, 0);
INSERT INTO `we_area` VALUES (308, '汉沽区', '汉沽区', '', 3, 0);
INSERT INTO `we_area` VALUES (309, '大港区', '大港区', '', 3, 0);
INSERT INTO `we_area` VALUES (310, '东丽区', '东丽区', '', 3, 0);
INSERT INTO `we_area` VALUES (311, '西青区', '西青区', '', 3, 0);
INSERT INTO `we_area` VALUES (312, '北辰区', '北辰区', '', 3, 0);
INSERT INTO `we_area` VALUES (313, '津南区', '津南区', '', 3, 0);
INSERT INTO `we_area` VALUES (314, '武清区', '武清区', '', 3, 0);
INSERT INTO `we_area` VALUES (315, '宝坻区', '宝坻区', '', 3, 0);
INSERT INTO `we_area` VALUES (316, '静海县', '静海县', '', 3, 0);
INSERT INTO `we_area` VALUES (317, '宁河县', '宁河县', '', 3, 0);
INSERT INTO `we_area` VALUES (318, '蓟县', '蓟县', '', 3, 0);
INSERT INTO `we_area` VALUES (401, '渝中区', '渝中区', '', 4, 0);
INSERT INTO `we_area` VALUES (402, '大渡口区', '大渡口区', '', 4, 0);
INSERT INTO `we_area` VALUES (403, '江北区', '江北区', '', 4, 0);
INSERT INTO `we_area` VALUES (404, '沙坪坝区', '沙坪坝区', '', 4, 0);
INSERT INTO `we_area` VALUES (405, '九龙坡区', '九龙坡区', '', 4, 0);
INSERT INTO `we_area` VALUES (406, '南岸区', '南岸区', '', 4, 0);
INSERT INTO `we_area` VALUES (407, '北碚区', '北碚区', '', 4, 0);
INSERT INTO `we_area` VALUES (408, '万盛区', '万盛区', '', 4, 0);
INSERT INTO `we_area` VALUES (409, '双桥区', '双桥区', '', 4, 0);
INSERT INTO `we_area` VALUES (410, '渝北区', '渝北区', '', 4, 0);
INSERT INTO `we_area` VALUES (411, '巴南区', '巴南区', '', 4, 0);
INSERT INTO `we_area` VALUES (412, '万州区', '万区', '', 4, 0);
INSERT INTO `we_area` VALUES (413, '涪陵区', '涪陵区', '', 4, 0);
INSERT INTO `we_area` VALUES (414, '黔江区', '黔江区', '', 4, 0);
INSERT INTO `we_area` VALUES (415, '永川市', '永川', '', 4, 0);
INSERT INTO `we_area` VALUES (416, '合川市', '合川', '', 4, 0);
INSERT INTO `we_area` VALUES (417, '江津市', '江津', '', 4, 0);
INSERT INTO `we_area` VALUES (418, '南川市', '南川', '', 4, 0);
INSERT INTO `we_area` VALUES (419, '长寿县', '长寿县', '', 4, 0);
INSERT INTO `we_area` VALUES (420, '綦江县', '綦江县', '', 4, 0);
INSERT INTO `we_area` VALUES (421, '潼南县', '潼南县', '', 4, 0);
INSERT INTO `we_area` VALUES (422, '荣昌县', '荣昌县', '', 4, 0);
INSERT INTO `we_area` VALUES (423, '璧山县', '璧山县', '', 4, 0);
INSERT INTO `we_area` VALUES (424, '大足县', '大足县', '', 4, 0);
INSERT INTO `we_area` VALUES (425, '铜梁县', '铜梁县', '', 4, 0);
INSERT INTO `we_area` VALUES (426, '梁平县', '梁平县', '', 4, 0);
INSERT INTO `we_area` VALUES (427, '城口县', '城口县', '', 4, 0);
INSERT INTO `we_area` VALUES (428, '垫江县', '垫江县', '', 4, 0);
INSERT INTO `we_area` VALUES (429, '武隆县', '武隆县', '', 4, 0);
INSERT INTO `we_area` VALUES (430, '丰都县', '丰都县', '', 4, 0);
INSERT INTO `we_area` VALUES (431, '奉节县', '奉节县', '', 4, 0);
INSERT INTO `we_area` VALUES (432, '开县', '开县', '', 4, 0);
INSERT INTO `we_area` VALUES (433, '云阳县', '云阳县', '', 4, 0);
INSERT INTO `we_area` VALUES (434, '忠县', '忠县', '', 4, 0);
INSERT INTO `we_area` VALUES (435, '巫溪县', '巫溪县', '', 4, 0);
INSERT INTO `we_area` VALUES (436, '巫山县', '巫山县', '', 4, 0);
INSERT INTO `we_area` VALUES (437, '石柱县', '石柱县', '', 4, 0);
INSERT INTO `we_area` VALUES (438, '秀山县', '秀山县', '', 4, 0);
INSERT INTO `we_area` VALUES (439, '酉阳县', '酉阳县', '', 4, 0);
INSERT INTO `we_area` VALUES (440, '彭水县', '彭水县', '', 4, 0);
INSERT INTO `we_area` VALUES (501, '广州市', '广州', '', 5, 0);
INSERT INTO `we_area` VALUES (502, '深圳市', '深圳', '', 5, 0);
INSERT INTO `we_area` VALUES (503, '珠海市', '珠海', '', 5, 0);
INSERT INTO `we_area` VALUES (504, '汕头市', '汕头', '', 5, 0);
INSERT INTO `we_area` VALUES (505, '韶关市', '韶关', '', 5, 0);
INSERT INTO `we_area` VALUES (506, '河源市', '河源', '', 5, 0);
INSERT INTO `we_area` VALUES (507, '梅州市', '梅州', '', 5, 0);
INSERT INTO `we_area` VALUES (508, '惠州市', '惠州', '', 5, 0);
INSERT INTO `we_area` VALUES (509, '汕尾市', '汕尾', '', 5, 0);
INSERT INTO `we_area` VALUES (510, '东莞市', '东莞', '', 5, 0);
INSERT INTO `we_area` VALUES (511, '中山市', '中山', '', 5, 0);
INSERT INTO `we_area` VALUES (512, '江门市', '江门', '', 5, 0);
INSERT INTO `we_area` VALUES (513, '佛山市', '佛山', '', 5, 0);
INSERT INTO `we_area` VALUES (514, '阳江市', '阳江', '', 5, 0);
INSERT INTO `we_area` VALUES (515, '湛江市', '湛江', '', 5, 0);
INSERT INTO `we_area` VALUES (516, '茂名市', '茂名', '', 5, 0);
INSERT INTO `we_area` VALUES (517, '肇庆市', '肇庆', '', 5, 0);
INSERT INTO `we_area` VALUES (518, '清远市', '清远', '', 5, 0);
INSERT INTO `we_area` VALUES (519, '潮州市', '潮州', '', 5, 0);
INSERT INTO `we_area` VALUES (520, '揭阳市', '揭阳', '', 5, 0);
INSERT INTO `we_area` VALUES (521, '云浮市', '云浮', '', 5, 0);
INSERT INTO `we_area` VALUES (601, '福州市', '福州', '', 6, 0);
INSERT INTO `we_area` VALUES (602, '厦门市', '厦门', '', 6, 0);
INSERT INTO `we_area` VALUES (603, '三明市', '三明', '', 6, 0);
INSERT INTO `we_area` VALUES (604, '莆田市', '莆田', '', 6, 0);
INSERT INTO `we_area` VALUES (605, '泉州市', '泉州', '', 6, 0);
INSERT INTO `we_area` VALUES (606, '漳州市', '漳州', '', 6, 0);
INSERT INTO `we_area` VALUES (607, '南平市', '南平', '', 6, 0);
INSERT INTO `we_area` VALUES (608, '龙岩市', '龙岩', '', 6, 0);
INSERT INTO `we_area` VALUES (609, '宁德市', '宁德', '', 6, 0);
INSERT INTO `we_area` VALUES (701, '杭州市', '杭州', '', 7, 0);
INSERT INTO `we_area` VALUES (702, '宁波市', '宁波', '', 7, 0);
INSERT INTO `we_area` VALUES (703, '温州市', '温州', '', 7, 0);
INSERT INTO `we_area` VALUES (704, '嘉兴市', '嘉兴', '', 7, 0);
INSERT INTO `we_area` VALUES (705, '湖州市', '湖州', '', 7, 0);
INSERT INTO `we_area` VALUES (706, '绍兴市', '绍兴', '', 7, 0);
INSERT INTO `we_area` VALUES (707, '金华市', '金华', '', 7, 0);
INSERT INTO `we_area` VALUES (708, '衢州市', '衢州', '', 7, 0);
INSERT INTO `we_area` VALUES (709, '舟山市', '舟山', '', 7, 0);
INSERT INTO `we_area` VALUES (710, '台州市', '台州', '', 7, 0);
INSERT INTO `we_area` VALUES (711, '丽水市', '丽水', '', 7, 0);
INSERT INTO `we_area` VALUES (801, '南京市', '南京', '', 8, 0);
INSERT INTO `we_area` VALUES (802, '徐州市', '徐州', '', 8, 0);
INSERT INTO `we_area` VALUES (803, '连云港市', '连云港', '', 8, 0);
INSERT INTO `we_area` VALUES (804, '淮安市', '淮安', '', 8, 0);
INSERT INTO `we_area` VALUES (805, '宿迁市', '宿迁', '', 8, 0);
INSERT INTO `we_area` VALUES (806, '盐城市', '盐城', '', 8, 0);
INSERT INTO `we_area` VALUES (807, '扬州市', '扬州', '', 8, 0);
INSERT INTO `we_area` VALUES (808, '泰州市', '泰州', '', 8, 0);
INSERT INTO `we_area` VALUES (809, '南通市', '南通', '', 8, 0);
INSERT INTO `we_area` VALUES (810, '镇江市', '镇江', '', 8, 0);
INSERT INTO `we_area` VALUES (811, '常州市', '常州', '', 8, 0);
INSERT INTO `we_area` VALUES (812, '无锡市', '无锡', '', 8, 0);
INSERT INTO `we_area` VALUES (813, '苏州市', '苏州', '', 8, 0);
INSERT INTO `we_area` VALUES (901, '济南市', '济南', '', 9, 0);
INSERT INTO `we_area` VALUES (902, '青岛市', '青岛', '', 9, 0);
INSERT INTO `we_area` VALUES (903, '淄博市', '淄博', '', 9, 0);
INSERT INTO `we_area` VALUES (904, '枣庄市', '枣庄', '', 9, 0);
INSERT INTO `we_area` VALUES (905, '东营市', '东营', '', 9, 0);
INSERT INTO `we_area` VALUES (906, '潍坊市', '潍坊', '', 9, 0);
INSERT INTO `we_area` VALUES (907, '烟台市', '烟台', '', 9, 0);
INSERT INTO `we_area` VALUES (908, '威海市', '威海', '', 9, 0);
INSERT INTO `we_area` VALUES (909, '济宁市', '济宁', '', 9, 0);
INSERT INTO `we_area` VALUES (910, '泰安市', '泰安', '', 9, 0);
INSERT INTO `we_area` VALUES (911, '日照市', '日照', '', 9, 0);
INSERT INTO `we_area` VALUES (912, '莱芜市', '莱芜', '', 9, 0);
INSERT INTO `we_area` VALUES (913, '德州市', '德州', '', 9, 0);
INSERT INTO `we_area` VALUES (914, '临沂市', '临沂', '', 9, 0);
INSERT INTO `we_area` VALUES (915, '聊城市', '聊城', '', 9, 0);
INSERT INTO `we_area` VALUES (916, '滨州市', '滨州', '', 9, 0);
INSERT INTO `we_area` VALUES (917, '菏泽市', '菏泽', '', 9, 0);
INSERT INTO `we_area` VALUES (1001, '沈阳市', '沈阳', '', 10, 0);
INSERT INTO `we_area` VALUES (1002, '大连市', '大连', '', 10, 0);
INSERT INTO `we_area` VALUES (1003, '鞍山市', '鞍山', '', 10, 0);
INSERT INTO `we_area` VALUES (1004, '抚顺市', '抚顺', '', 10, 0);
INSERT INTO `we_area` VALUES (1005, '本溪市', '本溪', '', 10, 0);
INSERT INTO `we_area` VALUES (1006, '丹东市', '丹东', '', 10, 0);
INSERT INTO `we_area` VALUES (1007, '锦州市', '锦州', '', 10, 0);
INSERT INTO `we_area` VALUES (1008, '葫芦岛市', '葫芦岛', '', 10, 0);
INSERT INTO `we_area` VALUES (1009, '营口市', '营口', '', 10, 0);
INSERT INTO `we_area` VALUES (1010, '盘锦市', '盘锦', '', 10, 0);
INSERT INTO `we_area` VALUES (1011, '阜新市', '阜新', '', 10, 0);
INSERT INTO `we_area` VALUES (1012, '辽阳市', '辽阳', '', 10, 0);
INSERT INTO `we_area` VALUES (1013, '铁岭市', '铁岭', '', 10, 0);
INSERT INTO `we_area` VALUES (1014, '朝阳市', '朝阳', '', 10, 0);
INSERT INTO `we_area` VALUES (1101, '南昌市', '南昌', '', 11, 0);
INSERT INTO `we_area` VALUES (1102, '景德镇市', '景德镇', '', 11, 0);
INSERT INTO `we_area` VALUES (1103, '萍乡市', '萍乡', '', 11, 0);
INSERT INTO `we_area` VALUES (1104, '新余市', '新余', '', 11, 0);
INSERT INTO `we_area` VALUES (1105, '九江市', '九江', '', 11, 0);
INSERT INTO `we_area` VALUES (1106, '鹰潭市', '鹰潭', '', 11, 0);
INSERT INTO `we_area` VALUES (1107, '赣州市', '赣州', '', 11, 0);
INSERT INTO `we_area` VALUES (1108, '吉安市', '吉安', '', 11, 0);
INSERT INTO `we_area` VALUES (1109, '宜春市', '宜春', '', 11, 0);
INSERT INTO `we_area` VALUES (1110, '抚州市', '抚州', '', 11, 0);
INSERT INTO `we_area` VALUES (1111, '上饶市', '上饶', '', 11, 0);
INSERT INTO `we_area` VALUES (1201, '成都市', '成都', '', 12, 0);
INSERT INTO `we_area` VALUES (1202, '自贡市', '自贡', '', 12, 0);
INSERT INTO `we_area` VALUES (1203, '攀枝花市', '攀枝花', '', 12, 0);
INSERT INTO `we_area` VALUES (1204, '泸州市', '泸州', '', 12, 0);
INSERT INTO `we_area` VALUES (1205, '德阳市', '德阳', '', 12, 0);
INSERT INTO `we_area` VALUES (1206, '绵阳市', '绵阳', '', 12, 0);
INSERT INTO `we_area` VALUES (1207, '广元市', '广元', '', 12, 0);
INSERT INTO `we_area` VALUES (1208, '遂宁市', '遂宁', '', 12, 0);
INSERT INTO `we_area` VALUES (1209, '内江市', '内江', '', 12, 0);
INSERT INTO `we_area` VALUES (1210, '乐山市', '乐山', '', 12, 0);
INSERT INTO `we_area` VALUES (1211, '南充市', '南充', '', 12, 0);
INSERT INTO `we_area` VALUES (1212, '宜宾市', '宜宾', '', 12, 0);
INSERT INTO `we_area` VALUES (1213, '广安市', '广安', '', 12, 0);
INSERT INTO `we_area` VALUES (1214, '达州市', '达州', '', 12, 0);
INSERT INTO `we_area` VALUES (1215, '巴中市', '巴中', '', 12, 0);
INSERT INTO `we_area` VALUES (1216, '雅安市', '雅安', '', 12, 0);
INSERT INTO `we_area` VALUES (1217, '眉山市', '眉山', '', 12, 0);
INSERT INTO `we_area` VALUES (1218, '资阳市', '资阳', '', 12, 0);
INSERT INTO `we_area` VALUES (1219, '阿坝州', '阿坝', '', 12, 0);
INSERT INTO `we_area` VALUES (1220, '甘孜州', '甘孜', '', 12, 0);
INSERT INTO `we_area` VALUES (1221, '凉山州', '凉山', '', 12, 0);
INSERT INTO `we_area` VALUES (3114, '西安市', '西安', '', 13, 0);
INSERT INTO `we_area` VALUES (1302, '铜川市', '铜川', '', 13, 0);
INSERT INTO `we_area` VALUES (1303, '宝鸡市', '宝鸡', '', 13, 0);
INSERT INTO `we_area` VALUES (1304, '咸阳市', '咸阳', '', 13, 0);
INSERT INTO `we_area` VALUES (1305, '渭南市', '渭南', '', 13, 0);
INSERT INTO `we_area` VALUES (1306, '延安市', '延安', '', 13, 0);
INSERT INTO `we_area` VALUES (1307, '汉中市', '汉中', '', 13, 0);
INSERT INTO `we_area` VALUES (1308, '榆林市', '榆林', '', 13, 0);
INSERT INTO `we_area` VALUES (1309, '安康市', '安康', '', 13, 0);
INSERT INTO `we_area` VALUES (1310, '商洛地区', '商洛地区', '', 13, 0);
INSERT INTO `we_area` VALUES (1401, '武汉市', '武汉', '', 14, 0);
INSERT INTO `we_area` VALUES (1402, '黄石市', '黄石', '', 14, 0);
INSERT INTO `we_area` VALUES (1403, '襄樊市', '襄樊', '', 14, 0);
INSERT INTO `we_area` VALUES (1404, '十堰市', '十堰', '', 14, 0);
INSERT INTO `we_area` VALUES (1405, '荆州市', '荆州', '', 14, 0);
INSERT INTO `we_area` VALUES (1406, '宜昌市', '宜昌', '', 14, 0);
INSERT INTO `we_area` VALUES (1407, '荆门市', '荆门', '', 14, 0);
INSERT INTO `we_area` VALUES (1408, '鄂州市', '鄂州', '', 14, 0);
INSERT INTO `we_area` VALUES (1409, '孝感市', '孝感', '', 14, 0);
INSERT INTO `we_area` VALUES (1410, '黄冈市', '黄冈', '', 14, 0);
INSERT INTO `we_area` VALUES (1411, '咸宁市', '咸宁', '', 14, 0);
INSERT INTO `we_area` VALUES (1412, '随州市', '随州', '', 14, 0);
INSERT INTO `we_area` VALUES (1413, '仙桃市', '仙桃', '', 14, 0);
INSERT INTO `we_area` VALUES (1414, '天门市', '天门', '', 14, 0);
INSERT INTO `we_area` VALUES (1415, '潜江市', '潜江', '', 14, 0);
INSERT INTO `we_area` VALUES (1416, '神农架', '神农架', '', 14, 0);
INSERT INTO `we_area` VALUES (1417, '恩施州', '恩施', '', 14, 0);
INSERT INTO `we_area` VALUES (1501, '郑州市', '郑州', '', 15, 0);
INSERT INTO `we_area` VALUES (1502, '开封市', '开封', '', 15, 0);
INSERT INTO `we_area` VALUES (1503, '洛阳市', '洛阳', '', 15, 0);
INSERT INTO `we_area` VALUES (1504, '平顶山市', '平顶山', '', 15, 0);
INSERT INTO `we_area` VALUES (1505, '焦作市', '焦作', '', 15, 0);
INSERT INTO `we_area` VALUES (1506, '鹤壁市', '鹤壁', '', 15, 0);
INSERT INTO `we_area` VALUES (1507, '新乡市', '新乡', '', 15, 0);
INSERT INTO `we_area` VALUES (1508, '安阳市', '安阳', '', 15, 0);
INSERT INTO `we_area` VALUES (1509, '濮阳市', '濮阳', '', 15, 0);
INSERT INTO `we_area` VALUES (1510, '许昌市', '许昌', '', 15, 0);
INSERT INTO `we_area` VALUES (1511, '漯河市', '漯河', '', 15, 0);
INSERT INTO `we_area` VALUES (1512, '三门峡市', '三门峡', '', 15, 0);
INSERT INTO `we_area` VALUES (1513, '南阳市', '南阳', '', 15, 0);
INSERT INTO `we_area` VALUES (1514, '商丘市', '商丘', '', 15, 0);
INSERT INTO `we_area` VALUES (1515, '信阳市', '信阳', '', 15, 0);
INSERT INTO `we_area` VALUES (1516, '周口市', '周口', '', 15, 0);
INSERT INTO `we_area` VALUES (1517, '驻马店市', '驻马店', '', 15, 0);
INSERT INTO `we_area` VALUES (1518, '济源市', '济源', '', 15, 0);
INSERT INTO `we_area` VALUES (1601, '石家庄市', '石家庄', '', 16, 0);
INSERT INTO `we_area` VALUES (1602, '唐山市', '唐山', '', 16, 0);
INSERT INTO `we_area` VALUES (1603, '秦皇岛市', '秦皇岛', '', 16, 0);
INSERT INTO `we_area` VALUES (1604, '邯郸市', '邯郸', '', 16, 0);
INSERT INTO `we_area` VALUES (1605, '邢台市', '邢台', '', 16, 0);
INSERT INTO `we_area` VALUES (1606, '保定市', '保定', '', 16, 0);
INSERT INTO `we_area` VALUES (1607, '张家口市', '张家口', '', 16, 0);
INSERT INTO `we_area` VALUES (1608, '承德市', '承德', '', 16, 0);
INSERT INTO `we_area` VALUES (1609, '沧州市', '沧州', '', 16, 0);
INSERT INTO `we_area` VALUES (1610, '廊坊市', '廊坊', '', 16, 0);
INSERT INTO `we_area` VALUES (1611, '衡水市', '衡水', '', 16, 0);
INSERT INTO `we_area` VALUES (1701, '太原市', '太原', '', 17, 0);
INSERT INTO `we_area` VALUES (1702, '大同市', '大同', '', 17, 0);
INSERT INTO `we_area` VALUES (1703, '阳泉市', '阳泉', '', 17, 0);
INSERT INTO `we_area` VALUES (1704, '长治市', '长治', '', 17, 0);
INSERT INTO `we_area` VALUES (1705, '晋城市', '晋城', '', 17, 0);
INSERT INTO `we_area` VALUES (1706, '朔州市', '朔州', '', 17, 0);
INSERT INTO `we_area` VALUES (1707, '晋中市', '晋中', '', 17, 0);
INSERT INTO `we_area` VALUES (1708, '忻州市', '忻州', '', 17, 0);
INSERT INTO `we_area` VALUES (1709, '临汾市', '临汾', '', 17, 0);
INSERT INTO `we_area` VALUES (1710, '运城市', '运城', '', 17, 0);
INSERT INTO `we_area` VALUES (1711, '吕梁地区', '吕梁地区', '', 17, 0);
INSERT INTO `we_area` VALUES (1801, '呼和浩特', '呼和浩特', '', 18, 0);
INSERT INTO `we_area` VALUES (1802, '包头市', '包头', '', 18, 0);
INSERT INTO `we_area` VALUES (1803, '乌海市', '乌海', '', 18, 0);
INSERT INTO `we_area` VALUES (1804, '赤峰市', '赤峰', '', 18, 0);
INSERT INTO `we_area` VALUES (1805, '通辽市', '通辽', '', 18, 0);
INSERT INTO `we_area` VALUES (1806, '鄂尔多斯', '鄂尔多斯', '', 18, 0);
INSERT INTO `we_area` VALUES (1807, '乌兰察布', '乌兰察布', '', 18, 0);
INSERT INTO `we_area` VALUES (1808, '锡林郭勒', '锡林郭勒', '', 18, 0);
INSERT INTO `we_area` VALUES (1809, '呼伦贝尔', '呼伦贝尔', '', 18, 0);
INSERT INTO `we_area` VALUES (1810, '巴彦淖尔', '巴彦淖尔', '', 18, 0);
INSERT INTO `we_area` VALUES (1811, '阿拉善盟', '阿拉善盟', '', 18, 0);
INSERT INTO `we_area` VALUES (1812, '兴安盟', '兴安盟', '', 18, 0);
INSERT INTO `we_area` VALUES (1901, '长春市', '长春', '', 19, 0);
INSERT INTO `we_area` VALUES (1902, '吉林市', '吉林', '', 19, 0);
INSERT INTO `we_area` VALUES (1903, '四平市', '四平', '', 19, 0);
INSERT INTO `we_area` VALUES (1904, '辽源市', '辽源', '', 19, 0);
INSERT INTO `we_area` VALUES (1905, '通化市', '通化', '', 19, 0);
INSERT INTO `we_area` VALUES (1906, '白山市', '白山', '', 19, 0);
INSERT INTO `we_area` VALUES (1907, '松原市', '松原', '', 19, 0);
INSERT INTO `we_area` VALUES (1908, '白城市', '白城', '', 19, 0);
INSERT INTO `we_area` VALUES (1909, '延边州', '延边', '', 19, 0);
INSERT INTO `we_area` VALUES (2001, '哈尔滨市', '哈尔滨', '', 20, 0);
INSERT INTO `we_area` VALUES (2002, '齐齐哈尔', '齐齐哈尔', '', 20, 0);
INSERT INTO `we_area` VALUES (2003, '鹤岗市', '鹤岗', '', 20, 0);
INSERT INTO `we_area` VALUES (2004, '双鸭山市', '双鸭山', '', 20, 0);
INSERT INTO `we_area` VALUES (2005, '鸡西市', '鸡西', '', 20, 0);
INSERT INTO `we_area` VALUES (2006, '大庆市', '大庆', '', 20, 0);
INSERT INTO `we_area` VALUES (2007, '伊春市', '伊春', '', 20, 0);
INSERT INTO `we_area` VALUES (2008, '牡丹江市', '牡丹江', '', 20, 0);
INSERT INTO `we_area` VALUES (2009, '佳木斯市', '佳木斯', '', 20, 0);
INSERT INTO `we_area` VALUES (2010, '七台河市', '七台河', '', 20, 0);
INSERT INTO `we_area` VALUES (2011, '黑河市', '黑河', '', 20, 0);
INSERT INTO `we_area` VALUES (2012, '绥化市', '绥化', '', 20, 0);
INSERT INTO `we_area` VALUES (2013, '大兴安岭', '大兴安岭', '', 20, 0);
INSERT INTO `we_area` VALUES (2101, '合肥市', '合肥', '', 21, 0);
INSERT INTO `we_area` VALUES (2102, '芜湖市', '芜湖', '', 21, 0);
INSERT INTO `we_area` VALUES (2103, '蚌埠市', '蚌埠', '', 21, 0);
INSERT INTO `we_area` VALUES (2104, '淮南市', '淮南', '', 21, 0);
INSERT INTO `we_area` VALUES (2105, '马鞍山市', '马鞍山', '', 21, 0);
INSERT INTO `we_area` VALUES (2106, '淮北市', '淮北', '', 21, 0);
INSERT INTO `we_area` VALUES (2107, '铜陵市', '铜陵', '', 21, 0);
INSERT INTO `we_area` VALUES (2108, '安庆市', '安庆', '', 21, 0);
INSERT INTO `we_area` VALUES (2109, '黄山市', '黄山', '', 21, 0);
INSERT INTO `we_area` VALUES (2110, '滁州市', '滁州', '', 21, 0);
INSERT INTO `we_area` VALUES (2111, '阜阳市', '阜阳', '', 21, 0);
INSERT INTO `we_area` VALUES (2112, '宿州市', '宿州', '', 21, 0);
INSERT INTO `we_area` VALUES (2113, '巢湖市', '巢湖', '', 21, 0);
INSERT INTO `we_area` VALUES (2114, '六安市', '六安', '', 21, 0);
INSERT INTO `we_area` VALUES (2115, '亳州市', '亳州', '', 21, 0);
INSERT INTO `we_area` VALUES (2116, '宣城市', '宣城', '', 21, 0);
INSERT INTO `we_area` VALUES (2117, '池州市', '池州', '', 21, 0);
INSERT INTO `we_area` VALUES (2201, '长沙市', '长沙', '', 22, 0);
INSERT INTO `we_area` VALUES (2202, '株州市', '株州', '', 22, 0);
INSERT INTO `we_area` VALUES (2203, '湘潭市', '湘潭', '', 22, 0);
INSERT INTO `we_area` VALUES (2204, '衡阳市', '衡阳', '', 22, 0);
INSERT INTO `we_area` VALUES (2205, '邵阳市', '邵阳', '', 22, 0);
INSERT INTO `we_area` VALUES (2206, '岳阳市', '岳阳', '', 22, 0);
INSERT INTO `we_area` VALUES (2207, '常德市', '常德', '', 22, 0);
INSERT INTO `we_area` VALUES (2208, '张家界市', '张家界', '', 22, 0);
INSERT INTO `we_area` VALUES (2209, '益阳市', '益阳', '', 22, 0);
INSERT INTO `we_area` VALUES (2210, '郴州市', '郴州', '', 22, 0);
INSERT INTO `we_area` VALUES (2211, '永州市', '永州', '', 22, 0);
INSERT INTO `we_area` VALUES (2212, '怀化市', '怀化', '', 22, 0);
INSERT INTO `we_area` VALUES (2213, '娄底市', '娄底', '', 22, 0);
INSERT INTO `we_area` VALUES (2214, '湘西州', '湘西', '', 22, 0);
INSERT INTO `we_area` VALUES (2301, '南宁市', '南宁', '', 23, 0);
INSERT INTO `we_area` VALUES (2302, '柳州市', '柳州', '', 23, 0);
INSERT INTO `we_area` VALUES (2303, '桂林市', '桂林', '', 23, 0);
INSERT INTO `we_area` VALUES (2304, '梧州市', '梧州', '', 23, 0);
INSERT INTO `we_area` VALUES (2305, '北海市', '北海', '', 23, 0);
INSERT INTO `we_area` VALUES (2306, '防城港市', '防城港', '', 23, 0);
INSERT INTO `we_area` VALUES (2307, '钦州市', '钦州', '', 23, 0);
INSERT INTO `we_area` VALUES (2308, '贵港市', '贵港', '', 23, 0);
INSERT INTO `we_area` VALUES (2309, '玉林市', '玉林', '', 23, 0);
INSERT INTO `we_area` VALUES (2310, '南宁地区', '南宁地区', '', 23, 0);
INSERT INTO `we_area` VALUES (2311, '柳州地区', '柳地区', '', 23, 0);
INSERT INTO `we_area` VALUES (2312, '贺州地区', '贺地区', '', 23, 0);
INSERT INTO `we_area` VALUES (2313, '百色地区', '百色地区', '', 23, 0);
INSERT INTO `we_area` VALUES (2314, '河池地区', '河池地区', '', 23, 0);
INSERT INTO `we_area` VALUES (2401, '海口市', '海口', '', 24, 0);
INSERT INTO `we_area` VALUES (2402, '三亚市', '三亚', '', 24, 0);
INSERT INTO `we_area` VALUES (2403, '五指山市', '五指山', '', 24, 0);
INSERT INTO `we_area` VALUES (2404, '琼海市', '琼海', '', 24, 0);
INSERT INTO `we_area` VALUES (2405, '儋州市', '儋州', '', 24, 0);
INSERT INTO `we_area` VALUES (2406, '琼山市', '琼山', '', 24, 0);
INSERT INTO `we_area` VALUES (2407, '文昌市', '文昌', '', 24, 0);
INSERT INTO `we_area` VALUES (2408, '万宁市', '万宁', '', 24, 0);
INSERT INTO `we_area` VALUES (2409, '东方市', '东方', '', 24, 0);
INSERT INTO `we_area` VALUES (2410, '澄迈县', '澄迈县', '', 24, 0);
INSERT INTO `we_area` VALUES (2411, '定安县', '定安县', '', 24, 0);
INSERT INTO `we_area` VALUES (2412, '屯昌县', '屯昌县', '', 24, 0);
INSERT INTO `we_area` VALUES (2413, '临高县', '临高县', '', 24, 0);
INSERT INTO `we_area` VALUES (2414, '白沙县', '白沙县', '', 24, 0);
INSERT INTO `we_area` VALUES (2415, '昌江县', '昌江县', '', 24, 0);
INSERT INTO `we_area` VALUES (2416, '乐东县', '乐东县', '', 24, 0);
INSERT INTO `we_area` VALUES (2417, '陵水县', '陵水县', '', 24, 0);
INSERT INTO `we_area` VALUES (2418, '保亭县', '保亭县', '', 24, 0);
INSERT INTO `we_area` VALUES (2419, '琼中县', '琼中县', '', 24, 0);
INSERT INTO `we_area` VALUES (2501, '昆明市', '昆明', '', 25, 0);
INSERT INTO `we_area` VALUES (2502, '曲靖市', '曲靖', '', 25, 0);
INSERT INTO `we_area` VALUES (2503, '玉溪市', '玉溪', '', 25, 0);
INSERT INTO `we_area` VALUES (2504, '保山市', '保山', '', 25, 0);
INSERT INTO `we_area` VALUES (2505, '昭通市', '昭通', '', 25, 0);
INSERT INTO `we_area` VALUES (2506, ' 普洱市', ' 普洱', '', 25, 0);
INSERT INTO `we_area` VALUES (2507, '临沧市', '临沧', '', 25, 0);
INSERT INTO `we_area` VALUES (2508, '丽江市', '丽江', '', 25, 0);
INSERT INTO `we_area` VALUES (2509, '文山州', '文山', '', 25, 0);
INSERT INTO `we_area` VALUES (2510, '红河州', '红河', '', 25, 0);
INSERT INTO `we_area` VALUES (2511, '西双版纳', '西双版纳', '', 25, 0);
INSERT INTO `we_area` VALUES (2512, '楚雄州', '楚雄', '', 25, 0);
INSERT INTO `we_area` VALUES (2513, '大理州', '大理', '', 25, 0);
INSERT INTO `we_area` VALUES (2514, '德宏州', '德宏', '', 25, 0);
INSERT INTO `we_area` VALUES (2515, '怒江州', '怒江', '', 25, 0);
INSERT INTO `we_area` VALUES (2516, '迪庆州', '迪庆', '', 25, 0);
INSERT INTO `we_area` VALUES (2601, '贵阳市', '贵阳', '', 26, 0);
INSERT INTO `we_area` VALUES (2602, '六盘水市', '六盘水', '', 26, 0);
INSERT INTO `we_area` VALUES (2603, '遵义市', '遵义', '', 26, 0);
INSERT INTO `we_area` VALUES (2604, '安顺市', '安顺', '', 26, 0);
INSERT INTO `we_area` VALUES (2605, '铜仁地区', '铜仁地区', '', 26, 0);
INSERT INTO `we_area` VALUES (2606, '毕节地区', '毕节地区', '', 26, 0);
INSERT INTO `we_area` VALUES (2607, '黔西南州', '黔西南', '', 26, 0);
INSERT INTO `we_area` VALUES (2608, '黔东南州', '黔东南', '', 26, 0);
INSERT INTO `we_area` VALUES (2609, '黔南州', '黔南', '', 26, 0);
INSERT INTO `we_area` VALUES (2701, '拉萨市', '拉萨', '', 27, 0);
INSERT INTO `we_area` VALUES (2702, '那曲地区', '那曲地区', '', 27, 0);
INSERT INTO `we_area` VALUES (2703, '昌都地区', '昌都地区', '', 27, 0);
INSERT INTO `we_area` VALUES (2704, '山南地区', '山南地区', '', 27, 0);
INSERT INTO `we_area` VALUES (2705, '日喀则', '日喀则', '', 27, 0);
INSERT INTO `we_area` VALUES (2706, '阿里地区', '阿里地区', '', 27, 0);
INSERT INTO `we_area` VALUES (2707, '林芝地区', '林芝地区', '', 27, 0);
INSERT INTO `we_area` VALUES (2801, '兰州市', '兰州', '', 28, 0);
INSERT INTO `we_area` VALUES (2802, '金昌市', '金昌', '', 28, 0);
INSERT INTO `we_area` VALUES (2803, '白银市', '白银', '', 28, 0);
INSERT INTO `we_area` VALUES (2804, '天水市', '天水', '', 28, 0);
INSERT INTO `we_area` VALUES (2805, '嘉峪关市', '嘉峪关', '', 28, 0);
INSERT INTO `we_area` VALUES (2806, '武威市', '武威', '', 28, 0);
INSERT INTO `we_area` VALUES (2807, '定西地区', '定西地区', '', 28, 0);
INSERT INTO `we_area` VALUES (2808, '平凉地区', '平凉地区', '', 28, 0);
INSERT INTO `we_area` VALUES (2809, '庆阳地区', '庆阳地区', '', 28, 0);
INSERT INTO `we_area` VALUES (2810, '陇南地区', '陇南地区', '', 28, 0);
INSERT INTO `we_area` VALUES (2811, '张掖地区', '张掖地区', '', 28, 0);
INSERT INTO `we_area` VALUES (2812, '酒泉地区', '酒泉地区', '', 28, 0);
INSERT INTO `we_area` VALUES (2813, '甘南州', '甘南', '', 28, 0);
INSERT INTO `we_area` VALUES (2814, '临夏州', '临夏', '', 28, 0);
INSERT INTO `we_area` VALUES (2901, '银川市', '银川', '', 29, 0);
INSERT INTO `we_area` VALUES (2902, '石嘴山市', '石嘴山', '', 29, 0);
INSERT INTO `we_area` VALUES (2903, '吴忠市', '吴忠', '', 29, 0);
INSERT INTO `we_area` VALUES (2904, '固原市', '固原', '', 29, 0);
INSERT INTO `we_area` VALUES (3001, '西宁市', '西宁', '', 30, 0);
INSERT INTO `we_area` VALUES (3002, '海东地区', '海东地区', '', 30, 0);
INSERT INTO `we_area` VALUES (3003, '海北州', '海北', '', 30, 0);
INSERT INTO `we_area` VALUES (3004, '黄南州', '黄南', '', 30, 0);
INSERT INTO `we_area` VALUES (3005, '海南州', '海南', '', 30, 0);
INSERT INTO `we_area` VALUES (3006, '果洛州', '果洛', '', 30, 0);
INSERT INTO `we_area` VALUES (3007, '玉树州', '玉树', '', 30, 0);
INSERT INTO `we_area` VALUES (3008, '海西州', '海西', '', 30, 0);
INSERT INTO `we_area` VALUES (3101, '乌鲁木齐', '乌鲁木齐', '', 31, 0);
INSERT INTO `we_area` VALUES (3102, '克拉玛依', '克拉玛依', '', 31, 0);
INSERT INTO `we_area` VALUES (3103, '石河子市', '石河子', '', 31, 0);
INSERT INTO `we_area` VALUES (3104, '吐鲁番', '吐鲁番', '', 31, 0);
INSERT INTO `we_area` VALUES (3105, '哈密地区', '哈密地区', '', 31, 0);
INSERT INTO `we_area` VALUES (3106, '和田地区', '和田地区', '', 31, 0);
INSERT INTO `we_area` VALUES (3107, '阿克苏', '阿克苏', '', 31, 0);
INSERT INTO `we_area` VALUES (3108, '喀什地区', '喀什地区', '', 31, 0);
INSERT INTO `we_area` VALUES (3109, '克孜勒苏', '克孜勒苏', '', 31, 0);
INSERT INTO `we_area` VALUES (3110, '巴音郭楞', '巴音郭楞', '', 31, 0);
INSERT INTO `we_area` VALUES (3111, '昌吉州', '昌吉', '', 31, 0);
INSERT INTO `we_area` VALUES (3112, '博尔塔拉', '博尔塔拉', '', 31, 0);
INSERT INTO `we_area` VALUES (3113, '伊犁州', '伊犁', '', 31, 0);
INSERT INTO `we_area` VALUES (3201, '香港岛', '香港岛', '', 32, 0);
INSERT INTO `we_area` VALUES (3202, '九龙', '九龙', '', 32, 0);
INSERT INTO `we_area` VALUES (3203, '新界', '新界', '', 32, 0);
INSERT INTO `we_area` VALUES (3301, '澳门半岛', '澳门半岛', '', 33, 0);
INSERT INTO `we_area` VALUES (3302, '离岛', '离岛', '', 33, 0);
INSERT INTO `we_area` VALUES (3401, '台北市', '台北', '', 34, 0);
INSERT INTO `we_area` VALUES (3402, '高雄市', '高雄', '', 34, 0);
INSERT INTO `we_area` VALUES (3403, '台南市', '台南', '', 34, 0);
INSERT INTO `we_area` VALUES (3404, '台中市', '台中', '', 34, 0);
INSERT INTO `we_area` VALUES (3405, '金门县', '金门县', '', 34, 0);
INSERT INTO `we_area` VALUES (3406, '南投县', '南投县', '', 34, 0);
INSERT INTO `we_area` VALUES (3407, '基隆市', '基隆', '', 34, 0);
INSERT INTO `we_area` VALUES (3408, '新竹市', '新竹', '', 34, 0);
INSERT INTO `we_area` VALUES (3409, '嘉义市', '嘉义', '', 34, 0);
INSERT INTO `we_area` VALUES (3410, '新北市', '新北', '', 34, 0);
INSERT INTO `we_area` VALUES (3411, '宜兰县', '宜兰县', '', 34, 0);
INSERT INTO `we_area` VALUES (3412, '新竹县', '新竹县', '', 34, 0);
INSERT INTO `we_area` VALUES (3413, '桃园县', '桃园县', '', 34, 0);
INSERT INTO `we_area` VALUES (3414, '苗栗县', '苗栗县', '', 34, 0);
INSERT INTO `we_area` VALUES (3415, '彰化县', '彰化县', '', 34, 0);
INSERT INTO `we_area` VALUES (3416, '嘉义县', '嘉义县', '', 34, 0);
INSERT INTO `we_area` VALUES (3417, '云林县', '云林县', '', 34, 0);
INSERT INTO `we_area` VALUES (3418, '屏东县', '屏东县', '', 34, 0);
INSERT INTO `we_area` VALUES (3419, '台东县', '台东县', '', 34, 0);
INSERT INTO `we_area` VALUES (3420, '花莲县', '花莲县', '', 34, 0);
INSERT INTO `we_area` VALUES (3421, '澎湖县', '澎湖县', '', 34, 0);
INSERT INTO `we_area` VALUES (6001, '美国', '美国', '', 60, 0);
INSERT INTO `we_area` VALUES (6002, '英国', '英国', '', 60, 0);
INSERT INTO `we_area` VALUES (6003, '法国', '法国', '', 60, 0);
INSERT INTO `we_area` VALUES (6004, '俄罗斯', '俄罗斯', '', 60, 0);
INSERT INTO `we_area` VALUES (6005, '加拿大', '加拿大', '', 60, 0);
INSERT INTO `we_area` VALUES (6006, '巴西', '巴西', '', 60, 0);
INSERT INTO `we_area` VALUES (6007, '澳大利亚', '澳大利亚', '', 60, 0);
INSERT INTO `we_area` VALUES (6008, '印尼', '印尼', '', 60, 0);
INSERT INTO `we_area` VALUES (6009, '马来西亚', '马来西亚', '', 60, 0);
INSERT INTO `we_area` VALUES (6010, '新加坡', '新加坡', '', 60, 0);
INSERT INTO `we_area` VALUES (6011, '菲律宾', '菲律宾', '', 60, 0);
INSERT INTO `we_area` VALUES (6012, '越南', '越南', '', 60, 0);
INSERT INTO `we_area` VALUES (6013, '印度', '印度', '', 60, 0);
INSERT INTO `we_area` VALUES (6014, '日本', '日本', '', 60, 0);
INSERT INTO `we_area` VALUES (6015, '韩国', '韩国', '', 60, 0);
INSERT INTO `we_area` VALUES (6016, '泰国', '泰国', '', 60, 0);
INSERT INTO `we_area` VALUES (6017, '缅甸', '缅甸', '', 60, 0);
INSERT INTO `we_area` VALUES (6018, '其他', '其他', '', 60, 0);
COMMIT;

-- ----------------------------
-- Table structure for we_article
-- ----------------------------
DROP TABLE IF EXISTS `we_article`;
CREATE TABLE `we_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `short_title` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `copyfrom` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `content` text COMMENT '内容',
  `description` text COMMENT '摘要描述',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `comment_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `delete_status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_article
-- ----------------------------
BEGIN;
INSERT INTO `we_article` VALUES (1, '全球设计行业组织的建立', '', '', '', '', '', '/uploads/img1/20200409/5e8e753535684.png', '<p>40国联合成立全球设计产业组织，在烟台发布设计产业宣言！\n\n1919年，现代工业设计在德国诞生。\n\n2019年，来自40个国家的创新设计代表齐聚烟台，见证工业设计的新时代。\n\n设计行业正站在历史的舞台上！\n\n10月18日至20日，2019世界工业设计大会在山东烟台隆重开幕。全球40个国家共同发起成立了第一个全球设计产业组织。全球设计创新者达成共识，共同发布《设计产业宣言》，以设计创新，规划发展历程，绘制产业蓝图，服务民生，保护生态环境，创造美好生活！</p>', '40国联合成立全球设计产业组织，在烟台发布设计产业宣言！\n\n1919年，现代工业设计在德国诞生。\n\n2019年，来自40个国家的创新设计代表齐聚烟台，见证工业设计的新时代。\n\n设计行业正站在历史的舞台上！\n\n10月18日至20日，2019世界工业设计大会在山东烟台隆重开幕。全球40个国家共同发起成立了第一个全球设计产业组织。全球设计创新者达成共识，共同发布《设计产业宣言》，以设计创新，规划发展历程，绘制产业蓝图，服务民生，保护生态环境，创造美好生活！', '2019-04-19 09:42:00', '2020-04-30 11:53:07', 95, 7, 98, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (2, 'WIDAhuibiao收集活动向您开放', '', '', '', '', '', '/uploads/img1/20200113/5e1c13d537637.jpg', '<div class=\"eventcont\"><p>Attention! We are launching the logo design collection event for GDIO. We \r\nneed your creative and original mind.</p><p>Still waiting? We call for your action! We are hungry for your creative \r\nideas!</p><p>Below is the information for logo design collection of GDIO:</p><p>Reward:</p><p>-the first set of GDIO souvenirs for designers who contribute ideas for logo \r\ndesign.</p><p>-every set of GDIO souvenirs for the designer whose logo is adopted.</p><p>Design criteria:</p><p>-must be an original design.</p><p>-the idea of the logo should be aligned with the initiative and mission.</p><p>For your reference:</p><p>The initiative and mission of GDIO are to unite resources and fully exert \r\ncreativity, value, and leadership of design innovation. We strive to build up a \r\nglobal community platform for open collaborations between entrepreneurs and \r\ndesigners relying on the whole industry chain. With the final goal of achieving \r\nhigh-quality and sustainable development, we are committed to promoting \r\nindustrial design around the world.</p><p>Deadline for submission:</p><p>January 15, 2020</p><p>Please send the design in png/jpg format to widc2019@vip.163.com, and also \r\nattach a short explanation for the logo design. We are eager to see your \r\nwonderful logo design which will be remembered along with GDIO. Together, for a \r\nbetter GDIO.</p></div>', 'Attention! We are launching the logo design collection event for GDIO. We need your creative and original mind.  \r\nStill waiting? We call for your action! We are hungry for your creative ideas! \r\nBelow is the information for logo design collection of GDIO:\r\nReward:	\r\n-the first set of GDIO souvenirs for designers who contribute ideas for logo design.\r\n-every set of GDIO souvenirs for the designer whose logo is adopted.\r\nDesign criteria:\r\n-must be an original design.\r\n-the idea of the logo should be aligned with the initiative and mission.\r\nFor your reference:\r\nThe initiative and mission of GDIO are to unite resources and fully exert creativity, value, and leadership of design innovation. We strive to build up a global community platform for open collaborations between entrepreneurs and designers relying on the whole industry chain. With the final goal of achieving high-quality and sustainable development, we are committed to promoting industrial design around the world.\r\nDeadline for submission:\r\nJanuary 15, 2020\r\nPlease send the design in png/jpg format to widc2019@vip.163.com, and also attach a short explanation for the logo design. We are eager to see your wonderful logo design which will be remembered along with GDIO. Together, for a better GDIO.\r\n', '2019-12-16 09:42:00', '2020-03-30 10:32:31', 0, 7, 100, 0, 5, '', 1, 1, 0, 1);
INSERT INTO `we_article` VALUES (3, '2019', '', '', '', '', '', '/uploads/img1/20200116/5e1fb2b78a3e7.png', '<p><img src=\"/uploads/img1/20200210/5e4100c27c37c.png\" title=\"5e4100c27c37c.png\" _src=\"/uploads/img1/20200210/5e4100c27c37c.png\" alt=\"2019.png\"/></p><p>2019 World Industrial Design Conference was grandly held in Yantai, Shandong \r\nProvince from October 18 to 20, with the theme of “Design Sparks Innovation \r\nEngine”. More than 2,000 delegates from over 40 countries and regions were all \r\nrepresented, including representatives from government agencies and \r\norganizations, experts and scholars, entrepreneurs, designers, and other \r\ninnovation leaders. Taking the design industry as the core, effective \r\ndiscussions were held to ensure information sharing, exchange and cooperation on \r\nreplacing old growth drivers with new ones and promoting high-quality \r\ndevelopment.</p><p><img src=\"/uploads/img1/20200410/5e8fc359495e7.jpg\" title=\"5e8fc359495e7.jpg\" _src=\"/uploads/img1/20200410/5e8fc359495e7.jpg\" alt=\"2019WIDC.jpg\"/></p><p><br/></p>', '2019 World Industrial Design Conference was grandly held in Yantai, Shandong Province from October 18 to 20, with the theme of “Design Sparks Innovation Engine”. More than 2,000 delegates from over 40 countries and regions were all represented, including representatives from government agencies and organizations, experts and scholars, entrepreneurs, designers, and other innovation leaders. Taking the design industry as the core, effective discussions were held to ensure information sharing, exchange and cooperation on replacing old growth drivers with new ones and promoting high-quality development.\r\n\r\n', '2020-01-13 09:28:29', '2020-04-10 08:52:44', 38, 8, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (4, '2018', '', '', '', '', '', '/uploads/img1/20200116/5e1fb320819ea.png', '<p><img src=\"/uploads/img1/20200210/5e4100ab6749d.png\" title=\"5e4100ab6749d.png\" _src=\"/uploads/img1/20200210/5e4100ab6749d.png\" alt=\"2018.png\"/></p><p>2018 World Industrial Design Conference (WIDC2018) was held on April 21-22 in \r\nMengqi Town of Designers, Liangzhu, Zhejiang. With the theme of “Design • \r\nEcology”, the Conference brought together thousands of representatives of \r\nexperts, scholars, entrepreneurs and government leaders from all over the world \r\nto engage in exchange and cooperation on the integrated innovation of human \r\nculture, environment and industries.</p><p>During the conference, organized dozens of design industry cooperation fairs; \r\nat the opening ceremony, announced the design poverty alleviation initiative, \r\nlaunched the Open University for Design, signed a number of major cooperation \r\nprojects, held the TIA design award award ceremony; at the same time, organized \r\nthe design industry Achievement release, National Council of Design Education \r\nBranch of China Industrial Design Association, International Design Education \r\nSummit Forum, International User Experience Design Forum, Preparatory Meeting of \r\nNational Council of User Experience Industry Branch of China Industrial Design \r\nAssociation, etc. In addition, &quot;Design · Technology&quot;, &quot; “Design, \r\nEntrepreneurship”, “Design as Source, Enabling Ecology”, etc. Nearly 20 \r\nprofessional forums were held concurrently with the conference.</p><p><img src=\"/uploads/img1/20200410/5e8fc342888b9.jpg\" title=\"5e8fc342888b9.jpg\" _src=\"/uploads/img1/20200410/5e8fc342888b9.jpg\" alt=\"2018WIDC.jpg\"/></p><p><br/></p>', '       2018 World Industrial Design Conference\r\n\r\n图层 1.png\r\n\r\n2018 World Industrial Design Conference (WIDC2018) was held on April 21-22 in Mengqi Town of Designers, Liangzhu, Zhejiang. With the theme of “Design • Ecology”, the Conference brought together thousands of representatives of experts, scholars, entrepreneurs and government leaders from all over the world to engage in exchange and cooperation on the integrated innovation of human culture, environment and industries.\r\n\r\nI. WIDC2018 Design Industry Cooperation Meeting\r\n\r\n\r\n\r\n\r\n\r\nII. MIIT Met with UNIDO and Signed an Agreement\r\n\r\nIII. Opening Ceremony of WIDC2018\r\n\r\nIV. Conference Speech\r\n\r\nV. Release Design for Poverty Alleviation Initiative\r\n\r\nVI. WIDC2018 Signing Ceremony\r\n\r\nVII. Pioneering in the World | Launching Ceremony of Open University of Design\r\n\r\nVIII. TIA Award Ceremony', '2020-01-13 09:38:04', '2020-04-10 08:52:22', 65, 8, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (5, '2016', '', '', '', '', '', '/uploads/img1/20200410/5e8fc3145d41a.jpg!300X300.jpg', '<p></p><p><img src=\"/uploads/img1/20200410/5e8fc3145d41a.jpg\" title=\"5e8fc3145d41a.jpg\" _src=\"/uploads/img1/20200410/5e8fc3145d41a.jpg\" alt=\"510883112279962416副本.jpg\"/></p><p>2016年12月，首届世界工业设计大会隆重举行，来自世界各地的千余名设计精英前往杭州隆重庆祝。会议期间，举办了10多场创新论坛和近30场设计产业多边会谈，涵盖设计产业发展峰会、设计发展圆桌峰会、工业设计产业发展全国高端对话以及设计教育、设计产业、服务设计论坛等。大会发布了全球设计行动计划《良渚设计宣言》，倡导共同打造面向未来的设计生态，培育开放共享的设计文化，追求包容协调的设计发展，引导设计资本可持续发展，以国际眼光帮助设计人才。同时，大会发布了《2016中国工业设计产业发展报告》（绿皮书）。《绿皮书》全面展示了近年来工业设计行业的发展。会议期间，国际设计组织、国家设计协会、设计机构和设计机构签署了一揽子合作备忘录。</p><p></p><p></p><p><img src=\"/uploads/img1/20200410/5e8fc2f8bbec4.jpg\" title=\"5e8fc2f8bbec4.jpg\" _src=\"/uploads/img1/20200410/5e8fc2f8bbec4.jpg\" alt=\"2016WIDC.jpg\"/></p>', '2016年12月，首届世界工业设计大会隆重举行，来自世界各地的千余名设计精英前往杭州隆重庆祝。会议期间，举办了10多场创新论坛和近30场设计产业多边会谈，涵盖设计产业发展峰会、设计发展圆桌峰会、工业设计产业发展全国高端对话以及设计教育、设计产业、服务设计论坛等。大会发布了全球设计行动计划《良渚设计宣言》，倡导共同打造面向未来的设计生态，培育开放共享的设计文化，追求包容协调的设计发展，引导设计资本可持续发展，以国际眼光帮助设计人才。同时，大会发布了《2016中国工业设计产业发展报告》（绿皮书）。《绿皮书》全面展示了近年来工业设计行业的发展。会议期间，国际设计组织、国家设计协会、设计机构和设计机构签署了一揽子合作备忘录。', '2020-01-13 09:38:15', '2020-04-10 08:51:50', 89, 8, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (6, '2017', '', '', '', '', '', '/uploads/img1/20200113/5e1bd0674c2d0.jpg', '', '', '2020-01-13 10:04:25', '2020-01-13 10:05:29', 52, 8, 100, 1, 1, '', 1, 1, 0, 1);
INSERT INTO `we_article` VALUES (7, '2020', '', '', '', '', '', '/uploads/img1/20200113/5e1bd059a7e05.jpg', '', '', '2020-01-13 10:04:40', '2020-01-13 10:05:16', 40, 8, 100, 1, 1, '', 1, 1, 0, 1);
INSERT INTO `we_article` VALUES (8, 'Visit to Advanced Equipment Manufacturing: CIMC Raffles', '', '', '', '', '', '/uploads/img1/20200113/5e1be4566b83e.jpg', '<div class=\"eventcont\"><p>GDIO champions the idea of improving the exchange and communication within the design industry for better development. On October 21, 2019, with over 30 professionals from the design industry, governments, and international organizations around the world, a field visit was paid to CIMC Raffles.</p><p><img src=\"/uploads/img1/20200115/5e1ed7d8bda67.jpg\" title=\"5e1ed7d8bda67.jpg\" _src=\"/uploads/img1/20200115/5e1ed7d8bda67.jpg\" alt=\"1111.jpg\"/></p><p>CIMC Raffles is a subsidiary affiliated to the CIMC group. It is specialized in providing advanced major equipment on seas. Through this field visit to CIMC Raffles, participants had the opportunity to climb on a gigantic offshore drilling platform and to inspect the operation site. Being interested in the offshore drilling platform, everyone present was engaged in lively exchange and discussion.</p><p>But the industrial visit didn’t stop here. GDIO is committed to bringing more opportunities to exchange, interact, and inspire.</p><p><br/></p></div>', 'GDIO champions the idea of improving the exchange and communication within the design industry for better development. On October 21, 2019, with over 30 professionals from the design industry, governments, and international organizations around the world, a field visit was paid to CIMC Raffles.\r\n\r\nCIMC Raffles is a subsidiary affiliated to the CIMC group. It is specialized in providing advanced major equipment on seas. Through this field visit to CIMC Raffles, participants had the opportunity to climb on a gigantic offshore drilling platform and to inspect the operation site. Being interested in the offshore drilling platform, everyone present was engaged in lively exchange and discussion.\r\n\r\nBut the industrial visit didn’t stop here. GDIO is committed to bringing more opportunities to exchange, interact, and inspire. \r\n\r\n', '2020-01-13 11:30:13', '2020-02-11 21:28:16', 85, 12, 100, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (17, '设计师专业技能培训和能力认证', '', '', '', '', '', '/uploads/img1/20200328/5e7ee68d2c74e.png!300X300.jpg', '<div class=\"eventcont\"><p>目前，我们已经在中国开展了设计师职业技能培训和能力认证。3000多名设计师正在接受加拿大国际开发署的技能水平认证。更多的全球设计师将获得该项目的认证。我们也希望更多的WIDA成员能够进行设计师技能认证的国际互认。</p><p><img src=\"/uploads/img1/20200328/5e7ee68d2c74e.png\" title=\"5e7ee68d2c74e.png\" _src=\"/uploads/img1/20200328/5e7ee68d2c74e.png\" alt=\"4.4.1.png\"/></p></div>', '目前，我们已经在中国开展了设计师职业技能培训和能力认证。3000多名设计师正在接受加拿大国际开发署的技能水平认证。更多的全球设计师将获得该项目的认证。我们也希望更多的WIDA成员能够进行设计师技能认证的国际互认。', '2020-03-28 09:59:55', '2023-04-20 09:34:16', 82, 11, 4, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (19, '《新冠肺炎预防手册》在国际网络上广受好评！', '', '', '', '', '', '/uploads/img1/20200526/5ecd04cbabefa.jpg', '<p>目前，冠状病毒疫情已成为全球突发公共事件。许多国家正在学习中国的疫情防控模式。《新冠肺炎预防手册》已翻译成中文、英文、日文、韩文和其他语言。由于其精美的设计、生动的表达、科学的预防措施以及适合所有年龄段的风格，它在全球10多个国家得到了广泛的传播和好评。', '目前，冠状病毒疫情已成为全球突发公共事件。许多国家正在学习中国的疫情防控模式。《新冠肺炎预防手册》已翻译成中文、英文、日文、韩文和其他语言。由于其精美的设计、生动的表达、科学的预防措施以及适合所有年龄段的风格，它在全球10多个国家得到了广泛的传播和好评。', '2020-03-18 11:42:00', '2020-05-26 20:00:21', 30, 7, 101, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (9, '2019年维也纳新闻发布会', '', '', '', '', '', '/uploads/img1/20200409/5e8e79e3906de.png', '<p>On March 29, 2019, with the support of the United Nations Industrial \r\nDevelopment Organization (UNIDO), the Press Conference of 2019 World Industrial \r\nDesign Conference &amp; Industrial Design World Expo (2019 WIDC&amp;IDWE) was \r\nsuccessfully held in Vienna, Austria at 10 a.m. local time.</p><p><img src=\"/uploads/img1/20200306/5e626fd9e0fdb.jpg\" _src=\"/uploads/img1/20200306/5e626fd9e0fdb.jpg\" title=\"5e626fd9e0fdb.jpg\"/><br/></p><p></p><p>The Press Conference officially announced to the world that 2019 World \r\nIndustrial Design Conference &amp; Industrial Design World Expo (2019 \r\nWIDC&amp;IDWE) will take place in Yantai, China, on October 18. With a more open \r\nand sharing attitude, China is inviting global design elites to come to Yantai, \r\nShandong, one of the birthplaces of national industry of China, so as to jointly \r\npromote the design industry towards a better, more sustainable, more ecological, \r\nand more cultural development. More than 100 people from governments, \r\ninternational institutions and organizations attended the press conference, \r\nincluding representatives from United Nations Industrial Development \r\nOrganization (UNIDO), People&#39;s Government of Yantai Municipal, China Industrial \r\nDesign Association (CIDA), Service Design Network, Sino-German Industrial Design \r\nCenter, design organizations from European countries, design institutes, leading \r\nenterprises and international media.</p>', 'On March 29, 2019, with the support of the United Nations Industrial Development Organization (UNIDO), the Press Conference of 2019 World Industrial Design Conference & Industrial Design World Expo (2019 WIDC&IDWE) was successfully held in Vienna, Austria at 10 a.m. local time. The Press Conference officially announced to the world that 2019 World Industrial Design Conference & Industrial Design World Expo (2019 WIDC&IDWE) will take place in Yantai, China, on October 18. With a more open and sharing attitude, China is inviting global design elites to come to Yantai, Shandong, one of the birthplaces of national industry of China, so as to jointly promote the design industry towards a better, more sustainable, more ecological, and more cultural development. More than 100 people from governments, international institutions and organizations attended the press conference, including representatives from United Nations Industrial Development Organization (UNIDO), People\'s Government of Yantai Municipal, China Industrial Design Association (CIDA), Service Design Network, Sino-German Industrial Design Center, design organizations from European countries, design institutes, leading enterprises and international media.\r\n', '2019-03-29 11:48:00', '2023-04-20 10:47:41', 55, 7, 96, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (20, 'WIDA口罩设计邀请函', '', '', '', '', '', '/uploads/img1/20200330/5e819ba861181.jpg', '<p>In effort to meet demands for the face mask, China mask companies are gearing \r\nup to the mask production. In addition, a great many Chinese designers are \r\npooling wisdom to cope with it by designing the various functions of face \r\nmasks.</p><p>Now we would therefore like to launch the face mask design collection event. \r\nIt will be greatly appreciated if you could design a creative face mask for the \r\nglobal battle against the virus. What’s more, we will recommend your design to \r\nthe face mask manufactures in China within three month. Once it is adopted, we \r\nwill help you to make it manufactured and marketed. If not, it will be also \r\nshowcased on the GDIO website as public works.</p><p>Below is the information for the face mask design collection of GDIO:</p><p>Design criteria:</p><p>-must be an original design.</p><p>-must provide the name, brief introduction, and pictures of the design.</p><p>Deadline for submission:</p><p>May 6, 2020</p><p>Please send the design in png/jpg format to this email, and also attach a \r\nshort explanation. We are eager to see your wonderful face mask design.</p><p>In the end, let’s take a look at four excellent works attached bellow, which \r\nwere designed by Chinese designers. We hope these examples could inspire you to \r\ndesign better works.</p><p><img style=\"vertical-align: middle; margin-right: 2px; width: 18px; height: 18px;\" src=\"/uploads/img1/20200330/5e818a4ec9489.png\" _src=\"/uploads/img1/20200330/5e818a4ec9489.png\" title=\"5e818a4ec9489.png\" alt=\"5e818a4ec9489.png\" width=\"18\" height=\"18\" border=\"0\" vspace=\"0\"/><span style=\"font-size: 18px;\">&nbsp;</span><span style=\"color: rgb(0, 102, 204); text-decoration: underline; font-size: 18px;\"><a target=\"_blank\" style=\"color: rgb(0, 102, 204); text-decoration: underline; font-size: 18px;\" href=\"/uploads/file1/20200410/5e8fc85a64110.pdf\" title=\"Face Mask Designed by Chinese Designers\">Click here to download</a></span></p><p><br/></p>', '为了满足对口罩的需求，中国口罩公司正在为口罩生产做准备。此外，许多中国设计师正在集思广益，通过设计口罩的各种功能来应对这种情况。', '2020-03-06 10:12:00', '2020-05-16 15:02:23', 41, 7, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (21, '感谢您参加WIDA徽标收集活动', '', '', '', '', '', '/uploads/img1/20200410/5e8fc9024023d.jpg', '<p>自2019年12月以来，WIDA的徽标收集活动已经启动\n\n它得到了世界各地的大力支持和积极响应\n\n许多优秀的国际设计师和设计组织。首先\n\n我们谨代表WIDA对您的光临表示感谢\n\n参加本次活动。到目前为止，我们已经收到了56多个标志作品\n\n来自10个国际设计师和设计组织&nbsp</p> <p><strong>参与者如下\n\n如下：</strong></p><p>Mathis Heller；德涛集团海勒工作室</p><p>韩国工业设计与商标协会</p><p>维多利亚大学Marc Aurel Schnabel\n\n惠灵顿</p><p>安哈尔特应用科学大学王森</p>安东尼·马吉亚索，上海宾尼法利纳</p>罗德里戈·奎罗斯，DDID/DXID</p>苏迪尔·夏尔马，POOL杂志</p><p>谢尔盖·斯米尔诺夫，斯米尔诺夫设计</p>蒂莫·里克，RAL gGmbH</p>Hrridaysh Deshpande，Ajeenkya DY Patil大学</p>最后，再次感谢您花时间设计这个精彩的标志\n\n作品我们衷心感谢您对WIDA的关注和大力支持。欢迎\n\n加入WIDA！</p><p><br/></p>', '自2019年12月以来，WIDA的徽标收集活动已经启动\n\n它得到了世界各地的大力支持和积极响应\n\n许多优秀的国际设计师和设计组织。首先\n\n我们谨代表WIDA对您的光临表示感谢\n\n参加本次活动。到目前为止，我们已经收到了56多个标志作品\n\n来自10个国际设计师和设计组织&nbsp</p> <p><strong>参与者如下\n\n如下：</strong></p><p>Mathis Heller；德涛集团海勒工作室</p><p>韩国工业设计与商标协会</p><p>维多利亚大学Marc Aurel Schnabel\n\n惠灵顿</p><p>安哈尔特应用科学大学王森</p>安东尼·马吉亚索，上海宾尼法利纳</p>罗德里戈·奎罗斯，DDID/DXID</p>苏迪尔·夏尔马，POOL杂志</p><p>谢尔盖·斯米尔诺夫，斯米尔诺夫设计</p>蒂莫·里克，RAL gGmbH</p>Hrridaysh Deshpande，Ajeenkya DY Patil大学</p>最后，再次感谢您花时间设计这个精彩的标志\n\n作品我们衷心感谢您对WIDA的关注和大力支持。欢迎\n\n加入WIDA！', '2020-04-10 09:13:10', '2020-05-20 10:00:29', 83, 7, 102, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (13, '德国智能制造专家与山东企业家对话', '2020年1月10日至11日，Sin专家委员会的两位德国智能制造专家', '', '', '', '', '/uploads/img1/20200516/5ebf9fb4ae48b.jpg', '<div class=\"eventcont\"><p>与企业的培训和合作是WIADA的重要工作。2020年1月10日至11日，中德工业设计中心专家委员会的两位德国智能制造专家Holm Fischäder和Markus Färber博士应邀访问山东省烟台市。他们与山东省100多位领军企业家就如何在智能制造背景下实现“向数字化生产流程转型”进行了讲座和讨论。<img src=\"/uploads/img1/20200328/5e7eeb1dc968c.jpg\" title=\"5e7eeb1dc968c.jpg\" _src=\"/uploads/img1/20200328/5e7eeb1dc968c.jpg\" alt=\"4.4.4.jpg\"/></p></div>', '2020年1月10日至11日，中德工业设计中心专家委员会的两位德国智能制造专家Holm Fischäder和Markus Färber博士应邀访问山东省烟台市。', '2020-02-09 14:02:03', '2023-04-20 09:45:23', 64, 11, 1, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (14, '工业设计领军人才培训计划', '2018年12月13日上午，为期一周的工信部组织的工业设计领军人才培养计划', '', '', '', '', '/uploads/img1/20200410/5e8fbfcc3cf65.jpg', '<div class=\"eventcont\"><p><span style=\"white-space: nowrap;\">培训一直是WIDA的一个重要关注点。该项目是在国际生态设计促进中心和开放设计大学的支持下，与国内</span></p><p><span style=\"white-space: nowrap;\">外相关设计学院和研究机构合作设计的。它向全球社会开放，特别是向“一带一路”沿线国家的政府官员、企</span></p><p><span style=\"white-space: nowrap;\">业负责人和学生开放。来自14个亚太国家的50多名参与者参加了该项目。</span></p><p><span style=\"white-space: nowrap;\"><br/></span></p><p><span style=\"white-space: nowrap;\">目前，该项目已于2018年和2019年分两期举行。2018年12月13日上午，为期一周的由工信部发起的工业设计</span></p><p><span style=\"white-space: nowrap;\">领军人才培养计划正式启动。来自14个亚太国家的50多名学员参加了该计划。</span></p><p><img src=\"/uploads/img1/20200410/5e8fbf25a14ab.jpg\" title=\"5e8fbf25a14ab.jpg\" _src=\"/uploads/img1/20200410/5e8fbf25a14ab.jpg\" alt=\"1.jpg\"/><br/></p><p></p></div>', '2018年12月13日上午，为期一周的工信部组织的工业设计领军人才培养计划', '2020-02-09 14:05:00', '2023-04-20 09:37:12', 21, 11, 3, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (11, '2018', '', '', '', '', '', '/uploads/img1/20200209/5e3f9b5bb7337.png!300X300.jpg', '<p><img src=\"/uploads/img1/20200209/5e3f9b5bb7337.png\" title=\"5e3f9b5bb7337.png\" _src=\"/uploads/img1/20200209/5e3f9b5bb7337.png\" alt=\"80001.png\"/></p><p>The First World Eco-Design Conference (WEDC) was successfully held from December 13 to 15, 2018 in Conghua Eco-Design Town, Guangzhou, China. With the theme of “Ecology of Design, Field of Hope”, the Conference has attracted over 1,000 guests from 81 design organizations and institutions across 36 countries and regions, bringing together experts, scholars, entrepreneurs, and government leaders from all over the world to discuss and collaborate on the integration and innovation of humanities, environment, ecology, and industries.</p><p><img src=\"/uploads/img1/20200306/5e61d3f596e11.jpg\" title=\"5e61d3f596e11.jpg\" _src=\"/uploads/img1/20200306/5e61d3f596e11.jpg\" alt=\"10143756.jpg\"/></p><p><img src=\"/uploads/img1/20200306/5e61d40f66b0e.jpg\" title=\"5e61d40f66b0e.jpg\" _src=\"/uploads/img1/20200306/5e61d40f66b0e.jpg\" alt=\"27323932.jpg\"/></p>', '', '2020-02-09 13:14:56', '2020-03-06 12:39:52', 20, 24, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (12, '2019', '', '', '', '', '', '/uploads/img1/20200306/5e61d44b0e18e.jpg', '<p><img src=\"/uploads/img1/20200306/5e61d460c7ab3.jpg\" title=\"5e61d460c7ab3.jpg\" _src=\"/uploads/img1/20200306/5e61d460c7ab3.jpg\" alt=\"微信图片_20200302135442.jpg\"/></p><p>The 2nd World Eco-Design Conference (WEDC) was held at the Conghua Eco-Design Town in Guangzhou from December 5th and 7th. On the theme of ‘innovative design, custom-made dream’, the conference attracted more than 30 design associations, universities, and enterprises all around the world.</p><p><img src=\"/uploads/img1/20200306/5e61d46b3fd17.jpg\" title=\"5e61d46b3fd17.jpg\" _src=\"/uploads/img1/20200306/5e61d46b3fd17.jpg\" alt=\"微信图片_20200302135425.jpg\"/></p><p>To promote cooperation and exchange of ideas on ecological design, the conference featured roundtables, forums, seminars, carnivals, and exhibitions that showcased digital art, innovative products, and Conghua’s new industries.</p><p><img src=\"/uploads/img1/20200306/5e61d4ba26952.jpg\" title=\"5e61d4ba26952.jpg\" _src=\"/uploads/img1/20200306/5e61d4ba26952.jpg\" alt=\"微信图片_20200302135410.jpg\"/></p><p>Bangladesh, Cambodia, and Thailand were the guest countries of honor during the conference. Their political, business, academic, and art representatives fully displayed the local customs and characteristic industries, which made the conference more exotic. What’s more, a country music festival and a light show were held in the Eco-Design Town on the evenings of December 6th and 7th respectively.</p>', '', '2020-02-09 13:17:56', '2020-03-06 12:42:38', 71, 24, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (10, 'WIDA徽标收集活动向您开放', '', '', '', '', '', '/uploads/img1/20200115/5e1ed55c3bb0c.jpg', '注意我们正在启动WIDA的徽标设计收集活动。我们需要你的创造力和独创性。\n\n\n\n还在等吗？我们呼吁你们采取行动！我们渴望您的创意！\n\n\n\n以下是WIDA徽标设计集合的信息：\n\n\n\n奖励：\n\n\n\n-第一套WIDA纪念品，供为标志设计贡献创意的设计师使用。\n\n\n\n-每一套WIDA纪念品，供其标志被采用的设计师使用。\n\n\n\n设计标准：\n\n\n\n-必须是原创设计。\n\n\n\n-标志的理念应该与倡议和使命相一致。\n\n\n\n供您参考：\n\n\n\nWIDA的倡议和使命是团结资源，充分发挥设计创新的创造力、价值和领导力。我们致力于建立一个全球社区平台，依靠全产业链实现企业家和设计师之间的开放合作。以实现高质量和可持续发展为最终目标，我们致力于在世界各地推广工业设计。\n\n\n\n提交截止日期：\n\n\n\n2020年1月15日\n\n\n\n- [ ] 请将设计以png/jpg格式发送至wida2019@vip.163.com，并附上对徽标设计的简短说明。我们渴望看到您精彩的标志设计，它将与WIDA一起被人们铭记。一起，为了更好的WIDA。\n', '注意我们正在启动WIDA的徽标设计收集活动。我们需要你的创造力和独创性。\n\n\n\n还在等吗？我们呼吁你们采取行动！我们渴望您的创意！\n\n\n\n以下是WIDA徽标设计集合的信息：\n\n\n\n奖励：\n\n\n\n-第一套WIDA纪念品，供为标志设计贡献创意的设计师使用。\n\n\n\n-每一套WIDA纪念品，供其标志被采用的设计师使用。\n\n\n\n设计标准：\n\n\n\n-必须是原创设计。\n\n\n\n-标志的理念应该与倡议和使命相一致。\n\n\n\n供您参考：\n\n\n\nWIDA的倡议和使命是团结资源，充分发挥设计创新的创造力、价值和领导力。我们致力于建立一个全球社区平台，依靠全产业链实现企业家和设计师之间的开放合作。以实现高质量和可持续发展为最终目标，我们致力于在世界各地推广工业设计。\n\n\n\n提交截止日期：\n\n\n\n2020年1月15日\n\n\n\n- [ ] 请将设计以png/jpg格式发送至wida2019@vip.163.com，并附上对徽标设计的简短说明。我们渴望看到您精彩的标志设计，它将与WIDA一起被人们铭记。一起，为了更好的WIDA。\n', '2019-12-16 16:59:00', '2020-04-30 11:52:52', 32, 7, 99, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (15, 'German Experts\' visit to Shangdong Manufacturing Industry', '', '', '', '', '', '/uploads/img1/20200306/5e61ea5a170dc.jpg', '<div class=\"eventcont\"><p>Prof. Dr. Yuan Xiaowei, Vice Chairman of Sino-German Industrial Design Expert Committee and Mathis Heller, DeTao Master of Automotive &amp; Industrial Design came to Shandong Province to visit some enterprises in Yantai, Zibo, and Weifang for in-depth and multidimensional investigation and research. This visit aims to provide strategic consultations and credible solutions on the brand strategy, design services, technical support, and talent training, and work on industrial cooperation and docking.</p><p><img src=\"/uploads/img1/20200209/5e3fafc2a9250.jpg\" title=\"5e3fafc2a9250.jpg\" _src=\"/uploads/img1/20200209/5e3fafc2a9250.jpg\" alt=\"800-2.jpg\"/></p><p>During this visit, Mathis Heller went to Weichai which is a multi-field and multi-industry international group and had a good understanding of Weichai&#39;s six business segments of powertrain, commercial vehicle, construction machinery, intelligent logistics, luxury yacht, and finance &amp; after-services. As Weichai pays high attention to science and technology innovation, both parties reached a high degree of consensus: with the help of industrial design, promoting the upgrading of the technology, sharing global technical resources, strengthening business collaboration and cultural exchanges, and helping Shandong equipment to upgrade to face the high-end and make greater contributions to the old and new growth driver replacement and the revitalization of the equipment manufacturing industry in China.</p><p><img src=\"/uploads/img1/20200209/5e3fb0b69ef2d.png\" title=\"5e3fb0b69ef2d.png\" _src=\"/uploads/img1/20200209/5e3fb0b69ef2d.png\" alt=\"8001.png\"/></p><p>On Mathis Heller’s trip, Weichai highly recognized the results of the meeting between both parties and hope for further cooperation and win the future together.</p></div>', 'Prof. Dr. Yuan Xiaowei, Vice Chairman of Sino-German Industrial Design Expert Committee and Mathis Heller, DeTao Master of Automotive & Industrial Design came to Shandong Province to visit some enterprises in Yantai, Zibo, and Weifang for in-depth and multidimensional investigation and research. This visit aims to provide strategic consultations and credible solutions on the brand strategy, design services, technical support, and talent training, and work on industrial cooperation and docking.', '2020-02-09 15:05:44', '2020-03-06 14:15:09', 89, 12, 100, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (16, '2019年4月，参加汉诺威博览会', '', '', '', '', '', '/uploads/img1/20200328/5e7ef5e5c1bd9.jpg', '<p>In April 2019, Sino-German Industrial Design Center participated in HANNOVER \r\nMESSE, showing Chinese innovative design achievements. It has generated a great \r\ndeal of attention both nationally and internationally. The president of the \r\nCenter also met with Li Yong, Director General of the United Nations Industrial \r\nDevelopment Organization, discussing international issues.</p><p><img src=\"/uploads/img1/20200209/5e3fb2c61c8c6.jpg\" title=\"5e3fb2c61c8c6.jpg\" _src=\"/uploads/img1/20200209/5e3fb2c61c8c6.jpg\" alt=\"1.jpg\"/></p><p></p>', 'In April 2019, Sino-German Industrial Design Center participated in HANNOVER MESSE, showed Chinese innovative design achievements, generated a great deal of attention both nationally and internationally, met with Li Yong, Director General of United Nations Industrial Development Organization.\r\nAs the world’s largest industrial fair, HANNOVER MESSE collected all technology in various industrial fields; it’s also leading the innovation and development of the world industry. In its development process, it shows the adaptability to the trend, now It has developed into a flagship exhibition of global industrial trade and the most influential international industrial trade fair. The HANNOVER MESSE 2019 was held in Hanover Exhibition Center, Germany from April 1 to 5. About 6551 exhibitors from 88 countries and regions and 225,000 spectators attended the exhibition.\r\n', '2019-04-05 15:16:00', '2023-04-20 10:46:17', 82, 7, 97, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (18, '面向创新企业家的设计思维培训课程', '', '', '', '', '', '/uploads/img1/20200328/5e7ee57ea19aa.png!300X300.jpg', '<div class=\"eventcont\"><p>WIDA为创新创业者提供设计思维培训课程。目标是在10年内培训1000人。这些培训课程的讲师来自世界各地，学员主要是中国的年轻企业家。</p><p><img src=\"/uploads/img1/20200328/5e7ee57ea19aa.png\" title=\"5e7ee57ea19aa.png\" _src=\"/uploads/img1/20200328/5e7ee57ea19aa.png\" alt=\"4.4.3.png\"/></p></div>', 'WIDA为创新创业者提供设计思维培训课程。目标是在10年内培训1000人。这些培训课程的讲师来自世界各地，学员主要是中国的年轻企业家。', '2020-03-28 10:01:32', '2023-04-20 09:38:50', 11, 11, 2, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (22, '1111111111111111111111111111111', '', '', '', '', '', '/uploads/img1/20200428/5ea7886e463ad.png', '<p>1111111111111111111111111111111111111111</p>', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '2020-04-28 09:35:27', '2020-04-28 09:36:03', 35, 11, 100, 1, 1, '', 1, 1, 0, 1);
INSERT INTO `we_article` VALUES (23, '1111111111111', '', '', '', '', '', '/uploads/img1/20200428/5ea78b9bd773e.png', '<p>111111111111111111111111111111</p>', '11111111111111111111111111111111111111', '2020-04-28 09:49:03', '2020-04-28 09:50:49', 25, 7, 103, 1, 1, '', 1, 1, 0, 1);
INSERT INTO `we_article` VALUES (24, '感谢', '', '', '', '', '', '/uploads/img1/20200428/5ea79440cd8c2.png', '<p>水电费<img src=\"/uploads/img1/20200428/5ea79464eae22.png\" title=\"5ea79464eae22.png\" _src=\"/uploads/img1/20200428/5ea79464eae22.png\" alt=\"GDIO_AntonyMargiasso_3UPDATE.png\"/></p>', '傻瓜蛋', '2020-04-28 10:25:34', '2020-04-28 10:27:08', 79, 7, 120, 1, 1, '', 1, 1, 0, 1);
INSERT INTO `we_article` VALUES (25, 'WIDA 徽标正式发布！', '', '', '', '', '', '/uploads/img1/20200430/1.png', '<p>The official logo of the Global Design Industry Organization (GDIO) has finally come out!</p><p>Since December 2019, the logo collection event for GDIO has been launched &nbsp;around the world, which has received great supports and positive responses from &nbsp;many excellent international designers and design organizations. After careful evaluation in all aspects including aesthetics, utility, and meaning, the design by Mr. Antony Margiasso from Pininfarina Shanghai Co., Ltd. was selected as the official logo of GDIO.</p><p><img src=\"/uploads/img1/20200430/5eaa2d08eb767.png\" title=\"5eaa2d08eb767.png\" _src=\"/uploads/img1/20200430/5eaa2d08eb767.png\" alt=\"20200429_GDIO_vectorlogo-02_副本.png\"/></p><p>This logo design is not only of great originality but also consistent with the vision and mission of GDIO. The inspiration comes from the “Chain” and &nbsp;“Connection” of the global design community, which means “Work together to Change the World with Design Industry”.</p><p><strong>Introduction of the Designer</strong></p><p>Mr. Antony Margiasso is the Head of Industrial Design, Pininfarina Shanghai. &nbsp;Antony provides Leadership and a Creative Vision in all aspects of product development. He is also responsible for establishing processes and practices for &nbsp;realizing that Vision. Antony has more than 12 years of experience in several design areas: Product, Transportation, Interior, Graphic &amp; Packaging, &nbsp;Branding &amp; Identity, Experience (Design). Working on completely different &nbsp;projects has made him become a multi-disciplined generalist. This has helped him to “think outside the box” and cross-fertilize across different fields to create innovative and unique products and experiences.</p><p><img src=\"/uploads/img1/20200430/5eaa2d3a37ca6.png\" title=\"5eaa2d3a37ca6.png\" _src=\"/uploads/img1/20200430/5eaa2d3a37ca6.png\" alt=\"A_Margiasso_副本.png\"/></p><p><strong><br/></strong></p><p><strong>Introduction of Pininfarina</strong></p><p>Pininfarina was established in 1930 in Turin, Italy. The history of the Pininfarina design is reﬂected in that of its lines, beauty, and elegance, as &nbsp;well as in the ability to bring an aesthetic concept to life. Pininfarina has &nbsp;been working for more than 25 years in the development of industrial design projects. Since 1986, the experience gained in the automotive sector in &nbsp;collaboration with the most prestigious international brands has been used in the product design in all business sectors. More than 400 projects and dozens of &nbsp;design awards were achieved. The main industrial design sectors in which Pininfarina operates are electronics, furniture, lifestyle, equipment, and &nbsp;consumer products.</p><p><img src=\"/uploads/img1/20200430/5eaa6594f020e.jpg\" title=\"5eaa6594f020e.jpg\" _src=\"/uploads/img1/20200430/5eaa6594f020e.jpg\" alt=\"logo_FPininfarina_副本2.jpg\"/></p><p>Thanks to all the designers and design organizations that have participated &nbsp;in the GDIO logo collection event. We sincerely look forward to further cooperation with more top designers and design institutions from all over the &nbsp;world.</p><p>Welcome to join GDIO!</p><p><br/></p>', '中国工业设计学会（WIDA）的官方徽标终于发布啦！', '2020-04-30 09:02:16', '2020-05-18 10:46:46', 12, 7, 103, 1, 5, '', 0, 1, 0, 1);
INSERT INTO `we_article` VALUES (26, 'GDIO Logo is Officially Released1', '', '', '', '', '', '/uploads/img1/20200430/5eaa2922aac36.jpg', '<p style=\"margin-top: 10px; text-align: left;\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 19px;\">The official logo of the Global Design Industry Organization (GDIO) has finally come out!</span></p><p style=\"margin-top:10px\"><span><span><span><span><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\">Since December 2019, the logo collection event for GDIO has been launched around the world, which has received great supports and positive responses from many excellent international designers and design organizations. After careful evaluation in all aspects including aesthetics, utility, and meaning, the design by Mr. Antony Margiasso from Pininfarina Shanghai Co., Ltd. was selected as the official logo of GDIO. </span></span></span></span></span></p><p style=\"margin-top:10px;text-align:center\"><span><span><span><span><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\">&nbsp;<img src=\"/uploads/img1/20200430/5eaa303312a84.png\" title=\"5eaa303312a84.png\" _src=\"/uploads/img1/20200430/5eaa303312a84.png\" alt=\"20200429_GDIO_vectorlogo-02_副本.png\"/></span></span></span></span></span></p><p style=\"margin-top:10px\"><span><span><span><span><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\">This logo design is not only of great originality but also consistent with the vision and mission of GDIO. The inspiration comes from the “Chain” and “Connection” of the global design community, which means “Work together to Change the World with Design Industry”.</span></span></span></span></span></p><p style=\"margin-top:10px\"><span><span><span><span><b><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\">Introduction of the Designer</span></b></span></span></span></span><span><span><span><span><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\"> <br/> Mr. Antony Margiasso is the Head of Industrial Design, Pininfarina Shanghai. Antony provides Leadership and a Creative Vision in all aspects of product development. He is also responsible for establishing processes and practices for realizing that Vision. Antony has more than 12 years of experience in several design areas: Product, Transportation, Interior, Graphic &amp; Packaging, Branding &amp; Identity, Experience (Design). Working on completely different projects has made him become a multi-disciplined generalist. This has helped him to “think outside the box” and cross-fertilize across different fields to create innovative and unique products and experiences. </span></span></span></span></span></p><p style=\"margin-top:10px;text-align:center\"><span><span><span><span><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\"><img src=\"/uploads/img1/20200430/5eaa3040d7377.png\" title=\"5eaa3040d7377.png\" _src=\"/uploads/img1/20200430/5eaa3040d7377.png\" alt=\"A_Margiasso_副本.png\"/>&nbsp;</span></span></span></span></span></p><p style=\"margin-top:10px\"><span><span><span><span><b><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\">Introduction of Pininfarina</span></b></span></span></span></span></p><p style=\"margin-top:10px\"><span><span><span><span><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\">Pininfarina was established in 1930 in Turin, Italy. The history of the Pininfarina design is reﬂected in that of its lines, beauty, and elegance, as well as in the ability to bring an aesthetic concept to life. Pininfarina has been working for more than 25 years in the development of industrial design projects. Since 1986, the experience gained in the automotive sector in collaboration with the most prestigious international brands has been used in the product design in all business sectors. More than 400 projects and dozens of design awards were achieved. The main industrial design sectors in which Pininfarina operates are electronics, furniture, lifestyle, equipment, and consumer products.</span></span></span></span></span></p><p style=\"margin-top:10px;text-align:center\"><span><span><span><span><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\"><img src=\"/uploads/img1/20200430/5eaa306688655.jpg\" title=\"5eaa306688655.jpg\" _src=\"/uploads/img1/20200430/5eaa306688655.jpg\" alt=\"logo_FPininfarina_副本.jpg\"/>&nbsp;</span></span></span></span></span></p><p style=\"margin-top:10px\"><span><span><span><span><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\">Thanks to all the designers and design organizations that have participated in the GDIO logo collection event. We sincerely look forward to further cooperation with more top designers and design institutions from all over the world. </span></span></span></span></span></p><p style=\"margin-top:10px\"><span><span><span><span><span style=\"font-size:19px;font-family:&#39;Times New Roman&#39;,serif\">Welcome to join GDIO!</span></span></span></span></span></p><p><br/></p>', 'The official logo of the Global Design Industry Organization (GDIO) has finally come out!', '2020-04-30 09:55:19', '2020-04-30 09:57:40', 22, 7, 105, 1, 5, '', 1, 1, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for we_attachment
-- ----------------------------
DROP TABLE IF EXISTS `we_attachment`;
CREATE TABLE `we_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '原文件名',
  `file_path` varchar(200) NOT NULL DEFAULT '',
  `file_type` smallint(6) NOT NULL DEFAULT '1',
  `file_size` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `has_litpic` tinyint(1) NOT NULL DEFAULT '1',
  `upload_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=830 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_attachment
-- ----------------------------
BEGIN;
INSERT INTO `we_attachment` VALUES (1, 'banner01.jpg', 'abc1/20200110/5e18325a6f7e3.jpg', 1, 227955, 0, '2020-01-10 16:14:18', 1, 0);
INSERT INTO `we_attachment` VALUES (2, 'focusico01.png', 'img1/20200110/5e18383d5d9a0.png', 1, 1580, 1, '2020-01-10 16:39:25', 1, 0);
INSERT INTO `we_attachment` VALUES (3, 'zsico1.jpg', 'abc1/20200110/5e183a2d213b2.jpg', 1, 2284, 0, '2020-01-10 16:47:41', 1, 0);
INSERT INTO `we_attachment` VALUES (4, 'sbanner.jpg', 'img1/20200110/5e183b678581c.jpg', 1, 314760, 1, '2020-01-10 16:52:56', 1, 0);
INSERT INTO `we_attachment` VALUES (5, 'ntu01.jpg', 'img1/20200110/5e183b78d35a3.jpg', 1, 154995, 1, '2020-01-10 16:53:13', 1, 0);
INSERT INTO `we_attachment` VALUES (6, 'rebanner.jpg', 'img1/20200111/5e1923605adb6.jpg', 1, 187588, 1, '2020-01-11 09:22:41', 1, 0);
INSERT INTO `we_attachment` VALUES (7, 'newbanner.jpg', 'img1/20200111/5e1927b82bd25.jpg', 1, 82896, 1, '2020-01-11 09:41:12', 1, 0);
INSERT INTO `we_attachment` VALUES (8, 'newstu.jpg', 'img1/20200111/5e192851950f3.jpg', 1, 28899, 1, '2020-01-11 09:43:45', 1, 0);
INSERT INTO `we_attachment` VALUES (9, 'about.jpg', 'img1/20200111/5e192b81161c3.jpg', 1, 189659, 1, '2020-01-11 09:57:21', 1, 0);
INSERT INTO `we_attachment` VALUES (10, 'banner01.jpg', 'img1/20200111/5e1934410c0b4.jpg', 1, 227955, 1, '2020-01-11 10:34:42', 1, 0);
INSERT INTO `we_attachment` VALUES (11, 'tia01.png', 'img1/20200111/5e193f7a2b740.png', 1, 8380, 1, '2020-01-11 11:22:34', 1, 0);
INSERT INTO `we_attachment` VALUES (12, 'tia01.png', 'img1/20200111/5e193f9b4d410.png', 1, 8380, 1, '2020-01-11 11:23:07', 1, 0);
INSERT INTO `we_attachment` VALUES (13, 'tiaimg.jpg', 'img1/20200111/5e1940cc15f57.jpg', 1, 77092, 1, '2020-01-11 11:28:14', 1, 0);
INSERT INTO `we_attachment` VALUES (14, 'zsico1.jpg', 'abc1/20200111/5e19837f593be.jpg', 1, 2284, 0, '2020-01-11 16:12:48', 1, 0);
INSERT INTO `we_attachment` VALUES (15, 'rebanner.jpg', 'img1/20200113/5e1bc520dd7f5.jpg', 1, 187588, 1, '2020-01-13 09:17:21', 1, 0);
INSERT INTO `we_attachment` VALUES (16, 'invert.jpg', 'img1/20200113/5e1bc5581b774.jpg', 1, 133449, 1, '2020-01-13 09:18:16', 1, 0);
INSERT INTO `we_attachment` VALUES (17, 'inver.jpg', 'img1/20200113/5e1bc57ebfda9.jpg', 1, 60545, 1, '2020-01-13 09:18:54', 1, 0);
INSERT INTO `we_attachment` VALUES (18, 'inver.jpg', 'img1/20200113/5e1bc5c9b883d.jpg', 1, 60545, 1, '2020-01-13 09:20:09', 1, 0);
INSERT INTO `we_attachment` VALUES (19, 'inver.jpg', 'img1/20200113/5e1bc5d54829d.jpg', 1, 60545, 1, '2020-01-13 09:20:21', 1, 0);
INSERT INTO `we_attachment` VALUES (20, 'inver.jpg', 'img1/20200113/5e1bc5e3a2be4.jpg', 1, 60545, 1, '2020-01-13 09:20:35', 1, 0);
INSERT INTO `we_attachment` VALUES (21, 'rebanner.jpg', 'img1/20200113/5e1bc63fcea0a.jpg', 1, 187588, 1, '2020-01-13 09:22:08', 1, 0);
INSERT INTO `we_attachment` VALUES (22, '05_03.jpg', 'img1/20200113/5e1bc6949bafe.jpg', 1, 146434, 1, '2020-01-13 09:23:32', 1, 0);
INSERT INTO `we_attachment` VALUES (23, 'ntu01.jpg', 'img1/20200113/5e1bc8521c497.jpg', 1, 154995, 1, '2020-01-13 09:30:58', 1, 0);
INSERT INTO `we_attachment` VALUES (24, '05_03.jpg', 'img1/20200113/5e1bcaa84fb41.jpg', 1, 146434, 1, '2020-01-13 09:40:56', 1, 0);
INSERT INTO `we_attachment` VALUES (25, '05_03.jpg', 'img1/20200113/5e1bcc03b741c.jpg', 1, 146434, 1, '2020-01-13 09:46:43', 1, 0);
INSERT INTO `we_attachment` VALUES (26, 'invesbanner.png', 'img1/20200113/5e1bccb3b2eef.png', 1, 674788, 1, '2020-01-13 09:49:40', 1, 0);
INSERT INTO `we_attachment` VALUES (27, '05_03.jpg', 'img1/20200113/5e1bccb8a1bb3.jpg', 1, 223894, 1, '2020-01-13 09:49:44', 1, 0);
INSERT INTO `we_attachment` VALUES (28, 'investu2.png', 'img1/20200113/5e1bcd3593764.png', 1, 92861, 1, '2020-01-13 09:51:49', 1, 0);
INSERT INTO `we_attachment` VALUES (29, 'investu3.png', 'img1/20200113/5e1bcd4c69054.png', 1, 257641, 1, '2020-01-13 09:52:12', 1, 0);
INSERT INTO `we_attachment` VALUES (30, 'reico01.png', 'img1/20200113/5e1bcd7c97cec.png', 1, 617, 1, '2020-01-13 09:53:00', 1, 0);
INSERT INTO `we_attachment` VALUES (31, 'reico02.png', 'img1/20200113/5e1bcd87899e0.png', 1, 1378, 1, '2020-01-13 09:53:11', 1, 0);
INSERT INTO `we_attachment` VALUES (32, 'reico03.png', 'img1/20200113/5e1bcd9b60d1d.png', 1, 1458, 1, '2020-01-13 09:53:31', 1, 0);
INSERT INTO `we_attachment` VALUES (33, 'reico04.png', 'img1/20200113/5e1bcda9e736c.png', 1, 2335, 1, '2020-01-13 09:53:45', 1, 0);
INSERT INTO `we_attachment` VALUES (34, 'td2.jpg', 'img1/20200113/5e1bd059a7e05.jpg', 1, 96853, 1, '2020-01-13 10:05:13', 1, 0);
INSERT INTO `we_attachment` VALUES (35, 'td2.jpg', 'img1/20200113/5e1bd0674c2d0.jpg', 1, 96853, 1, '2020-01-13 10:05:27', 1, 0);
INSERT INTO `we_attachment` VALUES (36, 'wd.jpg', 'img1/20200113/5e1bd07735b4a.jpg', 1, 149859, 1, '2020-01-13 10:05:43', 1, 0);
INSERT INTO `we_attachment` VALUES (37, '16.jpg', 'img1/20200113/5e1bd138455cc.jpg', 1, 128432, 1, '2020-01-13 10:08:56', 1, 0);
INSERT INTO `we_attachment` VALUES (38, 'reico01.png', 'img1/20200113/5e1bd1bed5410.png', 1, 617, 1, '2020-01-13 10:11:10', 1, 0);
INSERT INTO `we_attachment` VALUES (39, 'reico04.png', 'img1/20200113/5e1bd205820eb.png', 1, 2335, 1, '2020-01-13 10:12:21', 1, 0);
INSERT INTO `we_attachment` VALUES (40, 'focusbanner.jpg', 'img1/20200113/5e1bd25733210.jpg', 1, 160212, 1, '2020-01-13 10:13:43', 1, 0);
INSERT INTO `we_attachment` VALUES (41, 'idwe.png', 'img1/20200113/5e1bd440318ef.png', 1, 637647, 1, '2020-01-13 10:21:52', 1, 0);
INSERT INTO `we_attachment` VALUES (42, 'idwe.png', 'img1/20200113/5e1bd52320a26.png', 1, 637647, 1, '2020-01-13 10:25:39', 1, 0);
INSERT INTO `we_attachment` VALUES (43, 'idwe.png', 'img1/20200113/5e1bd53f2b754.png', 1, 637647, 1, '2020-01-13 10:26:07', 1, 0);
INSERT INTO `we_attachment` VALUES (44, '未标题-2.png', 'img1/20200113/5e1bd70ec193f.png', 1, 11817, 1, '2020-01-13 10:33:50', 1, 0);
INSERT INTO `we_attachment` VALUES (45, '未标题-2.png', 'img1/20200113/5e1bd782a4b52.png', 1, 11817, 1, '2020-01-13 10:35:46', 1, 0);
INSERT INTO `we_attachment` VALUES (46, '未标题-2.png', 'img1/20200113/5e1bd7b6b9963.png', 1, 11817, 1, '2020-01-13 10:36:38', 1, 0);
INSERT INTO `we_attachment` VALUES (47, 'edunrtu1.png', 'img1/20200113/5e1bd938863d4.png', 1, 609668, 1, '2020-01-13 10:43:04', 1, 0);
INSERT INTO `we_attachment` VALUES (48, 'solnrtu1.png', 'img1/20200113/5e1bd9570be5a.png', 1, 873761, 1, '2020-01-13 10:43:35', 1, 0);
INSERT INTO `we_attachment` VALUES (49, 'planrtu1.png', 'img1/20200113/5e1bd98bc4b62.png', 1, 1067873, 1, '2020-01-13 10:44:28', 1, 0);
INSERT INTO `we_attachment` VALUES (50, 'infnrtu1.png', 'img1/20200113/5e1bdb47a90d7.png', 1, 782935, 1, '2020-01-13 10:51:51', 1, 0);
INSERT INTO `we_attachment` VALUES (51, '02 (1).jpg', 'img1/20200113/5e1bdbad63264.jpg', 1, 105248, 1, '2020-01-13 10:53:33', 1, 0);
INSERT INTO `we_attachment` VALUES (52, '02 (2).jpg', 'img1/20200113/5e1bdbc029408.jpg', 1, 113011, 1, '2020-01-13 10:53:52', 1, 0);
INSERT INTO `we_attachment` VALUES (53, '03.jpg', 'img1/20200113/5e1bdbce3b864.jpg', 1, 85162, 1, '2020-01-13 10:54:06', 1, 0);
INSERT INTO `we_attachment` VALUES (54, '04.jpg', 'img1/20200113/5e1bdbf8f0b9a.jpg', 1, 105498, 1, '2020-01-13 10:54:49', 1, 0);
INSERT INTO `we_attachment` VALUES (55, '05.jpg', 'img1/20200113/5e1bdc0c0a874.jpg', 1, 79863, 1, '2020-01-13 10:55:08', 1, 0);
INSERT INTO `we_attachment` VALUES (56, '05.jpg', 'img1/20200113/5e1bdc63e90ce.jpg', 1, 79863, 1, '2020-01-13 10:56:36', 1, 0);
INSERT INTO `we_attachment` VALUES (57, '02 (2).jpg', 'img1/20200113/5e1bdd603b345.jpg', 1, 113011, 1, '2020-01-13 11:00:48', 1, 0);
INSERT INTO `we_attachment` VALUES (58, '07.jpg', 'img1/20200113/5e1bdd7adb479.jpg', 1, 79885, 1, '2020-01-13 11:01:15', 1, 0);
INSERT INTO `we_attachment` VALUES (59, '08.jpg', 'img1/20200113/5e1bdd8ce0084.jpg', 1, 103648, 1, '2020-01-13 11:01:33', 1, 0);
INSERT INTO `we_attachment` VALUES (60, '09.jpg', 'img1/20200113/5e1bdd9c3146a.jpg', 1, 75927, 1, '2020-01-13 11:01:48', 1, 0);
INSERT INTO `we_attachment` VALUES (61, '10.jpg', 'img1/20200113/5e1bdda893177.jpg', 1, 104120, 1, '2020-01-13 11:02:00', 1, 0);
INSERT INTO `we_attachment` VALUES (62, '11.jpg', 'img1/20200113/5e1bddb34d360.jpg', 1, 80427, 1, '2020-01-13 11:02:11', 1, 0);
INSERT INTO `we_attachment` VALUES (63, '12.jpg', 'img1/20200113/5e1bddc61a707.jpg', 1, 104951, 1, '2020-01-13 11:02:30', 1, 0);
INSERT INTO `we_attachment` VALUES (64, '13.jpg', 'img1/20200113/5e1bddd65e9f0.jpg', 1, 84151, 1, '2020-01-13 11:02:46', 1, 0);
INSERT INTO `we_attachment` VALUES (65, '14.jpg', 'img1/20200113/5e1bdde61532a.jpg', 1, 92713, 1, '2020-01-13 11:03:02', 1, 0);
INSERT INTO `we_attachment` VALUES (66, '15.jpg', 'img1/20200113/5e1bddf01ea33.jpg', 1, 81216, 1, '2020-01-13 11:03:12', 1, 0);
INSERT INTO `we_attachment` VALUES (67, '16.jpg', 'img1/20200113/5e1bde053c38f.jpg', 1, 90281, 1, '2020-01-13 11:03:33', 1, 0);
INSERT INTO `we_attachment` VALUES (68, '17.jpg', 'img1/20200113/5e1bde15b178d.jpg', 1, 80695, 1, '2020-01-13 11:03:49', 1, 0);
INSERT INTO `we_attachment` VALUES (69, '18.jpg', 'img1/20200113/5e1bde22ae467.jpg', 1, 86388, 1, '2020-01-13 11:04:02', 1, 0);
INSERT INTO `we_attachment` VALUES (70, '19.jpg', 'img1/20200113/5e1bde362a19d.jpg', 1, 84534, 1, '2020-01-13 11:04:22', 1, 0);
INSERT INTO `we_attachment` VALUES (71, '20.jpg', 'img1/20200113/5e1bde5238477.jpg', 1, 80692, 1, '2020-01-13 11:04:50', 1, 0);
INSERT INTO `we_attachment` VALUES (72, '组 5.png', 'img1/20200113/5e1be00aa857e.png', 1, 9251, 1, '2020-01-13 11:12:10', 1, 0);
INSERT INTO `we_attachment` VALUES (73, '未标题-2.png', 'img1/20200113/5e1be062b3eb9.png', 1, 11817, 1, '2020-01-13 11:13:38', 1, 0);
INSERT INTO `we_attachment` VALUES (74, '1.jpg', 'img1/20200113/5e1be1dccea6d.jpg', 1, 104043, 1, '2020-01-13 11:19:57', 1, 0);
INSERT INTO `we_attachment` VALUES (75, '1.jpg', 'img1/20200113/5e1be24c6b48c.jpg', 1, 104043, 1, '2020-01-13 11:21:48', 1, 0);
INSERT INTO `we_attachment` VALUES (76, '2.jpg', 'img1/20200113/5e1be29092ba6.jpg', 1, 72747, 1, '2020-01-13 11:22:56', 1, 0);
INSERT INTO `we_attachment` VALUES (77, '3.jpg', 'img1/20200113/5e1be29c02d8a.jpg', 1, 104043, 1, '2020-01-13 11:23:08', 1, 0);
INSERT INTO `we_attachment` VALUES (78, '4.jpg', 'img1/20200113/5e1be2aa40865.jpg', 1, 75239, 1, '2020-01-13 11:23:22', 1, 0);
INSERT INTO `we_attachment` VALUES (79, '5.jpg', 'img1/20200113/5e1be2c25b763.jpg', 1, 51458, 1, '2020-01-13 11:23:46', 1, 0);
INSERT INTO `we_attachment` VALUES (80, '6.jpg', 'img1/20200113/5e1be2db88e31.jpg', 1, 57433, 1, '2020-01-13 11:24:11', 1, 0);
INSERT INTO `we_attachment` VALUES (81, '7.jpg', 'img1/20200113/5e1be2eba6b59.jpg', 1, 59815, 1, '2020-01-13 11:24:27', 1, 0);
INSERT INTO `we_attachment` VALUES (82, '8.jpg', 'img1/20200113/5e1be2f98d30f.jpg', 1, 58495, 1, '2020-01-13 11:24:41', 1, 0);
INSERT INTO `we_attachment` VALUES (83, '9.jpg', 'img1/20200113/5e1be30ea6045.jpg', 1, 57012, 1, '2020-01-13 11:25:02', 1, 0);
INSERT INTO `we_attachment` VALUES (84, '10.jpg', 'img1/20200113/5e1be31f2326f.jpg', 1, 93291, 1, '2020-01-13 11:25:19', 1, 0);
INSERT INTO `we_attachment` VALUES (85, 'ntu02.jpg', 'img1/20200113/5e1be3b8e7b46.jpg', 1, 92311, 1, '2020-01-13 11:27:53', 1, 0);
INSERT INTO `we_attachment` VALUES (86, 'newtu01.jpg', 'img1/20200113/5e1be4566b83e.jpg', 1, 13793, 1, '2020-01-13 11:30:30', 1, 0);
INSERT INTO `we_attachment` VALUES (87, 'newtu01.jpg', 'img1/20200113/5e1be50a2bb3d.jpg', 1, 13793, 1, '2020-01-13 11:33:30', 1, 0);
INSERT INTO `we_attachment` VALUES (88, 'vi.jpg', 'img1/20200113/5e1be5f79ee0e.jpg', 1, 111758, 1, '2020-01-13 11:37:27', 1, 0);
INSERT INTO `we_attachment` VALUES (89, '图层 3.png', 'img1/20200113/5e1be7a307bec.png', 1, 547559, 1, '2020-01-13 11:44:35', 1, 0);
INSERT INTO `we_attachment` VALUES (90, '图层 4.png', 'img1/20200113/5e1be97adacdb.png', 1, 380998, 1, '2020-01-13 11:52:27', 1, 0);
INSERT INTO `we_attachment` VALUES (91, '图层 3.png', 'img1/20200113/5e1be99b7593f.png', 1, 332196, 1, '2020-01-13 11:52:59', 1, 0);
INSERT INTO `we_attachment` VALUES (92, '图片.png', 'img1/20200113/5e1bf1ae5da8a.png', 1, 625511, 1, '2020-01-13 12:27:26', 1, 0);
INSERT INTO `we_attachment` VALUES (93, '图片.png', 'img1/20200113/5e1bf24980b76.png', 1, 360738, 1, '2020-01-13 12:30:01', 1, 0);
INSERT INTO `we_attachment` VALUES (94, '图片.png', 'img1/20200113/5e1bf28f537d9.png', 1, 694238, 1, '2020-01-13 12:31:11', 1, 0);
INSERT INTO `we_attachment` VALUES (95, 'five.jpg', 'img1/20200113/5e1bf34ee0a2c.jpg', 1, 40901, 1, '2020-01-13 12:34:22', 1, 0);
INSERT INTO `we_attachment` VALUES (96, 'wd.jpg', 'img1/20200113/5e1bf39def723.jpg', 1, 149859, 1, '2020-01-13 12:35:42', 1, 0);
INSERT INTO `we_attachment` VALUES (97, '组 17.png', 'img1/20200113/5e1bf72cabe06.png', 1, 739614, 1, '2020-01-13 12:50:53', 1, 0);
INSERT INTO `we_attachment` VALUES (98, '组 17.png', 'img1/20200113/5e1bf7379cb34.png', 1, 739614, 1, '2020-01-13 12:51:03', 1, 0);
INSERT INTO `we_attachment` VALUES (99, 'join.jpg', 'img1/20200113/5e1bf7aa91262.jpg', 1, 130783, 1, '2020-01-13 12:52:58', 1, 0);
INSERT INTO `we_attachment` VALUES (100, '未标题-5.jpg', 'img1/20200113/5e1bfedd7f4d6.jpg', 1, 264457, 1, '2020-01-13 13:23:41', 1, 0);
INSERT INTO `we_attachment` VALUES (101, '未标题-5.jpg', 'img1/20200113/5e1bffcf226c3.jpg', 1, 86796, 1, '2020-01-13 13:27:43', 1, 0);
INSERT INTO `we_attachment` VALUES (102, 'banner.png', 'img1/20200113/5e1c00da7426b.png', 1, 161699, 1, '2020-01-13 13:32:10', 1, 0);
INSERT INTO `we_attachment` VALUES (103, '组 17.png', 'img1/20200113/5e1c017e30db9.png', 1, 335066, 1, '2020-01-13 13:34:54', 1, 0);
INSERT INTO `we_attachment` VALUES (104, 'invesbannersj.png', 'img1/20200113/5e1c019e7d35d.png', 1, 201277, 1, '2020-01-13 13:35:26', 1, 0);
INSERT INTO `we_attachment` VALUES (105, 'resbannersj.png', 'img1/20200113/5e1c01b6dcedf.png', 1, 571974, 1, '2020-01-13 13:35:51', 1, 0);
INSERT INTO `we_attachment` VALUES (106, 'focusbannersj.png', 'img1/20200113/5e1c01cc0b6fe.png', 1, 351719, 1, '2020-01-13 13:36:12', 1, 0);
INSERT INTO `we_attachment` VALUES (107, '组 17.png', 'img1/20200113/5e1c01d827d27.png', 1, 329632, 1, '2020-01-13 13:36:24', 1, 0);
INSERT INTO `we_attachment` VALUES (108, 'banner1.png', 'img1/20200113/5e1c04634e752.png', 1, 420917, 1, '2020-01-13 13:47:15', 1, 0);
INSERT INTO `we_attachment` VALUES (109, '1.png', 'img1/20200113/5e1c069fa3395.png', 1, 406307, 1, '2020-01-13 13:56:47', 1, 0);
INSERT INTO `we_attachment` VALUES (110, '2.png', 'img1/20200113/5e1c06a7bf080.png', 1, 631181, 1, '2020-01-13 13:56:56', 1, 0);
INSERT INTO `we_attachment` VALUES (111, '图层 13.png', 'abc1/20200113/5e1c076fe7971.png', 1, 889402, 0, '2020-01-13 14:00:15', 1, 0);
INSERT INTO `we_attachment` VALUES (112, '2.png', 'abc1/20200113/5e1c07839740b.png', 1, 631181, 0, '2020-01-13 14:00:35', 1, 0);
INSERT INTO `we_attachment` VALUES (113, '图层 14.png', 'abc1/20200113/5e1c07e8d5c09.png', 1, 755864, 0, '2020-01-13 14:02:16', 1, 0);
INSERT INTO `we_attachment` VALUES (114, '3.png', 'abc1/20200113/5e1c07f104a44.png', 1, 569299, 0, '2020-01-13 14:02:25', 1, 0);
INSERT INTO `we_attachment` VALUES (115, 'banner1.jpg', 'abc1/20200113/5e1c0c39ac6bb.jpg', 1, 262971, 0, '2020-01-13 14:20:41', 1, 0);
INSERT INTO `we_attachment` VALUES (116, '11.jpg', 'abc1/20200113/5e1c0c4118689.jpg', 1, 88220, 0, '2020-01-13 14:20:49', 1, 0);
INSERT INTO `we_attachment` VALUES (117, 'banner2.jpg', 'abc1/20200113/5e1c0c535b061.jpg', 1, 635538, 0, '2020-01-13 14:21:07', 1, 0);
INSERT INTO `we_attachment` VALUES (118, '12.jpg', 'abc1/20200113/5e1c0c57e973c.jpg', 1, 186684, 0, '2020-01-13 14:21:11', 1, 0);
INSERT INTO `we_attachment` VALUES (119, 'banner3.jpg', 'abc1/20200113/5e1c0c676086f.jpg', 1, 530018, 0, '2020-01-13 14:21:27', 1, 0);
INSERT INTO `we_attachment` VALUES (120, '13.jpg', 'abc1/20200113/5e1c0c6d5033a.jpg', 1, 146437, 0, '2020-01-13 14:21:33', 1, 0);
INSERT INTO `we_attachment` VALUES (121, 'banner4.jpg', 'abc1/20200113/5e1c0c7e80ba0.jpg', 1, 795246, 0, '2020-01-13 14:21:50', 1, 0);
INSERT INTO `we_attachment` VALUES (122, '14.jpg', 'abc1/20200113/5e1c0c85ddd64.jpg', 1, 196410, 0, '2020-01-13 14:21:57', 1, 0);
INSERT INTO `we_attachment` VALUES (123, 'new1.jpg', 'img1/20200113/5e1c13c5ae686.jpg', 1, 357306, 1, '2020-01-13 14:52:54', 1, 0);
INSERT INTO `we_attachment` VALUES (124, 'new2.jpg', 'img1/20200113/5e1c13d537637.jpg', 1, 103621, 1, '2020-01-13 14:53:09', 1, 0);
INSERT INTO `we_attachment` VALUES (125, 'solu.png', 'img1/20200113/5e1c16708455b.png', 1, 1152, 1, '2020-01-13 15:04:16', 1, 0);
INSERT INTO `we_attachment` VALUES (126, 'Pla.png', 'img1/20200113/5e1c16a875fd1.png', 1, 2112, 1, '2020-01-13 15:05:12', 1, 0);
INSERT INTO `we_attachment` VALUES (127, 'infor.png', 'img1/20200113/5e1c16c7e22a7.png', 1, 921, 1, '2020-01-13 15:05:43', 1, 0);
INSERT INTO `we_attachment` VALUES (128, 'solu.png', 'img1/20200113/5e1c18624e574.png', 1, 1152, 1, '2020-01-13 15:12:34', 1, 0);
INSERT INTO `we_attachment` VALUES (129, 'Pla.png', 'img1/20200113/5e1c1871bcb14.png', 1, 2112, 1, '2020-01-13 15:12:49', 1, 0);
INSERT INTO `we_attachment` VALUES (130, 'infor.png', 'img1/20200113/5e1c188001d4e.png', 1, 921, 1, '2020-01-13 15:13:04', 1, 0);
INSERT INTO `we_attachment` VALUES (131, '1.png', 'abc1/20200113/5e1c318201cec.png', 1, 406307, 0, '2020-01-13 16:59:46', 1, 0);
INSERT INTO `we_attachment` VALUES (132, '1.png', 'abc1/20200113/5e1c318a9947d.png', 1, 406307, 0, '2020-01-13 16:59:54', 1, 0);
INSERT INTO `we_attachment` VALUES (133, '2.png', 'abc1/20200113/5e1c319cea3a4.png', 1, 631181, 0, '2020-01-13 17:00:12', 1, 0);
INSERT INTO `we_attachment` VALUES (134, '2.png', 'abc1/20200113/5e1c31a16bbb2.png', 1, 631181, 0, '2020-01-13 17:00:17', 1, 0);
INSERT INTO `we_attachment` VALUES (135, '13.jpg', 'abc1/20200113/5e1c31cc2ddc3.jpg', 1, 146437, 0, '2020-01-13 17:01:00', 1, 0);
INSERT INTO `we_attachment` VALUES (136, '13.jpg', 'abc1/20200113/5e1c31d0dd1e9.jpg', 1, 146437, 0, '2020-01-13 17:01:04', 1, 0);
INSERT INTO `we_attachment` VALUES (137, '11.jpg', 'abc1/20200113/5e1c31dc05400.jpg', 1, 88220, 0, '2020-01-13 17:01:16', 1, 0);
INSERT INTO `we_attachment` VALUES (138, '11.jpg', 'abc1/20200113/5e1c31e29c117.jpg', 1, 88220, 0, '2020-01-13 17:01:22', 1, 0);
INSERT INTO `we_attachment` VALUES (139, '12.jpg', 'abc1/20200113/5e1c31ec1b34a.jpg', 1, 186684, 0, '2020-01-13 17:01:32', 1, 0);
INSERT INTO `we_attachment` VALUES (140, '12.jpg', 'abc1/20200113/5e1c31efccab1.jpg', 1, 186684, 0, '2020-01-13 17:01:35', 1, 0);
INSERT INTO `we_attachment` VALUES (141, '5de8ca79dc768.png', 'abc1/20200113/5e1c39ca561ec.png', 1, 3138, 0, '2020-01-13 17:35:06', 1, 0);
INSERT INTO `we_attachment` VALUES (142, '8a49bfcdd4ea5ebcf082852587b9a49483501b4927cb-Zk3l7I_fw658.pn', 'abc1/20200113/5e1c3a09b474e.png', 1, 4878, 0, '2020-01-13 17:36:09', 1, 0);
INSERT INTO `we_attachment` VALUES (143, '5de8ca79dc768.png', 'abc1/20200113/5e1c3a2ddd778.png', 1, 5005, 0, '2020-01-13 17:36:45', 1, 0);
INSERT INTO `we_attachment` VALUES (144, '8a49bfcdd4ea5ebcf082852587b9a49483501b4927cb-Zk3l7I_fw658.pn', 'abc1/20200113/5e1c3a412a929.png', 1, 3526, 0, '2020-01-13 17:37:05', 1, 0);
INSERT INTO `we_attachment` VALUES (145, '5de8ca6763472.png', 'abc1/20200113/5e1c3a9394df6.png', 1, 2551, 0, '2020-01-13 17:38:27', 1, 0);
INSERT INTO `we_attachment` VALUES (146, '5de8ca6763472.png', 'abc1/20200113/5e1c3a9bee79e.png', 1, 3745, 0, '2020-01-13 17:38:35', 1, 0);
INSERT INTO `we_attachment` VALUES (147, '5de8ca578b3ad.png', 'abc1/20200113/5e1c3ab418472.png', 1, 2837, 0, '2020-01-13 17:39:00', 1, 0);
INSERT INTO `we_attachment` VALUES (148, '5de8ca578b3ad.png', 'abc1/20200113/5e1c3aba21baf.png', 1, 2837, 0, '2020-01-13 17:39:06', 1, 0);
INSERT INTO `we_attachment` VALUES (149, '5de8ca578b3ad.png', 'abc1/20200113/5e1c3ac4ef64b.png', 1, 4487, 0, '2020-01-13 17:39:16', 1, 0);
INSERT INTO `we_attachment` VALUES (150, '5de8ca49164e7.png', 'abc1/20200113/5e1c3ade4d0cf.png', 1, 2958, 0, '2020-01-13 17:39:42', 1, 0);
INSERT INTO `we_attachment` VALUES (151, '5de8ca49164e7.png', 'abc1/20200113/5e1c3ae67bc92.png', 1, 5104, 0, '2020-01-13 17:39:50', 1, 0);
INSERT INTO `we_attachment` VALUES (152, '5de8ca36d543c.png', 'abc1/20200113/5e1c3b45ab18d.png', 1, 2726, 0, '2020-01-13 17:41:25', 1, 0);
INSERT INTO `we_attachment` VALUES (153, '5de8ca36d543c.png', 'abc1/20200113/5e1c3b4cb1f65.png', 1, 3971, 0, '2020-01-13 17:41:32', 1, 0);
INSERT INTO `we_attachment` VALUES (154, '5de8ca1f4ebe4.png', 'abc1/20200113/5e1c3b6086f1f.png', 1, 4488, 0, '2020-01-13 17:41:52', 1, 0);
INSERT INTO `we_attachment` VALUES (155, '5de8ca1f4ebe4.png', 'abc1/20200113/5e1c3b6f1798b.png', 1, 3105, 0, '2020-01-13 17:42:07', 1, 0);
INSERT INTO `we_attachment` VALUES (156, '5de8ca1f4ebe4.png', 'abc1/20200113/5e1c3b765ee52.png', 1, 4488, 0, '2020-01-13 17:42:14', 1, 0);
INSERT INTO `we_attachment` VALUES (157, '5de8c9ff4c130.png', 'abc1/20200113/5e1c3b91587b2.png', 1, 6282, 0, '2020-01-13 17:42:41', 1, 0);
INSERT INTO `we_attachment` VALUES (158, '5de8c9ff4c130.png', 'abc1/20200113/5e1c3b9b6afc5.png', 1, 3958, 0, '2020-01-13 17:42:51', 1, 0);
INSERT INTO `we_attachment` VALUES (159, '5de8c9ef9734e.png', 'abc1/20200113/5e1c3bb871073.png', 1, 2851, 0, '2020-01-13 17:43:20', 1, 0);
INSERT INTO `we_attachment` VALUES (160, '5de8c9ef9734e.png', 'abc1/20200113/5e1c3bc0032a9.png', 1, 3517, 0, '2020-01-13 17:43:28', 1, 0);
INSERT INTO `we_attachment` VALUES (161, '5de8ca49164e7.png', 'abc1/20200113/5e1c42304d00f.png', 1, 5104, 0, '2020-01-13 18:10:56', 1, 0);
INSERT INTO `we_attachment` VALUES (162, '5de8c9d02fc55.png', 'abc1/20200113/5e1c4259f2baf.png', 1, 2744, 0, '2020-01-13 18:11:37', 1, 0);
INSERT INTO `we_attachment` VALUES (163, '5de8c9d02fc55.png', 'abc1/20200113/5e1c427743496.png', 1, 4390, 0, '2020-01-13 18:12:07', 1, 0);
INSERT INTO `we_attachment` VALUES (164, '5de8c95752438.png', 'abc1/20200113/5e1c429ba7195.png', 1, 4327, 0, '2020-01-13 18:12:43', 1, 0);
INSERT INTO `we_attachment` VALUES (165, '5de8c95752438.png', 'abc1/20200113/5e1c42a8db8e6.png', 1, 7179, 0, '2020-01-13 18:12:56', 1, 0);
INSERT INTO `we_attachment` VALUES (166, '5de8c9480abab.png', 'abc1/20200113/5e1c42f0b1bf4.png', 1, 2025, 0, '2020-01-13 18:14:08', 1, 0);
INSERT INTO `we_attachment` VALUES (167, '5de8c9480abab.png', 'abc1/20200113/5e1c42fa55ca0.png', 1, 2886, 0, '2020-01-13 18:14:18', 1, 0);
INSERT INTO `we_attachment` VALUES (168, '5de8c928f01f6.png', 'abc1/20200113/5e1c432895d72.png', 1, 2421, 0, '2020-01-13 18:15:04', 1, 0);
INSERT INTO `we_attachment` VALUES (169, '5de8c928f01f6.png', 'abc1/20200113/5e1c4331346c9.png', 1, 2881, 0, '2020-01-13 18:15:13', 1, 0);
INSERT INTO `we_attachment` VALUES (170, '5de8c939ab228.png', 'abc1/20200113/5e1c436a57989.png', 1, 4740, 0, '2020-01-13 18:16:10', 1, 0);
INSERT INTO `we_attachment` VALUES (171, '5de8c939ab228.png', 'abc1/20200113/5e1c43749ee47.png', 1, 3004, 0, '2020-01-13 18:16:20', 1, 0);
INSERT INTO `we_attachment` VALUES (172, '5de8c928f01f6.png', 'abc1/20200113/5e1c438615d64.png', 1, 2421, 0, '2020-01-13 18:16:38', 1, 0);
INSERT INTO `we_attachment` VALUES (173, '5de8c928f01f6.png', 'abc1/20200113/5e1c438c846d0.png', 1, 2881, 0, '2020-01-13 18:16:44', 1, 0);
INSERT INTO `we_attachment` VALUES (174, '5de8c90905b0f.png', 'abc1/20200113/5e1c43dd5ce7c.png', 1, 3896, 0, '2020-01-13 18:18:05', 1, 0);
INSERT INTO `we_attachment` VALUES (175, '5de8c90905b0f.png', 'abc1/20200113/5e1c43e59b9f1.png', 1, 2629, 0, '2020-01-13 18:18:13', 1, 0);
INSERT INTO `we_attachment` VALUES (176, '5de8c9191bf08.png', 'abc1/20200113/5e1c4406bcb9b.png', 1, 2381, 0, '2020-01-13 18:18:46', 1, 0);
INSERT INTO `we_attachment` VALUES (177, '5de8c9191bf08.png', 'abc1/20200113/5e1c44136a16f.png', 1, 3430, 0, '2020-01-13 18:18:59', 1, 0);
INSERT INTO `we_attachment` VALUES (178, '5de8c8f819dc8 (1).png', 'abc1/20200113/5e1c443818cf2.png', 1, 2727, 0, '2020-01-13 18:19:36', 1, 0);
INSERT INTO `we_attachment` VALUES (179, '5de8c8f819dc8 (1).png', 'abc1/20200113/5e1c4444a642e.png', 1, 2098, 0, '2020-01-13 18:19:48', 1, 0);
INSERT INTO `we_attachment` VALUES (180, '5de8c8d5bd80b.png', 'abc1/20200113/5e1c4488102d2.png', 1, 4853, 0, '2020-01-13 18:20:56', 1, 0);
INSERT INTO `we_attachment` VALUES (181, '5de8c8d5bd80b.png', 'abc1/20200113/5e1c449059f22.png', 1, 3451, 0, '2020-01-13 18:21:04', 1, 0);
INSERT INTO `we_attachment` VALUES (182, '5de8c8bcba21e (1).png', 'abc1/20200113/5e1c44b7dd5b0.png', 1, 3259, 0, '2020-01-13 18:21:43', 1, 0);
INSERT INTO `we_attachment` VALUES (183, '5de8c8bcba21e (1).png', 'abc1/20200113/5e1c44c22ad07.png', 1, 2275, 0, '2020-01-13 18:21:54', 1, 0);
INSERT INTO `we_attachment` VALUES (184, '5de8c8aacdf77.png', 'abc1/20200113/5e1c453c840d7.png', 1, 3818, 0, '2020-01-13 18:23:56', 1, 0);
INSERT INTO `we_attachment` VALUES (185, '5de8c8aacdf77.png', 'abc1/20200113/5e1c454804f29.png', 1, 5804, 0, '2020-01-13 18:24:08', 1, 0);
INSERT INTO `we_attachment` VALUES (186, '5de8c88f9604a.png', 'abc1/20200113/5e1c45739af24.png', 1, 4292, 0, '2020-01-13 18:24:51', 1, 0);
INSERT INTO `we_attachment` VALUES (187, '5de8c88f9604a.png', 'abc1/20200113/5e1c457951888.png', 1, 4292, 0, '2020-01-13 18:24:57', 1, 0);
INSERT INTO `we_attachment` VALUES (188, '5de8c87f93247.png', 'abc1/20200113/5e1c4586de97f.png', 1, 4117, 0, '2020-01-13 18:25:10', 1, 0);
INSERT INTO `we_attachment` VALUES (189, '5de8c87f93247.png', 'abc1/20200113/5e1c458f90029.png', 1, 6430, 0, '2020-01-13 18:25:19', 1, 0);
INSERT INTO `we_attachment` VALUES (190, '5de8c8480b232.png', 'abc1/20200113/5e1c45a7d4a11.png', 1, 3147, 0, '2020-01-13 18:25:43', 1, 0);
INSERT INTO `we_attachment` VALUES (191, '5de8c8480b232.png', 'abc1/20200113/5e1c45b0de7a9.png', 1, 4275, 0, '2020-01-13 18:25:52', 1, 0);
INSERT INTO `we_attachment` VALUES (192, '5de8c7fd8c28f.png', 'abc1/20200113/5e1c45cf36ece.png', 1, 2570, 0, '2020-01-13 18:26:23', 1, 0);
INSERT INTO `we_attachment` VALUES (193, '5de8c835c5555.png', 'abc1/20200113/5e1c45e56d44d.png', 1, 2746, 0, '2020-01-13 18:26:45', 1, 0);
INSERT INTO `we_attachment` VALUES (194, '5de8c835c5555.png', 'abc1/20200113/5e1c45fa79902.png', 1, 4153, 0, '2020-01-13 18:27:06', 1, 0);
INSERT INTO `we_attachment` VALUES (195, '5de8c822e437f.png', 'abc1/20200113/5e1c46124ba4d.png', 1, 4007, 0, '2020-01-13 18:27:30', 1, 0);
INSERT INTO `we_attachment` VALUES (196, '5de8c822e437f.png', 'abc1/20200113/5e1c46185faa6.png', 1, 4007, 0, '2020-01-13 18:27:36', 1, 0);
INSERT INTO `we_attachment` VALUES (197, '5de8c8108cfe0.png', 'abc1/20200113/5e1c465c4b1c7.png', 1, 3680, 0, '2020-01-13 18:28:44', 1, 0);
INSERT INTO `we_attachment` VALUES (198, '5de8c8108cfe0.png', 'abc1/20200113/5e1c4665dcbe1.png', 1, 5443, 0, '2020-01-13 18:28:53', 1, 0);
INSERT INTO `we_attachment` VALUES (199, '5de8c8108cfe0.png', 'abc1/20200113/5e1c48776666e.png', 1, 3680, 0, '2020-01-13 18:37:43', 1, 0);
INSERT INTO `we_attachment` VALUES (200, '5de8c8108cfe0.png', 'abc1/20200113/5e1c487e9867d.png', 1, 5443, 0, '2020-01-13 18:37:50', 1, 0);
INSERT INTO `we_attachment` VALUES (201, '5de8c7fd8c28f.png', 'abc1/20200113/5e1c48a1ef3bd.png', 1, 2570, 0, '2020-01-13 18:38:25', 1, 0);
INSERT INTO `we_attachment` VALUES (202, '5de8c7fd8c28f.png', 'abc1/20200113/5e1c48ae3572f.png', 1, 3279, 0, '2020-01-13 18:38:38', 1, 0);
INSERT INTO `we_attachment` VALUES (203, '5de8c7edbcf35.png', 'abc1/20200113/5e1c48d6ce234.png', 1, 2974, 0, '2020-01-13 18:39:18', 1, 0);
INSERT INTO `we_attachment` VALUES (204, '5de8c7edbcf35.png', 'abc1/20200113/5e1c48ea9c85b.png', 1, 2974, 0, '2020-01-13 18:39:38', 1, 0);
INSERT INTO `we_attachment` VALUES (205, '5de8c7edbcf35.png', 'abc1/20200113/5e1c48f48ece4.png', 1, 2877, 0, '2020-01-13 18:39:48', 1, 0);
INSERT INTO `we_attachment` VALUES (206, '5de8c7e0067bf.png', 'abc1/20200113/5e1c492f77700.png', 1, 2677, 0, '2020-01-13 18:40:47', 1, 0);
INSERT INTO `we_attachment` VALUES (207, '5de8c7e0067bf.png', 'abc1/20200113/5e1c494394d9b.png', 1, 4232, 0, '2020-01-13 18:41:07', 1, 0);
INSERT INTO `we_attachment` VALUES (208, '5de8c3cf92545.png', 'abc1/20200113/5e1c498b62390.png', 1, 3217, 0, '2020-01-13 18:42:19', 1, 0);
INSERT INTO `we_attachment` VALUES (209, '5de8c7cddea86 (1).png', 'abc1/20200113/5e1c499a0d844.png', 1, 2093, 0, '2020-01-13 18:42:34', 1, 0);
INSERT INTO `we_attachment` VALUES (210, '5de8c7cddea86 (1).png', 'abc1/20200113/5e1c49a2054fb.png', 1, 2130, 0, '2020-01-13 18:42:42', 1, 0);
INSERT INTO `we_attachment` VALUES (211, '5de8c7cddea86 (1).png', 'abc1/20200113/5e1c49d1c5d50.png', 1, 2093, 0, '2020-01-13 18:43:29', 1, 0);
INSERT INTO `we_attachment` VALUES (212, '5de8c7be8a32b.png', 'abc1/20200113/5e1c49edebd82.png', 1, 2792, 0, '2020-01-13 18:43:57', 1, 0);
INSERT INTO `we_attachment` VALUES (213, '5de8c7be8a32b.png', 'abc1/20200113/5e1c49f8284bc.png', 1, 3933, 0, '2020-01-13 18:44:08', 1, 0);
INSERT INTO `we_attachment` VALUES (214, '5de8c7ae43454.png', 'abc1/20200113/5e1c4a51f2a27.png', 1, 3136, 0, '2020-01-13 18:45:37', 1, 0);
INSERT INTO `we_attachment` VALUES (215, '5de8c7ae43454.png', 'abc1/20200113/5e1c4a59da780.png', 1, 3136, 0, '2020-01-13 18:45:45', 1, 0);
INSERT INTO `we_attachment` VALUES (216, '5de8c77405449.png', 'abc1/20200113/5e1c4b410c49e.png', 1, 2389, 0, '2020-01-13 18:49:37', 1, 0);
INSERT INTO `we_attachment` VALUES (217, '5de8c77405449.png', 'abc1/20200113/5e1c4b4851cc5.png', 1, 3474, 0, '2020-01-13 18:49:44', 1, 0);
INSERT INTO `we_attachment` VALUES (218, '5de8c3ecd09f7.png', 'abc1/20200113/5e1c4b936976c.png', 1, 2577, 0, '2020-01-13 18:50:59', 1, 0);
INSERT INTO `we_attachment` VALUES (219, '5de8c3ecd09f7.png', 'abc1/20200113/5e1c4b9f41cbd.png', 1, 3227, 0, '2020-01-13 18:51:11', 1, 0);
INSERT INTO `we_attachment` VALUES (220, '5de8c733a0a94.png', 'abc1/20200113/5e1c4bc981eed.png', 1, 2262, 0, '2020-01-13 18:51:53', 1, 0);
INSERT INTO `we_attachment` VALUES (221, '5de8c733a0a94.png', 'abc1/20200113/5e1c4bd1b985e.png', 1, 3275, 0, '2020-01-13 18:52:01', 1, 0);
INSERT INTO `we_attachment` VALUES (222, '5de8c6ef1570c.png', 'abc1/20200113/5e1c4bf572617.png', 1, 3320, 0, '2020-01-13 18:52:37', 1, 0);
INSERT INTO `we_attachment` VALUES (223, '5de8c6ef1570c.png', 'abc1/20200113/5e1c4bfc92580.png', 1, 4415, 0, '2020-01-13 18:52:44', 1, 0);
INSERT INTO `we_attachment` VALUES (224, '5de8c6db2a850.png', 'abc1/20200113/5e1c4c2e583f7.png', 1, 3417, 0, '2020-01-13 18:53:34', 1, 0);
INSERT INTO `we_attachment` VALUES (225, '5de8c6db2a850.png', 'abc1/20200113/5e1c4c36ae901.png', 1, 4976, 0, '2020-01-13 18:53:42', 1, 0);
INSERT INTO `we_attachment` VALUES (226, '5de8c6c82f5f1.png', 'abc1/20200113/5e1c4c51ba282.png', 1, 2762, 0, '2020-01-13 18:54:09', 1, 0);
INSERT INTO `we_attachment` VALUES (227, '5de8c6c82f5f1.png', 'abc1/20200113/5e1c4c5935e8b.png', 1, 3363, 0, '2020-01-13 18:54:17', 1, 0);
INSERT INTO `we_attachment` VALUES (228, '5de8c6acb4ce2.png', 'abc1/20200113/5e1c4c75e7592.png', 1, 3118, 0, '2020-01-13 18:54:45', 1, 0);
INSERT INTO `we_attachment` VALUES (229, '5de8c6acb4ce2.png', 'abc1/20200113/5e1c4c7c753e9.png', 1, 4690, 0, '2020-01-13 18:54:52', 1, 0);
INSERT INTO `we_attachment` VALUES (230, '5de8c3fede2bf.png', 'abc1/20200113/5e1c4caf3eb30.png', 1, 2078, 0, '2020-01-13 18:55:43', 1, 0);
INSERT INTO `we_attachment` VALUES (231, '5de8c3fede2bf.png', 'abc1/20200113/5e1c4cb62a382.png', 1, 2821, 0, '2020-01-13 18:55:50', 1, 0);
INSERT INTO `we_attachment` VALUES (232, '5de8c3fede2bf.png', 'abc1/20200113/5e1c4cc744165.png', 1, 2078, 0, '2020-01-13 18:56:07', 1, 0);
INSERT INTO `we_attachment` VALUES (233, '5de8c3fede2bf.png', 'abc1/20200113/5e1c4cce05c25.png', 1, 2821, 0, '2020-01-13 18:56:14', 1, 0);
INSERT INTO `we_attachment` VALUES (234, '5de8c3ecd09f7.png', 'abc1/20200113/5e1c4cebd76b0.png', 1, 2577, 0, '2020-01-13 18:56:43', 1, 0);
INSERT INTO `we_attachment` VALUES (235, '5de8c3ecd09f7.png', 'abc1/20200113/5e1c4cf25b293.png', 1, 3227, 0, '2020-01-13 18:56:50', 1, 0);
INSERT INTO `we_attachment` VALUES (236, 'banner2.jpg', 'abc1/20200114/5e1d109b9cde5.jpg', 1, 384206, 0, '2020-01-14 08:51:39', 1, 0);
INSERT INTO `we_attachment` VALUES (237, 'banner1.jpg', 'abc1/20200114/5e1d10aaaf209.jpg', 1, 270816, 0, '2020-01-14 08:51:54', 1, 0);
INSERT INTO `we_attachment` VALUES (238, 'banner3.jpg', 'abc1/20200114/5e1d10be78c76.jpg', 1, 143241, 0, '2020-01-14 08:52:14', 1, 0);
INSERT INTO `we_attachment` VALUES (239, 'new1.jpg', 'img1/20200114/5e1d1644edcd0.jpg', 1, 357306, 1, '2020-01-14 09:15:49', 1, 0);
INSERT INTO `we_attachment` VALUES (240, 'invert.jpg', 'img1/20200114/5e1d2225e28e8.jpg', 1, 75641, 1, '2020-01-14 10:06:30', 1, 0);
INSERT INTO `we_attachment` VALUES (241, 'inver.jpg', 'img1/20200114/5e1d2240d65c8.jpg', 1, 35495, 1, '2020-01-14 10:06:56', 1, 0);
INSERT INTO `we_attachment` VALUES (242, 'investu2.jpg', 'img1/20200114/5e1d225e14c44.jpg', 1, 19545, 1, '2020-01-14 10:07:26', 1, 0);
INSERT INTO `we_attachment` VALUES (243, 'investu3.jpg', 'img1/20200114/5e1d2271579e1.jpg', 1, 40754, 1, '2020-01-14 10:07:45', 1, 0);
INSERT INTO `we_attachment` VALUES (244, 'invesbanner.jpg', 'img1/20200114/5e1d2288a8fcc.jpg', 1, 74650, 1, '2020-01-14 10:08:08', 1, 0);
INSERT INTO `we_attachment` VALUES (245, 'invesbannersj.jpg', 'img1/20200114/5e1d22931c623.jpg', 1, 34614, 1, '2020-01-14 10:08:19', 1, 0);
INSERT INTO `we_attachment` VALUES (246, 'rebanner.jpg', 'img1/20200114/5e1d22b0a175a.jpg', 1, 252774, 1, '2020-01-14 10:08:49', 1, 0);
INSERT INTO `we_attachment` VALUES (247, 'resbannersj.jpg', 'img1/20200114/5e1d22baeb68b.jpg', 1, 92732, 1, '2020-01-14 10:08:59', 1, 0);
INSERT INTO `we_attachment` VALUES (248, 'focusbanner.jpg', 'img1/20200114/5e1d22d1a9e72.jpg', 1, 139523, 1, '2020-01-14 10:09:21', 1, 0);
INSERT INTO `we_attachment` VALUES (249, 'focusbannersj.jpg', 'img1/20200114/5e1d22d5eba11.jpg', 1, 34849, 1, '2020-01-14 10:09:26', 1, 0);
INSERT INTO `we_attachment` VALUES (250, 'edunrtu1.png', 'img1/20200114/5e1d232e07abd.png', 1, 609668, 1, '2020-01-14 10:10:54', 1, 0);
INSERT INTO `we_attachment` VALUES (251, 'solnrtu1.jpg', 'img1/20200114/5e1d238d8030a.jpg', 1, 167167, 1, '2020-01-14 10:12:29', 1, 0);
INSERT INTO `we_attachment` VALUES (252, 'planrtu1.jpg', 'img1/20200114/5e1d23de6c978.jpg', 1, 187700, 1, '2020-01-14 10:13:50', 1, 0);
INSERT INTO `we_attachment` VALUES (253, 'infnrtu1.jpg', 'img1/20200114/5e1d240f31838.jpg', 1, 131312, 1, '2020-01-14 10:14:39', 1, 0);
INSERT INTO `we_attachment` VALUES (254, '360截图20200114113727752.jpg', 'img1/20200114/5e1d35fd746ac.jpg', 1, 162649, 1, '2020-01-14 11:31:09', 1, 0);
INSERT INTO `we_attachment` VALUES (255, '1.png', 'img1/20200114/5e1d39f40dc8a.png', 1, 133727, 1, '2020-01-14 11:48:04', 1, 0);
INSERT INTO `we_attachment` VALUES (256, '图层 1.png', 'img1/20200114/5e1d3c7568f3b.png', 1, 360083, 1, '2020-01-14 11:58:45', 1, 0);
INSERT INTO `we_attachment` VALUES (257, '1.png', 'img1/20200114/5e1d3d856b5c8.png', 1, 133727, 1, '2020-01-14 12:03:17', 1, 0);
INSERT INTO `we_attachment` VALUES (258, '3.png', 'img1/20200114/5e1d3d945095e.png', 1, 148793, 1, '2020-01-14 12:03:32', 1, 0);
INSERT INTO `we_attachment` VALUES (259, '4.png', 'img1/20200114/5e1d3d9f4b0c3.png', 1, 181038, 1, '2020-01-14 12:03:43', 1, 0);
INSERT INTO `we_attachment` VALUES (260, '5e1c13c5ae686.jpg', 'img1/20200114/5e1d57a323420.jpg', 1, 231499, 1, '2020-01-14 13:54:43', 1, 0);
INSERT INTO `we_attachment` VALUES (261, '5cece4c1e003a.jpg', 'img1/20200114/5e1d635d32526.jpg', 1, 159597, 1, '2020-01-14 14:44:45', 1, 0);
INSERT INTO `we_attachment` VALUES (262, '5cece7ab99714.jpg', 'img1/20200114/5e1d636b45f77.jpg', 1, 268492, 1, '2020-01-14 14:44:59', 1, 0);
INSERT INTO `we_attachment` VALUES (263, '5db2b424d16ab.jpg', 'img1/20200114/5e1d63e5227ee.jpg', 1, 1036801, 1, '2020-01-14 14:47:01', 1, 0);
INSERT INTO `we_attachment` VALUES (264, '1.png', 'img1/20200114/5e1d6a82374b9.png', 1, 133727, 1, '2020-01-14 15:15:14', 1, 0);
INSERT INTO `we_attachment` VALUES (265, 'idwe.jpg', 'img1/20200115/5e1e6ac0caecf.jpg', 1, 41750, 1, '2020-01-15 09:28:33', 1, 0);
INSERT INTO `we_attachment` VALUES (266, '11.png', 'img1/20200115/5e1e6c363748c.png', 1, 161574, 1, '2020-01-15 09:34:46', 1, 0);
INSERT INTO `we_attachment` VALUES (267, '11.png', 'img1/20200115/5e1e6eab43ee9.png', 1, 161574, 1, '2020-01-15 09:45:15', 1, 0);
INSERT INTO `we_attachment` VALUES (268, '2019WIDC.png', 'img1/20200115/5e1e703ab579e.png', 1, 190672, 1, '2020-01-15 09:51:54', 1, 0);
INSERT INTO `we_attachment` VALUES (269, '11.png', 'img1/20200115/5e1e78ed300ff.png', 1, 151262, 1, '2020-01-15 10:29:01', 1, 0);
INSERT INTO `we_attachment` VALUES (270, 'European Press Conference of 2019 WIDC& IDWE-001.png', 'img1/20200115/5e1e795a2a7a4.png', 1, 144537, 1, '2020-01-15 10:30:50', 1, 0);
INSERT INTO `we_attachment` VALUES (271, '图.png', 'img1/20200115/5e1e8c63a3c79.png', 1, 76693, 1, '2020-01-15 11:52:03', 1, 0);
INSERT INTO `we_attachment` VALUES (272, '图2.png', 'img1/20200115/5e1e8c8fad94d.png', 1, 59499, 1, '2020-01-15 11:52:47', 1, 0);
INSERT INTO `we_attachment` VALUES (273, 'bananer.jpg', 'abc1/20200115/5e1ed260ec346.jpg', 1, 274658, 0, '2020-01-15 16:50:40', 1, 0);
INSERT INTO `we_attachment` VALUES (274, 'bas.jpg', 'abc1/20200115/5e1ed2812c19d.jpg', 1, 75631, 0, '2020-01-15 16:51:13', 1, 0);
INSERT INTO `we_attachment` VALUES (275, 'new3.jpg', 'img1/20200115/5e1ed48ea5005.jpg', 1, 57806, 1, '2020-01-15 16:59:58', 1, 0);
INSERT INTO `we_attachment` VALUES (276, 'new3.jpg', 'img1/20200115/5e1ed55c3bb0c.jpg', 1, 82778, 1, '2020-01-15 17:03:24', 1, 0);
INSERT INTO `we_attachment` VALUES (277, '1111.jpg', 'img1/20200115/5e1ed7d8bda67.jpg', 1, 91394, 1, '2020-01-15 17:14:00', 1, 0);
INSERT INTO `we_attachment` VALUES (278, '001.png', 'img1/20200115/5e1edc6db7bc7.png', 1, 146647, 1, '2020-01-15 17:33:33', 1, 0);
INSERT INTO `we_attachment` VALUES (279, 'WIDC2019主视觉.png', 'img1/20200116/5e1fb2b78a3e7.png', 1, 61619, 1, '2020-01-16 08:47:51', 1, 0);
INSERT INTO `we_attachment` VALUES (280, '2019WIDC.png', 'img1/20200116/5e1fb313976c6.png', 1, 189995, 1, '2020-01-16 08:49:23', 1, 0);
INSERT INTO `we_attachment` VALUES (281, 'WIDC2018主视觉.png', 'img1/20200116/5e1fb320819ea.png', 1, 72877, 1, '2020-01-16 08:49:36', 1, 0);
INSERT INTO `we_attachment` VALUES (282, 'WIDC2018.png', 'img1/20200116/5e1fb3361c676.png', 1, 127196, 1, '2020-01-16 08:49:58', 1, 0);
INSERT INTO `we_attachment` VALUES (283, '2016WIDC.png', 'img1/20200116/5e1fb39f13e3b.png', 1, 197184, 1, '2020-01-16 08:51:43', 1, 0);
INSERT INTO `we_attachment` VALUES (284, '66.png', 'img1/20200116/5e1fb485ea7d5.png', 1, 111267, 1, '2020-01-16 08:55:34', 1, 0);
INSERT INTO `we_attachment` VALUES (285, '800-2.jpg', 'img1/20200209/5e3f925783850.jpg', 1, 204203, 1, '2020-02-09 13:02:15', 1, 0);
INSERT INTO `we_attachment` VALUES (286, '1.jpg', 'img1/20200209/5e3f927526bf7.jpg', 1, 80952, 1, '2020-02-09 13:02:45', 1, 0);
INSERT INTO `we_attachment` VALUES (287, '80001.png', 'img1/20200209/5e3f9a80436bb.png', 1, 121216, 1, '2020-02-09 13:37:04', 1, 0);
INSERT INTO `we_attachment` VALUES (288, '80002.png', 'img1/20200209/5e3f9adb3f1c2.png', 1, 460183, 1, '2020-02-09 13:38:35', 1, 0);
INSERT INTO `we_attachment` VALUES (289, '80001.png', 'img1/20200209/5e3f9b2cdc558.png', 1, 117470, 1, '2020-02-09 13:39:57', 1, 0);
INSERT INTO `we_attachment` VALUES (290, '80001.png', 'img1/20200209/5e3f9b5bb7337.png', 1, 116722, 1, '2020-02-09 13:40:43', 1, 0);
INSERT INTO `we_attachment` VALUES (291, '8000.jpg', 'img1/20200209/5e3f9e710775f.jpg', 1, 126878, 1, '2020-02-09 13:53:53', 1, 0);
INSERT INTO `we_attachment` VALUES (292, '8001.jpg', 'img1/20200209/5e3f9e8907cc5.jpg', 1, 134901, 1, '2020-02-09 13:54:17', 1, 0);
INSERT INTO `we_attachment` VALUES (293, '8002.jpg', 'img1/20200209/5e3f9eaa0038b.jpg', 1, 83904, 1, '2020-02-09 13:54:50', 1, 0);
INSERT INTO `we_attachment` VALUES (294, '2.JPG', 'img1/20200209/5e3fa0c7dad11.JPG', 0, 1984743, 1, '2020-02-09 14:03:53', 1, 0);
INSERT INTO `we_attachment` VALUES (295, '48662CC137585D97191FE071213BF95925EBE23D_size160_w600_h399.j', 'img1/20200209/5e3fa15d94247.jpeg', 1, 164277, 1, '2020-02-09 14:06:21', 1, 0);
INSERT INTO `we_attachment` VALUES (296, '002.jpg', 'img1/20200209/5e3fa16d15858.jpg', 1, 298564, 1, '2020-02-09 14:06:37', 1, 0);
INSERT INTO `we_attachment` VALUES (297, '12.png', 'img1/20200209/5e3fa4406d6ab.png', 1, 348808, 1, '2020-02-09 14:18:40', 1, 0);
INSERT INTO `we_attachment` VALUES (298, '34.png', 'img1/20200209/5e3fa7b28e4bf.png', 1, 242190, 1, '2020-02-09 14:33:22', 1, 0);
INSERT INTO `we_attachment` VALUES (299, '5678.png', 'img1/20200209/5e3fa7d66f875.png', 1, 190172, 1, '2020-02-09 14:33:58', 1, 0);
INSERT INTO `we_attachment` VALUES (300, '910.png', 'img1/20200209/5e3fa7ebcd6b5.png', 1, 286832, 1, '2020-02-09 14:34:19', 1, 0);
INSERT INTO `we_attachment` VALUES (301, '1112.png', 'img1/20200209/5e3fa7fce0baa.png', 1, 291683, 1, '2020-02-09 14:34:37', 1, 0);
INSERT INTO `we_attachment` VALUES (302, '1.png', 'img1/20200209/5e3fabda0fd11.png', 1, 246238, 1, '2020-02-09 14:51:06', 1, 0);
INSERT INTO `we_attachment` VALUES (303, '1.png', 'img1/20200209/5e3fabec9da32.png', 1, 257776, 1, '2020-02-09 14:51:24', 1, 0);
INSERT INTO `we_attachment` VALUES (304, '1.png', 'img1/20200209/5e3fac90a93aa.png', 1, 257776, 1, '2020-02-09 14:54:08', 1, 0);
INSERT INTO `we_attachment` VALUES (305, '1.png', 'img1/20200209/5e3facb2262cf.png', 1, 257672, 1, '2020-02-09 14:54:42', 1, 0);
INSERT INTO `we_attachment` VALUES (306, '1.png', 'img1/20200209/5e3fadf698a19.png', 1, 210460, 1, '2020-02-09 15:00:06', 1, 0);
INSERT INTO `we_attachment` VALUES (307, '48662CC137585D97191FE071213BF95925EBE23D_size160_w600_h399.j', 'img1/20200209/5e3fae712ef9a.jpeg', 1, 164277, 1, '2020-02-09 15:02:09', 1, 0);
INSERT INTO `we_attachment` VALUES (308, '8.jpg', 'img1/20200209/5e3fae9edf61f.jpg', 1, 118701, 1, '2020-02-09 15:02:55', 1, 0);
INSERT INTO `we_attachment` VALUES (309, '800-2.jpg', 'img1/20200209/5e3faf6b9151e.jpg', 1, 204203, 1, '2020-02-09 15:06:19', 1, 0);
INSERT INTO `we_attachment` VALUES (310, '800-2.jpg', 'img1/20200209/5e3fafc2a9250.jpg', 1, 204203, 1, '2020-02-09 15:07:46', 1, 0);
INSERT INTO `we_attachment` VALUES (311, '800-1.jpg', 'img1/20200209/5e3fafd0eca1a.jpg', 1, 131493, 1, '2020-02-09 15:08:01', 1, 0);
INSERT INTO `we_attachment` VALUES (312, '8001.png', 'img1/20200209/5e3fb0b69ef2d.png', 1, 504945, 1, '2020-02-09 15:11:50', 1, 0);
INSERT INTO `we_attachment` VALUES (313, '3.jpg', 'img1/20200209/5e3fb151cc018.jpg', 1, 19834, 1, '2020-02-09 15:14:25', 1, 0);
INSERT INTO `we_attachment` VALUES (314, '1.jpg', 'img1/20200209/5e3fb2c61c8c6.jpg', 1, 202083, 1, '2020-02-09 15:20:38', 1, 0);
INSERT INTO `we_attachment` VALUES (315, '2.jpg', 'img1/20200209/5e3fb2d52f579.jpg', 1, 196893, 1, '2020-02-09 15:20:53', 1, 0);
INSERT INTO `we_attachment` VALUES (316, '3.jpg', 'img1/20200209/5e3fb31e5c0c1.jpg', 1, 179746, 1, '2020-02-09 15:22:06', 1, 0);
INSERT INTO `we_attachment` VALUES (317, '设计扶贫倡议 主视觉.jpg', 'img1/20200209/5e3fba7245ad0.jpg', 1, 143187, 1, '2020-02-09 15:53:22', 1, 0);
INSERT INTO `we_attachment` VALUES (318, '设计扶贫地图.jpg', 'img1/20200209/5e3fbb159b12c.jpg', 1, 61726, 1, '2020-02-09 15:56:05', 1, 0);
INSERT INTO `we_attachment` VALUES (319, '2.jpg', 'img1/20200209/5e3fbbef9f2de.jpg', 1, 133722, 1, '2020-02-09 15:59:43', 1, 0);
INSERT INTO `we_attachment` VALUES (320, '咖啡.jpg', 'img1/20200209/5e3fbcbe70914.jpg', 1, 303822, 1, '2020-02-09 16:03:10', 1, 0);
INSERT INTO `we_attachment` VALUES (321, '【刺绣音箱】.jpg', 'img1/20200209/5e3fbcd8ae0d9.jpg', 1, 109008, 1, '2020-02-09 16:03:37', 1, 0);
INSERT INTO `we_attachment` VALUES (322, '11.jpg', 'img1/20200209/5e3fd1eb40f22.jpg', 1, 132986, 1, '2020-02-09 17:33:31', 1, 0);
INSERT INTO `we_attachment` VALUES (323, '11.jpg', 'img1/20200209/5e3fd2022448a.jpg', 1, 133624, 1, '2020-02-09 17:33:54', 1, 0);
INSERT INTO `we_attachment` VALUES (324, '333.jpg', 'img1/20200209/5e3fd219e3b97.jpg', 1, 110326, 1, '2020-02-09 17:34:18', 1, 0);
INSERT INTO `we_attachment` VALUES (325, '5cef9cea87529.jpg', 'img1/20200209/5e3fe89fc55dc.jpg', 1, 178518, 1, '2020-02-09 19:10:24', 1, 0);
INSERT INTO `we_attachment` VALUES (326, '5cef9cf4612cf.jpg', 'img1/20200209/5e3fe8b7062b0.jpg', 1, 202024, 1, '2020-02-09 19:10:47', 1, 0);
INSERT INTO `we_attachment` VALUES (327, '5cef9cfddf0f8.jpg', 'img1/20200209/5e3fe8c91bd19.jpg', 1, 189012, 1, '2020-02-09 19:11:05', 1, 0);
INSERT INTO `we_attachment` VALUES (328, '5cef9d02df0f8.jpg', 'img1/20200209/5e3fe8dd6d5dd.jpg', 1, 215593, 1, '2020-02-09 19:11:25', 1, 0);
INSERT INTO `we_attachment` VALUES (329, '5cef9d5aca146.jpg', 'img1/20200209/5e3fe8ef40cb2.jpg', 1, 113716, 1, '2020-02-09 19:11:43', 1, 0);
INSERT INTO `we_attachment` VALUES (330, '5cef9cf4612cf.jpg', 'img1/20200209/5e3fe963e9769.jpg', 1, 146504, 1, '2020-02-09 19:13:40', 1, 0);
INSERT INTO `we_attachment` VALUES (331, '5cef9cf4612cf.jpg', 'img1/20200209/5e3fe9d800960.jpg', 1, 222192, 1, '2020-02-09 19:15:36', 1, 0);
INSERT INTO `we_attachment` VALUES (332, '1.jpg', 'img1/20200209/5e3fed5077763.jpg', 1, 240617, 1, '2020-02-09 19:30:24', 1, 0);
INSERT INTO `we_attachment` VALUES (333, '2.jpg', 'img1/20200209/5e3fed5b3082d.jpg', 1, 225866, 1, '2020-02-09 19:30:35', 1, 0);
INSERT INTO `we_attachment` VALUES (334, '2.jpg', 'img1/20200209/5e3feecf52e3c.jpg', 1, 74937, 1, '2020-02-09 19:36:47', 1, 0);
INSERT INTO `we_attachment` VALUES (335, '4.jpg', 'img1/20200209/5e3feeed2bb51.jpg', 1, 118253, 1, '2020-02-09 19:37:17', 1, 0);
INSERT INTO `we_attachment` VALUES (336, '3.jpg', 'img1/20200209/5e3feefb80b8c.jpg', 1, 127699, 1, '2020-02-09 19:37:31', 1, 0);
INSERT INTO `we_attachment` VALUES (337, 'z-d.jpg', 'img1/20200209/5e3ff6c213a10.jpg', 1, 142243, 1, '2020-02-09 20:10:42', 1, 0);
INSERT INTO `we_attachment` VALUES (338, 'zy.jpg', 'img1/20200210/5e40e2c878bf8.jpg', 1, 90188, 1, '2020-02-10 12:57:44', 1, 0);
INSERT INTO `we_attachment` VALUES (339, 'z-d.jpg', 'img1/20200210/5e40e37bf33d0.jpg', 1, 142243, 1, '2020-02-10 13:00:44', 1, 0);
INSERT INTO `we_attachment` VALUES (340, '1.jpg', 'img1/20200210/5e40e5baeb019.jpg', 1, 48597, 1, '2020-02-10 13:10:19', 1, 0);
INSERT INTO `we_attachment` VALUES (341, '234_01.jpg', 'img1/20200210/5e40e9b32a714.jpg', 1, 101980, 1, '2020-02-10 13:27:15', 1, 0);
INSERT INTO `we_attachment` VALUES (342, '56.jpg', 'img1/20200210/5e40e9bf4caa8.jpg', 1, 168506, 1, '2020-02-10 13:27:27', 1, 0);
INSERT INTO `we_attachment` VALUES (343, '78_01.jpg', 'img1/20200210/5e40e9ccb9ab2.jpg', 1, 145578, 1, '2020-02-10 13:27:40', 1, 0);
INSERT INTO `we_attachment` VALUES (344, '56.jpg', 'img1/20200210/5e40e9e3ac756.jpg', 1, 168506, 1, '2020-02-10 13:28:03', 1, 0);
INSERT INTO `we_attachment` VALUES (345, '78_01.jpg', 'img1/20200210/5e40e9e94a4ff.jpg', 1, 145578, 1, '2020-02-10 13:28:09', 1, 0);
INSERT INTO `we_attachment` VALUES (346, '9_01.jpg', 'img1/20200210/5e40e9f1265c3.jpg', 1, 320816, 1, '2020-02-10 13:28:17', 1, 0);
INSERT INTO `we_attachment` VALUES (347, '10_01.jpg', 'img1/20200210/5e40ea15c97cc.jpg', 1, 338530, 1, '2020-02-10 13:28:54', 1, 0);
INSERT INTO `we_attachment` VALUES (348, '11_01.jpg', 'img1/20200210/5e40ea2973eac.jpg', 1, 268734, 1, '2020-02-10 13:29:13', 1, 0);
INSERT INTO `we_attachment` VALUES (349, '78_01.jpg', 'img1/20200210/5e40eb3eef992.jpg', 1, 145578, 1, '2020-02-10 13:33:51', 1, 0);
INSERT INTO `we_attachment` VALUES (350, 'zr.jpg', 'img1/20200210/5e40ec2abebfb.jpg', 1, 91417, 1, '2020-02-10 13:37:46', 1, 0);
INSERT INTO `we_attachment` VALUES (351, '222.jpg', 'img1/20200210/5e40ee044a034.jpg', 1, 227791, 1, '2020-02-10 13:45:40', 1, 0);
INSERT INTO `we_attachment` VALUES (352, '111.jpg', 'img1/20200210/5e40ee1776188.jpg', 1, 213634, 1, '2020-02-10 13:45:59', 1, 0);
INSERT INTO `we_attachment` VALUES (353, 'zr.jpg', 'img1/20200210/5e40efaa33ff3.jpg', 1, 91417, 1, '2020-02-10 13:52:42', 1, 0);
INSERT INTO `we_attachment` VALUES (354, '222_02.jpg', 'img1/20200210/5e40efb3691d0.jpg', 1, 173648, 1, '2020-02-10 13:52:51', 1, 0);
INSERT INTO `we_attachment` VALUES (355, '222222222_02.jpg', 'img1/20200210/5e40f08136a5a.jpg', 1, 160704, 1, '2020-02-10 13:56:17', 1, 0);
INSERT INTO `we_attachment` VALUES (356, '11111_02.jpg', 'img1/20200210/5e40f0920d62d.jpg', 1, 151854, 1, '2020-02-10 13:56:34', 1, 0);
INSERT INTO `we_attachment` VALUES (357, '11.jpg', 'img1/20200210/5e40f31410b78.jpg', 1, 97486, 1, '2020-02-10 14:07:16', 1, 0);
INSERT INTO `we_attachment` VALUES (358, '11.jpg', 'img1/20200210/5e40f39192fcf.jpg', 1, 97486, 1, '2020-02-10 14:09:21', 1, 0);
INSERT INTO `we_attachment` VALUES (359, '33.jpg', 'img1/20200210/5e40f39c6b184.jpg', 1, 60875, 1, '2020-02-10 14:09:32', 1, 0);
INSERT INTO `we_attachment` VALUES (360, '22.jpg', 'img1/20200210/5e40f3aee76bf.jpg', 1, 60126, 1, '2020-02-10 14:09:51', 1, 0);
INSERT INTO `we_attachment` VALUES (361, '咖啡11.jpg', 'img1/20200210/5e40f5d657a34.jpg', 1, 303822, 1, '2020-02-10 14:19:02', 1, 0);
INSERT INTO `we_attachment` VALUES (362, '11.jpg', 'img1/20200210/5e40f5e5a2875.jpg', 1, 59468, 1, '2020-02-10 14:19:17', 1, 0);
INSERT INTO `we_attachment` VALUES (363, '700.jpg', 'img1/20200210/5e40f67d1d45c.jpg', 1, 34754, 1, '2020-02-10 14:21:49', 1, 0);
INSERT INTO `we_attachment` VALUES (364, '2016.png', 'img1/20200210/5e41009867b3a.png', 1, 111267, 1, '2020-02-10 15:04:56', 1, 0);
INSERT INTO `we_attachment` VALUES (365, '2018.png', 'img1/20200210/5e4100ab6749d.png', 1, 72877, 1, '2020-02-10 15:05:15', 1, 0);
INSERT INTO `we_attachment` VALUES (366, '2019.png', 'img1/20200210/5e4100c27c37c.png', 1, 61619, 1, '2020-02-10 15:05:38', 1, 0);
INSERT INTO `we_attachment` VALUES (367, '8003.jpg', 'img1/20200210/5e4105393db06.jpg', 1, 355720, 1, '2020-02-10 15:24:41', 1, 0);
INSERT INTO `we_attachment` VALUES (368, '8003.jpg', 'img1/20200210/5e410549acb30.jpg', 1, 355720, 1, '2020-02-10 15:24:57', 1, 0);
INSERT INTO `we_attachment` VALUES (369, 'zr.jpg', 'img1/20200210/5e4124f51fb7d.jpg', 1, 91417, 1, '2020-02-10 17:40:05', 1, 0);
INSERT INTO `we_attachment` VALUES (370, '720.jpg', 'img1/20200210/5e41251e4b031.jpg', 1, 81468, 1, '2020-02-10 17:40:46', 1, 0);
INSERT INTO `we_attachment` VALUES (371, '3.jpg', 'img1/20200210/5e412a6185843.jpg', 1, 33920, 1, '2020-02-10 18:03:13', 1, 0);
INSERT INTO `we_attachment` VALUES (372, '720.jpg', 'img1/20200210/5e412b2768537.jpg', 1, 38320, 1, '2020-02-10 18:06:31', 1, 0);
INSERT INTO `we_attachment` VALUES (373, '首图.jpg', 'img1/20200211/5e424aa27c88d.jpg', 1, 44046, 1, '2020-02-11 14:33:06', 1, 0);
INSERT INTO `we_attachment` VALUES (374, '首图1.png', 'img1/20200211/5e424aab04a84.png', 1, 294739, 1, '2020-02-11 14:33:15', 1, 0);
INSERT INTO `we_attachment` VALUES (375, '1.jpg', 'img1/20200211/5e424aedcf1af.jpg', 1, 53072, 1, '2020-02-11 14:34:22', 1, 0);
INSERT INTO `we_attachment` VALUES (376, '11.jpeg', 'img1/20200211/5e424afead267.jpeg', 1, 98368, 1, '2020-02-11 14:34:38', 1, 0);
INSERT INTO `we_attachment` VALUES (377, '22.jpg', 'img1/20200211/5e424b6fcc074.jpg', 1, 155768, 1, '2020-02-11 14:36:32', 1, 0);
INSERT INTO `we_attachment` VALUES (378, '3.jpeg', 'img1/20200211/5e424b88bcc71.jpeg', 1, 92678, 1, '2020-02-11 14:36:56', 1, 0);
INSERT INTO `we_attachment` VALUES (379, '首图1.png', 'img1/20200211/5e424bd0efad3.png', 1, 294739, 1, '2020-02-11 14:38:09', 1, 0);
INSERT INTO `we_attachment` VALUES (380, '111.jpg', 'img1/20200211/5e424d5e81848.jpg', 1, 200423, 1, '2020-02-11 14:44:46', 1, 0);
INSERT INTO `we_attachment` VALUES (381, '333.jpg', 'img1/20200211/5e424d70a8bf3.jpg', 1, 218467, 1, '2020-02-11 14:45:04', 1, 0);
INSERT INTO `we_attachment` VALUES (382, '1_01.jpg', 'img1/20200211/5e425c01554c9.jpg', 1, 134867, 1, '2020-02-11 15:47:13', 1, 0);
INSERT INTO `we_attachment` VALUES (383, '111_03.jpg', 'img1/20200211/5e42642990acd.jpg', 1, 79176, 1, '2020-02-11 16:22:01', 1, 0);
INSERT INTO `we_attachment` VALUES (384, '122_07.jpg', 'img1/20200211/5e4264d7d36ab.jpg', 1, 51092, 1, '2020-02-11 16:24:55', 1, 0);
INSERT INTO `we_attachment` VALUES (385, '133_09.jpg', 'img1/20200211/5e4264e9435c0.jpg', 1, 111004, 1, '2020-02-11 16:25:13', 1, 0);
INSERT INTO `we_attachment` VALUES (386, '1abous_03.jpg', 'img1/20200211/5e42732a07305.jpg', 1, 264365, 1, '2020-02-11 17:26:02', 1, 0);
INSERT INTO `we_attachment` VALUES (387, 'huaban-(13)_02.jpg', 'img1/20200211/5e427f35a2aa6.jpg', 1, 257888, 1, '2020-02-11 18:17:25', 1, 0);
INSERT INTO `we_attachment` VALUES (388, 'huaban-(13)_02.jpg', 'img1/20200211/5e427fe113a3c.jpg', 1, 253718, 1, '2020-02-11 18:20:17', 1, 0);
INSERT INTO `we_attachment` VALUES (389, 'huaban-(13)_02.jpg', 'img1/20200211/5e42af0facd4c.jpg', 1, 253683, 1, '2020-02-11 21:41:36', 1, 0);
INSERT INTO `we_attachment` VALUES (390, '矩形 1.png', 'img1/20200211/5e42b13da1317.png', 1, 263, 1, '2020-02-11 21:50:53', 1, 0);
INSERT INTO `we_attachment` VALUES (391, '矩形 1.png', 'img1/20200211/5e42b21b5cfcc.png', 1, 263, 1, '2020-02-11 21:54:35', 1, 0);
INSERT INTO `we_attachment` VALUES (392, '矩形 1.png', 'img1/20200211/5e42b23120438.png', 1, 263, 1, '2020-02-11 21:54:57', 1, 0);
INSERT INTO `we_attachment` VALUES (393, '12.jpg', 'img1/20200214/5e463d93b8752.jpg', 1, 121568, 1, '2020-02-14 14:26:28', 1, 0);
INSERT INTO `we_attachment` VALUES (394, '0002.png', 'img1/20200306/5e61ce9552e6f.png', 1, 453475, 1, '2020-03-06 12:16:21', 1, 0);
INSERT INTO `we_attachment` VALUES (395, '003.png', 'img1/20200306/5e61cf59d78fa.png', 1, 708201, 1, '2020-03-06 12:19:38', 1, 0);
INSERT INTO `we_attachment` VALUES (396, '高清4.jpg', 'img1/20200306/5e61d1482696e.jpg', 1, 196900, 1, '2020-03-06 12:27:52', 1, 0);
INSERT INTO `we_attachment` VALUES (397, '高清1.jpg', 'img1/20200306/5e61d1541dccf.jpg', 1, 191002, 1, '2020-03-06 12:28:04', 1, 0);
INSERT INTO `we_attachment` VALUES (398, '高清2.jpg', 'img1/20200306/5e61d15e1713d.jpg', 1, 173826, 1, '2020-03-06 12:28:14', 1, 0);
INSERT INTO `we_attachment` VALUES (399, '10143756.jpg', 'img1/20200306/5e61d3f596e11.jpg', 1, 90755, 1, '2020-03-06 12:39:17', 1, 0);
INSERT INTO `we_attachment` VALUES (400, '27323932.jpg', 'img1/20200306/5e61d40f66b0e.jpg', 1, 109244, 1, '2020-03-06 12:39:43', 1, 0);
INSERT INTO `we_attachment` VALUES (401, '微信图片_20200302135410.jpg', 'img1/20200306/5e61d44b0e18e.jpg', 1, 136802, 1, '2020-03-06 12:40:43', 1, 0);
INSERT INTO `we_attachment` VALUES (402, '微信图片_20200302135442.jpg', 'img1/20200306/5e61d460c7ab3.jpg', 1, 122170, 1, '2020-03-06 12:41:04', 1, 0);
INSERT INTO `we_attachment` VALUES (403, '微信图片_20200302135425.jpg', 'img1/20200306/5e61d46b3fd17.jpg', 1, 171083, 1, '2020-03-06 12:41:15', 1, 0);
INSERT INTO `we_attachment` VALUES (404, '微信图片_20200302135410.jpg', 'img1/20200306/5e61d4ba26952.jpg', 1, 136802, 1, '2020-03-06 12:42:34', 1, 0);
INSERT INTO `we_attachment` VALUES (405, '20的副本.jpg', 'img1/20200306/5e61d88cd33f0.jpg', 1, 82090, 1, '2020-03-06 12:58:53', 1, 0);
INSERT INTO `we_attachment` VALUES (406, '微信图片_20200227194422.png', 'img1/20200306/5e61d897f3935.png', 1, 179991, 1, '2020-03-06 12:59:04', 1, 0);
INSERT INTO `we_attachment` VALUES (407, '涉及扶贫.png', 'img1/20200306/5e61d8c6cf5f0.png', 1, 176985, 1, '2020-03-06 12:59:50', 1, 0);
INSERT INTO `we_attachment` VALUES (408, '设计扶贫倡议-(2).jpg', 'img1/20200306/5e61ddf24b1fb.jpg', 1, 136208, 1, '2020-03-06 13:21:54', 1, 0);
INSERT INTO `we_attachment` VALUES (409, '1.jpg', 'img1/20200306/5e61de5c4cc19.jpg', 1, 563803, 1, '2020-03-06 13:23:40', 1, 0);
INSERT INTO `we_attachment` VALUES (410, '1.jpg', 'img1/20200306/5e61dee7e97e1.jpg', 1, 63937, 1, '2020-03-06 13:26:00', 1, 0);
INSERT INTO `we_attachment` VALUES (411, '5e1e6eab43ee9.png', 'img1/20200306/5e61e28abe829.png', 1, 543602, 1, '2020-03-06 13:41:31', 1, 0);
INSERT INTO `we_attachment` VALUES (412, 'DJI_0024.jpg', 'img1/20200306/5e61e2bb1f6bd.jpg', 1, 136148, 1, '2020-03-06 13:42:19', 1, 0);
INSERT INTO `we_attachment` VALUES (413, '2.jpg', 'img1/20200306/5e61e2cc5bf4c.jpg', 1, 120116, 1, '2020-03-06 13:42:36', 1, 0);
INSERT INTO `we_attachment` VALUES (414, '3.jpg', 'img1/20200306/5e61e2cc807ad.jpg', 1, 108191, 1, '2020-03-06 13:42:36', 1, 0);
INSERT INTO `we_attachment` VALUES (415, 'DSC_8322.jpg', 'img1/20200306/5e61e2ccbf17f.jpg', 1, 210016, 1, '2020-03-06 13:42:37', 1, 0);
INSERT INTO `we_attachment` VALUES (416, '1.jpg', 'img1/20200306/5e61e2ef6459c.jpg', 1, 125326, 1, '2020-03-06 13:43:11', 1, 0);
INSERT INTO `we_attachment` VALUES (417, 'Industrial-visit-企业考察.jpg', 'img1/20200306/5e61ea5a170dc.jpg', 1, 23874, 1, '2020-03-06 14:14:50', 1, 0);
INSERT INTO `we_attachment` VALUES (418, '替换：湾区设计开放大学校图.jpg', 'img1/20200306/5e61f0a845838.jpg', 1, 1962627, 1, '2020-03-06 14:41:45', 1, 0);
INSERT INTO `we_attachment` VALUES (419, '替换：湾区设计开放大学校图.png', 'img1/20200306/5e61f103ef46e.png', 1, 523155, 1, '2020-03-06 14:43:16', 1, 0);
INSERT INTO `we_attachment` VALUES (420, '未标题-2.jpg', 'img1/20200306/5e61f6c68b590.jpg', 1, 137515, 1, '2020-03-06 15:07:50', 1, 0);
INSERT INTO `we_attachment` VALUES (421, '替换：湾区设计开放大学校图.jpg', 'img1/20200306/5e61f6da97e28.jpg', 1, 1962627, 1, '2020-03-06 15:08:11', 1, 0);
INSERT INTO `we_attachment` VALUES (422, '未标题-3.jpg', 'img1/20200306/5e61fb1b71d17.jpg', 1, 551503, 1, '2020-03-06 15:26:19', 1, 0);
INSERT INTO `we_attachment` VALUES (423, 'European-Press-Conference-of-2019-WIDC&-IDWE-005.jpg', 'img1/20200306/5e626ea8ce1ce.jpg', 1, 154773, 1, '2020-03-06 23:39:21', 1, 0);
INSERT INTO `we_attachment` VALUES (424, 'European-Press-Conference-of-2019-WIDC&-IDWE-002.jpg', 'img1/20200306/5e626eb64b7c4.jpg', 1, 96819, 1, '2020-03-06 23:39:34', 1, 0);
INSERT INTO `we_attachment` VALUES (425, '未标题-1.png', 'img1/20200306/5e626ebada755.png', 1, 293603, 1, '2020-03-06 23:39:38', 1, 0);
INSERT INTO `we_attachment` VALUES (426, 'European-Press-Conference-of-2019-WIDC&-IDWE-002.jpg', 'img1/20200306/5e626fd9e0fdb.jpg', 1, 96819, 1, '2020-03-06 23:44:26', 1, 0);
INSERT INTO `we_attachment` VALUES (427, '未标题-1.png', 'img1/20200306/5e626fda17dcf.png', 1, 293603, 1, '2020-03-06 23:44:26', 1, 0);
INSERT INTO `we_attachment` VALUES (428, '未标题-1_04.jpg', 'img1/20200316/5e6f19484621a.jpg', 1, 234539, 1, '2020-03-16 14:14:32', 1, 0);
INSERT INTO `we_attachment` VALUES (429, '未标题1-1_02.jpg', 'img1/20200316/5e6f194881ec6.jpg', 1, 294617, 1, '2020-03-16 14:14:32', 1, 0);
INSERT INTO `we_attachment` VALUES (430, '未标题-1_04.jpg', 'img1/20200316/5e6f1996bc213.jpg', 1, 234539, 1, '2020-03-16 14:15:50', 1, 0);
INSERT INTO `we_attachment` VALUES (431, '未标题-1_03.jpg', 'img1/20200316/5e6f2902da6ec.jpg', 1, 126572, 1, '2020-03-16 15:21:39', 1, 0);
INSERT INTO `we_attachment` VALUES (432, '未标题-1_06.jpg', 'img1/20200316/5e6f2910b8f16.jpg', 1, 187755, 1, '2020-03-16 15:21:52', 1, 0);
INSERT INTO `we_attachment` VALUES (433, '未标题-1_10.jpg', 'img1/20200316/5e6f291a79480.jpg', 1, 168646, 1, '2020-03-16 15:22:02', 1, 0);
INSERT INTO `we_attachment` VALUES (434, '未标题-1_13.jpg', 'img1/20200316/5e6f29229e8a9.jpg', 1, 68228, 1, '2020-03-16 15:22:10', 1, 0);
INSERT INTO `we_attachment` VALUES (435, '未标题-1_24.jpg', 'img1/20200316/5e6f2929f075e.jpg', 1, 100709, 1, '2020-03-16 15:22:18', 1, 0);
INSERT INTO `we_attachment` VALUES (436, '未标题-1_18.jpg', 'img1/20200316/5e6f293327595.jpg', 1, 207379, 1, '2020-03-16 15:22:27', 1, 0);
INSERT INTO `we_attachment` VALUES (437, '未标题-1_21.jpg', 'img1/20200316/5e6f2945a8ed8.jpg', 1, 107901, 1, '2020-03-16 15:22:45', 1, 0);
INSERT INTO `we_attachment` VALUES (438, '未标题-1_24.jpg', 'img1/20200316/5e6f294dab1c9.jpg', 1, 100709, 1, '2020-03-16 15:22:53', 1, 0);
INSERT INTO `we_attachment` VALUES (439, '未标题-1_03.jpg', 'img1/20200316/5e6f29b956e75.jpg', 1, 126572, 1, '2020-03-16 15:24:41', 1, 0);
INSERT INTO `we_attachment` VALUES (440, '未标题-1_06.jpg', 'img1/20200316/5e6f29bfc5966.jpg', 1, 187755, 1, '2020-03-16 15:24:47', 1, 0);
INSERT INTO `we_attachment` VALUES (441, '未标题-1_10.jpg', 'img1/20200316/5e6f2a92f1034.jpg', 1, 168646, 1, '2020-03-16 15:28:19', 1, 0);
INSERT INTO `we_attachment` VALUES (442, '未标题-1_03.jpg', 'img1/20200316/5e6f2aa09b584.jpg', 1, 126572, 1, '2020-03-16 15:28:32', 1, 0);
INSERT INTO `we_attachment` VALUES (443, '未标题-1_06.jpg', 'img1/20200316/5e6f2aa73c096.jpg', 1, 187755, 1, '2020-03-16 15:28:39', 1, 0);
INSERT INTO `we_attachment` VALUES (444, '未标题-1_10.jpg', 'img1/20200316/5e6f2ab455264.jpg', 1, 168646, 1, '2020-03-16 15:28:52', 1, 0);
INSERT INTO `we_attachment` VALUES (445, '未标题-1_13.jpg', 'img1/20200316/5e6f2abead580.jpg', 1, 68228, 1, '2020-03-16 15:29:02', 1, 0);
INSERT INTO `we_attachment` VALUES (446, '未标题-1_16.jpg', 'img1/20200316/5e6f2ac382dcb.jpg', 1, 110832, 1, '2020-03-16 15:29:07', 1, 0);
INSERT INTO `we_attachment` VALUES (447, '未标题-1_18.jpg', 'img1/20200316/5e6f2acbd9358.jpg', 1, 207379, 1, '2020-03-16 15:29:16', 1, 0);
INSERT INTO `we_attachment` VALUES (448, '未标题-1_21.jpg', 'img1/20200316/5e6f2ad5d38cd.jpg', 1, 107901, 1, '2020-03-16 15:29:25', 1, 0);
INSERT INTO `we_attachment` VALUES (449, '未标题-1_24.jpg', 'img1/20200316/5e6f2ade95963.jpg', 1, 100709, 1, '2020-03-16 15:29:34', 1, 0);
INSERT INTO `we_attachment` VALUES (450, '004-德稻集团.png', 'abc1/20200316/5e6f460894e27.png', 1, 7353, 0, '2020-03-16 17:25:28', 1, 0);
INSERT INTO `we_attachment` VALUES (451, '004-德稻集团.png', 'abc1/20200316/5e6f463d0ce28.png', 1, 9334, 0, '2020-03-16 17:26:21', 1, 0);
INSERT INTO `we_attachment` VALUES (452, '004-德稻集团.png', 'abc1/20200316/5e6f49556ce1e.png', 1, 7353, 0, '2020-03-16 17:39:33', 1, 0);
INSERT INTO `we_attachment` VALUES (453, '004-德稻集团.png', 'abc1/20200316/5e6f495963de9.png', 1, 9334, 0, '2020-03-16 17:39:37', 1, 0);
INSERT INTO `we_attachment` VALUES (454, '005-香港设计商会.png', 'abc1/20200316/5e6f4961c1733.png', 1, 12216, 0, '2020-03-16 17:39:45', 1, 0);
INSERT INTO `we_attachment` VALUES (455, '005-香港设计商会.png', 'abc1/20200316/5e6f49664d64c.png', 1, 16234, 0, '2020-03-16 17:39:50', 1, 0);
INSERT INTO `we_attachment` VALUES (456, '006-香港设计中心.png', 'abc1/20200316/5e6f4976036ee.png', 1, 7819, 0, '2020-03-16 17:40:06', 1, 0);
INSERT INTO `we_attachment` VALUES (457, '006-香港设计中心.png', 'abc1/20200316/5e6f4978b5fd1.png', 1, 7819, 0, '2020-03-16 17:40:08', 1, 0);
INSERT INTO `we_attachment` VALUES (458, '007-MYS工作室.png', 'abc1/20200316/5e6f498966afa.png', 1, 3715, 0, '2020-03-16 17:40:25', 1, 0);
INSERT INTO `we_attachment` VALUES (459, '007-MYS工作室.png', 'abc1/20200316/5e6f498dafb28.png', 1, 5288, 0, '2020-03-16 17:40:29', 1, 0);
INSERT INTO `we_attachment` VALUES (460, '009-香港创意设计（MINDdeign）顾问有限公司-无logo.png', 'abc1/20200316/5e6f499b2159a.png', 1, 6636, 0, '2020-03-16 17:40:43', 1, 0);
INSERT INTO `we_attachment` VALUES (461, '009-香港创意设计（MINDdeign）顾问有限公司-无logo.png', 'abc1/20200316/5e6f49a0aebcf.png', 1, 8212, 0, '2020-03-16 17:40:48', 1, 0);
INSERT INTO `we_attachment` VALUES (462, '012-阿根廷杂志社.png', 'abc1/20200316/5e6f49b179cc5.png', 1, 6461, 0, '2020-03-16 17:41:05', 1, 0);
INSERT INTO `we_attachment` VALUES (463, '012-阿根廷杂志社.png', 'abc1/20200316/5e6f49b5676db.png', 1, 9298, 0, '2020-03-16 17:41:09', 1, 0);
INSERT INTO `we_attachment` VALUES (464, '013-奥地利设计协会.png', 'abc1/20200316/5e6f49c18c85e.png', 1, 5297, 0, '2020-03-16 17:41:21', 1, 0);
INSERT INTO `we_attachment` VALUES (465, '013-奥地利设计协会.png', 'abc1/20200316/5e6f49c4caa77.png', 1, 7641, 0, '2020-03-16 17:41:24', 1, 0);
INSERT INTO `we_attachment` VALUES (466, '015-昆士兰理工大学.png', 'abc1/20200316/5e6f49ceebfca.png', 1, 5220, 0, '2020-03-16 17:41:34', 1, 0);
INSERT INTO `we_attachment` VALUES (467, '015-昆士兰理工大学.png', 'abc1/20200316/5e6f49d417189.png', 1, 7298, 0, '2020-03-16 17:41:40', 1, 0);
INSERT INTO `we_attachment` VALUES (468, '018-巴西DDID设计公司1.png', 'abc1/20200316/5e6f4a031a5d3.png', 1, 6214, 0, '2020-03-16 17:42:27', 1, 0);
INSERT INTO `we_attachment` VALUES (469, '018-巴西DDID设计公司1.png', 'abc1/20200316/5e6f4a0748338.png', 1, 9274, 0, '2020-03-16 17:42:31', 1, 0);
INSERT INTO `we_attachment` VALUES (470, '020-柬埔寨ArrowDot公司.png', 'abc1/20200316/5e6f4a12b913b.png', 1, 8504, 0, '2020-03-16 17:42:42', 1, 0);
INSERT INTO `we_attachment` VALUES (471, '020-柬埔寨ArrowDot公司.png', 'abc1/20200316/5e6f4a18a90c5.png', 1, 6065, 0, '2020-03-16 17:42:48', 1, 0);
INSERT INTO `we_attachment` VALUES (472, '021-柬埔寨GROOD 公司.png', 'abc1/20200316/5e6f4a39a650b.png', 1, 10327, 0, '2020-03-16 17:43:21', 1, 0);
INSERT INTO `we_attachment` VALUES (473, '021-柬埔寨GROOD 公司.png', 'abc1/20200316/5e6f4a3eec457.png', 1, 16266, 0, '2020-03-16 17:43:26', 1, 0);
INSERT INTO `we_attachment` VALUES (474, '026-印度POOL杂志.png', 'abc1/20200316/5e6f4a4b70e83.png', 1, 5939, 0, '2020-03-16 17:43:39', 1, 0);
INSERT INTO `we_attachment` VALUES (475, '026-印度POOL杂志.png', 'abc1/20200316/5e6f4a4f01c92.png', 1, 4654, 0, '2020-03-16 17:43:43', 1, 0);
INSERT INTO `we_attachment` VALUES (476, '027-印度阿金基亚·迪·帕蒂尔大学.png', 'abc1/20200316/5e6f4a583b92a.png', 1, 8516, 0, '2020-03-16 17:43:52', 1, 0);
INSERT INTO `we_attachment` VALUES (477, '027-印度阿金基亚·迪·帕蒂尔大学.png', 'abc1/20200316/5e6f4a5c3997b.png', 1, 13198, 0, '2020-03-16 17:43:56', 1, 0);
INSERT INTO `we_attachment` VALUES (478, '029-Studio ABD Design Services Pvt Ltd.png', 'abc1/20200316/5e6f4a7243b45.png', 1, 6089, 0, '2020-03-16 17:44:18', 1, 0);
INSERT INTO `we_attachment` VALUES (479, '029-Studio ABD Design Services Pvt Ltd.png', 'abc1/20200316/5e6f4a7799766.png', 1, 5125, 0, '2020-03-16 17:44:23', 1, 0);
INSERT INTO `we_attachment` VALUES (480, '035-日本设计振兴会.png', 'abc1/20200316/5e6f4b1d1d5a4.png', 1, 10299, 0, '2020-03-16 17:47:09', 1, 0);
INSERT INTO `we_attachment` VALUES (481, '035-日本设计振兴会.png', 'abc1/20200316/5e6f4b232e140.png', 1, 12499, 0, '2020-03-16 17:47:15', 1, 0);
INSERT INTO `we_attachment` VALUES (482, '036-东京设计株式会社.png', 'abc1/20200316/5e6f4b312ccbe.png', 1, 6226, 0, '2020-03-16 17:47:29', 1, 0);
INSERT INTO `we_attachment` VALUES (483, '036-东京设计株式会社.png', 'abc1/20200316/5e6f4b39b1e7a.png', 1, 4497, 0, '2020-03-16 17:47:37', 1, 0);
INSERT INTO `we_attachment` VALUES (484, '038-仰光计算机研究大学.png', 'abc1/20200316/5e6f4b441b489.png', 1, 9526, 0, '2020-03-16 17:47:48', 1, 0);
INSERT INTO `we_attachment` VALUES (485, '038-仰光计算机研究大学.png', 'abc1/20200316/5e6f4b4830068.png', 1, 16547, 0, '2020-03-16 17:47:52', 1, 0);
INSERT INTO `we_attachment` VALUES (486, '039-缅甸曼德勒大学.png', 'abc1/20200316/5e6f4b58d8561.png', 1, 13328, 0, '2020-03-16 17:48:08', 1, 0);
INSERT INTO `we_attachment` VALUES (487, '039-缅甸曼德勒大学.png', 'abc1/20200316/5e6f4b5ddcde8.png', 1, 8531, 0, '2020-03-16 17:48:13', 1, 0);
INSERT INTO `we_attachment` VALUES (488, '040-创意荷兰.png', 'abc1/20200316/5e6f4b65c01a8.png', 1, 8355, 0, '2020-03-16 17:48:21', 1, 0);
INSERT INTO `we_attachment` VALUES (489, '040-创意荷兰.png', 'abc1/20200316/5e6f4b6ba3364.png', 1, 12033, 0, '2020-03-16 17:48:27', 1, 0);
INSERT INTO `we_attachment` VALUES (490, '041-荷兰埃因霍芬理工大学.png', 'abc1/20200316/5e6f4b74765fa.png', 1, 5793, 0, '2020-03-16 17:48:36', 1, 0);
INSERT INTO `we_attachment` VALUES (491, '041-荷兰埃因霍芬理工大学.png', 'abc1/20200316/5e6f4b7a0192a.png', 1, 7297, 0, '2020-03-16 17:48:42', 1, 0);
INSERT INTO `we_attachment` VALUES (492, '044-新西兰惠灵顿维多利亚大学.png', 'abc1/20200316/5e6f4b8562b69.png', 1, 7504, 0, '2020-03-16 17:48:53', 1, 0);
INSERT INTO `we_attachment` VALUES (493, '044-新西兰惠灵顿维多利亚大学.png', 'abc1/20200316/5e6f4b8a679e6.png', 1, 11870, 0, '2020-03-16 17:48:58', 1, 0);
INSERT INTO `we_attachment` VALUES (494, '045-俄罗斯设计协会.png', 'abc1/20200316/5e6f4b924c90e.png', 1, 12656, 0, '2020-03-16 17:49:06', 1, 0);
INSERT INTO `we_attachment` VALUES (495, '045-俄罗斯设计协会.png', 'abc1/20200316/5e6f4b9750857.png', 1, 9526, 0, '2020-03-16 17:49:11', 1, 0);
INSERT INTO `we_attachment` VALUES (496, '052-土耳其专利局.png', 'abc1/20200316/5e6f4b9fad4a6.png', 1, 8577, 0, '2020-03-16 17:49:19', 1, 0);
INSERT INTO `we_attachment` VALUES (497, '052-土耳其专利局.png', 'abc1/20200316/5e6f4ba3a5029.png', 1, 12218, 0, '2020-03-16 17:49:23', 1, 0);
INSERT INTO `we_attachment` VALUES (498, '053-英国设计基金.png', 'abc1/20200316/5e6f4bae606ab.png', 1, 7860, 0, '2020-03-16 17:49:34', 1, 0);
INSERT INTO `we_attachment` VALUES (499, '053-英国设计基金.png', 'abc1/20200316/5e6f4bb1cd16e.png', 1, 5828, 0, '2020-03-16 17:49:37', 1, 0);
INSERT INTO `we_attachment` VALUES (500, '054-英国工业设计协会.png', 'abc1/20200316/5e6f4bbb4137c.png', 1, 8070, 0, '2020-03-16 17:49:47', 1, 0);
INSERT INTO `we_attachment` VALUES (501, '054-英国工业设计协会.png', 'abc1/20200316/5e6f4bbf9f439.png', 1, 8994, 0, '2020-03-16 17:49:51', 1, 0);
INSERT INTO `we_attachment` VALUES (502, '055-英国诺丁汉大学.png', 'abc1/20200316/5e6f4bc87db1c.png', 1, 14124, 0, '2020-03-16 17:50:00', 1, 0);
INSERT INTO `we_attachment` VALUES (503, '055-英国诺丁汉大学.png', 'abc1/20200316/5e6f4bcc12b1f.png', 1, 9042, 0, '2020-03-16 17:50:04', 1, 0);
INSERT INTO `we_attachment` VALUES (504, 'CHEFEU TECHNIK.png', 'abc1/20200316/5e6f4bd6272b1.png', 1, 5366, 0, '2020-03-16 17:50:14', 1, 0);
INSERT INTO `we_attachment` VALUES (505, 'CHEFEU TECHNIK.png', 'abc1/20200316/5e6f4bda3a6c1.png', 1, 8067, 0, '2020-03-16 17:50:18', 1, 0);
INSERT INTO `we_attachment` VALUES (506, 'hyvonen design.png', 'abc1/20200316/5e6f4be342851.png', 1, 9711, 0, '2020-03-16 17:50:27', 1, 0);
INSERT INTO `we_attachment` VALUES (507, 'hyvonen design.png', 'abc1/20200316/5e6f4be6834ac.png', 1, 7964, 0, '2020-03-16 17:50:30', 1, 0);
INSERT INTO `we_attachment` VALUES (508, 'prophet.png', 'abc1/20200316/5e6f4bef9cfbf.png', 1, 1822, 0, '2020-03-16 17:50:39', 1, 0);
INSERT INTO `we_attachment` VALUES (509, 'prophet.png', 'abc1/20200316/5e6f4bf36bbe1.png', 1, 1822, 0, '2020-03-16 17:50:43', 1, 0);
INSERT INTO `we_attachment` VALUES (510, '海尔.png', 'abc1/20200316/5e6f4bfd048bc.png', 1, 17061, 0, '2020-03-16 17:50:53', 1, 0);
INSERT INTO `we_attachment` VALUES (511, '海尔.png', 'abc1/20200316/5e6f4c01e828e.png', 1, 8871, 0, '2020-03-16 17:50:57', 1, 0);
INSERT INTO `we_attachment` VALUES (512, '欧洲设计促进会.png', 'abc1/20200316/5e6f4c09bc096.png', 1, 6447, 0, '2020-03-16 17:51:05', 1, 0);
INSERT INTO `we_attachment` VALUES (513, '欧洲设计促进会.png', 'abc1/20200316/5e6f4c0d59f4e.png', 1, 10689, 0, '2020-03-16 17:51:09', 1, 0);
INSERT INTO `we_attachment` VALUES (514, '省院 中德组合规范-06.png', 'abc1/20200316/5e6f4c225af2c.png', 1, 6329, 0, '2020-03-16 17:51:30', 1, 0);
INSERT INTO `we_attachment` VALUES (515, '省院 中德组合规范-06.png', 'abc1/20200316/5e6f4c2619e1a.png', 1, 4876, 0, '2020-03-16 17:51:34', 1, 0);
INSERT INTO `we_attachment` VALUES (516, '中国工业设计协会.png', 'abc1/20200316/5e6f4c2e9299f.png', 1, 13881, 0, '2020-03-16 17:51:42', 1, 0);
INSERT INTO `we_attachment` VALUES (517, '中国工业设计协会.png', 'abc1/20200316/5e6f4c32b67ef.png', 1, 31421, 0, '2020-03-16 17:51:46', 1, 0);
INSERT INTO `we_attachment` VALUES (518, '004-德稻集团.png', 'abc1/20200316/5e6f4e201ab4e.png', 1, 7338, 0, '2020-03-16 18:00:00', 1, 0);
INSERT INTO `we_attachment` VALUES (519, '005-香港设计商会.png', 'abc1/20200316/5e6f4e2ae8a3c.png', 1, 12283, 0, '2020-03-16 18:00:10', 1, 0);
INSERT INTO `we_attachment` VALUES (520, '009-香港创意设计（MINDdeign）顾问有限公司-无logo.png', 'abc1/20200316/5e6f4e44aea86.png', 1, 6589, 0, '2020-03-16 18:00:36', 1, 0);
INSERT INTO `we_attachment` VALUES (521, '012-阿根廷杂志社.png', 'abc1/20200316/5e6f4e5222b23.png', 1, 6474, 0, '2020-03-16 18:00:50', 1, 0);
INSERT INTO `we_attachment` VALUES (522, '013-奥地利设计协会.png', 'abc1/20200316/5e6f4e5def271.png', 1, 5319, 0, '2020-03-16 18:01:01', 1, 0);
INSERT INTO `we_attachment` VALUES (523, '020-柬埔寨ArrowDot公司.png', 'abc1/20200316/5e6f4e7891b02.png', 1, 6107, 0, '2020-03-16 18:01:28', 1, 0);
INSERT INTO `we_attachment` VALUES (524, '018-巴西DDID设计公司1.png', 'abc1/20200316/5e6f4e81a556f.png', 1, 6221, 0, '2020-03-16 18:01:37', 1, 0);
INSERT INTO `we_attachment` VALUES (525, '021-柬埔寨GROOD 公司.png', 'abc1/20200316/5e6f4e8dbf4f0.png', 1, 10351, 0, '2020-03-16 18:01:49', 1, 0);
INSERT INTO `we_attachment` VALUES (526, '005-香港设计商会.png', 'abc1/20200316/5e6f4e97109c1.png', 1, 12283, 0, '2020-03-16 18:01:59', 1, 0);
INSERT INTO `we_attachment` VALUES (527, '026-印度POOL杂志.png', 'abc1/20200316/5e6f4ea652123.png', 1, 4661, 0, '2020-03-16 18:02:14', 1, 0);
INSERT INTO `we_attachment` VALUES (528, '027-印度阿金基亚·迪·帕蒂尔大学.png', 'abc1/20200316/5e6f4eb30832a.png', 1, 8526, 0, '2020-03-16 18:02:27', 1, 0);
INSERT INTO `we_attachment` VALUES (529, '029-Studio ABD Design Services Pvt Ltd.png', 'abc1/20200316/5e6f4ec0562f4.png', 1, 5132, 0, '2020-03-16 18:02:40', 1, 0);
INSERT INTO `we_attachment` VALUES (530, '035-日本设计振兴会.png', 'abc1/20200316/5e6f4ecfa4afd.png', 1, 10304, 0, '2020-03-16 18:02:55', 1, 0);
INSERT INTO `we_attachment` VALUES (531, '036-东京设计株式会社.png', 'abc1/20200316/5e6f4ee08b5d5.png', 1, 4500, 0, '2020-03-16 18:03:12', 1, 0);
INSERT INTO `we_attachment` VALUES (532, '038-仰光计算机研究大学.png', 'abc1/20200316/5e6f4ef0aea33.png', 1, 9511, 0, '2020-03-16 18:03:28', 1, 0);
INSERT INTO `we_attachment` VALUES (533, '040-创意荷兰.png', 'abc1/20200316/5e6f4f04da89a.png', 1, 8375, 0, '2020-03-16 18:03:48', 1, 0);
INSERT INTO `we_attachment` VALUES (534, '041-荷兰埃因霍芬理工大学.png', 'abc1/20200316/5e6f4f1f3c5cd.png', 1, 5795, 0, '2020-03-16 18:04:15', 1, 0);
INSERT INTO `we_attachment` VALUES (535, '044-新西兰惠灵顿维多利亚大学.png', 'abc1/20200316/5e6f4f2c33c2a.png', 1, 7508, 0, '2020-03-16 18:04:28', 1, 0);
INSERT INTO `we_attachment` VALUES (536, '045-俄罗斯设计协会.png', 'abc1/20200316/5e6f4f411c381.png', 1, 8953, 0, '2020-03-16 18:04:49', 1, 0);
INSERT INTO `we_attachment` VALUES (537, '052-土耳其专利局.png', 'abc1/20200316/5e6f4f4e8ec07.png', 1, 8363, 0, '2020-03-16 18:05:02', 1, 0);
INSERT INTO `we_attachment` VALUES (538, '053-英国设计基金.png', 'abc1/20200316/5e6f4f5d1b57b.png', 1, 5835, 0, '2020-03-16 18:05:17', 1, 0);
INSERT INTO `we_attachment` VALUES (539, '054-英国工业设计协会.png', 'abc1/20200316/5e6f4f6946a7e.png', 1, 7869, 0, '2020-03-16 18:05:29', 1, 0);
INSERT INTO `we_attachment` VALUES (540, '055-英国诺丁汉大学.png', 'abc1/20200316/5e6f4f775ea1a.png', 1, 9061, 0, '2020-03-16 18:05:43', 1, 0);
INSERT INTO `we_attachment` VALUES (541, 'CHEFEU TECHNIK.png', 'abc1/20200316/5e6f4f85654d6.png', 1, 5373, 0, '2020-03-16 18:05:57', 1, 0);
INSERT INTO `we_attachment` VALUES (542, 'hyvonen design.png', 'abc1/20200316/5e6f4f9491db8.png', 1, 7814, 0, '2020-03-16 18:06:12', 1, 0);
INSERT INTO `we_attachment` VALUES (543, 'prophet.png', 'abc1/20200316/5e6f4fa16f390.png', 1, 1822, 0, '2020-03-16 18:06:25', 1, 0);
INSERT INTO `we_attachment` VALUES (544, '海尔.png', 'abc1/20200316/5e6f4fc35d753.png', 1, 8869, 0, '2020-03-16 18:06:59', 1, 0);
INSERT INTO `we_attachment` VALUES (545, '欧洲设计促进会.png', 'abc1/20200316/5e6f4fcfd0e1b.png', 1, 6516, 0, '2020-03-16 18:07:11', 1, 0);
INSERT INTO `we_attachment` VALUES (546, '省院 中德组合规范-06.png', 'abc1/20200316/5e6f4fdbd2ac3.png', 1, 4860, 0, '2020-03-16 18:07:23', 1, 0);
INSERT INTO `we_attachment` VALUES (547, '省院 中德组合规范-06.png', 'abc1/20200316/5e6f4fefa65c2.png', 1, 4860, 0, '2020-03-16 18:07:43', 1, 0);
INSERT INTO `we_attachment` VALUES (548, '中国工业设计协会.png', 'abc1/20200316/5e6f4ffb7f46d.png', 1, 13884, 0, '2020-03-16 18:07:55', 1, 0);
INSERT INTO `we_attachment` VALUES (549, '015-昆士兰理工大学.png', 'abc1/20200316/5e6f503af2a47.png', 1, 5005, 0, '2020-03-16 18:08:58', 1, 0);
INSERT INTO `we_attachment` VALUES (550, '中国工业设计协会.png', 'abc1/20200317/5e70205f07da3.png', 1, 8759, 0, '2020-03-17 08:57:03', 1, 0);
INSERT INTO `we_attachment` VALUES (551, '中国工业设计协会.png', 'abc1/20200317/5e70206a281b8.png', 1, 19592, 0, '2020-03-17 08:57:14', 1, 0);
INSERT INTO `we_attachment` VALUES (552, '欧洲设计促进会.png', 'abc1/20200317/5e7020ea2528d.png', 1, 4695, 0, '2020-03-17 08:59:22', 1, 0);
INSERT INTO `we_attachment` VALUES (553, '欧洲设计促进会.png', 'abc1/20200317/5e7020f161f76.png', 1, 9104, 0, '2020-03-17 08:59:29', 1, 0);
INSERT INTO `we_attachment` VALUES (554, '1.png', 'img1/20200328/5e7ec743c5bd4.png', 1, 1135545, 1, '2020-03-28 11:40:52', 1, 0);
INSERT INTO `we_attachment` VALUES (555, 'S1.png', 'img1/20200328/5e7edc1e6aa5f.png', 1, 1033829, 1, '2020-03-28 13:09:50', 1, 0);
INSERT INTO `we_attachment` VALUES (556, 'S2.png', 'img1/20200328/5e7edc2dd5e2e.png', 1, 1411227, 1, '2020-03-28 13:10:06', 1, 0);
INSERT INTO `we_attachment` VALUES (557, 'S3.png', 'img1/20200328/5e7edd401bc7d.png', 1, 1414391, 1, '2020-03-28 13:14:40', 1, 0);
INSERT INTO `we_attachment` VALUES (558, 'IDWE1.png', 'img1/20200328/5e7ede256a8db.png', 1, 925954, 1, '2020-03-28 13:18:29', 1, 0);
INSERT INTO `we_attachment` VALUES (559, 'IDWE1.png', 'img1/20200328/5e7ee11bd1e51.png', 1, 925954, 1, '2020-03-28 13:31:08', 1, 0);
INSERT INTO `we_attachment` VALUES (560, 'IDWE5.png', 'img1/20200328/5e7ee1471a44c.png', 1, 1481713, 1, '2020-03-28 13:31:51', 1, 0);
INSERT INTO `we_attachment` VALUES (561, 'IDWE8.png', 'img1/20200328/5e7ee1a5aa3dc.png', 1, 1474545, 1, '2020-03-28 13:33:26', 1, 0);
INSERT INTO `we_attachment` VALUES (562, 'IDWE9.png', 'img1/20200328/5e7ee1c05702d.png', 1, 1855816, 1, '2020-03-28 13:33:52', 1, 0);
INSERT INTO `we_attachment` VALUES (563, '4.4.3.png', 'img1/20200328/5e7ee57ea19aa.png', 1, 1731319, 1, '2020-03-28 13:49:51', 1, 0);
INSERT INTO `we_attachment` VALUES (564, '4.4.1.png', 'img1/20200328/5e7ee68d2c74e.png', 1, 1690116, 1, '2020-03-28 13:54:21', 1, 0);
INSERT INTO `we_attachment` VALUES (565, '4.4.2.jpg', 'img1/20200328/5e7ee836c628e.jpg', 1, 132943, 1, '2020-03-28 14:01:26', 1, 0);
INSERT INTO `we_attachment` VALUES (566, '4.4.4.jpg', 'img1/20200328/5e7ee95049c07.jpg', 1, 220002, 1, '2020-03-28 14:06:08', 1, 0);
INSERT INTO `we_attachment` VALUES (567, '4.4.4.jpg', 'img1/20200328/5e7eeacc5a733.jpg', 1, 219774, 1, '2020-03-28 14:12:28', 1, 0);
INSERT INTO `we_attachment` VALUES (568, '4.4.4.jpg', 'img1/20200328/5e7eeb1dc968c.jpg', 1, 218225, 1, '2020-03-28 14:13:50', 1, 0);
INSERT INTO `we_attachment` VALUES (569, '图层 3.png', 'img1/20200328/5e7eec5b4ec39.png', 1, 674872, 1, '2020-03-28 14:19:07', 1, 0);
INSERT INTO `we_attachment` VALUES (570, 'new1.jpg', 'img1/20200328/5e7eecc3e856a.jpg', 1, 145096, 1, '2020-03-28 14:20:52', 1, 0);
INSERT INTO `we_attachment` VALUES (571, 'new1.jpg.png', 'img1/20200328/5e7ef1096fb92.png', 1, 996417, 1, '2020-03-28 14:39:05', 1, 0);
INSERT INTO `we_attachment` VALUES (572, 'new1.jpg.png', 'img1/20200328/5e7ef18e68ce4.png', 1, 996417, 1, '2020-03-28 14:41:18', 1, 0);
INSERT INTO `we_attachment` VALUES (573, '7.3.jpg', 'img1/20200328/5e7ef482edc2e.jpg', 1, 241007, 1, '2020-03-28 14:53:55', 1, 0);
INSERT INTO `we_attachment` VALUES (574, '未标题-2.jpg', 'img1/20200328/5e7ef56e20aeb.jpg', 1, 237661, 1, '2020-03-28 14:57:50', 1, 0);
INSERT INTO `we_attachment` VALUES (575, '未标题-2.jpg', 'img1/20200328/5e7ef5e5c1bd9.jpg', 1, 202929, 1, '2020-03-28 14:59:50', 1, 0);
INSERT INTO `we_attachment` VALUES (576, '5e626ea8ce1ce.jpg', 'img1/20200328/5e7ef7587f8d7.jpg', 1, 154773, 1, '2020-03-28 15:06:00', 1, 0);
INSERT INTO `we_attachment` VALUES (577, '11.jpg', 'img1/20200328/5e7efa934a8ea.jpg', 1, 188954, 1, '2020-03-28 15:19:47', 1, 0);
INSERT INTO `we_attachment` VALUES (578, '组 19.png', 'img1/20200328/5e7efefe30981.png', 1, 125637, 1, '2020-03-28 15:38:38', 1, 0);
INSERT INTO `we_attachment` VALUES (579, '111.png', 'img1/20200330/5e815d399de2b.png', 1, 129872, 1, '2020-03-30 10:45:13', 1, 0);
INSERT INTO `we_attachment` VALUES (580, '未标题-1.jpg', 'img1/20200330/5e815e9811e40.jpg', 1, 232701, 1, '2020-03-30 10:51:04', 1, 0);
INSERT INTO `we_attachment` VALUES (581, '未标题-2.jpg', 'img1/20200330/5e815ed4880e7.jpg', 1, 194056, 1, '2020-03-30 10:52:04', 1, 0);
INSERT INTO `we_attachment` VALUES (582, '未标题-2.jpg', 'img1/20200330/5e815f0fc74a1.jpg', 1, 196232, 1, '2020-03-30 10:53:03', 1, 0);
INSERT INTO `we_attachment` VALUES (583, '222.jpg', 'img1/20200330/5e8160cd85829.jpg', 1, 547480, 1, '2020-03-30 11:00:29', 1, 0);
INSERT INTO `we_attachment` VALUES (584, 'GDIO全球征集口罩设计.docx', 'file1/20200330/5e816d55a8603.docx', 5, 14563, 0, '2020-03-30 11:53:57', 1, 0);
INSERT INTO `we_attachment` VALUES (585, '111.png', 'img1/20200330/5e816d713ea08.png', 1, 129872, 1, '2020-03-30 11:54:25', 1, 0);
INSERT INTO `we_attachment` VALUES (586, 'index_03.jpg', 'abc1/20200330/5e81813ed1c13.jpg', 1, 4524, 0, '2020-03-30 13:18:54', 1, 0);
INSERT INTO `we_attachment` VALUES (587, 'index_03.jpg', 'abc1/20200330/5e8181443c8fd.jpg', 1, 3536, 0, '2020-03-30 13:19:00', 1, 0);
INSERT INTO `we_attachment` VALUES (588, 'index_04.jpg', 'abc1/20200330/5e818161e6eae.jpg', 1, 3000, 0, '2020-03-30 13:19:29', 1, 0);
INSERT INTO `we_attachment` VALUES (589, 'index_04.jpg', 'abc1/20200330/5e8181662d67d.jpg', 1, 3000, 0, '2020-03-30 13:19:34', 1, 0);
INSERT INTO `we_attachment` VALUES (590, 'index_04.jpg', 'abc1/20200330/5e81816f35855.jpg', 1, 3807, 0, '2020-03-30 13:19:43', 1, 0);
INSERT INTO `we_attachment` VALUES (591, 'index_05.jpg', 'abc1/20200330/5e81817dd112d.jpg', 1, 2679, 0, '2020-03-30 13:19:57', 1, 0);
INSERT INTO `we_attachment` VALUES (592, 'index_05.jpg', 'abc1/20200330/5e818185154b5.jpg', 1, 3619, 0, '2020-03-30 13:20:05', 1, 0);
INSERT INTO `we_attachment` VALUES (593, 'index_28.jpg', 'abc1/20200330/5e8181958a242.jpg', 1, 2172, 0, '2020-03-30 13:20:21', 1, 0);
INSERT INTO `we_attachment` VALUES (594, 'index_28.jpg', 'abc1/20200330/5e81819c2a8a2.jpg', 1, 2676, 0, '2020-03-30 13:20:28', 1, 0);
INSERT INTO `we_attachment` VALUES (595, 'index_14.jpg', 'abc1/20200330/5e8181ad39eb5.jpg', 1, 3170, 0, '2020-03-30 13:20:45', 1, 0);
INSERT INTO `we_attachment` VALUES (596, 'index_14.jpg', 'abc1/20200330/5e8181b9428a8.jpg', 1, 2851, 0, '2020-03-30 13:20:57', 1, 0);
INSERT INTO `we_attachment` VALUES (597, 'index_41.jpg', 'abc1/20200330/5e8181d02447e.jpg', 1, 4930, 0, '2020-03-30 13:21:20', 1, 0);
INSERT INTO `we_attachment` VALUES (598, 'index_41.jpg', 'abc1/20200330/5e8181d4d3671.jpg', 1, 2901, 0, '2020-03-30 13:21:24', 1, 0);
INSERT INTO `we_attachment` VALUES (599, 'index_22.jpg', 'abc1/20200330/5e81821c1ee97.jpg', 1, 2114, 0, '2020-03-30 13:22:36', 1, 0);
INSERT INTO `we_attachment` VALUES (600, 'index_22.jpg', 'abc1/20200330/5e8183e5483f2.jpg', 1, 2738, 0, '2020-03-30 13:30:13', 1, 0);
INSERT INTO `we_attachment` VALUES (601, 'index_22.jpg', 'abc1/20200330/5e8183ec9cd9f.jpg', 1, 2114, 0, '2020-03-30 13:30:20', 1, 0);
INSERT INTO `we_attachment` VALUES (602, 'index_17.jpg', 'abc1/20200330/5e81840ecdf14.jpg', 1, 3944, 0, '2020-03-30 13:30:54', 1, 0);
INSERT INTO `we_attachment` VALUES (603, 'index_17.jpg', 'abc1/20200330/5e818414dff20.jpg', 1, 2981, 0, '2020-03-30 13:31:00', 1, 0);
INSERT INTO `we_attachment` VALUES (604, 'index_20.jpg', 'abc1/20200330/5e818425a522e.jpg', 1, 4926, 0, '2020-03-30 13:31:17', 1, 0);
INSERT INTO `we_attachment` VALUES (605, 'index_20.jpg', 'abc1/20200330/5e81842d73b15.jpg', 1, 3207, 0, '2020-03-30 13:31:25', 1, 0);
INSERT INTO `we_attachment` VALUES (606, 'index_19.jpg', 'abc1/20200330/5e81843f1c69b.jpg', 1, 3874, 0, '2020-03-30 13:31:43', 1, 0);
INSERT INTO `we_attachment` VALUES (607, 'index_19.jpg', 'abc1/20200330/5e8184472fac7.jpg', 1, 2851, 0, '2020-03-30 13:31:51', 1, 0);
INSERT INTO `we_attachment` VALUES (608, 'index_21.jpg', 'abc1/20200330/5e81846421bb0.jpg', 1, 4323, 0, '2020-03-30 13:32:20', 1, 0);
INSERT INTO `we_attachment` VALUES (609, 'index_21.jpg', 'abc1/20200330/5e81846ca71b7.jpg', 1, 2655, 0, '2020-03-30 13:32:28', 1, 0);
INSERT INTO `we_attachment` VALUES (610, 'index_18.jpg', 'abc1/20200330/5e818482a749d.jpg', 1, 3803, 0, '2020-03-30 13:32:50', 1, 0);
INSERT INTO `we_attachment` VALUES (611, 'index_18.jpg', 'abc1/20200330/5e81848896b93.jpg', 1, 2480, 0, '2020-03-30 13:32:56', 1, 0);
INSERT INTO `we_attachment` VALUES (612, 'index_15.jpg', 'abc1/20200330/5e81849b24c85.jpg', 1, 3574, 0, '2020-03-30 13:33:15', 1, 0);
INSERT INTO `we_attachment` VALUES (613, 'index_15.jpg', 'abc1/20200330/5e8184a285066.jpg', 1, 2768, 0, '2020-03-30 13:33:22', 1, 0);
INSERT INTO `we_attachment` VALUES (614, 'index_24.jpg', 'abc1/20200330/5e8184caa07e5.jpg', 1, 6052, 0, '2020-03-30 13:34:02', 1, 0);
INSERT INTO `we_attachment` VALUES (615, 'index_24.jpg', 'abc1/20200330/5e8184d14d388.jpg', 1, 3270, 0, '2020-03-30 13:34:09', 1, 0);
INSERT INTO `we_attachment` VALUES (616, 'index_25.jpg', 'abc1/20200330/5e8184eb7051f.jpg', 1, 2567, 0, '2020-03-30 13:34:35', 1, 0);
INSERT INTO `we_attachment` VALUES (617, 'index_25.jpg', 'abc1/20200330/5e8184f340d64.jpg', 1, 2389, 0, '2020-03-30 13:34:43', 1, 0);
INSERT INTO `we_attachment` VALUES (618, 'index_26.jpg', 'abc1/20200330/5e8185051e288.jpg', 1, 4318, 0, '2020-03-30 13:35:01', 1, 0);
INSERT INTO `we_attachment` VALUES (619, 'index_26.jpg', 'abc1/20200330/5e81850a70cf7.jpg', 1, 2712, 0, '2020-03-30 13:35:06', 1, 0);
INSERT INTO `we_attachment` VALUES (620, 'index_27.jpg', 'abc1/20200330/5e81851cec174.jpg', 1, 4040, 0, '2020-03-30 13:35:24', 1, 0);
INSERT INTO `we_attachment` VALUES (621, 'index_27.jpg', 'abc1/20200330/5e8185226e551.jpg', 1, 2515, 0, '2020-03-30 13:35:30', 1, 0);
INSERT INTO `we_attachment` VALUES (622, 'index_40.jpg', 'abc1/20200330/5e81853339635.jpg', 1, 4784, 0, '2020-03-30 13:35:47', 1, 0);
INSERT INTO `we_attachment` VALUES (623, 'index_40.jpg', 'abc1/20200330/5e818538cecd0.jpg', 1, 3006, 0, '2020-03-30 13:35:52', 1, 0);
INSERT INTO `we_attachment` VALUES (624, 'index_30.jpg', 'abc1/20200330/5e81854942e5c.jpg', 1, 2999, 0, '2020-03-30 13:36:09', 1, 0);
INSERT INTO `we_attachment` VALUES (625, 'index_30.jpg', 'abc1/20200330/5e81854fc94b7.jpg', 1, 2402, 0, '2020-03-30 13:36:15', 1, 0);
INSERT INTO `we_attachment` VALUES (626, 'index_32.jpg', 'abc1/20200330/5e8185620f572.jpg', 1, 2914, 0, '2020-03-30 13:36:34', 1, 0);
INSERT INTO `we_attachment` VALUES (627, 'index_32.jpg', 'abc1/20200330/5e8185679cf8c.jpg', 1, 2740, 0, '2020-03-30 13:36:39', 1, 0);
INSERT INTO `we_attachment` VALUES (628, 'index_31.jpg', 'abc1/20200330/5e81857f68cbc.jpg', 1, 6346, 0, '2020-03-30 13:37:03', 1, 0);
INSERT INTO `we_attachment` VALUES (629, 'index_31.jpg', 'abc1/20200330/5e818585e86f9.jpg', 1, 3819, 0, '2020-03-30 13:37:09', 1, 0);
INSERT INTO `we_attachment` VALUES (630, 'index_39.jpg', 'abc1/20200330/5e8185946e33e.jpg', 1, 3167, 0, '2020-03-30 13:37:24', 1, 0);
INSERT INTO `we_attachment` VALUES (631, 'index_39.jpg', 'abc1/20200330/5e81859b35b98.jpg', 1, 2056, 0, '2020-03-30 13:37:31', 1, 0);
INSERT INTO `we_attachment` VALUES (632, 'index_37.jpg', 'abc1/20200330/5e8185acc43e2.jpg', 1, 4201, 0, '2020-03-30 13:37:48', 1, 0);
INSERT INTO `we_attachment` VALUES (633, 'index_37.jpg', 'abc1/20200330/5e8185b452954.jpg', 1, 3224, 0, '2020-03-30 13:37:56', 1, 0);
INSERT INTO `we_attachment` VALUES (634, 'index_34.png', 'abc1/20200330/5e8185c41e6b3.png', 1, 6424, 0, '2020-03-30 13:38:12', 1, 0);
INSERT INTO `we_attachment` VALUES (635, 'index_34.png', 'abc1/20200330/5e8185ca61acf.png', 1, 4406, 0, '2020-03-30 13:38:18', 1, 0);
INSERT INTO `we_attachment` VALUES (636, 'index_42.jpg', 'abc1/20200330/5e8185d969553.jpg', 1, 3379, 0, '2020-03-30 13:38:33', 1, 0);
INSERT INTO `we_attachment` VALUES (637, 'index_42.jpg', 'abc1/20200330/5e8185de72e0e.jpg', 1, 2556, 0, '2020-03-30 13:38:38', 1, 0);
INSERT INTO `we_attachment` VALUES (638, 'index_35.jpg', 'abc1/20200330/5e8185ec86b4e.jpg', 1, 4166, 0, '2020-03-30 13:38:52', 1, 0);
INSERT INTO `we_attachment` VALUES (639, 'index_35.jpg', 'abc1/20200330/5e8185f20ee32.jpg', 1, 2704, 0, '2020-03-30 13:38:58', 1, 0);
INSERT INTO `we_attachment` VALUES (640, 'index_11.jpg', 'abc1/20200330/5e818603626c2.jpg', 1, 1902, 0, '2020-03-30 13:39:15', 1, 0);
INSERT INTO `we_attachment` VALUES (641, 'index_11.jpg', 'abc1/20200330/5e8186e4bdd99.jpg', 1, 1902, 0, '2020-03-30 13:43:00', 1, 0);
INSERT INTO `we_attachment` VALUES (642, 'index_10.jpg', 'abc1/20200330/5e8187314d318.jpg', 1, 3089, 0, '2020-03-30 13:44:17', 1, 0);
INSERT INTO `we_attachment` VALUES (643, 'index_10.jpg', 'abc1/20200330/5e81873bcf2b4.jpg', 1, 4830, 0, '2020-03-30 13:44:27', 1, 0);
INSERT INTO `we_attachment` VALUES (644, 'index_09.jpg', 'abc1/20200330/5e818798a5d11.jpg', 1, 4367, 0, '2020-03-30 13:46:00', 1, 0);
INSERT INTO `we_attachment` VALUES (645, 'index_09.jpg', 'abc1/20200330/5e81879e07893.jpg', 1, 2751, 0, '2020-03-30 13:46:06', 1, 0);
INSERT INTO `we_attachment` VALUES (646, 'index_07.jpg', 'abc1/20200330/5e8187ac31291.jpg', 1, 3157, 0, '2020-03-30 13:46:20', 1, 0);
INSERT INTO `we_attachment` VALUES (647, 'index_07.jpg', 'abc1/20200330/5e8187b57db6b.jpg', 1, 4352, 0, '2020-03-30 13:46:29', 1, 0);
INSERT INTO `we_attachment` VALUES (648, 'index_06.jpg', 'abc1/20200330/5e8187c881559.jpg', 1, 3897, 0, '2020-03-30 13:46:48', 1, 0);
INSERT INTO `we_attachment` VALUES (649, 'index_06.jpg', 'abc1/20200330/5e8187ce2ef55.jpg', 1, 2818, 0, '2020-03-30 13:46:54', 1, 0);
INSERT INTO `we_attachment` VALUES (650, 'COVID-19 Prevention Mannual.pdf', 'file1/20200330/5e8188b30d6cf.pdf', 0, 5283582, 0, '2020-03-30 13:50:43', 1, 0);
INSERT INTO `we_attachment` VALUES (651, 'index_08.jpg', 'abc1/20200330/5e8188c052757.jpg', 1, 3893, 0, '2020-03-30 13:50:56', 1, 0);
INSERT INTO `we_attachment` VALUES (652, 'index_08.jpg', 'abc1/20200330/5e8188c64a044.jpg', 1, 2890, 0, '2020-03-30 13:51:02', 1, 0);
INSERT INTO `we_attachment` VALUES (653, '下载.png', 'img1/20200330/5e81896603555.png', 1, 4560, 1, '2020-03-30 13:53:42', 1, 0);
INSERT INTO `we_attachment` VALUES (654, '下载.png', 'img1/20200330/5e818a4ec9489.png', 1, 3351, 1, '2020-03-30 13:57:34', 1, 0);
INSERT INTO `we_attachment` VALUES (655, 'index_24.jpg', 'abc1/20200330/5e81902acca80.jpg', 1, 6052, 0, '2020-03-30 14:22:34', 1, 0);
INSERT INTO `we_attachment` VALUES (656, 'index_24.jpg', 'abc1/20200330/5e81903025996.jpg', 1, 3270, 0, '2020-03-30 14:22:40', 1, 0);
INSERT INTO `we_attachment` VALUES (657, 'index_16.jpg', 'abc1/20200330/5e81908fa1c56.jpg', 1, 3466, 0, '2020-03-30 14:24:15', 1, 0);
INSERT INTO `we_attachment` VALUES (658, 'index_16.jpg', 'abc1/20200330/5e81909c734a1.jpg', 1, 2581, 0, '2020-03-30 14:24:28', 1, 0);
INSERT INTO `we_attachment` VALUES (659, 'index_29.jpg', 'abc1/20200330/5e8190e4ef84f.jpg', 1, 3500, 0, '2020-03-30 14:25:40', 1, 0);
INSERT INTO `we_attachment` VALUES (660, 'index_29.jpg', 'abc1/20200330/5e8190f557344.jpg', 1, 2607, 0, '2020-03-30 14:25:57', 1, 0);
INSERT INTO `we_attachment` VALUES (661, 'index_36.jpg', 'abc1/20200330/5e81913d7e892.jpg', 1, 2410, 0, '2020-03-30 14:27:09', 1, 0);
INSERT INTO `we_attachment` VALUES (662, 'index_36.jpg', 'abc1/20200330/5e81914460bd1.jpg', 1, 2299, 0, '2020-03-30 14:27:16', 1, 0);
INSERT INTO `we_attachment` VALUES (663, 'index_38.jpg', 'abc1/20200330/5e81919c70048.jpg', 1, 3012, 0, '2020-03-30 14:28:44', 1, 0);
INSERT INTO `we_attachment` VALUES (664, 'index_38.jpg', 'abc1/20200330/5e8191a449597.jpg', 1, 2661, 0, '2020-03-30 14:28:52', 1, 0);
INSERT INTO `we_attachment` VALUES (665, '5e7ef18e68ce4.jpg', 'img1/20200330/5e8198321feeb.jpg', 1, 182492, 1, '2020-03-30 14:56:50', 1, 0);
INSERT INTO `we_attachment` VALUES (666, '5e7ef18e68ce4.jpg', 'img1/20200330/5e819ba861181.jpg', 1, 94884, 1, '2020-03-30 15:11:36', 1, 0);
INSERT INTO `we_attachment` VALUES (667, '02.jpg', 'abc1/20200330/5e81a2db9c9cf.jpg', 1, 2174, 0, '2020-03-30 15:42:19', 1, 0);
INSERT INTO `we_attachment` VALUES (668, '01.jpg', 'abc1/20200330/5e81a2dea296c.jpg', 1, 2506, 0, '2020-03-30 15:42:22', 1, 0);
INSERT INTO `we_attachment` VALUES (669, '03_03.jpg', 'img1/20200330/5e81a6bb623b9.jpg', 1, 303376, 1, '2020-03-30 15:58:51', 1, 0);
INSERT INTO `we_attachment` VALUES (670, '111.png', 'img1/20200330/5e81a7de6f5f1.png', 1, 438337, 1, '2020-03-30 16:03:42', 1, 0);
INSERT INTO `we_attachment` VALUES (671, '555.png', 'img1/20200330/5e81a8c3cb034.png', 1, 138349, 1, '2020-03-30 16:07:31', 1, 0);
INSERT INTO `we_attachment` VALUES (672, '666.jpg', 'img1/20200330/5e81a96f5fd8d.jpg', 1, 538662, 1, '2020-03-30 16:10:23', 1, 0);
INSERT INTO `we_attachment` VALUES (673, 'TIA 1.png', 'img1/20200330/5e81b89d86d0c.png', 1, 156084, 1, '2020-03-30 17:15:09', 1, 0);
INSERT INTO `we_attachment` VALUES (674, 'TIA 2.png', 'img1/20200330/5e81b8ab2ba76.png', 1, 195888, 1, '2020-03-30 17:15:23', 1, 0);
INSERT INTO `we_attachment` VALUES (675, 'TIA 3.png', 'img1/20200330/5e81b8b4d5121.png', 1, 157955, 1, '2020-03-30 17:15:33', 1, 0);
INSERT INTO `we_attachment` VALUES (676, 'TIA 4.png', 'img1/20200330/5e81b8be839be.png', 1, 225424, 1, '2020-03-30 17:15:42', 1, 0);
INSERT INTO `we_attachment` VALUES (677, 'TIA 5.png', 'img1/20200330/5e81b8cbaf743.png', 1, 159869, 1, '2020-03-30 17:15:55', 1, 0);
INSERT INTO `we_attachment` VALUES (678, 'TIA 6.png', 'img1/20200330/5e81b8d5cd681.png', 1, 242614, 1, '2020-03-30 17:16:06', 1, 0);
INSERT INTO `we_attachment` VALUES (679, 'TIA 7.png', 'img1/20200330/5e81c17c292a4.png', 1, 148592, 1, '2020-03-30 17:53:00', 1, 0);
INSERT INTO `we_attachment` VALUES (680, 'TIA 8.png', 'img1/20200330/5e81c189c1fe1.png', 1, 204759, 1, '2020-03-30 17:53:13', 1, 0);
INSERT INTO `we_attachment` VALUES (681, 'TIA 9.png', 'img1/20200330/5e81c19971c71.png', 1, 150319, 1, '2020-03-30 17:53:29', 1, 0);
INSERT INTO `we_attachment` VALUES (682, 'TIA 11.png', 'img1/20200330/5e81c1b0063f6.png', 1, 158524, 1, '2020-03-30 17:53:52', 1, 0);
INSERT INTO `we_attachment` VALUES (683, 'TIA 12.png', 'img1/20200330/5e81c1c2882e2.png', 1, 211683, 1, '2020-03-30 17:54:10', 1, 0);
INSERT INTO `we_attachment` VALUES (684, 'TIA 13.png', 'img1/20200330/5e81c1d34d897.png', 1, 155618, 1, '2020-03-30 17:54:27', 1, 0);
INSERT INTO `we_attachment` VALUES (685, 'TIA 14.png', 'img1/20200330/5e81c1e24f683.png', 1, 163392, 1, '2020-03-30 17:54:42', 1, 0);
INSERT INTO `we_attachment` VALUES (686, 'TIA 15.png', 'img1/20200330/5e81c1f7850e3.png', 1, 147480, 1, '2020-03-30 17:55:03', 1, 0);
INSERT INTO `we_attachment` VALUES (687, 'TIA 16.png', 'img1/20200330/5e81c206122bb.png', 1, 177632, 1, '2020-03-30 17:55:18', 1, 0);
INSERT INTO `we_attachment` VALUES (688, 'TIA 16.png', 'img1/20200330/5e81c2b9bfb32.png', 1, 177632, 1, '2020-03-30 17:58:18', 1, 0);
INSERT INTO `we_attachment` VALUES (689, 'TIA 17.png', 'img1/20200330/5e81c2c938c34.png', 1, 147597, 1, '2020-03-30 17:58:33', 1, 0);
INSERT INTO `we_attachment` VALUES (690, 'TIA 18.png', 'img1/20200330/5e81c2d666b32.png', 1, 167843, 1, '2020-03-30 17:58:46', 1, 0);
INSERT INTO `we_attachment` VALUES (691, 'TIA 19.png', 'img1/20200330/5e81c2ef9db97.png', 1, 157338, 1, '2020-03-30 17:59:11', 1, 0);
INSERT INTO `we_attachment` VALUES (692, 'TIA 20.png', 'img1/20200330/5e81c2f8c52c9.png', 1, 159297, 1, '2020-03-30 17:59:20', 1, 0);
INSERT INTO `we_attachment` VALUES (693, 'TIA 1.png', 'img1/20200330/5e81c4560cacd.png', 1, 156084, 1, '2020-03-30 18:05:10', 1, 0);
INSERT INTO `we_attachment` VALUES (694, 'TIA 9.png', 'img1/20200330/5e81c502debd3.png', 1, 150319, 1, '2020-03-30 18:08:03', 1, 0);
INSERT INTO `we_attachment` VALUES (695, 'TIA 10.png', 'img1/20200330/5e81c5253b1d3.png', 1, 211294, 1, '2020-03-30 18:08:37', 1, 0);
INSERT INTO `we_attachment` VALUES (696, 'TIA 11.png', 'img1/20200330/5e81c53408154.png', 1, 158524, 1, '2020-03-30 18:08:52', 1, 0);
INSERT INTO `we_attachment` VALUES (697, 'TIA 12.png', 'img1/20200330/5e81c5439d329.png', 1, 211683, 1, '2020-03-30 18:09:07', 1, 0);
INSERT INTO `we_attachment` VALUES (698, 'TIA 9.png', 'img1/20200330/5e81c59b6f4c6.png', 1, 150319, 1, '2020-03-30 18:10:35', 1, 0);
INSERT INTO `we_attachment` VALUES (699, '组 19.png', 'img1/20200330/5e81c8316d365.png', 1, 129816, 1, '2020-03-30 18:21:37', 1, 0);
INSERT INTO `we_attachment` VALUES (700, 'banner111.jpg', 'img1/20200331/5e82b38a349d3.jpg', 1, 547811, 1, '2020-03-31 11:05:46', 1, 0);
INSERT INTO `we_attachment` VALUES (701, '111.jpg', 'img1/20200331/5e82b3e35c76c.jpg', 1, 497083, 1, '2020-03-31 11:07:15', 1, 0);
INSERT INTO `we_attachment` VALUES (702, '768.jpg', 'img1/20200331/5e82b5c6bf9e6.jpg', 1, 189896, 1, '2020-03-31 11:15:18', 1, 0);
INSERT INTO `we_attachment` VALUES (703, '11.png', 'img1/20200403/5e868decbc6e2.png', 1, 279994, 1, '2020-04-03 09:14:20', 1, 0);
INSERT INTO `we_attachment` VALUES (704, '5e8186036226c2.png', 'abc1/20200408/5e8d8405754f6.png', 1, 1760, 0, '2020-04-08 15:57:57', 1, 0);
INSERT INTO `we_attachment` VALUES (705, '5e818603626c2.png', 'abc1/20200408/5e8d84612c1d1.png', 1, 1760, 0, '2020-04-08 15:59:29', 1, 0);
INSERT INTO `we_attachment` VALUES (706, '图 (4)-06 拷贝.png', 'img1/20200409/5e8e753535684.png', 1, 273187, 1, '2020-04-09 09:07:01', 1, 0);
INSERT INTO `we_attachment` VALUES (707, '未标题-1.jpg', 'img1/20200409/5e8e76405593f.jpg', 1, 360464, 1, '2020-04-09 09:11:28', 1, 0);
INSERT INTO `we_attachment` VALUES (708, '未标题-2.jpg', 'img1/20200409/5e8e797fcaa67.jpg', 1, 347864, 1, '2020-04-09 09:25:20', 1, 0);
INSERT INTO `we_attachment` VALUES (709, '图 (4)-06 拷贝.png', 'img1/20200409/5e8e79e3906de.png', 1, 275825, 1, '2020-04-09 09:26:59', 1, 0);
INSERT INTO `we_attachment` VALUES (710, 'ABOUT.jpg', 'img1/20200409/5e8ee4c55571b.jpg', 1, 268996, 1, '2020-04-09 17:03:01', 1, 0);
INSERT INTO `we_attachment` VALUES (711, 'ABOUT.jpg', 'img1/20200409/5e8ee535d802a.jpg', 1, 270596, 1, '2020-04-09 17:04:54', 1, 0);
INSERT INTO `we_attachment` VALUES (712, 'ABOUT.jpg', 'img1/20200409/5e8ee5a84e427.jpg', 1, 289670, 1, '2020-04-09 17:06:48', 1, 0);
INSERT INTO `we_attachment` VALUES (713, 'widc.jpg', 'img1/20200409/5e8eeb0d46c37.jpg', 1, 315298, 1, '2020-04-09 17:29:49', 1, 0);
INSERT INTO `we_attachment` VALUES (714, 'widc.jpg', 'img1/20200409/5e8eeb2b5b6a2.jpg', 1, 315298, 1, '2020-04-09 17:30:19', 1, 0);
INSERT INTO `we_attachment` VALUES (715, '未标题-1.jpg', 'img1/20200409/5e8ef6349eeb2.jpg', 1, 352532, 1, '2020-04-09 18:17:25', 1, 0);
INSERT INTO `we_attachment` VALUES (716, '未标题-1.jpg', 'img1/20200409/5e8ef6dbd97cc.jpg', 1, 344292, 1, '2020-04-09 18:20:12', 1, 0);
INSERT INTO `we_attachment` VALUES (717, '1.jpg', 'img1/20200410/5e8fbf25a14ab.jpg', 1, 264516, 1, '2020-04-10 08:34:46', 1, 0);
INSERT INTO `we_attachment` VALUES (718, '首图.jpg', 'img1/20200410/5e8fbf36e231f.jpg', 1, 172481, 1, '2020-04-10 08:35:03', 1, 0);
INSERT INTO `we_attachment` VALUES (719, '未标题-1.jpg', 'img1/20200410/5e8fbfcc3cf65.jpg', 1, 92886, 1, '2020-04-10 08:37:32', 1, 0);
INSERT INTO `we_attachment` VALUES (720, '2016.jpg', 'img1/20200410/5e8fc264bd73b.jpg', 1, 240623, 1, '2020-04-10 08:48:36', 1, 0);
INSERT INTO `we_attachment` VALUES (721, '2016.jpg', 'img1/20200410/5e8fc27d15be2.jpg', 1, 240623, 1, '2020-04-10 08:49:01', 1, 0);
INSERT INTO `we_attachment` VALUES (722, '510883112279962416副本.jpg', 'img1/20200410/5e8fc2dda190e.jpg', 1, 176240, 1, '2020-04-10 08:50:37', 1, 0);
INSERT INTO `we_attachment` VALUES (723, '2016WIDC.jpg', 'img1/20200410/5e8fc2f8bbec4.jpg', 1, 247257, 1, '2020-04-10 08:51:04', 1, 0);
INSERT INTO `we_attachment` VALUES (724, '510883112279962416副本.jpg', 'img1/20200410/5e8fc3145d41a.jpg', 1, 176240, 1, '2020-04-10 08:51:32', 1, 0);
INSERT INTO `we_attachment` VALUES (725, '2018WIDC.jpg', 'img1/20200410/5e8fc342888b9.jpg', 1, 308756, 1, '2020-04-10 08:52:18', 1, 0);
INSERT INTO `we_attachment` VALUES (726, '2019WIDC.jpg', 'img1/20200410/5e8fc359495e7.jpg', 1, 282772, 1, '2020-04-10 08:52:41', 1, 0);
INSERT INTO `we_attachment` VALUES (727, '20190508035054495.jpg', 'img1/20200410/5e8fc645b6606.jpg', 1, 440274, 1, '2020-04-10 09:05:10', 1, 0);
INSERT INTO `we_attachment` VALUES (728, 'IMG_0970.jpg', 'img1/20200410/5e8fc6a51e6d9.jpg', 1, 814149, 1, '2020-04-10 09:06:45', 1, 0);
INSERT INTO `we_attachment` VALUES (729, '20190508035054495.jpg', 'img1/20200410/5e8fc736ca2c0.jpg', 1, 440274, 1, '2020-04-10 09:09:11', 1, 0);
INSERT INTO `we_attachment` VALUES (730, '11.jpg', 'img1/20200410/5e8fc75a661a1.jpg', 1, 455500, 1, '2020-04-10 09:09:46', 1, 0);
INSERT INTO `we_attachment` VALUES (731, 'youdu图片20200410091332.png', 'img1/20200410/5e8fc834bb6fd.png', 1, 3395622, 1, '2020-04-10 09:13:25', 1, 0);
INSERT INTO `we_attachment` VALUES (732, '口罩设计-en-分辨率高-已压缩.pdf', 'file1/20200410/5e8fc85a64110.pdf', 0, 1738160, 0, '2020-04-10 09:14:02', 1, 0);
INSERT INTO `we_attachment` VALUES (733, 'youdu图片20200410091332.png', 'img1/20200410/5e8fc8e46ed91.png', 1, 3395622, 1, '2020-04-10 09:16:21', 1, 0);
INSERT INTO `we_attachment` VALUES (734, '未标题-4.jpg', 'img1/20200410/5e8fc9024023d.jpg', 1, 60116, 1, '2020-04-10 09:16:50', 1, 0);
INSERT INTO `we_attachment` VALUES (735, '290729937c97456843b31d13bd3086be-2315072.png', 'img1/20200410/5e8fccaf072d6.png', 1, 2315072, 1, '2020-04-10 09:32:31', 1, 0);
INSERT INTO `we_attachment` VALUES (736, '111.jpg', 'img1/20200410/5e8fccf8ad276.jpg', 1, 102976, 1, '2020-04-10 09:33:44', 1, 0);
INSERT INTO `we_attachment` VALUES (737, '290729937c97456843b31d13bd3086be-2315072.png', 'img1/20200410/5e8fd1bd5ab34.png', 1, 2315072, 1, '2020-04-10 09:54:05', 1, 0);
INSERT INTO `we_attachment` VALUES (738, '99992.jpg', 'img1/20200410/5e8fd426bfe67.jpg', 1, 539907, 1, '2020-04-10 10:04:23', 1, 0);
INSERT INTO `we_attachment` VALUES (739, '1替换掉2.jpg', 'img1/20200410/5e8fd4695de3a.jpg', 1, 814149, 1, '2020-04-10 10:05:29', 1, 0);
INSERT INTO `we_attachment` VALUES (740, '346df23e87c3c0fe57698f28a6ebb072-1411227.png', 'img1/20200410/5e8fd489397b8.png', 1, 1411227, 1, '2020-04-10 10:06:01', 1, 0);
INSERT INTO `we_attachment` VALUES (741, '16-16.jpg', 'img1/20200410/5e8fd832abaad.jpg', 1, 783184, 1, '2020-04-10 10:21:38', 1, 0);
INSERT INTO `we_attachment` VALUES (742, '16-16.jpg', 'img1/20200410/5e8fd8686efa1.jpg', 1, 783184, 1, '2020-04-10 10:22:32', 1, 0);
INSERT INTO `we_attachment` VALUES (743, 'IDWE5.jpg', 'img1/20200410/5e8fd897d3c0c.jpg', 1, 173673, 1, '2020-04-10 10:23:20', 1, 0);
INSERT INTO `we_attachment` VALUES (744, 'IDWE6.jpg', 'img1/20200410/5e8fd8a41d25f.jpg', 1, 168017, 1, '2020-04-10 10:23:32', 1, 0);
INSERT INTO `we_attachment` VALUES (745, '16-16.jpg', 'img1/20200410/5e8fd94312ecd.jpg', 1, 934789, 1, '2020-04-10 10:26:11', 1, 0);
INSERT INTO `we_attachment` VALUES (746, 'IDWE5.jpg', 'img1/20200410/5e8fd96003271.jpg', 1, 651705, 1, '2020-04-10 10:26:40', 1, 0);
INSERT INTO `we_attachment` VALUES (747, 'IDWE6.jpg', 'img1/20200410/5e8fd96d16b5a.jpg', 1, 407184, 1, '2020-04-10 10:26:53', 1, 0);
INSERT INTO `we_attachment` VALUES (748, '16-16.jpg', 'img1/20200410/5e8fdcb4a364c.jpg', 1, 934789, 1, '2020-04-10 10:40:52', 1, 0);
INSERT INTO `we_attachment` VALUES (749, 'IDWE5.jpg', 'img1/20200410/5e8fdcc3bc562.jpg', 1, 651705, 1, '2020-04-10 10:41:08', 1, 0);
INSERT INTO `we_attachment` VALUES (750, 'IDWE6.jpg', 'img1/20200410/5e8fdccf3fa7b.jpg', 1, 407184, 1, '2020-04-10 10:41:19', 1, 0);
INSERT INTO `we_attachment` VALUES (751, '16-16.jpg', 'img1/20200410/5e8fdd1273b49.jpg', 1, 171621, 1, '2020-04-10 10:42:26', 1, 0);
INSERT INTO `we_attachment` VALUES (752, 'IDWE5.jpg', 'img1/20200410/5e8fdd1f9fe77.jpg', 1, 167284, 1, '2020-04-10 10:42:39', 1, 0);
INSERT INTO `we_attachment` VALUES (753, 'IDWE6.jpg', 'img1/20200410/5e8fdd311ccba.jpg', 1, 262752, 1, '2020-04-10 10:42:57', 1, 0);
INSERT INTO `we_attachment` VALUES (754, '111.jpg', 'img1/20200410/5e8fde910bd1c.jpg', 1, 338252, 1, '2020-04-10 10:48:49', 1, 0);
INSERT INTO `we_attachment` VALUES (755, '小16-16.jpg', 'img1/20200410/5e8fe88ab0735.jpg', 1, 157465, 1, '2020-04-10 11:31:22', 1, 0);
INSERT INTO `we_attachment` VALUES (756, '1112.jpg', 'img1/20200410/5e90155f350ef.jpg', 1, 320370, 1, '2020-04-10 14:42:39', 1, 0);
INSERT INTO `we_attachment` VALUES (757, '未标题-1.jpg', 'img1/20200410/5e90162b73f19.jpg', 1, 340082, 1, '2020-04-10 14:46:03', 1, 0);
INSERT INTO `we_attachment` VALUES (758, '未标题-1.jpg', 'img1/20200410/5e90165c364cd.jpg', 1, 343807, 1, '2020-04-10 14:46:52', 1, 0);
INSERT INTO `we_attachment` VALUES (759, '未标题-1.jpg', 'img1/20200410/5e901690d6546.jpg', 1, 339772, 1, '2020-04-10 14:47:45', 1, 0);
INSERT INTO `we_attachment` VALUES (760, '11111.jpg', 'img1/20200410/5e901a72ee399.jpg', 1, 351492, 1, '2020-04-10 15:04:19', 1, 0);
INSERT INTO `we_attachment` VALUES (761, '这张替换IDWE3.jpg', 'img1/20200411/5e913e080e3d7.jpg', 1, 230624, 1, '2020-04-11 11:48:24', 1, 0);
INSERT INTO `we_attachment` VALUES (762, 'banner_画板 1.jpg', 'abc1/20200411/5e913e4f2a531.jpg', 1, 1293062, 0, '2020-04-11 11:49:35', 1, 0);
INSERT INTO `we_attachment` VALUES (763, '未标题-2.jpg', 'abc1/20200411/5e913f5a5edc5.jpg', 1, 369851, 0, '2020-04-11 11:54:02', 1, 0);
INSERT INTO `we_attachment` VALUES (764, '未标题-1.jpg', 'abc1/20200411/5e913f800d2f5.jpg', 1, 231146, 0, '2020-04-11 11:54:40', 1, 0);
INSERT INTO `we_attachment` VALUES (765, '未标题-2.jpg', 'abc1/20200411/5e91526bd4a9b.jpg', 1, 392837, 0, '2020-04-11 13:15:23', 1, 0);
INSERT INTO `we_attachment` VALUES (766, '未标题-1.jpg', 'abc1/20200411/5e91539b17bc7.jpg', 1, 273928, 0, '2020-04-11 13:20:27', 1, 0);
INSERT INTO `we_attachment` VALUES (767, '内页.jpg', 'img1/20200411/5e91569e6bb0e.jpg', 1, 116045, 1, '2020-04-11 13:33:18', 1, 0);
INSERT INTO `we_attachment` VALUES (768, 'ABOUT.jpg', 'img1/20200411/5e9157e4393fa.jpg', 1, 300521, 1, '2020-04-11 13:38:44', 1, 0);
INSERT INTO `we_attachment` VALUES (769, 'banner-05.jpg', 'abc1/20200411/5e916d4460e36.jpg', 1, 349605, 0, '2020-04-11 15:09:56', 1, 0);
INSERT INTO `we_attachment` VALUES (770, 'banner-06.jpg', 'abc1/20200411/5e916d5568cd1.jpg', 1, 258869, 0, '2020-04-11 15:10:13', 1, 0);
INSERT INTO `we_attachment` VALUES (771, 'widc.png', 'img1/20200416/5e982c5a16b10.png', 1, 312997, 1, '2020-04-16 17:58:50', 1, 0);
INSERT INTO `we_attachment` VALUES (772, 'idwe.png', 'img1/20200416/5e982c7749a0b.png', 1, 241734, 1, '2020-04-16 17:59:19', 1, 0);
INSERT INTO `we_attachment` VALUES (773, 'TIA.png', 'img1/20200416/5e982c89dec54.png', 1, 220269, 1, '2020-04-16 17:59:38', 1, 0);
INSERT INTO `we_attachment` VALUES (774, 'widc.png', 'img1/20200416/5e982dc3af443.png', 1, 279661, 1, '2020-04-16 18:04:51', 1, 0);
INSERT INTO `we_attachment` VALUES (775, 'idwe.png', 'img1/20200416/5e982de9198d0.png', 1, 208826, 1, '2020-04-16 18:05:29', 1, 0);
INSERT INTO `we_attachment` VALUES (776, 'TIA.png', 'img1/20200416/5e982df70a961.png', 1, 192002, 1, '2020-04-16 18:05:43', 1, 0);
INSERT INTO `we_attachment` VALUES (777, '11.jpg', 'img1/20200423/5ea11c5e162f0.jpg', 1, 181207, 1, '2020-04-23 12:41:02', 1, 0);
INSERT INTO `we_attachment` VALUES (778, '捕获.PNG', 'img1/20200428/5ea782a437198.PNG', 0, 761813, 1, '2020-04-28 09:11:00', 1, 0);
INSERT INTO `we_attachment` VALUES (779, '1.PNG', 'img1/20200428/5ea7867769f31.PNG', 0, 532449, 1, '2020-04-28 09:27:19', 1, 0);
INSERT INTO `we_attachment` VALUES (780, '33.png', 'img1/20200428/5ea7877c80156.png', 1, 8380, 1, '2020-04-28 09:31:40', 1, 0);
INSERT INTO `we_attachment` VALUES (781, '33.png', 'img1/20200428/5ea787a3e2e7b.png', 1, 8380, 1, '2020-04-28 09:32:19', 1, 0);
INSERT INTO `we_attachment` VALUES (782, '33.png', 'img1/20200428/5ea7886e463ad.png', 1, 8380, 1, '2020-04-28 09:35:42', 1, 0);
INSERT INTO `we_attachment` VALUES (783, '1111.jpg', 'img1/20200428/5ea788fbb9bc3.jpg', 1, 351492, 1, '2020-04-28 09:38:04', 1, 0);
INSERT INTO `we_attachment` VALUES (784, '44.png', 'img1/20200428/5ea78a1d7e785.png', 1, 76693, 1, '2020-04-28 09:42:53', 1, 0);
INSERT INTO `we_attachment` VALUES (785, '44.png', 'img1/20200428/5ea78b9bd773e.png', 1, 76693, 1, '2020-04-28 09:49:15', 1, 0);
INSERT INTO `we_attachment` VALUES (786, '5e192b81161c3.jpg', 'abc1/20200428/5ea78d261a147.jpg', 1, 189659, 0, '2020-04-28 09:55:50', 1, 0);
INSERT INTO `we_attachment` VALUES (787, '33.png', 'abc1/20200428/5ea78e88c2f6c.png', 1, 8380, 0, '2020-04-28 10:01:44', 1, 0);
INSERT INTO `we_attachment` VALUES (788, '33.png', 'abc1/20200428/5ea78e98669df.png', 1, 8380, 0, '2020-04-28 10:02:00', 1, 0);
INSERT INTO `we_attachment` VALUES (789, '微信图片_20200408101734.png', 'img1/20200428/5ea79440cd8c2.png', 1, 1611235, 1, '2020-04-28 10:26:09', 1, 0);
INSERT INTO `we_attachment` VALUES (790, 'GDIO_AntonyMargiasso_3UPDATE.png', 'img1/20200428/5ea79464eae22.png', 1, 85363, 1, '2020-04-28 10:26:45', 1, 0);
INSERT INTO `we_attachment` VALUES (791, '去色logo_FPininfarina.jpg', 'abc1/20200428/5ea7ef897d488.jpg', 1, 16874, 0, '2020-04-28 16:55:37', 1, 0);
INSERT INTO `we_attachment` VALUES (792, '彩色logo_FPininfarina.jpg', 'abc1/20200428/5ea7ef982015a.jpg', 1, 18561, 0, '2020-04-28 16:55:52', 1, 0);
INSERT INTO `we_attachment` VALUES (793, 'banner-06.jpg', 'abc1/20200429/5ea8da15e7d12.jpg', 1, 1373127, 0, '2020-04-29 09:36:22', 1, 0);
INSERT INTO `we_attachment` VALUES (794, '微信图片_20200429103142.jpg', 'abc1/20200429/5ea8e78447863.jpg', 1, 137123, 0, '2020-04-29 10:33:40', 1, 0);
INSERT INTO `we_attachment` VALUES (795, '20200429_GDIO_vectorlogo-02_副本.png', 'img1/20200430/5eaa28e29b65f.png', 1, 23654, 1, '2020-04-30 09:24:50', 1, 0);
INSERT INTO `we_attachment` VALUES (796, 'A_Margiasso_副本.png', 'img1/20200430/5eaa290220a4b.png', 1, 1040104, 1, '2020-04-30 09:25:22', 1, 0);
INSERT INTO `we_attachment` VALUES (797, 'logo_FPininfarina_副本.jpg', 'img1/20200430/5eaa29141ab61.jpg', 1, 32302, 1, '2020-04-30 09:25:40', 1, 0);
INSERT INTO `we_attachment` VALUES (798, 'GDIO.jpg', 'img1/20200430/5eaa2922aac36.jpg', 1, 219494, 1, '2020-04-30 09:25:54', 1, 0);
INSERT INTO `we_attachment` VALUES (799, '20200429_GDIO_vectorlogo-02_副本.png', 'img1/20200430/5eaa2d08eb767.png', 1, 23654, 1, '2020-04-30 09:42:33', 1, 0);
INSERT INTO `we_attachment` VALUES (800, 'A_Margiasso_副本.png', 'img1/20200430/5eaa2d3a37ca6.png', 1, 1040104, 1, '2020-04-30 09:43:22', 1, 0);
INSERT INTO `we_attachment` VALUES (801, 'logo_FPininfarina_副本.jpg', 'img1/20200430/5eaa2d54becd9.jpg', 1, 46689, 1, '2020-04-30 09:43:48', 1, 0);
INSERT INTO `we_attachment` VALUES (802, '20200429_GDIO_vectorlogo-02_副本.png', 'img1/20200430/5eaa303312a84.png', 1, 23654, 1, '2020-04-30 09:56:03', 1, 0);
INSERT INTO `we_attachment` VALUES (803, 'A_Margiasso_副本.png', 'img1/20200430/5eaa3040d7377.png', 1, 1040104, 1, '2020-04-30 09:56:17', 1, 0);
INSERT INTO `we_attachment` VALUES (804, 'logo_FPininfarina_副本.jpg', 'img1/20200430/5eaa306688655.jpg', 1, 46689, 1, '2020-04-30 09:56:54', 1, 0);
INSERT INTO `we_attachment` VALUES (805, 'logo_FPininfarina_副本2.jpg', 'img1/20200430/5eaa6594f020e.jpg', 1, 32911, 1, '2020-04-30 13:43:49', 1, 0);
INSERT INTO `we_attachment` VALUES (806, '白色底.jpg', 'img1/20200430/5eaa91c78de87.jpg', 1, 151846, 1, '2020-04-30 16:52:23', 1, 0);
INSERT INTO `we_attachment` VALUES (807, '白色底.jpg', 'img1/20200430/5eaa921f83967.jpg', 1, 151846, 1, '2020-04-30 16:53:51', 1, 0);
INSERT INTO `we_attachment` VALUES (808, '白色底.jpg', 'img1/20200430/5eaa9247b5bb2.jpg', 1, 151846, 1, '2020-04-30 16:54:31', 1, 0);
INSERT INTO `we_attachment` VALUES (809, '灰色.jpg', 'img1/20200430/5eaa933c04421.jpg', 1, 154369, 1, '2020-04-30 16:58:36', 1, 0);
INSERT INTO `we_attachment` VALUES (810, '改5e81c8316d365.png', 'img1/20200430/5eaa93c04675a.png', 1, 166790, 1, '2020-04-30 17:00:48', 1, 0);
INSERT INTO `we_attachment` VALUES (811, '改IMG_0970.jpg', 'img1/20200506/5eb209995822d.jpg', 1, 870977, 1, '2020-05-06 08:49:29', 1, 0);
INSERT INTO `we_attachment` VALUES (812, '5ea8da15e7d12.jpg', 'abc1/20200515/5ebe548d44ed8.jpg', 1, 269069, 0, '2020-05-15 16:36:29', 1, 0);
INSERT INTO `we_attachment` VALUES (813, '11.jpg', 'img1/20200516/5ebf941b2c959.jpg', 1, 296817, 1, '2020-05-16 15:19:55', 1, 0);
INSERT INTO `we_attachment` VALUES (814, '11.jpg', 'img1/20200516/5ebf943e28c50.jpg', 1, 296817, 1, '2020-05-16 15:20:30', 1, 0);
INSERT INTO `we_attachment` VALUES (815, '5eb209995822d.jpg', 'img1/20200516/5ebf9cda568bc.jpg', 1, 236012, 1, '2020-05-16 15:57:15', 1, 0);
INSERT INTO `we_attachment` VALUES (816, '5e8fd489397b8.jpg', 'img1/20200516/5ebf9d0bdc0f7.jpg', 1, 180527, 1, '2020-05-16 15:58:04', 1, 0);
INSERT INTO `we_attachment` VALUES (817, '5e7edd401bc7d.jpg', 'img1/20200516/5ebf9d273fa86.jpg', 1, 127958, 1, '2020-05-16 15:58:31', 1, 0);
INSERT INTO `we_attachment` VALUES (818, '5ea8e78447863.jpg', 'abc1/20200516/5ebf9d83699e9.jpg', 1, 137123, 0, '2020-05-16 16:00:03', 1, 0);
INSERT INTO `we_attachment` VALUES (819, '5e7ee57ea19aa.png!300X300.jpg', 'img1/20200516/5ebf9f340a408.jpg', 1, 16835, 1, '2020-05-16 16:07:16', 1, 0);
INSERT INTO `we_attachment` VALUES (820, '5e7ee57ea19aa.png!300X300.jpg', 'img1/20200516/5ebf9fb4ae48b.jpg', 1, 19939, 1, '2020-05-16 16:09:24', 1, 0);
INSERT INTO `we_attachment` VALUES (821, '5e7ee1c05702d.jpg', 'img1/20200516/5ebfa0fec15b8.jpg', 1, 259991, 1, '2020-05-16 16:14:55', 1, 0);
INSERT INTO `we_attachment` VALUES (822, '拼图封面_画板 1.jpg', 'img1/20200526/5eccbbf7950c4.jpg', 1, 3529727, 1, '2020-05-26 14:49:30', 1, 0);
INSERT INTO `we_attachment` VALUES (823, '未标题-1222.jpg', 'img1/20200526/5ecd04cbabefa.jpg', 1, 1351766, 1, '2020-05-26 20:00:12', 1, 0);
INSERT INTO `we_attachment` VALUES (824, 'xuehui3.jpg', 'img1/20230418/643e553fc11f6.jpg', 1, 408995, 1, '2023-04-18 16:30:55', 1, 0);
INSERT INTO `we_attachment` VALUES (825, 'xuehui6.jpg', 'img1/20230418/643e6029c4b1f.jpg', 1, 609357, 1, '2023-04-18 17:17:30', 1, 0);
INSERT INTO `we_attachment` VALUES (826, 'xuehui6.jpg', 'img1/20230418/643e603d46910.jpg', 1, 609357, 1, '2023-04-18 17:17:49', 1, 0);
INSERT INTO `we_attachment` VALUES (827, '5.png', 'img1/20230418/643e60ddef6af.png', 1, 917366, 1, '2023-04-18 17:20:30', 1, 0);
INSERT INTO `we_attachment` VALUES (828, '关于我们.png', 'img1/20230418/643e61f77d904.png', 1, 208280, 1, '2023-04-18 17:25:11', 1, 0);
INSERT INTO `we_attachment` VALUES (829, '关于我们.png', 'img1/20230418/643e620e5b68d.png', 1, 208280, 1, '2023-04-18 17:25:34', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for we_attachment_index
-- ----------------------------
DROP TABLE IF EXISTS `we_attachment_index`;
CREATE TABLE `we_attachment_index` (
  `att_id` int(10) unsigned NOT NULL DEFAULT '0',
  `arc_id` int(10) unsigned NOT NULL DEFAULT '0',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(20) NOT NULL DEFAULT '',
  KEY `att_id` (`att_id`) USING BTREE,
  KEY `arc_id` (`arc_id`) USING BTREE,
  KEY `model_id` (`model_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_attachment_index
-- ----------------------------
BEGIN;
INSERT INTO `we_attachment_index` VALUES (99, 3, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (403, 12, 1, '');
INSERT INTO `we_attachment_index` VALUES (7, 7, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (124, 2, 1, '');
INSERT INTO `we_attachment_index` VALUES (9, 1, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (10, 19, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (11, 20, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (73, 21, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (798, 25, 1, '');
INSERT INTO `we_attachment_index` VALUES (279, 3, 1, '');
INSERT INTO `we_attachment_index` VALUES (95, 1, 2, '');
INSERT INTO `we_attachment_index` VALUES (242, 5, 2, '');
INSERT INTO `we_attachment_index` VALUES (31, 6, 2, '');
INSERT INTO `we_attachment_index` VALUES (32, 6, 2, '');
INSERT INTO `we_attachment_index` VALUES (240, 5, 2, '');
INSERT INTO `we_attachment_index` VALUES (244, 5, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (34, 7, 1, '');
INSERT INTO `we_attachment_index` VALUES (35, 6, 1, '');
INSERT INTO `we_attachment_index` VALUES (789, 24, 1, '');
INSERT INTO `we_attachment_index` VALUES (779, 36, 4, '');
INSERT INTO `we_attachment_index` VALUES (46, 2, 4, '');
INSERT INTO `we_attachment_index` VALUES (669, 2, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (246, 6, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (719, 14, 1, '');
INSERT INTO `we_attachment_index` VALUES (52, 4, 4, '');
INSERT INTO `we_attachment_index` VALUES (804, 26, 1, '');
INSERT INTO `we_attachment_index` VALUES (803, 26, 1, '');
INSERT INTO `we_attachment_index` VALUES (58, 10, 4, '');
INSERT INTO `we_attachment_index` VALUES (59, 11, 4, '');
INSERT INTO `we_attachment_index` VALUES (697, 23, 4, '');
INSERT INTO `we_attachment_index` VALUES (63, 15, 4, '');
INSERT INTO `we_attachment_index` VALUES (695, 12, 4, '');
INSERT INTO `we_attachment_index` VALUES (688, 19, 4, '');
INSERT INTO `we_attachment_index` VALUES (810, 2, 0, 'block');
INSERT INTO `we_attachment_index` VALUES (654, 19, 1, '');
INSERT INTO `we_attachment_index` VALUES (74, 25, 4, '');
INSERT INTO `we_attachment_index` VALUES (75, 26, 4, '');
INSERT INTO `we_attachment_index` VALUES (76, 27, 4, '');
INSERT INTO `we_attachment_index` VALUES (77, 28, 4, '');
INSERT INTO `we_attachment_index` VALUES (78, 29, 4, '');
INSERT INTO `we_attachment_index` VALUES (79, 30, 4, '');
INSERT INTO `we_attachment_index` VALUES (80, 31, 4, '');
INSERT INTO `we_attachment_index` VALUES (81, 32, 4, '');
INSERT INTO `we_attachment_index` VALUES (82, 33, 4, '');
INSERT INTO `we_attachment_index` VALUES (83, 34, 4, '');
INSERT INTO `we_attachment_index` VALUES (84, 35, 4, '');
INSERT INTO `we_attachment_index` VALUES (85, 11, 2, '');
INSERT INTO `we_attachment_index` VALUES (86, 8, 1, '');
INSERT INTO `we_attachment_index` VALUES (734, 21, 1, '');
INSERT INTO `we_attachment_index` VALUES (709, 9, 1, '');
INSERT INTO `we_attachment_index` VALUES (125, 16, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (126, 17, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (127, 18, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (700, 4, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (276, 10, 1, '');
INSERT INTO `we_attachment_index` VALUES (290, 11, 1, '');
INSERT INTO `we_attachment_index` VALUES (402, 12, 1, '');
INSERT INTO `we_attachment_index` VALUES (310, 15, 1, '');
INSERT INTO `we_attachment_index` VALUES (707, 1, 1, '');
INSERT INTO `we_attachment_index` VALUES (314, 16, 1, '');
INSERT INTO `we_attachment_index` VALUES (323, 26, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (419, 27, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (325, 25, 2, '');
INSERT INTO `we_attachment_index` VALUES (332, 26, 2, '');
INSERT INTO `we_attachment_index` VALUES (401, 12, 1, '');
INSERT INTO `we_attachment_index` VALUES (404, 12, 1, '');
INSERT INTO `we_attachment_index` VALUES (398, 32, 2, '');
INSERT INTO `we_attachment_index` VALUES (333, 26, 2, '');
INSERT INTO `we_attachment_index` VALUES (790, 24, 1, '');
INSERT INTO `we_attachment_index` VALUES (336, 27, 2, '');
INSERT INTO `we_attachment_index` VALUES (382, 35, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (339, 30, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (340, 30, 2, '');
INSERT INTO `we_attachment_index` VALUES (341, 30, 2, '');
INSERT INTO `we_attachment_index` VALUES (344, 30, 2, '');
INSERT INTO `we_attachment_index` VALUES (397, 32, 2, '');
INSERT INTO `we_attachment_index` VALUES (346, 30, 2, '');
INSERT INTO `we_attachment_index` VALUES (347, 30, 2, '');
INSERT INTO `we_attachment_index` VALUES (348, 30, 2, '');
INSERT INTO `we_attachment_index` VALUES (396, 32, 2, '');
INSERT INTO `we_attachment_index` VALUES (351, 31, 2, '');
INSERT INTO `we_attachment_index` VALUES (352, 31, 2, '');
INSERT INTO `we_attachment_index` VALUES (724, 5, 1, '');
INSERT INTO `we_attachment_index` VALUES (358, 33, 2, '');
INSERT INTO `we_attachment_index` VALUES (359, 33, 2, '');
INSERT INTO `we_attachment_index` VALUES (360, 33, 2, '');
INSERT INTO `we_attachment_index` VALUES (426, 9, 1, '');
INSERT INTO `we_attachment_index` VALUES (820, 13, 1, '');
INSERT INTO `we_attachment_index` VALUES (723, 5, 1, '');
INSERT INTO `we_attachment_index` VALUES (802, 26, 1, '');
INSERT INTO `we_attachment_index` VALUES (365, 4, 1, '');
INSERT INTO `we_attachment_index` VALUES (281, 4, 1, '');
INSERT INTO `we_attachment_index` VALUES (322, 25, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (717, 14, 1, '');
INSERT INTO `we_attachment_index` VALUES (706, 1, 1, '');
INSERT INTO `we_attachment_index` VALUES (666, 20, 1, '');
INSERT INTO `we_attachment_index` VALUES (798, 26, 1, '');
INSERT INTO `we_attachment_index` VALUES (568, 13, 1, '');
INSERT INTO `we_attachment_index` VALUES (377, 29, 2, '');
INSERT INTO `we_attachment_index` VALUES (564, 17, 1, '');
INSERT INTO `we_attachment_index` VALUES (405, 22, 2, '');
INSERT INTO `we_attachment_index` VALUES (785, 23, 1, '');
INSERT INTO `we_attachment_index` VALUES (782, 22, 1, '');
INSERT INTO `we_attachment_index` VALUES (777, 44, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (752, 41, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (563, 18, 1, '');
INSERT INTO `we_attachment_index` VALUES (815, 33, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (816, 34, 0, 'category');
INSERT INTO `we_attachment_index` VALUES (824, 48, 0, 'category');
COMMIT;

-- ----------------------------
-- Table structure for we_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `we_auth_group`;
CREATE TABLE `we_auth_group` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '',
  `description` varchar(200) DEFAULT '' COMMENT '描述',
  `status` tinyint(3) unsigned DEFAULT '0',
  `rules` text,
  `department_id` int(11) DEFAULT '0' COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_auth_group
-- ----------------------------
BEGIN;
INSERT INTO `we_auth_group` VALUES (1, '总经理', '总经理', 1, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,158,36,37,38,39,40,153,154,155,156,157,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,159,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152', 0);
COMMIT;

-- ----------------------------
-- Table structure for we_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `we_auth_group_access`;
CREATE TABLE `we_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_auth_group_access
-- ----------------------------
BEGIN;
INSERT INTO `we_auth_group_access` VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for we_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `we_auth_rule`;
CREATE TABLE `we_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `name` varchar(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型[1支持表达式]',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `condition` varchar(100) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_auth_rule
-- ----------------------------
BEGIN;
INSERT INTO `we_auth_rule` VALUES (1, 'Manage/Public', '公共', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (2, 'Manage/MenuA1', '常规管理(1级菜单)', 1, 1, 1, '');
INSERT INTO `we_auth_rule` VALUES (3, 'Manage/MenuA2', '模块管理(1级菜单)', 1, 1, 1, '');
INSERT INTO `we_auth_rule` VALUES (4, 'Manage/MenuA3', '系统设置(1级菜单)', 1, 1, 1, '');
INSERT INTO `we_auth_rule` VALUES (5, 'Manage/MenuA4', '其他管理(1级菜单)', 1, 1, 1, '');
INSERT INTO `we_auth_rule` VALUES (6, 'Manage/MenuB1', '内容管理(2级菜单)', 1, 1, 1, '');
INSERT INTO `we_auth_rule` VALUES (7, 'Manage/MenuB2', '快捷面板(2级菜单)', 1, 1, 1, '');
INSERT INTO `we_auth_rule` VALUES (8, 'Manage/MenuB3', '内置模块(2级菜单)', 1, 1, 1, '');
INSERT INTO `we_auth_rule` VALUES (9, 'Manage/MenuB4', '其他模块(2级菜单)', 1, 1, 1, '');
INSERT INTO `we_auth_rule` VALUES (10, 'Manage/MenuB5', '扩展管理(2级菜单)', 1, 1, 1, '');
INSERT INTO `we_auth_rule` VALUES (11, 'Manage/Category', '栏目管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (12, 'Manage/Category/index', '列表', 1, 1, 11, '');
INSERT INTO `we_auth_rule` VALUES (13, 'Manage/Category/add', '添加', 1, 1, 11, '');
INSERT INTO `we_auth_rule` VALUES (14, 'Manage/Category/edit', '修改', 1, 1, 11, '');
INSERT INTO `we_auth_rule` VALUES (15, 'Manage/Category/del', '删除', 1, 1, 11, '');
INSERT INTO `we_auth_rule` VALUES (16, 'Manage/Category/sort', '排序', 1, 1, 11, '');
INSERT INTO `we_auth_rule` VALUES (17, 'Manage/Auth', '管理员权限', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (18, 'Manage/Auth/indexOfUser', '用户列表', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (19, 'Manage/Auth/addUser', '添加用户', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (20, 'Manage/Auth/editUser', '编辑用户', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (21, 'Manage/Auth/delUser', '删除用户', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (22, 'Manage/Auth/updateStatusOfUser', '锁定用户', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (23, 'Manage/Auth/index', ' 职位列表', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (24, 'Manage/Auth/addGroup', '添加职位', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (25, 'Manage/Auth/editGroup', '修改职位', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (26, 'Manage/Auth/updateGroup', '职位状态设置', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (27, 'Manage/Auth/access', '权限设置', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (28, 'Manage/Auth/rule', '规则列表', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (29, 'Manage/Auth/addRule', '添加规则', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (30, 'Manage/Auth/editRule', '修改规则', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (31, 'Manage/Auth/delRule', '删除规则', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (32, 'Manage/Department/index', '部门列表', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (33, 'Manage/Department/add', '添加部门', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (34, 'Manage/Department/edit', '修改部门', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (35, 'Manage/Department/del', '删除部门', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (36, 'Manage/System', '系统设置', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (37, 'Manage/System/site', '网站设置', 1, 1, 36, '');
INSERT INTO `we_auth_rule` VALUES (38, 'Manage/System/url', '伪静态缓存设置', 1, 1, 36, '');
INSERT INTO `we_auth_rule` VALUES (39, 'Manage/System/clearCache', '清除缓存', 1, 1, 36, '');
INSERT INTO `we_auth_rule` VALUES (40, 'Manage/System/online', '在线客服', 1, 1, 36, '');
INSERT INTO `we_auth_rule` VALUES (41, 'Manage/ClearHtml', '静态缓存', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (42, 'Manage/ClearHtml/all', '一键更新全站', 1, 1, 41, '');
INSERT INTO `we_auth_rule` VALUES (43, 'Manage/ClearHtml/home', '更新首页', 1, 1, 41, '');
INSERT INTO `we_auth_rule` VALUES (44, 'Manage/ClearHtml/lists', '更新栏目', 1, 1, 41, '');
INSERT INTO `we_auth_rule` VALUES (45, 'Manage/ClearHtml/shows', '更新文档', 1, 1, 41, '');
INSERT INTO `we_auth_rule` VALUES (46, 'Manage/ClearHtml/special', '更新专题', 1, 1, 41, '');
INSERT INTO `we_auth_rule` VALUES (47, 'Manage/Personal', '我的账户', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (48, 'Manage/Personal/index', '修改资料', 1, 1, 47, '');
INSERT INTO `we_auth_rule` VALUES (49, 'Manage/Personal/pwd', '修改密码', 1, 1, 47, '');
INSERT INTO `we_auth_rule` VALUES (50, 'Manage/Member', '会员管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (51, 'Manage/Member/index', '会员列表', 1, 1, 50, '');
INSERT INTO `we_auth_rule` VALUES (52, 'Manage/Member/add', '添加会员', 1, 1, 50, '');
INSERT INTO `we_auth_rule` VALUES (53, 'Manage/Member/edit', '修改会员', 1, 1, 50, '');
INSERT INTO `we_auth_rule` VALUES (54, 'Manage/Member/del', '删除会员', 1, 1, 50, '');
INSERT INTO `we_auth_rule` VALUES (55, 'Manage/Membergroup/index', '会员组列表', 1, 1, 50, '');
INSERT INTO `we_auth_rule` VALUES (56, 'Manage/Membergroup/add', '添加会员组', 1, 1, 50, '');
INSERT INTO `we_auth_rule` VALUES (57, 'Manage/Membergroup/edit', '修改会员组', 1, 1, 50, '');
INSERT INTO `we_auth_rule` VALUES (58, 'Manage/Membergroup/del', '删除会员', 1, 1, 50, '');
INSERT INTO `we_auth_rule` VALUES (59, 'Manage/Model', '模型管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (60, 'Manage/Model/add', '添加', 1, 1, 59, '');
INSERT INTO `we_auth_rule` VALUES (61, 'Manage/Model/edit', '修改', 1, 1, 59, '');
INSERT INTO `we_auth_rule` VALUES (62, 'Manage/Model/del', '删除', 1, 1, 59, '');
INSERT INTO `we_auth_rule` VALUES (63, 'Manage/Model/sort', '排序', 1, 1, 59, '');
INSERT INTO `we_auth_rule` VALUES (64, 'Manage/Menu', '菜单管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (65, 'Manage/Menu/index', '列表', 1, 1, 64, '');
INSERT INTO `we_auth_rule` VALUES (66, 'Manage/Menu/add', '添加', 1, 1, 64, '');
INSERT INTO `we_auth_rule` VALUES (67, 'Manage/Menu/edit', '修改', 1, 1, 64, '');
INSERT INTO `we_auth_rule` VALUES (68, 'Manage/Menu/del', '删除', 1, 1, 64, '');
INSERT INTO `we_auth_rule` VALUES (69, 'Manage/Menu/sort', '排序', 1, 1, 64, '');
INSERT INTO `we_auth_rule` VALUES (70, 'Manage/Menu/qk', '快捷面板', 1, 1, 64, '');
INSERT INTO `we_auth_rule` VALUES (71, 'Manage/Database', '数据库管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (72, 'Manage/Database/index', '数据表列表', 1, 1, 71, '');
INSERT INTO `we_auth_rule` VALUES (73, 'Manage/Database/optimize', '数据表优化', 1, 1, 71, '');
INSERT INTO `we_auth_rule` VALUES (74, 'Manage/Database/repair', '数据表修复', 1, 1, 71, '');
INSERT INTO `we_auth_rule` VALUES (75, 'Manage/Database/backup', '数据库备份', 1, 1, 71, '');
INSERT INTO `we_auth_rule` VALUES (76, 'Manage/Database/restore', '还原管理', 1, 1, 71, '');
INSERT INTO `we_auth_rule` VALUES (77, 'Manage/Database/restoreData', '数据恢复', 1, 1, 71, '');
INSERT INTO `we_auth_rule` VALUES (78, 'Manage/Database/delSqlFiles', '删除文件', 1, 1, 71, '');
INSERT INTO `we_auth_rule` VALUES (79, 'Manage/Itemgroup', '联动组管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (80, 'Manage/Itemgroup/index', '列表', 1, 1, 79, '');
INSERT INTO `we_auth_rule` VALUES (81, 'Manage/Itemgroup/add', '添加', 1, 1, 79, '');
INSERT INTO `we_auth_rule` VALUES (82, 'Manage/Itemgroup/edit', '修改', 1, 1, 79, '');
INSERT INTO `we_auth_rule` VALUES (83, 'Manage/Itemgroup/del', '删除', 1, 1, 79, '');
INSERT INTO `we_auth_rule` VALUES (84, 'Manage/Iteminfo', '联动管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (85, 'Manage/Iteminfo/index', '列表', 1, 1, 84, '');
INSERT INTO `we_auth_rule` VALUES (86, 'Manage/Iteminfo/add', '添加', 1, 1, 84, '');
INSERT INTO `we_auth_rule` VALUES (87, 'Manage/Iteminfo/edit', '修改', 1, 1, 84, '');
INSERT INTO `we_auth_rule` VALUES (88, 'Manage/Iteminfo/del', '删除', 1, 1, 84, '');
INSERT INTO `we_auth_rule` VALUES (89, 'Manage/Iteminfo/sort', '排序', 1, 1, 84, '');
INSERT INTO `we_auth_rule` VALUES (90, 'Manage/Area', '区域管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (91, 'Manage/Area/index', '列表', 1, 1, 90, '');
INSERT INTO `we_auth_rule` VALUES (92, 'Manage/Area/add', '添加', 1, 1, 90, '');
INSERT INTO `we_auth_rule` VALUES (93, 'Manage/Area/edit', '修改', 1, 1, 90, '');
INSERT INTO `we_auth_rule` VALUES (94, 'Manage/Area/del', '删除', 1, 1, 90, '');
INSERT INTO `we_auth_rule` VALUES (95, 'Manage/Area/sort', '排序', 1, 1, 90, '');
INSERT INTO `we_auth_rule` VALUES (96, 'Manage/Area/createJsArea', '生成JS', 1, 1, 90, '');
INSERT INTO `we_auth_rule` VALUES (97, 'Manage/Meta', '数据元管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (98, 'Manage/Meta/index', '列表', 1, 1, 97, '');
INSERT INTO `we_auth_rule` VALUES (99, 'Manage/Meta/add', '添加', 1, 1, 97, '');
INSERT INTO `we_auth_rule` VALUES (100, 'Manage/Meta/edit', '修改', 1, 1, 97, '');
INSERT INTO `we_auth_rule` VALUES (101, 'Manage/Meta/del', '删除', 1, 1, 97, '');
INSERT INTO `we_auth_rule` VALUES (102, 'Manage/Attachment', '已上传文件管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (103, 'Manage/Attachment/index', '列表', 1, 1, 102, '');
INSERT INTO `we_auth_rule` VALUES (104, 'Manage/Attachment/del', '删除', 1, 1, 102, '');
INSERT INTO `we_auth_rule` VALUES (105, 'Manage/Templets', '模板管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (106, 'Manage/Templets/index', '列表', 1, 1, 105, '');
INSERT INTO `we_auth_rule` VALUES (107, 'Manage/Templets/add', '添加', 1, 1, 105, '');
INSERT INTO `we_auth_rule` VALUES (108, 'Manage/Templets/edit', '修改', 1, 1, 105, '');
INSERT INTO `we_auth_rule` VALUES (109, 'Manage/Templets/del', '删除', 1, 1, 105, '');
INSERT INTO `we_auth_rule` VALUES (110, 'Manage/Block', '自由块管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (111, 'Manage/Block/index', '列表', 1, 1, 110, '');
INSERT INTO `we_auth_rule` VALUES (112, 'Manage/Block/add', '添加', 1, 1, 110, '');
INSERT INTO `we_auth_rule` VALUES (113, 'Manage/Block/edit', '修改', 1, 1, 110, '');
INSERT INTO `we_auth_rule` VALUES (114, 'Manage/Block/del', '删除', 1, 1, 110, '');
INSERT INTO `we_auth_rule` VALUES (115, 'Manage/Abc', '广告管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (116, 'Manage/Abc/index', '广告位列表', 1, 1, 115, '');
INSERT INTO `we_auth_rule` VALUES (117, 'Manage/Abc/add', '添加广告位', 1, 1, 115, '');
INSERT INTO `we_auth_rule` VALUES (118, 'Manage/Abc/edit', '修改广告位', 1, 1, 115, '');
INSERT INTO `we_auth_rule` VALUES (119, 'Manage/Abc/del', '删除广告位', 1, 1, 115, '');
INSERT INTO `we_auth_rule` VALUES (120, 'Manage/Abc/getcode', '获取广告代码', 1, 1, 115, '');
INSERT INTO `we_auth_rule` VALUES (121, 'Manage/Abc/detail', '广告列表', 1, 1, 115, '');
INSERT INTO `we_auth_rule` VALUES (122, 'Manage/Abc/addDetail', '添加广告', 1, 1, 115, '');
INSERT INTO `we_auth_rule` VALUES (123, 'Manage/Abc/editDetail', '修改广告', 1, 1, 115, '');
INSERT INTO `we_auth_rule` VALUES (124, 'Manage/Abc/delDetail', '删除广告', 1, 1, 115, '');
INSERT INTO `we_auth_rule` VALUES (125, 'Manage/Abc/sort', '广告排序', 1, 1, 115, '');
INSERT INTO `we_auth_rule` VALUES (126, 'Manage/Special', '专题管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (127, 'Manage/Special/index', '列表', 1, 1, 126, '');
INSERT INTO `we_auth_rule` VALUES (128, 'Manage/Special/add', '添加', 1, 1, 126, '');
INSERT INTO `we_auth_rule` VALUES (129, 'Manage/Special/edit', '修改', 1, 1, 126, '');
INSERT INTO `we_auth_rule` VALUES (130, 'Manage/Special/del', '删除', 1, 1, 126, '');
INSERT INTO `we_auth_rule` VALUES (131, 'Manage/Special/trach', '回收站', 1, 1, 126, '');
INSERT INTO `we_auth_rule` VALUES (132, 'Manage/Special/restore', '还原', 1, 1, 126, '');
INSERT INTO `we_auth_rule` VALUES (133, 'Manage/Special/clear', '彻底删除', 1, 1, 126, '');
INSERT INTO `we_auth_rule` VALUES (134, 'Manage/Announce', '公告管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (135, 'Manage/Announce/index', '列表', 1, 1, 134, '');
INSERT INTO `we_auth_rule` VALUES (136, 'Manage/Announce/add', '添加', 1, 1, 134, '');
INSERT INTO `we_auth_rule` VALUES (137, 'Manage/Announce/edit', '修改', 1, 1, 134, '');
INSERT INTO `we_auth_rule` VALUES (138, 'Manage/Announce/del', '删除', 1, 1, 134, '');
INSERT INTO `we_auth_rule` VALUES (139, 'Manage/Link', '友情链接', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (140, 'Manage/Link/index', '列表', 1, 1, 139, '');
INSERT INTO `we_auth_rule` VALUES (141, 'Manage/Link/add', '添加', 1, 1, 139, '');
INSERT INTO `we_auth_rule` VALUES (142, 'Manage/Link/edit', '修改', 1, 1, 139, '');
INSERT INTO `we_auth_rule` VALUES (143, 'Manage/Link/del', '删除', 1, 1, 139, '');
INSERT INTO `we_auth_rule` VALUES (144, 'Manage/Guestbook', '留言本管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (145, 'Manage/Guestbook/index', '列表', 1, 1, 144, '');
INSERT INTO `we_auth_rule` VALUES (146, 'Manage/Guestbook/add', '添加', 1, 1, 144, '');
INSERT INTO `we_auth_rule` VALUES (147, 'Manage/Guestbook/reply', '回复', 1, 1, 144, '');
INSERT INTO `we_auth_rule` VALUES (148, 'Manage/Guestbook/del', '删除', 1, 1, 144, '');
INSERT INTO `we_auth_rule` VALUES (149, 'Manage/Comment', '评论管理', 1, 1, 0, '');
INSERT INTO `we_auth_rule` VALUES (150, 'Manage/Comment/index', '列表', 1, 1, 149, '');
INSERT INTO `we_auth_rule` VALUES (151, 'Manage/Comment/edit', '编辑', 1, 1, 149, '');
INSERT INTO `we_auth_rule` VALUES (152, 'Manage/Comment/del', '删除', 1, 1, 149, '');
INSERT INTO `we_auth_rule` VALUES (153, 'Manage/System/index', '配置项管理', 1, 1, 36, '');
INSERT INTO `we_auth_rule` VALUES (154, 'Manage/System/add', '添加配置项', 1, 1, 36, '');
INSERT INTO `we_auth_rule` VALUES (155, 'Manage/System/edit', '修改配置项', 1, 1, 36, '');
INSERT INTO `we_auth_rule` VALUES (156, 'Manage/System/del', '删除配置项', 1, 1, 36, '');
INSERT INTO `we_auth_rule` VALUES (157, 'Manage/System/sort', '配置项排序', 1, 1, 36, '');
INSERT INTO `we_auth_rule` VALUES (158, 'Manage/Auth/categoryAccess', '职位栏目权限', 1, 1, 17, '');
INSERT INTO `we_auth_rule` VALUES (159, 'Manage/Membergroup/categoryAccess', '会员组栏目权限', 1, 1, 50, '');
COMMIT;

-- ----------------------------
-- Table structure for we_category
-- ----------------------------
DROP TABLE IF EXISTS `we_category`;
CREATE TABLE `we_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目分类名称',
  `ename` varchar(200) NOT NULL DEFAULT '' COMMENT '别名',
  `cat_pic` varchar(150) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属模型',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类别',
  `seo_title` varchar(50) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '关键字',
  `template_category` varchar(60) NOT NULL DEFAULT '',
  `template_list` varchar(60) NOT NULL DEFAULT '',
  `template_show` varchar(60) NOT NULL DEFAULT '',
  `style` varchar(70) DEFAULT '' COMMENT 'css样式class',
  `content` text COMMENT '内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示',
  `sort` smallint(6) NOT NULL DEFAULT '100' COMMENT '排序',
  `des` text,
  `eng` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `picture_urls` text,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='栏目分类表';

-- ----------------------------
-- Records of we_category
-- ----------------------------
BEGIN;
INSERT INTO `we_category` VALUES (1, '关于我们', 'about', '/uploads/img1/20200111/5e192b81161c3.jpg', 0, 2, 0, '', '', 'Vision and MissionGlobal Design Industry Organization (GDIO) aims to build up a global community platform for open colla', '', 'List_about.html', 'Show_article.html', '', '<div class=\"container\" id=\"vision\"><div class=\"vision clearfix\"><div class=\"vleft\"><img src=\"/uploads/img1/20200113/5e1bf34ee0a2c.jpg\" title=\"5e1bf34ee0a2c.jpg\" _src=\"/uploads/img1/20200113/5e1bf34ee0a2c.jpg\" alt=\"five.jpg\"/></div><div class=\"vright\"><div class=\"vbox\"><h3>学会性质</h3><p><br/></p><p style=\";line-height:150%;margin-top:0;margin-bottom:0;text-align:left;direction:ltr;unicode-bidi:embed\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"color: black; font-size: 16px;\">本学</span><span style=\"color: black; font-size: 16px;\">会是由全世界范围内从事工业设计活动的单位和个人自愿结成的国际性、学术性、非营利性社会组织。</span></span></p><p><br/><span style=\"font-family: arial, helvetica, sans-serif; font-size: 16px;\"></span></p><p><img src=\"/uploads/img1/20230418/643e620e5b68d.png\" title=\"643e620e5b68d.png\" _src=\"/uploads/img1/20230418/643e620e5b68d.png\" alt=\"关于我们.png\"/></p></div></div></div></div><div class=\"brief\" id=\"gdio\"><div class=\"container\"><div class=\"vision clearfix\"><div class=\"bright\"><h3>学会宗旨</h3><div class=\"vbox\"><p><br/></p><p><br/></p><p style=\";line-height:150%;margin-top:0;margin-bottom:0;text-align:left;direction:ltr;unicode-bidi:embed\"><span style=\"color: black; font-family: arial, helvetica, sans-serif; font-size: 16px;\">促进世界各国工业设计领域的学术研究、理论创新、工具研制、软件开发、标准制定、交流互鉴、人才培养、咨询服务、应用推广等，充分发挥工业设计对工业文明的先导作用，推动工业“创新、协调、绿色、开放、共享”可持续发展。</span></p><p style=\";line-height:150%;margin-top:0;margin-bottom:0;text-align:left;direction:ltr;unicode-bidi:embed\"><span style=\"color: black; font-family: arial, helvetica, sans-serif; font-size: 16px;\"><img src=\"/uploads/img1/20230418/643e61f77d904.png\" title=\"643e61f77d904.png\" _src=\"/uploads/img1/20230418/643e61f77d904.png\" alt=\"关于我们.png\"/></span></p><p><br/></p></div></div></div></div></div>', 1, 1, '', '', '', '[]');
INSERT INTO `we_category` VALUES (2, '学会动态', 'foucs', '/uploads/img1/20200330/5e81a6bb623b9.jpg', 0, 2, 0, '', '', '', '', 'List_about.html', 'Show_article.html', '', NULL, 1, 1, '', '', '/uploads/img1/20200330/5e81a7de6f5f1.png', NULL);
INSERT INTO `we_category` VALUES (3, '加入我们', 'join', '/uploads/img1/20200113/5e1bf7aa91262.jpg', 0, 2, 0, '', '', '', '', 'List_join.html', 'Show_article.html', '', NULL, 1, 1, '<p>In this respect, the conference advocates that international organizations, national governments, global design industries, and various industrial fields shall unite to promote the design industry as a powerful engine for economic and social development. Fully utilize and exert creativity, value, and leadership of design innovation, to increase industrial value, to cultivate industrial vitality, to spur industrial upgrading, and to shape future industrial structure. We pledge to build a global design industry organization, to revitalize the industry and create a better life, to promote prosperity and protect the earth. Together we will make our contributions to achieving high-quality, sustainable development!</p>', '', '/uploads/img1/20200113/5e1c01d827d27.png', NULL);
INSERT INTO `we_category` VALUES (4, '组织机构', 'events', '/uploads/img1/20200331/5e82b38a349d3.jpg', 0, 2, 0, '', '', '', '', 'List_about.html', 'Show_article.html', '', '', 1, 1, '', '', '/uploads/img1/20200331/5e82b5c6bf9e6.jpg', '[{\"url\":\"\\/uploads\\/img1\\/20200113\\/5e1bcaa84fb41.jpg\",\"alt\":\"\"}]');
INSERT INTO `we_category` VALUES (5, '学会活动', 'investment', '/uploads/img1/20200114/5e1d2288a8fcc.jpg', 0, 2, 0, '', '', '“WIDA”是一个专注于优质项目，为初创企业获得投资资金的全球设计行业组织平台。', '', 'List_investment.html', 'Show_article.html', '', '<div class=\"container\"><div class=\"invert clearfix\"><div class=\"inleft\"><img src=\"/uploads/img1/20200114/5e1d2225e28e8.jpg\" title=\"5e1d2225e28e8.jpg\" _src=\"/uploads/img1/20200114/5e1d2225e28e8.jpg\" alt=\"invert.jpg\"/></div><div class=\"inright\"><p>Global Design Industry Organization “GDIO” is a platform to help innovative businesses seek cash capital and help investors seek to invest at the early stage. We strive to build a global connection between designers, entrepreneurs, and investors, with the goal of win-win cooperation.</p></div></div><div class=\"first clearfix\"><div class=\"lleft\"><div class=\"discrip\"><p>For entrepreneurs, we seek to provide innovative products and services in various fields, giving companies access to global innovation partners.<br/></p></div><h3 class=\"foren\">For <br/>entrepreneurs</h3><h3 class=\"foren\" style=\"white-space: normal;\"><br/></h3><p><br/></p></div><div class=\"lright\"><img src=\"/uploads/img1/20200115/5e1e8c8fad94d.png\" title=\"5e1e8c8fad94d.png\" _src=\"/uploads/img1/20200115/5e1e8c8fad94d.png\" alt=\"图2.png\"/></div></div><div class=\"second clearfix\"><div class=\"lright\"><img src=\"/uploads/img1/20200114/5e1d225e14c44.jpg\" title=\"5e1d225e14c44.jpg\" _src=\"/uploads/img1/20200114/5e1d225e14c44.jpg\" alt=\"investu2.jpg\"/></div><div class=\"lleft\"><div class=\"discrip\"><p>For investors, we seek to provide opportunities to help invest at an early stage.<br/></p><p><br/></p></div><h3 class=\"foren\">For investors<br/></h3></div></div><div class=\"third clearfix\"><div class=\"lleft\"><div class=\"discrip\"><p>For design institutions and independent designers, we seek to provide capital, enterprise management, supply chain integration, sales, legal, intellectual property, talents, industrial chain solutions, and other resources to help them transform to design entrepreneurs.</p></div><h3 class=\"foren\">For design<br/>institutions <br/>and independent designers</h3></div><p><img src=\"/uploads/img1/20200428/5ea78a1d7e785.png\" title=\"5ea78a1d7e785.png\" _src=\"/uploads/img1/20200428/5ea78a1d7e785.png\" alt=\"44.png\"/></p></div></div><div class=\"believe\"><div class=\"container\"><h3>We believe the establishment of GDIO will be building up the \r\nglobal community platform for open collaborations relying on a whole industry chain.</h3></div></div>', 1, 1, '', '', '/uploads/img1/20200114/5e1d22931c623.jpg', '[]');
INSERT INTO `we_category` VALUES (6, '对外交流与合作', 'resource', '/uploads/img1/20200114/5e1d22b0a175a.jpg', 0, 2, 0, '', '', 'WIDA致力于收集和汇集与工业设计和相关领域相关的资源', '', 'List_resource.html', 'Show_article.html', '', '<div class=\"resoulist\"><ul><li aos=\"fade-up\"><div class=\"resouright\"><div class=\"resoursub\"><div class=\"resouico\"><img src=\"/uploads/img1/20200113/5e1bd1bed5410.png\" title=\"5e1bd1bed5410.png\" _src=\"/uploads/img1/20200113/5e1bd1bed5410.png\" alt=\"reico01.png\"/><br/></div><h4>设计展示</h4></div><p>WIDA很荣幸能展示优秀的专业工业设计组织、设计师和设计大学的优秀作品，旨在吸引更多的企业家、投资者、制造商、技术提供商、设计师和智能、数据和信息领域的人整合资源，优势互补。</p></div></li><li aos=\"fade-up\"><p></p></li><li aos=\"fade-up\"><div class=\"resouright\"><div class=\"resoursub\"><div class=\"resouico\"><img src=\"/uploads/img1/20200113/5e1bcd87899e0.png\" title=\"5e1bcd87899e0.png\" _src=\"/uploads/img1/20200113/5e1bcd87899e0.png\" alt=\"reico02.png\"/><br/></div><h4>商务合作</h4></div><p>WIDA旨在为各行各业的企业家提供产品和服务创新计划，使企业能够与全球创新合作伙伴建立联系。同时，为设计机构和独立设计师提供企业管理、供应链整合、销售、投资、法律、知识产权、人才等资源的整体解决方案，帮助他们成为设计企业家，而不是简单的设计师。</p></div></li><li aos=\"fade-up\"><p></p></li><li aos=\"fade-up\"><div class=\"resouright\"><div class=\"resoursub\"><div class=\"resouico\"><img src=\"/uploads/img1/20200113/5e1bcd9b60d1d.png\" title=\"5e1bcd9b60d1d.png\" _src=\"/uploads/img1/20200113/5e1bcd9b60d1d.png\" alt=\"reico03.png\"/><br/></div><h4>人才平台&nbsp;</h4></div><p>无论你是想从世界领先的设计公司寻找机会，还是想找到有才华的设计师加入你的团队，GDIO工作委员会都会为你提供帮助。如果你有高度的创造性思维，我们偶尔也会提供实习机会，为有才华的人提供获得工作经验的机会。</p></div></li><li aos=\"fade-up\"><p></p></li><li aos=\"fade-up\"><div class=\"resouright\"><div class=\"resoursub\"><div class=\"resouico\"><img src=\"/uploads/img1/20200113/5e1bd205820eb.png\" _src=\"/uploads/img1/20200113/5e1bd205820eb.png\" title=\"5e1bd205820eb.png\" alt=\"reico04.png\"/></div><h4>合作驱动</h4></div><p>WIDA与国际组织、政府和全球设计行业一道，提出要全面推动设计行业成为经济社会发展的强大引擎，充分发挥设计创新的创造力、价值和导向作用，以设计培育产业新活力，为实现高质量可持续发展、创造美好生活贡献力量。</p></div></li></ul></div>', 1, 1, '<p>WIDA致力于收集和聚合工业设计及相关领域的相关资源，搭建设计产业合作创新平台，为全产业链提供解决方案，配置创新资源，促进经济高质量可持续发展。这些资源提供给公众和设计专业人士，旨在支持我们努力促进和分享工业设计驱动的创新知识，从而提高经济、社会、文化和环境生活质量，创造更美好的世界。</p>', '', '/uploads/img1/20200114/5e1d22baeb68b.jpg', '[]');
INSERT INTO `we_category` VALUES (7, '项目案例', 'news', '/uploads/img1/20200111/5e1927b82bd25.jpg', 0, 1, 0, '', '', '', '', 'List_article.html', 'Show_article.html', '', NULL, 1, 1, '', '', '/uploads/img1/20200113/5e1c00da7426b.png', NULL);
INSERT INTO `we_category` VALUES (8, '工作委员会', 'widc', '', 4, 1, 0, '', '', '', '', 'List_widc.html', 'Show_article.html', '', '2016年12月，首届世界工业设计大会隆重举行，来自世界各地的千余名设计精英前往杭州隆重庆祝。会议期间，举办了10多场创新论坛和近30场设计产业多边会谈，涵盖设计产业发展峰会、设计发展圆桌峰会、工业设计产业发展全国高端对话以及设计教育、设计产业、服务设计论坛等。大会发布了全球设计行动计划《良渚设计宣言》，倡导共同打造面向未来的设计生态，培育开放共享的设计文化，追求包容协调的设计发展，引导设计资本可持续发展，以国际眼光帮助设计人才。同时，大会发布了《2016中国工业设计产业发展报告》（绿皮书）。《绿皮书》全面展示了近年来工业设计行业的发展。会议期间，国际设计组织、国家设计协会、设计机构和设计机构签署了一揽子合作备忘录。', 1, 1, '<p>世界工业设计学会已经从社会渠道足额筹集到注册资金，并制定了完善的组织章程。\n在筹备期间组建了高素质、高学历、专业结构合理的专职工作团队。\n主要来自于中国工业设计协会和上海交通大学，梯队架构科学，年龄结构合理，普遍具备工业设计、趋势分析、行业研究、外语等领域的学习和工作经历，在对外交流、大型国际活动组织及机构管理方面具备较为丰富的工作经验，知识背景与学会专业要求契合。</p><p>第七届世界工业设计大会、世界工业设计学会首届理事会暨学术年会计划于2023年第三季度召开。</p>', '', '/uploads/img1/20200416/5e982dc3af443.png', NULL);
INSERT INTO `we_category` VALUES (9, '专业委员会', 'idwe', '', 4, 2, 0, '', '', 'As the world\'s first design industry expo organized by 40 countries, Industrial Design World Expo was grandly held d', '', 'List_idwe.html', 'Show_article.html', '', '<p><span style=\"white-space: nowrap;\">WIDA</span><span style=\"white-space: nowrap;\">是由全世界范围内从事工业设计活动的单位和个人自愿结成的国际性、学术性、非营利性社会组织。</span><span class=\"s1\" style=\"font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\">&nbsp;</span></p><p><span style=\"white-space: nowrap;\">在这个平台上，它向世界展示了最新的设计成果。作为世界上第一个由40个国家组织的设计产业博览会，</span></p><p><span style=\"white-space: nowrap;\">工业设计世界博览会在2019年世界工业设计大会期间在中国烟台隆重举行。来自60多个国际组织、200多</span></p><p><span style=\"white-space: nowrap;\">所知名大学和2000多家创新公司的代表和设计师齐聚北纬37°，融合了设计行业的创新元素，展示了创新</span></p><p><span style=\"white-space: nowrap;\">成果。它开启了全球设计行业的新时代，为全球设计行业搭建了枢纽，为设计行业创造了新的生态系统！</span><br/></p><p><br/></p><p><span style=\"white-space: nowrap;\">工业设计世博会展示了工业设计在产业创新方面的巨大成就，从消费升级到高端设备，从智慧城市到物联</span></p><p><span style=\"white-space: nowrap;\">网，从设计驱动到产业升级，从高校到世界500强企业，从独立设计师到优秀设计公司，从信息数据到软</span></p><p><span style=\"white-space: nowrap;\">件系统，从产业园区到创新平台，从文化艺术到消费升级，从风险投资到产业孵化，从乡村振兴到扶贫。。</span></p><p><span style=\"white-space: nowrap;\">。同时，它展示了中国工业设计从世界最大规模到世界领先水平的重大突破。工业设计踏上了新的百年征</span></p><p><span style=\"white-space: nowrap;\">程！</span></p><p><br/></p>', 1, 2, '<p>IDWE is an important international expo by GDIO. On this platform, it shows the latest design achievement to the world. As the world&#39;s first design industry expo organized by 40 countries, Industrial Design World Expo was grandly held during the 2019 World Industrial Design Conference in Yantai, China. Representatives and designers from more than 60 international organizations, over 200 well-known universities and more than 2,000 innovative companies gathered at 37° north latitude, integrating innovation elements of the design industry and displaying innovation achievements. It has opened a new era of the global design industry, built a hub for the global design industry and created a new ecosystem for the design industry!</p><p></p><p>Industrial Design World Expo has displayed the great achievements of industrial design in terms of industrial innovation, from consumption upgrading to high-end equipment, from smart city to IoT, from design-driven to industrial upgrades, from colleges and universities to the world&#39;s Top 500 enterprises, from independent designers to outstanding design companies, from information data to software systems, from industrial parks to innovation platform, from culture and arts to consumption upgrade, from venture capital investment to industrial incubation, from rural revitalization to poverty alleviation ... At the same time, it has demonstrated a major breakthrough in Chinese industrial design from the world&#39;s largest scale to a world-leading level. Industrial design has stepped on a new 100-year journey!</p><p><br/></p>', '', '/uploads/img1/20200416/5e982de9198d0.png', '[{\"url\":\"\\/uploads\\/img1\\/20230418\\/643e620e5b68d.png\",\"alt\":\"\"}]');
INSERT INTO `we_category` VALUES (44, 's1', 's1', '/uploads/img1/20200423/5ea11c5e162f0.jpg', 16, 1, 0, '', '', '', '', 'List_article.html', 'Show_article.html', '', NULL, 1, 1, '', '', '', NULL);
INSERT INTO `we_category` VALUES (10, '国家/区域委员会', 'tia', '', 4, 2, 0, '', '', '', '', 'List_tia.html', 'Show_article.html', '', '', 1, 4, '<p>GDIO will continue to promote excellent industrial design works to the world based on TIA Awards. Top Innovation Award (TIA) can be traced back to the &quot;National Evaluation on Excellent Product Design&quot; organized by China Industrial Design Association in 1980. The last 37 years have witnessed the industrial design award scheme of China becoming an international award. TIA gives priority to the design power that makes outstanding contributions to the sustainable development of the world.</p>', '', '/uploads/img1/20200416/5e982df70a961.png', '[]');
INSERT INTO `we_category` VALUES (11, '世界工业设计大会', 'leading', '', 5, 1, 0, '', '', 'Shandong Design Leading Talents Training Program aims to cultivate innovators and managers who can better understand the', '', 'List_visitor.html', 'Show_article.html', '', '<p>Shandong Design Leading Talents Training Program aims to cultivate innovators and managers who can better understand the design and industry by new concepts, new models, and new ideas.</p><p>Based on the development environment and characteristics of local industries, more targeted, effective, and forward-looking training courses are customized for entrepreneurs. It can develop mainstay for enterprises transformation and upgrading and create new opportunities for collaborative innovation development between enterprises. Now it has been successfully held for two sessions, having trained hundreds of innovative entrepreneurs and provided innovative talents for the vigorous development of the regional economy.</p><p><img src=\"/uploads/img1/20200113/5e1be3b8e7b46.jpg\" title=\"5e1be3b8e7b46.jpg\" _src=\"/uploads/img1/20200113/5e1be3b8e7b46.jpg\" alt=\"ntu02.jpg\"/></p>', 1, 5, '', '', '', '[]');
INSERT INTO `we_category` VALUES (12, 'INDUSTRIAL VISIT', 'visit', '', 4, 1, 0, '', '', '', '', 'List_visitor.html', 'Show_article.html', '', NULL, 4, 7, '', '', '', NULL);
INSERT INTO `we_category` VALUES (13, 'SINO-GERMAN EXPERT CONMITTEE', 'conmittee', '', 0, 2, 0, '', '', 'Sino-German Industrial Design Center is responsible for integrating international and domestic design resources and supp', '', 'List_eventspage.html', 'Show_article.html', '', '<p></p><p><img src=\"/uploads/img1/20200115/5e1edc6db7bc7.png\" title=\"5e1edc6db7bc7.png\" _src=\"/uploads/img1/20200115/5e1edc6db7bc7.png\" alt=\"001.png\"/></p><p>Sino-German Industrial Design Center is responsible for integrating international and domestic design resources and supporting the development of domestic industrial design. In the communication and cooperation with enterprises, the support based on industrial design has been unable to meet the needs of the development of domestic enterprises. Therefore, an expert committee has been set up under the Sino-German Industrial Design Center to integrate all kinds of international expert resources in various industries to provide all-round support in terms of technology, strategy, talent, design for Yantai and all Chinese enterprises. European industry has entered the 4.0 era, especially in Germany, which has aspects incomparable advantages in automotive and accessories, machinery manufacturing, chemical and pharmaceutical, electronic and electrical appliances, renewable energy and other over other countries.</p><p>In March 2019, Expert Committee of Sino-German Industrial Design Center was formally established.</p><div class=\"eventlink\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"http://www.sgcidesign.com/\" target=\"_blank\">SINO-GERMAN EXPERT</a></div>', 0, 8, '', '', '', '[]');
INSERT INTO `we_category` VALUES (14, 'PREVIOUS EVENTS', 'previous', '', 4, 1, 0, '', '', '', '', 'List_visitor.html', 'Show_article.html', '', NULL, 4, 9, '', '', '', NULL);
INSERT INTO `we_category` VALUES (15, '教育培训', 'education', '', 2, 2, 0, '', '', '设计产业发展的核心基础是人才的培养。', '', 'List_education.html', 'Show_article.html', '', '我们提供教育项目和服务，以确保学生、设计师和企业家的成长。\n\n\n\n·提供人才培训课程\n\n\n\n·培养设计人才', 1, 1, '<p>我们提供教育项目和服务，以确保学生、设计师和企业家的成长：\n</p><p>\n·提供人才培训课程\n</p><p>\n·培养设计人才</p>', '', '/uploads/img1/20200110/5e18383d5d9a0.png', '[]');
INSERT INTO `we_category` VALUES (16, '解决方案', 'solution', '/uploads/img1/20200113/5e1c16708455b.png', 2, 2, 0, '', '', 'GDIO通过提供全产业链解决方案，帮助设计师成为设计企业家。我们的目标是建立一个机械', '', 'List_solution1.html', 'Show_article.html', '', '<p>GDIO helps designers become design entrepreneurs by providing a whole industry chain solution. We help designers become design entrepreneurs and help entrepreneurs gain innovative design ability. We aim to build up a mechanism to involve as many professionals in different fields as possible, including entrepreneurs, investors, manufacturers, technology providers, designers, and professionals in various fields. By integrating these resources, we are committed to providing whole industry chain solutions and promoting a win-win collaboration. &nbsp;</p><p>Main services and solutions:<br/>·enterprise management<br/>·supply chain integration<br/>·IP protection<br/>·marketing<br/></p>', 1, 1, '<p>WIDA通过提供全产业链解决方案，帮助设计师成为设计企业家，包括：\r\n</p><p>·企业管理</p><p>·供应链整合n</p>', '', '/uploads/img1/20200113/5e1c18624e574.png', '[]');
INSERT INTO `we_category` VALUES (17, '合作共赢', 'Cooperation', '/uploads/img1/20200113/5e1c16a875fd1.png', 2, 2, 0, '', '', 'GDIO works to build the bridge not only within the design field but also between relevant industries. It is not only a p', '', 'List_platform.html', 'Show_article.html', '', '<p>GDIO is committed to facilitating cooperation amongst countries, institutions, enterprises, and designers. It works to build the bridge not only within the design field but also between relevant industries. It is not only a platform for designers. Most importantly, it is a networking platform of the design industry that connects the cooperation and exchange between the design field and new technologies. Since the first World Industrial Design Conference was successfully held, we have reached cooperation with more than 20 countries, yielding many significant projects.</p><p><img src=\"/uploads/img1/20200409/5e8e797fcaa67.jpg\" title=\"5e8e797fcaa67.jpg\" _src=\"/uploads/img1/20200409/5e8e797fcaa67.jpg\" alt=\"未标题-2.jpg\"/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, 1, '<p>GDIO致力于促进国家、机构、企业和设计师之间的合作：</p><p>·涉及尽可能多的资源</p><p>·促进交流与合作</p>', '', '/uploads/img1/20200113/5e1c1871bcb14.png', '[]');
INSERT INTO `we_category` VALUES (18, '信息共享', 'information', '/uploads/img1/20200113/5e1c16c7e22a7.png', 2, 2, 0, '', '', 'GDIO is dedicated to building the information network of the design industry, to help spread the newest ideas and ideolo', '', 'List_foucs.html', 'Show_article.html', '', '<p>GDIO is dedicated to building the information network of the design industry, to help spread the newest ideas and ideologies. We \r\nfocus to issue relevant industry standards and update the latest trends. We strive to be the guidance of design industry \r\ndevelopment.</p><p>·issue relevant industry standards<br/>·update the latest trends<br/></p>', 1, 1, '<p>致力于构建设计行业的信息网络：</p><p>·发布相关行业标准</p><p>·更新最新趋势</p>', '', '/uploads/img1/20200113/5e1c188001d4e.png', '[]');
INSERT INTO `we_category` VALUES (49, '《设计》', 'sheji', '', 48, 1, 0, '', '', '', '', 'List_article.html', 'Show_article.html', '', NULL, 1, 1, '', 'sheji', '', NULL);
INSERT INTO `we_category` VALUES (19, 'map', 'map', '/uploads/img1/20200111/5e1934410c0b4.jpg', 0, 2, 0, '', '', '', '', 'List_map.html', 'Show_article.html', '', NULL, 0, 1, '', '', '', NULL);
INSERT INTO `we_category` VALUES (20, 'Tia01', 'Tia01', '/uploads/img1/20200111/5e193f7a2b740.png', 10, 4, 0, '', '', '', '', 'List_picture.html', 'Show_picture.html', '', NULL, 1, 1, '', '', '', NULL);
INSERT INTO `we_category` VALUES (21, 'Tia02', 'Tia02', '/uploads/img1/20200113/5e1be062b3eb9.png', 10, 4, 0, '', '', '', '', 'List_about.html', 'Show_article.html', '', NULL, 1, 1, '', '', '', NULL);
INSERT INTO `we_category` VALUES (22, '学术活动', 'design', '', 5, 2, 0, '', '', '扶贫设计是在2018年世界工业设计大会上启动的一个项目', '', 'List_design.html', 'Show_article.html', '', '<p><span style=\"white-space: nowrap;\">WIDA一直专注于贫困地区，试图通过工业设计来提高产品质量，让越来越多的贫困人口受益。扶贫设计</span></p><p><span style=\"white-space: nowrap;\">是在2018年世界工业设计大会上启动的一个项目。建议充分致力于利用设计、创造力和创新的力量来减</span></p><p><span style=\"white-space: nowrap;\">轻贫困，并实现工发组织的可持续发展目标。为了产生影响，WIDA委员会、工发组织和工信部共同发起</span></p><p><span style=\"white-space: nowrap;\">了“扶贫设计倡议”倡议，呼吁全球工业设计界采取联合行动。</span></p><p><span style=\"white-space: nowrap;\"><br/></span></p><p><span style=\"white-space: nowrap;\"><br/></span></p><p><span style=\"white-space: nowrap;\"><br/></span></p><p><span style=\"white-space: nowrap;\">目前，设计扶贫工作组在中国贫困地区开展了一系列主题活动，并推出了许多产品和方案，以设计的力量</span></p><p><span style=\"white-space: nowrap;\">帮助消除贫困。特别是建立了一个扶贫设计的在线公益平台，以发挥更广泛的影响。</span></p><p><img src=\"/uploads/img1/20200306/5e61d88cd33f0.jpg\" title=\"5e61d88cd33f0.jpg\" _src=\"/uploads/img1/20200306/5e61d88cd33f0.jpg\" alt=\"20的副本.jpg\"/></p><p><img src=\"/uploads/img1/20200428/5ea788fbb9bc3.jpg\" title=\"5ea788fbb9bc3.jpg\" _src=\"/uploads/img1/20200428/5ea788fbb9bc3.jpg\" alt=\"1111.jpg\"/></p>', 1, 6, '<p></p><p style=\"margin: 0 0 10px;text-align: justify;font-size: 14px;font-family: Calibri;white-space: normal;line-height: 21px\"><span style=\"font-size: 19px;line-height: 28px;font-family: &#39;Times New Roman&#39;\">Prof. Dr. Yuan Xiaowei, Vice Chairman of Sino-German Industrial Design Expert Committee and Mathis Heller, DeTao Master of Automotive &amp; Industrial Design came to Shandong Province to visit some enterprises in Yantai, Zibo, and Weifang for <a name=\"OLE_LINK12\"></a><a name=\"OLE_LINK11\"></a>in-depth and <a name=\"OLE_LINK14\"></a><a name=\"OLE_LINK13\"></a>multidimensional investigation and research. This visit aims to provide <a name=\"OLE_LINK4\"></a><a name=\"OLE_LINK3\"></a>strategic consultations and credible solutions on the brand strategy, design services, technical support, and talent<a name=\"OLE_LINK2\"></a><a name=\"OLE_LINK1\"></a> training, and work on industrial cooperation and docking.</span></p><p style=\"margin: 0 0 10px;text-align: justify;font-size: 14px;font-family: Calibri;white-space: normal;line-height: 21px\"><span style=\"font-size: 19px;line-height: 28px;font-family: &#39;Times New Roman&#39;\">During this visit, <a name=\"OLE_LINK19\"></a><a name=\"OLE_LINK10\"></a><a name=\"OLE_LINK9\"></a>Mathis Heller went to Weichai<a name=\"OLE_LINK8\"></a><a name=\"OLE_LINK7\"></a><a name=\"OLE_LINK6\"></a><a name=\"OLE_LINK5\"></a> which is a multi-field and multi-industry international group and had a good understanding of <a name=\"OLE_LINK22\"></a><a name=\"OLE_LINK21\"></a>Weichai&#39;s</span><span style=\"font-size: 19px;line-height: 28px;font-family: &#39;Times New Roman&#39;\"> six business segments of powertrain, commercial vehicle, construction machinery, intelligent logistics, luxury yacht, and finance &amp; after-services. As Weichai pays high attention to science and technology innovation, both parties reached a high degree of consensus: with the help of industrial design, promoting the upgrading of the technology, sharing global technical resources, strengthening business collaboration and cultural exchanges, and <a name=\"OLE_LINK16\"></a><a name=\"OLE_LINK15\"></a>helping Shandong equipment to upgrade to face the high-end and make greater contributions to the old and new growth driver replacement and the revitalization of the equipment manufacturing industry in China.</span></p><p style=\"margin: 0 0 10px;text-align: justify;font-size: 14px;font-family: Calibri;white-space: normal;line-height: 21px\"><span style=\"font-size: 19px;line-height: 28px;font-family: &#39;Times New Roman&#39;\">On Mathis Heller’s trip, Weichai highly recognized the results of the meeting between both parties and hope <a name=\"OLE_LINK18\"></a><a name=\"OLE_LINK17\"></a>for further cooperation and win the future together.</span></p><p><br/></p>', '', '', '[]');
INSERT INTO `we_category` VALUES (35, 'Wenhua Tea', 'WenhuaxTea', '/uploads/img1/20200211/5e425c01554c9.jpg', 22, 2, 0, '', '', '  【NAPA Coffee】', '', 'List_eventspage.html', 'Show_article.html', '', '<p>Napa coffee beans are sourced from farms in Puer county within China’s Yunnan province. Traditionally famous for its tea products, the addition of coffee plantations has helped local farmers make sustainable income throughout the year.</p>', 0, 1, '', '', '', '[]');
INSERT INTO `we_category` VALUES (24, 'WEDC', 'wedc', '', 5, 1, 0, '', '', '', '', 'List_widc.html', 'Show_article.html', '', NULL, 4, 3, '', '', '', NULL);
INSERT INTO `we_category` VALUES (25, 'Open University of Design', 'OpenxUniversityxofxDesign', '/uploads/img1/20200209/5e3fd1eb40f22.jpg', 15, 2, 0, '', '', 'Open University of Design', '', 'List_foucs.html', 'Show_article.html', '', '<p></p><h3>OPEN UNIVERSITY OF DESIGN</h3><p></p><p><img src=\"/uploads/img1/20200209/5e3fe89fc55dc.jpg\" title=\"5e3fe89fc55dc.jpg\" _src=\"/uploads/img1/20200209/5e3fe89fc55dc.jpg\" alt=\"5cef9cea87529.jpg\"/></p><p>The Open University of Design is an open platform of talent education jointly established by many global design universities which are united by CIDA. It devotes to gathering global design wisdom, breaking barriers, integrating resources, building multi-party collaborative and cooperative innovation talents cultivation system. \r\nUp to now, 8 universities have joined, including Eindhoven University of Technology, Zhejiang University, Southeast University, Jiangsu University, Jiangnan University, Hubei University of Technology, Nanjing Institute of Art, China University of Metrology, etc!</p><p><img src=\"/uploads/img1/20200306/5e61ce9552e6f.png\" title=\"5e61ce9552e6f.png\" _src=\"/uploads/img1/20200306/5e61ce9552e6f.png\" alt=\"0002.png\"/></p><p><img src=\"/uploads/img1/20200306/5e61cf59d78fa.png\" title=\"5e61cf59d78fa.png\" _src=\"/uploads/img1/20200306/5e61cf59d78fa.png\" alt=\"003.png\"/></p>', 0, 1, '', '', '', '[]');
INSERT INTO `we_category` VALUES (26, 'Unified Innovation University', 'unified', '/uploads/img1/20200209/5e3fd2022448a.jpg', 15, 2, 0, '', '', 'UNFINED INNOVATION UNIVERSITY OF INDUSTRIAL DESIGNChina Unified Innovation University of Industrial Design was co-founde', '', 'List_foucs.html', 'Show_article.html', '', '<h3>UNFINED INNOVATION UNIVERSITY OF INDUSTRIAL DESIGN</h3><p></p><p>China Unified Innovation University of Industrial Design was co-founded by famous universities and enterprises from home and abroad at the opening ceremony of 2019 World Industrial Design Conference. The university aims to integrate both education and industry to create an innovative training model. It will have a qualification framework covering bachelor, master and PhD degrees. And it will cover many disciplinaries including mechanical engineering, biotechnology, architecture and space, intelligent control, data and software, branding, fashion, materials and crafts, creative culture, rural regeneration and tourism.</p><p><img src=\"/uploads/img1/20200209/5e3fed5077763.jpg\" title=\"5e3fed5077763.jpg\" _src=\"/uploads/img1/20200209/5e3fed5077763.jpg\" alt=\"1.jpg\"/></p><p>China Unified Innovation University of Industrial Design will have a mentor team comprising of scientists, design masters, entrepreneurs, and investors. This team will provide multi-dimensional, wide-ranging and high-level resources. &nbsp;The team will be further augmented with invited advisors from academia and industry from both home and abroad, which will also help bring in global talent and innovative ideas.</p><p><img src=\"/uploads/img1/20200209/5e3fed5b3082d.jpg\" title=\"5e3fed5b3082d.jpg\" _src=\"/uploads/img1/20200209/5e3fed5b3082d.jpg\" alt=\"2.jpg\"/></p><p>The founding members are as follows:\r\nChina Industrial Design Association, Peking University, Zhejiang University, Shanghai Jiao Tong University, Tongji University, Shandong University, Southeast University, Northwestern Polytechnical University, Beijing Institute of Technology, Ocean University of China, Nanchang University, Jiangnan University, Beijing Forestry University, Yanshan University, Jiangsu University, Xi&#39;an Jiaotong-Liverpool University, Lanzhou University of Technology, Henan University of Technology, Beijing Institute of Fashion Technology, Nanjing Academy of the Arts, Shandong University of Art&amp;Design, Ludong University, Shih Chien University, Macau University of Science and Technology, Imperial College London, National University of Singapore, The Queensland University of Technology, University of Nottingham, Eindhoven University of Technology, Politecnico di Milano (Polytechnic University of Milan), Technische Universität Ilmenau, The University of Cape Town, Burapha University, Sripatum University, University of Computer Studies, Yangon, University of Mandalay, Ajeenkya Di Patil University, Beijing Institute of Collaborative Innovation, CRRC, COMAC, Haier Group, Tencent Group, Hisense Group, Zhejiang Overseas High-level Telents Innovation Park, Autodesk, RAL gGmbH</p><p>&nbsp;Welcome to join China Unified Innovation University of Industrial Design!</p>', 0, 1, '', '', '', '[]');
INSERT INTO `we_category` VALUES (27, 'Wanqu Open University of Design', 'wanqu', '/uploads/img1/20200306/5e61f103ef46e.png', 15, 2, 0, '', '', 'WANQU OPEN UNIVERSITY OF DESIGNWanqu Open University of Design is a cross-disciplinary, cross-cultural, and cross-indust', '', 'List_foucs.html', 'Show_article.html', '', '<p></p><h3>WANQU OPEN UNIVERSITY OF DESIGN</h3><p><br/></p><p></p><p><img src=\"/uploads/img1/20200306/5e61f6c68b590.jpg\" title=\"5e61f6c68b590.jpg\" _src=\"/uploads/img1/20200306/5e61f6c68b590.jpg\" alt=\"未标题-2.jpg\"/></p><p></p><p>Wanqu Open University of Design is a cross-disciplinary, cross-cultural, and cross-industry university alliance. It is co-founded by 11 well-known universities, aiming at cultivating postgraduates and doctoral students. This project was officially launched at the signing ceremony of the Wanqu Open University of Design in the World Eco-design Conference.</p><p><img src=\"/uploads/img1/20200306/5e61f6da97e28.jpg\" title=\"5e61f6da97e28.jpg\" _src=\"/uploads/img1/20200306/5e61f6da97e28.jpg\" alt=\"替换：湾区设计开放大学校图.jpg\"/></p><p>The idea is to gather education resources and to encourage students to collaborate across disciplines. It is planned to nurture 200 postgraduates every year. At the end of November in 2018, the first batch of postgraduates had enrolled in the university to have their classes.</p><p><img src=\"/uploads/img1/20200209/5e3feefb80b8c.jpg\" title=\"5e3feefb80b8c.jpg\" _src=\"/uploads/img1/20200209/5e3feefb80b8c.jpg\" alt=\"3.jpg\"/></p><p>Wanqu Open University of Design takes the initiative to cultivate talents for the design industry and help the student grow to an interdisciplinary talent.</p>', 0, 1, '', '', '', '[]');
INSERT INTO `we_category` VALUES (29, 'Sino-Italy Design Center', 'sino', '/uploads/img1/20200211/5e424bd0efad3.png', 17, 2, 0, '', '', 'Sino-Italy Design Center', '', 'List_foucs.html', 'Show_article.html', '', '<h3>SINO-ITALY DESIGN CENTER</h3><p></p><p><img src=\"/uploads/img1/20200211/5e424d5e81848.jpg\" title=\"5e424d5e81848.jpg\" _src=\"/uploads/img1/20200211/5e424d5e81848.jpg\" alt=\"111.jpg\"/></p><p>In June 2015, China-Italy Industrial Design Strategic Cooperation and the First International Collaboration Project Signing Ceremony were held in Milan, Italy by CIDA, China Industrial Design Association, and ADI, Italian Design Association.&nbsp; &nbsp; &nbsp;</p><p><img src=\"/uploads/img1/20200211/5e424b6fcc074.jpg\" title=\"5e424b6fcc074.jpg\" _src=\"/uploads/img1/20200211/5e424b6fcc074.jpg\" alt=\"22.jpg\"/></p><p>The two associations had reached an agreement and launched the collaborative initiative to co-found “Sino-Italy Design Center”, which covered intellectual property, ADI Compasso d&#39;Oro Award, talents training, design consulting, and promotion of design. This project is under the mission to promote cooperation between countries in the design industry.</p><p><img src=\"/uploads/img1/20200211/5e424d70a8bf3.jpg\" title=\"5e424d70a8bf3.jpg\" _src=\"/uploads/img1/20200211/5e424d70a8bf3.jpg\" alt=\"333.jpg\"/></p><p>Relevant preparation and operation are still proceeding in order. <br/></p>', 1, 2, '', '', '', '[]');
INSERT INTO `we_category` VALUES (30, 'Sino-German industrial design', 'German', '/uploads/img1/20200210/5e40e37bf33d0.jpg', 17, 2, 0, '', '', 'Sino-German Industrial Design Center ', '', 'List_foucs.html', 'Show_article.html', '', '<h3>SINO-GERMAN INDUSTRIAL DESIGN CENTER</h3><p></p><p>On June 23, 2015, on behalf of the two national industrial design associations, Liu Ning of China Industrial Design Association and Dr. Andrej Kupet of German Design Council signed the “China-Germany Industrial Design Strategic Cooperation Agreement” in Frankfurt, Germany, making Sino-German industrial design cooperation updated to national level.<br/></p><p><img src=\"/uploads/img1/20200210/5e40e5baeb019.jpg\" title=\"5e40e5baeb019.jpg\" _src=\"/uploads/img1/20200210/5e40e5baeb019.jpg\" alt=\"1.jpg\"/></p><p>Since 2015, China Industrial Design Association (CIDA) signed agreements with UNIDO, German Design Council, Service Design Network, Associazione per il Disegno Industriale, TUV NORD, and other organizations, which include jointly establishing the Sino-German Industrial Design Center (CGC) and constructing Industry 4.0 design standard platform.</p><p><img src=\"/uploads/img1/20200210/5e40e9b32a714.jpg\" title=\"5e40e9b32a714.jpg\" _src=\"/uploads/img1/20200210/5e40e9b32a714.jpg\" alt=\"234_01.jpg\"/></p><p>In November 2017, under the guidance of Ministry of Industry and Information Technology (MIIT), leaders of MIIT, Shandong Province, and China Industrial Design Association (CIDA) together visited Germany for exchanges and investigation to implement the establishment of Sino-German Industrial Design Center (CGC) in an all-around way.</p><p><img src=\"/uploads/img1/20200210/5e40e9e3ac756.jpg\" title=\"5e40e9e3ac756.jpg\" _src=\"/uploads/img1/20200210/5e40e9e3ac756.jpg\" alt=\"56.jpg\"/><br/></p><p><img src=\"/uploads/img1/20200210/5e40eb3eef992.jpg\" title=\"5e40eb3eef992.jpg\" _src=\"/uploads/img1/20200210/5e40eb3eef992.jpg\" alt=\"78_01.jpg\"/></p><p>On July 18, 2018, Sino-German Industrial Design Center (CGC) was formally established in Yantai City, Shandong Province. Representatives from the Chinese Government, People`s Government of Shandong Province, Yantai Municipal People&#39;s Government, China Industrial Design Association (CIDA), German Design Council, and the Service Design Network attended the establishment ceremony.</p><p><img src=\"/uploads/img1/20200210/5e40e9f1265c3.jpg\" title=\"5e40e9f1265c3.jpg\" _src=\"/uploads/img1/20200210/5e40e9f1265c3.jpg\" alt=\"9_01.jpg\"/></p><p>On March 29, 2019, Sino-German Industrial Design Center (CGC) was unveiled and its Expert Committee was officially established in Vienna during the Press Conference of 2019 World Industrial Design Conference. The first group of members of the Expert Committee consists of international experts from nearly 20 industries. Heidi Kroemker, Director of the Institute for Media Technology of Technology University Ilmenau, Germany, was appointed as the chairman of the Expert Committee.</p><p><img src=\"/uploads/img1/20200210/5e40ea15c97cc.jpg\" title=\"5e40ea15c97cc.jpg\" _src=\"/uploads/img1/20200210/5e40ea15c97cc.jpg\" alt=\"10_01.jpg\"/></p><p><img src=\"/uploads/img1/20200210/5e40ea2973eac.jpg\" title=\"5e40ea2973eac.jpg\" _src=\"/uploads/img1/20200210/5e40ea2973eac.jpg\" alt=\"11_01.jpg\"/></p><p>Sino-German Industrial Design Center (CGC) is committed to the exchange and cooperation in design innovation between China and Germany. It extensively links the universities, design institutions, enterprises, and creative personal designers of the two countries. It focuses on design theory research, social development trend research, new product design, talent training, intellectual property protection, the transformation of scientific and technological achievements, the innovation of social services and business models, and ecological environment protection. It will exert every effort to contribute to the high-quality and sustainable development of the global economy and society.</p>', 1, 1, '', '', '', '[]');
INSERT INTO `we_category` VALUES (31, 'Sino-Japan Design Center', 'SinoJapan', '/uploads/img1/20200210/5e41251e4b031.jpg', 17, 2, 0, '', '', 'Sino-Japan Design Center\r\n', '', 'List_education.html', 'Show_article.html', '', '<h3>SINO-JAPAN DESIGN CENTER</h3><p></p><p><img src=\"/uploads/img1/20200210/5e40ee044a034.jpg\" title=\"5e40ee044a034.jpg\" _src=\"/uploads/img1/20200210/5e40ee044a034.jpg\" alt=\"222.jpg\"/></p><p>Shigekazu Fukunaga, Commerce Counsellor of the Embassy of Japan in China, Kazuo Tanaka, CEO of GK Design Group and President of Japan Industrial Designers Association, and Wang Da, CEO of Tokyo Design Co., Ltd, together visited the Sino-German Industrial Design Center. China Industrial Design Association and Japan Industrial Design Association reached an agreement on the cooperation between China and Japan in the design industry, to jointly develop global design industry resources, lead the industrial development with design, assist the two-way communication between China and Japan in design, and open a new height of design cooperation between China and Japan.</p><p><img src=\"/uploads/img1/20200210/5e40ee1776188.jpg\" title=\"5e40ee1776188.jpg\" _src=\"/uploads/img1/20200210/5e40ee1776188.jpg\" alt=\"111.jpg\"/></p>', 1, 1, '', '', '', '[]');
INSERT INTO `we_category` VALUES (32, 'Sino-Swiss Design Center', 'SinoxSwissxDesignxCenter', '/uploads/img1/20200210/5e412b2768537.jpg', 17, 2, 0, '', '', 'Sino-Swiss Design Center\r\n', '', 'List_education.html', 'Show_article.html', '', '<h3>SINO-SWISS DESIGN CENTER</h3><p></p><p>Sino-Swiss low-carbon city cooperation forum and Eco-design achievement Conference was held in Ecological Design Town during the First World Eco-Design Conference (WEDC)</p><p><img src=\"/uploads/img1/20200306/5e61d1482696e.jpg\" title=\"5e61d1482696e.jpg\" _src=\"/uploads/img1/20200306/5e61d1482696e.jpg\" alt=\"高清4.jpg\"/></p><p></p><p>Sino-Swiss low-carbon city cooperation project jointly launched by Guangzhou and Switzerland is an important measure for China to deepen reform, expand further opening up, and achieve the more inclusive and sustainable development by valuable experience and global wisdom. The cooperation results of the Sino-Swiss low-carbon city cooperation project were highly recognized by China Government, which extended low-carbon knowledge and technology, introduced low-carbon cases in Switzerland, released ecological design results, and brought a bright future of cooperation.</p><p><img src=\"/uploads/img1/20200306/5e61d1541dccf.jpg\" title=\"5e61d1541dccf.jpg\" _src=\"/uploads/img1/20200306/5e61d1541dccf.jpg\" alt=\"高清1.jpg\"/></p><p></p><p>In the forum, Mr. Dominic Sturm, President of Swiss Design association gave a speech to present the achievements of the Sino-Swiss low-carbon city cooperation project and shared its experiences and the lessons that his country has gained in the environmental protection.</p><p><img src=\"/uploads/img1/20200306/5e61d15e1713d.jpg\" title=\"5e61d15e1713d.jpg\" _src=\"/uploads/img1/20200306/5e61d15e1713d.jpg\" alt=\"高清2.jpg\"/></p><p>In the future, the concept of low carbon as well as ecological design, technology, and products will be promoted and applied extensively. The project will further lead to effective policy schemes for the transformation and upgrading of industrial clusters, and the improvement of environmental standards.</p>', 1, 1, '', '', '', '[]');
INSERT INTO `we_category` VALUES (33, 'Alzheimer’s Apparatus', 'Alzheimer', '/uploads/img1/20200516/5ebf9cda568bc.jpg', 16, 2, 0, '', '', 'Alzheimer’s Apparatus\r\n', '', 'List_education.html', 'Show_article.html', '', '<h3>ALZHEIMER&#39;S APPARATUS</h3><p></p><p>It is mainly composed of four parts：eeg simulator, neuron activator, synergistic therapeutic agent and conductive fluid. Suitable for mild and moderate dementia- alzheimer’s disease –vascular dementia.<br/></p><p><img src=\"/uploads/img1/20200210/5e40f39192fcf.jpg\" title=\"5e40f39192fcf.jpg\" _src=\"/uploads/img1/20200210/5e40f39192fcf.jpg\" alt=\"11.jpg\"/></p><p>Using endogenous neurotransmitter regulation technology and non-Interventional physical therapy, the therapeutic instrument can stimulate and restore the function of deep brain cholinergic neurons to secrete acetylcholine. <br/></p><p><img src=\"/uploads/img1/20200210/5e40f39c6b184.jpg\" title=\"5e40f39c6b184.jpg\" _src=\"/uploads/img1/20200210/5e40f39c6b184.jpg\" alt=\"33.jpg\"/></p><p>The product applies endogenous neurotransmitter regulation technology to induce weak induced current in the deep part of brain, and ACTS on the neurons in the key. At the same time, it also gives consideration to the simulation of the whole brain, interferes with and inhibits the occurrence and transmission of abnormal magnetoencephalography and electroencephalography, which can promote the recovery of brain function.&nbsp;</p><p><img src=\"/uploads/img1/20200210/5e40f3aee76bf.jpg\" title=\"5e40f3aee76bf.jpg\" _src=\"/uploads/img1/20200210/5e40f3aee76bf.jpg\" alt=\"22.jpg\"/>&nbsp;<br/></p>', 1, 2, '', '', '', '[]');
INSERT INTO `we_category` VALUES (34, 'Napa Superiore™', 'Napa', '/uploads/img1/20200516/5ebf9d0bdc0f7.jpg', 16, 2, 0, '', '', 'Napa Superiore™', '', 'List_education.html', 'Show_article.html', '', '<h3>NAPASUPERIORE™</h3><p></p><p>Napa Superiore™’ coffee beans are responsibly sourced from farms in Puer county within China’s Yunnan province. Traditionally famous for its tea products, the addition of coffee plantations has helped local farmers produce sustainable crops throughout the year. With all our growers paid directly to ensure fair market prices.</p><p><img src=\"/uploads/img1/20200214/5e463d93b8752.jpg\" title=\"5e463d93b8752.jpg\" _src=\"/uploads/img1/20200214/5e463d93b8752.jpg\" alt=\"12.jpg\"/></p><p>We have been developing these low fat, low acid, healthier coffee beans since 2012. The fat content of normal coffee beans has been significantly reduced to half with the enhanced natural sweetness. We carefully hand roast small batches of beans on a daily basis. This process produces an exquisite high-grade bean with a delightful aroma and enhanced natural sweetness. A lure for all coffee lovers…</p>', 1, 3, '', '', '', '[]');
INSERT INTO `we_category` VALUES (36, 'NAPA Coffee', 'NAPAxCoffee', '', 22, 2, 0, '', '', '', '', 'List_eventspage.html', 'Show_article.html', '', NULL, 0, 1, '', '', '', NULL);
INSERT INTO `we_category` VALUES (37, 'KWCW | Embroidery Bluetooth Sp', 'KWCWxxxEmbroideryxBluetoothxSpeake', '', 22, 2, 0, '', '', '', '', 'List_eventspage.html', 'Show_article.html', '', NULL, 0, 1, '', '', '', NULL);
INSERT INTO `we_category` VALUES (38, 'S3', 'S3', '/uploads/img1/20200516/5ebf9d273fa86.jpg', 16, 2, 0, '', '', '', '', 'List_article.html', 'Show_article.html', '', NULL, 1, 4, '', 'S3', '', NULL);
INSERT INTO `we_category` VALUES (40, 'IDWE1', 'IDWE11', '/uploads/img1/20200410/5e8fe88ab0735.jpg', 9, 1, 0, '', '', '', '', 'List_education.html', 'Show_article.html', '', NULL, 1, 1, '', '', '', NULL);
INSERT INTO `we_category` VALUES (41, 'IDWE2', 'IDWE22', '/uploads/img1/20200410/5e8fdd1f9fe77.jpg', 9, 1, 0, '', '', '', '', 'List_education.html', 'Show_article.html', '', NULL, 1, 1, '', '', '', NULL);
INSERT INTO `we_category` VALUES (42, 'IDWE3', 'IDWE33', '/uploads/img1/20200411/5e913e080e3d7.jpg', 9, 1, 0, '', '', '', '', 'List_education.html', 'Show_article.html', '', NULL, 1, 1, '', '', '', NULL);
INSERT INTO `we_category` VALUES (43, 'IDWE4', 'IDWE44', '/uploads/img1/20200516/5ebfa0fec15b8.jpg', 9, 1, 0, '', '', '', '', 'List_education.html', 'Show_article.html', '', NULL, 1, 1, '', '', '', NULL);
INSERT INTO `we_category` VALUES (47, '期刊', 'qikan', '', 0, 0, 0, '', '', '', '', '', '', '', NULL, 0, 1, NULL, '', '', NULL);
INSERT INTO `we_category` VALUES (48, '学会期刊', 'ceshi', '/uploads/img1/20230418/643e553fc11f6.jpg', 0, 1, 0, '', '', '', '', 'List_article.html', 'Show_article.html', '', NULL, 1, 1, '', 'ceshi', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for we_category_access
-- ----------------------------
DROP TABLE IF EXISTS `we_category_access`;
CREATE TABLE `we_category_access` (
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `role_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  KEY `catid` (`cat_id`),
  KEY `roleid` (`role_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_category_access
-- ----------------------------
BEGIN;
INSERT INTO `we_category_access` VALUES (1, 1, 1, 'clear');
INSERT INTO `we_category_access` VALUES (1, 1, 1, 'restore');
INSERT INTO `we_category_access` VALUES (1, 1, 1, 'trach');
INSERT INTO `we_category_access` VALUES (1, 1, 1, 'move');
INSERT INTO `we_category_access` VALUES (1, 1, 1, 'del');
INSERT INTO `we_category_access` VALUES (1, 1, 1, 'edit');
INSERT INTO `we_category_access` VALUES (1, 1, 1, 'add');
INSERT INTO `we_category_access` VALUES (1, 1, 1, 'index');
COMMIT;

-- ----------------------------
-- Table structure for we_comment
-- ----------------------------
DROP TABLE IF EXISTS `we_comment`;
CREATE TABLE `we_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `post_time` datetime NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `post_id` (`post_id`) USING BTREE,
  KEY `model_id` (`model_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_config
-- ----------------------------
DROP TABLE IF EXISTS `we_config`;
CREATE TABLE `we_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标识',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '说明',
  `t_value` varchar(150) NOT NULL DEFAULT '' COMMENT 'html元素类型',
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分组',
  `s_value` text COMMENT '值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type_id` (`type_id`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_config
-- ----------------------------
BEGIN;
INSERT INTO `we_config` VALUES (1, 'CFG_WEBNAME', '网站名称', '', '', 2, 1, 'WIDA', 0);
INSERT INTO `we_config` VALUES (2, 'CFG_WEBURL', '网站域名', '', '', 2, 1, 'http://www.gdio.org/', 0);
INSERT INTO `we_config` VALUES (3, 'CFG_WEBTITLE', '网站标题', '站点首页title(SEO)的设置', '', 2, 1, 'WIDA _ World Industrial Design Association', 0);
INSERT INTO `we_config` VALUES (4, 'CFG_KEYWORDS', '站点关键词', '', '', 2, 1, 'industrial design, industrial design organization, design innovation, wida, design industry', 0);
INSERT INTO `we_config` VALUES (5, 'CFG_DESCRIPTION', '站点描述', '', 'textarea', 3, 1, '是由全世界范围内从事工业设计活动的单位和个人自愿结成的国际性、学术性、非营利性社会组织。', 0);
INSERT INTO `we_config` VALUES (6, 'CFG_THEMESTYLE', '模板风格', '', 'select\r\n__CFG_THEMESTYLE__', 2, 1, 'default', 0);
INSERT INTO `we_config` VALUES (7, 'CFG_COOKIE_ENCODE', 'cookie加密码', '', '', 2, 1, 'FJ83XSYrR', 0);
INSERT INTO `we_config` VALUES (8, 'CFG_POWERBY', '网站版权信息', '', 'textarea', 3, 1, 'Copyright 2020 Global Design Industry Organization', 0);
INSERT INTO `we_config` VALUES (9, 'CFG_STATS', '网站统计', '', 'textarea', 3, 1, '<script type=\"text/javascript\">document.write(unescape(\"%3Cspan id=\'cnzz_stat_icon_1278909326\'%3E%3C/span%3E%3Cscript src=\'https://s9.cnzz.com/z_stat.php%3Fid%3D1278909326%26show%3Dpic\' type=\'text/javascript\'%3E%3C/script%3E\"));</script>', 0);
INSERT INTO `we_config` VALUES (10, 'CFG_BEIAN', '网站备案号', '', '', 2, 1, '', 0);
INSERT INTO `we_config` VALUES (11, 'CFG_ADDRESS', '联系地址', '', '', 2, 1, 'Address: 30F, East Tower, Chuangye Building, 69 Keji Avenue, High-tech Zone, Yantai, Shandong', 0);
INSERT INTO `we_config` VALUES (12, 'CFG_PHONE', '联系电话', '', '', 2, 1, '+86-535-8209019', 0);
INSERT INTO `we_config` VALUES (13, 'CFG_WEBSITE_CLOSE', '关闭网站', '', 'radio\r\n1:::是\r\n0:::否', 4, 2, '0', 0);
INSERT INTO `we_config` VALUES (14, 'CFG_WEBSITE_CLOSE_INFO', '关站提示', '', 'textarea', 3, 2, '站点维护中，请稍等一会...', 0);
INSERT INTO `we_config` VALUES (15, 'CFG_MOBILE_AUTO', '手机版开启', '', 'radio\r\n1:::是\r\n0:::否', 4, 2, '0', 1);
INSERT INTO `we_config` VALUES (16, 'CFG_EMAIL_FROM', '发件邮箱地址', '', '', 2, 3, 'internationalteam@163.com', 0);
INSERT INTO `we_config` VALUES (17, 'CFG_EMAIL_FROM_NAME', '发件人名称', '', '', 2, 3, 'GDIO', 0);
INSERT INTO `we_config` VALUES (18, 'CFG_EMAIL_HOST', 'STMP服务器', '', '', 2, 3, 'smtp.163.com', 0);
INSERT INTO `we_config` VALUES (19, 'CFG_EMAIL_PORT', '服务器端口', '', '', 1, 3, '25', 0);
INSERT INTO `we_config` VALUES (20, 'CFG_EMAIL_LOGINNAME', '邮箱帐号', '', '', 2, 3, 'internationalteam@163.com', 0);
INSERT INTO `we_config` VALUES (21, 'CFG_EMAIL_PASSWORD', '邮箱密码', '', '', 2, 3, 'widc2020', 0);
INSERT INTO `we_config` VALUES (22, 'CFG_BADWORD', '禁用词语', '', 'textarea', 3, 2, '艾滋病|中国共产党|111111111', 0);
INSERT INTO `we_config` VALUES (23, 'CFG_FEEDBACK_GUEST', '允许匿名评论', '', 'radio\r\n1:::是\r\n0:::否', 4, 2, '1', 0);
INSERT INTO `we_config` VALUES (24, 'CFG_MEMBER_OPEN', '开启会员功能', '', 'radio\r\n1:::是\r\n0:::否', 4, 5, '0', 0);
INSERT INTO `we_config` VALUES (25, 'CFG_MEMBER_VERIFYEMAIL', ' 开启邮件验证', '', 'radio\r\n1:::是\r\n0:::否', 4, 5, '0', 0);
INSERT INTO `we_config` VALUES (26, 'CFG_MEMBER_NOTALLOW', '禁止使用的昵称', '', 'textarea', 3, 5, 'www,bbs,ftp,mail,user,users,admin,administrator', 0);
INSERT INTO `we_config` VALUES (27, 'CFG_UPLOAD_MAXSIZE', '允许上传大小', 'KB', '', 1, 4, '35964525', 0);
INSERT INTO `we_config` VALUES (28, 'CFG_IMGTHUMB_SIZE', '缩略图组尺寸', '长X高，长X0(固定宽度)，一个尺寸一行，如：300X300 600X0', 'textarea', 5, 4, '300X300\r\n600X0', 0);
INSERT INTO `we_config` VALUES (29, 'CFG_IMGTHUMB_TYPE', '缩略图生成方式', '固定大小截取 ,原图等比例缩略', 'radio\r\n0:::原图等比例缩略\r\n1:::固定大小截取', 4, 4, '0', 0);
INSERT INTO `we_config` VALUES (30, 'CFG_CLICK_NUM_INIT', '文档点击数初始化', '', 'radio\r\n1:::固定\r\n0:::随机', 1, 6, '0', 0);
INSERT INTO `we_config` VALUES (31, 'CFG_UPLOAD_ROOTPATH', '上传根目录', '', '', 2, 4, './uploads/', 0);
INSERT INTO `we_config` VALUES (32, 'CFG_UPLOAD_FILE_EXT', '允许附件类型', '', 'textarea', 3, 4, 'jpg,gif,png,jpeg,txt,doc,docx,xls,ppt,zip,rar,mp3,pdf', 0);
INSERT INTO `we_config` VALUES (33, 'CFG_UPLOAD_IMG_EXT', '允许图片类型', '带缩略图的图片', '', 2, 4, 'jpg,gif,png,jpeg', 0);
INSERT INTO `we_config` VALUES (34, 'CFG_VERIFY_REGISTER', '开启注册验证码', '', 'radio\r\n1:::是\r\n0:::否', 4, 2, '0', 0);
INSERT INTO `we_config` VALUES (35, 'CFG_VERIFY_LOGIN', '开启登录验证码', '', 'radio\r\n1:::是\r\n0:::否', 4, 2, '0', 0);
INSERT INTO `we_config` VALUES (36, 'CFG_VERIFY_GUESTBOOK', '开启留言板验证码', '', 'radio\r\n1:::是\r\n0:::否', 4, 2, '0', 0);
INSERT INTO `we_config` VALUES (37, 'CFG_VERIFY_REVIEW', '开启评论验证码', '', 'radio\r\n1:::是\r\n0:::否', 4, 2, '0', 0);
INSERT INTO `we_config` VALUES (38, 'CFG_SQL_FILESIZE', 'sql文件大小', '备份数据库，值不可太大，否则会导致内存溢出备份、恢复失败，合理大小在512K~10M间，建议3M一卷。单位字节,5M=5*1024*1024=5242880', '', 1, 6, '5242880', 0);
INSERT INTO `we_config` VALUES (39, 'CFG_DOWNLOAD_HIDE', '隐藏下载地址', '', 'radio\r\n1:::是\r\n0:::否', 4, 4, '1', 0);
INSERT INTO `we_config` VALUES (40, 'CFG_MOBILE_THEMESTYLE', '手机模板风格', '', 'select\r\n__CFG_MOBILE_THEMESTYLE__', 2, 2, 'default', 1);
INSERT INTO `we_config` VALUES (41, 'HOME_URL_MODEL', 'URL模式', '', 'radio\r\n0:::普通模式\r\n1:::PATHINFO模式\r\n2:::REWRITE模式(需要URL_REWRITE支持)\r\n3:::兼容模式', 1, 900, '1', 0);
INSERT INTO `we_config` VALUES (42, 'HOME_URL_PATHINFO_DEPR', '参数分割符', '针对PATHINFO模式,默认为&quot;/&quot;,如改为&quot;-&quot;：http://www.xyhcms.com/index.php/List-index-id-1', '', 2, 900, '/', 0);
INSERT INTO `we_config` VALUES (43, 'HOME_URL_ROUTER_ON', '开启路由', '开启URL路由(路由规则不熟悉的不要乱改)', 'radio\r\n1:::是\r\n0:::否', 4, 900, '1', 0);
INSERT INTO `we_config` VALUES (44, 'HOME_URL_ROUTE_RULES', '路由规则', '路由规则不熟悉的不要乱改', 'textarea', 5, 900, 'Mobile$:::Mobile/Index/index\r\nSpecial/:id\\d:::Special/shows\r\nTag/:tname\\w:::Tag/shows\r\n:e/p/:p\\d:::List/index\r\n:e/:id\\d:::Show/index\r\n/^(\\w+)$/:::List/index?e=:1', 0);
INSERT INTO `we_config` VALUES (45, 'HOME_HTML_CACHE_ON', '开启电脑版缓存', '开启电脑版缓存', 'radio\r\n1:::是\r\n0:::否', 4, 900, '0', 0);
INSERT INTO `we_config` VALUES (46, 'MOBILE_HTML_CACHE_ON', '开启手机版缓存', '', 'radio\r\n1:::是\r\n0:::否', 4, 900, '0', 0);
INSERT INTO `we_config` VALUES (47, 'HTML_CACHE_INDEX_ON', '首页缓存', '', 'radio\r\n1:::是\r\n0:::否', 4, 900, '0', 0);
INSERT INTO `we_config` VALUES (48, 'HTML_CACHE_INDEX_TIME', '首页缓存时间', '首页缓存时间', '', 1, 900, '1200', 0);
INSERT INTO `we_config` VALUES (49, 'HTML_CACHE_LIST_ON', '栏目缓存', '', 'radio\r\n1:::是\r\n0:::否', 4, 900, '0', 0);
INSERT INTO `we_config` VALUES (50, 'HTML_CACHE_LIST_TIME', '栏目缓存时间', '栏目缓存时间', '', 1, 900, '0', 0);
INSERT INTO `we_config` VALUES (51, 'HTML_CACHE_SHOW_ON', '文章缓存', '', 'radio\r\n1:::是\r\n0:::否', 4, 900, '0', 0);
INSERT INTO `we_config` VALUES (52, 'HTML_CACHE_SHOW_TIME', '文章缓存时间', '', '', 1, 900, '0', 0);
INSERT INTO `we_config` VALUES (53, 'HTML_CACHE_SPECIAL_ON', '专题缓存', '', 'radio\r\n1:::是\r\n0:::否', 4, 900, '0', 0);
INSERT INTO `we_config` VALUES (54, 'HTML_CACHE_SPECIAL_TIME', '专题缓存时间', '专题缓存时间', '', 1, 900, '0', 0);
INSERT INTO `we_config` VALUES (55, 'ONLINE_CFG_MODE', '客服显示状态', '', 'radio\r\n1:::显示\r\n0:::隐藏', 4, 901, '1', 0);
INSERT INTO `we_config` VALUES (56, 'ONLINE_CFG_STYLE', '客服样式', '', 'select\r\n__ONLINE_CFG_STYLE__', 2, 901, 'blue', 0);
INSERT INTO `we_config` VALUES (57, 'ONLINE_CFG_H', '水平位置', '设置水平显示位置', 'radio\r\n0:::左对齐\r\n1:::右对齐\r\n2:::水平居中', 1, 901, '1', 0);
INSERT INTO `we_config` VALUES (58, 'ONLINE_CFG_H_MARGIN', '与边界的距离', '水平位置与边界的距离(像素)', '', 1, 901, '0', 0);
INSERT INTO `we_config` VALUES (59, 'ONLINE_CFG_V', '垂直位置', '', 'radio\r\n0:::顶部对齐\r\n1:::底部对齐\r\n2:::垂直居中', 1, 901, '2', 0);
INSERT INTO `we_config` VALUES (60, 'ONLINE_CFG_V_MARGIN', '与边界的距离', '垂直位置与边界的距离(像素)', '', 1, 901, '0', 0);
INSERT INTO `we_config` VALUES (61, 'ONLINE_CFG_QQ', 'QQ号码', '一行一个QQ号(QQ:::说明)', 'textarea', 5, 901, '销售咨询:::307299635\r\n售后服务:::307299635', 0);
INSERT INTO `we_config` VALUES (62, 'ONLINE_CFG_WANGWANG', '旺旺号码', '一行一个旺旺号(旺旺:::说明)', 'textarea', 5, 901, '在线旺旺:::7bucn', 0);
INSERT INTO `we_config` VALUES (63, 'ONLINE_CFG_PHONE_ON', '显示电话', '', 'radio\r\n1:::显示\r\n0:::隐藏', 4, 901, '1', 0);
INSERT INTO `we_config` VALUES (64, 'ONLINE_CFG_PHONE', '电话号码', '一行一个电话号码(电话号码:::说明)', 'textarea\r\n', 5, 901, '销售热线:::6525411\r\n技术支持:::6525412', 0);
INSERT INTO `we_config` VALUES (65, 'ONLINE_CFG_GUESTBOOK_ON', '显示留言链接', '显示留言链接', 'radio\r\n1:::显示\r\n0:::隐藏', 2, 901, '1', 0);
INSERT INTO `we_config` VALUES (66, 'ONLINE_CFG_QQ_PARAM', 'QQ参数', 'QQ参数。不熟悉的，请不要动', 'textarea', 3, 901, '<a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=[客服号]&site=qq&menu=yes\" class=\"xyh-online-item\"><em class=\"xyh-online-ico-qq\"> </em>[客服说明]</a>', 0);
INSERT INTO `we_config` VALUES (67, 'ONLINE_CFG_WANGWANG_PARAM', '旺旺参数', 'QQ参数。不熟悉的，请不要动', 'textarea', 3, 901, '<a target=\"_blank\" href=\"http://www.taobao.com/webww/ww.php?ver=3&touid=[客服号]&siteid=cntaobao&status=1&charset=utf-8\" class=\"xyh-online-item\"><em class=\"xyh-online-ico-wangwang\"> </em>[客服说明]</a>', 0);
INSERT INTO `we_config` VALUES (68, 'CFG_IMAGE_WATER_ON', '上传图片加水印', '水印开启，同时会影响到缩略图', 'radio\r\n1:::开启\r\n0:::关闭', 4, 4, '0', 0);
INSERT INTO `we_config` VALUES (69, 'CFG_IMAGE_WATER_FILE', '水印图片文件', '', 'file@ad', 2, 4, '', 0);
INSERT INTO `we_config` VALUES (70, 'CFG_IMAGE_WATER_POSITION', '水印位置', '', 'radio\r\n1:::顶部居左\r\n2:::顶部居中\r\n3:::顶部居右\r\n4:::左边居中\r\n5:::图片中心\r\n6:::右边居中\r\n7:::底部居左\r\n8:::底部居中\r\n9:::底部居右\r\n', 1, 4, '9', 0);
INSERT INTO `we_config` VALUES (71, 'CFG_IMAGE_WATER_DIAPHANEITY', '水印透明度', '透明度0~100之间，超小超透明', 'text', 1, 4, '100', 0);
INSERT INTO `we_config` VALUES (72, 'CFG_IMAGE_WATER_IGNORE_WIDTH', '加水印最小宽度', '上传的图片宽度小于最小宽度(像素)，则不再添加水印。全部添加水印，请填写0', '', 2, 4, '300', 0);
INSERT INTO `we_config` VALUES (73, 'CFG_EMAIL', '邮箱', '', '', 2, 1, 'secretariat@wida.org', 0);
COMMIT;

-- ----------------------------
-- Table structure for we_copyfrom
-- ----------------------------
DROP TABLE IF EXISTS `we_copyfrom`;
CREATE TABLE `we_copyfrom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(30) NOT NULL DEFAULT '',
  `siteurl` varchar(200) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_copyfrom
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_department
-- ----------------------------
DROP TABLE IF EXISTS `we_department`;
CREATE TABLE `we_department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '部门名称',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级部门',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  `sorting` int(10) unsigned DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_department
-- ----------------------------
BEGIN;
INSERT INTO `we_department` VALUES (1, '网络部', 0, '网络部', 0);
INSERT INTO `we_department` VALUES (3, '销售部', 0, '销售', 1);
INSERT INTO `we_department` VALUES (4, '美工部', 1, '美工', 0);
COMMIT;

-- ----------------------------
-- Table structure for we_free_block
-- ----------------------------
DROP TABLE IF EXISTS `we_free_block`;
CREATE TABLE `we_free_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '说明',
  `content` text COMMENT '内容',
  `block_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_free_block
-- ----------------------------
BEGIN;
INSERT INTO `we_free_block` VALUES (2, 'solution', '', '<p><br/></p><p>GDIO aims to provide strategic consultations and credible solutions on the \r\nbrand strategy, design services, technical support, and talent training, and \r\nwork on industrial cooperation and docking. By providing a service platform, \r\nGDIO has helped many enterprises to carry out cooperation:<br/></p><p>In August 2019, Prof. Dr. Yuan Xiaowei, Vice Chairman of Sino-German \r\nIndustrial Design Expert Committee and Mathis Heller, DeTao Master of Automotive \r\n&amp; Industrial Design came to Shandong Province to visit some enterprises in \r\nYantai, Zibo, and Weifang for in-depth and multidimensional investigation and \r\nresearch. This visit aims to provide strategic consultations and credible \r\nsolutions and work on industrial cooperation and docking.</p><p>In October 2019, a visit was paid to CIMC Raffles with over 30 professionals from the design industry, governments, and international organizations around the world. Through this field visit to CIMC Raffles, participants had the opportunity to climb on a gigantic offshore drilling platform which is the biggest deepwater drilling unit in the world at present. Through exchange and interaction, we want to provide more possibilities for international cooperation.</p><p>In January 2020, to better provide solutions to enterprises and promote the \r\nupgrading and transition of them, experts from the Expert Committee of \r\nSino-German Industrial Design Center had face-to-face communication with \r\nenterprises in Yantai, discussing the short-term implementation plan and \r\nlong-term construction plan of digitalization and upgrading.</p><p>Cases for the combination of biotechnology with manufacturing and \r\nagriculture: Alzheimer’s apparatus and NAPA coffee.</p><p><img src=\"/uploads/img1/20200430/5eaa93c04675a.png\" title=\"5eaa93c04675a.png\" _src=\"/uploads/img1/20200430/5eaa93c04675a.png\" alt=\"改5e81c8316d365.png\"/></p>', 3);
COMMIT;

-- ----------------------------
-- Table structure for we_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `we_guestbook`;
CREATE TABLE `we_guestbook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `post_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `reply_time` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `private_flag` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '悄悄话',
  `content` text,
  `reply` text,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `gender` varchar(64) NOT NULL DEFAULT '',
  `organization` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `government` varchar(255) NOT NULL DEFAULT 'no',
  `is_personal` tinyint(1) NOT NULL DEFAULT '0',
  `is_org` tinyint(1) NOT NULL DEFAULT '0',
  `business` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_guestbook
-- ----------------------------
BEGIN;
INSERT INTO `we_guestbook` VALUES (3, 'wangyi', '', '361008280@qq.com', '', '', '0.0.0.0', '2020-01-11 15:16:34', NULL, 0, 0, NULL, NULL, 0, 'man', 'shangdongwangyi', 'chian', 'yanian', 'yes', 1, 1, '');
INSERT INTO `we_guestbook` VALUES (4, 'e', '', '2533768654@qq.com', '', '', '112.249.117.9', '2020-01-14 11:01:23', NULL, 0, 0, NULL, NULL, 0, 'man', 'w', 'sa', 'scfd', 'dvd', 1, 1, '');
INSERT INTO `we_guestbook` VALUES (5, 'ujgujg', '', 'kefu@w-e.cc', '', '', '112.249.116.198', '2020-01-14 16:58:28', NULL, 0, 0, NULL, NULL, 0, 'male', 'dsadad', 'dasdada', 'dqawew ', 'weqweqwe', 1, 1, '');
INSERT INTO `we_guestbook` VALUES (6, 'admin', '15552236280', '361008280@qq.com', '', 'im', '27.216.185.17', '2020-03-25 10:16:11', NULL, 0, 0, 'af', NULL, 0, 'Male', 'sf', 'sfsf', 'China', 'daff', 1, 1, '');
INSERT INTO `we_guestbook` VALUES (7, 'afaf', '15552236280', '361008280@qq.com', '', 'sfsf', '27.216.185.17', '2020-03-25 10:29:24', NULL, 0, 0, 'afe3fef', NULL, 0, 'Male', 'sfsf', 'sfaf', 'China', 'sfs', 1, 1, '');
INSERT INTO `we_guestbook` VALUES (8, 'vivian', '', 'chinawevi@163.com', '', '', '122.5.23.10', '2020-04-16 17:29:42', NULL, 0, 0, '', NULL, 0, 'Female', 'abc org', 'manager', 'China', 'no', 0, 0, '');
INSERT INTO `we_guestbook` VALUES (9, 'wei', '', '980503529@qq.com', '', '', '122.5.23.10', '2020-04-20 09:16:05', NULL, 0, 0, '', NULL, 0, 'Female', 'abc org', 'assistant', 'China', 'no', 0, 0, '');
INSERT INTO `we_guestbook` VALUES (10, 'ss', '', 'chinawevi@163.com', '', 'ss', '122.5.23.10', '2020-04-20 16:45:08', NULL, 0, 0, 'd', NULL, 0, 'Male', 'abc org', 'bh', 'China', 'd', 1, 0, 's');
INSERT INTO `we_guestbook` VALUES (11, 'LL', 'll', 'lengxiaoxiao_cgc@163.com', '', 'LL', '122.5.23.10', '2020-04-20 16:47:38', NULL, 0, 0, 'll', NULL, 0, 'Female', 'll', 'llll', 'China', 'll', 1, 0, 'll');
INSERT INTO `we_guestbook` VALUES (12, 'LL', 'll', 'lengxiaoxiao_cgc@163.com', '', 'LL', '122.5.23.10', '2020-04-20 16:47:45', NULL, 0, 0, 'll', NULL, 0, 'Female', 'll', 'llll', 'China', 'll', 1, 0, 'll');
INSERT INTO `we_guestbook` VALUES (13, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:06', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (14, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:11', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (15, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:15', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (16, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:19', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (17, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:23', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (18, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:27', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (19, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:31', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (20, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:35', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (21, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:38', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (22, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:41', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (23, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:44', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (24, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:48', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (25, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:50:51', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (26, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:07', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (27, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:11', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (28, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:15', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (29, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:18', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (30, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:21', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (31, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:24', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (32, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:27', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (33, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:29', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (34, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:32', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (35, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:36', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (36, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:38', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (37, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:41', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (38, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:43', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (39, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:46', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (40, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:49', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (41, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:52', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (42, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:55', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (43, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:57', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (44, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:51:59', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (45, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:02', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (46, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:06', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (47, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:09', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (48, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:12', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (49, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:15', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (50, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:17', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (51, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:19', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (52, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:22', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (53, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:24', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (54, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:26', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (55, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:28', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (56, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:30', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (57, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:32', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (58, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:34', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (59, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:37', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (60, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:39', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (61, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:41', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (62, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:43', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (63, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:44', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (64, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:46', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (65, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:48', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (66, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:50', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (67, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:52', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (68, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:53', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (69, 'Elle', '19818780849', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-21 08:52:55', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'HR', 'China', '', 1, 0, 'DESIGN');
INSERT INTO `we_guestbook` VALUES (70, 'we', '15552236280', '361008280@qq.com', '', 'we', '27.217.160.159', '2020-04-21 11:39:59', NULL, 0, 0, 'we', NULL, 0, 'Male', 'we', 'we', 'China', 'we', 1, 0, 'we');
INSERT INTO `we_guestbook` VALUES (71, 'admin', '18562201233', '18562201233@163.com', '', 'qw', '27.217.160.159', '2020-04-21 15:56:35', NULL, 0, 0, 'fd', NULL, 0, 'Male', 'gs', 'gsf', 'China', 'www', 1, 0, 'yingxiao');
INSERT INTO `we_guestbook` VALUES (72, 's', '', 'chinawevi@163.com', '', 's', '122.5.23.10', '2020-04-21 16:05:22', NULL, 0, 0, '', NULL, 0, 'Female', 'abc org', 'ss', 'China', 'ss', 0, 1, 's');
INSERT INTO `we_guestbook` VALUES (73, 'ff', '', 'chinawevi@163.com', '', 'f', '47.240.171.198', '2020-04-22 10:08:39', NULL, 0, 0, '', NULL, 0, 'Male', 'ff', 's', 'China', 'f', 1, 0, 's');
INSERT INTO `we_guestbook` VALUES (74, 'e', '', 'chinawevi@163.com', '', 'e', '47.240.171.198', '2020-04-22 10:21:52', NULL, 0, 0, '', NULL, 0, 'Male', 'f ', 'r', 'China', 'da', 0, 1, 'a');
INSERT INTO `we_guestbook` VALUES (75, 't', '', 'chinawevi@163.com', '', 'yh', '122.5.23.10', '2020-04-22 10:23:31', NULL, 0, 0, '', NULL, 0, 'Female', 'y', 'e', 'China', 'd', 1, 0, 'e');
INSERT INTO `we_guestbook` VALUES (76, 'ra', '', 'chinawevi@163.com', '', 'r', '122.5.23.10', '2020-04-22 10:42:29', NULL, 0, 0, '', NULL, 0, 'Male', 'x', 'ar', 'China', 'ft', 0, 1, 'rt');
INSERT INTO `we_guestbook` VALUES (77, 'Elle', '', 'liwen_cgc@163.com', '', 'Li', '122.5.23.10', '2020-04-22 10:44:46', NULL, 0, 0, '', NULL, 0, 'Female', 'CGC', 'hr', 'China', '', 1, 0, 'ID');
INSERT INTO `we_guestbook` VALUES (78, 'LL', '', 'lengxiaoxiao_cgc@163.com', '', 'LL', '122.5.23.10', '2020-04-22 14:22:09', NULL, 0, 0, '', NULL, 0, 'Female', 'll', 'llll', 'China', 'll', 1, 0, 'll');
INSERT INTO `we_guestbook` VALUES (79, ' d', '', 'chinawevi@163.com', '', 'f', '122.5.23.10', '2020-04-22 14:23:40', NULL, 0, 0, '', NULL, 0, 'Male', 'g', 'd', 'China', 'da', 0, 1, 'r');
INSERT INTO `we_guestbook` VALUES (80, 'e', '', 'weiwei_cgc@163.com', '', 'r', '122.5.23.10', '2020-04-30 13:47:15', NULL, 0, 0, '', NULL, 0, 'Female', 'ft', 't', 'China', 'r', 0, 1, 'd');
INSERT INTO `we_guestbook` VALUES (81, 'f', '', 'weiwei_cgc@163.com', '', 'g', '122.5.23.10', '2020-04-30 16:45:36', NULL, 0, 0, '', NULL, 0, 'Male', 'g', 'th', 'China', 'gh', 0, 1, 's');
COMMIT;

-- ----------------------------
-- Table structure for we_item_group
-- ----------------------------
DROP TABLE IF EXISTS `we_item_group`;
CREATE TABLE `we_item_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(20) DEFAULT '',
  `status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_item_group
-- ----------------------------
BEGIN;
INSERT INTO `we_item_group` VALUES (1, 'flagtype', '文档属性', 0);
INSERT INTO `we_item_group` VALUES (2, 'blocktype', '自由块类别', 0);
INSERT INTO `we_item_group` VALUES (3, 'softtype', '软件类型', 0);
INSERT INTO `we_item_group` VALUES (4, 'softlanguage', '软件语言', 0);
INSERT INTO `we_item_group` VALUES (5, 'star', '星座', 0);
INSERT INTO `we_item_group` VALUES (6, 'animal', '生肖', 0);
INSERT INTO `we_item_group` VALUES (7, 'education', '教育程度', 0);
INSERT INTO `we_item_group` VALUES (8, 'configgroup', '配置分组', 0);
INSERT INTO `we_item_group` VALUES (9, 'configtype', '配置变量类型', 0);
COMMIT;

-- ----------------------------
-- Table structure for we_item_info
-- ----------------------------
DROP TABLE IF EXISTS `we_item_info`;
CREATE TABLE `we_item_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `group` varchar(20) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_item_info
-- ----------------------------
BEGIN;
INSERT INTO `we_item_info` VALUES (1, '图片', 'flagtype', 1, 0, 0);
INSERT INTO `we_item_info` VALUES (2, '头条', 'flagtype', 2, 0, 0);
INSERT INTO `we_item_info` VALUES (3, '推荐', 'flagtype', 4, 0, 0);
INSERT INTO `we_item_info` VALUES (4, '特荐', 'flagtype', 8, 0, 0);
INSERT INTO `we_item_info` VALUES (5, '幻灯', 'flagtype', 16, 0, 0);
INSERT INTO `we_item_info` VALUES (6, '跳转', 'flagtype', 32, 0, 0);
INSERT INTO `we_item_info` VALUES (7, '其他', 'flagtype', 64, 0, 0);
INSERT INTO `we_item_info` VALUES (8, '文字', 'blocktype', 1, 0, 0);
INSERT INTO `we_item_info` VALUES (9, '图片', 'blocktype', 2, 0, 0);
INSERT INTO `we_item_info` VALUES (10, '丰富', 'blocktype', 3, 0, 0);
INSERT INTO `we_item_info` VALUES (11, '国产', 'softtype', 1, 0, 0);
INSERT INTO `we_item_info` VALUES (12, '中文版', 'softlanguage', 1, 0, 0);
INSERT INTO `we_item_info` VALUES (13, '英文版', 'softlanguage', 2, 0, 0);
INSERT INTO `we_item_info` VALUES (14, '多语言版', 'softlanguage', 3, 0, 0);
INSERT INTO `we_item_info` VALUES (15, '白羊座', 'star', 1, 0, 0);
INSERT INTO `we_item_info` VALUES (16, '金牛座', 'star', 2, 0, 0);
INSERT INTO `we_item_info` VALUES (17, '双子座', 'star', 3, 0, 0);
INSERT INTO `we_item_info` VALUES (18, '巨蟹座', 'star', 4, 0, 0);
INSERT INTO `we_item_info` VALUES (19, '狮子座', 'star', 5, 0, 0);
INSERT INTO `we_item_info` VALUES (20, '处女座', 'star', 6, 0, 0);
INSERT INTO `we_item_info` VALUES (21, '天枰座', 'star', 7, 0, 0);
INSERT INTO `we_item_info` VALUES (22, '天蝎座', 'star', 8, 0, 0);
INSERT INTO `we_item_info` VALUES (23, '射手座', 'star', 9, 0, 0);
INSERT INTO `we_item_info` VALUES (24, '摩羯座', 'star', 10, 0, 0);
INSERT INTO `we_item_info` VALUES (25, '水瓶座', 'star', 11, 0, 0);
INSERT INTO `we_item_info` VALUES (26, '双鱼座', 'star', 12, 0, 0);
INSERT INTO `we_item_info` VALUES (27, '鼠', 'animal', 1, 0, 0);
INSERT INTO `we_item_info` VALUES (28, '牛', 'animal', 2, 0, 0);
INSERT INTO `we_item_info` VALUES (29, '虎', 'animal', 3, 0, 0);
INSERT INTO `we_item_info` VALUES (30, '兔', 'animal', 4, 0, 0);
INSERT INTO `we_item_info` VALUES (31, '龙', 'animal', 5, 0, 0);
INSERT INTO `we_item_info` VALUES (32, '蛇', 'animal', 6, 0, 0);
INSERT INTO `we_item_info` VALUES (33, '马', 'animal', 7, 0, 0);
INSERT INTO `we_item_info` VALUES (34, '羊', 'animal', 8, 0, 0);
INSERT INTO `we_item_info` VALUES (35, '猴', 'animal', 9, 0, 0);
INSERT INTO `we_item_info` VALUES (36, '鸡', 'animal', 10, 0, 0);
INSERT INTO `we_item_info` VALUES (37, '狗', 'animal', 11, 0, 0);
INSERT INTO `we_item_info` VALUES (38, '猪', 'animal', 12, 0, 0);
INSERT INTO `we_item_info` VALUES (39, '小学', 'education', 1, 0, 0);
INSERT INTO `we_item_info` VALUES (40, '初中', 'education', 2, 0, 0);
INSERT INTO `we_item_info` VALUES (41, '高中/中专', 'education', 3, 0, 0);
INSERT INTO `we_item_info` VALUES (42, '大学专科', 'education', 4, 0, 0);
INSERT INTO `we_item_info` VALUES (43, '大学本科', 'education', 5, 0, 0);
INSERT INTO `we_item_info` VALUES (44, '硕士', 'education', 6, 0, 0);
INSERT INTO `we_item_info` VALUES (45, '博士以上', 'education', 7, 0, 0);
INSERT INTO `we_item_info` VALUES (46, '站点配置', 'configgroup', 1, 0, 0);
INSERT INTO `we_item_info` VALUES (47, '核心配置', 'configgroup', 2, 0, 0);
INSERT INTO `we_item_info` VALUES (48, '邮箱配置', 'configgroup', 3, 0, 0);
INSERT INTO `we_item_info` VALUES (49, '上传配置', 'configgroup', 4, 0, 0);
INSERT INTO `we_item_info` VALUES (50, '会员配置', 'configgroup', 5, 0, 0);
INSERT INTO `we_item_info` VALUES (51, '其他配置', 'configgroup', 6, 0, 0);
INSERT INTO `we_item_info` VALUES (52, '数字', 'configtype', 1, 0, 0);
INSERT INTO `we_item_info` VALUES (53, '字符', 'configtype', 2, 0, 0);
INSERT INTO `we_item_info` VALUES (54, '文本', 'configtype', 3, 0, 0);
INSERT INTO `we_item_info` VALUES (55, '布尔(真假)', 'configtype', 4, 0, 0);
INSERT INTO `we_item_info` VALUES (56, '数组', 'configtype', 5, 0, 0);
INSERT INTO `we_item_info` VALUES (57, '伪静态/缓存', 'configgroup', 900, 0, 0);
INSERT INTO `we_item_info` VALUES (58, '在线客服', 'configgroup', 901, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for we_job
-- ----------------------------
DROP TABLE IF EXISTS `we_job`;
CREATE TABLE `we_job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `zhiwei` varchar(255) NOT NULL,
  `renshu` varchar(255) NOT NULL,
  `bumen` varchar(255) NOT NULL,
  `diqu` varchar(255) NOT NULL,
  `xueli` varchar(255) NOT NULL,
  `zhize` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `yaoqiu` text NOT NULL,
  `gongling` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `inputtime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_job
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_jobexp
-- ----------------------------
DROP TABLE IF EXISTS `we_jobexp`;
CREATE TABLE `we_jobexp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zhiwei` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` int(2) NOT NULL,
  `age` varchar(255) NOT NULL,
  `xueli` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gongling` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `job_id` int(11) NOT NULL,
  `shenhe` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_jobexp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_link
-- ----------------------------
DROP TABLE IF EXISTS `we_link`;
CREATE TABLE `we_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `is_check` tinyint(1) NOT NULL DEFAULT '1' COMMENT '首页|内页',
  `post_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_link
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_member
-- ----------------------------
DROP TABLE IF EXISTS `we_member`;
CREATE TABLE `we_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `nickname` varchar(20) DEFAULT '',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `face` varchar(60) NOT NULL DEFAULT '' COMMENT '头像',
  `reg_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `login_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `login_ip` varchar(20) DEFAULT '',
  `login_num` int(10) unsigned DEFAULT '0',
  `group_id` int(10) unsigned DEFAULT '0',
  `message` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_lock` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_member
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_member_detail
-- ----------------------------
DROP TABLE IF EXISTS `we_member_detail`;
CREATE TABLE `we_member_detail` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `realname` varchar(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '1980-01-01',
  `province` int(10) unsigned NOT NULL DEFAULT '0',
  `area` int(10) unsigned NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `animal` int(10) unsigned NOT NULL DEFAULT '0',
  `star` int(10) unsigned NOT NULL DEFAULT '0',
  `blood` int(10) unsigned NOT NULL DEFAULT '0',
  `marital` int(10) unsigned NOT NULL DEFAULT '0',
  `education` int(10) unsigned NOT NULL DEFAULT '0',
  `vocation` int(10) unsigned NOT NULL DEFAULT '0',
  `income` int(10) unsigned NOT NULL DEFAULT '0',
  `maxim` varchar(100) NOT NULL DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_member_detail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_member_group
-- ----------------------------
DROP TABLE IF EXISTS `we_member_group`;
CREATE TABLE `we_member_group` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `sort` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_member_group
-- ----------------------------
BEGIN;
INSERT INTO `we_member_group` VALUES (1, '游客', '', 0, 0, 0);
INSERT INTO `we_member_group` VALUES (2, '注册会员', '', 10, 0, 0);
INSERT INTO `we_member_group` VALUES (3, '中级会员', '', 30, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for we_menu
-- ----------------------------
DROP TABLE IF EXISTS `we_menu`;
CREATE TABLE `we_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `quick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示',
  `sort` smallint(6) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_menu
-- ----------------------------
BEGIN;
INSERT INTO `we_menu` VALUES (1, '常规管理', 'Manage/MenuA1', 0, 0, 1, 1);
INSERT INTO `we_menu` VALUES (2, '模块扩展', 'Manage/MenuA2', 0, 0, 1, 2);
INSERT INTO `we_menu` VALUES (3, '系统设置', 'Manage/MenuA3', 0, 0, 1, 3);
INSERT INTO `we_menu` VALUES (4, '扩展管理', 'Manage/MenuA4', 0, 0, 1, 4);
INSERT INTO `we_menu` VALUES (5, '栏目管理', 'Manage/Category', 1, 0, 1, 11);
INSERT INTO `we_menu` VALUES (6, '内容管理', 'Manage/MenuB1', 1, 0, 1, 12);
INSERT INTO `we_menu` VALUES (7, '快捷面板', 'Manage/MenuB2', 1, 0, 1, 13);
INSERT INTO `we_menu` VALUES (8, '栏目管理', 'Manage/Category/index', 5, 0, 1, 111);
INSERT INTO `we_menu` VALUES (9, '内置模块', 'Manage/MenuB3', 2, 0, 1, 21);
INSERT INTO `we_menu` VALUES (10, '自由块管理', 'Manage/FreeBlock/index', 9, 0, 1, 211);
INSERT INTO `we_menu` VALUES (11, '广告管理', 'Manage/Abc/index', 9, 1, 1, 212);
INSERT INTO `we_menu` VALUES (12, '专题管理', 'Manage/Special/index', 9, 0, 1, 213);
INSERT INTO `we_menu` VALUES (13, '公告管理', 'Manage/Announce/index', 9, 1, 1, 214);
INSERT INTO `we_menu` VALUES (14, '友情链接', 'Manage/Link/index', 9, 1, 1, 215);
INSERT INTO `we_menu` VALUES (15, '留言本管理', 'Manage/Guestbook/index', 9, 1, 1, 216);
INSERT INTO `we_menu` VALUES (16, '评论管理', 'Manage/Comment/index', 9, 1, 1, 217);
INSERT INTO `we_menu` VALUES (17, '系统设置', 'Manage/System', 3, 0, 1, 31);
INSERT INTO `we_menu` VALUES (18, '会员管理', 'Manage/Member', 3, 0, 1, 34);
INSERT INTO `we_menu` VALUES (19, '管理员管理', 'Manage/Auth', 3, 0, 1, 35);
INSERT INTO `we_menu` VALUES (20, '网站设置', 'Manage/System/site', 17, 0, 1, 311);
INSERT INTO `we_menu` VALUES (21, '伪静态|缓存设置', 'Manage/System/url', 17, 0, 1, 312);
INSERT INTO `we_menu` VALUES (22, '清除系统缓存', 'Manage/System/clearCache', 17, 1, 1, 316);
INSERT INTO `we_menu` VALUES (23, '在线客服设置', 'Manage/System/online', 17, 0, 1, 313);
INSERT INTO `we_menu` VALUES (24, '更新静态缓存', 'Manage/ClearHtml/index', 17, 0, 1, 317);
INSERT INTO `we_menu` VALUES (30, '会员管理', 'Manage/Member/index', 18, 0, 1, 331);
INSERT INTO `we_menu` VALUES (31, '会员组管理', 'Manage/MemberGroup/index', 18, 0, 1, 332);
INSERT INTO `we_menu` VALUES (32, '系统用户管理', 'Manage/Auth/indexOfUser', 19, 0, 1, 341);
INSERT INTO `we_menu` VALUES (33, '职位权限', 'Manage/Auth/index', 19, 0, 1, 342);
INSERT INTO `we_menu` VALUES (34, '部门管理', 'Manage/Department/index', 19, 0, 1, 343);
INSERT INTO `we_menu` VALUES (35, '扩展管理', 'Manage/MenuB5', 4, 0, 1, 41);
INSERT INTO `we_menu` VALUES (36, '我的账户', 'Manage/Personal', 3, 0, 1, 33);
INSERT INTO `we_menu` VALUES (37, '模型管理', 'Manage/Model/index', 35, 0, 1, 411);
INSERT INTO `we_menu` VALUES (38, '菜单管理', 'Manage/Menu/index', 35, 0, 1, 412);
INSERT INTO `we_menu` VALUES (39, '数据库管理', 'Manage/Database/index', 35, 0, 1, 413);
INSERT INTO `we_menu` VALUES (40, '联动管理', 'Manage/ItemGroup/index', 35, 0, 1, 414);
INSERT INTO `we_menu` VALUES (41, '区域管理', 'Manage/Area/index', 35, 0, 1, 415);
INSERT INTO `we_menu` VALUES (42, '修改我的信息', 'Manage/Personal/index', 36, 0, 1, 421);
INSERT INTO `we_menu` VALUES (43, '修改密码', 'Manage/Personal/pwd', 36, 0, 1, 422);
INSERT INTO `we_menu` VALUES (44, '其他模块', 'Manage/MenuB4', 2, 0, 1, 22);
INSERT INTO `we_menu` VALUES (45, '已传文件管理', 'Manage/Attachment/index', 35, 0, 1, 416);
INSERT INTO `we_menu` VALUES (46, '数据预留--', 'Manage/Index/index', 35, 0, 0, 417);
INSERT INTO `we_menu` VALUES (47, '模板管理', 'Manage/Templets/index', 35, 0, 1, 428);
INSERT INTO `we_menu` VALUES (48, 'Tag管理', 'Manage/Tag/index', 9, 0, 1, 214);
INSERT INTO `we_menu` VALUES (49, '招聘管理', 'Manage/Job/index', 9, 0, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for we_model
-- ----------------------------
DROP TABLE IF EXISTS `we_model`;
CREATE TABLE `we_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `table_name` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_category` varchar(60) NOT NULL DEFAULT '',
  `template_list` varchar(60) NOT NULL DEFAULT '',
  `template_show` varchar(60) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_model
-- ----------------------------
BEGIN;
INSERT INTO `we_model` VALUES (1, '文章模型', '', 'article', 1, '', 'List_article.html', 'Show_article.html', 1);
INSERT INTO `we_model` VALUES (2, '单页模型', '', 'page', 1, '', 'List_page.html', 'Show_page.html', 2);
INSERT INTO `we_model` VALUES (3, '产品模型', '', 'product', 1, '', 'List_product.html', 'Show_product.html', 3);
INSERT INTO `we_model` VALUES (4, '图片模型', '', 'picture', 1, '', 'List_picture.html', 'Show_picture.html', 4);
INSERT INTO `we_model` VALUES (5, '软件下载模型', '', 'soft', 1, '', 'List_soft.html', 'Show_soft.html', 5);
COMMIT;

-- ----------------------------
-- Table structure for we_order_action
-- ----------------------------
DROP TABLE IF EXISTS `we_order_action`;
CREATE TABLE `we_order_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `order_id` varchar(30) NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `distribution_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送状态',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `aid` int(10) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  `publish_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderid` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_order_action
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `we_order_detail`;
CREATE TABLE `we_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(30) DEFAULT NULL COMMENT '订单ID',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `market_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `num` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_order_detail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_order_info
-- ----------------------------
DROP TABLE IF EXISTS `we_order_info`;
CREATE TABLE `we_order_info` (
  `order_id` varchar(30) NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_id` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `express_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '邮费/运费',
  `prdouct_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '产品总价格',
  `total_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '总价格',
  `consignee` varchar(30) DEFAULT '' COMMENT '收件人',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` int(10) NOT NULL DEFAULT '0',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `distribution_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送状态',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  `confirm_time` datetime DEFAULT NULL COMMENT '确认时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `distribution_time` datetime DEFAULT NULL COMMENT '配送时间',
  PRIMARY KEY (`order_id`),
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_order_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_picture
-- ----------------------------
DROP TABLE IF EXISTS `we_picture`;
CREATE TABLE `we_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `copyfrom` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `picture_urls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `comment_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `delete_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_picture
-- ----------------------------
BEGIN;
INSERT INTO `we_picture` VALUES (1, 'tiapic', '', '', '/uploads/img1/20200330/5e81c53408154.png', '', '2020-01-11 11:27:36', '2020-03-30 18:08:54', '', '', '[]', '', 28, 20, 10, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (2, 'tiapic', '', '', '/uploads/img1/20200113/5e1bd7b6b9963.png', '', '2020-01-13 10:36:26', '2020-01-13 10:36:42', '', '', '[]', '', 40, 21, 100, 1, 1, '', 1, 1, 0, 1);
INSERT INTO `we_picture` VALUES (3, 'tiapic', '', '', '/uploads/img1/20200330/5e81b8d5cd681.png', '', '2020-01-13 10:52:56', '2020-03-30 17:16:08', '', '', '[]', '', 63, 20, 15, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (4, 'tiapic', '', '', '/uploads/img1/20200113/5e1bdbc029408.jpg', '', '2020-01-13 10:53:43', '2020-01-13 10:53:55', '', '', '[]', '', 18, 20, 100, 1, 1, '', 1, 1, 0, 1);
INSERT INTO `we_picture` VALUES (5, 'tiapic', '', '', '/uploads/img1/20200330/5e81b8cbaf743.png', '', '2020-01-13 10:53:58', '2020-03-30 17:15:57', '', '', '[]', '', 66, 20, 16, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (6, 'tiapic', '', '', '/uploads/img1/20200330/5e81b8be839be.png', '', '2020-01-13 10:54:40', '2020-03-30 17:15:44', '', '', '[]', '', 24, 20, 17, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (7, 'tiapic', '', '', '/uploads/img1/20200330/5e81b8b4d5121.png', '', '2020-01-13 10:54:59', '2020-03-30 17:15:35', '', '', '[]', '', 73, 20, 18, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (8, 'tiapic', '', '', '/uploads/img1/20200330/5e81b8ab2ba76.png', '', '2020-01-13 10:56:17', '2020-03-30 17:15:25', '', '', '[]', '', 58, 20, 19, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (9, 'tiapic', '', '', '/uploads/img1/20200330/5e81c4560cacd.png', '', '2020-01-13 11:00:35', '2020-03-30 18:05:13', '', '', '[]', '', 38, 20, 20, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (10, 'tiapic', '', '', '/uploads/img1/20200113/5e1bdd7adb479.jpg', '', '2020-01-13 11:00:54', '2020-01-13 11:01:21', '', '', '[]', '', 51, 20, 100, 1, 1, '', 1, 1, 0, 1);
INSERT INTO `we_picture` VALUES (11, 'tiapic', '', '', '/uploads/img1/20200113/5e1bdd8ce0084.jpg', '', '2020-01-13 11:01:25', '2020-01-13 11:01:35', '', '', '[]', '', 33, 20, 100, 1, 1, '', 1, 1, 0, 1);
INSERT INTO `we_picture` VALUES (12, 'tiapic', '', '', '/uploads/img1/20200330/5e81c5253b1d3.png', '', '2020-01-13 11:01:38', '2020-03-30 18:08:39', '', '', '[]', '', 67, 20, 11, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (13, 'tiapic', '', '', '/uploads/img1/20200330/5e81c189c1fe1.png', '', '2020-01-13 11:01:55', '2020-03-30 17:53:16', '', '', '[]', '', 59, 20, 13, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (14, 'tiapic', '', '', '/uploads/img1/20200330/5e81c17c292a4.png', '', '2020-01-13 11:02:07', '2020-03-30 17:53:02', '', '', '[]', '', 76, 20, 14, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (15, 'tiapic', '', '', '/uploads/img1/20200113/5e1bddc61a707.jpg', '', '2020-01-13 11:02:23', '2020-01-13 11:02:33', '', '', '[]', '', 72, 20, 1, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (16, 'tiapic', '', '', '/uploads/img1/20200330/5e81c2ef9db97.png', '', '2020-01-13 11:02:23', '2020-03-30 17:59:13', '', '', '[]', '', 79, 20, 2, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (17, 'tiapic', '', '', '/uploads/img1/20200330/5e81c2d666b32.png', '', '2020-01-13 11:02:37', '2020-03-30 17:58:48', '', '', '[]', '', 30, 20, 3, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (18, 'tiapic', '', '', '/uploads/img1/20200330/5e81c2c938c34.png', '', '2020-01-13 11:02:53', '2020-03-30 17:58:35', '', '', '[]', '', 93, 20, 4, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (19, 'tiapic', '', '', '/uploads/img1/20200330/5e81c2b9bfb32.png', '', '2020-01-13 11:03:07', '2020-03-30 17:58:19', '', '', '[]', '', 51, 20, 5, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (20, 'tiapic', '', '', '/uploads/img1/20200330/5e81c1f7850e3.png', '', '2020-01-13 11:03:23', '2020-03-30 17:55:05', '', '', '[]', '', 13, 20, 6, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (21, 'tiapic', '', '', '/uploads/img1/20200330/5e81c1e24f683.png', '', '2020-01-13 11:03:43', '2020-03-30 17:54:44', '', '', '[]', '', 88, 20, 7, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (22, 'tiapic', '', '', '/uploads/img1/20200330/5e81c1d34d897.png', '', '2020-01-13 11:03:58', '2020-03-30 17:54:30', '', '', '[]', '', 82, 20, 8, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (23, 'tiapic', '', '', '/uploads/img1/20200330/5e81c5439d329.png', '', '2020-01-13 11:04:13', '2020-03-30 18:09:09', '', '', '[]', '', 76, 20, 9, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (24, 'tiapic', '', '', '/uploads/img1/20200330/5e81c59b6f4c6.png', '', '2020-01-13 11:04:38', '2020-03-30 18:10:38', '', '', '[]', '', 44, 20, 12, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (25, 'tiapic', '', '', '/uploads/img1/20200113/5e1be1dccea6d.jpg', '', '2020-01-13 11:19:33', '2020-01-13 11:20:00', '', '', '[]', '', 93, 20, 100, 1, 1, '', 1, 1, 0, 1);
INSERT INTO `we_picture` VALUES (26, 'tiapic', '', '', '/uploads/img1/20200113/5e1be24c6b48c.jpg', '', '2020-01-13 11:21:40', '2020-01-13 11:21:50', '', '', '[]', '', 91, 21, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (27, 'tiapic', '', '', '/uploads/img1/20200113/5e1be29092ba6.jpg', '', '2020-01-13 11:22:45', '2020-01-13 11:22:59', '', '', '[]', '', 35, 21, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (28, 'tiapic', '', '', '/uploads/img1/20200113/5e1be29c02d8a.jpg', '', '2020-01-13 11:23:03', '2020-01-13 11:23:12', '', '', '[]', '', 94, 21, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (29, 'tiapic', '', '', '/uploads/img1/20200113/5e1be2aa40865.jpg', '', '2020-01-13 11:23:15', '2020-01-13 11:23:30', '', '', '[]', '', 91, 21, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (30, 'tiapic', '', '', '/uploads/img1/20200113/5e1be2c25b763.jpg', '', '2020-01-13 11:23:33', '2020-01-13 11:23:57', '', '', '[]', '', 87, 21, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (31, 'tiapic', '', '', '/uploads/img1/20200113/5e1be2db88e31.jpg', '', '2020-01-13 11:24:04', '2020-01-13 11:24:18', '', '', '[]', '', 75, 21, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (32, 'tiapic', '', '', '/uploads/img1/20200113/5e1be2eba6b59.jpg', '', '2020-01-13 11:24:22', '2020-01-13 11:24:33', '', '', '[]', '', 86, 21, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (33, 'tiapic', '', '', '/uploads/img1/20200113/5e1be2f98d30f.jpg', '', '2020-01-13 11:24:36', '2020-01-13 11:24:47', '', '', '[]', '', 54, 21, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (34, 'tiapic', '', '', '/uploads/img1/20200113/5e1be30ea6045.jpg', '', '2020-01-13 11:24:53', '2020-01-13 11:25:05', '', '', '[]', '', 48, 21, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (35, 'tiapic', '', '', '/uploads/img1/20200113/5e1be31f2326f.jpg', '', '2020-01-13 11:25:08', '2020-01-13 11:25:21', '', '', '[]', '', 75, 21, 100, 1, 1, '', 0, 1, 0, 1);
INSERT INTO `we_picture` VALUES (36, '11', '', '', '/uploads/img1/20200428/5ea7867769f31.PNG', '', '2020-04-28 09:27:09', '2020-04-28 09:27:28', '', '', '[]', '', 63, 20, 100, 1, 1, '', 1, 1, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for we_product
-- ----------------------------
DROP TABLE IF EXISTS `we_product`;
CREATE TABLE `we_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `picture_urls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `market_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `brand` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌',
  `units` varchar(50) NOT NULL DEFAULT '' COMMENT '单位',
  `specification` varchar(50) NOT NULL DEFAULT '' COMMENT '规格',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `comment_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `delete_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_search_all
-- ----------------------------
DROP TABLE IF EXISTS `we_search_all`;
CREATE TABLE `we_search_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arc_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `delete_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_search_all
-- ----------------------------
BEGIN;
INSERT INTO `we_search_all` VALUES (1, 1, 'THE ESTABLISHMENT OF GLOBAL DESIGN INDUSTRY ORGANIZATION', '/uploads/img1/20200409/5e8e753535684.png', '40 Countries Jointly Established the Global Design Industry Organization and Issued Design Industry Declaration in Yantai!\r\nIn 1919, modern industrial design was born in Germany.\r\nIn 2019, representatives of innovative design from 40 countries gathered in', '', '2019-04-19 09:42:00', 7, 1, 98, 0, 1);
INSERT INTO `we_search_all` VALUES (2, 1, 'tiapic', '/uploads/img1/20200330/5e81c53408154.png', '', '', '2020-01-11 11:27:36', 20, 4, 10, 0, 1);
INSERT INTO `we_search_all` VALUES (3, 3, '2019', '/uploads/img1/20200116/5e1fb2b78a3e7.png', '2019 World Industrial Design Conference was grandly held in Yantai, Shandong Province from October 18 to 20, with the theme of “Design Sparks Innovation Engine”. More than 2,000 delegates from over 40 countries and regions were all represented, including ', '', '2020-01-13 09:28:29', 8, 1, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (4, 4, '2018', '/uploads/img1/20200116/5e1fb320819ea.png', '       2018 World Industrial Design Conference\r\n\r\n图层 1.png\r\n\r\n2018 World Industrial Design Conference (WIDC2018) was held on April 21-22 in Mengqi Town of Designers, Liangzhu, Zhejiang. With the theme of “Design • Ecology”, the Conference brought together', '', '2020-01-13 09:38:04', 8, 1, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (5, 5, '2016', '', 'In December 2016, the first World Industrial Design Conference was grandly held, and more than a thousand design elites from around the world went to Hangzhou for a grand celebration. During the conference, more than 10 innovation forums and nearly 30 mul', '', '2020-01-13 09:38:15', 8, 1, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (6, 6, '2017', '/uploads/img1/20200113/5e1bd0674c2d0.jpg', '', '', '2020-01-13 10:04:25', 8, 1, 100, 1, 1);
INSERT INTO `we_search_all` VALUES (7, 7, '2020', '/uploads/img1/20200113/5e1bd059a7e05.jpg', '', '', '2020-01-13 10:04:40', 8, 1, 100, 1, 1);
INSERT INTO `we_search_all` VALUES (8, 2, 'tiapic', '/uploads/img1/20200113/5e1bd7b6b9963.png', '', '', '2020-01-13 10:36:26', 21, 4, 100, 1, 1);
INSERT INTO `we_search_all` VALUES (9, 3, 'tiapic', '/uploads/img1/20200330/5e81b8d5cd681.png', '', '', '2020-01-13 10:52:56', 20, 4, 15, 0, 1);
INSERT INTO `we_search_all` VALUES (10, 4, 'tiapic', '/uploads/img1/20200113/5e1bdbc029408.jpg', '', '', '2020-01-13 10:53:43', 20, 4, 100, 1, 1);
INSERT INTO `we_search_all` VALUES (11, 5, 'tiapic', '/uploads/img1/20200330/5e81b8cbaf743.png', '', '', '2020-01-13 10:53:58', 20, 4, 16, 0, 1);
INSERT INTO `we_search_all` VALUES (12, 6, 'tiapic', '/uploads/img1/20200330/5e81b8be839be.png', '', '', '2020-01-13 10:54:40', 20, 4, 17, 0, 1);
INSERT INTO `we_search_all` VALUES (13, 7, 'tiapic', '/uploads/img1/20200330/5e81b8b4d5121.png', '', '', '2020-01-13 10:54:59', 20, 4, 18, 0, 1);
INSERT INTO `we_search_all` VALUES (14, 8, 'tiapic', '/uploads/img1/20200330/5e81b8ab2ba76.png', '', '', '2020-01-13 10:56:17', 20, 4, 19, 0, 1);
INSERT INTO `we_search_all` VALUES (15, 9, 'tiapic', '/uploads/img1/20200330/5e81c4560cacd.png', '', '', '2020-01-13 11:00:35', 20, 4, 20, 0, 1);
INSERT INTO `we_search_all` VALUES (16, 10, 'tiapic', '/uploads/img1/20200113/5e1bdd7adb479.jpg', '', '', '2020-01-13 11:00:54', 20, 4, 100, 1, 1);
INSERT INTO `we_search_all` VALUES (17, 11, 'tiapic', '/uploads/img1/20200113/5e1bdd8ce0084.jpg', '', '', '2020-01-13 11:01:25', 20, 4, 100, 1, 1);
INSERT INTO `we_search_all` VALUES (18, 12, 'tiapic', '/uploads/img1/20200330/5e81c5253b1d3.png', '', '', '2020-01-13 11:01:38', 20, 4, 11, 0, 1);
INSERT INTO `we_search_all` VALUES (19, 13, 'tiapic', '/uploads/img1/20200330/5e81c189c1fe1.png', '', '', '2020-01-13 11:01:55', 20, 4, 13, 0, 1);
INSERT INTO `we_search_all` VALUES (20, 14, 'tiapic', '/uploads/img1/20200330/5e81c17c292a4.png', '', '', '2020-01-13 11:02:07', 20, 4, 14, 0, 1);
INSERT INTO `we_search_all` VALUES (21, 15, 'tiapic', '/uploads/img1/20200113/5e1bddc61a707.jpg', '', '', '2020-01-13 11:02:23', 20, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (22, 16, 'tiapic', '/uploads/img1/20200330/5e81c2ef9db97.png', '', '', '2020-01-13 11:02:23', 20, 4, 2, 0, 1);
INSERT INTO `we_search_all` VALUES (23, 17, 'tiapic', '/uploads/img1/20200330/5e81c2d666b32.png', '', '', '2020-01-13 11:02:37', 20, 4, 3, 0, 1);
INSERT INTO `we_search_all` VALUES (24, 18, 'tiapic', '/uploads/img1/20200330/5e81c2c938c34.png', '', '', '2020-01-13 11:02:53', 20, 4, 4, 0, 1);
INSERT INTO `we_search_all` VALUES (25, 19, 'tiapic', '/uploads/img1/20200330/5e81c2b9bfb32.png', '', '', '2020-01-13 11:03:07', 20, 4, 5, 0, 1);
INSERT INTO `we_search_all` VALUES (26, 20, 'tiapic', '/uploads/img1/20200330/5e81c1f7850e3.png', '', '', '2020-01-13 11:03:23', 20, 4, 6, 0, 1);
INSERT INTO `we_search_all` VALUES (27, 21, 'tiapic', '/uploads/img1/20200330/5e81c1e24f683.png', '', '', '2020-01-13 11:03:43', 20, 4, 7, 0, 1);
INSERT INTO `we_search_all` VALUES (28, 22, 'tiapic', '/uploads/img1/20200330/5e81c1d34d897.png', '', '', '2020-01-13 11:03:58', 20, 4, 8, 0, 1);
INSERT INTO `we_search_all` VALUES (29, 23, 'tiapic', '/uploads/img1/20200330/5e81c5439d329.png', '', '', '2020-01-13 11:04:13', 20, 4, 9, 0, 1);
INSERT INTO `we_search_all` VALUES (30, 24, 'tiapic', '/uploads/img1/20200330/5e81c59b6f4c6.png', '', '', '2020-01-13 11:04:38', 20, 4, 12, 0, 1);
INSERT INTO `we_search_all` VALUES (31, 25, 'tiapic', '/uploads/img1/20200113/5e1be1dccea6d.jpg', '', '', '2020-01-13 11:19:33', 20, 4, 100, 1, 1);
INSERT INTO `we_search_all` VALUES (32, 26, 'tiapic', '/uploads/img1/20200113/5e1be24c6b48c.jpg', '', '', '2020-01-13 11:21:40', 21, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (33, 27, 'tiapic', '/uploads/img1/20200113/5e1be29092ba6.jpg', '', '', '2020-01-13 11:22:45', 21, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (34, 28, 'tiapic', '/uploads/img1/20200113/5e1be29c02d8a.jpg', '', '', '2020-01-13 11:23:03', 21, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (35, 29, 'tiapic', '/uploads/img1/20200113/5e1be2aa40865.jpg', '', '', '2020-01-13 11:23:15', 21, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (36, 30, 'tiapic', '/uploads/img1/20200113/5e1be2c25b763.jpg', '', '', '2020-01-13 11:23:33', 21, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (37, 31, 'tiapic', '/uploads/img1/20200113/5e1be2db88e31.jpg', '', '', '2020-01-13 11:24:04', 21, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (38, 32, 'tiapic', '/uploads/img1/20200113/5e1be2eba6b59.jpg', '', '', '2020-01-13 11:24:22', 21, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (39, 33, 'tiapic', '/uploads/img1/20200113/5e1be2f98d30f.jpg', '', '', '2020-01-13 11:24:36', 21, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (40, 34, 'tiapic', '/uploads/img1/20200113/5e1be30ea6045.jpg', '', '', '2020-01-13 11:24:53', 21, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (41, 35, 'tiapic', '/uploads/img1/20200113/5e1be31f2326f.jpg', '', '', '2020-01-13 11:25:08', 21, 4, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (42, 8, 'Visit to Advanced Equipment Manufacturing: CIMC Raffles', '/uploads/img1/20200113/5e1be4566b83e.jpg', 'GDIO champions the idea of improving the exchange and communication within the design industry for better development. On October 21, 2019, with over 30 professionals from the design industry, governments, and international organizations around the world,', '', '2020-01-13 11:30:13', 12, 1, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (43, 9, '2019 Press Conference in Vienna', '/uploads/img1/20200409/5e8e79e3906de.png', 'On March 29, 2019, with the support of the United Nations Industrial Development Organization (UNIDO), the Press Conference of 2019 World Industrial Design Conference & Industrial Design World Expo (2019 WIDC&IDWE) was successfully held in Vienna, Austria', '', '2019-03-29 11:48:00', 7, 1, 96, 0, 1);
INSERT INTO `we_search_all` VALUES (44, 2, 'The Logo Collection Event for GDIO is Open for You', '/uploads/img1/20200113/5e1c13d537637.jpg', 'Attention! We are launching the logo design collection event for GDIO. We need your creative and original mind.  \r\nStill waiting? We call for your action! We are hungry for your creative ideas! \r\nBelow is the information for logo design collection of GDIO', '', '2019-12-16 09:42:00', 7, 1, 100, 1, 1);
INSERT INTO `we_search_all` VALUES (45, 10, 'The Logo Collection Event for GDIO is Open for You', '/uploads/img1/20200115/5e1ed55c3bb0c.jpg', 'Attention! We are launching the logo design collection event for GDIO. We need your creative and original mind.\r\n\r\nStill waiting? We call for your action! We are hungry for your creative ideas!\r\n\r\nBelow is the information for logo design collection of GDI', '', '2019-12-16 16:59:00', 7, 1, 99, 0, 1);
INSERT INTO `we_search_all` VALUES (46, 11, '2018', '/uploads/img1/20200209/5e3f9b5bb7337.png!300X300.jpg', '', '', '2020-02-09 13:14:56', 24, 1, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (47, 12, '2019', '/uploads/img1/20200306/5e61d44b0e18e.jpg', '', '', '2020-02-09 13:17:56', 24, 1, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (48, 13, '德国智能制造专家与山东企业家对话', '/uploads/img1/20200516/5ebf9fb4ae48b.jpg', '2020年1月10日至11日，中德工业设计中心专家委员会的两位德国智能制造专家Holm Fischäder和Markus Färber博士应邀访问山东省烟台市。', '', '2020-02-09 14:02:03', 11, 1, 1, 0, 1);
INSERT INTO `we_search_all` VALUES (49, 14, '工业设计领军人才培训计划', '/uploads/img1/20200410/5e8fbfcc3cf65.jpg', '2018年12月13日上午，为期一周的工信部组织的工业设计领军人才培养计划', '', '2020-02-09 14:05:00', 11, 1, 3, 0, 1);
INSERT INTO `we_search_all` VALUES (50, 15, 'German Experts\' visit to Shangdong Manufacturing Industry', '/uploads/img1/20200306/5e61ea5a170dc.jpg', 'Prof. Dr. Yuan Xiaowei, Vice Chairman of Sino-German Industrial Design Expert Committee and Mathis Heller, DeTao Master of Automotive & Industrial Design came to Shandong Province to visit some enterprises in Yantai, Zibo, and Weifang for in-depth and mul', '', '2020-02-09 15:05:44', 12, 1, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (51, 16, 'In Apirl 2019, participated in HANNOVER MESSE', '/uploads/img1/20200328/5e7ef5e5c1bd9.jpg', 'In April 2019, Sino-German Industrial Design Center participated in HANNOVER MESSE, showed Chinese innovative design achievements, generated a great deal of attention both nationally and internationally, met with Li Yong, Director General of United Nation', '', '2019-04-05 15:16:00', 7, 1, 97, 0, 1);
INSERT INTO `we_search_all` VALUES (52, 17, '设计师专业技能培训和能力认证', '/uploads/img1/20200328/5e7ee68d2c74e.png!300X300.jpg', '目前，我们已经在中国开展了设计师职业技能培训和能力认证。3000多名设计师正在接受加拿大国际开发署的技能水平认证。更多的全球设计师将获得该项目的认证。我们也希望更多的WIDA成员能够进行设计师技能认证的国际互认。', '', '2020-03-28 09:59:55', 11, 1, 4, 0, 1);
INSERT INTO `we_search_all` VALUES (53, 18, '面向创新企业家的设计思维培训课程', '/uploads/img1/20200328/5e7ee57ea19aa.png!300X300.jpg', 'WIDA为创新创业者提供设计思维培训课程。目标是在10年内培训1000人。这些培训课程的讲师来自世界各地，学员主要是中国的年轻企业家。', '', '2020-03-28 10:01:32', 11, 1, 2, 0, 1);
INSERT INTO `we_search_all` VALUES (54, 19, '“COVID-19 Prevention Manual” has been Well-received in the International Network!', '/uploads/img1/20200526/5ecd04cbabefa.jpg', 'At present, the coronavirus epidemic has become a global public emergency. Many countries are learning from China\'s model of epidemic prevention and control. The “COVID-19 Prevention Manual” has been translated into Chinese, British, Japanese, Korean and ', '', '2020-03-18 11:42:00', 7, 1, 101, 0, 1);
INSERT INTO `we_search_all` VALUES (55, 20, 'Face Mask Design Invitation from GDIO', '/uploads/img1/20200330/5e819ba861181.jpg', 'In effort to meet demands for the face mask, China mask companies are gearing up to the mask production. In addition, a great many Chinese designers are pooling wisdom to cope with it by designing the various functions of face masks.', '', '2020-03-06 10:12:00', 7, 1, 100, 0, 1);
INSERT INTO `we_search_all` VALUES (56, 21, 'APPRECIATION FOR PARTICIPATION IN GDIO LOGO COLLECTION EVENT', '/uploads/img1/20200410/5e8fc9024023d.jpg', 'Since December 2019, the logo collection event for GDIO has been launched around the world, which has received great support and a positive response from many excellent international designers and design organizations.', '', '2020-04-10 09:13:10', 7, 1, 102, 0, 1);
INSERT INTO `we_search_all` VALUES (57, 36, '11', '/uploads/img1/20200428/5ea7867769f31.PNG', '', '', '2020-04-28 09:27:09', 20, 4, 100, 1, 1);
INSERT INTO `we_search_all` VALUES (58, 22, '1111111111111111111111111111111', '/uploads/img1/20200428/5ea7886e463ad.png', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '', '2020-04-28 09:35:27', 11, 1, 100, 1, 1);
INSERT INTO `we_search_all` VALUES (59, 23, '1111111111111', '/uploads/img1/20200428/5ea78b9bd773e.png', '11111111111111111111111111111111111111', '', '2020-04-28 09:49:03', 7, 1, 103, 1, 1);
INSERT INTO `we_search_all` VALUES (60, 24, '感谢', '/uploads/img1/20200428/5ea79440cd8c2.png', '傻瓜蛋', '', '2020-04-28 10:25:34', 7, 1, 120, 1, 1);
INSERT INTO `we_search_all` VALUES (61, 25, 'WIDA Logo is Officially Released', '/uploads/img1/20200430/1.png', 'The official logo of the World Industrial Design Association (WIDA) has finally come out!', '', '2020-04-30 09:02:16', 7, 1, 103, 0, 1);
INSERT INTO `we_search_all` VALUES (62, 26, 'GDIO Logo is Officially Released1', '/uploads/img1/20200430/1.jpg', 'The official logo of the World Industrial Design Association (WIDA) has finally come out!', '', '2020-04-30 09:55:19', 7, 1, 105, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for we_soft
-- ----------------------------
DROP TABLE IF EXISTS `we_soft`;
CREATE TABLE `we_soft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `picture_urls` text,
  `content` text COMMENT '内容',
  `update_log` text COMMENT '更新日志',
  `down_link` text COMMENT '下载地址',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '版本号',
  `soft_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '软件类型',
  `copy_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '授权形式',
  `language` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '语言',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '运行环境',
  `file_size` varchar(10) NOT NULL DEFAULT '' COMMENT '文件大小',
  `official_url` varchar(100) NOT NULL DEFAULT '' COMMENT '官方网站',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `comment_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `delete_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_soft
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_special
-- ----------------------------
DROP TABLE IF EXISTS `we_special`;
CREATE TABLE `we_special` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `short_title` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `color` char(10) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `content` text COMMENT '内容',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `comment_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `delete_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  `filename` varchar(60) DEFAULT '',
  `template` varchar(60) NOT NULL DEFAULT '',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_special
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_tag
-- ----------------------------
DROP TABLE IF EXISTS `we_tag`;
CREATE TABLE `we_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(30) NOT NULL DEFAULT '',
  `num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档数',
  `hit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `add_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_tag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_tag_index
-- ----------------------------
DROP TABLE IF EXISTS `we_tag_index`;
CREATE TABLE `we_tag_index` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0',
  `arc_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  PRIMARY KEY (`tag_id`,`arc_id`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_tag_index
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for we_visitor
-- ----------------------------
DROP TABLE IF EXISTS `we_visitor`;
CREATE TABLE `we_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` int(11) NOT NULL DEFAULT '0',
  `ips` text,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `datetime` (`datetime`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of we_visitor
-- ----------------------------
BEGIN;
INSERT INTO `we_visitor` VALUES (1, 1589558400, '39.73.123.241,111.7.100.16,111.7.100.17,111.7.100.18,111.7.100.19,111.7.100.21,111.7.100.20,36.99.136.142,27.115.124.70,180.163.220.66,42.236.10.117,42.236.10.78,42.236.10.75,180.163.220.67,42.236.10.84,42.236.10.114,180.163.220.68,112.224.69.246,49.7.4.91,106.11.223.12,106.11.222.72,123.151.77.91,125.39.132.92,220.194.107.222,111.30.142.78,218.68.91.23,111.30.142.227,218.68.91.112,111.30.142.233,117.136.78.212,61.151.179.84,101.89.239.232,101.227.139.178,61.151.207.205,61.129.6.159,101.89.239.216,101.89.239.238,101.91.60.105,101.91.62.89,61.129.6.225,101.91.60.108,171.13.14.49,101.91.62.99,61.151.178.180,101.89.29.78,61.151.207.141,112.224.69.166,49.7.3.89,61.129.6.151,123.151.77.70,111.7.100.27,111.7.100.26,36.99.136.141,112.224.69.1,218.68.91.42,111.7.100.22,36.99.136.143,36.99.136.139,111.7.100.23,36.99.136.131,180.97.79.156', 61);
INSERT INTO `we_visitor` VALUES (2, 1589644800, '42.236.10.84,180.97.79.156,192.71.23.211,192.71.38.71,192.71.126.175,111.206.36.138,70.37.98.52,111.7.100.21,117.185.18.143,110.167.92.141,117.185.18.147,111.7.100.16,117.185.18.14', 13);
INSERT INTO `we_visitor` VALUES (3, 1589731200, '117.185.18.14,117.185.18.19,180.97.79.156,220.181.51.86,116.179.32.176,149.129.91.231,122.5.23.10,180.163.220.68,42.236.10.117,42.236.10.75,180.163.220.3,27.115.124.70,42.236.10.84,180.163.220.4,180.163.220.67,42.236.10.125,42.236.10.114,42.236.10.78,58.41.191.52,34.222.211.115,117.185.18.21,101.89.29.97,101.89.29.78,61.151.178.236,101.91.60.105,61.151.178.197,111.7.100.25,111.7.100.27,111.7.100.18,111.7.100.20,111.7.100.21,111.7.100.23,111.7.100.24,111.7.100.19,111.7.100.26,111.7.100.22,119.247.226.2', 37);
INSERT INTO `we_visitor` VALUES (4, 1589817600, '47.92.151.67,101.132.100.6,92.195.28.28,122.5.23.10,101.89.19.149,149.129.91.231,61.151.207.205,58.41.191.52,120.253.228.42', 9);
INSERT INTO `we_visitor` VALUES (5, 1589904000, '220.181.108.140,220.181.108.186,111.206.221.101,220.181.108.113,111.206.198.44,220.181.108.117,111.206.221.96,220.181.108.115,220.181.108.76,111.206.198.122,111.206.198.93,220.181.51.92,5.188.62.147,180.97.79.156,117.185.18.143,122.5.23.10,61.151.207.205,101.89.239.216,34.223.67.125,117.185.18.14,117.185.18.144,116.179.32.141,220.181.108.166,182.101.49.158,111.224.248.231', 25);
INSERT INTO `we_visitor` VALUES (6, 1589990400, '180.97.79.156,111.7.100.23,111.7.100.21,111.7.100.18,111.7.100.16,111.7.100.19,111.7.100.17,220.181.108.112,122.5.23.10,220.181.108.174,46.4.71.229,39.73.123.241,27.115.124.6,42.236.10.117,42.236.10.125,44.234.61.193,117.185.18.18,220.181.108.183,117.185.18.16,117.185.18.20', 20);
INSERT INTO `we_visitor` VALUES (7, 1590076800, '220.181.108.145,207.46.13.179,40.77.167.100,47.92.137.155,47.100.53.146,220.181.108.180,122.5.23.10,119.247.226.2,44.234.40.146,59.110.13.236,157.55.39.142,157.55.39.41,207.46.13.82,207.46.13.119,40.77.167.151,207.46.13.155,180.97.79.156', 17);
INSERT INTO `we_visitor` VALUES (8, 1590163200, '167.99.97.137,116.179.32.195,180.97.79.156,40.77.167.4,40.77.167.76,69.160.160.51,34.221.249.47,27.217.89.164,220.181.108.119,27.217.28.57', 10);
INSERT INTO `we_visitor` VALUES (9, 1590249600, '180.97.79.156,111.206.36.9,54.190.180.205,34.215.182.185,78.46.229.177,116.179.32.140,157.55.39.41,157.55.39.149,111.206.36.13', 9);
INSERT INTO `we_visitor` VALUES (10, 1590336000, '192.71.225.127,192.71.12.140,192.71.42.108,192.71.23.211,180.97.79.156,207.46.13.215,117.185.18.146,101.132.69.22,120.77.213.254,207.46.13.74,157.55.39.115,122.5.23.10,101.91.62.99,54.244.87.226,34.221.6.26,61.151.179.84,40.77.167.125,61.151.178.225,61.129.6.159,207.46.13.150,101.89.19.197,207.46.13.148,122.194.88.181,213.159.213.137,157.55.39.148,207.46.13.18', 26);
INSERT INTO `we_visitor` VALUES (11, 1590422400, '207.46.13.153,117.185.18.145,180.97.79.156,157.55.39.76,223.166.75.103,157.55.39.41,117.185.18.17,117.185.18.21,122.5.23.10,117.185.18.20,117.185.18.146,52.26.92.234,35.166.131.226,157.55.39.234,157.55.39.68,167.160.78.61,162.244.146.184,180.163.220.3,220.181.108.117,36.99.136.139,202.100.78.235,180.163.220.5,27.115.124.70,223.104.190.129,36.99.136.138,36.99.136.135,36.99.136.131,111.7.100.16,111.7.100.17,111.7.100.27,111.7.100.26', 31);
INSERT INTO `we_visitor` VALUES (12, 1590508800, '58.214.187.180,40.77.167.234,157.55.39.82,36.99.136.143,36.99.136.142,36.99.136.135,111.7.100.17,111.7.100.16,111.7.100.26,111.7.100.24,111.7.100.27,111.7.100.25,36.99.136.140,180.97.79.156,39.73.123.241,47.100.61.194,130.105.208.121,42.236.10.125,42.236.10.117,180.163.220.3,180.163.220.5,180.163.220.67,27.115.124.6,42.236.10.84', 24);
INSERT INTO `we_visitor` VALUES (13, 1590595200, '106.15.229.102,47.92.110.185,117.185.18.148,39.73.123.241,42.236.10.117,157.55.39.41,207.46.13.5,171.13.14.76,207.46.13.105,122.5.23.10,207.46.13.109,180.163.220.3,180.163.220.68,157.55.39.15,207.46.13.209,27.115.124.6,42.236.10.93,42.236.10.84', 18);
INSERT INTO `we_visitor` VALUES (14, 1590681600, '117.185.18.147,122.5.23.10,220.181.51.113,149.129.77.190,61.151.178.197,39.73.123.241,59.36.129.115,173.211.77.64,185.209.28.82,220.181.108.96,117.136.92.107,40.77.167.43', 12);
INSERT INTO `we_visitor` VALUES (15, 1590768000, '40.77.167.43,220.181.108.107,117.185.18.142,117.185.18.19,220.181.108.139,117.185.18.146', 6);
INSERT INTO `we_visitor` VALUES (16, 1590854400, '39.108.62.211,47.100.57.133,101.132.106.40,192.99.34.42,47.102.153.70,47.103.58.61', 6);
INSERT INTO `we_visitor` VALUES (17, 1590940800, '140.75.169.38,27.194.26.28,157.55.39.15,40.77.167.88,39.86.3.27,123.157.192.35,192.71.44.44,192.71.42.108,192.71.142.35,42.236.10.117,167.172.242.231,180.163.220.4,180.163.220.68,42.236.10.84,42.236.10.125,42.236.10.75,180.163.220.66,111.7.100.25,111.7.100.27,111.7.100.18,111.7.100.19,36.99.136.131,36.99.136.135,36.99.136.130,36.99.136.132,47.100.1.160,101.132.188.19', 27);
INSERT INTO `we_visitor` VALUES (18, 1591027200, '116.179.32.41,39.86.6.144,140.75.169.38,140.75.170.125,157.55.39.15,40.77.167.88', 6);
INSERT INTO `we_visitor` VALUES (19, 1591113600, '47.92.102.179,47.100.104.184,140.75.170.125,47.92.248.4,203.119.135.219,106.11.223.20,106.11.222.99,223.104.190.202,157.55.39.80,91.77.16.72,123.125.67.219,220.181.108.115,119.180.19.82,77.247.181.165', 14);
INSERT INTO `we_visitor` VALUES (20, 1591200000, '157.55.39.50,157.55.39.93,39.73.129.72,140.75.170.125,101.133.221.134,101.133.210.88', 6);
INSERT INTO `we_visitor` VALUES (21, 1591286400, '220.181.77.162,157.55.39.15,40.77.167.179,157.55.39.93,119.180.19.82,116.202.21.246,78.47.88.249,47.92.243.68,203.119.196.239,106.11.222.131,122.5.23.10,72.13.46.5,140.75.170.125,180.163.220.68,42.236.10.125,42.236.10.78,42.236.10.117,180.163.220.3,42.236.10.75,40.77.167.194,116.179.32.36,61.151.178.168,101.89.239.120,101.89.19.197,61.129.6.159,61.129.7.235,61.151.178.174,61.129.6.225,101.89.239.216,61.151.207.205,92.63.111.27,37.59.46.228', 32);
INSERT INTO `we_visitor` VALUES (22, 1591372800, '157.55.39.15,101.132.102.45,101.132.177.30,122.5.23.10,157.55.39.142,61.151.178.168,36.23.84.4,58.247.206.149,101.91.60.109', 9);
INSERT INTO `we_visitor` VALUES (23, 1591459200, '157.55.39.15,157.55.39.97,207.46.13.175,157.55.39.18,40.77.167.104,220.181.108.140,47.103.86.220,221.11.20.163,47.103.89.56,113.128.105.96', 10);
INSERT INTO `we_visitor` VALUES (24, 1681660800, '127.0.0.1', 1);
INSERT INTO `we_visitor` VALUES (25, 1681747200, '127.0.0.1', 1);
INSERT INTO `we_visitor` VALUES (26, 1681833600, '127.0.0.1', 1);
INSERT INTO `we_visitor` VALUES (27, 1681920000, '127.0.0.1', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
