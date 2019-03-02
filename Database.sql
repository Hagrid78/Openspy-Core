DROP DATABASE IF EXISTS `GameTracker`;
CREATE DATABASE GameTracker;
GRANT ALL PRIVILEGES ON GameTracker.* TO 'openspy'@'localhost';

USE GameTracker;

CREATE TABLE `games` (
  `id` int(3) NOT NULL,
  `gamename` varchar(64) NOT NULL,
  `secretkey` varchar(64) NOT NULL,
  `queryport` int(5) NOT NULL DEFAULT '0',
  `disabledservices` int(3) NOT NULL DEFAULT '0',
  `backendflags` int(11) NOT NULL DEFAULT '0',
  `keylist` text NOT NULL,
  `keytypelist` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `grouplist` (
  `gameid` int(3) NOT NULL,
  `groupid` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `hostname` varchar(30) NOT NULL DEFAULT '0',
  `numplayers` int(5) NOT NULL DEFAULT '0',
  `maxwaiting` int(3) NOT NULL DEFAULT '0',
  `numwaiting` int(3) NOT NULL DEFAULT '0',
  `numservers` int(3) NOT NULL DEFAULT '0',
  `password` varchar(30) NOT NULL DEFAULT '',
  `other` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`groupid`),
  KEY `groupid` (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `profiles` (
  `profileid` int(10) NOT NULL AUTO_INCREMENT,
  `place` varchar(30) NOT NULL DEFAULT '',
  `nick` varchar(30) NOT NULL,
  `uniquenick` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstname` varchar(30) NOT NULL DEFAULT '',
  `lastname` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(75) NOT NULL DEFAULT '',
  `icquin` varchar(20) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `countrycode` varchar(2) NOT NULL DEFAULT '',
  `lon` float NOT NULL DEFAULT '0',
  `lat` float NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '1970-01-01',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `publicmask` int(10) NOT NULL DEFAULT '0',
  `aimname` varchar(50) NOT NULL DEFAULT '',  
  `pic` int(10) NOT NULL DEFAULT '0',
  `ooc` int(10) NOT NULL DEFAULT '0',
  `ind` int(10) NOT NULL DEFAULT '0',
  `inc` int(10) NOT NULL DEFAULT '0',
  `mar` int(10) NOT NULL DEFAULT '0',
  `chc` int(10) NOT NULL DEFAULT '0',
  `i1` int(10) NOT NULL DEFAULT '0',
  `o1` int(10) NOT NULL DEFAULT '0',
  `conn` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL,
  `publickmask` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` float NOT NULL DEFAULT '0',
  `longitude` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`profileid`),
  UNIQUE KEY `profileid` (`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(30) NOT NULL,
  `emailverified` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `authedcdkeys` (
  `gameid` int(3) NOT NULL,
  `profileid` int(10) NOT NULL,
  `cdkey` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP DATABASE IF EXISTS `Persist`;
CREATE DATABASE Persist;
GRANT ALL PRIVILEGES ON Persist.* TO 'openspy'@'localhost';

USE Persist;

CREATE TABLE `data` (
  `data` varchar(128) NOT NULL,
  `modified` TIMESTAMP NOT NULL,
  `profileid` int(10) NOT NULL, 
  `index` int(3) NOT NULL,
  `type` int(3) NOT NULL,
  `gameid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*
CREATE TABLE `snapshots` (
  `gameid` int(3) NOT NULL,
  `profileid` int(10) NOT NULL,
  `keys` varchar(64) NOT NULL,
  `done` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
*/


DROP DATABASE IF EXISTS `Matrix`;
CREATE DATABASE Matrix;
GRANT ALL PRIVILEGES ON Matrix.* TO 'openspy'@'localhost';

USE `Matrix`;

CREATE TABLE `chanclients` (
  `chanmask` int(11) NOT NULL,
  `gameid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`chanmask`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `globalopers` (
  `profileid` int(10) NOT NULL,
  `rightsmask` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP DATABASE IF EXISTS `Presence`;
CREATE DATABASE Presence;
GRANT ALL PRIVILEGES ON Presence.* TO 'openspy'@'localhost';

USE `Presence`;

CREATE TABLE `addrequest` (
  `profileid` int(10) NOT NULL,
  `targetid` int(10) NOT NULL,
  `syncrequested` varchar(70) NOT NULL,
  `reason` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `blocks` (
  `profileid` int(10) NOT NULL,
  `blockedid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `buddies` (
  `profileid` int(10) NOT NULL,
  `targetid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `messages` (
  `to` int(10) NOT NULL,
  `from` int(10) NOT NULL,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP DATABASE IF EXISTS `openspy`;
CREATE DATABASE openspy;
GRANT ALL PRIVILEGES ON openspy.* TO 'openspy'@'localhost';

USE `openspy`;

CREATE TABLE `chanclients` (
  `chanmask` int(11) NOT NULL,
  `gameid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`chanmask`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

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
