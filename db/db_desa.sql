/*
SQLyog Ultimate v11.33 (32 bit)
MySQL - 10.1.29-MariaDB : Database - desa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`desa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `desa`;

/*Table structure for table `kas` */

DROP TABLE IF EXISTS `kas`;

CREATE TABLE `kas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `kas` */

insert  into `kas`(`id`,`nama`,`tahun`,`jumlah`) values (4,'Pajak',2019,12000000);

/*Table structure for table `proyek` */

DROP TABLE IF EXISTS `proyek`;

CREATE TABLE `proyek` (
  `id_proyek` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` text,
  `anggaran` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_proyek`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `proyek` */

insert  into `proyek`(`id_proyek`,`nama`,`alamat`,`anggaran`,`status`,`tahun`) values (18,'Jembatan baru','Kelurahan Karangharjo, Glenmore, Banyuwangi',30000000,'Pendidikan',2019),(19,'Jembatan Gantung baru','Karangharjo Glenmore Banyuwangi',12000000,'Infrastruktur',2019),(20,'Jembatan','Banyuwangi',13000000,'Infrastruktur',2019);

/*Table structure for table `tender` */

DROP TABLE IF EXISTS `tender`;

CREATE TABLE `tender` (
  `id_tender` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek` int(11) DEFAULT NULL,
  `nama_pt` varchar(255) DEFAULT NULL,
  `alamat_pt` text,
  `wkt_mulai` date DEFAULT NULL,
  `wkt_akhir` date DEFAULT NULL,
  PRIMARY KEY (`id_tender`),
  KEY `id1` (`id_proyek`),
  CONSTRAINT `id1` FOREIGN KEY (`id_proyek`) REFERENCES `proyek` (`id_proyek`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tender` */

insert  into `tender`(`id_tender`,`id_proyek`,`nama_pt`,`alamat_pt`,`wkt_mulai`,`wkt_akhir`) values (6,18,'PT. Weltes','Kampung baru','2019-08-26','2019-08-31'),(7,NULL,'PT. Adhi Karya','Kebayoran Lama Jakarta pusat','2019-08-01','2019-08-07'),(9,19,'PT. Adhi Karya','Kebayoran lama jakarta pusat','2019-08-01','2019-08-31'),(10,20,'PT. Adhi Karya','Jonggol','2019-08-01','2019-08-31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
