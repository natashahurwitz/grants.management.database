-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: grants_management_db2
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Temporary view structure for view `a2_dates_funded_mods`
--

DROP TABLE IF EXISTS `a2_dates_funded_mods`;
/*!50001 DROP VIEW IF EXISTS `a2_dates_funded_mods`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `a2_dates_funded_mods` AS SELECT 
 1 AS `TSNRP_Number`,
 1 AS `Amendment_Type`,
 1 AS `Terms_of_Modification`,
 1 AS `date_funded`,
 1 AS `amendment_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `a3_funding_by_service`
--

DROP TABLE IF EXISTS `a3_funding_by_service`;
/*!50001 DROP VIEW IF EXISTS `a3_funding_by_service`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `a3_funding_by_service` AS SELECT 
 1 AS `Service_Branch`,
 1 AS `Total_Funding`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `a4_funding_by_service_2015`
--

DROP TABLE IF EXISTS `a4_funding_by_service_2015`;
/*!50001 DROP VIEW IF EXISTS `a4_funding_by_service_2015`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `a4_funding_by_service_2015` AS SELECT 
 1 AS `Service_Branch`,
 1 AS `Total_Funding`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `a5_service_branch_totals_and_counts`
--

DROP TABLE IF EXISTS `a5_service_branch_totals_and_counts`;
/*!50001 DROP VIEW IF EXISTS `a5_service_branch_totals_and_counts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `a5_service_branch_totals_and_counts` AS SELECT 
 1 AS `Service_Branch`,
 1 AS `Total_Funding`,
 1 AS `COUNT(p.Service_Branch)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `a6_pi_funding_totals_and_counts`
--

DROP TABLE IF EXISTS `a6_pi_funding_totals_and_counts`;
/*!50001 DROP VIEW IF EXISTS `a6_pi_funding_totals_and_counts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `a6_pi_funding_totals_and_counts` AS SELECT 
 1 AS `LName`,
 1 AS `Total_Funding`,
 1 AS `COUNT(p.LName)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `a7_pis_with_kp`
--

DROP TABLE IF EXISTS `a7_pis_with_kp`;
/*!50001 DROP VIEW IF EXISTS `a7_pis_with_kp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `a7_pis_with_kp` AS SELECT 
 1 AS `TSNRP_Number`,
 1 AS `KP_Name`,
 1 AS `PI_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `a_grant_amendments`
--

DROP TABLE IF EXISTS `a_grant_amendments`;
/*!50001 DROP VIEW IF EXISTS `a_grant_amendments`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `a_grant_amendments` AS SELECT 
 1 AS `TSNRP_Number`,
 1 AS `Amendment_Type`,
 1 AS `Terms_of_Modification`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `additional_funds`
--

DROP TABLE IF EXISTS `additional_funds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_funds` (
  `Direct_Costs` mediumint(15) unsigned NOT NULL,
  `Indirect_Costs` mediumint(15) unsigned NOT NULL,
  `Total_Costs` mediumint(15) unsigned NOT NULL,
  `Date` date NOT NULL COMMENT 'Date that the additional funds are added.  ',
  `Budget_Budgetcol` mediumint(5) unsigned NOT NULL,
  `Additional_Funds_id` mediumint(15) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Additional_Funds_id`),
  KEY `fk_Additional_Funds_Budget1_idx` (`Budget_Budgetcol`),
  CONSTRAINT `fk_Additional_Funds_Budget1` FOREIGN KEY (`Budget_Budgetcol`) REFERENCES `budget` (`Budgetcol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_funds`
--

LOCK TABLES `additional_funds` WRITE;
/*!40000 ALTER TABLE `additional_funds` DISABLE KEYS */;
INSERT INTO `additional_funds` VALUES (186907,24561,211468,'2012-11-15',1,1),(158953,68785,227738,'2013-04-25',1,2),(67462,13843,81305,'2014-01-03',1,3),(107396,36990,144386,'2013-12-01',6,4),(138578,15468,154046,'2014-07-08',6,5),(81639,17273,98912,'2015-03-09',6,6),(162428,59681,222109,'2013-11-27',3,7),(130623,20513,151136,'2014-06-09',3,8),(95336,34666,130002,'2014-11-09',3,9),(51876,55591,107467,'2013-12-09',12,10),(149831,44278,194109,'2014-04-09',12,11),(141740,69223,210963,'2014-10-04',12,12),(66809,29060,95869,'2012-12-09',11,13),(145100,67399,212499,'2013-09-08',11,14),(70594,46074,116668,'2014-01-22',11,15);
/*!40000 ALTER TABLE `additional_funds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget` (
  `Total_Direct_Costs` mediumint(15) unsigned NOT NULL,
  `Total_Indirect_Costs` mediumint(15) unsigned NOT NULL,
  `Total_Costs` mediumint(15) unsigned NOT NULL COMMENT 'The database should add the direct and indirect costs to get the total costs and automatically enter the total costs.',
  `Budgetcol` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key for Budget',
  PRIMARY KEY (`Budgetcol`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget`
--

LOCK TABLES `budget` WRITE;
/*!40000 ALTER TABLE `budget` DISABLE KEYS */;
INSERT INTO `budget` VALUES (150000,15000,165000,1),(200000,25000,225000,2),(100000,15000,115000,3),(150000,25000,175000,4),(75000,25000,100000,5),(300000,65000,365000,6),(250000,25000,275000,7),(400000,80000,480000,8),(350000,50000,400000,9),(500000,75000,575000,10),(200000,75000,275000,11),(186000,24000,210000,12),(187000,33000,220000,13),(450000,100000,550000,14),(125000,25000,150000,15);
/*!40000 ALTER TABLE `budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duty_station`
--

DROP TABLE IF EXISTS `duty_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duty_station` (
  `idDuty_Station` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Military members will have duty stations, but retired or non-military personnel might not.  It is not mandatory, but would help us to keep track of where people are.  ',
  `DS_Name` varchar(85) NOT NULL COMMENT 'Duty Stations can have very long names and numbers associated with them.',
  `DS_City` varchar(25) NOT NULL,
  `DS_State` varchar(15) DEFAULT NULL,
  `DS_Country` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idDuty_Station`),
  KEY `idx_duty_station_DS_City` (`DS_City`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duty_station`
--

LOCK TABLES `duty_station` WRITE;
/*!40000 ALTER TABLE `duty_station` DISABLE KEYS */;
INSERT INTO `duty_station` VALUES (1,'Landstuhl Regional Medical Center','Landstuhl','AE','Germany'),(2,'Womack Army Medical Center','Fort Bragg','NC','USA'),(3,'Andrews Air Force Base','Joint Base','MD','USA'),(4,'SAMMC','San Antionio','TX','USA'),(5,'Portsmouth','Portsmouth','VA','USA'),(6,'Tripler Army Medical Center','Honolulu','HI','USA'),(7,'Fitzsimons Army Medical Center','Colorado Springs','CO','USA'),(8,'Fort Belvoir Army Medical Center','Fort Belvoir','VA','USA'),(9,'University of Colorado','Aurora','CO','USA'),(10,'University of Miami','Miami','FL','USA'),(11,'University of South Florida','Tampa','FL','USA'),(12,'University of Kentucky','Louisville','KY','USA'),(13,'University of Ohio','Cleveland','OH','USA'),(14,'University of Maryland','College Park','MD','USA'),(15,'University of Alabama','Birmingham','AL','USA');
/*!40000 ALTER TABLE `duty_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `go_officials`
--

DROP TABLE IF EXISTS `go_officials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `go_officials` (
  `idGO_Officials` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FName` varchar(25) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Title` varchar(25) NOT NULL,
  `Grantee_Organization_idGrantee_Organization` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idGO_Officials`),
  KEY `fk_GO_Officials_Grantee_Organization1_idx` (`Grantee_Organization_idGrantee_Organization`),
  CONSTRAINT `fk_GO_Officials_Grantee_Organization1` FOREIGN KEY (`Grantee_Organization_idGrantee_Organization`) REFERENCES `grantee_organization` (`idGrantee_Organization`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `go_officials`
--

LOCK TABLES `go_officials` WRITE;
/*!40000 ALTER TABLE `go_officials` DISABLE KEYS */;
INSERT INTO `go_officials` VALUES (1,'Amy','Cooper','acooper0@independent.co.u','62-(998)761-705','Civil Engineer',1),(2,'Jessica','Hicks','jhicks1@goo.gl','62-(220)320-904','Administrative Assistant ',1),(3,'Janet','Richards','jrichards2@icio.us','56-(848)903-891','Staff Scientist',2),(4,'Frances','Jenkins','fjenkins3@businessinsider','385-(670)123-44','Biostatistician IV',2),(5,'Brenda','Banks','bbanks4@bizjournals.com','420-(494)773-18','Senior Cost Accountant',3),(6,'Ann','Porter','aporter5@who.int','33-(184)924-571','Quality Control Specialis',3),(7,'Stephanie','Carr','scarr6@deviantart.com','86-(947)394-362','Librarian',4),(8,'Anne','Hunter','ahunter7@wufoo.com','63-(763)742-792','Technical Writer',4),(9,'Ruby','Ryan','rryan8@shinystat.com','591-(927)363-87','Registered Nurse',5),(10,'Emily','Day','eday9@blinklist.com','218-(652)792-43','Data Coordiator',5),(11,'Laura','Olson','lolsona@eventbrite.com','7-(411)414-3050','Analog Circuit Design man',6),(12,'Diane','Bell','dbellb@people.com.cn','7-(277)402-1062','Accountant III',6),(13,'Sharon','Hawkins','shawkinsc@amazon.co.uk','62-(137)985-797','Senior Developer',7),(14,'Julia','Butler','jbutlerd@symantec.com','380-(651)125-19','Analyst Programmer',7),(15,'Melissa','Fowler','mfowlere@dyndns.org','63-(657)920-177','Administrative Assistant ',8);
/*!40000 ALTER TABLE `go_officials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grant_modification`
--

DROP TABLE IF EXISTS `grant_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grant_modification` (
  `idGrant_Amendment` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Need to figure out how to make this the TSNRP Grant number and a -01 and so on.',
  `Amendment_Type` varchar(45) NOT NULL,
  `Date_Requested` date NOT NULL,
  `Date_Final_Signature` date NOT NULL,
  `Terms_of_Modification` varchar(300) NOT NULL,
  `ED_approved` tinyint(1) NOT NULL,
  `Grant_Project_TSNRP_Number` varchar(7) NOT NULL,
  `mod_number` mediumint(3) DEFAULT NULL,
  PRIMARY KEY (`idGrant_Amendment`,`Grant_Project_TSNRP_Number`),
  KEY `fk_Grant_Modification_Grant_Project1_idx` (`Grant_Project_TSNRP_Number`),
  CONSTRAINT `fk_Grant_Modification_Grant_Project1` FOREIGN KEY (`Grant_Project_TSNRP_Number`) REFERENCES `grant_project` (`TSNRP_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grant_modification`
--

LOCK TABLES `grant_modification` WRITE;
/*!40000 ALTER TABLE `grant_modification` DISABLE KEYS */;
INSERT INTO `grant_modification` VALUES (1,'Key Personnel Change','2012-08-25','2012-09-20','Modification 1 authorizes the additional of CDR Frederick McGuire as Associate Inverstigator at 20% as per grantee request of 24 August 2012.',1,'T1',1),(2,'Key Personnel Change','2012-12-13','2013-01-29','Modification 2 authorizes the addition of Lisa Manning as Research Coordinator at 80% effort as per request dated 12 December 2012',1,'T1',2),(3,'Addition of Performance Site','2013-04-01','2013-04-28','Modification 3 authorizes the additional performance site of Naval Medical Center Portsmouth as per grantee request dated 31 March 2013',1,'T1',3),(4,'Key Personnel Change','2013-09-05','2013-11-06','Modifiction 1 authorizes the addition of Yelena Kostanova at 20% effort as per grantee request dated 5 September 2013.',1,'T3',1),(5,'Addition of Perforfomance Site','2014-03-28','2014-04-06','Modification 2 authorized the addition of Womack Army Medical Center as a Performance Site as per grantee request dated 28 March 2014.',1,'T3',2),(6,'Key Personnel Change','2015-01-04','2014-01-15','Modification 3 removes Yelena Kostanova as Research Coordinator and adds Renee Hall at 80% effort as per grantee request dated 4 January 2015.',1,'T3',3),(7,'No Cost Extension','2013-07-01','2013-07-15','Modification 4 authorizes a No Cost Extension and changes the budget end date from 30 September 2013 to 31 March 2014',1,'T1',4),(8,'Key Personnel Change','2013-05-01','2013-05-15','Modification 1 authorizes the addition of Abigail Rothgeb as Research Coordinator at 100% as per grantee request of 1 May 2013.',1,'T10',1),(9,'Key Personnel Change','2013-07-01','2013-07-17','Modification 2 authorizes the addition of Greg Martin as Associate Investigator as per grantee request dated 1 July 2013.',1,'T10',2),(10,'No Cost Extension','2014-02-17','2014-02-28','Modification 3 authorizes a No Cost Extension for one year and changes the budget and project end dates to 2015-03-31 as per grantee request dated 17 February 2014',1,'T10',3),(11,'No Cost Extension','2014-02-15','0000-00-00','Denied',0,'T11',0),(12,'Key Personnel','0000-00-00','2013-07-14','Modification 1 authorizes the addition of Yang Leong as Research Coordinator at 75% effort as per grantee request dated 31 June 2013',1,'T12',1),(13,'No Cost Extension','2013-01-15','2013-02-03','Modification 2 authorizes a No Cost Extension for one year and changes the budget and project end dates to 31 March 2016 as per grantee request dated 15 January 2015.',1,'T12',2),(14,'Key Personnel','2013-09-04','2013-11-01','Modification 1 authorizes the addition of Laila Basir as Research Coordinator at 90% effort as per grantee request of 4 September 2013.',1,'T6',1),(15,'No Cost Extension','2015-03-15','2015-04-06','Modification 2 authorizes a no cost extension for one year as per grantee request dated 15 March 2015.',1,'T6',2);
/*!40000 ALTER TABLE `grant_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grant_project`
--

DROP TABLE IF EXISTS `grant_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grant_project` (
  `TSNRP_Number` varchar(7) NOT NULL COMMENT 'This is not an integer because it is a concatonated ID made up of N (for nursing) the last two digits of the fiscal year, a dash, a number or letter indicating the funding cycle when it was awarded and then number of the application which is given when it is received.  Unfortunately, this number is too complex to make it a concatonated primary key.  For example, a grant number might be N16-502.  This is a very unusual one, but it means it is a nursing grant, funded in 2016, but it was reviewed and approved for funding in 2015 and it was the second award that was approved in 2015 and funded in 2016.  So, we will just enter it here as a primary key and not worry about having the system create a concatonated ID for this, even though the number has meaning.',
  `USUHS_Number` varchar(20) DEFAULT NULL COMMENT 'This number is assigned by USUHS only when the grant is approved for award.  It is also concatonated, but again, it is too complex to have the system do it so it will be manually entered.  An example is HU0001-16-1-TS02, with 16 representing the fiscal year, and 02 representing when the award was given a TS number.  There is some order to the TS numbers, but it is not certain or easily determined.  We can''t make it NN because we may want to enter information in the system for proposals that are never funded.',
  `Project_Title` varchar(81) NOT NULL COMMENT 'The project title is limited to 81 characters in our call for proposals. ',
  `Fiscal_Year` year(4) NOT NULL,
  `Award_Start_Date` date DEFAULT NULL,
  `Award_End_Date` date DEFAULT NULL,
  `Budget_Budgetcol` mediumint(5) unsigned NOT NULL,
  `PI_Personnel_idPersonnel` int(10) unsigned NOT NULL,
  `Grantee_Organization_idGrantee_Organization` int(10) unsigned NOT NULL,
  PRIMARY KEY (`TSNRP_Number`),
  KEY `fk_Grant_Project_Budget1_idx` (`Budget_Budgetcol`),
  KEY `fk_Grant_Project_PI1_idx` (`PI_Personnel_idPersonnel`),
  KEY `fk_Grant_Project_Grantee_Organization1_idx` (`Grantee_Organization_idGrantee_Organization`),
  CONSTRAINT `fk_Grant_Project_Budget1` FOREIGN KEY (`Budget_Budgetcol`) REFERENCES `budget` (`Budgetcol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Grant_Project_Grantee_Organization1` FOREIGN KEY (`Grantee_Organization_idGrantee_Organization`) REFERENCES `grantee_organization` (`idGrantee_Organization`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Grant_Project_PI1` FOREIGN KEY (`PI_Personnel_idPersonnel`) REFERENCES `pi` (`Personnel_idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grant_project`
--

LOCK TABLES `grant_project` WRITE;
/*!40000 ALTER TABLE `grant_project` DISABLE KEYS */;
INSERT INTO `grant_project` VALUES ('T1','U1','mTBI in Service Members',2012,'2012-04-01','2014-03-31',1,1,1),('T10','U10','Patient Fall Prevention',2013,'2013-04-01','2015-03-31',10,10,10),('T11','U11','Fit and Ready Force',2012,'2012-05-01','2014-04-30',11,11,11),('T12','U12','Navy Patients and Nurse Care',2013,'2013-04-01','2016-03-31',12,12,12),('T13','U13','Army Nurses Returning from Combat Zones',2014,'2014-06-01','2016-05-31',13,13,13),('T14','U14','Air Force Use of Dogs in Therapy',2013,'2013-06-01','2015-05-31',14,14,14),('T15','U15','Biomodulator for Knee Pain',2015,'2015-07-01','2018-06-30',15,15,15),('T2','U2','Patient Caring Touch in MTFs',2014,'2014-04-01','2016-03-31',2,2,2),('T3','U3','CAM Therapies in MTFs',2013,'2013-06-01','2015-05-31',3,3,3),('T4','U4','Physical Therapy for Knee Injuries',2014,'2014-02-01','2016-01-31',4,4,4),('T5','U5','Using Ultrasound for Plantar Fasciitis',2015,'2015-05-01','2017-04-30',5,5,5),('T6','U6','Obesity and Exercise in Military Service Members',2013,'2013-06-01','2016-05-31',6,6,6),('T7','U7','Sanitation and Uniforms in Military Healthcare Settings',2014,'2014-03-01','2016-02-28',7,7,7),('T8','U8','Prevention of Patient Falls',2015,'2015-02-01','2017-01-31',8,8,8),('T9','U9','Nurse Leader Education',2014,'2014-02-01','2017-01-31',9,9,9);
/*!40000 ALTER TABLE `grant_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grant_project_has_performance_site`
--

DROP TABLE IF EXISTS `grant_project_has_performance_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grant_project_has_performance_site` (
  `Grant_Project_TSNRP_Number` varchar(7) NOT NULL,
  `Performance_Site_idPerformance_Site` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Grant_Project_TSNRP_Number`,`Performance_Site_idPerformance_Site`),
  KEY `fk_Grant_Project_has_Performance_Site_Performance_Site1_idx` (`Performance_Site_idPerformance_Site`),
  KEY `fk_Grant_Project_has_Performance_Site_Grant_Project1_idx` (`Grant_Project_TSNRP_Number`),
  CONSTRAINT `fk_Grant_Project_has_Performance_Site_Grant_Project1` FOREIGN KEY (`Grant_Project_TSNRP_Number`) REFERENCES `grant_project` (`TSNRP_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Grant_Project_has_Performance_Site_Performance_Site1` FOREIGN KEY (`Performance_Site_idPerformance_Site`) REFERENCES `performance_site` (`idPerformance_Site`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grant_project_has_performance_site`
--

LOCK TABLES `grant_project_has_performance_site` WRITE;
/*!40000 ALTER TABLE `grant_project_has_performance_site` DISABLE KEYS */;
INSERT INTO `grant_project_has_performance_site` VALUES ('T1',1),('T11',1),('T12',1),('T13',1),('T14',1),('T15',1),('T2',1),('T3',1),('T4',2),('T5',2),('T6',2),('T7',2),('T10',5),('T8',5),('T9',5);
/*!40000 ALTER TABLE `grant_project_has_performance_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grantee_organization`
--

DROP TABLE IF EXISTS `grantee_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grantee_organization` (
  `idGrantee_Organization` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Grantee Organization is the recipient of the grant.  ',
  `GO_Name` varchar(45) NOT NULL,
  `GO_Street_Address` varchar(45) NOT NULL,
  `GO_City` varchar(25) NOT NULL,
  `GO_State` varchar(15) NOT NULL,
  `GO_Zip` varchar(10) NOT NULL COMMENT 'In case the zip code is like 29876-0123, it is a VARCHAR instead of an INT.',
  PRIMARY KEY (`idGrantee_Organization`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grantee_organization`
--

LOCK TABLES `grantee_organization` WRITE;
/*!40000 ALTER TABLE `grantee_organization` DISABLE KEYS */;
INSERT INTO `grantee_organization` VALUES (1,'University of Georgia','928 Little Fleur Avenue','Atlanta','Georgia','30386'),(2,'The Geneva Foundation','3 Tony Junction','Laredo','Texas','78044'),(3,'The Henry Jackson Foundation','2 Crescent Oaks Junction','Syracuse','New York','13205'),(4,'Syracuse','72008 Gulseth Way','Syracuse','New York','10606'),(5,'SUNY','74 Oakridge Point','Buffalo','New York','14215'),(6,'The Hope Foundation','6467 Mandrake Street','Oceanside','California','92056'),(7,'University of Arizona','9758 Daystar Plaza','Tucson','Arizona','85715'),(8,'University of Oregon','87753 Lotheville Parkway','Portland','Oregon','97232'),(9,'The Atlanta Foundation','059 School Crossing','Atlanta','Georgia','31132'),(10,'University of Nebraska','9 Chinook Junction','Omaha','Nebraska','68124'),(11,'Foundation for Military Research','501 Hansons Crossing','Utica','New York','13505'),(12,'University of Florida','7 Spenser Center','Miami','Florida','33283'),(13,'Marlboro Foundation','318 Macpherson Avenue','Richmond','Virginia','23213'),(14,'University of Gilbert','5411 Anhalt Park','Gilbert','Arizona','85297'),(15,'Houston Foundation for Nurses','79 High Crossing Hill','Houston','Texas','77240');
/*!40000 ALTER TABLE `grantee_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `grantee_organization_with_grants`
--

DROP TABLE IF EXISTS `grantee_organization_with_grants`;
/*!50001 DROP VIEW IF EXISTS `grantee_organization_with_grants`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `grantee_organization_with_grants` AS SELECT 
 1 AS `TSNRP_Number`,
 1 AS `grantee_organization`,
 1 AS `Fiscal_Year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `key_personnel`
--

DROP TABLE IF EXISTS `key_personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `key_personnel` (
  `KP_Role` varchar(45) NOT NULL,
  `Percent_Effort` int(2) unsigned NOT NULL,
  `Date_Added` date NOT NULL,
  `Date_Removed` date DEFAULT NULL,
  `Personnel_idPersonnel` int(10) unsigned NOT NULL,
  `Grant_Project_TSNRP_Number` varchar(7) NOT NULL,
  `Key_Personnel_id` mediumint(15) unsigned NOT NULL AUTO_INCREMENT,
  `Duty_Station_idDuty_Station` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Key_Personnel_id`),
  KEY `fk_Key Personnel_Personnel1_idx` (`Personnel_idPersonnel`),
  KEY `fk_Key Personnel_Grant_Project1_idx` (`Grant_Project_TSNRP_Number`),
  KEY `fk_Key_Personnel_Duty_Station1_idx` (`Duty_Station_idDuty_Station`),
  CONSTRAINT `fk_Key Personnel_Grant_Project1` FOREIGN KEY (`Grant_Project_TSNRP_Number`) REFERENCES `grant_project` (`TSNRP_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Key Personnel_Personnel1` FOREIGN KEY (`Personnel_idPersonnel`) REFERENCES `personnel` (`idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Key_Personnel_Duty_Station1` FOREIGN KEY (`Duty_Station_idDuty_Station`) REFERENCES `duty_station` (`idDuty_Station`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `key_personnel`
--

LOCK TABLES `key_personnel` WRITE;
/*!40000 ALTER TABLE `key_personnel` DISABLE KEYS */;
INSERT INTO `key_personnel` VALUES ('AI',5,'2012-07-01',NULL,1,'T1',1,1),('AI',10,'2012-07-01',NULL,2,'T1',2,1),('AI',10,'2012-07-01','2012-08-01',3,'T1',3,1),('AI',10,'2013-08-01','2014-06-01',4,'T6',4,2),('AI',12,'2013-08-01',NULL,5,'T6',5,2),('AI',10,'2014-06-01',NULL,6,'T6',6,2),('AI',15,'2013-08-01',NULL,7,'T6',7,2),('RC',80,'2013-07-01',NULL,8,'T3',8,5),('AI',5,'2013-07-01',NULL,9,'T3',9,5),('AI',10,'2013-07-01',NULL,10,'T3',10,5),('AI',10,'2013-06-01','2014-08-01',1,'T12',11,1),('RC',100,'2014-01-15',NULL,2,'T12',12,1),('AI',10,'2014-08-01',NULL,3,'T12',13,1),('AI',10,'2013-06-01','2014-08-01',4,'T12',14,1),('AI',10,'2014-08-01',NULL,15,'T12',15,1);
/*!40000 ALTER TABLE `key_personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `key_personnel_at_duty_stations`
--

DROP TABLE IF EXISTS `key_personnel_at_duty_stations`;
/*!50001 DROP VIEW IF EXISTS `key_personnel_at_duty_stations`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `key_personnel_at_duty_stations` AS SELECT 
 1 AS `DS_Name`,
 1 AS `number_of_Key_Personnel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `key_personnel_by_grant_number`
--

DROP TABLE IF EXISTS `key_personnel_by_grant_number`;
/*!50001 DROP VIEW IF EXISTS `key_personnel_by_grant_number`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `key_personnel_by_grant_number` AS SELECT 
 1 AS `TSNRP_Number`,
 1 AS `KP_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `original_plus_additional`
--

DROP TABLE IF EXISTS `original_plus_additional`;
/*!50001 DROP VIEW IF EXISTS `original_plus_additional`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `original_plus_additional` AS SELECT 
 1 AS `TSNRP_Number`,
 1 AS `original_budget`,
 1 AS `original_plus_additional`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `performance_site`
--

DROP TABLE IF EXISTS `performance_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performance_site` (
  `idPerformance_Site` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Site_Name` varchar(25) NOT NULL,
  `Site_City` varchar(25) NOT NULL,
  `Site_State` varchar(25) NOT NULL,
  `Site_SubAward` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idPerformance_Site`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_site`
--

LOCK TABLES `performance_site` WRITE;
/*!40000 ALTER TABLE `performance_site` DISABLE KEYS */;
INSERT INTO `performance_site` VALUES (1,'Landstuhl Regional Medica','Landstuhl','AE',0),(2,'Ft Bragg Medical Center','Ft Bragg','North Carolina',0),(3,'University of Florida','Tampa','Florida',0),(4,'University of Florida','Miami','Florida',0),(5,'Portsmouth Naval Base','Portsmouth','Virginia',0),(6,'University of Virginia','Norfolk','Virginia',0),(7,'University of Texas','Dallas','Texas',0),(8,'University of Arizona','Phoenix','Arizona',0),(9,'University of Oregon','Portland','Oregon',0),(10,'University of California','San Diego','California',0),(11,'University of Ohio','Cleveland','Ohio',0),(12,'Universite of San Francis','Los Angeles','California',0),(13,'University of Texas','Fort Worth','Texas',0),(14,'University of California','San Jose','California',0),(15,'University of Wisconsin','Madison','Wisconsin',0);
/*!40000 ALTER TABLE `performance_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnel` (
  `idPersonnel` int(10) unsigned NOT NULL,
  `FName` varchar(25) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `Rank_Title` varchar(5) NOT NULL COMMENT 'Dr., Mr., Ms., etc. or military rank.  ',
  `Service_Branch` varchar(45) DEFAULT NULL COMMENT 'If the personnel is military, their service branch needs to be tracked.  All PIs have a service branch even if they are retired.',
  PRIMARY KEY (`idPersonnel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel`
--

LOCK TABLES `personnel` WRITE;
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
INSERT INTO `personnel` VALUES (1,'Howard','Peters','CDR','USN'),(2,'Carol','Davis','CDR','USN'),(3,'Dorothy','Garza','MAJ','USA'),(4,'Jack','Harrison','COL','USA'),(5,'Margaret','Bailey','LTC','USA'),(6,'Aaron','Thompson','Lt Co','USAF'),(7,'Christopher','Henderson','Maj','USAF'),(8,'Judy','Campbell','COL','USA'),(9,'Terry','Weaver','LTC','USA'),(10,'Barbara','Foster','LTC','USA'),(11,'Beverly','Murphy','CDR','USN'),(12,'Brenda','Fox','CDR','USN'),(13,'Cheryl','Reynolds','CAPT','USN'),(14,'Nicholas','Phillips','LTC','USA'),(15,'Judith','Ramos','LTC','USA');
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pi`
--

DROP TABLE IF EXISTS `pi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pi` (
  `PI_email_address` varchar(45) NOT NULL,
  `PI_Phone_Number` varchar(25) NOT NULL COMMENT 'Not a number because a "+" might be added to indicate overseas phone numbers.',
  `PI_Address` varchar(45) NOT NULL,
  `PI_Comments` varchar(144) DEFAULT NULL COMMENT 'Area to write comments on the PI.',
  `Personnel_idPersonnel` int(10) unsigned NOT NULL,
  `Duty_Station_idDuty_Station` int(10) unsigned NOT NULL,
  `PI_id` mediumint(15) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`PI_id`),
  KEY `fk_PI_Personnel1_idx` (`Personnel_idPersonnel`),
  KEY `fk_PI_Duty_Station1_idx` (`Duty_Station_idDuty_Station`),
  CONSTRAINT `fk_PI_Duty_Station1` FOREIGN KEY (`Duty_Station_idDuty_Station`) REFERENCES `duty_station` (`idDuty_Station`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PI_Personnel1` FOREIGN KEY (`Personnel_idPersonnel`) REFERENCES `personnel` (`idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=890 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pi`
--

LOCK TABLES `pi` WRITE;
/*!40000 ALTER TABLE `pi` DISABLE KEYS */;
INSERT INTO `pi` VALUES ('bhendersone@oaic.gov.au','33-(120)631-0847','76890 Rusk Road','urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla',15,1,130),('jmorenod@google.fr','86-(593)851-2437','623 Nova Point','nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus',14,1,287),('randrewsc@hubpages.com','7-(823)839-8478','223 Declaration Center','tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus',13,1,298),('aramos3@tuttocitta.it','33-(511)201-1860','54 Bunting Street','id nisl venenatis lacinia aenean sit amet justo morbi ut odio',4,2,349),('mburtonb@java.com','502-(448)637-7203','371 Bonner Center','magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id',12,1,377),('nstone9@kickstarter.com','86-(631)398-0735','0786 Maple Park','ut nulla sed accumsan felis ut at dolor quis odio consequat',10,5,409),('rrogers5@stumbleupon.com','63-(165)838-4782','53 Reindahl Road','vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia',6,2,412),('rarmstrong7@latimes.com','216-(966)712-6408','65562 Northport Street','tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor',8,5,433),('bpeterson1@google.com.hk','86-(725)502-5467','825 3rd Parkway','tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis',2,1,467),('jelliott2@jigsy.com','86-(733)345-4544','442 Menomonie Way','rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus',3,1,519),('lwoods6@google.co.uk','86-(974)143-9725','62767 Arizona Road','venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate',7,2,651),('wgray4@godaddy.com','380-(741)634-2840','56 Gina Junction','nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci',5,2,664),('balvarez8@dyndns.org','55-(115)296-4912','1522 Knutson Pass','vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque',9,5,800),('arosea@latimes.com','27-(909)581-9172','539 Nevada Way','sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed',11,1,818),('jadams0@t.co','1-(718)340-0726','643 Acker Center','sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices',1,1,889);
/*!40000 ALTER TABLE `pi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pi_phone_number_duty_station`
--

DROP TABLE IF EXISTS `pi_phone_number_duty_station`;
/*!50001 DROP VIEW IF EXISTS `pi_phone_number_duty_station`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pi_phone_number_duty_station` AS SELECT 
 1 AS `PI_Name`,
 1 AS `PI_Phone_Number`,
 1 AS `Duty_Station`,
 1 AS `Duty_Station_City`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projects_with_pis`
--

DROP TABLE IF EXISTS `projects_with_pis`;
/*!50001 DROP VIEW IF EXISTS `projects_with_pis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `projects_with_pis` AS SELECT 
 1 AS `TSNRP_Number`,
 1 AS `Project_Title`,
 1 AS `LName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `subquery_pi_with_end_date`
--

DROP TABLE IF EXISTS `subquery_pi_with_end_date`;
/*!50001 DROP VIEW IF EXISTS `subquery_pi_with_end_date`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `subquery_pi_with_end_date` AS SELECT 
 1 AS `TSNRP_Number`,
 1 AS `Award_End_Date`,
 1 AS `LName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_funding_by_year`
--

DROP TABLE IF EXISTS `total_funding_by_year`;
/*!50001 DROP VIEW IF EXISTS `total_funding_by_year`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `total_funding_by_year` AS SELECT 
 1 AS `FY`,
 1 AS `Total_Funding_By_Year`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `a2_dates_funded_mods`
--

/*!50001 DROP VIEW IF EXISTS `a2_dates_funded_mods`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a2_dates_funded_mods` AS select `gp`.`TSNRP_Number` AS `TSNRP_Number`,`gm`.`Amendment_Type` AS `Amendment_Type`,`gm`.`Terms_of_Modification` AS `Terms_of_Modification`,`gp`.`Award_Start_Date` AS `date_funded`,`gm`.`Date_Final_Signature` AS `amendment_date` from (`grant_project` `gp` join `grant_modification` `gm` on((`gm`.`Grant_Project_TSNRP_Number` = `gp`.`TSNRP_Number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `a3_funding_by_service`
--

/*!50001 DROP VIEW IF EXISTS `a3_funding_by_service`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a3_funding_by_service` AS select `p`.`Service_Branch` AS `Service_Branch`,round(sum(`b`.`Total_Costs`),0) AS `Total_Funding` from (((`personnel` `p` join `pi` on((`p`.`idPersonnel` = `pi`.`Personnel_idPersonnel`))) join `grant_project` `gp` on((`pi`.`Personnel_idPersonnel` = `gp`.`PI_Personnel_idPersonnel`))) join `budget` `b` on((`gp`.`Budget_Budgetcol` = `b`.`Budgetcol`))) group by `p`.`Service_Branch` order by `p`.`Service_Branch` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `a4_funding_by_service_2015`
--

/*!50001 DROP VIEW IF EXISTS `a4_funding_by_service_2015`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a4_funding_by_service_2015` AS select `p`.`Service_Branch` AS `Service_Branch`,round(sum(`b`.`Total_Costs`),0) AS `Total_Funding` from (((`personnel` `p` join `pi` on((`p`.`idPersonnel` = `pi`.`Personnel_idPersonnel`))) join `grant_project` `gp` on((`pi`.`Personnel_idPersonnel` = `gp`.`PI_Personnel_idPersonnel`))) join `budget` `b` on((`gp`.`Budget_Budgetcol` = `b`.`Budgetcol`))) where (`gp`.`Fiscal_Year` = 2015) group by `p`.`Service_Branch` order by `p`.`Service_Branch` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `a5_service_branch_totals_and_counts`
--

/*!50001 DROP VIEW IF EXISTS `a5_service_branch_totals_and_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a5_service_branch_totals_and_counts` AS select `p`.`Service_Branch` AS `Service_Branch`,round(sum(`b`.`Total_Costs`),0) AS `Total_Funding`,count(`p`.`Service_Branch`) AS `COUNT(p.Service_Branch)` from (((`personnel` `p` join `pi` on((`p`.`idPersonnel` = `pi`.`Personnel_idPersonnel`))) join `grant_project` `gp` on((`pi`.`Personnel_idPersonnel` = `gp`.`PI_Personnel_idPersonnel`))) join `budget` `b` on((`gp`.`Budget_Budgetcol` = `b`.`Budgetcol`))) group by `p`.`Service_Branch` order by `p`.`Service_Branch` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `a6_pi_funding_totals_and_counts`
--

/*!50001 DROP VIEW IF EXISTS `a6_pi_funding_totals_and_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a6_pi_funding_totals_and_counts` AS select `p`.`LName` AS `LName`,round(sum(`b`.`Total_Costs`),0) AS `Total_Funding`,count(`p`.`LName`) AS `COUNT(p.LName)` from (((`personnel` `p` join `pi` on((`p`.`idPersonnel` = `pi`.`Personnel_idPersonnel`))) join `grant_project` `gp` on((`pi`.`Personnel_idPersonnel` = `gp`.`PI_Personnel_idPersonnel`))) join `budget` `b` on((`gp`.`Budget_Budgetcol` = `b`.`Budgetcol`))) group by `p`.`LName` order by `p`.`LName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `a7_pis_with_kp`
--

/*!50001 DROP VIEW IF EXISTS `a7_pis_with_kp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a7_pis_with_kp` AS select `gp`.`TSNRP_Number` AS `TSNRP_Number`,concat(`p2`.`Rank_Title`,' ',`p2`.`FName`,' ',`p2`.`LName`) AS `KP_Name`,concat(`p1`.`Rank_Title`,' ',`p1`.`FName`,' ',`p1`.`LName`) AS `PI_Name` from ((((`personnel` `p1` join `pi` on((`p1`.`idPersonnel` = `pi`.`Personnel_idPersonnel`))) left join `grant_project` `gp` on((`pi`.`Personnel_idPersonnel` = `gp`.`PI_Personnel_idPersonnel`))) join `key_personnel` `kp` on((`gp`.`TSNRP_Number` = `kp`.`Grant_Project_TSNRP_Number`))) join `personnel` `p2` on((`kp`.`Personnel_idPersonnel` = `p2`.`idPersonnel`))) where (`kp`.`Personnel_idPersonnel` <> `pi`.`Personnel_idPersonnel`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `a_grant_amendments`
--

/*!50001 DROP VIEW IF EXISTS `a_grant_amendments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a_grant_amendments` AS select `gp`.`TSNRP_Number` AS `TSNRP_Number`,`gm`.`Amendment_Type` AS `Amendment_Type`,`gm`.`Terms_of_Modification` AS `Terms_of_Modification` from (`grant_project` `gp` join `grant_modification` `gm` on((`gm`.`Grant_Project_TSNRP_Number` = `gp`.`TSNRP_Number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `grantee_organization_with_grants`
--

/*!50001 DROP VIEW IF EXISTS `grantee_organization_with_grants`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `grantee_organization_with_grants` AS select `gp`.`TSNRP_Number` AS `TSNRP_Number`,`go`.`GO_Name` AS `grantee_organization`,`gp`.`Fiscal_Year` AS `Fiscal_Year` from (`grant_project` `gp` join `grantee_organization` `go` on((`gp`.`Grantee_Organization_idGrantee_Organization` = `go`.`idGrantee_Organization`))) group by `go`.`GO_Name` order by `go`.`GO_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `key_personnel_at_duty_stations`
--

/*!50001 DROP VIEW IF EXISTS `key_personnel_at_duty_stations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `key_personnel_at_duty_stations` AS select `ds`.`DS_Name` AS `DS_Name`,count(`kp`.`Duty_Station_idDuty_Station`) AS `number_of_Key_Personnel` from (`duty_station` `ds` join `key_personnel` `kp` on((`kp`.`Duty_Station_idDuty_Station` = `ds`.`idDuty_Station`))) group by `ds`.`DS_Name` order by `ds`.`DS_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `key_personnel_by_grant_number`
--

/*!50001 DROP VIEW IF EXISTS `key_personnel_by_grant_number`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `key_personnel_by_grant_number` AS select `gp`.`TSNRP_Number` AS `TSNRP_Number`,concat(`p`.`Rank_Title`,' ',`p`.`FName`,' ',`p`.`LName`) AS `KP_Name` from ((`personnel` `p` join `key_personnel` `kp` on((`p`.`idPersonnel` = `kp`.`Personnel_idPersonnel`))) left join `grant_project` `gp` on((`kp`.`Grant_Project_TSNRP_Number` = `gp`.`TSNRP_Number`))) order by `gp`.`TSNRP_Number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `original_plus_additional`
--

/*!50001 DROP VIEW IF EXISTS `original_plus_additional`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `original_plus_additional` AS select `gp`.`TSNRP_Number` AS `TSNRP_Number`,`o`.`Total_Costs` AS `original_budget`,round((sum((`o`.`Total_Costs` + (3 * `a`.`Total_Costs`))) / 3),0) AS `original_plus_additional` from ((`grant_project` `gp` join `budget` `o`) join `additional_funds` `a`) where ((`gp`.`Budget_Budgetcol` = `o`.`Budgetcol`) and (`o`.`Budgetcol` = `a`.`Budget_Budgetcol`)) group by `gp`.`TSNRP_Number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pi_phone_number_duty_station`
--

/*!50001 DROP VIEW IF EXISTS `pi_phone_number_duty_station`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pi_phone_number_duty_station` AS select concat(`p`.`Rank_Title`,' ',`p`.`FName`,' ',`p`.`LName`) AS `PI_Name`,`pi`.`PI_Phone_Number` AS `PI_Phone_Number`,`ds`.`DS_Name` AS `Duty_Station`,`ds`.`DS_City` AS `Duty_Station_City` from ((`personnel` `p` join `pi` on((`p`.`idPersonnel` = `pi`.`Personnel_idPersonnel`))) join `duty_station` `ds` on((`ds`.`idDuty_Station` = `pi`.`Duty_Station_idDuty_Station`))) group by `p`.`LName` order by `p`.`LName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projects_with_pis`
--

/*!50001 DROP VIEW IF EXISTS `projects_with_pis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projects_with_pis` AS select `gp`.`TSNRP_Number` AS `TSNRP_Number`,`gp`.`Project_Title` AS `Project_Title`,`p`.`LName` AS `LName` from (`grant_project` `gp` join `personnel` `p`) where (`gp`.`PI_Personnel_idPersonnel` = `p`.`idPersonnel`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `subquery_pi_with_end_date`
--

/*!50001 DROP VIEW IF EXISTS `subquery_pi_with_end_date`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subquery_pi_with_end_date` AS select `gp`.`TSNRP_Number` AS `TSNRP_Number`,`gp`.`Award_End_Date` AS `Award_End_Date`,`p`.`LName` AS `LName` from ((`grant_project` `gp` join `personnel` `p`) join `pi`) where `p`.`LName` in (select `p`.`LName` from `personnel` `p` where ((`p`.`idPersonnel` = `pi`.`Personnel_idPersonnel`) and (`pi`.`Personnel_idPersonnel` = `gp`.`PI_Personnel_idPersonnel`))) group by `gp`.`TSNRP_Number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_funding_by_year`
--

/*!50001 DROP VIEW IF EXISTS `total_funding_by_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_funding_by_year` AS select `gp`.`Fiscal_Year` AS `FY`,round(sum(`b`.`Total_Costs`),0) AS `Total_Funding_By_Year` from (`grant_project` `gp` join `budget` `b` on((`gp`.`Budget_Budgetcol` = `b`.`Budgetcol`))) group by `gp`.`Fiscal_Year` order by `gp`.`Fiscal_Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-13 11:22:35
