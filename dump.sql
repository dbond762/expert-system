-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: expert_system
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `computer`
--

DROP TABLE IF EXISTS `computer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `computer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_price` int(6) NOT NULL,
  `max_price` int(6) NOT NULL,
  `processor_manufacturer` int(11) NOT NULL,
  `video_adapter_manufacturer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `computer_processor_manufacturer_id_fk` (`processor_manufacturer`),
  KEY `computer_video_adapter_manufacturer_id_fk` (`video_adapter_manufacturer`),
  CONSTRAINT `computer_processor_manufacturer_id_fk` FOREIGN KEY (`processor_manufacturer`) REFERENCES `processor_manufacturer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `computer_video_adapter_manufacturer_id_fk` FOREIGN KEY (`video_adapter_manufacturer`) REFERENCES `video_adapter_manufacturer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer`
--

LOCK TABLES `computer` WRITE;
/*!40000 ALTER TABLE `computer` DISABLE KEYS */;
INSERT INTO `computer` VALUES (1,'Apple iMac 27 Retina 5K 2019 (MRQY2)','https://hotline.ua/img/tx/213/213252420_s265.jpg','Моноблок • Intel Core i5 8th Gen • 3 ГГц • ОЗУ: 8 ГБ • DDR4-2666 • HDD: 1000 (Fusion Drive) ГБ • графический адаптер: AMD Radeon Pro 570X • 4 ГБ • Wi-Fi 802.11ac, Bluetooth 4.2 • экран: 27, IPS, 5120x2880 • 03.2019',49704,66976,1,4),(2,'Apple Mac mini Late 2018 (MRTR2)','https://hotline.ua/img/tx/182/182108599_s265.jpg','Неттоп • Intel Core i3 8th Gen • 3,6 ГГц • ОЗУ: 8 ГБ • DDR4-2666 • SSD: 128 ГБ • графический адаптер: интегрированный Intel UHD Graphics 630 • Wi-Fi 802.11ac, Bluetooth 5.0 • 10.2018',20031,28647,1,5),(3,'Raspberry Pi Raspberry Pi 4 Model B 4GB','https://hotline.ua/img/tx/208/208390287_s265.jpg','Одноплатный компьютер • Cortex-A72 • 1,5 ГГц • ОЗУ: 4 ГБ • LPDDR4 • графический адаптер: VideoCore VI • Wi-Fi 802.11ac, Bluetooth 5.0 • 09.2019',1919,1949,3,6),(4,'ARTLINE Overlord RTX P99 (P99v11)','https://hotline.ua/img/tx/213/213182339_s265.jpg','Десктоп • Intel Core i9-9900K • 3,6 ГГц • ОЗУ: 64 ГБ • DDR4-3000 • HDD: 4000 ГБ • SSD: 1000 ГБ • графический адаптер: NVIDIA GeForce RTX 2080 Ti • 11 ГБ • + • 11.2018',99999,217869,1,3),(5,'ARTLINE Overlord RTX X78 (X78v28)','https://hotline.ua/img/tx/213/213182796_s265.jpg','Десктоп • Intel Core i7-8700 • 3,2 ГГц • ОЗУ: 32 ГБ • DDR4-2666 • HDD: 2000 ГБ • SSD: 480 ГБ • графический адаптер: NVIDIA GeForce RTX 2070 • 8 ГБ • 11.2018',38937,40129,1,3),(6,'Ай Ти Лайн T486','https://hotline.ua/img/tx/214/214536292_s265.jpg','Десктоп • AMD Ryzen 7 2700 • 3,2 ГГц • ОЗУ: 16 ГБ • DDR4-2666 • HDD: 1000 ГБ • SSD: 240 ГБ • графический адаптер: NVIDIA GeForce RTX 2070 • 8 ГБ • 03.2019',25622,25622,2,3),(7,'Apple iMac 27 Retina 5K 2019 (MRR12)','https://hotline.ua/img/tx/210/210131598_s265.jpg','Моноблок • Intel Core i5 9th Gen • 3,7 ГГц • ОЗУ: 8 ГБ • DDR4-2666 • HDD: 2000 (Fusion Drive) ГБ • графический адаптер: AMD Radeon Pro 580X • 8 ГБ • Wi-Fi 802.11ac, Bluetooth 4.2 • экран: 27, IPS, 5120x2880 • 03.2019',64199,84999,1,4),(8,'Apple iMac 27 Retina 5K 2019 (MRR02)','https://hotline.ua/img/tx/214/214129622_s265.jpg','Моноблок • Intel Core i5 8th Gen • 3,1 ГГц • ОЗУ: 8 ГБ • DDR4-2666 • HDD: 1000 (Fusion Drive) ГБ • графический адаптер: AMD Radeon Pro 575X • 4 ГБ • Wi-Fi 802.11ac, Bluetooth 4.2 • экран: 27, IPS, 5120x2880 • 03.2019',52068,73212,1,4),(9,'ARTLINE Gaming X35 (X35v14)','https://hotline.ua/img/tx/213/213182355_s265.jpg','Десктоп • Intel Core i3-8100 • 3,6 ГГц • ОЗУ: 8 ГБ • DDR4-2666 • HDD: 1000 ГБ • графический адаптер: NVIDIA GeForce GTX 1050 Ti • 4 ГБ • 04.2018',11799,12378,1,3),(10,'Ай Ти Лайн H470','https://hotline.ua/img/tx/214/214536298_s265.jpg','Десктоп • AMD Ryzen 3 1200 • 3,1 ГГц • ОЗУ: 8 ГБ • DDR4-2133 • HDD: 1000 ГБ • графический адаптер: NVIDIA GeForce GTX 1050 • 2 ГБ • 04.2018',8016,8016,2,3),(11,'ASUS Vivo AiO V161GAT (V161GAT-BD003D/90PT0201-M00070)','https://hotline.ua/img/tx/214/214465875_s265.jpg','Моноблок • Intel Celeron N4000 • 1,1 ГГц • ОЗУ: 4 ГБ • DDR4-2400 • SSD: 128 ГБ • графический адаптер: интегрированный Intel UHD Graphics 600 • Wi-Fi 802.11ас, Bluetooth 4.1 • экран: 15,6, TN+film, 1366x768 • 08.2018',13250,14055,1,5),(12,'ASUS V222GAK-WA029D (90PT0212-M03820)','https://hotline.ua/img/tx/207/207250748_s265.jpg','Моноблок • Intel Celeron J4005 • 2 ГГц • ОЗУ: 4 ГБ • DDR4-2400 • SSD: 256 ГБ • графический адаптер: интегрированный Intel UHD Graphics 600 • экран: 21,5, TN+film, 1920х1080 • 09.2019',9098,10917,1,5),(13,'Intel NUC (BOXNUC7PJYH2)','https://hotline.ua/img/tx/214/214297806_s265.jpg','Неттоп • Intel Pentium Silver J5005 • 2,1 ГГц • ОЗУ: 8 ГБ • DDR4-2400 • графический адаптер: интегрированный Intel UHD Graphics 605 • 10.2019',4859,5689,1,5),(14,'Apple Mac Pro (MD878)','https://hotline.ua/img/tx/181/1811953_s265.jpg','Десктоп • Intel Xeon E5-1650 v2 • 3,5 ГГц • ОЗУ: 16 ГБ • DDR3-1600 • SSD: 256 ГБ • графический адаптер: 2xAMD FirePro D500 • 3 ГБ • Wi-Fi 802.11 a/b/g/n, Bluetooth 4.0+EDR • 01.2014',60439,180240,1,4),(15,'Dell Precision T5820 (210-T5820-MT5)','https://hotline.ua/img/tx/214/214565269_s265.jpg','Десктоп • Intel Xeon W-2123 • 3,6 ГГц • ОЗУ: 32 ГБ • DDR4-2666 • HDD: 1000 ГБ • SSD: 256 ГБ • 04.2019',47442,56949,1,NULL),(16,'HP Z4 G4 Workstation (2WU74EA)','https://hotline.ua/img/tx/168/168169161_s265.jpg','Десктоп • Intel Xeon W-2133 • 3,6 ГГц • ОЗУ: 16 ГБ • DDR4-2666 ECC • HDD: 1000 ГБ • 04.2018',65578,72936,1,NULL),(17,'Apple Mac mini Late 2018 (MRTT2)','https://hotline.ua/img/tx/182/182108603_s265.jpg','Неттоп • Intel Core i5 8th Gen • 3 ГГц • ОЗУ: 8 ГБ • DDR4-2666 • SSD: 256 ГБ • графический адаптер: интегрированный Intel UHD Graphics 630 • Wi-Fi 802.11ac, Bluetooth 5.0 • 10.2018',27489,39258,1,5),(18,'Intel NUC Hades Canyon (BOXNUC8I7HVK2)','https://hotline.ua/img/tx/173/173053274_s265.jpg','Barebone-неттоп • Intel Core i7-8809G • 3,1 ГГц • DDR4-2400 SO-DIMM • графический адаптер: AMD Radeon RX Vega M GH • 4 ГБ • Wi-Fi 802.11 b/g/n/ac, Bluetooth 4.2 • 06.2018',25178,30188,1,4),(19,'Intel NUC (BOXNUC8I3BEH2)','https://hotline.ua/img/tx/214/214320871_s265.jpg','Неттоп • Intel Core i3-8109 • 3 ГГц • ОЗУ: 32 ГБ • DDR4-2400 • графический адаптер: интегрированный Intel UHD Graphics 655 • 10.2019',8758,9799,1,5),(20,'ETE Saphir Gold (HB-i9400-1610.24SSD.GTX1060-6.SPH500-HL)','https://hotline.ua/img/tx/209/209418999_s265.jpg','Десктоп • Intel Core i5-9400F • 2,9 ГГц • ОЗУ: 16 ГБ • DDR4-2666 • HDD: 1000 ГБ • SSD: 240 ГБ • графический адаптер: NVIDIA GeForce GTX 1060 • 6 ГБ • 10.2019',14580,14580,1,3),(21,'ARTLINE Gaming M95 (M95v06)','https://hotline.ua/img/tx/213/213245219_s265.jpg','Моноблок • Intel Core i3-8100 • 3,6 ГГц • ОЗУ: 16 ГБ • DDR4-2666 • HDD: 1000 ГБ • SSD: 240 ГБ • графический адаптер: NVIDIA GeForce GTX 1050 Ti • 4 ГБ • Wi-Fi 802.11n • экран: 32, IPS, 1920x1080 • 11.2017',24333,25626,1,3),(22,'Apple iMac Pro with Retina 5K Display Late 2017 (MQ2Y2)','https://hotline.ua/img/tx/158/158950590_s265.jpg','Моноблок • Intel Xeon W • 3,2 ГГц • ОЗУ: 32 ГБ • DDR4-2666 ECC • SSD: 1000 ГБ • графический адаптер: AMD Radeon Pro Vega 56 • 8 ГБ • Wi-Fi 802.11 b/g/n/ac, Bluetooth 4.2 • экран: 27, IPS, 5120x2880 • 12.2017',99999,194999,1,4),(23,'Apple iMac Pro with Retina 5K Display Late 2017 (Z0UR000HT/Z0UR71)','https://hotline.ua/img/tx/212/212810674_s265.jpg','Моноблок • Intel Xeon W • 2,3 ГГц • ОЗУ: 128 ГБ • DDR4-2666 ECC • SSD: 4000 ГБ • графический адаптер: AMD Radeon Pro Vega 64 • 16 ГБ • Wi-Fi 802.11 b/g/n/ac, Bluetooth 4.2 • экран: 27, IPS, 5120x2880 • 02.2018',349860,469063,1,4),(24,'Apple iMac Pro with Retina 5K Display Late 2017 (Z0UR4/Z0UR000MP)','https://hotline.ua/img/tx/200/200509215_s265.jpg','Моноблок • Intel Xeon W • 3,2 ГГц • ОЗУ: 64 ГБ • DDR4-2666 ECC • SSD: 1000 ГБ • графический адаптер: AMD Radeon Pro Vega 56 • 8 ГБ • Wi-Fi 802.11 b/g/n/ac, Bluetooth 4.2 • экран: 27, IPS, 5120x2880 • 02.2018',142800,212399,1,4),(25,'Apple Mac mini Late 2018 (MRTR20/Z0W10003P)','https://hotline.ua/img/tx/205/205816508_s265.jpg','Неттоп • Intel Core i7 8th gen • 3,2 ГГц • ОЗУ: 8 ГБ • DDR4-2666 SO-DIMM • SSD: 128 ГБ • графический адаптер: интегрированный Intel UHD Graphics 630 • Wi-Fi 802.11a/b/g/n/ac, Bluetooth 5.0 • 12.2018',40289,46320,1,5),(26,'ETE Saphir Plus (HB-R1600-810.24SSD.GTX1060-6.SPH500-HL)','https://hotline.ua/img/tx/209/209419000_s265.jpg','Десктоп • AMD Ryzen 5 1600 • 3,2 ГГц • ОЗУ: 8 ГБ • DDR4-2666 • HDD: 1000 ГБ • SSD: 240 ГБ • графический адаптер: NVIDIA GeForce GTX 1060 • 6 ГБ • 10.2019',12250,12250,2,3),(27,'ARTLINE Gaming X48 (X48v03)','https://hotline.ua/img/tx/213/213182350_s265.jpg','Десктоп • AMD Ryzen 5 1600 • 3,2 ГГц • ОЗУ: 8 ГБ • DDR4-2400 • HDD: 1000 ГБ • графический адаптер: AMD Radeon RX 580 • 8 ГБ • 10.2018',14099,15000,2,4),(28,'HP 285 G3 MT (4CZ68EA)','https://hotline.ua/img/tx/209/209345243_s265.jpg','Десктоп • AMD Ryzen 3 2200G • 3,5 ГГц • ОЗУ: 16 ГБ • DDR4-2666 • HDD: 500 ГБ • графический адаптер: интегрированный AMD Radeon Vega 8 • 10.2018',6999,10734,2,5),(29,'Lenovo Legion C530 (90L20039UL)','https://hotline.ua/img/tx/214/214359188_s265.jpg','Десктоп • Intel Core i5-9400 • 2,9 ГГц • ОЗУ: 8 ГБ • DDR4-2666 • HDD: 1000 ГБ • SSD: 128 ГБ • графический адаптер: NVIDIA GeForce GTX 1650 • 4 ГБ • 802.11 a/b/g/n/ac, Bluetooth 4.1 • 08.2019',22627,24209,1,3),(30,'Apple iMac 21.5\'\' Middle 2017 (MMQA2)','https://hotline.ua/img/tx/153/153585107_s265.jpg','Моноблок • Intel Core i5 7th Gen • 2,3 ГГц • ОЗУ: 8 ГБ • 2133 МГц, DDR4 • HDD: 1000 ГБ • графический адаптер: интегрированный Intel Iris Plus Graphics 640 • Bluetooth 4.2, Wi-Fi 802.11 a/b/g/n/ac • экран: 21,5, IPS, 1920x1080 • 06.2017',27550,43800,1,5);
/*!40000 ALTER TABLE `computer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computer_target`
--

DROP TABLE IF EXISTS `computer_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `computer_target` (
  `computer_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`computer_id`,`target_id`),
  KEY `computer_target_target_id_fk` (`target_id`),
  CONSTRAINT `computer_target_computer_id_fk` FOREIGN KEY (`computer_id`) REFERENCES `computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `computer_target_target_id_fk` FOREIGN KEY (`target_id`) REFERENCES `target` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer_target`
--

LOCK TABLES `computer_target` WRITE;
/*!40000 ALTER TABLE `computer_target` DISABLE KEYS */;
INSERT INTO `computer_target` VALUES (4,1),(5,1),(6,1),(1,2),(7,2),(8,2),(26,2),(27,2),(29,2),(9,3),(10,3),(21,3),(11,4),(12,4),(13,4),(14,5),(15,5),(16,5),(2,6),(13,6),(17,6),(18,6),(25,6),(3,7),(12,7),(13,7),(19,7),(20,7),(1,8),(2,8),(7,8),(8,8),(12,8),(13,8),(14,8),(15,8),(17,8),(19,8),(22,8),(25,8),(30,8),(1,9),(7,9),(8,9),(30,9),(22,10),(23,10),(24,10),(2,11),(17,11),(25,11);
/*!40000 ALTER TABLE `computer_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processor_manufacturer`
--

DROP TABLE IF EXISTS `processor_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processor_manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processor_manufacturer`
--

LOCK TABLES `processor_manufacturer` WRITE;
/*!40000 ALTER TABLE `processor_manufacturer` DISABLE KEYS */;
INSERT INTO `processor_manufacturer` VALUES (1,'Intel'),(2,'AMD'),(3,'Cortex');
/*!40000 ALTER TABLE `processor_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target`
--

DROP TABLE IF EXISTS `target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target`
--

LOCK TABLES `target` WRITE;
/*!40000 ALTER TABLE `target` DISABLE KEYS */;
INSERT INTO `target` VALUES (1,'Прогрессивный игровой компьютер'),(2,'Оптимальный игровой компьютер'),(3,'Базовый игровой компьютер'),(4,'Компьютер для работы/учебы'),(5,'Рабочая станция'),(6,'Компактный компьютер'),(7,'Новые модели'),(8,'Распространенные модели'),(9,'Apple iMac'),(10,'Apple iMac Pro'),(11,'Apple iMac Mini');
/*!40000 ALTER TABLE `target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_adapter_manufacturer`
--

DROP TABLE IF EXISTS `video_adapter_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_adapter_manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_adapter_manufacturer`
--

LOCK TABLES `video_adapter_manufacturer` WRITE;
/*!40000 ALTER TABLE `video_adapter_manufacturer` DISABLE KEYS */;
INSERT INTO `video_adapter_manufacturer` VALUES (3,'NVIDIA'),(4,'AMD'),(5,'интегрированный'),(6,'VideoCore');
/*!40000 ALTER TABLE `video_adapter_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-07 15:56:59
