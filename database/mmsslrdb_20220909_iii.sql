/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.5-10.4.24-MariaDB : Database - mmsslrdb
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `actions` */

CREATE TABLE `actions` (
  `id` INT(11) NOT NULL,
  `action` VARCHAR(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1;

/*Data for the table `actions` */

INSERT  INTO `actions`(`id`,`action`) VALUES (1,'Appoinment');
INSERT  INTO `actions`(`id`,`action`) VALUES (2,'Calling for meeting');
INSERT  INTO `actions`(`id`,`action`) VALUES (3,'Order Convay');
INSERT  INTO `actions`(`id`,`action`) VALUES (4,'Order Submitted to AO');
INSERT  INTO `actions`(`id`,`action`) VALUES (5,'Under MSO Study');
INSERT  INTO `actions`(`id`,`action`) VALUES (6,'Sent for Answer');
INSERT  INTO `actions`(`id`,`action`) VALUES (7,'File is closed');
INSERT  INTO `actions`(`id`,`action`) VALUES (8,'Desicion taken & forword');

/*Table structure for table `admin` */

CREATE TABLE `admin` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(300) NOT NULL,
  `reg_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updation_date` DATE NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

INSERT  INTO `admin`(`id`,`username`,`email`,`password`,`reg_date`,`updation_date`) VALUES (1,'admin','anuj.lpu1@gmail.com','Test@1234','2016-04-05 02:01:45','2016-04-17');

/*Table structure for table `adminlog` */

CREATE TABLE `adminlog` (
  `id` INT(11) NOT NULL,
  `adminid` INT(11) NOT NULL,
  `ip` VARBINARY(16) NOT NULL,
  `logintime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `adminlog` */

/*Table structure for table `branches` */

CREATE TABLE `branches` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `branch_name` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `branches` */

INSERT  INTO `branches`(`id`,`branch_name`) VALUES (1,'Data Processing Unit');
INSERT  INTO `branches`(`id`,`branch_name`) VALUES (2,'Pension');
INSERT  INTO `branches`(`id`,`branch_name`) VALUES (3,'OPS');
INSERT  INTO `branches`(`id`,`branch_name`) VALUES (4,'Season');
INSERT  INTO `branches`(`id`,`branch_name`) VALUES (5,'Ticketing');
INSERT  INTO `branches`(`id`,`branch_name`) VALUES (6,'Coordinating');
INSERT  INTO `branches`(`id`,`branch_name`) VALUES (7,'Appoinment');
INSERT  INTO `branches`(`id`,`branch_name`) VALUES (8,'Discipline');

/*Table structure for table `devisions` */

CREATE TABLE `devisions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `devision_name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

/*Data for the table `devisions` */

INSERT  INTO `devisions`(`id`,`devision_name`) VALUES (1,'GM Office');
INSERT  INTO `devisions`(`id`,`devision_name`) VALUES (2,'CR');
INSERT  INTO `devisions`(`id`,`devision_name`) VALUES (3,'COM');
INSERT  INTO `devisions`(`id`,`devision_name`) VALUES (4,'SRS');

/*Table structure for table `mainmailrecivers` */

CREATE TABLE `mainmailrecivers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `mainmailreciver_name` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `mainmailrecivers` */

INSERT  INTO `mainmailrecivers`(`id`,`mainmailreciver_name`) VALUES (1,'GMR');
INSERT  INTO `mainmailrecivers`(`id`,`mainmailreciver_name`) VALUES (2,'GMA');
INSERT  INTO `mainmailrecivers`(`id`,`mainmailreciver_name`) VALUES (3,'GMI');
INSERT  INTO `mainmailrecivers`(`id`,`mainmailreciver_name`) VALUES (4,'CFO');
INSERT  INTO `mainmailrecivers`(`id`,`mainmailreciver_name`) VALUES (5,'None');

/*Table structure for table `positions` */

CREATE TABLE `positions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `position_name` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `positions` */

INSERT  INTO `positions`(`id`,`position_name`) VALUES (1,'AO');
INSERT  INTO `positions`(`id`,`position_name`) VALUES (2,'BO');
INSERT  INTO `positions`(`id`,`position_name`) VALUES (3,'DO');
INSERT  INTO `positions`(`id`,`position_name`) VALUES (4,'MSO');
INSERT  INTO `positions`(`id`,`position_name`) VALUES (5,'Subject Clark');
INSERT  INTO `positions`(`id`,`position_name`) VALUES (6,'Branch Member');

/*Table structure for table `registration` */

CREATE TABLE `registration` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `recidate` DATE DEFAULT NULL,
  `devision` VARCHAR(500) DEFAULT NULL,
  `regno` INT(11) DEFAULT NULL,
  `subject` VARCHAR(500) DEFAULT NULL,
  `title` VARCHAR(500) DEFAULT NULL,
  `recitype` VARCHAR(500) DEFAULT NULL,
  `regplace` VARCHAR(250) DEFAULT NULL,
  `action` VARCHAR(1000) DEFAULT NULL,
  `comment` VARCHAR(500) DEFAULT NULL,
  `branch` VARCHAR(250) DEFAULT NULL,
  `mainreciver` VARCHAR(1000) DEFAULT NULL,
  `position` VARCHAR(500) DEFAULT NULL,
  `action2` VARCHAR(500) DEFAULT NULL,
  `firstName` VARCHAR(500) DEFAULT NULL,
  `action3` VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

INSERT  INTO `registration`(`id`,`recidate`,`devision`,`regno`,`subject`,`title`,`recitype`,`regplace`,`action`,`comment`,`branch`,`mainreciver`,`position`,`action2`,`firstName`,`action3`) VALUES (5,'2022-08-01','CR',57,'1','ee','By Normal Post','ee','Appoinment','ee','Ticketing','GMR','BO','Sent for Answer','BO of OPS','BO of OPS');
INSERT  INTO `registration`(`id`,`recidate`,`devision`,`regno`,`subject`,`title`,`recitype`,`regplace`,`action`,`comment`,`branch`,`mainreciver`,`position`,`action2`,`firstName`,`action3`) VALUES (45,'2022-09-03','GM Office',87,'1','ed','By Hand','w','Calling for meeting','ede','OPS','GMA','MSO','Under MSO Study','BO of OPS','BO of OPS');
INSERT  INTO `registration`(`id`,`recidate`,`devision`,`regno`,`subject`,`title`,`recitype`,`regplace`,`action`,`comment`,`branch`,`mainreciver`,`position`,`action2`,`firstName`,`action3`) VALUES (67,'2022-09-03','GM Office',78,'1','dd','By Normal Post','f','Sent for Answer','dd','OPS','GMA','DO',NULL,'BO of OPS','BO of OPS');

/*Table structure for table `role` */

CREATE TABLE `role` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

INSERT  INTO `role`(`Id`,`role_name`) VALUES (1,'GMR level');
INSERT  INTO `role`(`Id`,`role_name`) VALUES (2,'DGM level');
INSERT  INTO `role`(`Id`,`role_name`) VALUES (3,'AO level');
INSERT  INTO `role`(`Id`,`role_name`) VALUES (4,'BO level');
INSERT  INTO `role`(`Id`,`role_name`) VALUES (5,'MSO level');

/*Table structure for table `rooms` */

CREATE TABLE `rooms` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `seater` INT(11) DEFAULT NULL,
  `room_no` INT(11) DEFAULT NULL,
  `fees` INT(11) DEFAULT NULL,
  `posting_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`id`),
  KEY `room_no` (`room_no`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `rooms` */

INSERT  INTO `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) VALUES (1,5,100,8000,'2020-04-12 04:15:43');
INSERT  INTO `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) VALUES (2,2,201,6000,'2020-04-12 07:00:47');
INSERT  INTO `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) VALUES (3,2,200,6000,'2020-04-12 07:00:58');
INSERT  INTO `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) VALUES (4,3,112,4000,'2020-04-12 07:01:07');
INSERT  INTO `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) VALUES (5,5,132,2000,'2020-04-12 07:01:15');

/*Table structure for table `user` */

CREATE TABLE `user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(150) DEFAULT NULL,
  `role_id` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`Id`)
) ENGINE=INNODB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (1,'GMR',1);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (2,'GMA',2);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (3,'GMI',2);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (4,'CFO',2);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (5,'AO of Data Processing Unit',3);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (6,'AO of Pension',3);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (7,'AO of OPS',3);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (8,'AO of Season',3);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (9,'AO of Ticketing',3);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (10,'AO of Coordinating',3);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (11,'AO of Appoinment',3);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (12,'BO of Data Processing Unit',3);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (13,'BO of Pension',4);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (14,'BO of OPS',4);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (15,'BO of Season',4);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (16,'BO of Ticketing',4);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (17,'BO of Coordinating',4);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (18,'BO of Appoinment',4);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (19,'BO of Discipline',4);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (20,'MSO of Data Processing Unit',5);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (21,'MSO of Pension',5);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (22,'MSO of OPS',5);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (23,'MSO of Season',5);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (24,'MSO of Ticketing',5);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (25,'MSO of Coordinating',5);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (26,'MSO of Appoinment',5);
INSERT  INTO `user`(`id`,`user_name`,`role_id`) VALUES (27,'MSO of Discipline',5);

/*Table structure for table `userlog` */

CREATE TABLE `userlog` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `userId` INT(11) NOT NULL,
  `userEmail` VARCHAR(255) NOT NULL,
  `userIp` VARBINARY(16) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `country` VARCHAR(255) NOT NULL,
  `loginTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

INSERT  INTO `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) VALUES (6,3,'10806121','::1','','','2020-07-20 20:26:45');
INSERT  INTO `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) VALUES (7,3,'test@gmail.com','::1','','','2022-09-08 09:21:56');
INSERT  INTO `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) VALUES (8,3,'gma@gmail.com','::1','','','2022-09-09 08:20:26');
INSERT  INTO `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) VALUES (9,3,'gma@gmail.com','::1','','','2022-09-09 08:20:40');
INSERT  INTO `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) VALUES (10,3,'gma@gmail.com','::1','','','2022-09-09 08:20:41');

/*Table structure for table `userregistration` */

CREATE TABLE `userregistration` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `regNo` VARCHAR(255) DEFAULT NULL,
  `firstName` VARCHAR(255) DEFAULT NULL,
  `middleName` VARCHAR(255) DEFAULT NULL,
  `lastName` VARCHAR(255) DEFAULT NULL,
  `gender` VARCHAR(255) DEFAULT NULL,
  `contactNo` BIGINT(20) DEFAULT NULL,
  `email` VARCHAR(255) DEFAULT NULL,
  `password` VARCHAR(255) DEFAULT NULL,
  `role_id` INT(11) DEFAULT NULL,
  `regDate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(),
  `updationDate` VARCHAR(45) DEFAULT NULL,
  `passUdateDate` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `userregistration_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`Id`)
) ENGINE=INNODB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `userregistration` */

INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (1,'10806121','Anuj','','kumar','male',1234567890,'test@gmail.com','Test@123',1,'2020-07-20 20:26:18',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (2,'13','GMR',NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (3,'13','GMA',NULL,NULL,NULL,NULL,'gma@gmail.com','Test@123',2,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (4,'13','GMI',NULL,NULL,NULL,NULL,NULL,NULL,2,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (5,'13','CFO',NULL,NULL,NULL,NULL,NULL,NULL,2,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (6,'13','AO of Data Processing Unit',NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (7,'13','AO of Pension',NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (8,'13','AO of OPS',NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (9,'13','AO of Season',NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (10,'13','AO of Ticketing',NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (11,'13','AO of Coordinating',NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (12,'13','AO of Appoinment',NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (13,'13','BO of Data Processing Unit',NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (14,'13','BO of Pension',NULL,NULL,NULL,NULL,NULL,NULL,4,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (15,'13','BO of OPS',NULL,NULL,NULL,NULL,NULL,NULL,4,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (16,'13','BO of Season',NULL,NULL,NULL,NULL,NULL,NULL,4,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (17,'13','BO of Ticketing',NULL,NULL,NULL,NULL,NULL,NULL,4,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (18,'13','BO of Coordinating',NULL,NULL,NULL,NULL,NULL,NULL,4,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (19,'13','BO of Appoinment',NULL,NULL,NULL,NULL,NULL,NULL,4,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (20,'13','BO of Discipline',NULL,NULL,NULL,NULL,NULL,NULL,4,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (21,'13','MSO of Data Processing Unit',NULL,NULL,NULL,NULL,NULL,NULL,4,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (22,'13','MSO of Pension',NULL,NULL,NULL,NULL,NULL,NULL,5,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (23,'13','MSO of OPS',NULL,NULL,NULL,NULL,NULL,NULL,5,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (24,'13','MSO of Season',NULL,NULL,NULL,NULL,NULL,NULL,5,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (25,'13','MSO of Ticketing',NULL,NULL,NULL,NULL,NULL,NULL,5,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (26,'13','MSO of Coordinating',NULL,NULL,NULL,NULL,NULL,NULL,5,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (27,'13','MSO of Appoinment',NULL,NULL,NULL,NULL,NULL,NULL,5,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (28,'13','MSO of Discipline',NULL,NULL,NULL,NULL,NULL,NULL,5,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (29,'13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (30,'13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (31,'13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (35,'87',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-08 16:38:29',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`role_id`,`regDate`,`updationDate`,`passUdateDate`) VALUES (36,'78',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-08 16:38:55',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
