--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `favorite` (
  `net_id` varchar(9) NOT NULL,
  `item_id` varchar(9) NOT NULL,
  PRIMARY KEY (`net_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
UNLOCK TABLES;
