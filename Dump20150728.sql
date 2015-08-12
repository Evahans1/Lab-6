-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: magic
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `banned`
--

DROP TABLE IF EXISTS `banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banned` (
  `idbanned` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Pack` int(45) DEFAULT NULL,
  PRIMARY KEY (`idbanned`),
  KEY `name_idx` (`Name`),
  KEY `Pack_idx` (`Pack`),
  CONSTRAINT `name` FOREIGN KEY (`Name`) REFERENCES `magiccards` (`CardName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `packbanned` FOREIGN KEY (`Pack`) REFERENCES `series` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banned`
--

LOCK TABLES `banned` WRITE;
/*!40000 ALTER TABLE `banned` DISABLE KEYS */;
INSERT INTO `banned` VALUES (1,'Time Spiral',27),(2,'Memory Jar',26),(3,'Voltaic Key',65),(4,NULL,NULL);
/*!40000 ALTER TABLE `banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magiccards`
--

DROP TABLE IF EXISTS `magiccards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magiccards` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CardName` varchar(30) DEFAULT NULL,
  `ManaType` varchar(25) DEFAULT NULL,
  `CardRarity` varchar(10) DEFAULT NULL,
  `NumberOfCopies` varchar(10) DEFAULT NULL,
  `ManaCost` varchar(10) DEFAULT NULL,
  `Pack Number` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Series_idx` (`Pack Number`),
  KEY `Bannede_idx` (`CardName`),
  CONSTRAINT `Pack` FOREIGN KEY (`Pack Number`) REFERENCES `series` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magiccards`
--

LOCK TABLES `magiccards` WRITE;
/*!40000 ALTER TABLE `magiccards` DISABLE KEYS */;
INSERT INTO `magiccards` VALUES (1,'Molten Psyche','Red','Rare','1','1',1),(2,'Wort, the Raidmother','Green,Red','Rare','1','6',4),(3,'Planeswalkers Mischief','Blue','Rare','1','3',6),(4,'Time Spiral','Blue','Rare','1','6',27),(5,'Memory Jar','Colorless','Mythic','1','5',26),(6,'Voltaic Key','Colorless','Uncommon','1','1',65);
/*!40000 ALTER TABLE `magiccards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `ID` int(11) NOT NULL,
  `Pack` varchar(45) DEFAULT NULL,
  `Block` varchar(45) DEFAULT NULL,
  `Release Year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'Scars of Mirrodin ','Scars of Mirrodin block','2010'),(2,'Mirrodin Besieged ','Scars of Mirrodin block','2011'),(3,'New Phyrexia','Scars of Mirrodin block','2011'),(4,'Shadowmoor','Shadowmoor Block','2008'),(5,' Eventide','Shadowmoor Block','2008'),(6,'Planeshift','Invasion Block','2001'),(7,'Invasion','Invasion Block','2000'),(8,'Apocalypse','Invasion Block','2001'),(9,'Fourth Edition','Original ','1995'),(10,'Fallen Empires','Original','1994'),(11,'The Dark','Original','1994'),(12,'Legends','Original','1994'),(13,'Revised','Original','1994'),(14,'Antiquites','Original','1994'),(15,'Aplha Beta unlimited','Original','1993'),(16,'Ice Age','Ice age','1995'),(17,'Homelands','Homelands','1995'),(18,'Alliances','Alliances','1996'),(19,'Mirage','Mirage','1996'),(20,'Visions','Mirage','1997'),(21,'Fifth Edition','Core Set 5','1997'),(22,'Weatherlight','Mirage','1997'),(23,'Exodus','Tempest','1998'),(24,'Stronghold','Tempest','1998'),(25,'Tempest','Tempest','1997'),(26,'Urza\'s Legacy','Urza','1999'),(27,'Urza\'s Saga','Urza','1998'),(28,'Classic Sixth Edition','Core set 6','1999'),(29,'Urza\'s Destiny','Urza','1999'),(30,'Prophecy','Masques','2000'),(31,'Nemesis','Masques','2000'),(32,'Mercadian Masques','Masques','1999'),(33,'Judgment','Odyssey','2002'),(34,'Torment','Odyssey','2002'),(35,'Core Set Seven','Core 7','2001'),(36,'Odyssey','Odyssey','2001'),(37,'Onslaught','Onslaught','2002'),(38,'Legions','Onslaught','2003'),(39,'Scourge','Onslaught','2003'),(40,'Core Eighth Edition','Core 8','2003'),(41,'Mirrodin','Mirrodin','2003'),(42,'Darksteel','Mirrodin','2004'),(43,'Fifth Dawn','Mirrodin','2004'),(44,'Saviors of Kamigawa','Kamigawa','2005'),(45,'Betrayers of Kamigawa','Kamigawa','2005'),(46,'Champions of Kamigawa','Kamigawa','2004'),(47,'Core set Ninth Edition','Core 9','2005'),(48,'Ravnica city of Guilds','Ravnica','2005'),(49,'Guildpact','Ravnica','2006'),(50,'Dissension','Ravnica','2006'),(51,'Coldsnap','Ice Age','2006'),(52,'Time Spiral','Time Spiral','2006'),(53,'Planar Choas','Time Spiral','2007'),(54,'Future Sight','Time Spiral','2007'),(55,'Core Tenth Edition','Core 10','2007'),(56,'Lorwyn','Lorwyn-shadowmoor','2007'),(57,'Morningtide','Lorwyn-shadowmoor','2008'),(58,'Alara Reborn','Shards of Alara','2009'),(59,'Conflux','Shards of Alara','2009'),(60,'Shards of Alara','Shards of Alara','2008'),(61,'Core 2010','Core 2010','2009'),(62,'Zendikar','Zendikar','2009'),(63,'Worldwake','Zendikar','2010'),(64,'Rise of Eldrazi','Zendikar','2010'),(65,'Core 2011','Core 2011','2010'),(66,'Core 2012','Core 2012','2011'),(67,'Innistrad','Innistrad','2011'),(68,'Dark Ascension','Innistrad','2012'),(69,'Avacyn Restored','Innistrad','2012'),(70,'Core 2013','Core 2013','2012'),(71,'Return to Ravnica','Return to Ravnica','2012'),(72,'GateCrash','Return to Ravnica','2013'),(73,'Dragons Maze','Return to Ravnica','2013'),(74,'Core 2014','Core 2014','2013'),(75,'Theros','Theros','2013'),(76,'Born of the Gods','Theros','2014'),(77,'Journey into Nyx','Theros','2014'),(78,'Core 2015','Core 2015','2014'),(79,'Khans of Tarkir','Khans of Tarkir','2014'),(80,'Fate Reforged','Khans of Tarkir','2015'),(81,'Dragons Of Tarkir','Khans of Tarkir','2015'),(82,'Magic Origins','Magic Orgins','2015');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-28 10:02:54
