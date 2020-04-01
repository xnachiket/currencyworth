-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: cr
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can view permission',1,'view_permission'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can view group',2,'view_group'),(9,'Can add user',3,'add_user'),(10,'Can change user',3,'change_user'),(11,'Can delete user',3,'delete_user'),(12,'Can view user',3,'view_user'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add log entry',5,'add_logentry'),(18,'Can change log entry',5,'change_logentry'),(19,'Can delete log entry',5,'delete_logentry'),(20,'Can view log entry',5,'view_logentry'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add pp',7,'add_pp'),(26,'Can change pp',7,'change_pp'),(27,'Can delete pp',7,'delete_pp'),(28,'Can view pp',7,'view_pp');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$dG6F2UVcfGZz$MjnUa4rR6FQbefLPQztqY184k7WUEIdaB4rL3k6qcz0=','2020-03-29 17:53:43.830268',1,'alkan','','','',1,1,'2020-03-29 17:51:22.923474');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (5,'admin','logentry'),(2,'auth','group'),(1,'auth','permission'),(3,'auth','user'),(4,'contenttypes','contenttype'),(7,'home','pp'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-29 17:48:41.857236'),(2,'auth','0001_initial','2020-03-29 17:48:43.693431'),(3,'contenttypes','0002_remove_content_type_name','2020-03-29 17:48:50.324804'),(4,'auth','0002_alter_permission_name_max_length','2020-03-29 17:48:50.438823'),(5,'auth','0003_alter_user_email_max_length','2020-03-29 17:48:50.574199'),(6,'auth','0004_alter_user_username_opts','2020-03-29 17:48:50.628373'),(7,'auth','0005_alter_user_last_login_null','2020-03-29 17:48:51.119499'),(8,'auth','0006_require_contenttypes_0002','2020-03-29 17:48:51.153368'),(9,'auth','0007_alter_validators_add_error_messages','2020-03-29 17:48:51.208229'),(10,'auth','0008_alter_user_username_max_length','2020-03-29 17:48:51.349104'),(11,'auth','0009_alter_user_last_name_max_length','2020-03-29 17:48:51.471780'),(12,'auth','0010_alter_group_name_max_length','2020-03-29 17:48:51.595194'),(13,'auth','0011_update_proxy_permissions','2020-03-29 17:48:51.651727'),(14,'admin','0001_initial','2020-03-29 17:52:46.316944'),(15,'admin','0002_logentry_remove_auto_add','2020-03-29 17:52:47.936100'),(16,'admin','0003_logentry_add_action_flag_choices','2020-03-29 17:52:47.990947'),(17,'sessions','0001_initial','2020-03-29 17:52:48.382106'),(18,'home','0001_initial','2020-03-29 18:52:20.133612'),(19,'home','0002_auto_20200329_1933','2020-03-29 19:33:11.340606'),(20,'home','0003_auto_20200329_1947','2020-03-29 19:47:47.872568'),(21,'home','0004_auto_20200329_2004','2020-03-29 20:04:38.253641'),(22,'home','0005_auto_20200329_2010','2020-03-29 20:10:44.612022'),(23,'home','0006_auto_20200329_2019','2020-03-29 20:20:10.775776'),(24,'home','0007_auto_20200329_2027','2020-03-29 20:27:09.037177'),(25,'home','0008_auto_20200330_0647','2020-03-30 06:47:39.547959');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bu4613llzyse9t56xrtwrhpngkz4we4h','ZTZhODFiZTZiMDBhM2Y1ZjJjNzdhNzNhOTEzZmFkYTU1MmYyZWZjNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMGM3MDk3ZTIzNmUyMjk1MWQyNzc4YTAwNzVjMDQxMWIwYjYwMTI4In0=','2020-04-12 17:53:43.876425');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_now`
--

DROP TABLE IF EXISTS `home_now`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_now` (
  `Name` varchar(256) DEFAULT NULL,
  `Code` varchar(256) DEFAULT NULL,
  `Value` varchar(256) DEFAULT NULL,
  `Currency` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_now`
--

LOCK TABLES `home_now` WRITE;
/*!40000 ALTER TABLE `home_now` DISABLE KEYS */;
INSERT INTO `home_now` VALUES ('Afghanistan','AFG','19.274','AFN'),('Albania','ALB','42.575','ALL'),('Algeria','DZA','30.988','DZD'),('Angola','AGO','134.5088','AOA'),('Antigua and Barbuda','ATG','1.6809','XCD'),('Argentina','ARG','15.9268','ARS'),('Armenia','ARM','196.6889','AMD'),('Australia','AUS','1.4327','AUD'),('Austria','AUT','0.7862','ATS (EURO)'),('Azerbaijan','AZE','0.4448','AZN'),('Bahamas, The','BHS','1.0041','BSD'),('Bahrain','BHR','0.1912','BHD'),('Bangladesh','BGD','31.9032','BDT'),('Barbados','BRB','1.9348','BBD'),('Belarus','BLR','0.641','BYR'),('Belgium','BEL','0.7831','BEF (EURO)'),('Belize','BLZ','1.1297','BZD'),('Benin','BEN','206.5195','XOF'),('Bhutan','BTN','21.814','BTN'),('Bolivia','BOL','3.1145','BOB'),('Bosnia and Herzegovina','BIH','0.6873','BAM'),('Botswana','BWA','4.5247','BWP'),('Brazil','BRA','2.025','BRL'),('Brunei Darussalam','BRN','0.5272','BND'),('Bulgaria','BGR','0.6997','BGN'),('Burkina Faso','BFA','200.2165','XAF'),('Burundi','BDI','651.0521','BIF'),('Cabo Verde','CPV','45.5586','CVE'),('Cambodia','KHM','1404.7425','KHR'),('Cameroon','CMR','225.1809','CFA'),('Canada','CAN','1.2447','CAD'),('Central African Republic','CAF','307.4262','CFA'),('Chad','TCD','205.6403','CFA'),('Chile','CHL','404.8476','CLP'),('China','CHN','3.5447','CNY'),('Colombia','COL','1312.7361','COP'),('Comoros','COM','202.4672','KMF'),('Congo, Dem. Rep.','COD','977.8203','CDF'),('Congo, Rep.','COG','210.6399','CDF'),('Costa Rica','CRI','392.7011','CRC'),('Cote d\'Ivoire','CIV','226.606','XOF'),('Croatia','HRV','3.3944','HRK'),('Curacao','CUW','1.2625','ANG'),('Cyprus','CYP','0.6308','CYP (EURO)'),('Czech Republic','CZE','12.6183','CZK'),('Denmark','DNK','6.9588','DKK'),('Dominica','DMA','1.8658','XCD'),('Dominican Republic','DOM','22.4579','DOP'),('Ecuador','ECU','0.5407','USD'),('Egypt, Arab Rep.','EGY','3.6323','EGP'),('El Salvador','SLV','0.4871','SVC'),('Equatorial Guinea','GNQ','250.7412','XAF'),('Estonia','EST','0.5479','EEK (EURO)'),('Eswatini','SWZ','5.1605','SZL'),('Ethiopia','ETH','9.9715','ETB'),('Fiji','FJI','1.2024','FJD'),('Finland','FIN','0.8776','FIM (EURO)'),('France','FRA','0.7747','EUR'),('Gabon','GAB','247.2332','XAF'),('Gambia, The','GMB','13.2014','GMD'),('Georgia','GEO','0.9958','GEL'),('Germany','DEU','0.7598','DMK (EURO)'),('Ghana','GHA','2.1274','GHS'),('Greece','GRC','0.5819','GRD (EURO)'),('Grenada','GRD','1.8467','XCD'),('Guatemala','GTM','4.042','GTQ'),('Guinea','GIN','3160.7149','GNF'),('Guinea-Bissau','GNB','240.3087','XOF'),('Guyana','GUY','119.6914','GYD'),('Haiti','HTI','30.4309','HTG'),('Honduras','HND','11.6292','HNL'),('Hong Kong SAR, China','HKG','5.9066','HKD'),('Hungary','HUN','140.4117','HUF'),('Iceland','ISL','138.3279','ISK'),('India','IND','18.1046','INR'),('Indonesia','IDN','4238.1118','IDR'),('Iraq','IRQ','395.506','IQD'),('Ireland','IRL','0.8024','IED (EURO)'),('Israel','ISR','3.7521','ILS'),('Italy','ITA','0.6984','ITL (EURO)'),('Jamaica','JAM','73.9824','JMD'),('Japan','JPN','101.3734','JPY'),('Jordan','JOR','0.3177','JOD'),('Kazakhstan','KAZ','121.3232','KZT'),('Kenya','KEN','49.9696','KES'),('Kiribati','KIR','0.9483','XCD'),('Korea, Rep.','KOR','860.5082','KRW'),('Kosovo','XKX','0.3212','EUR'),('Kuwait','KWT','0.1408','KWD'),('Kyrgyz Republic','KGZ','22.7068','KGS'),('Lao PDR','LAO','2901.2017','LAK'),('Latvia','LVA','0.4993','LVL (EURO)'),('Lebanon','LBN','953.0313','LBP'),('Lesotho','LSO','5.3474','LSL'),('Liberia','LBR','0.5176','LRD'),('Libya','LBY','0.4761','LYD'),('Lithuania','LTU','0.4576','LTL (EURO)'),('Luxembourg','LUX','0.8719','LUF (EURO)'),('Macao SAR, China','MAC','5.6823','MOP'),('Madagascar','MDG','929.897','MGA'),('Malawi','MWI','217.5208','MWK'),('Malaysia','MYS','1.444','MYR'),('Maldives','MDV','10.3867','MVR'),('Mali','MLI','215.8099','XOF'),('Malta','MLT','0.5986','MTL (EURO)'),('Marshall Islands','MHL','0.9496','USD'),('Mauritania','MRT','10.2245','MRO'),('Mauritius','MUS','16.0574','MUR'),('Mexico','MEX','9.3808','MXN'),('Micronesia, Fed. Sts.','FSM','1.0043','USD'),('Moldova','MDA','7.4571','MDL'),('Mongolia','MNG','738.4774','MNT'),('Montenegro','MNE','0.3621','EUR'),('Morocco','MAR','3.512','MAD'),('Mozambique','MOZ','20.6202','MZN'),('Myanmar','MMR','290.1687','MMK'),('Namibia','NAM','7.0691','NAD'),('Nauru','NRU','0.773','AUD'),('Nepal','NPL','34.9282','NPR'),('Netherlands','NLD','0.7975','NLG (EURO)'),('New Zealand','NZL','1.4784','NZD'),('Nicaragua','NIC','11.5691','NIO'),('Niger','NER','216.3358','NGN'),('Nigeria','NGA','110.0276','NGN'),('North Macedonia','MKD','19.3784','MKD'),('Norway','NOR','10.1419','NOK'),('Oman','OMN','0.1508','OMR'),('Pakistan','PAK','29.3027','PKR'),('Palau','PLW','0.8568','USD'),('Panama','PAN','0.6095','PAB'),('Papua New Guinea','PNG','2.0646','PGK'),('Paraguay','PRY','2453.7815','PYG'),('Peru','PER','1.5823','PEN'),('Philippines','PHL','18.254','PHP'),('Poland','POL','1.7773','PLZ'),('Portugal','PRT','0.5935','PTE (EURO)'),('Puerto Rico','PRI','0.8005','USD'),('Qatar','QAT','1.9733','QAR'),('Romania','ROU','1.719','RON'),('Russian Federation','RUS','25.6434','RUB'),('Rwanda','RWA','295.6533','RWF'),('Samoa','WSM','1.6559','WST'),('Sao Tome and Principe','STP','12.1469','STD'),('Saudi Arabia','SAU','1.5816','SAR'),('Senegal','SEN','223.6003','XOF'),('Serbia','SRB','41.6373','RSD'),('Seychelles','SYC','7.4818','SCR'),('Sierra Leone','SLE','2643.8764','SLL'),('Singapore','SGP','0.8579','SGD'),('Slovak Republic','SVK','0.4882','SKK (EURO)'),('Slovenia','SVN','0.5817','SIT (EURO)'),('Solomon Islands','SLB','7.0166','SBD'),('South Africa','ZAF','6.1631','ZAR'),('Spain','ESP','0.6479','ESP (EURO)'),('Sri Lanka','LKA','49.4904','LKR'),('St. Kitts and Nevis','KNA','1.7229','XCD'),('St. Lucia','LCA','2.0552','XCD'),('St. Vincent and the Grenadines','VCT','1.6175','XCD'),('Sudan','SDN','4.9956','SDG'),('Suriname','SUR','2.9994','SRD'),('Sweden','SWE','8.9211','SEK'),('Switzerland','CHE','1.1896','CHF'),('Tajikistan','TJK','2.1928','TJS'),('Tanzania','TZA','741.2544','TZS'),('Thailand','THA','12.3356','THB'),('Timor-Leste','TLS','0.2658','USD'),('Togo','TGO','212.5961','XOF'),('Tonga','TON','1.4913','TOP'),('Trinidad and Tobago','TTO','3.6228','TTD'),('Tunisia','TUN','0.7299','TND'),('Turkey','TUR','1.6119','TRY'),('Turkmenistan','TKM','1.2631','TMM'),('Turks and Caicos Islands','TCA','1.0698','USD'),('Tuvalu','TUV','1.2231','TVD'),('Uganda','UGA','1153.9039','UGX'),('Ukraine','UKR','9.1022','UAH'),('United Arab Emirates','ARE','2.1037','AED'),('United Kingdom','GBR','0.7002','GBP'),('United States','USA','1','USD'),('Uruguay','URY','22.5211','UYU'),('Uzbekistan','UZB','1445.2503','UZS'),('Vanuatu','VUT','106.842','VUV'),('Vietnam','VNM','7788.9096','VEB'),('West Bank and Gaza','PSE','2.227','VND'),('Yemen, Rep.','YEM','195.8405','YER'),('Zambia','ZMB','3.8127','ZMK'),('Zimbabwe','ZWE','0.7086','ZWD');
/*!40000 ALTER TABLE `home_now` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_tablex`
--

DROP TABLE IF EXISTS `home_tablex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_tablex` (
  `Name` varchar(256) NOT NULL,
  `Code` varchar(256) DEFAULT NULL,
  `Value` varchar(256) DEFAULT NULL,
  `Currency` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_tablex`
--

LOCK TABLES `home_tablex` WRITE;
/*!40000 ALTER TABLE `home_tablex` DISABLE KEYS */;
INSERT INTO `home_tablex` VALUES ('Afghanistan','AFG','19.274','AFN'),('Albania','ALB','42.575','ALL'),('Algeria','DZA','30.988','DZD'),('Angola','AGO','134.5088','AOA'),('Antigua and Barbuda','ATG','1.6809','XCD'),('Argentina','ARG','15.9268','ARS'),('Armenia','ARM','196.6889','AMD'),('Australia','AUS','1.4327','AUD'),('Austria','AUT','0.7862','ATS (EURO)'),('Azerbaijan','AZE','0.4448','AZN'),('Bahamas, The','BHS','1.0041','BSD'),('Bahrain','BHR','0.1912','BHD'),('Bangladesh','BGD','31.9032','BDT'),('Barbados','BRB','1.9348','BBD'),('Belarus','BLR','0.641','BYR'),('Belgium','BEL','0.7831','BEF (EURO)'),('Belize','BLZ','1.1297','BZD'),('Benin','BEN','206.5195','XOF'),('Bhutan','BTN','21.814','BTN'),('Bolivia','BOL','3.1145','BOB'),('Bosnia and Herzegovina','BIH','0.6873','BAM'),('Botswana','BWA','4.5247','BWP'),('Brazil','BRA','2.025','BRL'),('Brunei Darussalam','BRN','0.5272','BND'),('Bulgaria','BGR','0.6997','BGN'),('Burkina Faso','BFA','200.2165','XAF'),('Burundi','BDI','651.0521','BIF'),('Cabo Verde','CPV','45.5586','CVE'),('Cambodia','KHM','1404.7425','KHR'),('Cameroon','CMR','225.1809','CFA'),('Canada','CAN','1.2447','CAD'),('Central African Republic','CAF','307.4262','CFA'),('Chad','TCD','205.6403','CFA'),('Chile','CHL','404.8476','CLP'),('China','CHN','3.5447','CNY'),('Colombia','COL','1312.7361','COP'),('Comoros','COM','202.4672','KMF'),('Congo, Dem. Rep.','COD','977.8203','CDF'),('Congo, Rep.','COG','210.6399','CDF'),('Costa Rica','CRI','392.7011','CRC'),('Cote d\'Ivoire','CIV','226.606','XOF'),('Croatia','HRV','3.3944','HRK'),('Curacao','CUW','1.2625','ANG'),('Cyprus','CYP','0.6308','CYP (EURO)'),('Czech Republic','CZE','12.6183','CZK'),('Denmark','DNK','6.9588','DKK'),('Dominica','DMA','1.8658','XCD'),('Dominican Republic','DOM','22.4579','DOP'),('Ecuador','ECU','0.5407','USD'),('Egypt, Arab Rep.','EGY','3.6323','EGP'),('El Salvador','SLV','0.4871','SVC'),('Equatorial Guinea','GNQ','250.7412','XAF'),('Estonia','EST','0.5479','EEK (EURO)'),('Eswatini','SWZ','5.1605','SZL'),('Ethiopia','ETH','9.9715','ETB'),('Fiji','FJI','1.2024','FJD'),('Finland','FIN','0.8776','FIM (EURO)'),('France','FRA','0.7747','EUR'),('Gabon','GAB','247.2332','XAF'),('Gambia, The','GMB','13.2014','GMD'),('Georgia','GEO','0.9958','GEL'),('Germany','DEU','0.7598','DMK (EURO)'),('Ghana','GHA','2.1274','GHS'),('Greece','GRC','0.5819','GRD (EURO)'),('Grenada','GRD','1.8467','XCD'),('Guatemala','GTM','4.042','GTQ'),('Guinea','GIN','3160.7149','GNF'),('Guinea-Bissau','GNB','240.3087','XOF'),('Guyana','GUY','119.6914','GYD'),('Haiti','HTI','30.4309','HTG'),('Honduras','HND','11.6292','HNL'),('Hong Kong SAR, China','HKG','5.9066','HKD'),('Hungary','HUN','140.4117','HUF'),('Iceland','ISL','138.3279','ISK'),('India','IND','18.1046','INR'),('Indonesia','IDN','4238.1118','IDR'),('Iraq','IRQ','395.506','IQD'),('Ireland','IRL','0.8024','IED (EURO)'),('Israel','ISR','3.7521','ILS'),('Italy','ITA','0.6984','ITL (EURO)'),('Jamaica','JAM','73.9824','JMD'),('Japan','JPN','101.3734','JPY'),('Jordan','JOR','0.3177','JOD'),('Kazakhstan','KAZ','121.3232','KZT'),('Kenya','KEN','49.9696','KES'),('Kiribati','KIR','0.9483','XCD'),('Korea, Rep.','KOR','860.5082','KRW'),('Kosovo','XKX','0.3212','EUR'),('Kuwait','KWT','0.1408','KWD'),('Kyrgyz Republic','KGZ','22.7068','KGS'),('Lao PDR','LAO','2901.2017','LAK'),('Latvia','LVA','0.4993','LVL (EURO)'),('Lebanon','LBN','953.0313','LBP'),('Lesotho','LSO','5.3474','LSL'),('Liberia','LBR','0.5176','LRD'),('Libya','LBY','0.4761','LYD'),('Lithuania','LTU','0.4576','LTL (EURO)'),('Luxembourg','LUX','0.8719','LUF (EURO)'),('Macao SAR, China','MAC','5.6823','MOP'),('Madagascar','MDG','929.897','MGA'),('Malawi','MWI','217.5208','MWK'),('Malaysia','MYS','1.444','MYR'),('Maldives','MDV','10.3867','MVR'),('Mali','MLI','215.8099','XOF'),('Malta','MLT','0.5986','MTL (EURO)'),('Marshall Islands','MHL','0.9496','USD'),('Mauritania','MRT','10.2245','MRO'),('Mauritius','MUS','16.0574','MUR'),('Mexico','MEX','9.3808','MXN'),('Micronesia, Fed. Sts.','FSM','1.0043','USD'),('Moldova','MDA','7.4571','MDL'),('Mongolia','MNG','738.4774','MNT'),('Montenegro','MNE','0.3621','EUR'),('Morocco','MAR','3.512','MAD'),('Mozambique','MOZ','20.6202','MZN'),('Myanmar','MMR','290.1687','MMK'),('Namibia','NAM','7.0691','NAD'),('Nauru','NRU','0.773','AUD'),('Nepal','NPL','34.9282','NPR'),('Netherlands','NLD','0.7975','NLG (EURO)'),('New Zealand','NZL','1.4784','NZD'),('Nicaragua','NIC','11.5691','NIO'),('Niger','NER','216.3358','NGN'),('Nigeria','NGA','110.0276','NGN'),('North Macedonia','MKD','19.3784','MKD'),('Norway','NOR','10.1419','NOK'),('Oman','OMN','0.1508','OMR'),('Pakistan','PAK','29.3027','PKR'),('Palau','PLW','0.8568','USD'),('Panama','PAN','0.6095','PAB'),('Papua New Guinea','PNG','2.0646','PGK'),('Paraguay','PRY','2453.7815','PYG'),('Peru','PER','1.5823','PEN'),('Philippines','PHL','18.254','PHP'),('Poland','POL','1.7773','PLZ'),('Portugal','PRT','0.5935','PTE (EURO)'),('Puerto Rico','PRI','0.8005','USD'),('Qatar','QAT','1.9733','QAR'),('Romania','ROU','1.719','RON'),('Russian Federation','RUS','25.6434','RUB'),('Rwanda','RWA','295.6533','RWF'),('Samoa','WSM','1.6559','WST'),('Sao Tome and Principe','STP','12.1469','STD'),('Saudi Arabia','SAU','1.5816','SAR'),('Senegal','SEN','223.6003','XOF'),('Serbia','SRB','41.6373','RSD'),('Seychelles','SYC','7.4818','SCR'),('Sierra Leone','SLE','2643.8764','SLL'),('Singapore','SGP','0.8579','SGD'),('Slovak Republic','SVK','0.4882','SKK (EURO)'),('Slovenia','SVN','0.5817','SIT (EURO)'),('Solomon Islands','SLB','7.0166','SBD'),('South Africa','ZAF','6.1631','ZAR'),('Spain','ESP','0.6479','ESP (EURO)'),('Sri Lanka','LKA','49.4904','LKR'),('St. Kitts and Nevis','KNA','1.7229','XCD'),('St. Lucia','LCA','2.0552','XCD'),('St. Vincent and the Grenadines','VCT','1.6175','XCD'),('Sudan','SDN','4.9956','SDG'),('Suriname','SUR','2.9994','SRD'),('Sweden','SWE','8.9211','SEK'),('Switzerland','CHE','1.1896','CHF'),('Tajikistan','TJK','2.1928','TJS'),('Tanzania','TZA','741.2544','TZS'),('Thailand','THA','12.3356','THB'),('Timor-Leste','TLS','0.2658','USD'),('Togo','TGO','212.5961','XOF'),('Tonga','TON','1.4913','TOP'),('Trinidad and Tobago','TTO','3.6228','TTD'),('Tunisia','TUN','0.7299','TND'),('Turkey','TUR','1.6119','TRY'),('Turkmenistan','TKM','1.2631','TMM'),('Turks and Caicos Islands','TCA','1.0698','USD'),('Tuvalu','TUV','1.2231','TVD'),('Uganda','UGA','1153.9039','UGX'),('Ukraine','UKR','9.1022','UAH'),('United Arab Emirates','ARE','2.1037','AED'),('United Kingdom','GBR','0.7002','GBP'),('United States','USA','1','USD'),('Uruguay','URY','22.5211','UYU'),('Uzbekistan','UZB','1445.2503','UZS'),('Vanuatu','VUT','106.842','VUV'),('Vietnam','VNM','7788.9096','VEB'),('West Bank and Gaza','PSE','2.227','VND'),('Yemen, Rep.','YEM','195.8405','YER'),('Zambia','ZMB','3.8127','ZMK'),('Zimbabwe','ZWE','0.7086','ZWD');
/*!40000 ALTER TABLE `home_tablex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_xcurnt`
--

DROP TABLE IF EXISTS `home_xcurnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_xcurnt` (
  `Name` varchar(256) DEFAULT NULL,
  `Code` varchar(256) DEFAULT NULL,
  `Value` varchar(256) DEFAULT NULL,
  `Currency` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_xcurnt`
--

LOCK TABLES `home_xcurnt` WRITE;
/*!40000 ALTER TABLE `home_xcurnt` DISABLE KEYS */;
INSERT INTO `home_xcurnt` VALUES ('Afghanistan','AFG','19.274','AFN'),('Albania','ALB','42.575','ALL'),('Algeria','DZA','30.988','DZD'),('Angola','AGO','134.5088','AOA'),('Antigua and Barbuda','ATG','1.6809','XCD'),('Argentina','ARG','15.9268','ARS'),('Armenia','ARM','196.6889','AMD'),('Australia','AUS','1.4327','AUD'),('Austria','AUT','0.7862','ATS (EURO)'),('Azerbaijan','AZE','0.4448','AZN'),('Bahamas, The','BHS','1.0041','BSD'),('Bahrain','BHR','0.1912','BHD'),('Bangladesh','BGD','31.9032','BDT'),('Barbados','BRB','1.9348','BBD'),('Belarus','BLR','0.641','BYR'),('Belgium','BEL','0.7831','BEF (EURO)'),('Belize','BLZ','1.1297','BZD'),('Benin','BEN','206.5195','XOF'),('Bhutan','BTN','21.814','BTN'),('Bolivia','BOL','3.1145','BOB'),('Bosnia and Herzegovina','BIH','0.6873','BAM'),('Botswana','BWA','4.5247','BWP'),('Brazil','BRA','2.025','BRL'),('Brunei Darussalam','BRN','0.5272','BND'),('Bulgaria','BGR','0.6997','BGN'),('Burkina Faso','BFA','200.2165','XAF'),('Burundi','BDI','651.0521','BIF'),('Cabo Verde','CPV','45.5586','CVE'),('Cambodia','KHM','1404.7425','KHR'),('Cameroon','CMR','225.1809','CFA'),('Canada','CAN','1.2447','CAD'),('Central African Republic','CAF','307.4262','CFA'),('Chad','TCD','205.6403','CFA'),('Chile','CHL','404.8476','CLP'),('China','CHN','3.5447','CNY'),('Colombia','COL','1312.7361','COP'),('Comoros','COM','202.4672','KMF'),('Congo, Dem. Rep.','COD','977.8203','CDF'),('Congo, Rep.','COG','210.6399','CDF'),('Costa Rica','CRI','392.7011','CRC'),('Cote d\'Ivoire','CIV','226.606','XOF'),('Croatia','HRV','3.3944','HRK'),('Curacao','CUW','1.2625','ANG'),('Cyprus','CYP','0.6308','CYP (EURO)'),('Czech Republic','CZE','12.6183','CZK'),('Denmark','DNK','6.9588','DKK'),('Dominica','DMA','1.8658','XCD'),('Dominican Republic','DOM','22.4579','DOP'),('Ecuador','ECU','0.5407','USD'),('Egypt, Arab Rep.','EGY','3.6323','EGP'),('El Salvador','SLV','0.4871','SVC'),('Equatorial Guinea','GNQ','250.7412','XAF'),('Estonia','EST','0.5479','EEK (EURO)'),('Eswatini','SWZ','5.1605','SZL'),('Ethiopia','ETH','9.9715','ETB'),('Fiji','FJI','1.2024','FJD'),('Finland','FIN','0.8776','FIM (EURO)'),('France','FRA','0.7747','EUR'),('Gabon','GAB','247.2332','XAF'),('Gambia, The','GMB','13.2014','GMD'),('Georgia','GEO','0.9958','GEL'),('Germany','DEU','0.7598','DMK (EURO)'),('Ghana','GHA','2.1274','GHS'),('Greece','GRC','0.5819','GRD (EURO)'),('Grenada','GRD','1.8467','XCD'),('Guatemala','GTM','4.042','GTQ'),('Guinea','GIN','3160.7149','GNF'),('Guinea-Bissau','GNB','240.3087','XOF'),('Guyana','GUY','119.6914','GYD'),('Haiti','HTI','30.4309','HTG'),('Honduras','HND','11.6292','HNL'),('Hong Kong SAR, China','HKG','5.9066','HKD'),('Hungary','HUN','140.4117','HUF'),('Iceland','ISL','138.3279','ISK'),('India','IND','18.1046','INR'),('Indonesia','IDN','4238.1118','IDR'),('Iraq','IRQ','395.506','IQD'),('Ireland','IRL','0.8024','IED (EURO)'),('Israel','ISR','3.7521','ILS'),('Italy','ITA','0.6984','ITL (EURO)'),('Jamaica','JAM','73.9824','JMD'),('Japan','JPN','101.3734','JPY'),('Jordan','JOR','0.3177','JOD'),('Kazakhstan','KAZ','121.3232','KZT'),('Kenya','KEN','49.9696','KES'),('Kiribati','KIR','0.9483','XCD'),('Korea, Rep.','KOR','860.5082','KRW'),('Kosovo','XKX','0.3212','EUR'),('Kuwait','KWT','0.1408','KWD'),('Kyrgyz Republic','KGZ','22.7068','KGS'),('Lao PDR','LAO','2901.2017','LAK'),('Latvia','LVA','0.4993','LVL (EURO)'),('Lebanon','LBN','953.0313','LBP'),('Lesotho','LSO','5.3474','LSL'),('Liberia','LBR','0.5176','LRD'),('Libya','LBY','0.4761','LYD'),('Lithuania','LTU','0.4576','LTL (EURO)'),('Luxembourg','LUX','0.8719','LUF (EURO)'),('Macao SAR, China','MAC','5.6823','MOP'),('Madagascar','MDG','929.897','MGA'),('Malawi','MWI','217.5208','MWK'),('Malaysia','MYS','1.444','MYR'),('Maldives','MDV','10.3867','MVR'),('Mali','MLI','215.8099','XOF'),('Malta','MLT','0.5986','MTL (EURO)'),('Marshall Islands','MHL','0.9496','USD'),('Mauritania','MRT','10.2245','MRO'),('Mauritius','MUS','16.0574','MUR'),('Mexico','MEX','9.3808','MXN'),('Micronesia, Fed. Sts.','FSM','1.0043','USD'),('Moldova','MDA','7.4571','MDL'),('Mongolia','MNG','738.4774','MNT'),('Montenegro','MNE','0.3621','EUR'),('Morocco','MAR','3.512','MAD'),('Mozambique','MOZ','20.6202','MZN'),('Myanmar','MMR','290.1687','MMK'),('Namibia','NAM','7.0691','NAD'),('Nauru','NRU','0.773','AUD'),('Nepal','NPL','34.9282','NPR'),('Netherlands','NLD','0.7975','NLG (EURO)'),('New Zealand','NZL','1.4784','NZD'),('Nicaragua','NIC','11.5691','NIO'),('Niger','NER','216.3358','NGN'),('Nigeria','NGA','110.0276','NGN'),('North Macedonia','MKD','19.3784','MKD'),('Norway','NOR','10.1419','NOK'),('Oman','OMN','0.1508','OMR'),('Pakistan','PAK','29.3027','PKR'),('Palau','PLW','0.8568','USD'),('Panama','PAN','0.6095','PAB'),('Papua New Guinea','PNG','2.0646','PGK'),('Paraguay','PRY','2453.7815','PYG'),('Peru','PER','1.5823','PEN'),('Philippines','PHL','18.254','PHP'),('Poland','POL','1.7773','PLZ'),('Portugal','PRT','0.5935','PTE (EURO)'),('Puerto Rico','PRI','0.8005','USD'),('Qatar','QAT','1.9733','QAR'),('Romania','ROU','1.719','RON'),('Russian Federation','RUS','25.6434','RUB'),('Rwanda','RWA','295.6533','RWF'),('Samoa','WSM','1.6559','WST'),('Sao Tome and Principe','STP','12.1469','STD'),('Saudi Arabia','SAU','1.5816','SAR'),('Senegal','SEN','223.6003','XOF'),('Serbia','SRB','41.6373','RSD'),('Seychelles','SYC','7.4818','SCR'),('Sierra Leone','SLE','2643.8764','SLL'),('Singapore','SGP','0.8579','SGD'),('Slovak Republic','SVK','0.4882','SKK (EURO)'),('Slovenia','SVN','0.5817','SIT (EURO)'),('Solomon Islands','SLB','7.0166','SBD'),('South Africa','ZAF','6.1631','ZAR'),('Spain','ESP','0.6479','ESP (EURO)'),('Sri Lanka','LKA','49.4904','LKR'),('St. Kitts and Nevis','KNA','1.7229','XCD'),('St. Lucia','LCA','2.0552','XCD'),('St. Vincent and the Grenadines','VCT','1.6175','XCD'),('Sudan','SDN','4.9956','SDG'),('Suriname','SUR','2.9994','SRD'),('Sweden','SWE','8.9211','SEK'),('Switzerland','CHE','1.1896','CHF'),('Tajikistan','TJK','2.1928','TJS'),('Tanzania','TZA','741.2544','TZS'),('Thailand','THA','12.3356','THB'),('Timor-Leste','TLS','0.2658','USD'),('Togo','TGO','212.5961','XOF'),('Tonga','TON','1.4913','TOP'),('Trinidad and Tobago','TTO','3.6228','TTD'),('Tunisia','TUN','0.7299','TND'),('Turkey','TUR','1.6119','TRY'),('Turkmenistan','TKM','1.2631','TMM'),('Turks and Caicos Islands','TCA','1.0698','USD'),('Tuvalu','TUV','1.2231','TVD'),('Uganda','UGA','1153.9039','UGX'),('Ukraine','UKR','9.1022','UAH'),('United Arab Emirates','ARE','2.1037','AED'),('United Kingdom','GBR','0.7002','GBP'),('United States','USA','1','USD'),('Uruguay','URY','22.5211','UYU'),('Uzbekistan','UZB','1445.2503','UZS'),('Vanuatu','VUT','106.842','VUV'),('Vietnam','VNM','7788.9096','VEB'),('West Bank and Gaza','PSE','2.227','VND'),('Yemen, Rep.','YEM','195.8405','YER'),('Zambia','ZMB','3.8127','ZMK'),('Zimbabwe','ZWE','0.7086','ZWD');
/*!40000 ALTER TABLE `home_xcurnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_xyz`
--

DROP TABLE IF EXISTS `home_xyz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_xyz` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Code` varchar(45) DEFAULT NULL,
  `Value` varchar(45) DEFAULT NULL,
  `Currency` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_xyz`
--

LOCK TABLES `home_xyz` WRITE;
/*!40000 ALTER TABLE `home_xyz` DISABLE KEYS */;
INSERT INTO `home_xyz` VALUES (1,'Afghanistan','AFG','19.274','AFN'),(2,'Angola','AGO','134.5088','AOA'),(3,'Albania','ALB','42.575','ALL'),(6,'United Arab Emirates','ARE','2.1037','AED'),(7,'Argentina','ARG','15.9268','ARS'),(8,'Armenia','ARM','196.6889','AMD'),(10,'Antigua and Barbuda','ATG','1.6809','XCD'),(11,'Australia','AUS','1.4327','AUD'),(12,'Austria','AUT','0.7862','ATS (EURO)'),(13,'Azerbaijan','AZE','0.4448','AZN'),(14,'Burundi','BDI','651.0521','BIF'),(15,'Belgium','BEL','0.7831','BEF (EURO)'),(16,'Benin','BEN','206.5195','XOF'),(17,'Burkina Faso','BFA','200.2165','XAF'),(18,'Bangladesh','BGD','31.9032','BDT'),(19,'Bulgaria','BGR','0.6997','BGN'),(20,'Bahrain','BHR','0.1912','BHD'),(21,'Bahamas, The','BHS','1.0041','BSD'),(22,'Bosnia and Herzegovina','BIH','0.6873','BAM'),(23,'Belarus','BLR','0.641','BYR'),(24,'Belize','BLZ','1.1297','BZD'),(26,'Bolivia','BOL','3.1145','BOB'),(27,'Brazil','BRA','2.025','BRL'),(28,'Barbados','BRB','1.9348','BBD'),(29,'Brunei Darussalam','BRN','0.5272','BND'),(30,'Bhutan','BTN','21.814','BTN'),(31,'Botswana','BWA','4.5247','BWP'),(32,'Central African Republic','CAF','307.4262','CFA'),(33,'Canada','CAN','1.2447','CAD'),(35,'Switzerland','CHE','1.1896','CHF'),(37,'Chile','CHL','404.8476','CLP'),(38,'China','CHN','3.5447','CNY'),(39,'Cote d\'Ivoire','CIV','226.606','XOF'),(40,'Cameroon','CMR','225.1809','CFA'),(41,'Congo, Dem. Rep.','COD','977.8203','CDF'),(42,'Congo, Rep.','COG','210.6399','CDF'),(43,'Colombia','COL','1312.7361','COP'),(44,'Comoros','COM','202.4672','KMF'),(45,'Cabo Verde','CPV','45.5586','CVE'),(46,'Costa Rica','CRI','392.7011','CRC'),(49,'Curacao','CUW','1.2625','ANG'),(51,'Cyprus','CYP','0.6308','CYP (EURO)'),(52,'Czech Republic','CZE','12.6183','CZK'),(53,'Germany','DEU','0.7598','DMK (EURO)'),(55,'Dominica','DMA','1.8658','XCD'),(56,'Denmark','DNK','6.9588','DKK'),(57,'Dominican Republic','DOM','22.4579','DOP'),(58,'Algeria','DZA','30.988','DZD'),(64,'Ecuador','ECU','0.5407','USD'),(65,'Egypt, Arab Rep.','EGY','3.6323','EGP'),(68,'Spain','ESP','0.6479','ESP (EURO)'),(69,'Estonia','EST','0.5479','EEK (EURO)'),(70,'Ethiopia','ETH','9.9715','ETB'),(73,'Finland','FIN','0.8776','FIM (EURO)'),(74,'Fiji','FJI','1.2024','FJD'),(75,'France','FRA','0.7747','EUR'),(77,'Micronesia, Fed. Sts.','FSM','1.0043','USD'),(78,'Gabon','GAB','247.2332','XAF'),(79,'United Kingdom','GBR','0.7002','GBP'),(80,'Georgia','GEO','0.9958','GEL'),(81,'Ghana','GHA','2.1274','GHS'),(83,'Guinea','GIN','3160.7149','GNF'),(84,'Gambia, The','GMB','13.2014','GMD'),(85,'Guinea-Bissau','GNB','240.3087','XOF'),(86,'Equatorial Guinea','GNQ','250.7412','XAF'),(87,'Greece','GRC','0.5819','GRD (EURO)'),(88,'Grenada','GRD','1.8467','XCD'),(90,'Guatemala','GTM','4.042','GTQ'),(92,'Guyana','GUY','119.6914','GYD'),(94,'Hong Kong SAR, China','HKG','5.9066','HKD'),(95,'Honduras','HND','11.6292','HNL'),(97,'Croatia','HRV','3.3944','HRK'),(98,'Haiti','HTI','30.4309','HTG'),(99,'Hungary','HUN','140.4117','HUF'),(104,'Indonesia','IDN','4238.1118','IDR'),(107,'India','IND','18.1046','INR'),(109,'Ireland','IRL','0.8024','IED (EURO)'),(111,'Iraq','IRQ','395.506','IQD'),(112,'Iceland','ISL','138.3279','ISK'),(113,'Israel','ISR','3.7521','ILS'),(114,'Italy','ITA','0.6984','ITL (EURO)'),(115,'Jamaica','JAM','73.9824','JMD'),(116,'Jordan','JOR','0.3177','JOD'),(117,'Japan','JPN','101.3734','JPY'),(118,'Kazakhstan','KAZ','121.3232','KZT'),(119,'Kenya','KEN','49.9696','KES'),(120,'Kyrgyz Republic','KGZ','22.7068','KGS'),(121,'Cambodia','KHM','1404.7425','KHR'),(122,'Kiribati','KIR','0.9483','XCD'),(123,'St. Kitts and Nevis','KNA','1.7229','XCD'),(124,'Korea, Rep.','KOR','860.5082','KRW'),(125,'Kuwait','KWT','0.1408','KWD'),(127,'Lao PDR','LAO','2901.2017','LAK'),(128,'Lebanon','LBN','953.0313','LBP'),(129,'Liberia','LBR','0.5176','LRD'),(130,'Libya','LBY','0.4761','LYD'),(131,'St. Lucia','LCA','2.0552','XCD'),(136,'Sri Lanka','LKA','49.4904','LKR'),(139,'Lesotho','LSO','5.3474','LSL'),(141,'Lithuania','LTU','0.4576','LTL (EURO)'),(142,'Luxembourg','LUX','0.8719','LUF (EURO)'),(143,'Latvia','LVA','0.4993','LVL (EURO)'),(144,'Macao SAR, China','MAC','5.6823','MOP'),(146,'Morocco','MAR','3.512','MAD'),(148,'Moldova','MDA','7.4571','MDL'),(149,'Madagascar','MDG','929.897','MGA'),(150,'Maldives','MDV','10.3867','MVR'),(152,'Mexico','MEX','9.3808','MXN'),(153,'Marshall Islands','MHL','0.9496','USD'),(155,'North Macedonia','MKD','19.3784','MKD'),(156,'Mali','MLI','215.8099','XOF'),(157,'Malta','MLT','0.5986','MTL (EURO)'),(158,'Myanmar','MMR','290.1687','MMK'),(160,'Montenegro','MNE','0.3621','EUR'),(161,'Mongolia','MNG','738.4774','MNT'),(163,'Mozambique','MOZ','20.6202','MZN'),(164,'Mauritania','MRT','10.2245','MRO'),(165,'Mauritius','MUS','16.0574','MUR'),(166,'Malawi','MWI','217.5208','MWK'),(167,'Malaysia','MYS','1.444','MYR'),(169,'Namibia','NAM','7.0691','NAD'),(171,'Niger','NER','216.3358','NGN'),(172,'Nigeria','NGA','110.0276','NGN'),(173,'Nicaragua','NIC','11.5691','NIO'),(174,'Netherlands','NLD','0.7975','NLG (EURO)'),(175,'Norway','NOR','10.1419','NOK'),(176,'Nepal','NPL','34.9282','NPR'),(177,'Nauru','NRU','0.773','AUD'),(178,'New Zealand','NZL','1.4784','NZD'),(180,'Oman','OMN','0.1508','OMR'),(182,'Pakistan','PAK','29.3027','PKR'),(183,'Panama','PAN','0.6095','PAB'),(184,'Peru','PER','1.5823','PEN'),(185,'Philippines','PHL','18.254','PHP'),(186,'Palau','PLW','0.8568','USD'),(187,'Papua New Guinea','PNG','2.0646','PGK'),(188,'Poland','POL','1.7773','PLZ'),(190,'Puerto Rico','PRI','0.8005','USD'),(192,'Portugal','PRT','0.5935','PTE (EURO)'),(193,'Paraguay','PRY','2453.7815','PYG'),(194,'West Bank and Gaza','PSE','2.227','VND'),(198,'Qatar','QAT','1.9733','QAR'),(199,'Romania','ROU','1.719','RON'),(200,'Russian Federation','RUS','25.6434','RUB'),(201,'Rwanda','RWA','295.6533','RWF'),(203,'Saudi Arabia','SAU','1.5816','SAR'),(204,'Sudan','SDN','4.9956','SDG'),(205,'Senegal','SEN','223.6003','XOF'),(206,'Singapore','SGP','0.8579','SGD'),(207,'Solomon Islands','SLB','7.0166','SBD'),(208,'Sierra Leone','SLE','2643.8764','SLL'),(209,'El Salvador','SLV','0.4871','SVC'),(212,'Serbia','SRB','41.6373','RSD'),(217,'Sao Tome and Principe','STP','12.1469','STD'),(218,'Suriname','SUR','2.9994','SRD'),(219,'Slovak Republic','SVK','0.4882','SKK (EURO)'),(220,'Slovenia','SVN','0.5817','SIT (EURO)'),(221,'Sweden','SWE','8.9211','SEK'),(222,'Eswatini','SWZ','5.1605','SZL'),(224,'Seychelles','SYC','7.4818','SCR'),(226,'Turks and Caicos Islands','TCA','1.0698','USD'),(227,'Chad','TCD','205.6403','CFA'),(230,'Togo','TGO','212.5961','XOF'),(231,'Thailand','THA','12.3356','THB'),(232,'Tajikistan','TJK','2.1928','TJS'),(233,'Turkmenistan','TKM','1.2631','TMM'),(235,'Timor-Leste','TLS','0.2658','USD'),(237,'Tonga','TON','1.4913','TOP'),(240,'Trinidad and Tobago','TTO','3.6228','TTD'),(241,'Tunisia','TUN','0.7299','TND'),(242,'Turkey','TUR','1.6119','TRY'),(243,'Tuvalu','TUV','1.2231','TVD'),(244,'Tanzania','TZA','741.2544','TZS'),(245,'Uganda','UGA','1153.9039','UGX'),(246,'Ukraine','UKR','9.1022','UAH'),(248,'Uruguay','URY','22.5211','UYU'),(249,'United States','USA','1','USD'),(250,'Uzbekistan','UZB','1445.2503','UZS'),(251,'St. Vincent and the Grenadines','VCT','1.6175','XCD'),(255,'Vietnam','VNM','7788.9096','VEB'),(256,'Vanuatu','VUT','106.842','VUV'),(258,'Samoa','WSM','1.6559','WST'),(259,'Kosovo','XKX','0.3212','EUR'),(260,'Yemen, Rep.','YEM','195.8405','YER'),(261,'South Africa','ZAF','6.1631','ZAR'),(262,'Zambia','ZMB','3.8127','ZMK'),(263,'Zimbabwe','ZWE','0.7086','ZWD'),(264,'','','',''),(265,'','','',''),(266,'','','',''),(267,'','','',''),(268,'','','',''),(269,'','','',''),(270,'','','',''),(271,'','','',''),(272,'','','',''),(273,'','','',''),(274,'','','',''),(275,'','','',''),(276,'','','',''),(277,'','','',''),(278,'','','',''),(279,'','','',''),(280,'','','',''),(281,'','','',''),(282,'','','',''),(283,'','','',''),(284,'','','',''),(285,'','','',''),(286,'','','',''),(287,'','','',''),(288,'','','',''),(289,'','','',''),(290,'','','',''),(291,'','','',''),(292,'','','',''),(293,'','','',''),(294,'','','',''),(295,'','','',''),(296,'','','',''),(297,'','','',''),(298,'','','',''),(299,'','','',''),(300,'','','',''),(301,'','','',''),(302,'','','',''),(303,'','','',''),(304,'','','',''),(305,'','','',''),(306,'','','',''),(307,'','','',''),(308,'','','',''),(309,'','','',''),(310,'','','',''),(311,'','','',''),(312,'','','',''),(313,'','','',''),(314,'','','',''),(315,'','','',''),(316,'','','',''),(317,'','','',''),(318,'','','',''),(319,'','','',''),(320,'','','',''),(321,'','','',''),(322,'','','',''),(323,'','','',''),(324,'','','',''),(325,'','','',''),(326,'','','',''),(327,'','','',''),(328,'','','',''),(329,'','','',''),(330,'','','',''),(331,'','','',''),(332,'','','',''),(333,'','','',''),(334,'','','',''),(335,'','','',''),(336,'','','',''),(337,'','','',''),(338,'','','',''),(339,'','','',''),(340,'','','',''),(341,'','','',''),(342,'','','',''),(343,'','','',''),(344,'','','',''),(345,'','','',''),(346,'','','',''),(347,'','','',''),(348,'','','',''),(349,'','','',''),(350,'','','',''),(351,'','','',''),(352,'','','',''),(353,'','','',''),(354,'','','',''),(355,'','','',''),(356,'','','',''),(357,'','','',''),(358,'','','',''),(359,'','','',''),(360,'','','',''),(361,'','','',''),(362,'','','',''),(363,'','','',''),(364,'','','',''),(365,'','','',''),(366,'','','',''),(367,'','','',''),(368,'','','',''),(369,'','','',''),(370,'','','',''),(371,'','','',''),(372,'','','',''),(373,'','','',''),(374,'','','',''),(375,'','','',''),(376,'','','',''),(377,'','','',''),(378,'','','',''),(379,'','','',''),(380,'','','',''),(381,'','','',''),(382,'','','',''),(383,'','','',''),(384,'','','',''),(385,'','','',''),(386,'','','',''),(387,'','','',''),(388,'','','',''),(389,'','','',''),(390,'','','',''),(391,'','','',''),(392,'','','',''),(393,'','','',''),(394,'','','',''),(395,'','','',''),(396,'','','',''),(397,'','','',''),(398,'','','',''),(399,'','','',''),(400,'','','',''),(401,'','','',''),(402,'','','',''),(403,'','','',''),(404,'','','',''),(405,'','','',''),(406,'','','',''),(407,'','','',''),(408,'','','',''),(409,'','','',''),(410,'','','',''),(411,'','','',''),(412,'','','',''),(413,'','','',''),(414,'','','',''),(415,'','','',''),(416,'','','',''),(417,'','','',''),(418,'','','',''),(419,'','','',''),(420,'','','',''),(421,'','','',''),(422,'','','',''),(423,'','','',''),(424,'','','',''),(425,'','','',''),(426,'','','',''),(427,'','','',''),(428,'','','',''),(429,'','','',''),(430,'','','',''),(431,'','','',''),(432,'','','',''),(433,'','','',''),(434,'','','',''),(435,'','','',''),(436,'','','',''),(437,'','','',''),(438,'','','',''),(439,'','','',''),(440,'','','',''),(441,'','','',''),(442,'','','',''),(443,'','','',''),(444,'','','',''),(445,'','','',''),(446,'','','',''),(447,'','','',''),(448,'','','',''),(449,'','','',''),(450,'','','',''),(451,'','','',''),(452,'','','',''),(453,'','','',''),(454,'','','',''),(455,'','','',''),(456,'','','',''),(457,'','','',''),(458,'','','',''),(459,'','','',''),(460,'','','',''),(461,'','','',''),(462,'','','',''),(463,'','','',''),(464,'','','',''),(465,'','','',''),(466,'','','',''),(467,'','','',''),(468,'','','',''),(469,'','','',''),(470,'','','',''),(471,'','','',''),(472,'','','',''),(473,'','','',''),(474,'','','',''),(475,'','','',''),(476,'','','',''),(477,'','','',''),(478,'','','',''),(479,'','','',''),(480,'','','',''),(481,'','','',''),(482,'','','',''),(483,'','','',''),(484,'','','',''),(485,'','','',''),(486,'','','',''),(487,'','','',''),(488,'','','',''),(489,'','','',''),(490,'','','',''),(491,'','','',''),(492,'','','',''),(493,'','','',''),(494,'','','',''),(495,'','','',''),(496,'','','',''),(497,'','','',''),(498,'','','',''),(499,'','','','');
/*!40000 ALTER TABLE `home_xyz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-01  2:03:16
