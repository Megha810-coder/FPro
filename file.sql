/*
SQLyog Trial v13.1.5  (64 bit)
MySQL - 10.1.38-MariaDB : Database - file
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`file` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `file`;

/*Table structure for table `bill` */

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_active` varchar(5) DEFAULT NULL,
  `bill_name` varchar(30) DEFAULT NULL,
  `pro_quantity` float DEFAULT NULL,
  `pro_rate` varchar(20) DEFAULT NULL,
  `sale_rate` float DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bill` */

/*Table structure for table `erp_enquiry_request` */

DROP TABLE IF EXISTS `erp_enquiry_request`;

CREATE TABLE `erp_enquiry_request` (
  `enq_id` int(11) NOT NULL AUTO_INCREMENT,
  `enq_company_name` varchar(100) DEFAULT NULL,
  `enq_contact_id` int(11) DEFAULT NULL,
  `enq_date` date DEFAULT NULL,
  `enq_description` varchar(255) DEFAULT NULL,
  `enq_email` varchar(100) DEFAULT NULL,
  `enq_name` varchar(100) NOT NULL,
  `enq_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`enq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `erp_enquiry_request` */

/*Table structure for table `newbill` */

DROP TABLE IF EXISTS `newbill`;

CREATE TABLE `newbill` (
  `nbill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_active` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `loss` int(11) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `pro_name` varchar(30) DEFAULT NULL,
  `profit` int(11) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `rate` varchar(30) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL,
  `unitPrice` varchar(30) DEFAULT NULL,
  `unitTotal` varchar(30) DEFAULT NULL,
  `unit_rate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`nbill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `newbill` */

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `person` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_quantity` varchar(30) DEFAULT NULL,
  `p_active` varchar(5) DEFAULT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `rate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

/*Table structure for table `product_report` */

DROP TABLE IF EXISTS `product_report`;

CREATE TABLE `product_report` (
  `pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(30) DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `loss` int(11) DEFAULT NULL,
  `pr_active` varchar(30) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `pro_name` varchar(30) DEFAULT NULL,
  `profit` int(11) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `rate` varchar(30) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL,
  `unitPrice` varchar(30) DEFAULT NULL,
  `unitTotal` varchar(30) DEFAULT NULL,
  `unit_rate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_report` */

/*Table structure for table `proposal` */

DROP TABLE IF EXISTS `proposal`;

CREATE TABLE `proposal` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `college_code` varchar(30) DEFAULT NULL,
  `contact_no` varchar(30) DEFAULT NULL,
  `file_status` varchar(30) DEFAULT NULL,
  `proposal` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `cleark` varchar(30) DEFAULT NULL,
  `pro_active` varchar(30) DEFAULT NULL,
  `ass_clerk` varchar(30) DEFAULT NULL,
  `head_clerk` varchar(30) DEFAULT NULL,
  `dy_director` varchar(30) DEFAULT NULL,
  `dist_director` varchar(30) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `proposal` */

insert  into `proposal`(`pro_id`,`pro_name`,`address`,`college_code`,`contact_no`,`file_status`,`proposal`,`email`,`cleark`,`pro_active`,`ass_clerk`,`head_clerk`,`dy_director`,`dist_director`,`date`) values 
(16,'jhgsddff','af','sdft','fsad','1','sdf','email','1','1',NULL,NULL,NULL,NULL,'2019-09-09'),
(28,'dfaf','adf','adf','adf','0','adf','afd','1','1',NULL,NULL,NULL,NULL,'2019-09-09'),
(29,'dfaf','adf','adf','adf','0','adf','afd','0','1',NULL,NULL,NULL,NULL,'2019-10-08'),
(30,'sdf','ert','errt','ert','1','ert','ert','1','1',NULL,NULL,NULL,NULL,'2019-09-09'),
(31,'rtret','t','t','t','1','t','t','1','0',NULL,NULL,NULL,NULL,'2019-09-09'),
(32,'sdf','asdd','sdft','sdf','1','asd','mayuri@gmail.','1','1','1','1','1',NULL,'2019-10-09'),
(33,'sdf','sdf','sdft','sdf','1','zsa','cdfssghv','1','1','-',NULL,NULL,NULL,'2018-12-04'),
(34,'ABC','sdf','abc','sdf','1','afd','dsf','1','1','1','1','1','1','2019-09-09'),
(35,'XYZ','dfg','fdg','dfg','0','dfg','dfg','0','1','0','0','0','0','2019-09-09'),
(36,'ABC','sdf','abc','sdf','1','afd','dsf','1','1','1','1','1','1','2019-09-09'),
(37,'XYZ','dfg','fdg','dfg','0','dfg','dfg','0','1','0','0','0','0','2019-09-09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
