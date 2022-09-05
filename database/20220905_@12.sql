/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.5-10.4.24-MariaDB : Database - mmsslrdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `mmsslrdb`;

/*Table structure for table `actions` */

DROP TABLE IF EXISTS `actions`;

CREATE TABLE `actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `actions` */

LOCK TABLES `actions` WRITE;

insert  into `actions`(`id`,`action`) values (1,'Appoinment');
insert  into `actions`(`id`,`action`) values (2,'Calling for meeting');
insert  into `actions`(`id`,`action`) values (3,'Order Convay');
insert  into `actions`(`id`,`action`) values (4,'Order Submitted to AO');
insert  into `actions`(`id`,`action`) values (5,'Under MSO Study');
insert  into `actions`(`id`,`action`) values (6,'Sent for Answer');
insert  into `actions`(`id`,`action`) values (7,'File is closed');
insert  into `actions`(`id`,`action`) values (8,'Desicion taken & forword');

UNLOCK TABLES;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

LOCK TABLES `admin` WRITE;

insert  into `admin`(`id`,`username`,`email`,`password`,`reg_date`,`updation_date`) values (1,'admin','anuj.lpu1@gmail.com','Test@1234','2016-04-05 02:01:45','2016-04-17');

UNLOCK TABLES;

/*Table structure for table `adminlog` */

DROP TABLE IF EXISTS `adminlog`;

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlog` */

LOCK TABLES `adminlog` WRITE;

UNLOCK TABLES;

/*Table structure for table `devisions` */

DROP TABLE IF EXISTS `devisions`;

CREATE TABLE `devisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devision_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

/*Data for the table `devisions` */

LOCK TABLES `devisions` WRITE;

insert  into `devisions`(`id`,`devision_name`) values (1,'GM Office');
insert  into `devisions`(`id`,`devision_name`) values (2,'CR');
insert  into `devisions`(`id`,`devision_name`) values (3,'COM');
insert  into `devisions`(`id`,`devision_name`) values (4,'SRS');

UNLOCK TABLES;

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recidate` date DEFAULT NULL,
  `devision` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `recitype` varchar(500) DEFAULT NULL,
  `regplace` varchar(250) DEFAULT NULL,
  `action` varchar(500) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

LOCK TABLES `registration` WRITE;

insert  into `registration`(`id`,`recidate`,`devision`,`regno`,`subject`,`title`,`recitype`,`regplace`,`action`,`comment`) values (1,'2022-09-05','GM Office',11,'1','repair','By Hand','colombo','Desicion taken & forword','good');

UNLOCK TABLES;

/*Table structure for table `rooms` */

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `room_no` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `rooms` */

LOCK TABLES `rooms` WRITE;

insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (1,5,100,8000,'2020-04-12 04:15:43');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (2,2,201,6000,'2020-04-12 07:00:47');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (3,2,200,6000,'2020-04-12 07:00:58');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (4,3,112,4000,'2020-04-12 07:01:07');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (5,5,132,2000,'2020-04-12 07:01:15');

UNLOCK TABLES;

/*Table structure for table `states` */

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `State` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `states` */

LOCK TABLES `states` WRITE;

insert  into `states`(`id`,`State`) values (1,'Andaman and Nicobar Island (UT)');
insert  into `states`(`id`,`State`) values (2,'Andhra Pradesh');
insert  into `states`(`id`,`State`) values (3,'Arunachal Pradesh');
insert  into `states`(`id`,`State`) values (4,'Assam');
insert  into `states`(`id`,`State`) values (5,'Bihar');
insert  into `states`(`id`,`State`) values (6,'Chandigarh (UT)');
insert  into `states`(`id`,`State`) values (7,'Chhattisgarh');
insert  into `states`(`id`,`State`) values (8,'Dadra and Nagar Haveli (UT)');
insert  into `states`(`id`,`State`) values (9,'Daman and Diu (UT)');
insert  into `states`(`id`,`State`) values (10,'Delhi (NCT)');
insert  into `states`(`id`,`State`) values (11,'Goa');
insert  into `states`(`id`,`State`) values (12,'Gujarat');
insert  into `states`(`id`,`State`) values (13,'Haryana');
insert  into `states`(`id`,`State`) values (14,'Himachal Pradesh');
insert  into `states`(`id`,`State`) values (15,'Jammu and Kashmir');
insert  into `states`(`id`,`State`) values (16,'Jharkhand');
insert  into `states`(`id`,`State`) values (17,'Karnataka');
insert  into `states`(`id`,`State`) values (18,'Kerala');
insert  into `states`(`id`,`State`) values (19,'Lakshadweep (UT)');
insert  into `states`(`id`,`State`) values (20,'Madhya Pradesh');
insert  into `states`(`id`,`State`) values (21,'Maharashtra');
insert  into `states`(`id`,`State`) values (22,'Manipur');
insert  into `states`(`id`,`State`) values (23,'Meghalaya');
insert  into `states`(`id`,`State`) values (24,'Mizoram');
insert  into `states`(`id`,`State`) values (25,'Nagaland');
insert  into `states`(`id`,`State`) values (26,'Odisha');
insert  into `states`(`id`,`State`) values (27,'Puducherry (UT)');
insert  into `states`(`id`,`State`) values (28,'Punjab');
insert  into `states`(`id`,`State`) values (29,'Rajastha');
insert  into `states`(`id`,`State`) values (30,'Sikkim');
insert  into `states`(`id`,`State`) values (31,'Tamil Nadu');
insert  into `states`(`id`,`State`) values (32,'Telangana');
insert  into `states`(`id`,`State`) values (33,'Tripura');
insert  into `states`(`id`,`State`) values (34,'Uttarakhand');
insert  into `states`(`id`,`State`) values (35,'Uttar Pradesh');
insert  into `states`(`id`,`State`) values (36,'West Bengal');

UNLOCK TABLES;

/*Table structure for table `userlog` */

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

LOCK TABLES `userlog` WRITE;

insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (6,3,'10806121','::1','','','2020-07-20 20:26:45');

UNLOCK TABLES;

/*Table structure for table `userregistration` */

DROP TABLE IF EXISTS `userregistration`;

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `userregistration` */

LOCK TABLES `userregistration` WRITE;

insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (3,'10806121','Anuj','','kumar','male',1234567890,'test@gmail.com','Test@123','2020-07-20 20:26:18',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (4,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-05 12:19:07',NULL,NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
