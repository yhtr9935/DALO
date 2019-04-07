-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dalo
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin,
  `writer` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `viewcnt` int(11) DEFAULT '0',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'새로운 글의 제목입니다','글 내용입니다..글 내용입니다. 내용이에요.','spring','2019-04-02 12:00:00',0,'0'),(3,'새로운 글의 제목입니다','글 내용입니다..글 내용입니다. 내용이에요.','gondr','2019-04-02 12:00:00',2,'0'),(4,'새로운 글의 제목입니다','글 내용입니다..글 내용입니다. 내용이에요.','gondr','2019-04-02 12:00:00',0,'0'),(5,'새로운 글의 제목입니다','글 내용입니다..글 내용입니다. 내용이에요.','honggildong','2019-04-02 12:00:00',0,'0'),(6,'새로운 글의 제목입니다','글 내용입니다..글 내용입니다. 내용이에요.','honggildong','2019-04-02 12:00:00',0,'0'),(7,'새로운 글의 제목입니다','글 내용입니다..글 내용입니다. 내용이에요.','honggildong','2019-04-02 12:00:00',0,'0'),(8,'새로운 글의 제목입니다','글 내용입니다..글 내용입니다. 내용이에요.','spring','2019-04-02 12:00:00',0,'0'),(9,'새로운 글의 제목입니다','글 내용입니다..글 내용입니다. 내용이에요.','honggildong','2019-04-02 12:00:00',0,'0'),(13,'게시판 실습입니다.','안녕하세요.\r\n게시판 실습입니다.\r\n','홍길동','2019-04-02 12:00:00',0,'0'),(14,'zzz','zzz','zzz','2019-04-02 12:00:00',0,'0'),(15,'aaaaa','aaaaa','aaaaa','2019-04-02 12:00:00',3,'0'),(16,'aaa','asdasd','홍길동',NULL,0,'0'),(17,'aaaadsf','asdasdsdaf','홍길동',NULL,0,'0'),(18,'aaaadsf','asdasdsdafsdfa','홍길동',NULL,0,'0'),(19,'aaaadsfsadf','asdasdsdafsdfa','홍길동',NULL,0,'0'),(20,'aaasadsad','asd','sad',NULL,0,'0'),(21,'aaasadsad','asddsaf','sad',NULL,0,'0'),(22,'aaasadsad','asddsaf','sad',NULL,0,'0'),(23,'aaasadsad','asddsaf','sad',NULL,0,'0'),(24,'aaasadsad','asddsaf','sad',NULL,0,'0'),(25,'aaasadsad','asddsaf','sad',NULL,25,'0'),(26,'fgfv','reegregr','거북선',NULL,4,'0');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `bno` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1. 맨투맨/후드      2. 니트/가디건      3. 아우터                4. 티셔츠                5. 셔츠                    6. 바지                    7. 트레이닝            8. 신발                    9. 악세사리',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `viewcnt` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `oldprice` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `color` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `size` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,5,'아아아아',NULL,53,NULL,'\\imgUpload\\2019\\04\\07\\s\\s_314998ea-8423-4489-9b74-f11e9d81c080_flower.jpg','50,000원','30,000원',NULL,NULL),(2,3,'두번째 상품 글',NULL,2,NULL,'\\imgUpload\\2019\\04\\07\\s\\s_bff20758-80f2-403a-bbd7-4d2784029be4_222.jpg','30,000원','10,000원',NULL,NULL),(3,8,'세번째 상품',NULL,1,NULL,'\\imgUpload\\2019\\04\\07\\s\\s_10b9cfe9-2f71-42b1-9c9c-0b5941b228cf_333.jpg','40,000원','20,000원',NULL,NULL),(4,1,'네번째',NULL,5,NULL,'\\imgUpload\\2019\\04\\07\\s\\s_50dd9b41-294f-43ae-a5e3-9ef270a68e75_444.jpg','60,000원','30,000원',NULL,NULL),(5,9,'다섯번째',NULL,133,NULL,'\\imgUpload\\2019\\04\\07\\s\\s_659d062f-f3ab-4518-82b3-9bd9b0a45d58_5555.jpg','10,000원','40,000원',NULL,NULL),(8,1,'asdfs','asdf',NULL,NULL,'\\imgUpload\\2019\\04\\07\\s\\s_50328e2a-534d-44fa-9c68-2227c9d7e7d3_333.jpg','200000','100000','녹색,,,',NULL),(9,5,'sdaf','asdf',NULL,NULL,'\\imgUpload\\2019\\04\\07\\s\\s_c0a8c6b9-c003-4bac-a908-b4d42d7efb82_5555.jpg','200000','100000','녹색,녹색,,','S,M,XL');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pw` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `hp` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `type` int(11) DEFAULT '4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('lee1234','1234','이순신','거북선','lee1234@naver.com','부산시 괘법동','010-0120-1234','2019-03-07 09:42:45',4),('spring','1234','홍길동','길동','hong@korea.kr','부산시 양정동','010-1111-1111','2019-03-07 09:42:45',1),('springaaa','aaaa','123132','123132','1321','321','321','0000-00-00 00:00:00',4);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-07 20:52:35
