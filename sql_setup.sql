USE azdna;

DROP TABLE IF EXISTS `Jobs`;

CREATE TABLE `Jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `uuid` varchar(64) DEFAULT NULL,
  `slurmId` varchar(16) DEFAULT NULL,
  `jobType` int(2) DEFAULT 0,
  `simJobId` varchar(64) DEFAULT NULL,
  `creationDate` varchar(32) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `group` int(1) NOT NULL,
  `creationDate` varchar(32) NOT NULL DEFAULT '',
  `administrator` tinyint(1) NOT NULL DEFAULT 0,
  `privaleged` tinyint(1) NOT NULL DEFAULT 0,
  `verified` varchar(16) NOT NULL DEFAULT 'FALSE',
  `verifycode` varchar(32),
  `firstName` varchar(32),
  `lastName` varchar(32),
  `institution` varchar(32), 
  `jobLimit` tinyint(1) NOT NULL DEFAULT 4,
  `timeLimit` int(4) NOT NULL DEFAULT 6912000,
  `resetToken` varchar(64) DEFAULT NULL,
  `resetTokenExpiration` int(4) NOT NULL DEFAULT 0,
  `emailPrefs` varchar(32) NOT NULL DEFAULT '0 1 1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
