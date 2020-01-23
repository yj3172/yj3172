-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: userinfo
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `title` varchar(50) NOT NULL,
  `eventstart` date NOT NULL,
  `eventfinish` date NOT NULL,
  `eventnum` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`eventnum`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES ('2020 한국영화 기대작 투자 프로젝트','2020-02-20','2020-02-28',1),('2020년 설날 특가 관람권 프로모션','2020-01-20','2020-01-31',2),('내사랑 너의사랑','2019-02-02','2020-02-02',3),('듣도보도 못한 큰놈이 왔다','2020-01-01','2020-02-28',4),('메가박스 오리지날 티켓박스','2019-12-27','2020-01-31',5),('밀레니엄데이데이','2011-11-11','2011-12-12',6),('빵야빵야','2020-05-05','2020-06-06',7),('빼빼로데이','2008-05-08','2011-11-11',8),('스타워즈 라이즈 오브 스카이워커','2019-12-28','2020-01-22',9),('실바니안 패밀리','2020-01-05','2020-01-30',10),('오리지날 프로모션','2019-12-12','2020-06-06',11),('이벤트이름은??','2018-03-05','2018-04-05',13),('초콜릿복근맨','2015-12-15','2020-02-02',14),('프로모션짱짱','2008-01-02','2008-08-08',15),('프로프로 짱짱','2002-02-02','2005-05-05',17),('초보초보','2020-02-03','2020-05-04',18);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-23 17:57:13
