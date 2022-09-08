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
  `id` int(11) NOT NULL,
  `action` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `actions` */

insert  into `actions`(`id`,`action`) values (1,'Appoinment');
insert  into `actions`(`id`,`action`) values (2,'Calling for meeting');
insert  into `actions`(`id`,`action`) values (3,'Order Convay');
insert  into `actions`(`id`,`action`) values (4,'Order Submitted to AO');
insert  into `actions`(`id`,`action`) values (5,'Under MSO Study');
insert  into `actions`(`id`,`action`) values (6,'Sent for Answer');
insert  into `actions`(`id`,`action`) values (7,'File is closed');
insert  into `actions`(`id`,`action`) values (8,'Desicion taken & forword');

/*Table structure for table `admin` */

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

insert  into `admin`(`id`,`username`,`email`,`password`,`reg_date`,`updation_date`) values (1,'admin','anuj.lpu1@gmail.com','Test@1234','2016-04-05 02:01:45','2016-04-17');

/*Table structure for table `adminlog` */

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlog` */

/*Table structure for table `branches` */

CREATE TABLE `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `branches` */

insert  into `branches`(`id`,`branch_name`) values (1,'Data Processing Unit');
insert  into `branches`(`id`,`branch_name`) values (2,'Pension');
insert  into `branches`(`id`,`branch_name`) values (3,'OPS');
insert  into `branches`(`id`,`branch_name`) values (4,'Season');
insert  into `branches`(`id`,`branch_name`) values (5,'Ticketing');
insert  into `branches`(`id`,`branch_name`) values (6,'Coordinating');
insert  into `branches`(`id`,`branch_name`) values (7,'Appoinment');
insert  into `branches`(`id`,`branch_name`) values (8,'Discipline');

/*Table structure for table `devisions` */

CREATE TABLE `devisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devision_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

/*Data for the table `devisions` */

insert  into `devisions`(`id`,`devision_name`) values (1,'GM Office');
insert  into `devisions`(`id`,`devision_name`) values (2,'CR');
insert  into `devisions`(`id`,`devision_name`) values (3,'COM');
insert  into `devisions`(`id`,`devision_name`) values (4,'SRS');

/*Table structure for table `mainmailrecivers` */

CREATE TABLE `mainmailrecivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mainmailreciver_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `mainmailrecivers` */

insert  into `mainmailrecivers`(`id`,`mainmailreciver_name`) values (1,'GMR');
insert  into `mainmailrecivers`(`id`,`mainmailreciver_name`) values (2,'GMA');
insert  into `mainmailrecivers`(`id`,`mainmailreciver_name`) values (3,'GMI');
insert  into `mainmailrecivers`(`id`,`mainmailreciver_name`) values (4,'CFO');
insert  into `mainmailrecivers`(`id`,`mainmailreciver_name`) values (5,'None');

/*Table structure for table `positions` */

CREATE TABLE `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `positions` */

insert  into `positions`(`id`,`position_name`) values (1,'AO');
insert  into `positions`(`id`,`position_name`) values (2,'BO');
insert  into `positions`(`id`,`position_name`) values (3,'DO');
insert  into `positions`(`id`,`position_name`) values (4,'MSO');
insert  into `positions`(`id`,`position_name`) values (5,'Subject Clark');
insert  into `positions`(`id`,`position_name`) values (6,'Branch Member');

/*Table structure for table `registration` */

CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recidate` date DEFAULT NULL,
  `devision` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `recitype` varchar(500) DEFAULT NULL,
  `regplace` varchar(250) DEFAULT NULL,
  `action` varchar(1000) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `mainreciver` varchar(1000) DEFAULT NULL,
  `position` varchar(500) DEFAULT NULL,
  `action2` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`id`,`recidate`,`devision`,`regno`,`subject`,`title`,`recitype`,`regplace`,`action`,`comment`,`branch`,`mainreciver`,`position`,`action2`) values (5,'2022-08-01','CR',57,'1','ee','By Normal Post','ee','Appoinment','ee','Ticketing','GMR','BO','Sent for Answer');

/*Table structure for table `rooms` */

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

insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (1,5,100,8000,'2020-04-12 04:15:43');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (2,2,201,6000,'2020-04-12 07:00:47');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (3,2,200,6000,'2020-04-12 07:00:58');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (4,3,112,4000,'2020-04-12 07:01:07');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (5,5,132,2000,'2020-04-12 07:01:15');


---------------------------------------------------------




CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_name varchar(150) ,
  role_id int (11) ,
  PRIMARY KEY (id),
FOREIGN KEY (role_id) REFERENCES role(role_id)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;



insert  into user (id,user_name,role_id) values (1,'GMR',1);
insert  into user (id,user_name,role_id) values (2,'GMA',2);
insert  into user (id,user_name,role_id) values (3,'GMI',2);
insert  into user (id,user_name,role_id) values (4,'CFO',2);
insert  into user (id,user_name,role_id) values (5,'AO of Data Processing Unit',3);
insert  into user (id,user_name,role_id) values (6,'AO of Pension',3);
insert  into user (id,user_name,role_id) values (7,'AO of OPS',3);
insert  into user (id,user_name,role_id) values (8,'AO of Season',3);
insert  into user (id,user_name,role_id) values (9,'AO of Ticketing',3);
insert  into user (id,user_name,role_id) values (10,'AO of Coordinating',3);
insert  into user (id,user_name,role_id) values (11,'AO of Appoinment',3);
insert  into user (id,user_name,role_id) values (12,'BO of Data Processing Unit',3);
insert  into user (id,user_name,role_id) values (13,'BO of Pension',4);
insert  into user (id,user_name,role_id) values (14,'BO of OPS',4);
insert  into user (id,user_name,role_id) values (15,'BO of Season',4);
insert  into user (id,user_name,role_id) values (16,'BO of Ticketing',4);
insert  into user (id,user_name,role_id) values (17,'BO of Coordinating',4);
insert  into user (id,user_name,role_id) values (18,'BO of Appoinment',4);
insert  into user (id,user_name,role_id) values (19,'BO of Discipline',4);
insert  into user (id,user_name,role_id) values (20,'MSO of Data Processing Unit',5);
insert  into user (id,user_name,role_id) values (21,'MSO of Pension',5);
insert  into user (id,user_name,role_id) values (22,'MSO of OPS',5);
insert  into user (id,user_name,role_id) values (23,'MSO of Season',5);
insert  into user (id,user_name,role_id) values (24,'MSO of Ticketing',5);
insert  into user (id,user_name,role_id) values (25,'MSO of Coordinating',5);
insert  into user (id,user_name,role_id) values (26,'MSO of Appoinment',5);
insert  into user (id,user_name,role_id) values (27,'MSO of Discipline',5);




/*Table structure for table `userlog` */

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (6,3,'10806121','::1','','','2020-07-20 20:26:45');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (7,3,'test@gmail.com','::1','','','2022-09-08 09:21:56');

/*Table structure for table `userregistration` */

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `userregistration` */

insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (3,'10806121','Anuj','','kumar','male',1234567890,'test@gmail.com','Test@123','2020-07-20 20:26:18',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (4,'13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-06 08:28:06',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (5,'14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-06 08:30:21',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (6,'56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-06 08:31:36',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (7,'101',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-06 10:15:39',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (8,'57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-08 09:04:13',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

CREATE TABLE role (
  Id int(11) NOT NULL AUTO_INCREMENT,
  role_name varchar(100) NOT NULL,
 PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

insert  into role (id,role_name) values (1,'GMR level');
insert  into role (id,role_name) values (2,'DGM level');
insert  into role (id,role_name) values (3,'AO level');
insert  into role (id,role_name) values (4,'BO level');
insert  into role (id,role_name) values (5,'MSO level');