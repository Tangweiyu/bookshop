DROP TABLE IF EXISTS `allorders`;
CREATE TABLE `allorders` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` bigint(11) NOT NULL,
  `BookNo` int(11) NOT NULL,
  `Amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `oderID` (`orderID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allorders
-- ----------------------------
INSERT INTO `allorders` VALUES ('9', '1547609535061', '30', '1');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BookName` varchar(40) NOT NULL,
  `BookClass` int(11) NOT NULL,
  `Author` varchar(25) DEFAULT NULL,
  `Publish` varchar(150) DEFAULT NULL,
  `BookNo` varchar(30) DEFAULT NULL,
  `Content` longtext,
  `Prince` double DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Leav_number` int(11) DEFAULT NULL,
  `RegTime` date NOT NULL,
  `picture` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', 'Thinging In Java ', '1', 'Bruce Eckel', '人民邮电出版社', '0001', '指导您利用万维网的语言进行面向对象的程序设计，面向初学者和某种程度的专家 \r\n', '50', '100', '0', '2007-01-19', '1.jpg');
INSERT INTO `book` VALUES ('2', 'JSP应用开发详解(第三版) ', '1', '刘晓华，张健，周慧贞 ', '电子工业出版社', '0002', '本书结合JSP和Servlet的最新规范，从基本的语法和规范入手，以经验为后盾，以实用为目标，以实例为导向，以实践为指导，深入浅出地讲解了JSP开发中的种种问题。以精简的内容介绍了JSP的语法、Servlet技术、JDBC技术、标签库技术、表达式语言、Struts、JavaServer Face、Spring MVC、Hibernate、Ajax等技术；对于JSP开发中常遇到的典型难点，专门设置了专题进行集中讨论。对于最新兴起的Web 2.0的Ajax技术，用理论和实例进行了深入浅出的描述。本书的最后一篇围绕实例，使用各种最新技术，对实例的各个模块进行开发实现，为读者开发实现系统提供了理论和实践上的指导。飞思在线http://www.fecit.com.cn的“下载专区”提供书中范例源代码下载。\r\n本书不仅适合专业和准专业的Java程序员阅读，也可作为正在进行Java开发的各类程序员的必备参考书。\r\n', '49', '100', '80', '2007-01-19', '2.jpg');
INSERT INTO `book` VALUES ('3', 'Eclipse开发入门与项目实践 ', '1', '张桂圆 贾燕枫', '人民邮电出版社', '0003', '本书是Eclipse的学习指南。书中较为全面地介绍了在Eclipse开发环境中进和各种Java应用开发的方式和技巧。本书的特色是以案例为主，将相关知识点作为主线贯穿其中。第1部分是开发基础，内容涉及搭建运行环境和开发平台、基于Eclipse环境实现基本Java应用程序、Java Web应用、基于几种主流数据库系统的开发、Eclipse SWT/JFace应用程序的设计实现以及插件开发的工作流程。考虑到许多初学Jave开发的程序员普遍缺乏在Eclipse平台上进行实际项目开发的工程经验本，本书在 第2部分提供了一个完整的电子商务网站的设计和开发实例，并在该网站中实现了许多可以直接作为商用软件的模块，通过对网站各个功能模块从需求分析、系统设计及部署实现等全过程的分析，使读者能够快速积累基于Eclipse开发平台，结合JSP、Servlet、Struts、Hibernate待主流开发技术的实践经验，并能够依据书中提供的案例定制想要的功能，开发专业的Java Web系统。\r\n本书是作者多年从事教学和开发经验的总结。因此，作者阐述了主流Java开发技术最佳学习路线，以及在学习过程中注意事项。\r\n本书结构清晰、注重实用、深入浅出，非常适合作为Eclipse中Java应用开发的自学教材或培训教材，同时，也可作为Java开发人员的参考用书。\r\n', '48', '80', '50', '2007-01-19', '3.jpg');
INSERT INTO `book` VALUES ('4', 'MySQL 5权威指南(第3版) ', '1', '科夫勒', '人民邮电出版社', '0004', '本书全面深入地介绍了MySQL的功能，主要内容包括MySQL、PHP、Apache、Perl等组件的安装与功能简介，mysql等一些重要系统管理工具和用户操作界面的使用，MySQL数据库系统设计的基础知识与用不同语言设计MySQL数据库的过程，以及SQL语法、工具、选项、API应用指南，最大限度地帮助读者更快地学习和掌握MySQL数据库系统的设计和使用。本书覆盖了MySQL 5.0，讨论了新的程序设计接口（如PHP 5里的mysqli）和新的系统管理工具。\r\n', '55.3', '100', '90', '2007-01-19', '4.jpg');
INSERT INTO `book` VALUES ('5', 'JavaScript DOM编程艺术 ', '1', '基思', '人民邮电出版社', '0005', '本书讲述了JavaScript和DOM的基础知识，但重点放在DOM编程技术背后的思路和原则：预留退路、循序渐进和以用户为中心等，这些概念对于任何前端Web开发工作都非常重要。本书将这些概念贯穿在书中的所有代码示例中，使你看到用来创建图片库页面的脚本、用来创建动画效果的脚本和用来丰富页面元素呈现效果的脚本，最后结合所讲述的内容创建了一个实际的网站。\r\n本书适合Web设计师和开发人员阅读。', '27.3', '100', '80', '2007-01-19', '5.jpg');
INSERT INTO `book` VALUES ('6', '精通Struts：基于MVC的Java Web设计与开发 ', '1', '孙卫琴', '电子工业出版社 ', '0006', 'Struts是目前非常流行的基于MVC的Java Web框架。本书详细介绍了在最新的Struts1.1以及不久将推出的Struts1.2版本上设计和开发Java Web应用的各种技术。本书第1章到第3章为入门篇，通过两个Struts应用实例，引导读者把握设计、开发和部署Struts应用的整体流程，充分体会Struts框架在开放大型、可扩展的Web应用方面发挥的优势。第4章到第7章深入探讨了Struts框架的核心组件ActionServlet和RequestProcessor的实现原理，详细介绍了开发Struts应用的模型、视图和控制器的各种技术，细致的描述了Struts配置文件的每个元素的使用方法。第8章到第9章介绍了开发Struts应用的一些实用技术，如Struts框架的扩展点、Struts应用的国际化，Validator验证框架和异常处理机制等。第12章到第16章结合具体的Struts应用实例，详细介绍了Struts的标签库以及Tiles框架的使用方法。第17章和第18章介绍如何采用EJB和Web服务来实现Struts框架的模型。第19章到第21章介绍了如何采用第三方软件，如Apache Common Logging API、Log4J、ANT和StrutsTestCase，来控制Struts应用的输出日志、管理以及测试Struts应用项目。', '34.1', '80', '48', '2007-01-19', '6.jpg');

-- ----------------------------
-- Table structure for bookadmin
-- ----------------------------
DROP TABLE IF EXISTS `bookadmin`;
CREATE TABLE `bookadmin` (
  `AdminUser` varchar(20) NOT NULL DEFAULT '',
  `AdminPass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AdminUser`),
  UNIQUE KEY `AdminUser` (`AdminUser`) USING BTREE,
  UNIQUE KEY `AdminPass` (`AdminPass`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookadmin
-- ----------------------------
INSERT INTO `bookadmin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for bookclass
-- ----------------------------
DROP TABLE IF EXISTS `bookclass`;
CREATE TABLE `bookclass` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookclass
-- ----------------------------
INSERT INTO `bookclass` VALUES ('1', '计算机类');
INSERT INTO `bookclass` VALUES ('2', '文学类');
INSERT INTO `bookclass` VALUES ('3', '小说类');
INSERT INTO `bookclass` VALUES ('4', '管理类');
INSERT INTO `bookclass` VALUES ('5', '文化类');
INSERT INTO `bookclass` VALUES ('6', '艺术类');
INSERT INTO `bookclass` VALUES ('7', '科学类');
INSERT INTO `bookclass` VALUES ('8', '传记类');
INSERT INTO `bookclass` VALUES ('10', '医学类');
INSERT INTO `bookclass` VALUES ('11', '青春类');
INSERT INTO `bookclass` VALUES ('12', '动漫类');
INSERT INTO `bookclass` VALUES ('13', '体育类');
INSERT INTO `bookclass` VALUES ('14', '美食类');
INSERT INTO `bookclass` VALUES ('15', '旅游类');
INSERT INTO `bookclass` VALUES ('16', '工具书');
INSERT INTO `bookclass` VALUES ('17', '电子类');
INSERT INTO `bookclass` VALUES ('18', '交通类');
INSERT INTO `bookclass` VALUES ('19', '教育类');
INSERT INTO `bookclass` VALUES ('20', '通讯类');
INSERT INTO `bookclass` VALUES ('34', '励志类');
INSERT INTO `bookclass` VALUES ('36', '离职类');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `UserId` int(11) NOT NULL,
  `SubmitTime` datetime NOT NULL,
  `ConsignmentTime` varchar(20) DEFAULT NULL,
  `TotalPrice` double DEFAULT NULL,
  `content` longtext,
  `IPAddress` varchar(20) DEFAULT NULL,
  `IsPayoff` int(11) DEFAULT NULL,
  `IsSales` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `orderID` (`orderId`) USING BTREE,
  UNIQUE KEY `UserId` (`UserId`) USING BTREE,
  KEY `Id` (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('11', '1593878037973', '1', '2020-07-04 23:53:57', '2020-07-11 23:53:57', '34.5', '附言：', '0:0:0:0:0:0:0:1', '1', '1');

-- ----------------------------
-- Table structure for shop_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL,
  `PassWord` varchar(50) NOT NULL,
  `Names` varchar(20) DEFAULT NULL,
  `Sex` varchar(2) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Post` varchar(8) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `RegTime` datetime DEFAULT NULL,
  `RegIpAddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserName` (`UserName`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES ('1', 'tangweiyu', '123', '唐玮煜', '男', '吉林大学珠海学院', '13697712703', '519041', 'tangweiyu2000@stu.jluzh.edu.cn', '2020-06-19 22:02:38', '0:0:0:0:0:0:0:1');
INSERT INTO `shop_user` VALUES ('2', 'zhangsan', '1', '张三', '男', '', '', '', '', '2020-06-19 22:02:38', '0:0:0:0:0:0:0:1');
INSERT INTO `shop_user` VALUES ('3', 'TT', '123', '张三', '男', '吉林大学珠海学院', '13697712703', '519041', '1109123249@qq.com', '2020-06-19 22:02:38', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- View structure for class_book
-- ----------------------------
DROP VIEW IF EXISTS `class_book`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `class_book` AS select `a`.`Id` AS `id`,`a`.`BookName` AS `bookname`,`a`.`BookClass` AS `bookclass`,`b`.`ClassName` AS `classname`,`a`.`Author` AS `author`,`a`.`Publish` AS `publish`,`a`.`BookNo` AS `bookno`,`a`.`Content` AS `content`,`a`.`Prince` AS `prince`,`a`.`Amount` AS `amount`,`a`.`Leav_number` AS `Leav_number`,`a`.`RegTime` AS `regtime`,`a`.`picture` AS `picture` from (`book` `a` join `bookclass` `b`) where (`a`.`BookClass` = `b`.`Id`) ;

-- ----------------------------
-- View structure for getbookclass
-- ----------------------------
DROP VIEW IF EXISTS `getbookclass`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getbookclass` AS select `bookclass`.`Id` AS `Id`,`bookclass`.`ClassName` AS `ClassName` from `bookclass` order by `bookclass`.`Id` asc ;
DROP TRIGGER IF EXISTS `ispay_book`;
DELIMITER ;;
CREATE TRIGGER `ispay_book` AFTER INSERT ON `allorders` FOR EACH ROW UPDATE book
SET Leav_number = Leav_number - (SELECT Amount from allorders order by orderID desc limit 1)
WHERE
	book.Id = (SELECT BookNo from allorders order by orderID desc limit 1)
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `del_allorders`;
DELIMITER ;;
CREATE TRIGGER `del_allorders` AFTER DELETE ON `allorders` FOR EACH ROW if exists(select orderID from `order` where IsPayoff=1)  then
     update book set Leav_number= Leav_number+old.Amount where id = old.bookno;
     delete from `order` where id=old.id;
else
delete from `order` where id=old.id;
end if
;;
DELIMITER ;
