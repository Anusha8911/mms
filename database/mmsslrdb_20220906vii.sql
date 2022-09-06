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
USE `mmsslrdb`;

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
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

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

/*Table structure for table `states` */

CREATE TABLE `states` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `State` VARCHAR(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MYISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `states` */

INSERT  INTO `states`(`id`,`State`) VALUES (1,'Andaman and Nicobar Island (UT)');
INSERT  INTO `states`(`id`,`State`) VALUES (2,'Andhra Pradesh');
INSERT  INTO `states`(`id`,`State`) VALUES (3,'Arunachal Pradesh');
INSERT  INTO `states`(`id`,`State`) VALUES (4,'Assam');
INSERT  INTO `states`(`id`,`State`) VALUES (5,'Bihar');
INSERT  INTO `states`(`id`,`State`) VALUES (6,'Chandigarh (UT)');
INSERT  INTO `states`(`id`,`State`) VALUES (7,'Chhattisgarh');
INSERT  INTO `states`(`id`,`State`) VALUES (8,'Dadra and Nagar Haveli (UT)');
INSERT  INTO `states`(`id`,`State`) VALUES (9,'Daman and Diu (UT)');
INSERT  INTO `states`(`id`,`State`) VALUES (10,'Delhi (NCT)');
INSERT  INTO `states`(`id`,`State`) VALUES (11,'Goa');
INSERT  INTO `states`(`id`,`State`) VALUES (12,'Gujarat');
INSERT  INTO `states`(`id`,`State`) VALUES (13,'Haryana');
INSERT  INTO `states`(`id`,`State`) VALUES (14,'Himachal Pradesh');
INSERT  INTO `states`(`id`,`State`) VALUES (15,'Jammu and Kashmir');
INSERT  INTO `states`(`id`,`State`) VALUES (16,'Jharkhand');
INSERT  INTO `states`(`id`,`State`) VALUES (17,'Karnataka');
INSERT  INTO `states`(`id`,`State`) VALUES (18,'Kerala');
INSERT  INTO `states`(`id`,`State`) VALUES (19,'Lakshadweep (UT)');
INSERT  INTO `states`(`id`,`State`) VALUES (20,'Madhya Pradesh');
INSERT  INTO `states`(`id`,`State`) VALUES (21,'Maharashtra');
INSERT  INTO `states`(`id`,`State`) VALUES (22,'Manipur');
INSERT  INTO `states`(`id`,`State`) VALUES (23,'Meghalaya');
INSERT  INTO `states`(`id`,`State`) VALUES (24,'Mizoram');
INSERT  INTO `states`(`id`,`State`) VALUES (25,'Nagaland');
INSERT  INTO `states`(`id`,`State`) VALUES (26,'Odisha');
INSERT  INTO `states`(`id`,`State`) VALUES (27,'Puducherry (UT)');
INSERT  INTO `states`(`id`,`State`) VALUES (28,'Punjab');
INSERT  INTO `states`(`id`,`State`) VALUES (29,'Rajastha');
INSERT  INTO `states`(`id`,`State`) VALUES (30,'Sikkim');
INSERT  INTO `states`(`id`,`State`) VALUES (31,'Tamil Nadu');
INSERT  INTO `states`(`id`,`State`) VALUES (32,'Telangana');
INSERT  INTO `states`(`id`,`State`) VALUES (33,'Tripura');
INSERT  INTO `states`(`id`,`State`) VALUES (34,'Uttarakhand');
INSERT  INTO `states`(`id`,`State`) VALUES (35,'Uttar Pradesh');
INSERT  INTO `states`(`id`,`State`) VALUES (36,'West Bengal');

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
) ENGINE=INNODB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

INSERT  INTO `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) VALUES (6,3,'10806121','::1','','','2020-07-20 20:26:45');

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
  `regDate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(),
  `updationDate` VARCHAR(45) DEFAULT NULL,
  `passUdateDate` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `userregistration` */

INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) VALUES (3,'10806121','Anuj','','kumar','male',1234567890,'test@gmail.com','Test@123','2020-07-20 20:26:18',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) VALUES (4,'13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-06 08:28:06',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) VALUES (5,'14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-06 08:30:21',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) VALUES (6,'56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-06 08:31:36',NULL,NULL);
INSERT  INTO `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) VALUES (7,'101',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-06 10:15:39',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
