CREATE DATABASE  IF NOT EXISTS `Matrix` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Matrix`;

-- MySQL dump 10.13  Distrib 5.7.18, for Linux (i686)

--

-- Host: localhost    Database: Matrix

-- ------------------------------------------------------

-- Server version	5.7.18-0ubuntu0.16.04.1



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

-- Table structure for table `chanclients`

--



DROP TABLE IF EXISTS `chanclients`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `chanclients` (

  `chanmask` int(11) NOT NULL,

  `gameid` varchar(45) DEFAULT NULL,

  PRIMARY KEY (`chanmask`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `chanclients`

--



LOCK TABLES `chanclients` WRITE;

/*!40000 ALTER TABLE `chanclients` DISABLE KEYS */;

/*!40000 ALTER TABLE `chanclients` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `chanprops`

--



DROP TABLE IF EXISTS `chanprops`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `chanprops` (

  `chankey` int(11) NOT NULL,

  `chanmask` varchar(45) DEFAULT NULL,

  `comment` varchar(45) DEFAULT NULL,

  `entrymsg` varchar(45) DEFAULT NULL,

  `expires` varchar(45) DEFAULT NULL,

  `groupname` varchar(45) DEFAULT NULL,

  `limit` varchar(45) DEFAULT NULL,

  `mode` varchar(45) DEFAULT NULL,

  `onlyowner` varchar(45) DEFAULT NULL,

  `setbynick` varchar(45) DEFAULT NULL,

  `setbypid` varchar(45) DEFAULT NULL,

  `setondate` varchar(45) DEFAULT NULL,

  `topic` varchar(45) DEFAULT NULL,

  `setbyhost` varchar(45) DEFAULT NULL,

  PRIMARY KEY (`chankey`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `chanprops`

--



LOCK TABLES `chanprops` WRITE;

/*!40000 ALTER TABLE `chanprops` DISABLE KEYS */;

/*!40000 ALTER TABLE `chanprops` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `chanusermodes`

--



DROP TABLE IF EXISTS `chanusermodes`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `chanusermodes` (

  `chanmask` int(11) NOT NULL,

  `comment` varchar(45) DEFAULT NULL,

  `expires` varchar(45) DEFAULT NULL,

  `hostmask` varchar(45) DEFAULT NULL,

  `machineid` varchar(45) DEFAULT NULL,

  `modeflags` varchar(45) DEFAULT NULL,

  `profileid` varchar(45) DEFAULT NULL,

  `setbyhost` varchar(45) DEFAULT NULL,

  `setbynick` varchar(45) DEFAULT NULL,

  `setbypid` varchar(45) DEFAULT NULL,

  `setondate` varchar(45) DEFAULT NULL,

  `usermodeid` varchar(45) DEFAULT NULL,

  PRIMARY KEY (`chanmask`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `chanusermodes`

--



LOCK TABLES `chanusermodes` WRITE;

/*!40000 ALTER TABLE `chanusermodes` DISABLE KEYS */;

/*!40000 ALTER TABLE `chanusermodes` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `globalopers`

--



DROP TABLE IF EXISTS `globalopers`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `globalopers` (

  `profileid` int(11) NOT NULL,

  `rightsmask` varchar(45) DEFAULT NULL,

  PRIMARY KEY (`profileid`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `globalopers`

--



LOCK TABLES `globalopers` WRITE;

/*!40000 ALTER TABLE `globalopers` DISABLE KEYS */;

/*!40000 ALTER TABLE `globalopers` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2017-05-08 17:37:47

CREATE DATABASE  IF NOT EXISTS `Gamemaster` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `Gamemaster`;

-- MySQL dump 10.13  Distrib 5.7.18, for Linux (i686)

--

-- Host: localhost    Database: Gamemaster

-- ------------------------------------------------------

-- Server version	5.7.18-0ubuntu0.16.04.1



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

-- Table structure for table `games`

--



DROP TABLE IF EXISTS `games`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `games` (

  `gamename` int(11) NOT NULL,

  `id` varchar(45) DEFAULT NULL,

  `secretkey` varchar(45) DEFAULT NULL,

  `queryport` varchar(45) DEFAULT NULL,

  `disabledservices` varchar(45) DEFAULT NULL,

  `backendflags` varchar(45) DEFAULT NULL,

  `keylist` varchar(45) DEFAULT NULL,

  `keytypelist` varchar(45) DEFAULT NULL,

  PRIMARY KEY (`gamename`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `games`

--



LOCK TABLES `games` WRITE;

/*!40000 ALTER TABLE `games` DISABLE KEYS */;

/*!40000 ALTER TABLE `games` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `openspy`

--



DROP TABLE IF EXISTS `openspy`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `openspy` (

  `chanprops` int(11) NOT NULL,

  `setbypid` varchar(45) DEFAULT NULL,

  PRIMARY KEY (`chanprops`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `openspy`

--



LOCK TABLES `openspy` WRITE;

/*!40000 ALTER TABLE `openspy` DISABLE KEYS */;

/*!40000 ALTER TABLE `openspy` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2017-05-08 17:37:48

CREATE DATABASE  IF NOT EXISTS `openspy` /*!40100 DEFAULT CHARACTER SET big5 */;

USE `openspy`;

-- MySQL dump 10.13  Distrib 5.7.18, for Linux (i686)

--

-- Host: localhost    Database: openspy

-- ------------------------------------------------------

-- Server version	5.7.18-0ubuntu0.16.04.1



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

-- Table structure for table `chanclients`

--



DROP TABLE IF EXISTS `chanclients`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `chanclients` (

  `chanmask` int(11) NOT NULL,

  `gameid` varchar(45) DEFAULT NULL,

  PRIMARY KEY (`chanmask`)

) ENGINE=InnoDB DEFAULT CHARSET=big5;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `chanclients`

--



LOCK TABLES `chanclients` WRITE;

/*!40000 ALTER TABLE `chanclients` DISABLE KEYS */;

/*!40000 ALTER TABLE `chanclients` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `chanprops`

--



DROP TABLE IF EXISTS `chanprops`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `chanprops` (

  `chankey` int(11) NOT NULL,

  `chanmask` varchar(45) DEFAULT NULL,

  `comment` varchar(45) DEFAULT NULL,

  `entrymsg` varchar(45) DEFAULT NULL,

  `expires` varchar(45) DEFAULT NULL,

  `groupname` varchar(45) DEFAULT NULL,

  `limit` varchar(45) DEFAULT NULL,

  `mode` varchar(45) DEFAULT NULL,

  `onlyowner` varchar(45) DEFAULT NULL,

  `setbynick` varchar(45) DEFAULT NULL,

  `setondate` varchar(45) DEFAULT NULL,

  `topic` varchar(45) DEFAULT NULL,

  `setbypid` varchar(45) DEFAULT NULL,

  `setbyhost` varchar(45) DEFAULT NULL,

  PRIMARY KEY (`chankey`)

) ENGINE=InnoDB DEFAULT CHARSET=big5;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `chanprops`

--



LOCK TABLES `chanprops` WRITE;

/*!40000 ALTER TABLE `chanprops` DISABLE KEYS */;

/*!40000 ALTER TABLE `chanprops` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `chanusermodes`

--



DROP TABLE IF EXISTS `chanusermodes`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `chanusermodes` (

  `chanmask` int(11) NOT NULL,

  `comment` varchar(45) DEFAULT NULL,

  `expires` varchar(45) DEFAULT NULL,

  `hostmask` varchar(45) DEFAULT NULL,

  `machineid` varchar(45) DEFAULT NULL,

  `modeflags` varchar(45) DEFAULT NULL,

  `profileid` varchar(45) DEFAULT NULL,

  `setbyhost` varchar(45) DEFAULT NULL,

  `setbynick` varchar(45) DEFAULT NULL,

  `setbypid` varchar(45) DEFAULT NULL,

  `setondate` varchar(45) DEFAULT NULL,

  `usermodeid` varchar(45) DEFAULT NULL,

  PRIMARY KEY (`chanmask`)

) ENGINE=InnoDB DEFAULT CHARSET=big5;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `chanusermodes`

--



LOCK TABLES `chanusermodes` WRITE;

/*!40000 ALTER TABLE `chanusermodes` DISABLE KEYS */;

/*!40000 ALTER TABLE `chanusermodes` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2017-05-08 17:37:48

