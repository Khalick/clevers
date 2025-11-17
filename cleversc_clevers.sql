/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cleversc_clevers
-- ------------------------------------------------------
-- Server version	10.11.14-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_sections`
--

DROP TABLE IF EXISTS `about_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext NOT NULL,
  `title` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_sections`
--

LOCK TABLES `about_sections` WRITE;
/*!40000 ALTER TABLE `about_sections` DISABLE KEYS */;
INSERT INTO `about_sections` (`id`, `created_at`, `updated_at`, `content`, `title`, `image1`, `image2`) VALUES (1,'2024-06-28 18:27:28','2024-09-29 23:55:36','<p>We are the center for excellence in IGCSE (Cambridge / Edexcel), 8.4.4, GCE – O, AS & A level, Support for the Students wishing to upgrade their score or Sit for their exams within (six months or one year) the shortest possible time.\r\n                        </p>\r\n                        <p>\r\n                            This means that our courses are not only in sync with industry demands but also recognized by leading businesses and higher education institutions.\r\n                        </p>','CLEVERS SCHOOLS was established to <span class=\"text-danger\">advance knowledge</span> about human development','abouts/5mhd4iNVqrFH9ezIvOX2eJ1SSiduC3os0rMdlV4F.jpg','abouts/tgYN5vAM3rNGcZ5Br817oDLmO9aQYl6U9FiuT6R3.jpg');
/*!40000 ALTER TABLE `about_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `idNumber` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `residence` varchar(255) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `condition` longtext DEFAULT NULL,
  `fatherName` varchar(255) DEFAULT NULL,
  `motherName` varchar(255) DEFAULT NULL,
  `fatherPhone` varchar(255) DEFAULT NULL,
  `motherPhone` varchar(255) DEFAULT NULL,
  `fatherEmail` varchar(255) DEFAULT NULL,
  `motherEmail` varchar(255) DEFAULT NULL,
  `nokName` varchar(255) DEFAULT NULL,
  `nokPhone` varchar(255) DEFAULT NULL,
  `nokEmail` varchar(255) DEFAULT NULL,
  `payerName` varchar(255) DEFAULT NULL,
  `payerPhone` varchar(255) DEFAULT NULL,
  `payerEmail` varchar(255) DEFAULT NULL,
  `payerRelation` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `schoolYear` varchar(255) DEFAULT NULL,
  `course` bigint(20) DEFAULT NULL,
  `intake` bigint(20) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `examiners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`examiners`)),
  `passport` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`passport`)),
  `nationalId` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`nationalId`)),
  `slip` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `others` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`others`)),
  `feePayer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
INSERT INTO `applicants` (`id`, `created_at`, `updated_at`, `firstName`, `middleName`, `lastName`, `email`, `phone`, `idNumber`, `gender`, `religion`, `county`, `residence`, `history`, `dateOfBirth`, `condition`, `fatherName`, `motherName`, `fatherPhone`, `motherPhone`, `fatherEmail`, `motherEmail`, `nokName`, `nokPhone`, `nokEmail`, `payerName`, `payerPhone`, `payerEmail`, `payerRelation`, `education`, `grade`, `school`, `schoolYear`, `course`, `intake`, `mode`, `examiners`, `passport`, `nationalId`, `slip`, `department`, `others`, `feePayer`) VALUES (339,'2025-11-12 10:35:19','2025-11-12 10:35:19','Geoffrey','Otieno','Otieno','geoffreyotieno89@gmail.com','0725712480','27911356','Male','Christian','Nairobi','Bee centre','No','1989-03-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Geoffrey otieno','0725712480',NULL,NULL,'Secondary','D+','Maina wanjigi secondary school','2008',4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self'),
(340,'2025-11-14 15:03:20','2025-11-14 15:03:20','Linus','Mwangi','Maina','linusmaina716@gmail.com','0726593996','38998465','Male','Christian','Murang`a',NULL,'No','2001-12-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self'),
(341,'2025-11-15 09:51:30','2025-11-15 09:51:30','Maloba','Atieno','Mouvine','amosorembo4@gmail.com','0715375174','33480130','Female','Christian','Busia','Mumias','No','1994-07-10',NULL,'Amos Orembo',NULL,'0715375174',NULL,'amosorembo4@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father'),
(342,'2025-11-15 09:51:31','2025-11-15 09:51:31','Maloba','Atieno','Mouvine','amosorembo4@gmail.com','0715375174','33480130','Female','Christian','Busia','Mumias','No','1994-07-10',NULL,'Amos Orembo',NULL,'0715375174',NULL,'amosorembo4@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father'),
(343,'2025-11-15 10:01:00','2025-11-15 10:01:00','Orembo','Nyongesa','Amos','amosorembo4@gmail.com','0715375174','22658042','Male','Christian','Nairobi','Mumias','No','1982-07-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self'),
(344,'2025-11-15 10:01:58','2025-11-15 10:01:58','Orembo','Nyongesa','Amos','amosorembo4@gmail.com','0715375174','22658042','Male','Christian','Nairobi','Mumias','No','1982-07-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self'),
(345,'2025-11-15 14:14:16','2025-11-15 14:14:16','Simiyu','Barasa','Patrick','patsim455@gmail.com','0799105085','41952390','Male','Bungoma','Bungoma','Nairobi','No','2004-03-03',NULL,'Elias juma','Brigity basahila','0719820468','0796347023',NULL,NULL,'Amos simiyu','0796183355',NULL,NULL,NULL,NULL,NULL,'Secondary','D+','Sichei friends secondary school','2024',13,1,'Part Time','[\"KNEC\"]','[\"passports\\/PZcQ2i2SQTBXlaPJXLmaSY9poooqvxhq4GZOtf1p.jpg\"]','[]',NULL,'Accounting','[]','father'),
(346,'2025-11-15 14:15:36','2025-11-15 14:15:36','Simiyu','Barasa','Patrick','patsim455@gmail.com','0799105085','41952390','Male','Bungoma','Nairobi','Nairobi','No','2004-03-03',NULL,'Elias juma','Brigity basahila','0719820468','0796347023',NULL,NULL,'Amos simiyu','0796183355',NULL,NULL,NULL,NULL,NULL,'Secondary','D+','Sichei friends secondary school','2024',13,1,'Part Time','[\"KNEC\"]','[\"passports\\/goK968HDf9bfNVSL2Ga98NRHfnIgwSQlFp0XnMsg.jpg\"]','[]',NULL,'Accounting','[]','father'),
(347,'2025-11-16 07:35:07','2025-11-16 07:35:07','HASSAN','OKUMU','KUBENDE','kubendehassan59@gmail.com','0706760388','25768067','Male','Christian','Nairobi','EMBAKASI','No','1988-04-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MARY NABWILE KIMWANGA','0798124738',NULL,NULL,NULL,NULL,NULL,'Primary','C','BUMWENDE PRIMARY SCHOOL','2005',4,1,'Part Time','[\"KNEC\"]','[\"passports\\/5n0QuHZzgOZGzEP9dL0iehVhNHADjYoWdLiVwPEv.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self');
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unitId` bigint(20) unsigned NOT NULL,
  `teacherId` bigint(20) unsigned NOT NULL,
  `description` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `attachments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachments`)),
  `title` varchar(255) DEFAULT NULL,
  `marks` double DEFAULT NULL,
  `dueDate` date NOT NULL DEFAULT '2024-06-17',
  `courseId` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assignments_unitid_foreign` (`unitId`),
  KEY `assignments_teacherid_foreign` (`teacherId`),
  KEY `assignments_courseid_foreign` (`courseId`),
  CONSTRAINT `assignments_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`),
  CONSTRAINT `assignments_teacherid_foreign` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`),
  CONSTRAINT `assignments_unitid_foreign` FOREIGN KEY (`unitId`) REFERENCES `units` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `banner` longtext DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` (`id`, `created_at`, `updated_at`, `title`, `description`, `poster`, `views`, `content`, `banner`, `category`, `tags`) VALUES (1,'2024-05-22 16:35:49','2025-11-17 01:46:08','HOW TO REGISTER FOR KCSE AS PRIVATE CANDIDATE','KNEC registration private candidates [KCSE private candidate registration 2022]','Brian Super Admin',9896,'<p>This guide explains the KNEC registration process for private candidates. And as you might be aware, KNEC provides this option for those who wish to upgrade their KCSE grade (repeating form four) or just get a KCSE certificate for the first time. Let’s dive right in. <strong>KNEC registration private candidates – the process</strong> KNEC has simplified the process of registering for KCSE exams as a private candidate and all you have to do now is download and fill the KNEC private candidate registration form from their <a href=\"https://www.knec.ac.ke/services/registration-of-candidates/\">website</a>. You’re then required to present the completed form to your sub-county’s director of education. The sub county education office will also guide you on the existing KCSE private registration centres in your sub county – you can request to be placed in a center that is convenient for you. Note that you will sit your exam in one of the schools appointed as a KCSE private exam center in your sub county (KNEC permits only one private K.C.S.E examination centre in every sub county). <strong>Official requirements to register as a private KCSE candidate in Kenya</strong> You will be asked to supply the following documents when registering:&nbsp;<br>&nbsp;</p><p>Passport size photo (2 copies).</p><p>Birth certificate copy (1 copy).</p><p>A copy of your KCPE certificate.</p><p>Besides, a duration of not less than 3 years should have passed since you wrote your KCPE exam if you’re a first time private candidate. Form 4 repeaters were previously required to spend two years out in the cold before re-attempting the KCSE exam but this condition has since been abolished after a review of the KCSE guidelines.</p><p><br>&nbsp;</p><h2><strong>KNEC registration private candidates – when is the KCSE registration deadline?</strong></h2><p>To be eligible, you are supposed to submit the form and pay the applicable exam fees before the expiry of the set KCSE private candidate registration period.</p><p>Now, KNEC usually announces the deadline date through the media but I recommend that you contact your sub county’s education office soonest possible for confirmation as it will allow you to make the necessary arrangements.</p><p><strong>Important:</strong> Keep in mind that the usual deadline for KCSE private candidate registration is 28th February. Of course, this may change as a result of special situations (such as the pandemic) or as KNEC/ministry of education deems fit. That is why we keep on insisting that the best approach to be sure of deadlines is to get in touch with your sub-county’s education office ASAP.</p><p>&nbsp;</p><h2><strong>KNEC registration private candidates- A word on late registration</strong></h2><p>KNEC used to extend the exam registration period by a couple of days after the official deadline but this is no longer the case for both KCSE and KCPE exams.</p><p>It’s, therefore, crucial that you adhere to the deadline you’re given by the sub county education official.</p><p><br>&nbsp;</p><h2><strong>Final thoughts</strong></h2><p>To boost your chances of scoring a good grade in your KCSE as a private candidate, consider enrolling in one of the adults secondary schools in Kenya such as Clevers schools which is currently the only registered private candidates centre in Kenya with a high success rate.....visit their website on <a href=\"http://www.cleverskenya.org/\">www.cleverskenya.org</a> or Call the Director Felix on 0725449122</p><p><br>&nbsp;</p><p>At Clevers Schools youll also get to bridge subjects!!!</p><p><br>&nbsp;</p>','tasks/42rhjBtS1EVYDTfdPQPBRCNhdxfApLWHqBJiOVVx.png','KCSE PRIVATE CANDIDATES',NULL);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` longtext NOT NULL,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `responsibilities` longtext NOT NULL,
  `requirements` longtext NOT NULL,
  `applyBy` date NOT NULL,
  `maxApplications` bigint(20) NOT NULL,
  `fees` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` (`id`, `created_at`, `updated_at`, `banner`, `title`, `description`, `responsibilities`, `requirements`, `applyBy`, `maxApplications`, `fees`) VALUES (1,'2024-05-29 23:38:01','2024-05-29 23:38:01','tasks/BEJ0WFBg2nmcxOxrBvH87MVCgGCoSREhIlMvjDS8.jpg','BRANCH MANAGER – REF: HR/BM/CBD','We are seeking a highly capable Branch Manager to lead the academic operations at our NAIROBI CBD campus. This pivotal role demands a passionate and dynamic leader with a proven history of improving academic excellence and students’ achievements. The successful candidate will oversee the management of all the departments, curriculum implementation, and ensure the highest standards of educational delivery while also managing support services such as marketing, facilities, security, events, and administration.','<ul><li>Coordinate and oversee all academic departments at the campus, ensuring smooth collaboration and efficient operations.</li><li>Ensure effective curriculum implementation and maintain the highest standards of academic delivery.</li><li>Lead college marketing initiatives to meet student enrolment targets, including converting leads into clients through consistent follow-up efforts.</li></ul>','<ul><li>Bachelor’s degree in Education or a related field, with a Master’s degree being advantageous. A minimum of 5 years’ experience in academic leadership or administration, preferably in a TVET Institution.</li><li>Demonstrated expertise in curriculum implementation, academic planning, and training management.</li><li>Strong leadership and organizational skills, coupled with the ability to inspire and motivate staff and students.</li><li>Must possess a strong sense of integrity, alongside exceptional communication and interpersonal skills to effectively engage with various stakeholders. Additionally, they should have a comprehensive understanding of accreditation standards and regulatory requirements in higher education.</li></ul>','2024-06-01',0,0);
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `icon` longtext DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `code`, `description`, `icon`, `metadata`, `created_at`, `updated_at`) VALUES (1,'KCSE PRIVATE CANDIDATES',NULL,NULL,'https://cdn-icons-png.flaticon.com/512/2328/2328989.png',NULL,'2024-05-18 06:19:55','2024-05-23 00:49:25'),
(2,'IGCSE PRIVATE CANDIDATES',NULL,NULL,'https://cdn-icons-png.flaticon.com/512/1933/1933920.png',NULL,'2024-05-18 06:22:19','2024-05-23 00:49:51'),
(4,'LANGUAGES',NULL,NULL,'https://cdn-icons-png.flaticon.com/512/6802/6802092.png',NULL,'2024-05-18 06:25:02','2024-05-26 02:17:26'),
(5,'ICT',NULL,NULL,'https://cdn-icons-png.flaticon.com/512/3465/3465265.png',NULL,'2024-05-18 06:26:44','2024-05-23 00:50:22'),
(7,'AS/A LEVEL',NULL,NULL,'https://png.pngtree.com/png-vector/20190214/ourmid/pngtree-engineering-icon-png-image_428266.jpg',NULL,'2024-05-18 06:29:45','2024-05-22 16:01:50'),
(9,'Accounting',NULL,NULL,'https://cdn-icons-png.flaticon.com/512/5231/5231813.png',NULL,'2024-06-29 21:56:29','2024-06-29 21:58:13'),
(10,'Sign Language',NULL,NULL,'https://cdn-icons-png.flaticon.com/512/3465/3465265.png',NULL,'2024-07-04 10:16:06','2024-07-04 10:16:06');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `isReply` tinyint(1) NOT NULL DEFAULT 0,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `postId` bigint(20) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `comment`, `approved`, `isReply`, `userId`, `userName`, `email`, `postId`, `parentId`) VALUES (1,'2024-05-24 13:18:38','2024-05-24 13:18:38','Good read',0,0,1,'Brian Omondi','brianomondi605@gmail.com',1,NULL),
(2,'2024-07-10 02:23:18','2024-07-10 02:23:18','I finished my secondary in the year 2016 is it allowed me to register again',0,0,NULL,'Juma cosmas khaemba','dickanesjumawekesa@gmail.com',1,NULL),
(3,'2024-09-02 06:02:02','2024-09-02 06:02:02','Enter yi aour Massage*I am very happy to find you hear.i am interested.and willing to begin my studies immediately.',0,0,NULL,'Stephen koyiaki','koyiakin@gmail.com',1,NULL),
(4,'2024-10-03 02:39:04','2024-10-03 02:39:04','Enter your Massage*\r\nHow much is exam registration please',0,0,NULL,'Mary Nthenya','marymbugus200@gmail.com',1,NULL),
(5,'2024-10-24 08:21:30','2024-10-24 08:21:30','Enter your Massage*\r\nI didn\'t do my kcse the year 2024 due to some circumstances can I repeat next year 2025 plz',0,0,NULL,'Benjamin muriu','benjahmoh254@gmail.com',1,NULL),
(6,'2024-10-24 08:22:28','2024-10-24 08:22:28','Enter your Massage*\r\nI didn\'t do my kcse the year 2024 due to some circumstances can I repeat next year 2025 plz',0,0,NULL,'Benjamin muriu','benjahmoh254@gmail.com',1,NULL),
(7,'2024-10-31 07:28:44','2024-10-31 07:28:44','Enter ur Massage*hie how much is registration fee for a private candidate',0,0,NULL,'Teresia','terizaheddy19@gmail.com',1,NULL),
(8,'2024-10-31 15:13:48','2024-10-31 15:13:48','I have seen the payment  for kcse  is 17500,,can I pay in instalments?',0,0,NULL,'Sarah Sheila Naliaka','Sarahnaliaka37@gmail.com',1,NULL),
(9,'2024-11-26 09:47:58','2024-11-26 09:47:58','Enter your Massage*when I\'m l going  to  start  my studies  l have already  paid  the school  fees',0,0,NULL,'EDNAH kinya kimathi','ednakinya05@gmail.com',1,NULL),
(10,'2024-12-30 17:25:25','2024-12-30 17:25:25','Hallo, can I pay school fees in installments',0,0,NULL,'Janet jerotich','jenetjerotich91@gmail.com',1,NULL),
(11,'2025-01-20 06:41:16','2025-01-20 06:41:16','I want  to  do my KCSE this year',0,0,NULL,'ELIZABETH WACUKA','Carolinewambo89@gml.com',1,NULL),
(12,'2025-01-31 21:36:01','2025-01-31 21:36:01','Enter your Massage*can I join if I didn\'t  do kcpe',0,0,NULL,'Njeri','patiencemutiga@gmail.com',1,NULL),
(13,'2025-02-11 17:21:58','2025-02-11 17:21:58','Enter your Massage*idid my KCSE 2015 can IBRIDGE in some subjects please',0,0,NULL,'Herbert wamukoya','herbertwamukoya54@gmail.com',1,NULL),
(14,'2025-02-11 17:28:43','2025-02-11 17:28:43','Enter your Massage*idid my KCSE 2015 can IBRIDGE in some subjects please',0,0,NULL,'Herbert wamukoya','herbertwamukoya54@gmail.com',1,NULL),
(15,'2025-06-15 15:32:04','2025-06-15 15:32:04','I would like to join this session in order to continue with my academic',0,0,NULL,'Ayugi Paul Otieno','254olivar@gmail.com',1,NULL),
(16,'2025-09-26 03:08:07','2025-09-26 03:08:07','Enter your Massage*i did my kcpe in the year 2017 it is possible to register for kcse now',0,0,NULL,'I did my kcpe in the year 2017 it is possible to register for kcse now','fredayaga1@gmail.com',1,NULL),
(17,'2025-09-26 03:09:05','2025-09-26 03:09:05','Enter your Massage*i did my kcpe in the year 2017 it is possible to register for kcse now',0,0,NULL,'I did my kcpe in the year 2017 it is possible to register for kcse now','fredayaga1@gmail.com',1,NULL),
(18,'2025-10-25 09:45:36','2025-10-25 09:45:36','I did my KCSE in 2015,,, i want to enquire about the subjects that are offered, and if it a must for one to attend all the lessons',0,0,NULL,'Kelly mwende','kellymwende65@gmail.com',1,NULL),
(19,'2025-10-25 09:45:54','2025-10-25 09:45:54','I did my KCSE in 2015,,, i want to enquire about the subjects that are offered, and if it a must for one to attend all the lessons',0,0,NULL,'Kelly mwende','kellymwende65@gmail.com',1,NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `intake` varchar(255) DEFAULT NULL,
  `modules` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`modules`)),
  `status` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `lecs` int(11) DEFAULT NULL,
  `fees` double DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `preview` longtext DEFAULT NULL,
  `video` longtext DEFAULT NULL,
  `curriculum` longtext DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` (`id`, `created_at`, `updated_at`, `code`, `title`, `description`, `intake`, `modules`, `status`, `duration`, `lecs`, `fees`, `certificate`, `preview`, `video`, `curriculum`, `category`, `grade`) VALUES (1,'2024-05-18 10:30:08','2024-06-07 18:00:38','ICDL101','ICDL Workfoce','Application Essentials, Computer and\r\nOnline Essentials, Computer\r\nEssentials, Online Essentials,\r\nDocuments, Spreadsheets, Cyber\r\nSecurity, Information Literacy, Online\r\nCollaboration, Data Protection,\r\nRemote Work',NULL,NULL,'Inactive','12 Weeks',12,30000,'on','tasks/pTMnwuXLLmCACICVdGdh2saXJMtnq4u3BUN8egK5.png','https://www.youtube.com/watch?v=HhCjir4WwZI','tasks/n7YBmdal7L7UuSEI1IVA1etHCfVtp3VgbSQi8PWX.pdf','ICT','Any'),
(2,'2024-05-18 10:31:52','2024-06-07 18:01:18','ICDL102','ICDL Professional','Presentations(Advanced), Documents\r\n(Advanced), Web Editing, Image\r\nEditing, Digital Marketing, Project\r\nPlanning, Management Spreadsheets,\r\nData Analytics, Advanced Database',NULL,NULL,'Inactive','12 Weeks',12,30000,'on','tasks/B7BV3UXQwbmbhZoN8sQjL9Hgj4KopAtNLLq8CfeJ.png','https://www.youtube.com/watch?v=HhCjir4WwZI','tasks/6Yv015INZlENcUoRqIYQwFTnBj026wLDMaOlGRR6.pdf','ICT','Any'),
(3,'2024-05-18 10:36:09','2024-06-30 11:57:47','WDD1','CSS','Web design and developement-CSS',NULL,NULL,'Deleted','4 weeks',12,0,'on','tasks/gTuuCISlp0ud1b4DJRu9dc9zV56OwjYsmTCFkRnC.png','https://www.youtube.com/@cleversschool8832','tasks/eF4O7fCFaeRIXMgoxhu5Hhfcx5ipBb1s25XG2vhx.pdf','ICT','Any'),
(4,'2024-06-07 11:51:36','2024-07-08 00:28:22','001','KCSE PRIVATE CANDIDATES','<p>This is a step by step guide on how to register for KCSE as a private candidate. Kenya National Examination Council (KNEC) is the overall body that oversees national examinations such as KCPE and KCSE.</p><p>KNEC provides room for one to register for KCSE as a private candidate. One can register for KCSE as a private candidate if he/she is sitting for the national exam for the second time or more, is serving as an inmate, missed previous exams or if the person is older than other students and may find it difficult to sit in a classroom with younger students. One can also register if he or she is seeking to get the KCSE certificate for the first time.</p><p><img src=\"https://www.pd.co.ke/wp-content/uploads/2019/11/kcse-1200x750.jpg\" alt=\"about\"></p><p>Before one registers for KCSE as a private candidate, he or she must meet or have the following requirements;</p><p>KCPE certificate<br>Birth certificate<br>Two passport size photos<br>More than 3 years. should have elapsed since one sat for KCPE<br>&nbsp;</p><h4><strong>How To Register For KCSE As A Private Candidate</strong></h4><p>The registration should be after the prospective private candidate has met all the necessary requirements prescribed by the Kenya National Examination Council.</p><p>The registration timeline varies and is always updated on our website and social media handles</p>',NULL,NULL,'Active','1 YEAR',12,17500,'on','tasks/qjoA6gNgVieZX9uqdB1fgiv6LZDPQ0HkP6UGK90K.jpg','https://youtu.be/ggXevjJ2M9I','tasks/WtbrUcQFkAcQONPbRrHd6Wi6vIzUaobmRpXL04Mx.pdf','KCSE PRIVATE CANDIDATES','KCPE'),
(5,'2024-06-07 12:02:28','2024-06-30 11:53:19','002','IGCSE PRIVATE CANDIDATES','IGCSE',NULL,NULL,'Deleted','6 MONTHS',180,0,'on','tasks/vatEkuqJvFfMj8HPSc9lzqMhO4IQtkaJOBfsIzDd.pdf','https://youtu.be/ggXevjJ2M9I','tasks/lAS9Uvpi3UNBEOJSyyKPZk2cJUU1KtySqaX1gOv8.pdf','KCSE PRIVATE CANDIDATES','None'),
(6,'2024-06-07 18:00:16','2024-06-07 18:00:16','003','AS & A Levels','KCSE',NULL,NULL,'Active','1 YEAR',12,0,'on','tasks/tBEtieM9WdfjpgFjfXx7Wx4IcbIB4VlFEfbiJPrF.jpg','https://youtu.be/ggXevjJ2M9I','tasks/g55D8QLlxdh7Myx28ROJ0IKfwFjJucpUsfbK7szl.pdf','AS/A LEVEL','IGCSE'),
(7,'2024-06-07 18:06:01','2024-06-30 11:53:40','002','IGCSE PRIVATE CANDIDATES','IGCSE',NULL,NULL,'Active','6 MONTHS',6,0,'on','tasks/kTDJxkFfzzf8LuVinQBdQu4IcYyneT1Amx9Pqisu.jpg','https://youtu.be/ggXevjJ2M9I','tasks/bq7xfOM7Nzl1EuAzVHg9YHI8M4L9gPrRsm9jgmjZ.pdf','IGCSE PRIVATE CANDIDATES','IGCSE'),
(8,'2024-06-16 14:48:28','2024-07-02 06:58:40','001','KCSE PRIVATE CANDIDATE','KCSE',NULL,NULL,'Deleted','1 YEAR',12,0,'on','tasks/DxuE4jXzbcZ8v8OnwOOCkkrURM3fK9jfRpWiNBwQ.png','https://youtu.be/ggXevjJ2M9I','tasks/JY0xWe7KnTW7ORURidJNARUTTfKOwxffb1EzZVXU.pdf','KCSE PRIVATE CANDIDATES','KCPE'),
(9,'2024-06-29 21:59:16','2024-07-02 07:02:50','CPA','CERTIFIED PUBLIC ACCOUNTANTS','<p>Certified Public Accountants are skilled and competent professional accountants, auditors, finance managers, tax consultants and practitioners both in public and private sectors. The Course takes a duration of 2 Years Foundation Level Level I *Financial Accounting *Introduction to Law and Governance *Communication skills Level II *Economics *Quantitave Analysis *Information Communication Technology Intermediate Level Level I *Company Law *Financial Management *Financial Reporting Level II *Auditing and Assurance *Management Accounting *Public Finance and Taxation Advanced Level Level I *Leadership and Management *Advanced Management Accounting *Advanced Financial Management Level II *Advanced Public Finance and Taxation *Advanced Auditing and Assurance *Advanced Financial Reporting</p>',NULL,NULL,'Active','12 Months',96,16000,'on','tasks/POX9wMvCNOM994DV0ieYSSUdO5BVcVjPUvqIN6g1.png','https://www.youtube.com/watch?v=HhCjir4WwZI','tasks/nqfNrziMFQwXqjhtQD1QtKa66v7n9eDkBXEwbLkA.pdf','Accounting','C+ and Above'),
(10,'2024-06-29 22:01:07','2024-07-02 06:59:55','ATD','ACCOUNTING TECHNICIANS DIPLOMA','<p>This Course qualification equips candidates with skills and competencies to work as middle level accountants providing technical support in accounting, auditing and taxation in both the public and private sectors. The Course takes a duration of 1 Year This Course entails Level I AD11 Introduction to Financial Accounting AD12 Principles of Business Law AD13 Entrepreneurship and Communication AD14 Information Communication Technology Level II AD21 Financial Accounting AD22 Principles of Management AD23 Business Mathematics and Statistics AD24 Fundamentals of Finance Level III AD31 Principles of Economics AD32 Fundamentals of Management Accounting AD33 Principles of Public Finance and Taxation AD34 Auditing</p>',NULL,NULL,'Active','12 Months',96,16000,'on','tasks/bsMelwHRIcWap6BE6D3VMsnaRcoUi2nsWhKGalEG.png','https://www.youtube.com/watch?v=HhCjir4WwZI','tasks/H67s3qbrfhlblGzu2Cv5zKKTYWHYKRcVFfdErlQl.pdf','Accounting','D+ and Above'),
(11,'2024-06-29 22:04:08','2024-07-02 07:00:41','CIFA','CERTIFIED INVESTMENT AND FINANCIAL ANALYSTS','<p>CERTIFIED INVESTMENT AND FINANCIAL ANALYSTS</p>',NULL,NULL,'Active','6 Months',96,18000,'on','tasks/gHr9DnavAkL7U7HLzGrJaNSX8JVUQ5gHc4As6LPv.jpg','https://www.youtube.com/watch?v=HhCjir4WwZI','tasks/0jwuuoynlIuJHwkOZZZTCZjmF78U8D9irS3T4hP6.pdf','Accounting','C+ and Above'),
(12,'2024-06-29 22:06:14','2024-07-02 07:01:56','CS','CERTIFIED SECRETARIES','<p>Certified Secretaries are expert practitioners in governance, governance audits and compliance, corporate secretarial practice, corporate law, consultancy and business management and administration. The Course takes a duration of 2 Years Foundation level Level I *Management Principles and Practice *Introduction to Law and Governance *Communication skills and Record Management Level II *Human Resources Management *Principles of Accounting and Taxation *Information Communication Technology Intermediate level Level I *Campany Law *Research, Consultancy and Advisory *Public Sector Governance, Policy Administration Level II *Financial Markets and Special Institutions *Corporate Governance and Ethics *Meetings Compliance Administration Advanced level Level I *Strategic Management *Finance for Dicission Making Level II *Boardroom Dynamics *Governance and Compliance Audit</p>',NULL,NULL,'Active','12 Months',96,18000,'on','tasks/LviGEcNb2BF4yzViZXfo3TW8827jURepspB7ulOa.jpg','https://www.youtube.com/watch?v=HhCjir4WwZI','tasks/Heltz5c2HuP0xr1190lPcqSRW0hJcyR8DBCRP5NH.pdf','Accounting','C+ and Above'),
(13,'2024-06-29 22:07:54','2024-07-02 07:00:19','CAMS','CERTIFICATE IN ACCOUNTING AND MANAGEMENT SKILLS','<p>Kasneb has introduced the Certificate in Accounting and Management Skills (CAMS) qualification following a comprehensive stakeholder engagement process which identified a critical gap in lower level accounting and management skills for the micro, small and medium enterprises sectors. In addition, holders of CAMS qualification will possess the competencies to provide basic accounting and management services to non-governmental organisations (NGOs) and public sector entities. The Course takes a duration of 8 Months Structure CAMS comprises of two levels with four (4) papers in Level I and three (3) papers in Level II, making a total of seven (7) papers, as summarised below. Level I CM11 Principles of Entrepreneurship and Management CM12 Introduction to Law and Ethics CM13 Fundamental ICT Skills CM14 Fundamentals of Business Mathematics Level II CM21 Foundations of Accounting and Auditing CM22 Elements of Public Finance and Administration CM23 Principles of Marketing and Communication</p>',NULL,NULL,'Active','6 Months',96,18000,'on','tasks/aWY3YPSwSL07TQjeBrLpuZN48EDqEZ5QRrJq3nGk.jpg','https://www.youtube.com/watch?v=HhCjir4WwZI','tasks/c50tDMbfnDb7e7WcMDEgB4JvJpdIhzEJCC80pk6f.pdf','Accounting','C+ and Above'),
(14,'2024-06-29 22:10:38','2024-07-02 01:22:16','CPA','CPA','<p>Certified Public Accountants are skilled and competent professional accountants, auditors, finance managers, tax consultants and practitioners both in public and private sectors.</p><p><strong>The Course takes a duration of 2 Years</strong></p><p>Foundation Level</p><p><strong>Level I</strong></p><p>*Financial Accounting</p><p>*Introduction to Law and Governance</p><p>*Communication skills</p><p><strong>Level II</strong></p><p>*Economics</p><p>*Quantitave Analysis</p><p>*Information Communication Technology</p><p>Intermediate Level</p><p><strong>Level I</strong></p><p>*Company Law</p><p>*Financial Management</p><p>*Financial Reporting</p><p><strong>Level II</strong></p><p>*Auditing and Assurance</p><p>*Management Accounting</p><p>*Public Finance and Taxation</p><p>Advanced Level</p><p><strong>Level I</strong></p><p>*Leadership and Management</p><p>*Advanced Management Accounting</p><p>*Advanced Financial Management</p><p><strong>Level II</strong></p><p>*Advanced Public Finance and Taxation</p><p>*Advanced Auditing and Assurance</p><p>*Advanced Financial Reporting</p><p>&nbsp;</p>',NULL,NULL,'Deleted','6 Months',96,18000,'on','tasks/qRWyBT2b0uonfkgiscapmbEUv8x1e9MVrbm4zTNS.png','https://www.youtube.com/watch?v=HhCjir4WwZI','tasks/8h4HX14P7flTeOlOfteA8fQibZPUGJviJyMONiPK.pdf','Accounting','C+ and Above'),
(15,'2024-07-02 15:46:40','2024-07-02 15:46:40','01234','ICT','<h2><strong>Long Term Courses</strong></h2><p>1. Information Technology</p><p>2. Information Communication Technology – ICT</p><p>3. Computer Engineering</p><p>4. Computer and mobile repair</p><p>5. Computer application</p><p>6. Computer programming</p><p>7. Computer science</p><p>8. Graphic and design</p><p>9. Information Technology</p><p>10. Internet Protocal</p><p>11. CCTV Management</p><p>12. Computing &amp; Information Systems Administration (DCNSA)</p><p>13. Certified Information Systems Solutions Expert (CISSE)</p><p>14. Computer Science &amp; Cyber Security&nbsp;</p><p>15. Information &amp; Cyber Security</p><p>16. Computer networks&nbsp;</p><p>&nbsp;</p><h2><strong>Short Term Courses (Open Courses)</strong></h2><p>1. Cyber security &amp; ethical hacking</p><p>2. Phone repair</p><p>3. Computer repair &amp; maintenance</p><p>4. Computer packages</p><p>5. ICDL</p><p>6. Operating systems</p><p>7. Graphic design</p><p>8. Computer Aided Design</p><p>9. Web design&nbsp;</p><p>10. Microsoft office</p><p>11. Programming Languages</p><p>12. CISCO Networking Academy</p><p>13. Ethical hacking&nbsp;</p><p>14.&nbsp; &nbsp; &nbsp; Flatter developer</p><p>15.&nbsp; &nbsp; &nbsp; IOS Developer</p><p>16.&nbsp; &nbsp; &nbsp; Android developer</p><p>17.&nbsp; &nbsp; &nbsp; Nodes JS&nbsp;</p><p>18.&nbsp; &nbsp; &nbsp; Server administration</p><p>19.&nbsp; &nbsp; &nbsp; N+&nbsp;</p><p>20.&nbsp; &nbsp; &nbsp; A+</p><p>21.&nbsp; &nbsp; &nbsp; Python</p><p>&nbsp;</p><p>&nbsp;</p><h2><strong>COMPUTER PACKAGES</strong></h2><h2>&nbsp;</h2><p>Certificate in Computer Application is awarded upon completion of the course</p><p>&nbsp;</p><p>New classes commence every Monday.</p><p>&nbsp;</p><p>Course Units</p><p>&nbsp;</p><p>1. Concept of IT</p><p>2. Microsoft Windows</p><p>3. Word processing Using Ms Word</p><p>4. Spreadsheet using Ms Excel</p><p>5. Database Management Using Ms Access</p><p>6. Graphic Presentation using Microsoft Power point</p><p>7. Personal Information Management Using Ms Outlook</p><p>8. Desktop Publishing using Ms Publisher</p><p>9. Internet Communication/Browsing</p><p>10. Typing Using Mavis Beacon</p><p>11. Social Media and Networking</p><p>12. PC Troubleshooting</p><p>13. Computer Networking</p><p>14. Software Installation/Uninstallation</p><p>&nbsp;</p><p>Duration: 1-3 months depending on the number of hours you attend class per day. Part-time; Evening and Saturday classes Available</p><p>&nbsp;</p><p>......................................................................</p><p>OTHER PARTIALLY SPONSORED COMPUTER COURSES</p><p>......................................................................</p><h2><strong>MICROSOFT OFFICE COURSES</strong></h2><p>• Microsoft Excel</p><p>• Microsoft Access</p><p>• Microsoft Word</p><p>• Microsoft Outlook</p><p>&nbsp;</p><p>COMPUTER-AIDED GRAPHIC DESIGN</p><p>• Corel Draw&nbsp;</p><p>• Adobe Illustrator&nbsp;</p><p>• Adobe Photoshop&nbsp;</p><p>• Adobe InDesign&nbsp;</p><p>• Microsoft Publisher</p><p>&nbsp;</p><p>COMPUTER-AIDED DESIGN&nbsp;</p><p>• Auto CAD</p><p>• Archi CAD</p><p>• Piranessi</p><p>• Atlantis</p><p>&nbsp;</p><p>WEB DESIGN AND DEVELOPMENT&nbsp;</p><p>• HTML</p><p>• Adobe Flash Builder</p><p>• ASP</p><p>• Joomla&nbsp;</p><p>• JavaScript</p><p>• PHP</p><p>&nbsp;</p><p>PROGRAMMING LANGUAGES</p><p>• Java</p><p>• JavaScript</p><p>• C++</p><p>• Visual Basic</p><p>• PHP</p><p>• SQL</p><p>• Python</p><p>• C#</p><p>&nbsp;</p><p>STATISTICAL PACKAGES&nbsp;</p><p>• Statistical Theory</p><p>• MS Project</p><p>• SPSS</p><p>• Stata</p><p>&nbsp;</p><p>FINANCIAL (ACCOUNTING) APPLICATIONS&nbsp;</p><p>• Sage 50 Accounts</p><p>• Pastel Partner&nbsp;</p><p>• Pastel Evolution End-User</p><p>• Quick Books</p><p>• Tally</p>',NULL,NULL,'Active','3 MONTHS',60,4500,'on','tasks/F0r7qlJD9q8h4Qei5yiTyW8VWT92unXLyLkxMD6P.jpg','https://youtu.be/ggXevjJ2M9I','tasks/JSWVgZ3TR87sjBc6MEWLprWLMZb9WwwIgGWCnebh.pdf','KCSE PRIVATE CANDIDATES','TOD'),
(16,'2024-07-04 10:32:52','2024-07-04 10:32:52','01234','Sign Language','<blockquote><p><i><strong>About Kenyan Sign Language Course:</strong></i></p></blockquote><p>Kenyan Sign Language is a comprehensive course designed to teach participants the fundamentals of sign language communication. Over the course of three months, students will learn essential signs, gestures, and expressions used in Kenyan Sign Language. This program is ideal for individuals interested in improving communication with the deaf community and expanding their language skills.</p><blockquote><p><a href=\"www.clevers.co.ke/courses\"><i><strong>Key Highlights:</strong></i></a></p></blockquote><p>Learn from Experienced Instructors: Our instructors are fluent in Kenyan Sign Language and have years of experience teaching sign language communication.</p><p>Practical Learning Experience: Through hands-on practice and interactive sessions, students will develop proficiency in Kenyan Sign Language.</p><p>Enhanced Communication Skills: Mastering Kenyan Sign Language opens doors to better communication and inclusivity in various settings.</p><blockquote><p>Why Choose Clevers CLPD for Kenyan Sign Language?</p></blockquote><p>Industry-Recognized Certification: Upon completion, participants will receive a certificate from Clevers, recognized by relevant organizations.</p><p>Flexible Learning Options: Our flexible scheduling options accommodate busy lifestyles, making it convenient to attend classes.</p><p>Enrollment Details:</p><p>Ready to learn Kenyan Sign Language? Enroll now by visiting our <a href=\"https://www.theidioms.com/#\">website</a> at https://www.clevers.co.ke/</p><p><a href=\"https://www.kemu.ac.ke/\">] </a>and navigate to the CLPD section to <a href=\"https://virtual.kemu.ac.ke/hds/\">register online</a>.</p><p>Don’t miss this opportunity to learn Kenyan Sign Language and enhance your communication skills! Enroll today at<a href=\"https://www.kemu.ac.ke/\"> https://www.clevers.co,ke/courses</a></p>',NULL,NULL,'Active','6 MONTHS',72,10000,'on','tasks/juT8JFXgrPw4juS2TYE6sTO2JgK5XINBBMmLp78n.png','https://youtu.be/ggXevjJ2M9I','tasks/LbfqZLA6tti2JjqZGkw3g1xdVrXLjv7keUP3Gn2g.pdf','Sign Language','OPEN');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `file` longtext NOT NULL,
  `views` bigint(20) NOT NULL,
  `downloads` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloads`
--

LOCK TABLES `downloads` WRITE;
/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;
INSERT INTO `downloads` (`id`, `created_at`, `updated_at`, `name`, `file`, `views`, `downloads`) VALUES (6,'2024-07-04 16:14:17','2024-07-04 16:14:17','ICT, LANGUAGES & SIGN LANGUAGE','downloads/rpufUwlUDGE6zzAumoZPqD5kTbEjYinhqBcO47Dq.pdf',0,0),
(11,'2024-12-06 03:39:30','2024-12-06 03:39:30','2025 IGCSE BROCHURE & FEE STRUCTURE','downloads/dOX5xhWK074t2sdm5mAKhR4jYD1oUjzzh9aQp3Xg.pdf',0,0),
(12,'2025-03-10 03:08:26','2025-03-10 03:08:26','KCSE BROCHURE & FEE STRUCTURE','downloads/OoPj4bkAK5OElEaQK0MmNxHRXYs0ojJsEM4vRhna.pdf',0,0);
/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_lists`
--

DROP TABLE IF EXISTS `email_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_lists`
--

LOCK TABLES `email_lists` WRITE;
/*!40000 ALTER TABLE `email_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description_short` longtext DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `organizer` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `sponsors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sponsors`)),
  `objectives` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`objectives`)),
  `banner` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `endTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`, `created_at`, `updated_at`, `title`, `description`, `description_short`, `category`, `organizer`, `location`, `date`, `startTime`, `cost`, `sponsors`, `objectives`, `banner`, `status`, `endTime`) VALUES (1,'2024-05-19 12:52:54','2024-05-19 12:52:54','Cultural Day','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\r\ntypesetting, remaining essentially unchanged.',NULL,'Journalism and Media','Clevers Kenya','Nairobi,Kenya','2024-05-24','07:50:00','0',NULL,'[\"Over 37 lectures and 55.5 hours of content!\",\"LIVE PROJECT End to End Software Testing Training Included.\",\"Learn Software Testing and Automation basics from a professional trainer from your own desk.\",\"Best suitable for beginners to advanced level users and who learn faster when demonstrated.\"]','tasks/leHnx2Ae7rDw8QRpJlZzf1uRxiKDRe8OkmI8vi8z.jpg','Active','2024-05-19 22:50:00'),
(2,'2024-05-19 13:02:59','2024-05-19 13:02:59','Innovation Week','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\r\ntypesetting, remaining essentially unchanged.',NULL,'Journalism and Media','Clevers Kenya','Nairobi,Kenya','2024-06-01','06:01:00','0',NULL,'[\"LIVE PROJECT End to End Software Testing Training Included. Learn Software Testing and Automation basics from a professional trainer from your own desk. Information packed practical training starting from basics to advanced testing techniques. Best suitable for beginners to advanced level users and who learn faster when demonstrated. Course content designed by considering current software testing technology and the job market.\"]','tasks/WyX3LwjIDj1EY7mIaUsFxRHsIyc3Dx8DAgctXBYg.jpg','Active','2024-05-19 18:02:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examiners`
--

DROP TABLE IF EXISTS `examiners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `examiners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `icon` longtext DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examiners`
--

LOCK TABLES `examiners` WRITE;
/*!40000 ALTER TABLE `examiners` DISABLE KEYS */;
INSERT INTO `examiners` (`id`, `created_at`, `updated_at`, `name`, `code`, `description`, `icon`, `metadata`) VALUES (1,'2024-05-30 14:07:20','2024-05-30 14:07:20','CDACC',NULL,NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsPTjLYveUC0eO-4xLvLQ8mENbp3mO1pHw7A&s',NULL),
(2,'2024-05-30 14:07:55','2024-05-30 14:07:55','KNEC',NULL,NULL,'https://seeklogo.com/images/K/knec-logo-4B27373DF8-seeklogo.com.png',NULL),
(3,'2024-05-30 14:08:30','2024-05-30 14:08:30','KASNEB',NULL,NULL,'https://www.kasneb.or.ke/wp-content/uploads/2021/07/kasneb-logo-removebg-preview-1.png',NULL),
(4,'2024-05-30 14:09:32','2024-05-30 14:09:32','NITA',NULL,NULL,'https://www.nita.go.ke/images/essentials/NITA-Logo.png',NULL),
(5,'2024-05-30 14:11:25','2024-05-30 14:11:25','KCAA',NULL,NULL,'https://assronline.kcaa.or.ke/Content/images/logo.png',NULL),
(6,'2024-05-30 14:11:57','2024-05-30 14:11:57','KMTC',NULL,NULL,'https://kmtc.ac.ke/wp-content/uploads/2019/06/cropped-download.jpg',NULL);
/*!40000 ALTER TABLE `examiners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `founders`
--

DROP TABLE IF EXISTS `founders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `founders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `founder` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `founders`
--

LOCK TABLES `founders` WRITE;
/*!40000 ALTER TABLE `founders` DISABLE KEYS */;
INSERT INTO `founders` (`id`, `created_at`, `updated_at`, `breadcrumb`, `founder`, `title`, `description`, `content`) VALUES (1,'2024-07-02 00:44:41','2024-09-29 23:38:20','breadcrumbs/lLexe66Yv4fTuQd1qS0QS0E2KUqCJSyRUscQnvzL.jpg','founder/6LbkhVjlMO9a3EzFvfOvaIbIHDBqy7kZQaF9t2fg.jpg','Why Clevers Schools','<p>Your interest in joining our exceptional institution is truly appreciated. Get ready to embark on an exciting journey towards academic excellence fused with dynamic courses that redefine leadership.</p><p><strong>15+ Years of remarkable legacy</strong> delivering top-notch technical education and training</p><p>We offer a diverse range of courses, from KCSE, IGCSE, A levels, ICT, Accounting and business courses. all designed to equip you not only with theoretical knowledge but also hands-on practical expertise essential for your success.</p>','<p>Rest assured, our commitment to quality is unwavering. Endorsed by the Ministry of Education and authorized by the Technical and Vocational Education and Training Authority (TVETA), we guarantee a superior education and practical training that aligns with industry standards. Our graduates are armed with qualifications that not only meet but exceed occupational expectations.</p><p>At Clevers, we take pride in our adherence to the Kenya National Qualifications Authority (KNQA) framework and relevant benchmarks. This means that our courses are not only in sync with industry demands but also recognized by leading businesses and higher education institutions.</p><p>Our esteemed faculty comprises experienced professionals, accredited trainers, and curriculum developers holding advanced postgraduate qualifications. Together, they create an environment where learning is not only enriching but also results-driven. The support of our dedicated staff ensures a seamless and productive learning journey for every student.</p><p>Step into the future with our state-of-the-art facilities, including modern computers, high-speed internet access, and cutting-edge information and communications technologies. Beyond the classroom, we provide real-world exposure through study tours, seminars, guest lectures, and innovative initiatives that connect you with the latest industry advancements. Join us at Clevers Institute and let us redefine education together.</p><p>To Parents , I assure you that CLIPS is a vibrant and engaging community of Trainers and trainees. I also believe that your active involvement is integral to the academic success of your son/daughter. We are resolute on molding the learner’s character and that is why we give them personalized attention. We encourage parents to visit the College once in a while, to meet your son’s daughter’s trainers and have a feel of what this academic zone offers.</p>');
/*!40000 ALTER TABLE `founders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `caption` longtext NOT NULL,
  `file` varchar(255) NOT NULL,
  `views` bigint(20) NOT NULL,
  `likes` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` (`id`, `created_at`, `updated_at`, `caption`, `file`, `views`, `likes`) VALUES (5,'2024-05-29 22:28:23','2025-11-16 10:59:46','School photos','gallery/TI9F9aeKWVoiRXrLFbfbZlJIc6DM5QXzho7NOg5N.jpg',0,412),
(6,'2024-05-29 22:28:23','2025-11-16 16:39:51','School photos','gallery/XWBeYkAveHpDEcqFD2tW7tut1YwssQFgxvqav0Oo.jpg',0,219),
(7,'2024-05-29 22:28:23','2025-11-16 10:59:49','School photos','gallery/TxBETMkRT4eGo1RFriYywpEoqgcoMWNxvX99H1HA.jpg',0,261),
(8,'2024-05-29 22:28:24','2025-11-16 10:59:46','School photos','gallery/P5htaVfuedgryxNuzUJ43WcQQrUJThO5wt8GNvFC.webp',0,222),
(9,'2024-05-29 22:28:24','2025-11-16 10:59:48','School photos','gallery/SDVTxnp5j8N2DQQtxdjMpD2xCqekfx3FEHrNl6Eh.jpg',0,532),
(10,'2024-05-29 22:28:24','2025-11-16 10:59:50','School photos','gallery/jWzd2hgyxlPjO8DxJIpkHlALpcpeZXYOA0BhtjZR.webp',0,659),
(11,'2024-06-27 01:32:14','2025-11-16 10:59:52','KCSE RESULTS','gallery/s9xyGxqtzqsfgC1wDyWkQFzOnf3A2s7NDBFoou8Y.jpg',0,498),
(12,'2024-07-02 13:11:06','2025-11-16 10:59:51','Our Director','gallery/ZnB8HgE7KJ6urN2EeQMQzo6Wv2Z6eGxqjGRFLhE2.jpg',0,202),
(13,'2024-07-02 13:11:06','2025-11-16 10:59:49','Our Institution','gallery/UXkUUQaRcvjclZZLctjVX7sgF6DU8EDwSpqk8K10.jpg',0,205),
(14,'2024-07-02 13:11:06','2025-11-16 10:59:51','Our Institution','gallery/92Gwg8nCdXz05daNpWUVfyoVJOGnrmqK27eXqAN8.jpg',0,449);
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_art`
--

DROP TABLE IF EXISTS `home_art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_art` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_art`
--

LOCK TABLES `home_art` WRITE;
/*!40000 ALTER TABLE `home_art` DISABLE KEYS */;
INSERT INTO `home_art` (`id`, `created_at`, `updated_at`, `title`, `description`, `image`) VALUES (1,'2024-07-02 00:36:24','2024-07-02 00:36:24','Art and Music','CLIPS gives you an opportunity to compliment and explore skills besides the academics.','art/1XnIrz02tAScvE2Eh9bfG8o6i5tb22b00cR5AXdm.jpg');
/*!40000 ALTER TABLE `home_art` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_sports`
--

DROP TABLE IF EXISTS `home_sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_sports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_sports`
--

LOCK TABLES `home_sports` WRITE;
/*!40000 ALTER TABLE `home_sports` DISABLE KEYS */;
INSERT INTO `home_sports` (`id`, `created_at`, `updated_at`, `title`, `description`, `image`) VALUES (1,'2024-07-02 00:37:00','2024-07-02 00:37:00','Sports','CLIPS gives you an opportunity to compliment and explore skills besides the academics','sports/viX44keBjTHSqk33Jf3e3nr3FY68zsgwugFqfIj4.jpg');
/*!40000 ALTER TABLE `home_sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_wellnesses`
--

DROP TABLE IF EXISTS `home_wellnesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_wellnesses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_wellnesses`
--

LOCK TABLES `home_wellnesses` WRITE;
/*!40000 ALTER TABLE `home_wellnesses` DISABLE KEYS */;
INSERT INTO `home_wellnesses` (`id`, `created_at`, `updated_at`, `title`, `description`, `image`) VALUES (1,'2024-07-02 00:35:51','2024-07-02 00:35:51','Student Wellness','Where we challenge the students to make good decisions and lead positive lifestyle','wellness/5bMLS5aMSpEKnAeBVuAabCWGtHgfkoRaOA0UamcG.jpg');
/*!40000 ALTER TABLE `home_wellnesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intakes`
--

DROP TABLE IF EXISTS `intakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `intakes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Inactive',
  `name` varchar(255) NOT NULL,
  `createdBy` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intakes`
--

LOCK TABLES `intakes` WRITE;
/*!40000 ALTER TABLE `intakes` DISABLE KEYS */;
INSERT INTO `intakes` (`id`, `created_at`, `updated_at`, `startDate`, `endDate`, `status`, `name`, `createdBy`) VALUES (1,'2024-05-29 22:24:41','2024-05-30 01:03:35','2024-06-01 03:22:00','2024-06-15 03:22:00','Active','June 2024',1);
/*!40000 ALTER TABLE `intakes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `notes` longtext NOT NULL,
  `name` longtext NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`files`)),
  `jobId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applications`
--

LOCK TABLES `job_applications` WRITE;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2024_05_01_121417_create_categories_table',1),
(6,'2024_05_01_131520_create_courses_table',1),
(7,'2024_05_02_054255_create_permission_tables',1),
(8,'2024_05_18_233423_create_events_table',2),
(9,'2024_05_19_022513_create_blogs_table',2),
(10,'2024_05_24_113435_create_comments_table',3),
(11,'2024_05_25_164219_create_teachers_table',4),
(12,'2024_05_26_113706_create_semesters_table',4),
(13,'2024_05_28_182043_create_downloads_table',5),
(14,'2024_05_29_204320_create_past_papers_table',5),
(15,'2024_05_29_210847_create_careers_table',5),
(16,'2024_05_29_221333_create_job_applications_table',5),
(17,'2024_05_29_222520_create_galleries_table',5),
(18,'2024_05_30_000526_create_intakes_table',5),
(19,'2024_05_30_101305_create_examiners_table',6),
(20,'2024_05_30_105431_create_study_modes_table',6),
(21,'2024_06_03_113704_create_applicants_table',7),
(22,'2024_06_06_200839_create_students_table',7),
(23,'2024_06_10_003254_create_units_table',8),
(24,'2024_06_15_185233_update_units_table',8),
(25,'2024_06_15_191237_create_unit_registrations_table',8),
(26,'2024_06_15_201001_create_unit_marks_table',8),
(27,'2024_06_15_204758_update_units_table',8),
(28,'2024_06_16_172354_update_students',9),
(29,'2024_06_16_182942_create_student_reportings_table',9),
(30,'2024_06_16_222356_create_assignments_table',9),
(31,'2024_06_17_000739_create_submissions_table',9),
(32,'2024_06_17_001521_update_submissions',9),
(33,'2024_06_17_003424_update_submissions',9),
(34,'2024_06_16_224142_update_assignments',10),
(35,'2024_06_16_224639_update_assignments',10),
(36,'2024_06_28_194719_create_sliders_table',11),
(37,'2024_06_28_204115_create_about_sections_table',11),
(38,'2024_07_01_231655_update_applicants',12),
(39,'2024_07_02_003706_create_home_wellnesses_table',13),
(40,'2024_07_02_005549_create_home_art_table',13),
(41,'2024_07_02_010047_create_home_sports_table',13),
(42,'2024_07_02_011738_create_testimonials_table',13),
(43,'2024_07_02_024514_create_founders_table',14),
(44,'2024_07_07_210404_create_email_lists_table',15),
(45,'2024_07_07_212927_update_students',16),
(46,'2024_07_12_054045_update_students',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES (1,'App\\Models\\User',1),
(1,'App\\Models\\User',3),
(1,'App\\Models\\User',30),
(2,'App\\Models\\User',3),
(2,'App\\Models\\User',30),
(4,'App\\Models\\User',3),
(4,'App\\Models\\User',29),
(4,'App\\Models\\User',30),
(5,'App\\Models\\User',3),
(5,'App\\Models\\User',4),
(5,'App\\Models\\User',5),
(5,'App\\Models\\User',6),
(5,'App\\Models\\User',7),
(5,'App\\Models\\User',8),
(5,'App\\Models\\User',9),
(5,'App\\Models\\User',10),
(5,'App\\Models\\User',11),
(5,'App\\Models\\User',12),
(5,'App\\Models\\User',13),
(5,'App\\Models\\User',14),
(5,'App\\Models\\User',15),
(5,'App\\Models\\User',16),
(5,'App\\Models\\User',17),
(5,'App\\Models\\User',18),
(5,'App\\Models\\User',19),
(5,'App\\Models\\User',20),
(5,'App\\Models\\User',21),
(5,'App\\Models\\User',22),
(5,'App\\Models\\User',23),
(5,'App\\Models\\User',24),
(5,'App\\Models\\User',25),
(5,'App\\Models\\User',26),
(5,'App\\Models\\User',27),
(5,'App\\Models\\User',28),
(5,'App\\Models\\User',31),
(5,'App\\Models\\User',32),
(5,'App\\Models\\User',33),
(5,'App\\Models\\User',34),
(5,'App\\Models\\User',35),
(5,'App\\Models\\User',36),
(5,'App\\Models\\User',37),
(5,'App\\Models\\User',38),
(5,'App\\Models\\User',39),
(5,'App\\Models\\User',40),
(5,'App\\Models\\User',41),
(5,'App\\Models\\User',42),
(5,'App\\Models\\User',43),
(5,'App\\Models\\User',44),
(5,'App\\Models\\User',45),
(5,'App\\Models\\User',46),
(5,'App\\Models\\User',47),
(5,'App\\Models\\User',48),
(5,'App\\Models\\User',49),
(5,'App\\Models\\User',50),
(5,'App\\Models\\User',51),
(5,'App\\Models\\User',52),
(5,'App\\Models\\User',53),
(5,'App\\Models\\User',54),
(5,'App\\Models\\User',55),
(5,'App\\Models\\User',56),
(5,'App\\Models\\User',57),
(5,'App\\Models\\User',58),
(5,'App\\Models\\User',59),
(5,'App\\Models\\User',60),
(5,'App\\Models\\User',61),
(5,'App\\Models\\User',62),
(5,'App\\Models\\User',63),
(5,'App\\Models\\User',64),
(5,'App\\Models\\User',65),
(5,'App\\Models\\User',66),
(5,'App\\Models\\User',67),
(5,'App\\Models\\User',68),
(5,'App\\Models\\User',69),
(5,'App\\Models\\User',70),
(5,'App\\Models\\User',71),
(5,'App\\Models\\User',72),
(5,'App\\Models\\User',73),
(5,'App\\Models\\User',74),
(5,'App\\Models\\User',75),
(5,'App\\Models\\User',76),
(5,'App\\Models\\User',77),
(5,'App\\Models\\User',78),
(5,'App\\Models\\User',79),
(5,'App\\Models\\User',80),
(5,'App\\Models\\User',81),
(5,'App\\Models\\User',82),
(5,'App\\Models\\User',83),
(5,'App\\Models\\User',84),
(5,'App\\Models\\User',85),
(5,'App\\Models\\User',86),
(5,'App\\Models\\User',87),
(5,'App\\Models\\User',88),
(5,'App\\Models\\User',89),
(5,'App\\Models\\User',90),
(5,'App\\Models\\User',91),
(5,'App\\Models\\User',92),
(5,'App\\Models\\User',93),
(5,'App\\Models\\User',94),
(5,'App\\Models\\User',95),
(5,'App\\Models\\User',96),
(5,'App\\Models\\User',97),
(5,'App\\Models\\User',98),
(5,'App\\Models\\User',99),
(5,'App\\Models\\User',100),
(5,'App\\Models\\User',101),
(5,'App\\Models\\User',102),
(5,'App\\Models\\User',103),
(5,'App\\Models\\User',104),
(5,'App\\Models\\User',105),
(5,'App\\Models\\User',106),
(5,'App\\Models\\User',107),
(5,'App\\Models\\User',108),
(5,'App\\Models\\User',109),
(5,'App\\Models\\User',110),
(5,'App\\Models\\User',111),
(5,'App\\Models\\User',112),
(5,'App\\Models\\User',113),
(5,'App\\Models\\User',114),
(5,'App\\Models\\User',115),
(5,'App\\Models\\User',116),
(5,'App\\Models\\User',117),
(5,'App\\Models\\User',118),
(5,'App\\Models\\User',119),
(5,'App\\Models\\User',120),
(5,'App\\Models\\User',121),
(5,'App\\Models\\User',122),
(5,'App\\Models\\User',123),
(5,'App\\Models\\User',124),
(5,'App\\Models\\User',125),
(5,'App\\Models\\User',126),
(5,'App\\Models\\User',127),
(5,'App\\Models\\User',128),
(5,'App\\Models\\User',129),
(5,'App\\Models\\User',130),
(5,'App\\Models\\User',131),
(5,'App\\Models\\User',132),
(5,'App\\Models\\User',133),
(5,'App\\Models\\User',134),
(5,'App\\Models\\User',135),
(5,'App\\Models\\User',136),
(5,'App\\Models\\User',137),
(5,'App\\Models\\User',138),
(5,'App\\Models\\User',139),
(5,'App\\Models\\User',140),
(5,'App\\Models\\User',141),
(5,'App\\Models\\User',142),
(5,'App\\Models\\User',143),
(5,'App\\Models\\User',144),
(5,'App\\Models\\User',145),
(5,'App\\Models\\User',146),
(5,'App\\Models\\User',147),
(5,'App\\Models\\User',148),
(5,'App\\Models\\User',149),
(5,'App\\Models\\User',150),
(5,'App\\Models\\User',151),
(5,'App\\Models\\User',152),
(5,'App\\Models\\User',153),
(5,'App\\Models\\User',154),
(5,'App\\Models\\User',155),
(5,'App\\Models\\User',156),
(5,'App\\Models\\User',157),
(5,'App\\Models\\User',158),
(5,'App\\Models\\User',159),
(5,'App\\Models\\User',160),
(5,'App\\Models\\User',161),
(5,'App\\Models\\User',162),
(5,'App\\Models\\User',163),
(5,'App\\Models\\User',164),
(5,'App\\Models\\User',165),
(5,'App\\Models\\User',166),
(5,'App\\Models\\User',167),
(5,'App\\Models\\User',168),
(5,'App\\Models\\User',169),
(5,'App\\Models\\User',170),
(5,'App\\Models\\User',171),
(5,'App\\Models\\User',172),
(5,'App\\Models\\User',173),
(5,'App\\Models\\User',174),
(5,'App\\Models\\User',175),
(5,'App\\Models\\User',176),
(5,'App\\Models\\User',177),
(5,'App\\Models\\User',178),
(5,'App\\Models\\User',179),
(5,'App\\Models\\User',180),
(5,'App\\Models\\User',181),
(5,'App\\Models\\User',182),
(5,'App\\Models\\User',183),
(5,'App\\Models\\User',184),
(5,'App\\Models\\User',185),
(5,'App\\Models\\User',186),
(5,'App\\Models\\User',187),
(5,'App\\Models\\User',188),
(5,'App\\Models\\User',189),
(5,'App\\Models\\User',190),
(5,'App\\Models\\User',191),
(5,'App\\Models\\User',192),
(5,'App\\Models\\User',193),
(5,'App\\Models\\User',194),
(5,'App\\Models\\User',195),
(5,'App\\Models\\User',196),
(5,'App\\Models\\User',197),
(5,'App\\Models\\User',198),
(5,'App\\Models\\User',199),
(5,'App\\Models\\User',200),
(5,'App\\Models\\User',201),
(5,'App\\Models\\User',202),
(5,'App\\Models\\User',203),
(5,'App\\Models\\User',204),
(5,'App\\Models\\User',205),
(5,'App\\Models\\User',206),
(5,'App\\Models\\User',207),
(5,'App\\Models\\User',208),
(5,'App\\Models\\User',209),
(5,'App\\Models\\User',210),
(5,'App\\Models\\User',211),
(5,'App\\Models\\User',212),
(5,'App\\Models\\User',213),
(5,'App\\Models\\User',214),
(5,'App\\Models\\User',215),
(5,'App\\Models\\User',216),
(5,'App\\Models\\User',217),
(5,'App\\Models\\User',218),
(5,'App\\Models\\User',219),
(5,'App\\Models\\User',220),
(5,'App\\Models\\User',221),
(5,'App\\Models\\User',222),
(5,'App\\Models\\User',223),
(5,'App\\Models\\User',224),
(5,'App\\Models\\User',225),
(5,'App\\Models\\User',226),
(5,'App\\Models\\User',227),
(5,'App\\Models\\User',228),
(5,'App\\Models\\User',229),
(5,'App\\Models\\User',230),
(5,'App\\Models\\User',231),
(5,'App\\Models\\User',232),
(5,'App\\Models\\User',233),
(5,'App\\Models\\User',234),
(5,'App\\Models\\User',235),
(5,'App\\Models\\User',236),
(5,'App\\Models\\User',237),
(5,'App\\Models\\User',238),
(5,'App\\Models\\User',239),
(5,'App\\Models\\User',240),
(5,'App\\Models\\User',241),
(5,'App\\Models\\User',242),
(5,'App\\Models\\User',243),
(5,'App\\Models\\User',244),
(5,'App\\Models\\User',245),
(5,'App\\Models\\User',246),
(5,'App\\Models\\User',247),
(5,'App\\Models\\User',248),
(5,'App\\Models\\User',249),
(5,'App\\Models\\User',250),
(5,'App\\Models\\User',251),
(5,'App\\Models\\User',252),
(5,'App\\Models\\User',253),
(5,'App\\Models\\User',254),
(5,'App\\Models\\User',255),
(5,'App\\Models\\User',256),
(5,'App\\Models\\User',257),
(5,'App\\Models\\User',258),
(5,'App\\Models\\User',259),
(5,'App\\Models\\User',260),
(5,'App\\Models\\User',261),
(5,'App\\Models\\User',262),
(5,'App\\Models\\User',263),
(5,'App\\Models\\User',264),
(5,'App\\Models\\User',265),
(5,'App\\Models\\User',266),
(5,'App\\Models\\User',267),
(5,'App\\Models\\User',268),
(5,'App\\Models\\User',269),
(5,'App\\Models\\User',270),
(5,'App\\Models\\User',271),
(5,'App\\Models\\User',272),
(5,'App\\Models\\User',273),
(5,'App\\Models\\User',274),
(5,'App\\Models\\User',275),
(5,'App\\Models\\User',276),
(5,'App\\Models\\User',277),
(5,'App\\Models\\User',278),
(5,'App\\Models\\User',279),
(5,'App\\Models\\User',280),
(5,'App\\Models\\User',281),
(5,'App\\Models\\User',282),
(5,'App\\Models\\User',283),
(5,'App\\Models\\User',284),
(5,'App\\Models\\User',285),
(5,'App\\Models\\User',286),
(5,'App\\Models\\User',287),
(5,'App\\Models\\User',288),
(5,'App\\Models\\User',289),
(5,'App\\Models\\User',290),
(5,'App\\Models\\User',291),
(5,'App\\Models\\User',292),
(5,'App\\Models\\User',293),
(5,'App\\Models\\User',294),
(8,'App\\Models\\User',30);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES ('felixngigeh@gmail.com','$2y$12$nxJdHAKh5CIv84q8m.Dx7ebmP8FW.XPYaVDwNzmn/muQIYNTXO8qa','2025-09-12 11:44:53'),
('jacksonsweya2@gmail.com','$2y$12$T7K6enUiX8FN2UwvP9BjdukPuw5OdKW2knEcmuR3.4XYVynkcK9Fy','2024-11-08 12:47:18'),
('kimondop25@gmail.com','$2y$12$PZhFRkCH.lG1TOkziVGhaOZ0dfC347w4MUz9CwI5LPKYSwTn5z9lS','2024-12-18 06:04:48'),
('linusochieng71@gmail.com','$2y$12$Rhxk24KFCFRO48qY0oy9LeC/A5aspqDn2arHykv0yWuNpB7tDZope','2024-10-03 03:18:38'),
('mdanielmajakmanyin@gmail.com','$2y$12$S7j08YVOpudDurgmrcBUZuQIEtzZvdKc7pyyF.zv3KW..JQbifvwe','2024-10-03 08:26:38'),
('MILDREDTOLONDO@GMAIL.COM','$2y$12$pKiaPxJ9YvStMSYdBVcbnuVp.0.oCsAhozK15c/YFy/QO9FeLJgyG','2025-02-04 03:53:19'),
('orondohesbon@gmail.com','$2y$12$NnF7qb21oBmhXsZTXKkmP.i0vcj5tsFbjt9CUZNfQMPapKMAMaUxK','2024-10-06 16:17:14'),
('renenyangoya@gmail.com','$2y$12$Pa/OWZTEWsVl/JqYkeNQBubMx2eN7x1qGKBX5fRt9DQVhZA728sBq','2024-12-13 13:51:12');
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `past_papers`
--

DROP TABLE IF EXISTS `past_papers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `past_papers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject` longtext NOT NULL,
  `file` varchar(255) NOT NULL,
  `views` bigint(20) NOT NULL,
  `downloads` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `past_papers`
--

LOCK TABLES `past_papers` WRITE;
/*!40000 ALTER TABLE `past_papers` DISABLE KEYS */;
INSERT INTO `past_papers` (`id`, `created_at`, `updated_at`, `subject`, `file`, `views`, `downloads`, `school`) VALUES (1,'2024-05-30 01:21:49','2024-05-30 01:21:49','IGCSE PRIVATE CANDIDATES','downloads/wnbB6y5UIXtpDiBgaY7Fqnj6pBHEGJPMCH5R5dwq.pdf',0,'0','KCSE PRIVATE CANDIDATES');
/*!40000 ALTER TABLE `past_papers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (1,'SuperAdmin','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(2,'Admin','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(3,'Staff','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(4,'Lecturer','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(5,'Student','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(6,'ClassRep','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(7,'Secretary','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(8,'Accountant','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(9,'Registrar','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(10,'Procurement','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(11,'Chancellor','web','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(12,'Dean','web','2024-05-18 10:18:26','2024-05-18 10:18:26');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `semesters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Inactive',
  `name` varchar(255) NOT NULL,
  `createdBy` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` (`id`, `created_at`, `updated_at`, `startDate`, `endDate`, `status`, `name`, `createdBy`) VALUES (1,'2024-05-26 10:24:40','2024-05-30 01:04:01','2024-05-01 06:00:00','2024-09-01 06:00:00','Active','Semester 1 2024',1);
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bigText` longtext NOT NULL,
  `heading` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` (`id`, `created_at`, `updated_at`, `bigText`, `heading`, `image`) VALUES (1,'2024-06-28 18:23:17','2024-06-28 18:23:17','Embark on an exciting journey towards <span>academic excellence</span> fused with dynamic courses that <span>redefine leadership.</span>','Get ready to','sliders/0SVIK1B1jAQwtVeIUIggvtktdx0XZZt4m2SHPrEh.jpg'),
(2,'2024-06-28 18:25:16','2024-06-28 18:25:16','All designed to equip you not only with theoretical knowledge but also hands-on <span>practical expertise</span> essential for your success','Diverse range of courses','sliders/4tpxJHnkGlMw0BFhdrxMQHqShCMsm3hANgGPXZQh.jpg'),
(3,'2024-06-28 18:26:01','2024-06-28 18:26:01','Our graduates market-ready since they are armed with <span>qualifications that not only meet but exceed</span> occupational expectations','Endorsed by the Ministry of Education','sliders/3PVJYUBeNAbEQEjBv5qlLvd8lgZ6T0YNZ1nzFnOw.jpg');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_reportings`
--

DROP TABLE IF EXISTS `student_reportings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_reportings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `semester_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `student_reportings_student_id_foreign` (`student_id`),
  KEY `student_reportings_semester_id_foreign` (`semester_id`),
  CONSTRAINT `student_reportings_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  CONSTRAINT `student_reportings_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_reportings`
--

LOCK TABLES `student_reportings` WRITE;
/*!40000 ALTER TABLE `student_reportings` DISABLE KEYS */;
INSERT INTO `student_reportings` (`id`, `created_at`, `updated_at`, `student_id`, `semester_id`, `status`) VALUES (1,'2024-07-08 08:42:56','2024-07-08 08:42:56',6,1,'Active'),
(2,'2024-08-06 09:44:47','2024-08-06 09:44:47',14,1,'Active'),
(3,'2024-10-02 02:32:45','2024-10-02 02:32:45',45,1,'Active'),
(4,'2024-10-07 05:43:18','2024-10-07 05:43:18',57,1,'Active'),
(5,'2025-01-06 11:21:23','2025-01-06 11:21:23',120,1,'Active'),
(6,'2025-01-10 00:48:42','2025-01-10 00:48:42',125,1,'Active'),
(7,'2025-01-10 02:06:49','2025-01-10 02:06:49',126,1,'Active'),
(8,'2025-01-11 04:45:32','2025-01-11 04:45:32',135,1,'Active'),
(9,'2025-01-18 00:42:29','2025-01-18 00:42:29',136,1,'Active'),
(10,'2025-03-03 04:32:44','2025-03-03 04:32:44',83,1,'Active'),
(11,'2025-08-11 08:10:27','2025-08-11 08:10:27',245,1,'Active');
/*!40000 ALTER TABLE `student_reportings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `regNumber` varchar(255) NOT NULL,
  `kcpeNumber` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `idNumber` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `residence` varchar(255) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `condition` longtext DEFAULT NULL,
  `fatherName` varchar(255) DEFAULT NULL,
  `motherName` varchar(255) DEFAULT NULL,
  `fatherPhone` varchar(255) DEFAULT NULL,
  `motherPhone` varchar(255) DEFAULT NULL,
  `fatherEmail` varchar(255) DEFAULT NULL,
  `motherEmail` varchar(255) DEFAULT NULL,
  `nokName` varchar(255) DEFAULT NULL,
  `nokPhone` varchar(255) DEFAULT NULL,
  `nokEmail` varchar(255) DEFAULT NULL,
  `payerName` varchar(255) DEFAULT NULL,
  `payerPhone` varchar(255) DEFAULT NULL,
  `payerEmail` varchar(255) DEFAULT NULL,
  `payerRelation` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `schoolYear` varchar(255) DEFAULT NULL,
  `course` bigint(20) DEFAULT NULL,
  `intake` bigint(20) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `examiners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`examiners`)),
  `passport` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`passport`)),
  `nationalId` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`nationalId`)),
  `slip` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `others` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`others`)),
  `feePayer` varchar(255) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`, `created_at`, `updated_at`, `regNumber`, `kcpeNumber`, `firstName`, `middleName`, `lastName`, `email`, `phone`, `idNumber`, `gender`, `religion`, `county`, `residence`, `history`, `dateOfBirth`, `condition`, `fatherName`, `motherName`, `fatherPhone`, `motherPhone`, `fatherEmail`, `motherEmail`, `nokName`, `nokPhone`, `nokEmail`, `payerName`, `payerPhone`, `payerEmail`, `payerRelation`, `education`, `grade`, `school`, `schoolYear`, `course`, `intake`, `mode`, `examiners`, `passport`, `nationalId`, `slip`, `department`, `others`, `feePayer`, `userId`, `status`) VALUES (1,'2024-06-07 18:28:50','2024-07-12 04:11:43','CL01/01/01/24',NULL,'FELIX','OTIENO','NGIGE','felixngigeh@gmail.com','0725449122','45675','Male','Christian','Nairobi','NAIROBI','No','2007-06-07',NULL,'Sam ngige','Anne','0725449122','0725449122','felixngigeh@gmail.com','felixngigeh@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary','KCPE','Rae','2001',4,1,'Full Time','[\"KNEC\"]','[\"passports\\/v3Ltfg3W9F6ncWlUq0Ns5eidQ4ccP8jFR1Impnve.jpg\",\"passports\\/QsyteWu7U8wEbPawhPY5YTuP2Y5qCKg4tZhdWOW2.jpg\"]','[\"idcards\\/qZM3zNuGz9OrqCU1XOBSmnPgvtP7rf2Svi5DRcc4.jpg\",\"idcards\\/ZyeTwvaL7SVbPWHQRHDQOBDiOCk01eKn7YvYGzZb.jpg\"]','slips/rAeuGyjX1FiD2Qpy3Hzd0Hf0Xprp5g6PE0X7PeIB.pdf','KCSE PRIVATE CANDIDATES','[]','father',3,'Inactive'),
(2,'2024-07-01 17:32:20','2024-07-09 08:32:07','CL02/01/02/24',NULL,'ELIZABETH','AKOTH','OUMA','lizabethouma@gmail.com','0712988336','27937128','Female','CHRISTIAN','Nairobi','RONGAI','No','1996-10-17','yes','Sam','Anne','sule','0710192947','felixngigeh@gmail.com','cleversdreams@gmail.com','FRED','0720940579','cleversschool@gmail.com','Jannes',NULL,NULL,NULL,'Primary','A','RAE','2000',4,1,'Online','[\"KNEC\"]','[\"passports\\/rQY8NlBJCZkV8t46ewzUhzsv0MfxQA2JkZm3G43P.jpg\",\"passports\\/T7zzY8kx375Ha5wH6lh4v60ySkqG2X91h2GuVQPE.jpg\"]','[\"idcards\\/HCxq7m4y6ZTmkRL96rfId6Iioc5VRWL1oxeDQZoi.jpg\",\"idcards\\/bmeqFD8TI4oTcwvVG4aGVWMX1HlZ7LYDWk0YFAwE.jpg\"]','slips/UpAlFQYYu1eA4biAbYhfp4IHFPvBMYES8KsZy6lr.pdf','KCSE PRIVATE CANDIDATES','[]','father',4,'Active'),
(3,'2024-07-02 16:30:43','2024-07-02 16:30:43','CL03/01/03/24',NULL,'JACOB','EKUTAN','ETHERI','ejekuttan@gmail.com','+254726768015','12911987','Male','CHRISTIAN','Nairobi','LODWAR TURKANA','No','1972-01-01','Iam okay',NULL,NULL,NULL,NULL,NULL,NULL,'Rebecca Akine Napak','0707460808','rebecaakine@gmail.com',NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(4,'2024-07-08 07:18:08','2024-07-08 10:37:16','CL04/01/04/24',NULL,'Meshack','Kavoi','Mutuku','meshackkavoi@gmail.com','0792434223','38467029','Male','Christianity','Makueni','Machakos','No','2001-01-09',NULL,'Dominic Mutuku',NULL,'0725877834','0702839649',NULL,NULL,'Dominic Mutuku','0725877834',NULL,NULL,NULL,NULL,NULL,'Secondary','Dplain','Miangeni Mixed Secondary school','2019',4,1,'Part Time','[\"CDACC\"]','[\"passports\\/Ov1HuSwPV1pz315w7xPfTdgtv3clhM5i5zEGwM9G.jpg\"]','[\"idcards\\/4lY2cnQxn6SzwIOCu0sovdlF56MuNXueujHSlpyU.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',6,'Active'),
(5,'2024-07-08 07:28:38','2024-07-08 07:28:38','CL05/02/01/24',NULL,'JOY','WAKESHO','BUNYASI','wakeshojoy22@gmail.com','0796518158',NULL,'Female',NULL,'Nairobi','Along Mombasa road','No','2015-11-22',NULL,'Paul  Bunyasi','Mnyazi Mbaga',NULL,NULL,'bunyasipaul@yahoo.com','mnyazimbaga@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,'Caplora international',NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(6,'2024-07-08 07:30:09','2024-07-08 08:41:47','CL06/01/05/24',NULL,'Antony','Maurice','Kuloba','antonymaurice16@gmail.com','0719196057','36795177','Male',NULL,'Nairobi','Nairobi','No','1998-12-28',NULL,'John Wandwasi','Veronicah','0746013971','0710545488','johnwandwasi1942@gmail.com','veronicahnelima@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D+','st Augastine','2017',4,1,'Online','[\"CDACC\"]','[\"passports\\/JmIV4RUW3Xs6ttVMSFSZYQeOJDnZpcn4gsTM8Nsy.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',8,'Active'),
(7,'2024-07-11 04:11:58','2024-07-11 08:06:44','CL07/07/01/24',NULL,'Brian','Siocha','Maina','siocha254@gmail.com','+254723213465','31328507','Male',NULL,'Nairobi',NULL,'No','1993-08-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,6,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'AS/A LEVEL','[]','self',9,'Active'),
(8,'2024-07-11 04:12:03','2024-07-11 04:12:03','CL08/01/07/24',NULL,'MAXWEL','TEMO','CHEPKERES','maxkip614@gmail.com','0719253279','42164955','Male',NULL,'Uasin Gishu',NULL,'No','2024-05-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C-','Barwessa sec school','2022',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(9,'2024-07-11 04:12:08','2024-12-13 13:54:17','CL09/01/09/24',NULL,'IRINE','ADHIAMBO','NYANGOYA','renenyangoya@gmail.com','0705879138',NULL,'Female',NULL,'Homa Bay','Nairobi','No','2002-12-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary','277 marks',NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',11,'Active'),
(10,'2024-07-18 07:26:50','2024-07-18 07:26:50','CL10/01/10/24',NULL,'EUSTINAH','ZAWADI','MUIA','muiazawadi@gmail.com','0721461295','21860576','Female','NAIROBI','Nairobi','WOODLEY ESTATE','No','1979-12-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JULIUS OLENDO','0722303665',NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(11,'2024-07-18 07:26:53','2024-09-21 14:51:34','CL11/01/11/24',NULL,'Lawrence','Ooko','Onyango','lawrencerian4@gmail.com','0791870598','31992948','Male','Christian','Siaya','Bondo Town','No','1993-04-12',NULL,NULL,NULL,NULL,'0742169222','maurinelawrence4@gmail.com','maurinelawrence4@gmail.com','Maurine Achieng Opiata','0742169222','maurinelawrence4@gmail.com',NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[\"idcards\\/iH4yrY8Deye9h7SjQLqdCdAm6lDAkdoFK0hnYst5.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',13,'Active'),
(12,'2024-07-26 11:54:02','2024-07-28 18:50:19','CL12/01/12/24',NULL,'Irene','N/A','Tom','Irenetom100@gmail.com','0712594066','25803879','Female','Christian','Nairobi','Embakasi','No','1987-11-15',NULL,'Tom',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D plain','Ikanga Girls Secondary School','2006',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',14,'Active'),
(13,'2024-07-27 10:08:44','2024-07-27 15:23:59','CL13/01/13/24',NULL,'Keith','N/A','Ambenge','coolvlogs3@gmail.com','0716781436',NULL,'Male','Christian','Nairobi',NULL,'No','2007-06-29',NULL,'Teddy Asiligwa','Pauleen Ambenge','0720977352','0716781436',NULL,NULL,NULL,NULL,NULL,'Pauleen Ambenge','0716781436',NULL,'mother','Secondary',NULL,'fesbeth high school',NULL,4,1,'On Site','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',15,'Active'),
(14,'2024-08-06 06:58:50','2024-08-06 08:48:07','CL14/02/06/24',NULL,'Chénelle','Linda','Maruti','lindamaruti@gmail.com','+254795319456','33593641','Female','Christian','Nairobi',NULL,'No','1997-06-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,7,1,'Full Time','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','mother',16,'Active'),
(15,'2024-08-08 01:28:47','2024-08-08 01:28:47','CL15/02/15/24',NULL,'DORCAS','N/A','ODHIAMBO','dorcusachieng97@gmail.com','0799129615',NULL,'Female',NULL,'Nairobi',NULL,'No','1997-09-01',NULL,'ODHIAMBO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(16,'2024-08-08 01:28:53','2024-08-08 01:28:53','CL16/02/16/24',NULL,'Whitney','N/A','Osoro','whitneymogetutu@gmail.com','0748973689',NULL,'Female',NULL,'Nairobi',NULL,'No','2004-01-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,7,1,'On Site','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(17,'2024-08-08 01:29:00','2024-08-08 06:16:19','CL17/02/17/24',NULL,'Maggie','N/A','Wagio','maggiewmwangi@gmail.com','0712932324',NULL,'Female',NULL,'Nairobi',NULL,'No','1986-07-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,7,1,'Full Time','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',19,'Active'),
(18,'2024-08-09 11:31:59','2024-08-09 16:17:58','CL18/01/14/24',NULL,'Joyanna','Israela','Neema','israelajoyanna@gmail.com','+254732485099',NULL,'Female',NULL,'Nairobi',NULL,'Yes','2005-06-10','Acute allergies','Geoffrey Otieno','Susan Amedha','0797530550','0717511147','geoffreyotieno190@gmail.com','suemaedha@gmail.com','Geoffrey Otieno','0797530550','geoffreyotieno190@gmail.com',NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'On Site','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',20,'Active'),
(19,'2024-08-09 11:32:02','2024-08-09 11:32:02','CL19/02/18/24',NULL,'Enrique','N/A','Amon','enriqueamongaming@gmail.com','0720159196',NULL,'Male',NULL,'Nairobi',NULL,'No','2007-08-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(20,'2024-08-09 11:32:06','2024-08-09 11:32:06','CL20/01/19/24',NULL,'SHARON','AWINO','KENNEDY','sharonkondigo99@gmail.com','0745278651','36168987','Female',NULL,'Nairobi',NULL,'No','1997-06-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(21,'2024-08-16 00:49:01','2024-08-16 00:49:01','CL21/01/21/24',NULL,'NICHOLAS','MUNENE','MWANIKI','nichmunene52@gmail.com','0715060391',NULL,'Male',NULL,'Nairobi',NULL,'No','2002-09-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(22,'2024-08-16 00:49:07','2024-08-16 00:49:07','CL22/02/20/24',NULL,'Elsa','Wanjiku','Maina','karanjalewis254@gmail.com','0731997525',NULL,'Female',NULL,'Nairobi',NULL,'No','2005-04-21',NULL,'Edwin maina mwangi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,7,1,'Full Time','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(23,'2024-08-16 00:49:11','2024-08-16 00:49:11','CL23/01/22/24',NULL,'JOLYNE','N/A','OTIENO','atienojolyne1@gmail.com','0795783921','0501514566','Female','CHRISTIAN','Nairobi','KAYOLE','No','2005-12-25',NULL,NULL,'JANET NASIALI',NULL,'0711322274',NULL,'janetnasiali@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary','1st attempt kcse','kako junior','2019',4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(24,'2024-08-17 15:06:41','2024-10-09 06:11:30','CL24/01/24/24',NULL,'Mary','Njoki','Nduta','ndutanjoki65@gmail.com','0713441732','37789238','Female',NULL,'Kiambu','Kabete','No','1996-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',26,'Active'),
(25,'2024-08-17 15:06:45','2024-08-17 15:06:45','CL25/01/25/24',NULL,'WANJA','NJAGI','MERCY','mecrynjagi@gmail.com','0720922430','21357194','Female','Christian','Nairobi',NULL,'No','1979-05-21',NULL,'THOMAS NJAGI','MARGRET MUTHONI',NULL,NULL,NULL,NULL,'THOMAS NJAGI',NULL,NULL,NULL,NULL,NULL,NULL,'Primary','D','RUGUMU','1996',4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(26,'2024-08-22 08:50:50','2024-08-22 08:50:50','CL26/01/26/24',NULL,'DAMARIS','N/A','LlBESE','damarislibese@gmail.com','0707120640','34257189','Female',NULL,'Nairobi',NULL,'No','1991-06-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(27,'2024-08-22 10:37:34','2024-08-22 10:37:34','CL27/09/01/24',NULL,'SHUKRI','ALIO','ADEN','shukrialio456@gmail.com','0729351430','34389200','Male','ISLAM','Mandera','DANDU','No','2000-05-06',NULL,'HASSAN MOHAMED ALIO','NURIA KASSIM MOHAMED','0718198173','0729351430','shukrialio003@gmail.com','nuriakassim001@gmail.com','IBRAHIM ALIO ADEN','0718198173','ibrahimalio@gmail.com',NULL,NULL,NULL,NULL,'Secondary','D plus','SHIMBIR FATUMA MIXED DAY SECONDARY SCHOOL','2019',13,1,'Online','[\"CDACC\"]','[]','[]',NULL,'Accounting','[]','self',NULL,'Active'),
(28,'2024-08-22 10:37:38','2024-08-22 11:12:28','CL28/01/27/24',NULL,'Joan','Jeruto','Chebotibin','Joan57300@gmail.com','0728862989',NULL,'Female','Christian','Baringo',NULL,'No','1999-02-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,'2015',4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',32,'Active'),
(29,'2024-08-27 05:59:52','2024-08-27 05:59:52','CL29/01/29/24',NULL,'Winfred','Wanjiku','kamunge','winfredwanjiku389@gmail.com','0712960270','36706790','Female','Christian','Nairobi','Kasarani','No','1999-06-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,'Busara primary school',NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(30,'2024-09-11 08:06:57','2024-09-11 08:10:42','CL30/09/28/24',NULL,'Elius','Odunga','Ouma','eliusouma535@gmail.com','0742744566','37522720','Male',NULL,'Nairobi',NULL,'No','1997-12-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,13,1,'Online','[\"CDACC\"]','[]','[]',NULL,'Accounting','[]','father',34,'Active'),
(31,'2024-09-11 08:06:59','2024-09-11 08:06:59','CL31/01/30/24',NULL,'Rahimston','Omondi','Owuor','rahimstono@gmail.com','0783417313',NULL,'Male','Christianity','Kisumu','Kisumu','No','2004-02-03',NULL,NULL,'Benta Owuor',NULL,'0759591758',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','B-','Kowuor Mixed Secondary School','2021',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(32,'2024-09-11 08:07:00','2024-10-20 15:40:08','CL32/01/32/24',NULL,'VINCENT','N/A','MUNJE','munjevincent@gmail.com','0710698199',NULL,'Male',NULL,'Nairobi',NULL,'No','1987-04-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'COLLETTA NYAMDE','0713448186',NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',36,'Active'),
(33,'2024-09-11 08:07:01','2024-09-11 08:07:01','CL33/07/08/24',NULL,'BINTO FATUMA MOHAMED','N/A','SHARIFF','shariffatma3@gmail.com','0726426177',NULL,'Female',NULL,'Nairobi',NULL,'No','2005-04-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,6,1,'Homeschooling','[\"CDACC\"]','[]','[]',NULL,'AS/A LEVEL','[]','mother',NULL,'Active'),
(34,'2024-09-11 08:07:02','2024-09-11 08:07:02','CL34/01/33/24',NULL,'Brian','N/A','Midiwo','brianbom74@gmail.com','718096746',NULL,'Male',NULL,'Nairobi',NULL,'No','2003-06-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(35,'2024-09-11 08:07:03','2024-09-11 08:07:03','CL35/09/31/24',NULL,'Felix','Otieno','Ochieng','ochiengfelixnela@gmail.com','0741145001','37073466','Male','Christian','Kisii','Kisii','No','1999-02-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,13,1,'Online','[\"KASNEB\"]','[]','[]',NULL,'Accounting','[]','self',NULL,'Active'),
(36,'2024-09-11 08:07:03','2024-09-11 08:07:03','CL36/01/35/24',NULL,'Fletcher','N/A','Jeremiah','fletcherjeremiah975@gmail.com','0703290727',NULL,'Male','Christian','Nairobi','donhom','No','2005-09-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C-',NULL,'2022',4,1,'On Site','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(37,'2024-09-14 18:02:48','2024-09-14 18:02:48','CL36/01/01/24',NULL,'JAMES','Lomwae','Epukon','jamesepukon@gmail.com','0746297634','38753602','Male','Christian','Turkana','Loima','No','2000-01-01',NULL,'Lomwae Lopokoi','Liwan Lomwae',NULL,NULL,NULL,NULL,'Namerio Lopokoi','0798131839',NULL,NULL,NULL,NULL,NULL,'Secondary','D+','Turkwel boys sec school','2018',15,1,'Online','[\"CDACC\"]','[]','[\"idcards\\/G5u23KFrGxx14jGPki293RApugdxIl84pvggHzaP.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(38,'2024-09-14 18:02:55','2024-09-14 18:02:55','CL38/01/37/24',NULL,'KENNEDY','KWOBA','WASIEKA','wasiekaken@gmail.com','0714891721','25254425','Male','Nairobi','Nairobi','Mombasa','No','1985-09-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(39,'2024-09-14 18:03:01','2024-09-14 18:03:01','CL39/02/23/24',NULL,'Nebster','N/A','Kiplangat','kiplangatnebster22@gmail.com','0705379558','39118537','Male','Christian','Nairobi','Kitui','No','2000-04-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary','Pass',NULL,NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(40,'2024-09-14 18:03:06','2024-09-15 01:17:55','CL40/01/39/24',NULL,'Tabitha','nyokabi','ndungu','Tabithanyokabi6@gmail.com','0726220850','33301890','Female','Christian','Nairobi','dagoretti','No','1995-05-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',44,'Active'),
(41,'2024-09-17 16:11:30','2024-09-17 16:11:30','CL41/01/38/24',NULL,'Alfred','Junior','Odhiambo','alfredjunior388@gmail.com','0700305768','42079392','Male','Nyanza','Nairobi','Homabay','No','2005-01-02',NULL,'Kennedy odhiambo','Marren awuor','0724279714','0700707958',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,15,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(42,'2024-09-17 16:11:34','2024-09-24 02:17:55','CL42/01/41/24',NULL,'Elmon','Wanjala','Ndunya','elmonwanjala@gmail.com','0713322553',NULL,'Male','Christian','Kiambu','Thika','No','1995-05-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,'Nandorobo fym','2012',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',46,'Active'),
(43,'2024-09-29 23:34:14','2024-09-29 23:34:14','CL43/01/43/24',NULL,'FRIDAH','KEMUNTO','OKARI','fridahkem24@gmail.com','0728967785',NULL,'Female',NULL,'Kisii','KISII','No','1991-01-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(44,'2024-09-29 23:34:14','2024-09-29 23:34:14','CL44/01/44/24',NULL,'WYCLIFFE','N/A','KIRUI','baloverbagrandstar47@gmail.com','0743485487',NULL,'Male',NULL,'Narok',NULL,'No','2004-08-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]','slips/jP9NlYqcpVjVUY4qFwiJ9YdfcWKR9JJfHJEWsv8n.jpg','KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(45,'2024-09-29 23:34:15','2024-10-02 02:32:00','CL44/02/40/24',NULL,'Tamara','Nyanjau','Wambugu','teyiaraorganics@gmail.com','0724910249',NULL,'Female',NULL,'Nairobi',NULL,'No','2009-12-24',NULL,NULL,'Nyathira',NULL,'0724910249',NULL,'teyiaraorganics@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','mother',49,'Active'),
(46,'2024-09-29 23:34:16','2024-09-30 05:26:55','CL46/01/44/24',NULL,'Abdullahi','Mohamed','Ahmed','ahusler.irs@gmail.com','0706618704',NULL,'Male',NULL,'Nairobi',NULL,'No','1984-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',50,'Active'),
(47,'2024-09-29 23:34:17','2024-10-01 06:32:40','CL47/01/47/24',NULL,'VICTOR','N/A','ONGOLI','ongolivictor@gmail.com','0702150834',NULL,'Male',NULL,'Nairobi',NULL,'No','2002-07-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',51,'Active'),
(48,'2024-09-29 23:34:18','2024-09-29 23:34:18','CL48/09/01/24',NULL,'DANIEL MAJAK','MANYIN','MADUT','mdanielmajakmanyin@gmail.com','+254740354622','00581272','Male','Christianity','Nairobi','Sosain','No','1998-01-01',NULL,'MANYIN MADUT','AJOK DUANG',NULL,NULL,NULL,NULL,'SANTINO CHOL ATEM',NULL,NULL,'SANTINO CHOL ATEM','0739467701',NULL,'IN-LAW','Secondary','B+','STANDARD SECONDARY SCHOOL','2021',10,1,'Part Time','[\"CDACC\"]','[\"passports\\/eQpK7168GxnDqJ59uc39ktkhMGbe5Yyw4K3Wdxj9.jpg\"]','[\"idcards\\/2aKtARZ0Bthb2yn6LNAuonrnsNLHMQdW4lOIwekV.jpg\"]','slips/GE8yqEairuCWOcO8cq0pq0w7oezox6l4LPAhtzJf.jpg','Accounting','[]','other',NULL,'Active'),
(49,'2024-09-29 23:34:22','2024-09-30 00:22:06','CL49/01/48/24',NULL,'SUSAN','AKOTH','ONGORO','akothsusan626@gmail.com','0719494772','41835765','Female','CHRISTIAN','Mombasa','MOMBASA','Yes','1999-03-12','Endometriosis and haemorrhoids',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SUSAN','0719494772',NULL,NULL,'Primary',NULL,'BOMU PRIMARY SCHOOL','2014',4,1,'Homeschooling','[\"KMTC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',53,'Active'),
(50,'2024-09-29 23:34:23','2024-09-29 23:34:23','CL50/09/49/24',NULL,'LINUS','OCHIENG','MULIRO','linusochieng71@gmail.com','0710279890','34512083','Male',NULL,'Nairobi','NAIROBI','No','1996-03-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,10,1,'Online','[\"CDACC\"]','[]','[]',NULL,'Accounting','[]','self',NULL,'Active'),
(51,'2024-10-06 15:04:07','2024-10-06 15:13:05','CL51/02/46/24',NULL,'KOBAS','NYANGOTA','Kobas','Kobasnkobas@gmail.com','+255754822237',NULL,'Male',NULL,'Nairobi','Dar es Salaam, Tanzania','No','1997-05-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',55,'Active'),
(52,'2024-10-06 15:04:12','2024-10-06 15:04:12','CL52/01/50/24',NULL,'Amina','Haghasere','Babuya','amishjuye@gmail.com','0798231130','32313597','Female','Muslim','Mombasa','Mombasa','No','1995-07-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Awid Bakar','0724888326',NULL,'Spouse','Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','other',NULL,'Active'),
(53,'2024-10-06 15:04:13','2024-10-06 15:04:13','CL53/10/01/24',NULL,'Nathan','N/A','OMANGA NDJEKONDO','nathanomanga70@gmail.com','+254114832953',NULL,'Male','Christianity','Nairobi',NULL,'No','2000-11-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,16,1,'Full Time','[\"CDACC\"]','[]','[]',NULL,'Sign Language','[]','self',NULL,'Active'),
(54,'2024-10-06 15:04:14','2024-10-06 15:04:14','CL54/01/53/24',NULL,'Ephraim','Lokai','Lojao','ephraimlokai@gmail.com','0719246313',NULL,'Male',NULL,'Nairobi',NULL,'No','1988-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(55,'2024-10-06 15:04:15','2024-10-06 15:04:15','CL55/01/55/24',NULL,'Hesbon','Omenke','Orondo','orondohesbon@gmail.com','0794431231',NULL,'Male','Christianity','Kisii','Kisii','No','2003-11-30',NULL,'Tobias','Mary nyamusi',NULL,'0743572193',NULL,NULL,NULL,NULL,NULL,'Mary nyamusi','0743572193',NULL,'Mother','Primary','Cplain','Monianku','2023',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(56,'2024-10-06 15:04:18','2024-10-06 15:04:18','CL56/01/56/24',NULL,'Janet','Njoki','Kuria','Janetkuria5@gmail.com','0728087435','33141870','Female','Christian','Nairobi','Ruiru','No','1995-10-09','Nil',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(57,'2024-10-06 15:04:19','2024-10-07 05:42:34','CL57/01/57/24',NULL,'Robert','N/A','Lihanda','robertmungasia@gmail.com','0724477977',NULL,'Male',NULL,'Nairobi',NULL,'No','1986-04-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',61,'Active'),
(58,'2024-10-06 15:04:20','2024-10-06 15:04:20','CL58/01/58/24',NULL,'Nelson','Mecha','Nyabuto','nelsonmecha4@gmail.com','0725973786',NULL,'Male',NULL,'Nairobi',NULL,'No','1993-02-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C-','St Patrick\'s Kahawa Secondary School','2011',4,1,'Homeschooling','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(59,'2024-10-28 09:57:00','2024-10-28 09:57:00','CL59/01/59/24',NULL,'BENARD','KIPROTICH','KETER','nardketter@gmail.com','0713887220','32609850','Male','Christian','Uasin Gishu','Eldoret','No','1995-05-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(60,'2024-10-28 09:57:09','2024-10-28 09:57:09','CL60/01/60/24',NULL,'Lawington','Wachu','Daido','dlawington@gmail.com','0746214862',NULL,'Male','Christian','Tana River',NULL,'No','1993-04-28','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D+','Tarasaa','2011',4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(61,'2024-11-08 00:16:15','2024-11-08 04:41:16','CL61/01/61/24',NULL,'Mercy','Jepkoech','Sungul','sungulmercy@gmail.com','0717814243',NULL,'Female',NULL,'Nairobi',NULL,'No','1994-03-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C','Tilol high school','2012',4,1,'On Site','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',65,'Active'),
(62,'2024-11-08 00:16:16','2024-11-08 00:16:16','CL62/01/62/24',NULL,'HAMZA','HUSSEIN','YUSUF','vinijunior308@gmail.com','0790724634','36490396','Male','ISLAM','Mandera','MANDERA','No','1999-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C-','BANISA MIXED DAY SECONDARY SCHOOL','2016',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(63,'2024-11-08 00:16:17','2024-11-08 01:12:44','CL63/01/63/24',NULL,'ANTONY','N/A','OBUYA','ANTONYOBUYA2017@GMAIL.COM','0726524344',NULL,'Male',NULL,'Nairobi',NULL,'No','1992-04-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',67,'Active'),
(64,'2024-11-08 00:16:18','2024-11-08 00:16:18','CL64/01/64/24',NULL,'Clifford','N/A','Onyiengo bosire','clifordonyiego@gmail.com','0723153161','25544379','Male',NULL,'Nairobi',NULL,'No','2024-10-01',NULL,'Onyiengo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(65,'2024-11-08 00:16:32','2024-11-11 14:36:40','CL65/01/65/24',NULL,'Egrah','N/A','Omiti','egrahbwari@gmail.com','0739708970',NULL,'Female',NULL,'Nairobi',NULL,'No','1991-12-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',69,'Active'),
(66,'2024-11-08 00:16:33','2024-11-08 01:26:41','CL66/01/66/24',NULL,'JANEPHETER','Machuma','Liru','mumofdotas2020@gmail.com','0729236486','31947101','Female',NULL,'Nairobi',NULL,'No','1991-12-25',NULL,NULL,'Judith liru',NULL,'0718028477',NULL,NULL,NULL,NULL,NULL,'JANEPHETER Liru','0729236486',NULL,'Myself','Primary','264','Maabusi primary','2006',4,1,'Online','[\"CDACC\"]','[\"passports\\/pu9nUsHcqTzDP9DqHzduVaLQL3EFzBr17w9j6gSk.png\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',70,'Active'),
(67,'2024-11-08 00:16:34','2024-11-08 00:16:34','CL67/01/67/24',NULL,'Unathi','Nakisha','Otieno','jaqlindag@gmai.com','0702452458',NULL,'Female','Christian','Nairobi','Obama Estate','No','2007-12-04',NULL,'George Ndhawa','Jacqueline Linda','0721902407','0702452458','gndhawas08@gmail.com','jaqlindag@gmai.com','Maureen Akello','0703248749',NULL,NULL,NULL,NULL,NULL,'Primary','416','Mudasa',NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(68,'2024-11-08 00:16:35','2024-11-08 00:16:35','CL68/01/68/24',NULL,'Daniel','N/A','lengoley','lengoleydaniel@gmail.com','0707908685',NULL,'Male','Christian','Nairobi','kajiado','No','2003-05-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(69,'2024-11-08 00:16:36','2024-11-08 00:16:36','CL69/01/69/24',NULL,'Karl-Heinz','Louis','Abiola','karlheinzlouiz@gmail.com','0759606629','38403753','Male',NULL,'Nairobi','Machakos','No','2000-08-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary','350 Marks','Eluche Primary','2013',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(70,'2024-11-08 00:16:44','2024-11-08 07:43:51','CL70/01/70/24',NULL,'Jackson','N/A','Ochieng','jacksonochieng01@gmail.com','0701170056',NULL,'Male',NULL,'Nairobi',NULL,'No','1994-12-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',74,'Active'),
(71,'2024-11-08 00:16:45','2024-11-08 00:16:45','CL71/01/71/24',NULL,'ANTONY','ODHIAMBO','OTIENO','tonynewton2010@yahoo.com','0745075808',NULL,'Male','Christian','Mombasa','Bamburi','No','1990-05-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(72,'2024-11-08 00:16:46','2024-11-08 00:16:46','CL72/09/01/24',NULL,'ELVIS','OUMA','ALANGO','alangoelvis55@gmail.com','0102515201','40585108','Male','CHRISTIANITY','Nairobi','Githurai 45','No','2003-04-16',NULL,'JOSEPH ALANGO','JESICA ALANGO','0724606466','0796710249',NULL,NULL,'MAQULET ATIENO','0745329543',NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,11,1,'Online','[\"CDACC\"]','[]','[]',NULL,'Accounting','[]','mother',NULL,'Active'),
(73,'2024-11-08 00:16:52','2024-11-08 00:16:52','CL73/01/72/24',NULL,'Duncan','N/A','Otieno','duncanotieno612@gmail.com','0745139677','40456546','Male','Christian','Kisumu','Kakamega','No','2003-05-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C plain','Oruba boys','2022',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(74,'2024-11-08 00:16:58','2024-11-09 06:36:37','CL74/01/74/24',NULL,'Phina','N/A','Onyango','phinaonyango78@gmail.com','254791522818',NULL,'Female',NULL,'Nairobi',NULL,'No','1997-10-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',78,'Active'),
(75,'2024-11-08 00:16:59','2024-11-08 00:16:59','CL75/01/75/24',NULL,'Owino','Daniel','Oduol','oduoldaniel7@gmail.com','0723375666','25409011','Male','Religious','Uasin Gishu','Eldoret','No','2024-10-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,'Oseno komolo','2002',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(76,'2024-11-08 00:17:04','2024-11-08 00:17:04','CL76/01/76/24',NULL,'SAMWEL','OMONDI','OKACH','samwelomondi392@gmail.com','0759597137','29107378','Male',NULL,'Nairobi',NULL,'No','1991-03-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(77,'2024-11-08 00:17:11','2024-11-08 14:05:08','CL77/01/77/24',NULL,'RHODA','N','KHISA','khisaroda@gmail.com','0702631888','28785792','Female','Christian','Kajiado','Kajiado','No','1988-12-03',NULL,'David khisa',NULL,NULL,NULL,NULL,NULL,'Clayton khasiani','0723718132','khasiclay@gmail.com','Claytone khasiani','0723718132',NULL,'Spouse','Tertiary','Credit','International teachers training college','2018',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',81,'Active'),
(78,'2024-11-08 00:17:17','2024-11-08 12:50:06','CL78/01/78/24',NULL,'JACKSON','SWEYA','OPIYO','jacksonsweya2@gmail.com','0708325455','30506906','Male','CHRISTIAN','Nairobi','KAWANGWARE','No','1993-11-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary','CREDIT',NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',82,'Active'),
(79,'2024-11-19 16:16:50','2024-11-19 16:16:50','CL79/01/79/24',NULL,'Jermaine','Davis','Yukeh','davisjermaine336@gmail.com','0799661233','42088622','Male','Nairobi','Nairobi',NULL,'No','2004-06-08',NULL,'Manasseh Yukeh okello','Vivianne Akinyi Odumbe','0722208773','0705297510',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(80,'2024-11-26 07:20:42','2024-11-26 10:31:06','CL80/01/80/24',NULL,'Elisha','Otieno','Mboya','elishamboya629@gmail.com','+254791863651','37684534','Male','Christian','Nairobi',NULL,'No','1996-10-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Homeschooling','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',84,'Active'),
(81,'2024-11-26 07:20:43','2024-11-26 07:20:43','CL81/02/52/24',NULL,'ISSA','ISACK','GOLLO','kampichaesir@gmail.com','+254 721538323','29599265','Male','Muslim','Nairobi','NASRA GARDENS GATE C, TAUSI COURT HOUSE 34','No','1993-02-21',NULL,'ISACK GOLO KAMPICHE','HALIMA BORU WAKO','0780538323','0722389924','Abiserlic03@gmail.com','irimisaicon@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D+','KINNA SECONDARY SCHOOL','2011',7,1,'Online','[\"CDACC\"]','[\"passports\\/0Fpnv5MEg4uamtGTDOv1Y8EqRLHmcER7qsnvVFN2.jpg\"]','[\"idcards\\/AfAUmtEE4hJdu9J3kFPm807ICy0gjANIO7CZoIKZ.jpg\"]','slips/sW7LttIO6uTjnER0y95akEjK8sIc4q2yiTuQpG7r.jpg','IGCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(82,'2024-11-26 07:20:45','2024-11-26 07:20:45','CL82/01/81/24',NULL,'ERIC','BENSON','CHEGE','chegeerick403@gmail.com','0726676519',NULL,'Male',NULL,'Nairobi',NULL,'No','2001-02-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(83,'2024-11-26 07:20:46','2025-03-03 04:12:54','CL83/01/83/24',NULL,'Mpano','N/A','Garnaud','dushimanelubanga@gmail.com','+254112119128',NULL,'Male',NULL,'Nairobi',NULL,'No','2005-06-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',87,'Active'),
(84,'2024-11-26 07:21:16','2024-11-26 07:21:16','CL84/01/84/24',NULL,'Coasvey','Achieng','Mboya','coasveymboya@gmail.com','0704628012',NULL,'Female','Christian','Nairobi',NULL,'No','1998-09-29',NULL,'Mboya','Beatrice',NULL,'0728130300',NULL,NULL,'Thomas mboya',NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(85,'2024-12-02 01:11:47','2024-12-03 03:12:35','CL85/01/85/24',NULL,'EMILY','N/A','MOLLEL','emiley127@gmail.com','0743755081','33257489','Male',NULL,'Nairobi','NAIROBI','No','2024-12-01','RHEUMATOID ATHRITIS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',89,'Active'),
(86,'2024-12-02 01:11:53','2024-12-02 17:12:35','CL86/01/86/24',NULL,'Andrew','Okiru','Omonya','okiruandreww@gmail.com','0718304791','27621807','Male','Christian','Nairobi','Nairobi','No','1988-05-10',NULL,'John omonya','Lona omonya','0722428151',NULL,NULL,NULL,NULL,NULL,NULL,'Andrew','0718304791',NULL,NULL,'Primary','C','Mwencha academy','2003',4,1,'Online','[\"CDACC\"]','[\"passports\\/JQsXrJN0iMiyI61OuY9mP4griXFcvaFxcaROVj28.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',90,'Active'),
(87,'2024-12-02 01:11:54','2024-12-03 12:07:30','CL87/01/87/24',NULL,'Benard','Mjomba','Msula','nardnjomba@gmail.com','0792454447','28841037','Male','Nairobi','Machakos','Syokimau','No','1991-09-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0714538555','0714538555','cicylynegt@gmail.com','Cicylyne Gatwiri','0714538555',NULL,'Spouse','Primary','May need to confirm',NULL,'2007',4,1,'Online','[\"CDACC\"]','[\"passports\\/LjHXgSpskytIGacdJ34F57UKEJsiBvyg4tzBFCMI.png\"]','[\"idcards\\/YtyyLzIYhrLidQ1AbzL9LBvbZ8DHTjDWzcziNeos.jpg\",\"idcards\\/MncWJuUS9n9yphbbOg7x21oCm8voH4QEBrxJWjU0.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',91,'Active'),
(88,'2024-12-02 01:12:00','2024-12-02 01:12:00','CL88/02/82/24',NULL,'Peter','Kimondo','Peter kimondo','kimondop25@gmail.com','0110467875','40439935','Male','CRistian','Nyeri','Nyeri','No','2002-08-11',NULL,'Peterson mugo0','Mary wanjugu','0711188778','0768069106',NULL,NULL,NULL,NULL,NULL,NULL,'0110467875',NULL,'Single','Secondary','D-','Naromoru mix sec','2022',7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(89,'2024-12-02 01:12:07','2024-12-02 01:12:07','CL89/01/88/24',NULL,'SHADRACK','N/A','OTIENO','otienoshadrack893@gmail.com','0769081691',NULL,'Male','Christian','Nairobi','Nairobi','No','1999-05-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D+',NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(90,'2024-12-18 02:55:13','2024-12-18 02:55:13','CL90/01/90/24',NULL,'Veronica','Wambui','Githiga','KamsNation001@gmail.com','0722 421356',NULL,'Female','Christianity','Nairobi','Komarock','No','1978-03-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nahashon Kamau','0722421356','KamsNation001@gmail.com',NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(91,'2024-12-18 02:55:14','2024-12-18 03:33:02','CL91/01/91/24',NULL,'Michael','Otieno','Odondo','odondomichael12@gmail.com','0795748758','36214207','Male','Christian','Nairobi','Shanzu, Mombasa','No','1998-11-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',95,'Active'),
(92,'2024-12-18 02:55:15','2024-12-18 02:55:15','CL92/01/92/24',NULL,'MULOMBI','WANJIA','MESHACK','meshackmulombi@gmail.com','0713930766','24468598','Male','CHRISTIAN','Nairobi','KANGEMI','No','1982-01-06',NULL,'MULOMBI','BEATRICE','0791964299','0796399393','joelmulombi@gmail.com','annemalisa57@gmail.com','ANNE MALISA','0702313645','annemalisa96@gmail.com',NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[\"idcards\\/szuyeRLfcSGYh9Ss0iqTEsby9CwoAZH2tHpkGYlR.jpg\",\"idcards\\/fzmHDrUdOT6UQYS0W6cC9r5dNZxV2o3eZiMIFnh6.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(93,'2024-12-18 02:55:16','2024-12-18 02:55:16','CL93/02/89/24',NULL,'Salmaan','Mohamead','Sufi','salmaansuffi@gmail.com','0720860044','42988743','Male',NULL,'Nairobi',NULL,'No','2004-07-07',NULL,'Mohamaed','Suldhano dubow abdi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,7,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(94,'2024-12-18 02:55:17','2024-12-18 02:55:17','CL94/01/93/24',NULL,'Pauline','Wanga','Lupere','luperewanga@gmail.com','0791751728','41828328','Female','Christian','Nairobi','Kileleshwa','No','2004-01-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','B+','St Antony Mateka secondary school',NULL,4,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(95,'2024-12-18 02:55:27','2024-12-18 14:31:21','CL95/01/95/24',NULL,'Tabitha','Wavinya','Mbeke','wavinyatabitha66@gmail.com','0713009185',NULL,'Female',NULL,'Nairobi',NULL,'No','1997-06-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',99,'Active'),
(96,'2024-12-18 02:55:33','2024-12-18 02:55:33','CL96/01/96/24',NULL,'Bethwell','Wamalwa','Rafiki','geotimasgroup@gmail.com','0722281878',NULL,'Male',NULL,'Nairobi',NULL,'No','2010-07-04',NULL,'Geoffrey Wamalwa',NULL,'0722281878',NULL,'geotimasgroup@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Full Time','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(97,'2024-12-18 02:55:34','2024-12-18 07:21:12','CL97/07/34/24',NULL,'Justus','Odhiambo','Murunga','murungajustus94@gmail.com','0794188722',NULL,'Male','Muslim','Migori',NULL,'No','2003-06-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,6,1,'Online','[\"CDACC\"]','[]','[]',NULL,'AS/A LEVEL','[]','self',101,'Active'),
(98,'2024-12-18 02:55:41','2024-12-18 02:55:41','CL98/07/98/24',NULL,'Kevin','N/A','Bitange','momanyikevin2256@gmail.com','0702748350',NULL,'Male',NULL,'Nairobi',NULL,'No','1992-10-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,6,1,'Online','[\"CDACC\"]','[]','[]',NULL,'AS/A LEVEL','[]','father',NULL,'Active'),
(99,'2024-12-18 02:55:49','2024-12-18 02:55:49','CL99/01/97/24',NULL,'Catherine','Mutheu','Kioko','qatelynah@gmail.com','+254724044213','26219465','Female','Christian','Machakos',NULL,'No','1986-08-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[\"passports\\/aXWbLiS71fBtCl29uN4trgP4Bkzc9ZXYhKZEQYCp.webp\"]','[\"idcards\\/mRkBBgdQVEHyj0w66RkX8XXeqXA3hT8MrfKc7iLy.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(100,'2024-12-18 02:55:50','2024-12-18 10:14:22','CL100/07/99/24',NULL,'Eliud','Nyaori','Odindo','eliudnyaori95@gmail.com','0707748676','33042482','Male','Christian','Nairobi','Mlolongo','No','1995-04-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary','Credit',NULL,NULL,6,1,'Online','[\"CDACC\"]','[]','[]',NULL,'AS/A LEVEL','[]','self',104,'Active'),
(101,'2024-12-18 02:55:51','2024-12-18 08:48:53','CL101/01/100/24',NULL,'Bridget','Gathoni','Kimani','luciecalvins@gmail.com','0726974050',NULL,'Female',NULL,'Nakuru',NULL,'No','2009-11-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',105,'Active'),
(102,'2024-12-18 02:55:52','2024-12-18 02:55:52','CL102/01/102/24',NULL,'GLADWIN','MAINA','MAINA','winnieza534@gmail.com','0757716966','37004922','Female','CHRISTIAN','Nairobi','THIKA','No','1999-11-10',NULL,'STEPHEN MAINA','CHRISTINE THUKU',NULL,'0716688784',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(103,'2024-12-18 02:55:53','2024-12-18 02:55:53','CL103/01/103/24',NULL,'Lokitoeanei','John','Achuka','jlokitoeanei@gmail.com','0799051874','33736057','Male',NULL,'Turkana',NULL,'No','1997-08-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(104,'2024-12-18 02:55:53','2024-12-18 02:55:53','CL104/01/104/24',NULL,'Kimberly','Wangui','Gachiri','empresswangui54@gmail.com','+254769628568','41156436','Female','Christian','Nairobi','Maziwa','No','2003-10-28',NULL,NULL,'Rachel',NULL,'0720152280',NULL,'aliciaray54@gmail.com','Victor','0702657789','victormutugi52@gmail.com',NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,'2022',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(105,'2024-12-18 02:55:54','2024-12-18 02:55:54','CL104/10/54/24',NULL,'SAMWEL','Edonga','EPETA','epetasamwel286@gmail.com','0797923076','27557213','Male','Turkanna','Nairobi','TURKANA','No','2000-09-26','Disabled','Epeta elim','Elizabeth Namorupusi','0706361736','0743914190','epetaelim@gmail.com','Elizabethnamorupusi@gmail.com','John ekwee','0792414865','ekweejohn@gmail.com','NCPWD officers','0720142087',NULL,'Director','Secondary','D_','TURKANA TALENT HIGH SCHOOL','2020',16,1,'Online','[\"CDACC\"]','[]','[]',NULL,'Sign Language','[]','other',NULL,'Active'),
(106,'2024-12-18 02:55:56','2024-12-18 05:02:49','CL106/01/104/24',NULL,'Elijah','Odhiambo','Ochieng','ej2332224@gmail.com','0758044935','40855089','Male',NULL,'Nairobi','Ruiru','No','2003-03-10',NULL,'Samson Ochola','EUNICE ACHIENG SISO','0799000660','0746802498',NULL,NULL,'Pius siso',NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C+','Anjego secondary school','2021',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',110,'Active'),
(107,'2024-12-30 02:15:23','2024-12-30 02:15:23','CL107/01/107/24',NULL,'LAWRENCE','ONYANGO','OCHIENG','ochienglaw2@gimail.com','0728204284',NULL,'Male',NULL,'Nairobi',NULL,'No','1988-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(108,'2024-12-30 02:15:30','2024-12-30 02:15:30','CL108/01/108/24',NULL,'Velnah','Ontita','Ontita','velnahmoraa4@gmail.com','0700069575',NULL,'Female','Christian','Kiambu','Gachie,kiambu','Yes','2002-09-19','Spinal cord injury','Benard Ontita','Fridah Nyamusi',NULL,'0713910064',NULL,NULL,'Rashel Bonareri',NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(109,'2024-12-30 02:15:36','2024-12-30 02:15:36','CL109/01/109/24',NULL,'NAFTALY','NJAAGA','MAINA','naftali685@gmail.com','0729645759','27561211','Male','Christian','Nairobi','Embakasi','No','1988-12-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NAFTALY','0729645759',NULL,'ME','Primary',NULL,'Mbogoini','2002',4,1,'Online','[\"CDACC\"]','[\"passports\\/kAH0pIF915HToLj7R0iKlD9TcJo5VMGsSZUJ95WQ.png\",\"passports\\/XHQtr5xYPytSEQDqNCMARItR9gPDIW1IhCxzOJpO.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(110,'2024-12-30 02:15:41','2024-12-30 02:15:41','CL110/01/110/24',NULL,'OSMAN','MOHAMED','BALAGHA','osmanbalagha@gmail.com','0743039241','24398096','Male','Muslim','Nairobi','Nairobi','No','1982-01-01',NULL,'MOHAMED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(111,'2024-12-30 02:15:43','2024-12-30 14:19:39','CL111/01/111/24',NULL,'Shava','N/A','Godwin','shavagodwin293@gmail.com','+254722985923','22470422','Male','Christian','Nairobi','Utawala','No','1979-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[\"passports\\/dhGZhTZEY6AEJjNwMQOJhXEpE9zB6GI3E3azfgdc.jpg\"]','[\"idcards\\/FdS3THYl5APxq37DuMOWFTTg4AbLONEJjIETaxP2.jpg\",\"idcards\\/aEAylnngTg6y3rEWMkge2XQwRIvN0cBZvvVylyed.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',115,'Active'),
(112,'2024-12-30 02:15:44','2024-12-30 03:22:10','CL112/01/112/24',NULL,'Lovelyne','N/A','Pius','lovelynpius@gmail.com','0701702481','29100127','Female','Christian','Machakos','Nguluni','No','1992-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary','Certificate',NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',116,'Active'),
(113,'2024-12-30 02:15:45','2024-12-30 05:32:45','CL113/01/113/24',NULL,'SHEM','NAMBOYA','MAHINDI','mahindishem@gmail.com','254724457931',NULL,'Male','Christian','Nairobi',NULL,'No','1985-12-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary','324','VIGETSE PRIMARY SCHOOL','2001',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',117,'Active'),
(114,'2024-12-30 02:15:52','2024-12-30 02:15:52','CL114/09/51/24',NULL,'DAVID','SASITA','SIFUNA','sifunadavid93@gmail.com','0713338511','30590519','Male','Christian','Bungoma','Bungoma','No','1993-12-10',NULL,'Humphrey Sasita Sifuna','Scorlastic Nakhumicha',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C plain','TEREMI BOY\'S HIGH SCHOOL','2011',10,1,'Online','[\"KASNEB\"]','[\"passports\\/3DixPAHYoxAHgBJgAAqch2QsuKdZ20HhDgkReAhS.jpg\"]','[]','slips/amhcQ6gjFu9abDtRJ85Gs5XnskZ9RfZOqwUoj8wU.pdf','Accounting','[]','self',NULL,'Active'),
(115,'2025-01-03 16:54:35','2025-01-03 16:54:35','CL115/01/114/25',NULL,'Calleb','oyier','Oyier','rahmonent.re@gmail.com','0725753288',NULL,'Male',NULL,'Nairobi',NULL,'No','1984-01-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sophie Awuor','0717298829',NULL,NULL,NULL,NULL,NULL,'Primary',NULL,'Ngulu primary school','2011',4,1,'Online','[\"KNEC\"]','[\"passports\\/lCKI2Izk14qeDVv7o0US3FA6gpfcTs7vrXLxrdEo.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(116,'2025-01-03 16:54:37','2025-01-06 07:11:28','CL116/01/116/25',NULL,'Jones','Namukanga','Kitere','ngokhomohammed@gmail.com','0742717202','29306321','Female','Christian','Nairobi','Nairobi','No','1991-06-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mohammed','0728924328',NULL,'Spouse','Secondary','C-',NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','other',120,'Active'),
(117,'2025-01-03 16:54:38','2025-01-03 16:54:38','CL117/01/117/25',NULL,'Janet','N/A','Jerotich','jenetjerotich91@gmail.com','0720790845',NULL,'Female','Christian','Nairobi','Malaba','No','1991-06-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Myself','0720790845',NULL,NULL,'Secondary','C-','Uhuru high school Nakuru','2011',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(118,'2025-01-03 16:54:39','2025-01-03 16:54:39','CL118/01/118/25',NULL,'AHMED','INRAHIM','ABDIKADIR','akforex50@gmail.com','0722768138','29469988','Male',NULL,'Nairobi',NULL,'No','1992-03-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(119,'2025-01-06 07:53:53','2025-01-06 07:53:53','CL119/01/119/25',NULL,'ABIGAIL','N/A','KARUHI','abigailkaruhi@gmail.com','+254 - 708 - 307521',NULL,'Female',NULL,'Vihiga','Kisumu','No','2004-07-26',NULL,'EZEKIEL SAMIA','JOSPHINE KAYESI',NULL,'0748370942',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(120,'2025-01-06 07:54:06','2025-01-06 11:18:23','CL120/01/120/25',NULL,'Elvis','Kibet','Yego','kibetelvoo1999@gmail.com','0795144597','37772149','Male','Christian','Nandi','Mombasa','No','2025-10-10','Am well',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',124,'Active'),
(121,'2025-01-06 07:54:12','2025-01-06 07:54:12','CL121/01/121/25',NULL,'CHRISTINE','N/A','ONEGE','christineonege@gmail.com','0724749966','30252600','Female',NULL,'Wajir',NULL,'No','1992-08-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(122,'2025-01-06 07:54:19','2025-01-06 07:54:19','CL122/02/94/25',NULL,'Chidimma','Divine','Obasi-Nwonye','chidimmmanwonye299@gmail.com','0727378063',NULL,'Female','Christian','Nairobi','Nairobi','No','2009-02-04',NULL,NULL,'Obasi-Nwonye Hope',NULL,'0746814255',NULL,'hnworah2001@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,7,1,'On Site','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(123,'2025-01-06 07:54:22','2025-01-06 10:26:15','CL123/01/122/25',NULL,'Keyhodos','Buya','Wachu','buyawachu23@gmail.com','0791925014','33758714','Male','Christian','Tana River','Vumbwe village','No','1995-05-26',NULL,'Henock wachu you','Yemima henock','0700652940','0705410471',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C-','Marifano secondary school','2015',4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',127,'Active'),
(124,'2025-01-06 23:16:57','2025-01-07 01:32:56','CL124/01/124/25',NULL,'Calistus','Simiyu','Waswa','waswacalistus24@gmail.com','0705541105','41863171','Male','Christian','Bungoma','Meru','No','2003-11-10',NULL,NULL,'Frita Namalwa',NULL,'0758828459',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','B','St Stephen kimaeti secondary school','2023',4,1,'Online','[\"KNEC\"]','[\"passports\\/iApozS5aCTi5gWAuLCDq08pA83cM3I9JEG17LWmK.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',128,'Active'),
(125,'2025-01-09 22:07:11','2025-01-10 00:43:45','CL125/01/125/25',NULL,'ALFRED','OCHIENG','ODERA','alfredodera3@gmail.com','0721 126459','25065091','Male','Christian','Nairobi','Kisumu','No','1987-06-17','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',129,'Active'),
(126,'2025-01-09 22:07:12','2025-01-10 02:03:23','CL126/01/126/25',NULL,'CHRISTIAN','LINGA','OGEDA','ogedachristianlinga@gmail.com','0757493451',NULL,'Male',NULL,'Kisumu',NULL,'No','2006-03-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',130,'Active'),
(127,'2025-01-09 22:07:13','2025-01-09 22:07:13','CL127/01/127/25',NULL,'Ibrahim','Misati','Mokua','Ibrahimmisati8@gmail.com','0794015748','38127048','Male',NULL,'Nairobi','Kisii','No','2000-04-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D plain','Igorera high school','2018',4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(128,'2025-01-09 22:07:14','2025-01-10 03:59:24','CL128/01/128/25',NULL,'Evelyne','Lindsay','Atieno','evelindsay1@gmail.com','0723814210','21920773','Female','Nairobi','Nairobi','Nairobi','No','1979-12-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',132,'Active'),
(129,'2025-01-09 22:07:15','2025-01-09 22:07:15','CL129/01/129/25',NULL,'Joyce','N/A','Wanjigi','jwahura@yahoo.com','0111436695','26593491','Female',NULL,'Mombasa',NULL,'No','1989-05-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(130,'2025-01-09 22:07:15','2025-01-09 22:07:15','CL130/01/130/25',NULL,'Irine','Muga','Muga','sakede2010@gmail.com','0729637748',NULL,'Female','Kisumu','Nairobi','Kisumu','No','1993-12-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(131,'2025-01-09 22:07:16','2025-01-10 14:03:35','CL130/01/130/25',NULL,'PHILIP','N/A','MANYI','philipongechi82@gmail.com','0721636877',NULL,'Male',NULL,'Nairobi',NULL,'No','1987-01-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',135,'Active'),
(132,'2025-01-09 22:07:28','2025-01-09 22:07:28','CL132/02/123/25',NULL,'Shanice','N/A','Wairimu','shanicewairimu7@gmail.com','+254 724 065107',NULL,'Female','Christian','Nairobi','Nairobi','No','2006-10-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','10','Lukenya British Curriculum','2023',7,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(133,'2025-01-10 07:05:37','2025-01-10 09:12:49','CL133/01/132/25',NULL,'NICKSON','KIPTOO','METTO','nmetto63@gmail.com','0706270717','33367564','Male','Christian','Nairobi',NULL,'No','1994-04-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','B-','Kipkeino high school','2014',4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',137,'Active'),
(134,'2025-01-11 04:39:18','2025-01-11 04:39:18','CL134/01/134/25',NULL,'Collins','Ouma','Festo','Collinsfesto000@gmail.com','0713455046','40244566','Male','Christian','Homa Bay','Makueni','No','2002-05-25',NULL,'Festo Agutu','Lucy Aakinyi',NULL,'0791686886',NULL,NULL,NULL,NULL,NULL,'Lucy Aakinyi','0791686886',NULL,'Mother','Secondary','D+',NULL,NULL,4,1,'Homeschooling','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(135,'2025-01-11 04:39:19','2025-01-11 04:44:31','CL135/01/135/25',NULL,'DUNCAN','CHRIS','MWASHIGHADI','duncanchris1999@gmail.com','0712534986','36431401','Male',NULL,'Taita Taveta',NULL,'No','1996-05-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',139,'Active'),
(136,'2025-01-11 04:39:20','2025-01-11 10:18:25','CL136/01/136/25',NULL,'Margaret','N/A','Onjeso','joyj31718@gmail.com','0716091251','36463949','Female','Christian','Mombasa','United Arab Emirates','No','1999-02-04',NULL,NULL,'Rose musumba',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,'Eshibeye primary','2014',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',140,'Active'),
(137,'2025-01-11 04:39:20','2025-01-11 04:39:20','CL137/01/137/25',NULL,'David','Barasa','Maili','davidmaili333@gmail.com','0750262497',NULL,'Male','Christianity','Uasin Gishu',NULL,'No','1970-02-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','Form two','Grabatulla','1990',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(138,'2025-01-14 00:17:51','2025-01-14 00:17:51','CL137/01/137/25',NULL,'Moses','Mutua','Michael','mutuamichael271@gmail.com','0768761524',NULL,'Male','Christian','Makueni','Nairobi','No','2006-07-27',NULL,'Michael','Mutheu','0746190196','0759930882',NULL,NULL,'Sarah','0114031615','sarahmwikali017@gmail.com',NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(139,'2025-01-14 00:17:51','2025-01-14 00:17:51','CL139/01/139/25',NULL,'Benjamin','Lunani','Injemela','benmpole72@gmail.com','0110257841','41033917','Male',NULL,'Kiambu',NULL,'No','2002-08-10',NULL,'Masinde',NULL,'0727772606',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C plain','Namushiya secondary school','2021',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(140,'2025-01-14 00:18:05','2025-01-14 00:18:05','CL139/01/139/25',NULL,'Ibrahim','Lorot','Edan','lorotibra1963@gmail.com','0712664071','0149777','Male','Christian','Nairobi','Turkana','No','2025-01-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,'Lokitaung','1990',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(141,'2025-01-14 00:18:16','2025-01-14 00:18:16','CL141/01/141/25',NULL,'Bramwel','Poghisio','Poghisio','Poghisiobramwel27@gmail.com','0726430086','39580778','Male',NULL,'West Pokot','Nairobi','No','2002-02-25',NULL,'Korkwang lolima',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(142,'2025-01-14 00:18:26','2025-01-14 00:18:26','CL142/01/42/25',NULL,'Oloishorua','N/A','Elijah','elijahsaoli5@gmail.com','0713828959',NULL,'Male','Christian','Narok','Narok','No','2023-09-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Elijah oloishorua','0713828959',NULL,NULL,'Primary',NULL,NULL,NULL,15,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(143,'2025-01-14 00:18:37','2025-01-14 00:18:37','CL143/01/142/25',NULL,'PAULINE','MUENI','WAMBUA','itslynnwambua@gmail.com','0731402799/0748622426','24547790','Female','MACHAKOS','Machakos','MACAHOKS','No','1984-07-01',NULL,NULL,'PHILOMENA',NULL,'0725536795',NULL,NULL,'Philomena','0725536795',NULL,NULL,NULL,NULL,NULL,'Primary','B+','MASAANI PRIMARY SCHOOL','2000',4,1,'Online','[\"CDACC\"]','[\"passports\\/pIOAUwVbuMSsTBw36cqJTXxSX4CduNMNqb3EJ9uG.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(144,'2025-01-14 00:18:51','2025-01-14 00:18:51','CL144/01/143/25',NULL,'RAHAB','N/A','WAINAINA','raaydaves@gmail.com','0705216798',NULL,'Female',NULL,'Nairobi',NULL,'No','1998-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,15,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(145,'2025-01-14 00:19:03','2025-01-14 00:19:03','CL145/01/144/25',NULL,'DENIS','N/A','KIBET','denisatkibet@gmail.com','0722312342',NULL,'Male',NULL,'Nairobi',NULL,'No','1980-04-10',NULL,'Tirop serem',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(146,'2025-01-14 00:19:11','2025-01-14 00:19:11','CL146/01/146/25',NULL,'Sharon','Jepngetich','Kemboi','sharonkemboi454@gmail.com','0758637889','38610828','Female','Christian','Kirinyaga','Mwea','No','2001-05-17',NULL,'David Kemboi','Ruth Chepkosgey','0713831560','0769842654',NULL,NULL,'Ruth Chepkosgey','0769842654',NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(147,'2025-01-14 00:19:22','2025-01-14 00:19:22','CL147/01/147/25',NULL,'Eric','Kipsang','Chirchir','brianmudenge159@gmail.com','0743167934','32332435','Male','Christianity','Nairobi','Pipeline','No','1995-10-12',NULL,'Daniel kipsang','Beatrice chebet kipsang','0741409869','0741339988','daniel88@gmail.com','beatricechebet33@gmail.com','Lilian kipsang','0718075883',NULL,'My self','0743167934',NULL,NULL,'Secondary','C-','Bujumba boys','2018',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(148,'2025-01-14 00:19:35','2025-01-14 00:19:35','CL148/01/148/25',NULL,'Mercy','ADHIAMBO','Odumbe','odumbemercy22@gmail.com','+254 746 159494',NULL,'Female','Christian','Mombasa','Mombasa','No','1999-11-28',NULL,'CALEB ODUMBE GUYA','PERES ODUMBE',NULL,'0712072601',NULL,NULL,'JIM ODUMBE',NULL,NULL,NULL,'0746159494',NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(149,'2025-01-14 00:19:43','2025-01-14 00:19:43','CL149/01/149/25',NULL,'FELIX','HANNS','IBUYA','ibuyafelix88@gmail.com','0717254469','26824678','Male','Christian','Turkana','Lodwar','No','1988-07-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(150,'2025-01-14 23:59:41','2025-01-14 23:59:41','CL150/01/150/25',NULL,'Catherine','Karendi','Tharamba','karecatejames@gmail.com','0745991840',NULL,'Female','Christian','Kajiado','Kitengela','No','1988-10-30',NULL,'Tharamba','Everline','0726208569','0798795217',NULL,NULL,'Samuel Njoroge','0799691861','sammuiruri5@gmail.com','Catherine','0745991840',NULL,'Karendi','Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[\"passports\\/2CnBozhxVd6eQCwt6amJYN3f20ZNbvPECnicQbd6.png\",\"passports\\/i8z48JzPyNokB9zdNcrM78BZXD9iY03kpjLpigeo.png\"]','[\"idcards\\/41wU0tSltSDyDJwpNtpkpSLB0LfBdzDGOkYLhrtu.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(151,'2025-01-15 15:43:00','2025-01-15 15:43:00','CL151/01/151/25',NULL,'Mark','Onyango','Oluoch','markoluoch332@gmail.com','0792139988','36458917','Male','Christianity','Kisumu','Kisumu','No','1999-01-21','N/A','James oluoch','Everline obare','0725038358','0799787890',NULL,NULL,'Evaline obare','0799787890',NULL,'N/A',NULL,NULL,'N/A','Secondary','D-','Rapogi mixed sec school','2017',4,1,'Online','[\"KNEC\"]','[\"passports\\/Lsj7wGpJVafjgJxSRnYeqyLPGXATIgc2DwzCXg9b.jpg\",\"passports\\/gd0ooH3CMTZZY7uGtBKk4u5qCRS1g7qgVXd2Nhvq.jpg\"]','[\"idcards\\/dXAhKNwzKhnhqslRPJ8uEdQ5FG4Gb19o0l9JTGv5.jpg\",\"idcards\\/bnszeY4HumB5YNWzMn3QAXpu5tmFI37UZOCoMSdU.jpg\"]','slips/06VoUvLFwhl2pUISu3ZWZF7r2naFV1CTpxtAurbQ.jpg','KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(152,'2025-01-15 15:43:06','2025-01-15 15:43:06','CL152/01/152/25',NULL,'STEPHEN','OCHIENG','OJWANG','stephennawyak28@gmail.com','0111807100','39385747','Male','CHRISTIANITY','Nairobi','NYALI','No','2001-04-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C-','Ratanga Boys school','2019',4,1,'Online','[\"KNEC\"]','[\"passports\\/YIjdUzPFl9aX3YqFtnxZUOdRGP01fJV7efzRNDqV.jpg\",\"passports\\/CYUzHLgtizRmpNU4MAo3v21xayeoMs157MC7Lz0K.jpg\"]','[\"idcards\\/PH9RMmiGeXBy1i2hB9rvQXggf555DmUKJLE8lllJ.jpg\",\"idcards\\/yY9EooZ8tJivI7mVErMNwIAI1qqg5TvFq6ld8SaA.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(153,'2025-01-15 15:43:11','2025-01-15 15:43:11','CL153/01/153/25',NULL,'francis','kamau','kungu','kunguf488@gmail.com','0726109473','30278884','Male','christian','Nairobi','kiambu','No','1992-07-21',NULL,'George kungu','Elizerbeth njeri','0725060108',NULL,NULL,NULL,'veronicah wanjiru','0702931328',NULL,NULL,NULL,NULL,NULL,'Secondary','form 4','granden EDUCATION CENTER','2011',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(154,'2025-01-17 16:42:30','2025-01-17 16:42:30','CL154/01/154/25',NULL,'Samuel','N/A','baranda','Samuelbidaku93@gmail.com','0702480491',NULL,'Male',NULL,'Nairobi',NULL,'No','1952-01-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Simon bidaku','0702480491','Samuelbidaku93@gmail.com',NULL,'0702480491',NULL,NULL,'Primary','377','Crater primary school','2018',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','other',NULL,'Active'),
(155,'2025-01-17 16:43:23','2025-01-17 16:43:23','CL155/01/155/25',NULL,'Thoya','N/A','Kibwana','kibzzdon@gmail.com','+254798872887',NULL,'Male',NULL,'Nairobi',NULL,'No','1996-04-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(156,'2025-01-21 22:56:51','2025-01-21 22:56:51','CL156/01/156/25',NULL,'Rita','Maremo','Kisaka','kisakamildred5@gmail.com','0719586236',NULL,'Female','Christian','Nairobi',NULL,'No','2006-02-28',NULL,NULL,'Beatrice',NULL,'0729138710',NULL,NULL,NULL,NULL,NULL,'Beatrice','0729138710',NULL,'Single','Secondary','C plain','Pumwani Girls Secondary school','2024',4,1,'Homeschooling','[\"KNEC\"]','[]','[]','slips/8xMqc2y41RXJU4ZxoBurc2NL0TPvcnePdKQa2mkP.jpg','KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(157,'2025-01-24 01:33:28','2025-01-24 01:33:28','CL157/01/157/25',NULL,'Lorna','Sharon','Mwangi','mukalimwangi7@gmail.com','0757823765','42042579','Female','Christian','Nairobi','Roysambu','No','2004-06-12',NULL,'Antony mwangi','Ann mwangi','0723785674',NULL,'ammwangi207@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[\"idcards\\/cVpzNiYPMfMNNpBBRR6pfLkaq4YkVZpBdV2b8zUh.jpg\",\"idcards\\/WpQYvkRo11QLWXUrq86ic0vHcaAuQi5K6nnq9yEi.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(158,'2025-01-24 01:33:43','2025-01-24 01:33:43','CL158/01/158/25',NULL,'Michelle','N/A','Silole','michellesilole@gmail.com','0790787187',NULL,'Female',NULL,'Nairobi','umoja one h213','No','2006-09-12',NULL,'kevin kahiga','prisca wanjiku','0716393362','0728758202','kevostone@gmail.com','priscatets@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C-','lakewood Emerald Senior Girls','2024',4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(159,'2025-01-24 01:33:53','2025-01-24 01:33:53','CL159/09/01/25',NULL,'Faridah','Anyango','Ahmed','ahmedfaridahj@gmail.com','0708291825','32197084','Female',NULL,'Nairobi','Kilimani','No','1995-05-10',NULL,'Ahmed Ibrahim Ogada','Beatrice Atieno Ndege','0733991525','0727643937',NULL,NULL,'Geoffrey Ogumbe','0723083117',NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,9,1,'On Site','[\"CDACC\"]','[]','[]',NULL,'Accounting','[]','father',NULL,'Active'),
(160,'2025-01-26 22:49:16','2025-01-26 22:49:16','CL160/01/159/25',NULL,'Vincent','Kipngeno','Koskei','tysonkosgei1@gmail.com','0702028413','28155042','Male','Christian','Nairobi','Bomet','No','1990-02-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Betty','0707467595',NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(161,'2025-01-26 22:49:24','2025-01-26 22:49:24','CL161/01/161/25',NULL,'SHEILA','JEROP','MISOI','SHEILAJ@GMAIL.COM','0708283504','30967084','Female','CHRISTIAN','Uasin Gishu',NULL,'No','1992-08-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(162,'2025-01-27 23:10:29','2025-01-27 23:10:29','CL162/01/162/25',NULL,'Elizabeth','Mwikali','Kimwele','gail93580@gmail.com','0757772936',NULL,'Female','Christianity','Nairobi','Nairobi','No','2000-02-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(163,'2025-01-27 23:10:40','2025-01-27 23:10:40','CL163/01/163/25',NULL,'Kerry','Omondi','Adongo','okerry254@gmail.com','+254 700373654','32626397','Male','Christian','Nairobi','Pioneer','No','2017-10-02','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(164,'2025-01-27 23:10:50','2025-01-27 23:10:50','CL164/09/36/25',NULL,'Jared','Omondi','Otieno','otienojared503@gimail.com','0707506449',NULL,'Male',NULL,'Nairobi',NULL,'Yes','1999-12-27','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,13,1,'Online','[\"CDACC\"]','[]','[]',NULL,'Accounting','[]','father',NULL,'Active'),
(165,'2025-01-27 23:11:00','2025-01-27 23:11:00','CL165/01/164/25',NULL,'Salima','N/A','Bavilie','salminahbarvilie74@gmail.com','0769648397','798703859','Female','Muslim','Nairobi','Kamukunji','No','2004-12-16',NULL,NULL,'CHARITY WANJIRU',NULL,'0718770992',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,'RACECOURSE','2018',4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(166,'2025-01-29 23:40:50','2025-01-29 23:40:50','CL166/01/166/25',NULL,'ALEX','AMOS','OKOCHI','alexokochi04@gmail.com','0746494499','36645541','Male','CHRISTIAN','Nairobi','DAGGORETI','No','1998-06-07',NULL,'LEONARD AJALA OBANDE','JANE NEKESA AJALA','0706881442','0707521108','ajalaleonard83@gmail.com',NULL,'AJALA EVANS OKUMU','0727596786',NULL,'Evans Ajala','0727596786',NULL,'Brother','Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[\"idcards\\/3V0v3pWaGlQEzDf8R7S7ZCJFq4o1CfGjYvU2H8yb.jpg\",\"idcards\\/mo5bVijH0nZNHYoS5bEpvuzkjQwi7RJOrdawyVEY.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','other',NULL,'Active'),
(167,'2025-01-29 23:41:00','2025-01-29 23:41:00','CL167/01/167/25',NULL,'ALICE','ACHIENG','OKONG\'O','aliciahachieng@gmail.com','0768469684',NULL,'Female',NULL,'Nakuru','NAKURU','No','1999-03-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[\"passports\\/mq5q11BBipqtFJ6nTqbFdkDGpPUpw457kPTJWtFi.jpg\"]','[\"idcards\\/KfSM31vdZhGC18Gze5OlWVUf06EaryljJscyQpSW.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(168,'2025-01-29 23:41:11','2025-01-29 23:41:11','CL168/01/168/25',NULL,'Nicholas','Kimathi','Mwikuu','nicholaskimathi61@gmail.com','0728866137','28671889','Male','Christian','Kiambu','Thika','Yes','1992-01-27','Left leg knee joint pain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','Not done','Miathene day school',NULL,4,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(169,'2025-01-29 23:41:20','2025-01-29 23:41:20','CL169/01/169/25',NULL,'Josphine','Wanjiku','Kimani','joanakimani@gmail.com','0745626936','39497573','Female',NULL,'Nairobi',NULL,'No','2002-04-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Janffer Kimani','0708214763','kimanijennipher@gmail.com','Janffer Kimani','0708214763',NULL,'Sister','Primary',NULL,NULL,NULL,4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','other',NULL,'Active'),
(170,'2025-01-29 23:41:31','2025-01-29 23:41:31','CL170/01/145/25',NULL,'OLIVER','WANJALA','WAFULA','oliverwanjala82@gmail.com','0717179407','33223332','Male','CHRISTIAN','Bungoma','Soysambu','No','1995-06-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,15,1,'Online','[\"CDACC\"]','[\"passports\\/pMDLxWlR4trMoiuu2DQOOBForx3KjbqM14vQ4Tc7.jpg\"]','[\"idcards\\/94zKq1NbQ17cidNRlX5z9EJE89OZCc84VECWaCUa.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(171,'2025-01-29 23:41:42','2025-01-29 23:41:42','CL171/09/01/25',NULL,'Evylyn','Kiriki','Ntinyari','ntinyarikiriki123@gmail.com','0717832334','29350198','Female',NULL,'Meru',NULL,'No','1990-02-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,12,1,'Online','[\"CDACC\"]','[]','[]',NULL,'Accounting','[]','self',NULL,'Active'),
(172,'2025-01-30 23:40:35','2025-01-30 23:40:35','CL172/01/170/25',NULL,'MILDRED','TOLONDO','KHAOMA','MILDREDTOLONDO@GMAIL.COM','+254795485434','33675557','Female','CHRISTIAN','Nairobi','QATAR','No','1993-11-12',NULL,'PATRICK KHAUSA','MARYLINE WASIKE','0728741468','0713518154','PATRICKMUTWARO@GMAIL.COM','MARYLINENGONI@GMAIL.COM','MARYLINE WASIKE','0713518154','MARYLINENGONI@GMAIL.COM',NULL,NULL,NULL,NULL,'Primary','KCPE','EBUNG\'AYA','2009',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(173,'2025-02-01 00:20:38','2025-02-01 00:20:38','CL173/01/173/25',NULL,'Esther','Nyambura','Wambui','elsieosteen@gmail.com','0717162879',NULL,'Female','Christian','Kiambu','Kiambu','No','1990-03-20',NULL,NULL,'Wambui',NULL,NULL,NULL,NULL,'Edward Gitau',NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Full Time','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(174,'2025-02-11 03:57:27','2025-02-11 03:57:27','CL174/01/174/25',NULL,'ROBERT','OCHIENG','OWUOR','robertowuor82@gmail.com','0721861143','22485680','Male',NULL,'Nairobi',NULL,'No','1982-03-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'STEPHANIE NZILANI MUTUNGA','0725757459','stef.leeo84@gmail.com',NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[\"passports\\/5lrOJeyHcE3eydB3meFIz3zZNjkvktJdTa1xEQxF.jpg\"]','[\"idcards\\/gLAjvHSB9bXpLaAUxSGB3sLUv78Gg1KEeVbr9NBY.jpg\",\"idcards\\/14uxnAhGVVdJBWlCm44sFh9OIBJxyFrUpgY8yVLn.jpg\"]','slips/WtPj9eKMGqdycWNltm4h7qNfq5lYeibiNImeHZo8.pdf','KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(175,'2025-02-11 07:50:50','2025-02-11 07:50:50','CL175/07/101/25',NULL,'Andrew','Mwaura','Gathogo','ruguruf62@gmail.com','0720410571','22422055','Male','Christian','Nairobi','Kasarani','No','1983-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,6,1,'Homeschooling','[\"KNEC\"]','[]','[]',NULL,'AS/A LEVEL','[]','self',NULL,'Active'),
(176,'2025-02-11 07:50:51','2025-02-11 07:50:51','CL176/01/175/25',NULL,'YVONNE','ADHIAMBO','MWALO','yvonnemwalo@gmail.com','0705861557','30889690','Female','Chrstian','Nairobi','Nairobi','No','1994-02-01','N/A','James Mwalo','Rose Mwalo','0721606852','0705861557',NULL,NULL,'Rogers Oluoch','0718894837',NULL,NULL,NULL,NULL,NULL,'Secondary','C plane','Mulaha mixed secondary school','2013',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(177,'2025-02-12 01:29:32','2025-02-12 01:29:32','CL177/01/177/25',NULL,'MUKASIA','N/A','SELINER','selinermukasia8@mail.com','0110069832','32883733','Female','CHRISTIAN','Nairobi',NULL,'No','1995-05-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary','B-','ISIKHI PRIMARY SCHOOL',NULL,4,1,'Homeschooling','[\"KNEC\"]','[\"passports\\/Sfv3W0xa1Ate3kU0zYpEQZ6Wwkzd3OOjkdauBZGO.jpg\",\"passports\\/La0HEKO3X1FUJMPUu9K9a2LkUyJduUDMheeZ1FXG.jpg\"]','[\"idcards\\/rP6MLNsDhDRTuZUQEt49N5ea5R6iod2gIG1kWpy5.jpg\",\"idcards\\/FchMh6XEwMe5D1gETiL7GLH4t2yU4W7ycORw7V5a.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(178,'2025-02-12 01:29:57','2025-02-12 01:29:57','CL178/01/178/25',NULL,'Rael','Nanyama','Mutimba','mutimbarael2@gmail.com','0706641119','36580163','Female',NULL,'Nairobi',NULL,'No','1996-11-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Joyce Wesonga','0723882375',NULL,NULL,'Primary',NULL,'Eshibanze Primary','2012',4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','other',NULL,'Active'),
(179,'2025-02-12 01:30:10','2025-02-12 01:30:10','CL179/01/179/25',NULL,'Eleazar','N/A','Maviah','maviaheleazar@gmail.com','0742717575','36568301','Male',NULL,'Nairobi',NULL,'No','1996-06-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D-','St.Patricks Ikonyero sec.school','2017',4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(180,'2025-02-12 01:30:20','2025-02-12 01:30:20','CL180/01/180/25',NULL,'Benard','E.','Wanyonyi','wanyonyibenard292@gmail.com','0710567927','25868361','Male','Christian','Trans Nzoia',NULL,'No','1986-05-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C plain',NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(181,'2025-02-12 01:30:30','2025-02-12 01:30:30','CL181/01/181/25',NULL,'DAVID','OTIENO','OTIENO','davidootieno155@gmail.com','0759677986','39522048','Male','CHRISTIAN','Homa Bay','KARACHUONYO','No','2001-03-03',NULL,NULL,'MARGARET OTIENO AUMA',NULL,'0716097240',NULL,NULL,'NAOMI AKINYI OTIENO','0748113020','naomiakinyi478@gmail.com','MARGRET','0716097240',NULL,'SON','Primary','299','NYAWANGO PRIMARY SCHOOL','2018',4,1,'Online','[\"CDACC\"]','[\"passports\\/PDpe6oofajqIdz0gygvdyk9tkLDJyLGKj1oC3NHX.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(182,'2025-02-19 01:35:20','2025-02-19 01:35:20','CL182/01/182/25',NULL,'Catherine','Wambui','Ndiba','catherinendiba2@gmail.com','0112380554','42091504','Female','Christian','Kiambu','Kikuyu','No','2004-09-20',NULL,'Joel Ndiba Kiragu','Lilian Wambui Mureu','0721578640','0725279424','joelndiba3@gmail.com','lilianmuriu75@gmail.com',NULL,NULL,NULL,'Phyllis mumbi','0725624533',NULL,'Aunt','Secondary','D+','St Marys Girls','2022',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','other',NULL,'Active'),
(183,'2025-02-19 01:35:34','2025-02-19 01:35:34','CL183/01/183/25',NULL,'Emmanuel','Kiplagat','Kogo','emmanuelkogo17@gmail.com','0708303370','20407771','Male','SDA CHRISTIAN','Trans Nzoia',NULL,'No','1975-10-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(184,'2025-02-19 01:35:43','2025-02-19 01:35:43','CL184/01/184/25',NULL,'John','Mwangi','Wachera','mwangijohn813@gmail.com','0725849439','24118215','Male','Christian','Nairobi','Buruburu','No','1982-08-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary','B+','Gitugu','2000',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(185,'2025-02-19 01:35:51','2025-02-19 01:35:51','CL185/01/185/25',NULL,'ANTHONY','KIPKURUI','KIPTOO','anthonykiptoo222@gmail.com','0715086941','25020637','Male','Christian','Nairobi','Nakuru','No','1986-02-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(186,'2025-02-21 08:36:47','2025-02-21 08:36:47','CL186/01/186/25',NULL,'Prisilla','Wairimu','Karanja','wairimupriscilla71@gmail.com','0794262463',NULL,'Female','Christian','Kiambu','Kiambaa','No','2006-05-07',NULL,'Wilfred karanja','Hannah wanjiku','0720968974','0713701366',NULL,NULL,'Mother','0713701366',NULL,NULL,'0794262463',NULL,'Single','Secondary','D+','Muthurwa girls','2023',4,1,'Online','[\"CDACC\"]','[]','[\"idcards\\/yipc9Hp11nLbfIfK6MRZaKH4T630FY0NYNAZsVQz.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(187,'2025-02-23 23:48:26','2025-02-23 23:48:26','CL187/02/133/25',NULL,'Purity','Makungu','Mwange','Puritymakungu005@gmail.com','0792781334','34381599','Female','Christian','Nairobi','Kangemi','No','1995-06-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Purity','0792781334',NULL,NULL,'Primary',NULL,NULL,NULL,7,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(188,'2025-02-26 16:28:34','2025-02-26 16:28:34','CL188/01/187/25',NULL,'ELIZABETH','ONGAYO','OYOKO','elizabethongayo646@gmail.com','0794921024','382202082','Female','CHRISTIAN','Nairobi','NAIROBI WEST','No','2023-05-28',NULL,NULL,'JANEROSE OYOKO',NULL,'0702696438',NULL,'elizabethongayo646@gmail.com','EMILY NYABUTI','0704276482','emmymoraa92@gmail.com',NULL,NULL,NULL,NULL,'Primary','230','kawangware primary',NULL,4,1,'Online','[\"KNEC\"]','[\"passports\\/72pkz0xMmOk3EwPjGtsULzw1fuvgAOzEWlS24ned.jpg\"]','[\"idcards\\/KEqGkYtAqEtnlG06k4FMUEnEafQRObjHm2jeNMBj.pdf\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(189,'2025-03-17 23:32:38','2025-03-17 23:32:38','CL189/01/189/25',NULL,'Clement','Munyua','Mureithi','Mcmureithi@gmail.com','0722164219','22888482','Male','Christian','Nairobi','Nairobi','No','1982-11-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(190,'2025-03-17 23:33:02','2025-03-17 23:33:02','CL190/01/190/25',NULL,'Jayson','N/A','Ombima','eprahimjayson@gmail.com','0714619565',NULL,'Male',NULL,'Nairobi',NULL,'No','2001-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(191,'2025-03-17 23:33:19','2025-03-17 23:33:19','CL191/01/191/25',NULL,'Susan','N/A','Wanjiru','Susanwanjiru927@gmail.com','0707369486',NULL,'Female',NULL,'Nairobi',NULL,'No','1998-04-23',NULL,NULL,'Martha wanjiru mwangi',NULL,NULL,NULL,NULL,'Martha wanjiru','0711854135',NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(192,'2025-03-17 23:33:25','2025-03-17 23:33:25','CL192/01/192/25',NULL,'jecinta','njeri','nyaboro','jecintanjeri017@gmail.com','0704319237','27808628','Female','christian','Nairobi','ruirui','No','1989-04-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(193,'2025-03-17 23:33:39','2025-03-17 23:33:39','CL193/01/193/25',NULL,'Zachary','NGARE','OBONYO','jdemocity@gmail.com','+254733289349','20346516','Male','Christian','Nairobi','Langata','No','1978-04-15','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(194,'2025-03-17 23:33:46','2025-03-17 23:33:46','CL194/01/194/25',NULL,'Triumph','N/A','Museveni','Jackieobura@gmail.com','0795909974',NULL,'Female','Christian','Migori','Migori','Yes','2006-07-10','Allergies',NULL,'Jackline Obura',NULL,'0795909974',NULL,'jackieobura@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(195,'2025-03-17 23:33:54','2025-03-17 23:33:54','CL195/02/188/25',NULL,'Maryann','Njoki','Karanja','njokimary498@gmail.com','0798407200',NULL,'Female','Christian','Nairobi','UAE','No','1996-07-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(196,'2025-03-17 23:34:01','2025-03-17 23:34:01','CL196/01/195/25',NULL,'Diana','Mujenyi','Ayodi','ayodidiana1@gmail.com','0745973168',NULL,'Female','Christian','Nairobi',NULL,'No','1998-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0745973168',NULL,NULL,'Primary','318 marks','Mahanga primary','2013',4,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(197,'2025-03-17 23:34:09','2025-03-17 23:34:09','CL197/01/197/25',NULL,'SHEILA','N/A','KAVUGWI','Khavugwisheillah63@gmail.com','+254763055807','37785690','Female','CHRISTIAN','Nairobi','VIHIGA','No','1999-06-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D+','MAGUI SECONDARY','2018',4,1,'On Site','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(198,'2025-03-20 00:11:10','2025-03-20 00:11:10','CL198/01/198/25',NULL,'Solomon','Karanja','Gathoni','solslaiscott@gmail.com','0703229605',NULL,'Male',NULL,'Kiambu',NULL,'No','2007-11-24','Sight problem',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(199,'2025-03-20 00:11:17','2025-03-20 00:11:17','CL199/01/199/25',NULL,'Winfred','Nzula','Caroline','nzulawinfred99@gmail.com','0746948034','42743412','Female','Christian','Nairobi','Nairobi','No','2004-05-12',NULL,NULL,'Caroline',NULL,'0727340984',NULL,NULL,'Cynthia Mwende','0735547230',NULL,NULL,NULL,NULL,NULL,'Secondary','D+','Immaculate heart of Mary Donbosco','2022',4,1,'Homeschooling','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(200,'2025-03-20 00:11:24','2025-03-20 00:11:24','CL200/01/200/25',NULL,'Linus','Mwangi','Maina','linusmaina716@gmail.com','0726593996','38998465','Male','Christian','Murang`a',NULL,'No','2001-12-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(201,'2025-03-21 03:43:22','2025-03-21 03:43:22','CL201/01/201/25',NULL,'Phanice','Nasimiyu','Wafula','phanicewa2000@gmail.com','0795800416','38361903','Female',NULL,'Nairobi','Kayole','No','2000-02-01',NULL,'Alfred Wafula',NULL,'0713648573','0723577092',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[\"idcards\\/iVBwS824lhzZjRJFUE6q5Gwodyf0UJBM0NMNhnKO.jpg\",\"idcards\\/VbK8GUY3pfEXE5AIBiTcD6SwlnMojqY1J6h8C8Gq.jpg\"]','slips/YsYrRE8w3MuOFBZ0FKeu3BukWrxBi4SjCgUNuCtz.pdf','KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(202,'2025-04-08 06:27:44','2025-04-08 06:27:44','CL202/01/202/25',NULL,'HYLINE','NYANCHAMA','ONGWAE','Hylineongwae5@gmail.com','+254113177729',NULL,'Female',NULL,'Nairobi',NULL,'No','1997-05-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(203,'2025-04-08 06:28:02','2025-04-08 06:28:02','CL203/01/203/25',NULL,'Rachel','Georgina','Wilson','r53224145@gmail.com','0705168746',NULL,'Female',NULL,'Homa Bay','Eldoret','No','2005-06-29',NULL,'Micheal wilson','Benta wilson',NULL,'0718106969',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(204,'2025-04-08 06:28:22','2025-04-08 06:28:22','CL204/01/204/25',NULL,'TERRY','AWUOR','OGWENO','terryawuorogweno@gmail.com','0748286041','40285409','Female','CHRISTIAN','Machakos','JOSKA','No','2001-11-13',NULL,'TOM OGUTA','MARY OGWENO','0113843023','0704581050',NULL,NULL,'BONFACE OYUGI','0720272508',NULL,'BONFACE OYUGI','0720272508',NULL,'SPOUSE','Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[\"passports\\/enKwpL4DOERaDhKpBPJRG6yFogzvLHNxrQ4cBNfz.png\"]','[\"idcards\\/iL9jJQ8Mb1zWEcVyszZO2RfNwBH7lTXYrxD9zTLn.jpg\",\"idcards\\/8SrdmJHe7k636DqH7OytzSy7k1YhidawCH7mOzMq.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','other',NULL,'Active'),
(205,'2025-04-08 06:28:29','2025-04-08 06:28:29','CL205/01/205/25',NULL,'Beatrice','Njeri','Mbugua','mbuguabeatrice98@gmail.com','0794462951','37038416','Female',NULL,'Nairobi',NULL,'No','1999-11-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(206,'2025-04-08 06:28:54','2025-04-08 06:28:54','CL206/01/206/25',NULL,'Stephen','Gikonyo','Maina','captain001stevegm@gmail.com','0713289378','30867075','Male',NULL,'Nakuru',NULL,'No','1994-02-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(207,'2025-04-08 06:29:17','2025-04-08 06:29:17','CL207/01/207/25',NULL,'esther','kaluki','nzyoka','esthernzyoka25@gmail.com','0717491738','37690900','Female',NULL,'Nairobi',NULL,'No','1998-11-22',NULL,'Daniel','Rhoda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,'A.I.C  Nguluni','2012',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(208,'2025-04-08 06:29:34','2025-04-08 06:29:34','CL208/01/208/25',NULL,'Cynthia','Michelle','Achieng','cynthiamichelle515@gmail.com','0706518974',NULL,'Female','Christian','Nakuru','Kanet','No','2007-01-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C plain','Menengai High School','2024',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(209,'2025-05-19 06:13:44','2025-05-19 06:13:44','CL209/07/176/25',NULL,'Kiseli','Mukinyi','Mwakavi','kmukinyi@gmail.com','+254722615204',NULL,'Male',NULL,'Nairobi',NULL,'Yes','2007-01-15','Was involved in an accident which resulted in his memory being affected. He was previously an A* student however since then averaged at a C grade. He chose to repeat his IGCSEs as opposed to moving onto sixth form directly and he is now in a better place however, things must be explained to him in detail and repeated over the coarse of a week in order for things to stick and once this week of repetition is over, it becomes easier for him to remember things.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C',NULL,'2024',6,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'AS/A LEVEL','[]','mother',NULL,'Active'),
(210,'2025-05-19 06:13:54','2025-05-19 06:13:54','CL210/01/209/25',NULL,'Stacy','Osore','Marienga','lenastacy74@gmail.com','0799536052',NULL,'Female','Christian','Nairobi',NULL,'Yes','2003-11-19','Allergies,ulcers',NULL,'Metring Saina',NULL,NULL,NULL,NULL,'Emily khamali',NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(211,'2025-05-19 06:14:03','2025-05-19 06:14:03','CL211/01/211/25',NULL,'Fredrick','Otieno','Mwemba','Fredrick.mwemba@gmail.com','0720932257','27035250','Male','Christian','Nairobi','Nairobi','No','1988-07-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Part Time','[\"CDACC\"]','[]','[\"idcards\\/nxqVwwnZ7gGY86H9p9cLzxR25n1GhV9p9hyD7AGd.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(212,'2025-05-19 06:14:12','2025-05-19 06:14:12','CL212/01/212/25',NULL,'ROSE','MUTIO','NZALA','rosemutio50@gmail.com','0114697262','3','Female','Christians','Machakos','Machakos','No','1999-06-21',NULL,'Patrick muli',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(213,'2025-05-19 06:14:26','2025-05-19 06:14:26','CL213/01/213/25',NULL,'Precious','Wambui','Susan','reshireci0@gmail.com','0729267288','664743567','Female','Gikuyu','Kiambu','Gatundu','No','2006-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C plain','Yumbisye secondary','2023',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(214,'2025-05-19 06:14:37','2025-05-19 06:14:37','CL214/01/214/25',NULL,'MICHAEL','OTIENO','OMONDI','MichaelKingAngel00@gmail.com','0114888561','42406819','Male','CHRISTIAN','Nakuru',NULL,'No','2004-05-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(215,'2025-05-19 06:14:49','2025-05-19 06:14:49','CL215/02/196/25',NULL,'Brandon','Omondi','Ogada','brandon.ogada@icloud.com','0791510822',NULL,'Male',NULL,'Nairobi',NULL,'No','2005-05-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(216,'2025-05-19 06:14:58','2025-05-19 06:14:58','CL216/01/215/25',NULL,'Awuor','N/A','Ngolo','effiengolo6@gmail.com','0787455191',NULL,'Female','Christian','Nairobi','Nairobi','No','2025-05-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(217,'2025-05-24 07:42:40','2025-05-24 07:42:40','CL217/09/160/25',NULL,'Steave','Ochieng','Otieno','ochiengsteave999@gmail.com','0768140944','39189580','Male','Christian','Taita Taveta','Mwatate','No','1999-12-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,9,1,'Online','[\"CDACC\"]','[]','[]',NULL,'Accounting','[]','self',NULL,'Active'),
(218,'2025-05-24 07:42:47','2025-05-24 07:42:47','CL218/01/217/25',NULL,'ALEX','KENGA','WANJE','kengawanje94@gmail.com','+254 768-815-269/O762852368','31678765','Male','CHRISTIAN','Kilifi','KILIFI','No','1994-04-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[\"passports\\/lVsn1PYNmdr83N05Poo1qNzmjXKcvmbknvPKAqK5.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(219,'2025-07-05 12:56:08','2025-07-05 12:56:08','CL219/01/219/25',NULL,'MERCY','MUTHONI','ITOTIA','mercitotia@gmail.com','0112169852',NULL,'Female','CHRISTIAN','Nairobi',NULL,'No','2004-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D','Nderi secondary','2022',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(220,'2025-07-05 12:56:20','2025-07-05 12:56:20','CL220/01/220/25',NULL,'Benta','N/A','Chepngeno','chepngenobenta@gmail.com','0750123092','37184262','Female',NULL,'Nairobi',NULL,'No','1999-11-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(221,'2025-07-05 12:56:25','2025-07-05 12:56:25','CL221/01/221/25',NULL,'Elias','Odhiambo','Juma','eliasodhiambo840@gmail.com','0756726582','35654241','Male',NULL,'Nairobi',NULL,'No','1996-10-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(222,'2025-07-05 12:56:32','2025-07-05 12:56:32','CL222/01/171/25',NULL,'Amin','Abdirahman','Mohamed','aminabdirahman586@gmail.com','0725174554','37369177','Male','Islam ☪️','Nairobi','Wajir','No','1999-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D-','Diif secondary school','2019',15,1,'Online','[\"CDACC\"]','[]','[\"idcards\\/bWApfg2XTp4s5HJWFjMCshY11FUuo6NILB8TYaXv.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(223,'2025-07-05 12:56:46','2025-07-05 12:56:46','CL223/01/222/25',NULL,'Pauline','Vudembeke','Asena','paulineasena319@gmail.com','+254786789973','23131408','Female','Christian','Nandi','Iraq','No','1982-12-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0786789973',NULL,NULL,'Primary','8','Kapsoi','2000',4,1,'Online','[\"CDACC\"]','[\"passports\\/vBAYNlxIAdaNAxBjjoQnB65R8UNODYBqlzGOmPRC.jpg\",\"passports\\/Adbs3Z5XbnH9PYHsOMu43QbaI4XE2aZceEjwEl0x.jpg\"]','[\"idcards\\/Qr1neV3MdUkz1n5PRu0TiwZAjn9SstwCJM5dbciK.jpg\",\"idcards\\/M74CiQnsIVfpdIb15CgOfXL03GDlrBXcyWcTRMCI.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(224,'2025-07-05 12:56:54','2025-07-05 12:56:54','CL224/02/216/25',NULL,'ZAKARIA','ALI','SHEIKH','grandsonmursal@gmail.com','0706516334','37519872','Male','ISLAM','Nairobi',NULL,'No','2000-01-03','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(225,'2025-07-05 12:57:02','2025-07-05 12:57:02','CL225/01/224/25',NULL,'JOHN','MADERO','OKUDO','johnmadero651@gmail.com','0725780150','25347412','Male',NULL,'Nairobi',NULL,'No','1988-01-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(226,'2025-07-05 12:57:08','2025-07-05 12:57:08','CL226/01/226/25',NULL,'ROBERT','KARIUKI','KINUTHIA','robertkariuki87@outlook.com','0711180761','25954843','Male','Christian','Nairobi','KIAMBU','No','1987-11-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,'2001',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(227,'2025-07-05 12:57:17','2025-07-05 12:57:17','CL227/01/227/25',NULL,'Cheruiyot','N/A','Rotich','cheruiyotrotich3320@gmail.com','0722881730','24415152','Male',NULL,'Kericho',NULL,'No','1984-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(228,'2025-07-05 12:57:33','2025-07-05 12:57:33','CL228/01/223/25',NULL,'MILDRED','NDINDA','MUSILU','musilumildred@gmail.com','0710620580','30019163','Female','CHRISTIAN','Nairobi','NAIROBI','No','1992-06-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,15,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(229,'2025-07-05 12:57:38','2025-07-05 12:57:38','CL229/01/228/25',NULL,'ESTHER','NGONYO','DERRICK','DERRICKKAVITA04@GMAIL.COM','0711914025','29125972','Female','CHRISTIAN','Nairobi','NGONG','No','2002-07-17',NULL,NULL,'PATRICIA NDUKU',NULL,'0712735622',NULL,NULL,'DERRICK KAVITA','0706323404','DERRICKKAVITA04@GMAIL.COM','DERRICKKAVITA','0706323404',NULL,'HUSBAND','Primary','339','MUA HILLS JUNIOR ACADEMY','2016',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(230,'2025-07-05 12:57:42','2025-07-05 12:57:42','CL230/01/230/25',NULL,'Elisha','N/A','Mboya','elishajanabi254@gmail.com','0791863651',NULL,'Male',NULL,'Nairobi',NULL,'No','1996-10-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(231,'2025-07-05 12:57:45','2025-07-05 12:57:45','CL231/01/231/25',NULL,'JAYSON','N/A','OMBIMA','andreajason116@gmail.com','0714619565',NULL,'Male',NULL,'Nairobi',NULL,'No','2001-08-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(232,'2025-07-05 12:57:50','2025-07-05 12:57:50','CL232/01/229/25',NULL,'ERICK','ODHIAMBO','OKOTH','okotherick8@gmail.com','0721154719',NULL,'Male',NULL,'Nakuru',NULL,'No','1989-07-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,'2009',15,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(233,'2025-07-05 12:57:53','2025-07-05 12:57:53','CL233/01/232/25',NULL,'Kayian','N/A','Amos','tateamos49@gmail.com','0719819795','42882046','Male',NULL,'Kajiado',NULL,'No','2021-08-15',NULL,'Tate','Angela',NULL,'0713851847',NULL,NULL,NULL,NULL,NULL,'Amos','0719819795',NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[\"passports\\/szdYq3zraBn7N4PfRHis1h7X2qe5WUQflacCmGDw.jpg\",\"passports\\/7gOIBwEoiAgbcdbfoPgNoa5y6a7HxeonHSLyqjTj.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(234,'2025-07-05 12:57:57','2025-07-05 12:57:57','CL234/01/234/25',NULL,'NELLY','ADHIAMBO','OMONDI NELLY ADHIAMBO','adhiambonelly48@gmail.com','0714356814',NULL,'Female','CHRISTIAN','Nairobi','THIKA','No','2007-11-04',NULL,'OMONDI JAMES ONDIGO',NULL,'0722369416',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,'SOWENI SECONDARY SCHOOL',NULL,4,1,'On Site','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(235,'2025-07-05 12:58:12','2025-07-05 12:58:12','CL235/01/235/25',NULL,'Tsiamazi','Kinamugoli','Ebby','ebbnetebby706@gmail.com','0700013440','30461741','Female','Nairobi','Nairobi','Nairobi','No','1994-01-08',NULL,'David','Muhonja','0728648633','0719540392','nelsonagava924@gmail.com',NULL,'Nelson',NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[\"passports\\/lNjQo89AJu7EIoxnTqAL2Uou9DMlMCl3qJJ5FkBr.jpg\"]','[\"idcards\\/f67YwUrnSJGM1yNIQH8f8DqZQE4qqNcXFN2zld2o.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(236,'2025-07-05 12:58:25','2025-07-05 12:58:25','CL236/01/236/25',NULL,'Mbaika','Lilian','Ndile','lilianmikerosa@gmail.com','0706901493','34671414','Female','Christian','Nairobi','Nairobi','No','1997-12-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D plain','St Stephen musaalani','2016',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(237,'2025-07-05 12:58:46','2025-07-05 12:58:46','CL237/01/237/25',NULL,'BRIAN','OTIENO','MUSALIA','braxbrian830@gmail.com','0707533274','39036435','Male','CHRISTIAN','Kisumu',NULL,'No','2001-09-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JOHN MADERO OKUDO','0725780150','johnmadero651@gmail.com','JOHN MADERO OKUDO','0725780150',NULL,'GUARDIAN','Secondary','Dropped out in form 3 many years ago owing to financial constraints.','Barding Boys High School',NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','other',NULL,'Active'),
(238,'2025-07-05 12:59:16','2025-07-05 12:59:16','CL238/01/238/25',NULL,'Dorothy','Mukami','Munywoki','Mukamidorothy2@gmail.com','0710740397','33552415','Female','Christianity','Nairobi','Nairobi','No','1994-09-28',NULL,'Timothy munywoki','Faith munywoki','0728310656','0728879163',NULL,NULL,NULL,'0728879163',NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[\"passports\\/UBQmym6piTJ6ACl73FCHUbOhYuVgtZhsqPtZK2Zd.jpg\",\"passports\\/kT4GbqxBU5z9CeC4zjnomfHWcBb4k4IE2ZK08mc2.jpg\"]','[\"idcards\\/imYZxslbCygMwoH5HAjppDEvRMFM3mdNBO1ggZ0Y.pdf\"]','slips/IsPZRiD3KcLpFDPshNeJdRzgLnL6yNoBvCA3mwG2.jpg','KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(239,'2025-07-13 07:53:07','2025-07-13 07:53:07','CL239/01/239/25',NULL,'Maureen','Wanjiru','Nduta','dmaurhin02@gmail.com','0706112864','34301266','Female','Christian','Nairobi',NULL,'No','1997-06-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,'Eldoro girls high school','2015',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(240,'2025-07-13 07:53:17','2025-07-13 07:53:17','CL240/01/240/25',NULL,'ELBURS','EWOI','EKAI','elburzekai@gmail.com','0708596628',NULL,'Male',NULL,'Nairobi',NULL,'No','1998-06-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(241,'2025-07-23 05:11:23','2025-07-23 05:11:23','CL241/01/241/25',NULL,'ELIZABETH','NGINA','MUTISO','mutisoelizabeth15@gmail.com','0790820528','37336809','Female','CHRISTIAN','Makueni','MAKUENI','No','1999-06-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(242,'2025-07-25 13:26:15','2025-07-25 13:26:15','CL242/01/242/25',NULL,'PAULINE','YABESI','OCHIENG','paulineyabesi@gmail.com','0799645209',NULL,'Female','CHRISTIAN','Nairobi','NAIROBI','Yes','2007-03-24','SICKLE CELL ANEMIA','DANIEL OCHIENG ACHOLA','LEAH ATIENO OBARA','0721829098','0721954184','doachola@gmail.com','leahobara25@gmail.com','DANIEL OCHIENG ACHOLA','0721829098','doachola@gmail.com',NULL,NULL,NULL,NULL,'Primary','8','AGA KHAN PRIMARY SCHOOL','2021',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(243,'2025-07-31 04:07:41','2025-07-31 04:07:41','CL243/01/243/25',NULL,'Denis','N/A','Oduor','denisoduor@gmail.com','0727317390',NULL,'Male',NULL,'Nairobi',NULL,'No','1987-12-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(244,'2025-07-31 04:07:52','2025-07-31 04:07:52','CL244/01/244/25',NULL,'Moses','Maina','Irungu','mosesirungu515@gmail.comm','0721675417','27946337','Male',NULL,'Nairobi','Nairobi','No','1987-05-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Moses maina','0721675417',NULL,'Married','Primary','C','Gitweku primary','2004',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(245,'2025-08-11 04:28:15','2025-08-11 05:00:27','CL245/01/245/25',NULL,'THOMAS','N/A','PETER','thomaswambua107@gmail.com','0726956177',NULL,'Male','Christianity','Machakos','Machakos','No','1992-07-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary','CREDIT','St Paul\'s university','2024',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',249,'Active'),
(246,'2025-08-11 04:28:20','2025-08-11 04:28:20','CL246/01/246/25',NULL,'Joshua','Njane','Kuria','njanejoshua2@gmail.com','0110272060','37316191','Male',NULL,'Kiambu',NULL,'No','2000-04-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'On Site','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(247,'2025-08-30 01:59:30','2025-08-30 01:59:30','CL247/02/225/25',NULL,'Darian','Kipkoech','Langat','darian1610911@gmail.com','0724585678',NULL,'Male',NULL,'Nairobi',NULL,'No','2009-06-21',NULL,'Vincent langat',NULL,'0722115286',NULL,'langatvincent817@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(248,'2025-08-30 01:59:56','2025-08-30 01:59:56','CL248/01/247/25',NULL,'SAMWEL','OMONDI','OMOLLO','samwelomondi346@gmail.com','0705210376','30607492','Male','Christian','Nairobi','Nairobi','No','1994-06-05','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C-',NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(249,'2025-08-30 02:00:08','2025-08-30 02:00:08','CL249/07/210/25',NULL,'Jamila','N/A','Rashid','rashidjamila592@gmail.com','+25469240226',NULL,'Female','Islam','Nairobi','Eastleigh','No','2005-11-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,6,1,'Online','[\"KNEC\"]','[]','[]',NULL,'AS/A LEVEL','[]','father',NULL,'Active'),
(250,'2025-08-30 02:00:14','2025-08-30 02:00:14','CL250/01/249/25',NULL,'JOHNSON','OPONDO','OLIENG','oliengjohnny92@gmail.com','0729428432','38239988','Male','CHRISTIAN','Nairobi',NULL,'No','1998-11-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D+',NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(251,'2025-08-30 02:00:18','2025-08-30 02:00:18','CL251/01/251/25',NULL,'Lydiah','wanguu','Gathiru','lydiahwangui60@gmail.com','0117541820','524751557','Female','Chritian','Nairobi','Kiambu','No','2006-06-03',NULL,'Daniel Gathiru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(252,'2025-08-30 02:00:21','2025-08-30 02:00:21','CL252/01/233/25',NULL,'RAHMA','N/A','BASHIR','bashirrahma38@gmail.com','+254723615842','41600146','Female','MUSLIM','Tana River','BURA','No','2002-12-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,'2021',15,1,'Online','[\"NITA\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(253,'2025-08-30 02:00:25','2025-08-30 02:00:25','CL253/01/252/25',NULL,'PAMELAH','AKINYI','LUSALA','pamstaicy@gmail.com','0741383418','34859891','Female','Christian','Nairobi','Gratewall athi river','No','2025-02-11',NULL,'Anthony  mugala lusala','Leah aching onunga',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary','263','Kakamega  township','2011',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(254,'2025-08-30 02:00:28','2025-08-30 02:00:28','CL254/01/254/25',NULL,'Bonface','Mwangi','Wambui','bonfacewambui2@gmail.com','0715435309','28349382','Male','Christian','Nairobi','Umoja3','No','1990-05-25','No','William muchiri kihara','Naomi Wambui Gichure',NULL,'0720237996',NULL,NULL,'Esther mwihaki','0704060169',NULL,NULL,NULL,NULL,NULL,'Primary','D+','Pangani primary school','2008',4,1,'Online','[\"KNEC\"]','[]','[\"idcards\\/gBV46yZyB69iZ3FOXYsG4nbHZc8V5uiKbqflZqGD.jpg\",\"idcards\\/gjnmEVGu9D0rIRaoFYirJeYAFEaNvRx8rh5mUAyQ.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(255,'2025-09-01 03:07:14','2025-09-01 03:07:14','CL255/01/255/25',NULL,'Calvin','N/A','Atsiaya','michaelpaisly@gmail.com','0731773235','33185867','Male','Eldoret','Uasin Gishu','Eldoret','No','1995-01-14',NULL,'Atsiaya',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary','B+','Blossom education','2009',4,1,'Homeschooling','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(256,'2025-09-03 04:52:25','2025-09-03 04:52:25','CL256/01/256/25',NULL,'Rodgers','Cedrick','Echakan','rodgerscedrick@gmail.com','0799016663','20302750','Male',NULL,'Nairobi','Utawala','No','2002-12-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary','241','Makadara adult school',NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(257,'2025-09-03 04:52:38','2025-09-03 04:52:38','CL257/01/257/25',NULL,'NELLY','N/A','CHEPKEMBOI','mumdarmian89@gmail.com','0110544117','37476961','Female','CHRISTIAN','Nairobi','SAUDI ARABIA','No','1999-11-28',NULL,'DAVID KIBET TARUS','JOSEPHINE KAHENAI',NULL,NULL,NULL,NULL,'DAVID KIBET TARUS',NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,'GREAT CORNER HIGH SCHOOL',NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(258,'2025-09-03 04:52:46','2025-09-03 04:52:46','CL258/01/258/25',NULL,'Brian','Ekai','Loduk','lodukbrian874@gmail.com','0115228218','40575560','Male','Christian','Nairobi','Lodwar','No','2002-03-19','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(259,'2025-09-04 00:14:00','2025-09-04 00:14:00','CL259/01/259/25',NULL,'YOHANINA','JACINTA AOKO','NETO','yohaninaaoko@gmail.com','+254 717 097301','27487773','Female','Christian','Nairobi',NULL,'No','1989-03-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,'2005',4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(260,'2025-09-13 01:49:56','2025-09-13 01:49:56','CL260/01/260/25',NULL,'William','Odino','Otieno','williamodino@gmail.com','0714344863','28600069','Male','Christian','Nairobi','Kayole','No','1989-03-28','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[\"passports\\/6maCH3MGpf8HtxWYoWa0n6HyPiIbRAge92r46sOq.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(261,'2025-09-13 01:50:22','2025-09-13 01:50:22','CL261/01/261/25',NULL,'GETRUDE','NZISA','NGALA','gertrudecharlie@gmail.com','0715975688','39745485','Female','Christian','Makueni',NULL,'No','2000-10-30',NULL,'CHARLES NGALA KITHOME','JACINTA KATUKI MATITA','0721461517','0728241799',NULL,NULL,'Jacinta katuki matuta','0728241799',NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,'2014',4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','mother',NULL,'Active'),
(262,'2025-09-13 01:50:23','2025-09-13 01:50:23','CL262/01/262/25',NULL,'Thomas','Kiptonui','Ochieng','thomasochieng994@gmail.com','+254793743713','29844898','Male','Christian','Nakuru','Nakuru','No','1993-05-05',NULL,'David Ochieng','Eunfreda Ochiengl gym',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tertiary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(263,'2025-09-16 05:23:18','2025-09-16 05:23:18','CL263/01/263/25',NULL,'CAROLINE','JEMUTAI','CHELIMO','chelimocaroo@gmail.com','0721856022','21880884','Female','CHRISTIAN','Nairobi','DAGORETTI CORNER','No','1978-11-12',NULL,'DECEASED','DINAH JEPKEMOI TALLAM',NULL,'0718102640',NULL,NULL,'IMMACULATE KIPLIMO','0716587900',NULL,NULL,NULL,NULL,NULL,'Primary',NULL,'KABORE PRIMARY','1995',4,1,'Part Time','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(264,'2025-09-16 05:23:34','2025-09-16 05:23:34','CL264/01/264/25',NULL,'JACKLINE','AUMA','ODHIAMBO','jacklineauma586@gmail.com','0710320864',NULL,'Female',NULL,'Nairobi',NULL,'No','1994-10-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(265,'2025-09-16 05:23:42','2025-09-16 05:23:42','CL265/07/250/25',NULL,'Lorenzo','Nguku','Mwaura','lorenzomwaura04@gmail.com','0758368031','32837270','Male','Nairobi','Nairobi','Nairobi','No','1995-12-13',NULL,NULL,'Anne Wanjiku Mwaura',NULL,'0724286792',NULL,'nguku13995@yahoo.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','C',NULL,'2013',6,1,'Part Time','[\"KNEC\"]','[\"passports\\/4aP9VKY97JgLwDIqX8HRz6NI6K91lUuERuDVyGvp.jpg\"]','[\"idcards\\/HgR7aDgZTQpX7PwCh8WDwkdXReCV4iIc4NR8grAX.jpg\",\"idcards\\/As6H0XAXh01pAU8xr19HktbufDRUvgc6XfLHZanX.jpg\"]','slips/cnHrOYN0wRoKgZ7flUvrW282co5huKMhWf1X1bdj.jpg','AS/A LEVEL','[]','self',NULL,'Active'),
(266,'2025-09-25 07:41:43','2025-09-25 07:41:43','CL266/01/265/25',NULL,'Ramadhan','Salim','Ngowa','ngowameraki@gmail.com','0713563923','28056214','Male','Muslim','Kwale','Nairobi','No','1990-12-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Shahasi Juma Kea','0713563923','shahasikea@gmail.com',NULL,NULL,NULL,NULL,'Primary',NULL,'Likoni Primary School','2008',4,1,'Online','[\"KNEC\"]','[\"passports\\/PYtHUkbScrGIyMEpUnDzL3Mt85fxYwbjrmqjUrEl.jpg\"]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(267,'2025-09-25 07:41:52','2025-09-25 07:41:52','CL267/01/267/25',NULL,'Tilen','Ochieng','Otieno','tilenotieno@gmail.com','0794570963','33892180','Male','Christian','Nairobi','Nairobi','No','1996-12-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Homeschooling','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(268,'2025-09-25 07:41:59','2025-09-25 07:41:59','CL268/01/268/25',NULL,'Stephen','Kyalo','Ndunge','ndungestephen@gmail.com','0702343106','33289110','Male','Christian','Nairobi','Nairobi','No','1994-02-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(269,'2025-09-25 07:42:07','2025-09-25 07:42:07','CL269/01/269/25',NULL,'Lisper','Wambui','Muthoni','wambuilisper91@gmail.com','0113819495','40227775','Female','Christian','Nairobi','Kasarani','No','2002-01-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0113819495',NULL,NULL,'Secondary','D',NULL,'2021',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(270,'2025-10-01 06:22:20','2025-10-01 06:22:20','CL270/01/270/25',NULL,'Angela','N/A','Mutua','mutuaangela20@gmail.com','0745617262',NULL,'Female',NULL,'Nairobi',NULL,'No','1999-03-20',NULL,'Justus Mutua','Mary Nduku','0718481855','0745617262',NULL,NULL,'Julius','0792381972',NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Part Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(271,'2025-10-01 06:22:23','2025-10-01 06:22:23','CL271/01/271/25',NULL,'Fred','Onchuru','Ayaga','fredayaga1@gmail.com','0799011578',NULL,'Male',NULL,'Kisii','Kwale','No','2004-02-06',NULL,'Onchuru','Esna','0743041361','0768572308',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(272,'2025-10-01 06:22:42','2025-10-01 06:22:42','CL272/01/272/25',NULL,'Zedekia','Okumu','Mudondo','okumuzedekia89@gmail.com','0700385629','29687114','Male',NULL,'Nairobi','Nairobi','No','1989-05-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(273,'2025-10-01 06:22:49','2025-10-01 06:22:49','CL273/01/273/25',NULL,'VINCENT','KPROTICH','MUTAI','kiprotichmutz@gmail.com','0768782372','34248585','Male','Kalenjin','Bomet','Tenwek','No','1997-01-17',NULL,'Samuel Ronoh',NULL,'0724886143',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[\"passports\\/TxTO2Rg2jgpexkcsb8tR0NDv164Ge2r9EdRa502N.jpg\"]','[\"idcards\\/7VbTFF7bs8fJ8wTc55V8aPNbkyfXRP1HQ3utwvLp.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(274,'2025-10-01 06:22:55','2025-10-01 06:22:55','CL274/01/274/25',NULL,'Caroline','N/A','Kemboi','kemboicaroline21@gmail.com','0703711268',NULL,'Female',NULL,'Nairobi',NULL,'No','1994-04-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(275,'2025-10-01 06:23:05','2025-10-01 06:23:05','CL275/01/275/25',NULL,'EMMANUEL','KIPLAGAT','KOILEGE','koilegemmanuel@gmail.com','0720023758','41086084','Male','CHRISTIAN','Nairobi','KITALE','No','1987-09-26',NULL,'DECEASED','DECEASED',NULL,NULL,NULL,NULL,'LEONARD KOILEGE','0721688552',NULL,NULL,NULL,NULL,NULL,'Secondary','FORM 3','ST.IGNATIUS HIGH SCHOOL KITALE','2004',4,1,'Online','[\"KNEC\"]','[\"passports\\/bilyFgV2E3WVViJpfgnzWLsTrOG9URfU6M4LOVXu.png\"]','[\"idcards\\/2kYThevivSdiKolHX6JQvEyUq5s3zZ35pUtKzjzZ.jpg\",\"idcards\\/zEa2yqSGHhauciDaQPEbWymSxk31FWLd0S1Qj4Mp.jpg\"]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(276,'2025-10-01 06:23:17','2025-10-01 06:23:17','CL276/01/253/25',NULL,'MAURICE','RUWA','MWERO','mauricemwero86@gmail.com','0702045340',NULL,'Male',NULL,'Nairobi',NULL,'No','1988-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,15,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(277,'2025-10-01 06:23:27','2025-10-01 06:23:27','CL277/01/276/25',NULL,'DAPHINE','N/A','CHEPKOECH','daphkoech0@gmail.com','0715392380','27321225','Female','Christian','Bomet',NULL,'No','1988-12-20','N/a','DAVID KIPRONO CHERUIYOT','Anna cheruiyit','0713453668','0721326278',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(278,'2025-10-01 06:23:40','2025-10-01 06:23:40','CL278/01/278/25',NULL,'OLIVER','WAFULA','SIMIYU','wafulaoliver4@gmail.com','0700564647','31718358','Male','CHRISTIAN','Kakamega','KAKAMEGA','No','1994-06-05','N/A','MARTIN SIMIYU NAMUKOSI','EMILY KUNDU','0716868177','0714242890',NULL,NULL,'EMILY KUNDU',NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(279,'2025-10-27 11:23:38','2025-10-27 11:23:38','CL279/01/279/25',NULL,'Patricia','Nduku','Mutua','ndukupatricia300@gmail.com','0715373434','36613674','Female','Christian','Nairobi','Embakasi','No','1998-10-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(280,'2025-10-27 11:24:01','2025-10-27 11:24:01','CL280/02/248/25',NULL,'ABDIKADIR','ADDOW','ALI','shankare666@gmail.com','0795950405',NULL,'Male',NULL,'Nairobi','KAJIADO','No','1998-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,7,1,'Online','[\"CDACC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(281,'2025-10-27 11:24:13','2025-10-27 11:24:13','CL281/01/280/25',NULL,'MARY','WAMBAIRE','WANGUI','marywambaire117@gmail.com','0795295206','32635909','Female','CHRISTIAN','Nairobi','NYERI','No','1995-05-05',NULL,NULL,'Damaris wangui',NULL,'0725926539',NULL,NULL,'Joseph','0715795368','jnderitu15@yahoo.com',NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(282,'2025-10-27 11:24:26','2025-10-27 11:24:26','CL282/01/282/25',NULL,'ELIAS','N/A','ODHIAMBO','ellyjuma38@gmail.com','0704292718',NULL,'Male',NULL,'Nairobi',NULL,'No','1996-10-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active'),
(283,'2025-11-07 12:29:43','2025-11-07 12:29:43','CL283/02/281/25',NULL,'JAMES','BETHUEL','OYOH','bethueljames30@gmail.com','0748219044','39256809','Male',NULL,'Nairobi',NULL,'No','2002-01-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JAMES BETHUEL OYOH','0748219044',NULL,NULL,'Secondary',NULL,NULL,'5',7,1,'Online','[\"KNEC\"]','[]','[]',NULL,'IGCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(284,'2025-11-07 12:30:08','2025-11-07 12:30:08','CL284/01/283/25',NULL,'Anthony','Kithi','Yaa','yaaanthony@gmail.com','0707009326',NULL,'Male','Christian','Mombasa',NULL,'No','1989-11-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary','D+',NULL,'2024',4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(285,'2025-11-07 12:30:27','2025-11-07 12:30:27','CL285/01/285/25',NULL,'Cecilia','N/A','Kingo’ri','kingoricecilia52@gmail.com','0700034276',NULL,'Female',NULL,'Nairobi',NULL,'No','1997-10-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Full Time','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(286,'2025-11-11 08:52:49','2025-11-11 08:52:49','CL286/01/286/25',NULL,'Esther','Mukwana','Esther Wanyama','wanyamaesther1993@hmail.com','0704827861','29682341','Female','Christian','Nairobi','Roysambu','No','2025-11-09',NULL,'Morris wanyama','Priscilla nafuna','0721824398','0714256872','Morriswanyam543@gmail.com','NafunaPriscilla342@gmail.com','Sara  nanyama','0722230082','nanyamasalaria245@gmail.com','Esther Wanyama','0704827861',NULL,'Self','Primary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(287,'2025-11-11 08:53:02','2025-11-11 08:53:02','CL287/01/287/25',NULL,'WYCLIFFE','N/A','MAMRA','wycliffemamra@gmail.com','0729576282','34627589','Male','Nyanza','Siaya',NULL,'No','1996-12-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(288,'2025-11-11 08:53:15','2025-11-11 08:53:15','CL288/01/288/25',NULL,'Peris','Wambui','Ngugi','perisngugi184@gmail.com','+966535309457....0726657041',NULL,'Female',NULL,'Nairobi',NULL,'No','1990-04-12',NULL,NULL,'Emily wairimu',NULL,'0716174119',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Secondary',NULL,NULL,NULL,4,1,'Online','[\"KNEC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(289,'2025-11-11 08:53:22','2025-11-11 08:53:22','CL289/01/289/25',NULL,'Mwangi','N/A','Moses','mwangimoses778@gmail.com','0746057908',NULL,'Male',NULL,'Laikipia',NULL,'No','1996-07-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','self',NULL,'Active'),
(290,'2025-11-15 14:34:51','2025-11-15 14:34:51','CL290/01/290/25',NULL,'Maloba','Atieno','Mouvine','amosorembo4@gmail.com','0715375174','33480130','Female','Christian','Busia','Mumias','No','1994-07-10',NULL,'Amos Orembo',NULL,'0715375174',NULL,'amosorembo4@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Primary',NULL,NULL,NULL,4,1,'Online','[\"CDACC\"]','[]','[]',NULL,'KCSE PRIVATE CANDIDATES','[]','father',NULL,'Active');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_modes`
--

DROP TABLE IF EXISTS `study_modes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_modes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_modes`
--

LOCK TABLES `study_modes` WRITE;
/*!40000 ALTER TABLE `study_modes` DISABLE KEYS */;
INSERT INTO `study_modes` (`id`, `name`, `created_at`, `updated_at`) VALUES (1,'Online','2024-05-30 14:12:49','2024-05-30 14:12:49'),
(2,'Part Time','2024-05-30 14:13:04','2024-05-30 14:13:04'),
(3,'Full Time','2024-05-30 14:13:19','2024-05-30 14:13:19'),
(4,'On Site','2024-05-30 14:13:33','2024-05-30 14:13:33'),
(5,'Homeschooling','2024-05-31 00:58:22','2024-05-31 00:58:22');
/*!40000 ALTER TABLE `study_modes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `submissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assignment_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `revisions` bigint(20) NOT NULL DEFAULT 0,
  `notes` longtext DEFAULT NULL,
  `attachments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachments`)),
  PRIMARY KEY (`id`),
  KEY `submissions_assignment_id_foreign` (`assignment_id`),
  KEY `submissions_user_id_foreign` (`user_id`),
  KEY `submissions_course_id_foreign` (`course_id`),
  KEY `submissions_student_id_foreign` (`student_id`),
  CONSTRAINT `submissions_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`),
  CONSTRAINT `submissions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `submissions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `submissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `course` bigint(20) NOT NULL,
  `department` bigint(20) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `classId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` (`id`, `created_at`, `updated_at`, `name`, `course`, `department`, `gender`, `phone`, `email`, `address`, `image`, `userId`, `classId`) VALUES (1,'2024-05-26 10:26:38','2024-05-26 10:26:38','Brian Omondi',1,5,NULL,'0748250339','janpaxltd@gmail.com',NULL,'tasks/sCjTrIaQjwXuzZIvb0uOBKJD9iBtyTR8tqiAy2K4.jpg',2,NULL),
(2,'2024-07-09 08:36:03','2024-07-09 08:36:03','FELIX OTIENO NGIGE',4,1,NULL,'0725449122','felixngigeh@gmail.com',NULL,'tasks/8fGwt9Azgr2oMFIk95gBqbGo8NCH6hp5wuHr1Xx7.jpg',3,NULL),
(3,'2024-08-22 08:57:15','2024-08-22 08:57:15','CLEVERS',4,1,NULL,'0725449122','cleversschool@gmail.com',NULL,'tasks/fGg4panCPNCkOKBtCesxvonV6intSlCPbrmKsiJW.jpg',29,NULL),
(4,'2024-08-22 08:57:55','2024-08-22 08:57:55','CLEVERS',4,1,NULL,'0725449122','cleversdreams@gmail.com',NULL,'tasks/rJ3QtnbUzOWGkpna6thX24pSQJJmlVuEY5zkA3sS.jpg',30,NULL);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `avatar` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_marks`
--

DROP TABLE IF EXISTS `unit_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_marks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unit_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `semester_id` bigint(20) unsigned NOT NULL,
  `cat1` double DEFAULT NULL,
  `cat2` double DEFAULT NULL,
  `exams` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_marks_unit_id_foreign` (`unit_id`),
  KEY `unit_marks_student_id_foreign` (`student_id`),
  KEY `unit_marks_semester_id_foreign` (`semester_id`),
  KEY `unit_marks_course_id_foreign` (`course_id`),
  CONSTRAINT `unit_marks_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `unit_marks_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `unit_marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `unit_marks_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_marks`
--

LOCK TABLES `unit_marks` WRITE;
/*!40000 ALTER TABLE `unit_marks` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_registrations`
--

DROP TABLE IF EXISTS `unit_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_registrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unit_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `semester_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`),
  KEY `unit_registrations_unit_id_foreign` (`unit_id`),
  KEY `unit_registrations_course_id_foreign` (`course_id`),
  KEY `unit_registrations_student_id_foreign` (`student_id`),
  KEY `unit_registrations_semester_id_foreign` (`semester_id`),
  CONSTRAINT `unit_registrations_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `unit_registrations_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  CONSTRAINT `unit_registrations_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `unit_registrations_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_registrations`
--

LOCK TABLES `unit_registrations` WRITE;
/*!40000 ALTER TABLE `unit_registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `icon` longtext DEFAULT NULL,
  `cat1` double DEFAULT NULL,
  `cat2` double DEFAULT NULL,
  `exams` double DEFAULT NULL,
  `teacher_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `units_course_id_index` (`course_id`),
  KEY `units_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `units_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `units_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` (`id`, `created_at`, `updated_at`, `name`, `course_id`, `department_id`, `icon`, `cat1`, `cat2`, `exams`, `teacher_id`) VALUES (1,'2024-08-22 09:00:37','2024-08-22 09:00:37','Math',2,5,NULL,20,50,70,2),
(2,'2024-08-22 09:02:15','2024-08-22 09:02:15','ENGLISH',2,5,NULL,50,30,80,2);
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1,'Brian Super Admin','brianomondi605@gmail.com',NULL,'$2y$12$6PIK4U41V4ALiLTIYOIY9O0oP71TpWwFv5CHEpGz4PzHDrXTqJ6wi','vcQgSw1VFUxXdgxqQOpvpRSXRUVp0Xa6AJGMVUCq6N9S9xNepbC9nxz0qQDR','2024-05-18 10:18:26','2024-05-18 10:18:26'),
(2,'Brian Omondi','janpaxltd@gmail.com',NULL,'$2y$12$RXOiObZJ95soruMItZqIle.gA51cctR/4jqWEv/a7WzixWcqLJ0RG',NULL,'2024-05-26 10:26:38','2024-05-26 10:26:38'),
(3,'FELIX OTIENO NGIGE','felixngigeh@gmail.com',NULL,'$2y$12$qRH9cedhCdpF98bbhUUB0.4Tc9MJtiYjlhW9ug/Ios6etTksE2iPG','E7cWxZ1xTBFtLrEyMH8q8hBVdjqJKpv6lgbpfVpyIpWLboIoJHiRoe5SBKn2','2024-06-07 18:28:50','2024-08-16 00:50:38'),
(4,'ELIZABETH AKOTH OUMA','lizabethouma@gmail.com',NULL,'$2y$12$7wM12Frno6RgLhnJi9Eki.gZa..J4U1w2MgetaR.Xn5OwyJVeV2ly',NULL,'2024-07-01 17:32:20','2024-08-16 00:50:15'),
(5,'JACOB EKUTAN ETHERI','ejekuttan@gmail.com',NULL,'$2y$12$ACthEcYQgddvnOTMAhiBqeaUH9yR16LYs/72Pgp69AlziETT3TGf6',NULL,'2024-07-02 16:30:43','2024-07-02 16:30:43'),
(6,'Meshack Kavoi Mutuku','meshackkavoi@gmail.com',NULL,'$2y$12$YuONAHdVGQSGdpGLMGcm6.rSdS4gzZ9CJuayp7AJt7ggu.VeQyt8W',NULL,'2024-07-08 07:18:08','2024-07-08 07:18:08'),
(7,'JOY WAKESHO BUNYASI','wakeshojoy22@gmail.com',NULL,'$2y$12$iDE/sio.sw6tBwOZYaWY9OgsIH/Bi3E8rv001HOwnJp4ybotSTGee',NULL,'2024-07-08 07:28:38','2024-07-08 07:28:38'),
(8,'Antony Maurice Kuloba','antonymaurice16@gmail.com',NULL,'$2y$12$r0m9fH6fb.UR7iXdb0f1Hu6MlYFp4Bz8bM2dk18gabq30Rbcpg7A6',NULL,'2024-07-08 07:30:09','2024-07-08 07:30:09'),
(9,'Brian Siocha Maina','siocha254@gmail.com',NULL,'$2y$12$ZwTfiiprSEcaWwEooeaUae2/qFwqEXlbCmub7CW0bAd11V0clGjzq',NULL,'2024-07-11 04:11:59','2024-07-11 04:11:59'),
(10,'MAXWEL TEMO CHEPKERES','maxkip614@gmail.com',NULL,'$2y$12$MhB86ZLa53HZQFxqIKjzjOWODPHXI1M8FpNogCjxtwLFYo1gzeKeS',NULL,'2024-07-11 04:12:04','2024-07-11 04:12:04'),
(11,'IRINE ADHIAMBO NYANGOYA','renenyangoya@gmail.com',NULL,'$2y$12$uFLbvizBheUYygj5GyUDYOsy/r1I14JwKl4f3Vby5aUzPf40xUQOG',NULL,'2024-07-11 04:12:09','2024-07-11 04:12:09'),
(12,'EUSTINAH ZAWADI MUIA','muiazawadi@gmail.com',NULL,'$2y$12$ktvTqDE/kDOdFXWf7ocsHutJFqgSgs5JAWjNWKIhlxnmGtu8pU6A6',NULL,'2024-07-18 07:26:50','2024-07-18 07:26:50'),
(13,'Lawrence Ooko Onyango','lawrencerian4@gmail.com',NULL,'$2y$12$hArt6wVbA98fMDAVbLK3VOiYjV8an9LIqgAisdFIObPivs27wJ50G',NULL,'2024-07-18 07:26:53','2024-07-18 07:26:53'),
(14,'Irene N/A Tom','Irenetom100@gmail.com',NULL,'$2y$12$qE392cN3o3HO8MWdXa1lo.kgDMSQVAB4Ed8RAoDB9TENYRjoLg57K',NULL,'2024-07-26 11:54:02','2024-07-26 11:54:02'),
(15,'Keith N/A Ambenge','coolvlogs3@gmail.com',NULL,'$2y$12$WtC5j1bbQs7tDtn9gIYM8u2J3BIsRQAK0T5UFMj8xxYP9ed5IB/ie',NULL,'2024-07-27 10:08:44','2024-07-27 10:08:44'),
(16,'Chénelle Linda Maruti','lindamaruti@gmail.com',NULL,'$2y$12$59G0iTGEa5INAf30NS5OEuxLwTOEtxs84c2mW7TsDzbdEd7QEGn9S',NULL,'2024-08-06 06:58:50','2024-08-06 06:58:50'),
(17,'DORCAS N/A ODHIAMBO','dorcusachieng97@gmail.com',NULL,'$2y$12$Up/TuXPk4lsnGgKdjOBiZulfb4aWyhCTnlTzJq3q6JH0Hzi6JdpqC',NULL,'2024-08-08 01:28:47','2024-08-08 01:28:47'),
(18,'Whitney N/A Osoro','whitneymogetutu@gmail.com',NULL,'$2y$12$7PN7mOsEGP8IR5GH/ywXv.m8p6QDfUjbF.agRRwK2YKrdBa0viw2m',NULL,'2024-08-08 01:28:53','2024-08-08 01:28:53'),
(19,'Maggie N/A Wagio','maggiewmwangi@gmail.com',NULL,'$2y$12$T6LbH2VwqaK9hhjekuZ6pO9L99xIYg9k/ymLxLCF5zhS7DJ5oKhAG',NULL,'2024-08-08 01:29:00','2024-08-08 01:29:00'),
(20,'Joyanna Israela Neema','israelajoyanna@gmail.com',NULL,'$2y$12$FfbPVpn7zIZSNghi7YYEDuSN/V7EwQacw7YAEPt0uFqGxtbr4gyPG',NULL,'2024-08-09 11:31:59','2024-08-09 11:31:59'),
(21,'Enrique N/A Amon','enriqueamongaming@gmail.com',NULL,'$2y$12$uE10og8nrac8NcE8aKv3VupAQ.mF1IOJbdfIVxPhkoJ3wb02uKAIa',NULL,'2024-08-09 11:32:02','2024-08-09 11:32:02'),
(22,'SHARON AWINO KENNEDY','sharonkondigo99@gmail.com',NULL,'$2y$12$YdKCLJmfXDKU7F8Zww250u1NLBxrNf.qAoRTCbOd6hjlNEgdyBf.O',NULL,'2024-08-09 11:32:06','2024-08-09 11:32:06'),
(23,'NICHOLAS MUNENE MWANIKI','nichmunene52@gmail.com',NULL,'$2y$12$Po76Vvvcy2TwUfKpPFVFqud/q2d8iUKaB4nVn1Jgu2V3mFnJTO8HC',NULL,'2024-08-16 00:49:01','2024-08-16 00:49:01'),
(24,'Elsa Wanjiku Maina','karanjalewis254@gmail.com',NULL,'$2y$12$VZTG7sqzM0YXZaMf7nluSe7PgYHqzd3tRCUjjOxFG1LWVKbNh/oyq',NULL,'2024-08-16 00:49:07','2024-08-16 00:49:07'),
(25,'JOLYNE N/A OTIENO','atienojolyne1@gmail.com',NULL,'$2y$12$v1jyFvcb10b74yKRTcfjXuadqVQ.v1PrgsCZ4qMzb6eVi028Reuam',NULL,'2024-08-16 00:49:11','2024-08-16 00:49:11'),
(26,'Mary Njoki Nduta','ndutanjoki65@gmail.com',NULL,'$2y$12$1OprMFjVi4UEnjt8wqU/e.FmXjTEtYaoHCymkJY.oYH8lkVc7XdL2',NULL,'2024-08-17 15:06:41','2024-08-17 15:06:41'),
(27,'WANJA NJAGI MERCY','mecrynjagi@gmail.com',NULL,'$2y$12$kpsxJz80GOyY/uk64deau.wzde0ARlC3cLJeHQcc3bm90lfeLn4.S',NULL,'2024-08-17 15:06:45','2024-08-17 15:06:45'),
(28,'DAMARIS N/A LlBESE','damarislibese@gmail.com',NULL,'$2y$12$jNG/cRS9jZpTVF.g9/L6C.L6D0DhcclNPKefcntemncDcgKvd5lMC',NULL,'2024-08-22 08:50:50','2024-08-22 08:50:50'),
(29,'CLEVERS','cleversschool@gmail.com',NULL,'$2y$12$VQq0pHE/EPdryv0maIEvR.Nnvz.xkoMwuai.JCZrSLGr9xONrGfzi',NULL,'2024-08-22 08:57:15','2024-08-22 08:57:15'),
(30,'CLEVERS','cleversdreams@gmail.com',NULL,'$2y$12$GF1l7v8A0.8ETVP36WMzr.dBAV8y6F1nwSVAVPLx7oXqZUxnUvnNm',NULL,'2024-08-22 08:57:55','2024-08-22 08:57:55'),
(31,'SHUKRI ALIO ADEN','shukrialio456@gmail.com',NULL,'$2y$12$kyY/mj3EohXuFgKRYZrb4.dfP0kfZq.17PFGRyAZle.bqs7ZleKvO',NULL,'2024-08-22 10:37:34','2024-08-22 10:37:34'),
(32,'Joan Jeruto Chebotibin','Joan57300@gmail.com',NULL,'$2y$12$AgzC5GVyQ3cAD3XzqdeSTOfC4sSntm8SIQWNgNNNj/qHI6f1wBBxC',NULL,'2024-08-22 10:37:38','2024-08-22 10:37:38'),
(33,'Winfred Wanjiku kamunge','winfredwanjiku389@gmail.com',NULL,'$2y$12$5EnAdDgEQdtJ7oKP88Ho8eBM1zvV1yOMtGrSEa12fgujfbvW5ZRqO',NULL,'2024-08-27 05:59:52','2024-08-27 05:59:52'),
(34,'Elius Odunga Ouma','eliusouma535@gmail.com',NULL,'$2y$12$KiDMynwyvqqXuIdPHOsduO6X0R3aHZ8.A5C0qTX34TFeCkSCzqYDy',NULL,'2024-09-11 08:06:57','2024-09-11 08:06:57'),
(35,'Rahimston Omondi Owuor','rahimstono@gmail.com',NULL,'$2y$12$jSsJ7075jPT1OEACrzV2ZOvSKorpU1CpFZ6guVLPRimpJHK58C5/u',NULL,'2024-09-11 08:07:00','2024-09-11 08:07:00'),
(36,'VINCENT N/A MUNJE','munjevincent@gmail.com',NULL,'$2y$12$MkMt9qhu3JxWmJF5dHtX3u2V05xxCn.KcWAFHVerdtDoEW99dMqOO',NULL,'2024-09-11 08:07:00','2024-09-11 08:07:00'),
(37,'BINTO FATUMA MOHAMED N/A SHARIFF','shariffatma3@gmail.com',NULL,'$2y$12$spJrS5otGnsy5oSMEz/FLupWuFgHwkISgYf8150RSdw9bV9yWqDcO',NULL,'2024-09-11 08:07:01','2024-09-11 08:07:01'),
(38,'Brian N/A Midiwo','brianbom74@gmail.com',NULL,'$2y$12$nk60Om2Wba6b0r/1McGGk.tFawMbi60sLzywpfV9dhF4KWq.TUvrK',NULL,'2024-09-11 08:07:02','2024-09-11 08:07:02'),
(39,'Felix Otieno Ochieng','ochiengfelixnela@gmail.com',NULL,'$2y$12$UFEk7h3rg.I0xS2qek6VtufVa3STqGlxrdd3RFxZ8VZAKKlWVfk2.',NULL,'2024-09-11 08:07:03','2024-09-11 08:07:03'),
(40,'Fletcher N/A Jeremiah','fletcherjeremiah975@gmail.com',NULL,'$2y$12$317R9fOLbQZcYd6CHgqyvuX0zUYtLMK1TI7fuqtMLlfcum6yjn2Xe',NULL,'2024-09-11 08:07:03','2024-09-11 08:07:03'),
(41,'JAMES Lomwae Epukon','jamesepukon@gmail.com',NULL,'$2y$12$.xHH9pI3nr4/b1z50eSte.fEiZ2AipZwqCDaeK5AIPu6g7do8HhRC',NULL,'2024-09-14 18:02:49','2024-09-14 18:02:49'),
(42,'KENNEDY KWOBA WASIEKA','wasiekaken@gmail.com',NULL,'$2y$12$BoD/x.s5OLtLnz2gQL.8aeHEvfb.sMCG3UoMmd6jRiPcGKQwd50Ce',NULL,'2024-09-14 18:02:55','2024-09-14 18:02:55'),
(43,'Nebster N/A Kiplangat','kiplangatnebster22@gmail.com',NULL,'$2y$12$8j6/byGKFQDg6C6X023G..QOkwB32ujfcNOVsOoto.rbBOdP6hSl6',NULL,'2024-09-14 18:03:01','2024-09-14 18:03:01'),
(44,'Tabitha nyokabi ndungu','Tabithanyokabi6@gmail.com',NULL,'$2y$12$0DRMz8FfxTxomvmJ1.2Xc.mRojMNdHvgi.25hgzIqJu3.SlV6kgli',NULL,'2024-09-14 18:03:06','2024-09-14 18:03:06'),
(45,'Alfred Junior Odhiambo','alfredjunior388@gmail.com',NULL,'$2y$12$Lev9ve73l5kLQeKxoKUovOa.UN.Onxo7ZhdNg4.Ui.1p3dqbZidA2',NULL,'2024-09-17 16:11:31','2024-09-17 16:11:31'),
(46,'Elmon Wanjala Ndunya','elmonwanjala@gmail.com',NULL,'$2y$12$z.dXpWyoHIgfMXa.qOQq/OkLC07.e0J4Gl1VJ3wD0HFvSk23YMJ4G',NULL,'2024-09-17 16:11:34','2024-09-17 16:11:34'),
(47,'FRIDAH KEMUNTO OKARI','fridahkem24@gmail.com',NULL,'$2y$12$e7KpEF9gMOBCIDlHTflCKOiqUqc/YOQZx6OS4T/HQEqhbc.osqBMe',NULL,'2024-09-29 23:34:14','2024-09-29 23:34:14'),
(48,'WYCLIFFE N/A KIRUI','baloverbagrandstar47@gmail.com',NULL,'$2y$12$tDItiyvQWdkklYqZGHd9xeW0ICvVkmRME8FBbC9bldORaGLg0aT/C',NULL,'2024-09-29 23:34:15','2024-09-29 23:34:15'),
(49,'Tamara Nyanjau Wambugu','teyiaraorganics@gmail.com',NULL,'$2y$12$TEu8/kM0s11drBdDmdrYz.g7UtkfTlhzALIYkjLKfeiXpHvKspSXm',NULL,'2024-09-29 23:34:15','2024-09-29 23:34:15'),
(50,'Abdullahi Mohamed Ahmed','ahusler.irs@gmail.com',NULL,'$2y$12$QQWHwn63OtIO2o9UdqCaeuPq7LQhHJrrjGx6ZpaT9VFFjdf.QLZ4a',NULL,'2024-09-29 23:34:16','2024-09-29 23:34:16'),
(51,'VICTOR N/A ONGOLI','ongolivictor@gmail.com',NULL,'$2y$12$NPYyFM6Tnm7ElVt390NaDuLL0BYuVIRnOEila6FZeI25MJ/rSW./C',NULL,'2024-09-29 23:34:17','2024-09-29 23:34:17'),
(52,'DANIEL MAJAK MANYIN MADUT','mdanielmajakmanyin@gmail.com',NULL,'$2y$12$aFXHGnznnaq1rG3P57CEJ.5.QuVav7sTX9OBj4bTgKMO.wzf3Y9Ua',NULL,'2024-09-29 23:34:18','2024-09-29 23:34:18'),
(53,'SUSAN AKOTH ONGORO','akothsusan626@gmail.com',NULL,'$2y$12$gTv.p7jRrJ0Wz.S9qEOgb.TQ9eSSJsnG2KwIVCCRxFRTGRzvwWVkO',NULL,'2024-09-29 23:34:22','2024-09-29 23:34:22'),
(54,'LINUS OCHIENG MULIRO','linusochieng71@gmail.com',NULL,'$2y$12$..eyR4v7VXlBezqvQ8F1yehfGaAquuR8Hx826Icq6CH8osmHi7c6y',NULL,'2024-09-29 23:34:23','2024-09-29 23:34:23'),
(55,'KOBAS NYANGOTA Kobas','Kobasnkobas@gmail.com',NULL,'$2y$12$/6zQ5NBgOm5BX2GOSS4DFeztCLcxt/tnTVYIw/abnf6eCsPNSTZpi',NULL,'2024-10-06 15:04:07','2024-10-06 15:04:07'),
(56,'Amina Haghasere Babuya','amishjuye@gmail.com',NULL,'$2y$12$pFsO44EXGQyby7HfCAnYDOV2ivHyrCL6goYN2fLj71MXCemwor98q',NULL,'2024-10-06 15:04:12','2024-10-06 15:04:12'),
(57,'Nathan N/A OMANGA NDJEKONDO','nathanomanga70@gmail.com',NULL,'$2y$12$tI1sJ2lbyP.xQNtCPa5/8erieNvbAZFMiq8prp9G5fFhnWM7hUcCi',NULL,'2024-10-06 15:04:13','2024-10-06 15:04:13'),
(58,'Ephraim Lokai Lojao','ephraimlokai@gmail.com',NULL,'$2y$12$RKZBmKT6eG1j50eqgLAjzugy8f5pSmXzkUIiKc63D1ddndlyZZCiW',NULL,'2024-10-06 15:04:14','2024-10-06 15:04:14'),
(59,'Hesbon Omenke Orondo','orondohesbon@gmail.com',NULL,'$2y$12$ixbgr46eyWblVNLAo42e0.Q2qh/bUKnSLu1sJ7drN6mY17orogRG6',NULL,'2024-10-06 15:04:15','2024-10-06 15:04:15'),
(60,'Janet Njoki Kuria','Janetkuria5@gmail.com',NULL,'$2y$12$qX1CQ/yrkXxkQ3XKbk5NLOq0wbOvPDTMmLZZ/d2YHAD62jX5CAfPW',NULL,'2024-10-06 15:04:18','2024-10-06 15:04:18'),
(61,'Robert N/A Lihanda','robertmungasia@gmail.com',NULL,'$2y$12$fP9TRYyY/w7a2PpRRQezmOqyh91vzkqyEKN9PxSR67sk5YJcGaBkm',NULL,'2024-10-06 15:04:20','2024-10-06 15:04:20'),
(62,'Nelson Mecha Nyabuto','nelsonmecha4@gmail.com',NULL,'$2y$12$vfD/Wn0clfAw4OggHVQ5Y./Http2gcRdt1atjkM5lGZ.MgPvSq9V2',NULL,'2024-10-06 15:04:20','2024-10-06 15:04:20'),
(63,'BENARD KIPROTICH KETER','nardketter@gmail.com',NULL,'$2y$12$ai3N8wCRBwpOew8K5db1ZeKx4mlOojwjnsR0nXn0OWKJ6.s3YQKkS',NULL,'2024-10-28 09:57:00','2024-10-28 09:57:00'),
(64,'Lawington Wachu Daido','dlawington@gmail.com',NULL,'$2y$12$jtO75GRcWLPjLZ4TJKlcuO.HHV9jLnqlAYAR9BbVSB1/k4peK8be6',NULL,'2024-10-28 09:57:10','2024-10-28 09:57:10'),
(65,'Mercy Jepkoech Sungul','sungulmercy@gmail.com',NULL,'$2y$12$YPirglZs8t8lqUtgJo6Q/eUxmo3nr3GsN7q4zk6Nd/1r/n1uLlR2O',NULL,'2024-11-08 00:16:15','2024-11-08 00:16:15'),
(66,'HAMZA HUSSEIN YUSUF','vinijunior308@gmail.com',NULL,'$2y$12$L4d.wlPF3ssHxE1IdENonuNVmPrg0fGOiXy7yT90w43fknv2YLqyK',NULL,'2024-11-08 00:16:16','2024-11-08 00:16:16'),
(67,'ANTONY N/A OBUYA','ANTONYOBUYA2017@GMAIL.COM',NULL,'$2y$12$af.gE3SIO/Dei8834UZho.AD/PXELm9724w3rVrgHHGoI32aA84wO',NULL,'2024-11-08 00:16:17','2024-11-08 00:16:17'),
(68,'Clifford N/A Onyiengo bosire','clifordonyiego@gmail.com',NULL,'$2y$12$Re14Bum/BnJM24sGkKQsz..JpHMLWXWeJzVYN4t3/IMWjD7PWVaUS',NULL,'2024-11-08 00:16:18','2024-11-08 00:16:18'),
(69,'Egrah N/A Omiti','egrahbwari@gmail.com',NULL,'$2y$12$uZKVDGDbx50F9C/3HfpB0erRq4bHxAwt3dVx.Toav9J.dWGpEpMJO',NULL,'2024-11-08 00:16:33','2024-11-08 00:16:33'),
(70,'JANEPHETER Machuma Liru','mumofdotas2020@gmail.com',NULL,'$2y$12$GdyYtSWOMe2jlq1ME2FXj.f..bajFCyRJZ/hA9yikcJoccpDvCZma',NULL,'2024-11-08 00:16:34','2024-11-08 00:16:34'),
(71,'Unathi Nakisha Otieno','jaqlindag@gmai.com',NULL,'$2y$12$Wb0VMif1fK.T2XCs9D6pfuabuCz.49g0NQfOKLuhfdSozKiRiU/wq',NULL,'2024-11-08 00:16:34','2024-11-08 00:16:34'),
(72,'Daniel N/A lengoley','lengoleydaniel@gmail.com',NULL,'$2y$12$FcXOGDnw/DY1MQ94YGbKBOxrlp7fmBHROsO7gZRsWYthhJ62QWAGO',NULL,'2024-11-08 00:16:35','2024-11-08 00:16:35'),
(73,'Karl-Heinz Louis Abiola','karlheinzlouiz@gmail.com',NULL,'$2y$12$P/7wh0HGC3j5zqXUQDTbMefaLyar99R.dm3c3GZ2F36l6Lv/yXmJa',NULL,'2024-11-08 00:16:36','2024-11-08 00:16:36'),
(74,'Jackson N/A Ochieng','jacksonochieng01@gmail.com',NULL,'$2y$12$TJ/TDC4IYLe29p4FIlUUk.sdoEO4zOX56Q4ahYppy.b/QumFx9E8y',NULL,'2024-11-08 00:16:44','2024-11-08 00:16:44'),
(75,'ANTONY ODHIAMBO OTIENO','tonynewton2010@yahoo.com',NULL,'$2y$12$MCAM/vKj7L6217oxYnbL9uTxO5kl0.sLdD7afwn/rEkhB7oJURo.G',NULL,'2024-11-08 00:16:45','2024-11-08 00:16:45'),
(76,'ELVIS OUMA ALANGO','alangoelvis55@gmail.com',NULL,'$2y$12$Ox7Qr6prADk7PL5FSNjG8u8fLSLxtC6HxL.VdS7quUSuSpfWjRRuK',NULL,'2024-11-08 00:16:46','2024-11-08 00:16:46'),
(77,'Duncan N/A Otieno','duncanotieno612@gmail.com',NULL,'$2y$12$k./Lu6E1kKvsK8MKLOHITOSRQDTEGWWMbqae.KBJEfDDlQWfpIpbm',NULL,'2024-11-08 00:16:52','2024-11-08 00:16:52'),
(78,'Phina N/A Onyango','phinaonyango78@gmail.com',NULL,'$2y$12$0NZ5KbPLmLQb.tk2UNzt.OnzK05beNHQzENEKLvvy.P.y7n51T44.',NULL,'2024-11-08 00:16:58','2024-11-08 00:16:58'),
(79,'Owino Daniel Oduol','oduoldaniel7@gmail.com',NULL,'$2y$12$7X6tuN55y8IYXjxgHCOQ5OfBWBNjL3LU7VsDB1xaG8xv8l3nbfHee',NULL,'2024-11-08 00:17:00','2024-11-08 00:17:00'),
(80,'SAMWEL OMONDI OKACH','samwelomondi392@gmail.com',NULL,'$2y$12$dFUvTEnUs77tnno0kkE32.snpLG7Z2Mt4AJRsd6pu4xFi8fzFyEke',NULL,'2024-11-08 00:17:05','2024-11-08 00:17:05'),
(81,'RHODA N KHISA','khisaroda@gmail.com',NULL,'$2y$12$csYc3Lu0rrlzYegv7LPNvuLTBSrplEYuxQc/V/q7SY2c.UYAsJvt2',NULL,'2024-11-08 00:17:11','2024-11-08 00:17:11'),
(82,'JACKSON SWEYA OPIYO','jacksonsweya2@gmail.com',NULL,'$2y$12$Ep3rTK1suzYo6ymEKRqA7eVJu4n9sKeri/MN906zeNhUjV9OVB7ay',NULL,'2024-11-08 00:17:17','2024-11-08 00:17:17'),
(83,'Jermaine Davis Yukeh','davisjermaine336@gmail.com',NULL,'$2y$12$IwTLPAH/xoUS8HTNWLuvpOPaV/FznvMolQ2x86Ry68D7roBLWDH2K',NULL,'2024-11-19 16:16:50','2024-11-19 16:16:50'),
(84,'Elisha Otieno Mboya','elishamboya629@gmail.com',NULL,'$2y$12$b4go3jcq/0DCneuUZjXp1.XZve7M4kQItfBb/3BFfvjZPXz.ocILi',NULL,'2024-11-26 07:20:42','2024-11-26 07:20:42'),
(85,'ISSA ISACK GOLLO','kampichaesir@gmail.com',NULL,'$2y$12$TRCAjBVY44U2IKir3hbUAup/nJac6g8EOi7.oeDgDgaPtEuICn0Mi',NULL,'2024-11-26 07:20:43','2024-11-26 07:20:43'),
(86,'ERIC BENSON CHEGE','chegeerick403@gmail.com',NULL,'$2y$12$3u3Qp4SNCsCDle3/firPf.SExzcxP8fuOse7PNQRkrf1T4FND68KW',NULL,'2024-11-26 07:20:45','2024-11-26 07:20:45'),
(87,'Mpano N/A Garnaud','dushimanelubanga@gmail.com',NULL,'$2y$12$fxabmJQ8WfJ1QyHzWPb1POiEgeRlLN7R6S.c53VU5UFx0xeYQeCDG',NULL,'2024-11-26 07:20:46','2024-11-26 07:20:46'),
(88,'Coasvey Achieng Mboya','coasveymboya@gmail.com',NULL,'$2y$12$.1MJwhldkiQETnejTc9VzOZ84K/MxjRsn.oKGaiz.VZ/TWnjBf6KC',NULL,'2024-11-26 07:21:16','2024-11-26 07:21:16'),
(89,'EMILY N/A MOLLEL','emiley127@gmail.com',NULL,'$2y$12$PdZjrjcVR2CkQgcQ6o6bQ.ktNJWwDr/hLkh3Q70lcIhBkwk79AZgC',NULL,'2024-12-02 01:11:47','2024-12-02 01:11:47'),
(90,'Andrew Okiru Omonya','okiruandreww@gmail.com',NULL,'$2y$12$GtaZjyc9dfkHV92DeaAoCeCeh2bLQb8PmulBVC1uXAPUEbMG1wmGC',NULL,'2024-12-02 01:11:53','2024-12-02 01:11:53'),
(91,'Benard Mjomba Msula','nardnjomba@gmail.com',NULL,'$2y$12$tWW6EdXuCSBwpiHoum0My.THkHN65gZl020feouWcGGTllXPzIFFC',NULL,'2024-12-02 01:11:55','2024-12-02 01:11:55'),
(92,'Peter Kimondo Peter kimondo','kimondop25@gmail.com',NULL,'$2y$12$WSR7Z6Oc/g.mlitd30JrzeYhv17TisEiRE4pT/eCNZnAqgrFwP9FG',NULL,'2024-12-02 01:12:01','2024-12-02 01:12:01'),
(93,'SHADRACK N/A OTIENO','otienoshadrack893@gmail.com',NULL,'$2y$12$02dBGi2tVLUcjMo1Lga6tu1ewX9XIorZKhxjTiuW.a1jJibi2KHsG',NULL,'2024-12-02 01:12:07','2024-12-02 01:12:07'),
(94,'Veronica Wambui Githiga','KamsNation001@gmail.com',NULL,'$2y$12$RIX9AGp66DJgNlIgTO88Vug4S4kDevpBtpHh5dHYCB41pFKRoK8sC',NULL,'2024-12-18 02:55:13','2024-12-18 02:55:13'),
(95,'Michael Otieno Odondo','odondomichael12@gmail.com',NULL,'$2y$12$9gQAkhHkouzMvDvvLZpB1eh2ybVZrXac3RgZd6lH5Z/6NnvA4yZgG',NULL,'2024-12-18 02:55:14','2024-12-18 02:55:14'),
(96,'MULOMBI WANJIA MESHACK','meshackmulombi@gmail.com',NULL,'$2y$12$MTWsxT/6qZMhGUWkpgP/I.4EDyTsYCRabOA8.PdPkevD5e.rLUoiW',NULL,'2024-12-18 02:55:15','2024-12-18 02:55:15'),
(97,'Salmaan Mohamead Sufi','salmaansuffi@gmail.com',NULL,'$2y$12$btFfvTRjPA9TR710O5CiVu.HdlICpsdPS2rt13j6bs8CkfOB7adC6',NULL,'2024-12-18 02:55:16','2024-12-18 02:55:16'),
(98,'Pauline Wanga Lupere','luperewanga@gmail.com',NULL,'$2y$12$FXNWUjE7ypNPEz1WqzNruO7gvrNtar5ae/VJ1kwerCk1dgbLi7Wli',NULL,'2024-12-18 02:55:17','2024-12-18 02:55:17'),
(99,'Tabitha Wavinya Mbeke','wavinyatabitha66@gmail.com',NULL,'$2y$12$MsoFSfM0Or6Wbs8HooZ5Be.Bl0FKup1DtvonAk7wub0hnQQt3Dk.m',NULL,'2024-12-18 02:55:27','2024-12-18 02:55:27'),
(100,'Bethwell Wamalwa Rafiki','geotimasgroup@gmail.com',NULL,'$2y$12$dMWkLAwQUZB5jODNGFKekOt2uB9Aci/1tzg5yB3n51.VsSg5GXLge',NULL,'2024-12-18 02:55:33','2024-12-18 02:55:33'),
(101,'Justus Odhiambo Murunga','murungajustus94@gmail.com',NULL,'$2y$12$sTy7692.MgZF88vOOujFlOpcfT3XoPBk2Kfi.4PrTxAb98OqxAljq',NULL,'2024-12-18 02:55:34','2024-12-18 02:55:34'),
(102,'Kevin N/A Bitange','momanyikevin2256@gmail.com',NULL,'$2y$12$v.FJa/AR807OxutATnVXRuqj4SvWkm/BEwdvreKhUUUOwGY7iMyUC',NULL,'2024-12-18 02:55:41','2024-12-18 02:55:41'),
(103,'Catherine Mutheu Kioko','qatelynah@gmail.com',NULL,'$2y$12$KlfRCrfZcsTWV3IwCbk1je2VP5GNWWyLImkokBO3gjabUzdAVYUwq',NULL,'2024-12-18 02:55:49','2024-12-18 02:55:49'),
(104,'Eliud Nyaori Odindo','eliudnyaori95@gmail.com',NULL,'$2y$12$lctzilpxiQZE.p.WwgReDeICOkmE3w0VyyGh0nIQPkDH3B8U9Av02',NULL,'2024-12-18 02:55:50','2024-12-18 02:55:50'),
(105,'Bridget Gathoni Kimani','luciecalvins@gmail.com',NULL,'$2y$12$hIpKTi0RwaKHaxW8WXADfeGYdWQ6EVN.ZrA61E4sBbH5brQaCOqwW',NULL,'2024-12-18 02:55:51','2024-12-18 02:55:51'),
(106,'GLADWIN MAINA MAINA','winnieza534@gmail.com',NULL,'$2y$12$.epZzwR6Rqfp6N0AhIor2.fAz56TOvHmInH1p1Zxj5.qYKLI9QEee',NULL,'2024-12-18 02:55:52','2024-12-18 02:55:52'),
(107,'Lokitoeanei John Achuka','jlokitoeanei@gmail.com',NULL,'$2y$12$NF4ZHEUNwCRlskoiavoJ9ecKXjxj/6WW9MYMVPFl4akVmnZnpz5NS',NULL,'2024-12-18 02:55:53','2024-12-18 02:55:53'),
(108,'Kimberly Wangui Gachiri','empresswangui54@gmail.com',NULL,'$2y$12$35cBeoNUD.chAHr3vVbKcepOMs10rxLiIXO2Ve289RJg9hYQTxP72',NULL,'2024-12-18 02:55:54','2024-12-18 02:55:54'),
(109,'SAMWEL Edonga EPETA','epetasamwel286@gmail.com',NULL,'$2y$12$dc65j1Hq5MC.WkgT52zltemggv8z8a5/yXyQGgfoyUNmhf7IFCMra',NULL,'2024-12-18 02:55:55','2024-12-18 02:55:55'),
(110,'Elijah Odhiambo Ochieng','ej2332224@gmail.com',NULL,'$2y$12$V96JoeJSqkeZyxNfqUjWkO.7PKcV5ZI.HTlnxzLHtkwzn3qcbcTki',NULL,'2024-12-18 02:55:56','2024-12-18 02:55:56'),
(111,'LAWRENCE ONYANGO OCHIENG','ochienglaw2@gimail.com',NULL,'$2y$12$mlG7vFK07/6HeFQ0VqoN9.qJFvCk5g8m6A8ScNrbe6sJNh46n9UqW',NULL,'2024-12-30 02:15:23','2024-12-30 02:15:23'),
(112,'Velnah Ontita Ontita','velnahmoraa4@gmail.com',NULL,'$2y$12$XCI/2y74DRVX9obVch4P9.QolcujkVCx1B76N5aKSie4IJG2fuLIS',NULL,'2024-12-30 02:15:30','2024-12-30 02:15:30'),
(113,'NAFTALY NJAAGA MAINA','naftali685@gmail.com',NULL,'$2y$12$J5/vTfWtqfTq82hRiLzJTetHwAJW9xF4U2xJ.5Z6IRBVo8mGrUR4m',NULL,'2024-12-30 02:15:36','2024-12-30 02:15:36'),
(114,'OSMAN MOHAMED BALAGHA','osmanbalagha@gmail.com',NULL,'$2y$12$rDTsqNUlauF.HDadTMSKGOmZwcmWfi9FsQVwktm0OypKO6pZjxc6y',NULL,'2024-12-30 02:15:41','2024-12-30 02:15:41'),
(115,'Shava N/A Godwin','shavagodwin293@gmail.com',NULL,'$2y$12$CobtOzitvVqpp92pXvsKUeHI5iBMWJavPfk9KDWr6ApE.LRGBe8j2',NULL,'2024-12-30 02:15:43','2024-12-30 02:15:43'),
(116,'Lovelyne N/A Pius','lovelynpius@gmail.com',NULL,'$2y$12$8UVM/IlcxkkhbixYzrfg7usqFJdPSHlBDzQVKDwK83xYZkEZVJz9y',NULL,'2024-12-30 02:15:44','2024-12-30 02:15:44'),
(117,'SHEM NAMBOYA MAHINDI','mahindishem@gmail.com',NULL,'$2y$12$2t1jcQW4rmCa9N0YvoSw8.kuDscf/fpww02Yo.oeHUvBywafva6d2',NULL,'2024-12-30 02:15:46','2024-12-30 02:15:46'),
(118,'DAVID SASITA SIFUNA','sifunadavid93@gmail.com',NULL,'$2y$12$Zr7QZUqDFS1w6Lf9a.0EbeLgC5qIznpY32XzMqmaRXtHmRseG66lu',NULL,'2024-12-30 02:15:53','2024-12-30 02:15:53'),
(119,'Calleb oyier Oyier','rahmonent.re@gmail.com',NULL,'$2y$12$IIlEoFOPWvRd7FHtIfVAWeG/tVhKB72YntZB/5zbzgvI34hIPlbiC',NULL,'2025-01-03 16:54:36','2025-01-03 16:54:36'),
(120,'Jones Namukanga Kitere','ngokhomohammed@gmail.com',NULL,'$2y$12$v2U3C/X.nxTP6xXqyL87HOXIggMjiwGFPbsgzF5yHoSgvp3Ik4J26',NULL,'2025-01-03 16:54:37','2025-01-03 16:54:37'),
(121,'Janet N/A Jerotich','jenetjerotich91@gmail.com',NULL,'$2y$12$mkJSPHVMa.4dLS81/qnItOwiyzzMc49.uEmzo6UBEG4AIdKej7UFy',NULL,'2025-01-03 16:54:38','2025-01-03 16:54:38'),
(122,'AHMED INRAHIM ABDIKADIR','akforex50@gmail.com',NULL,'$2y$12$1rm0dHD5k1O2P0tSka1SFucEx3rBBwSvh7DZzr.Pjh.WbbibJVixm',NULL,'2025-01-03 16:54:39','2025-01-03 16:54:39'),
(123,'ABIGAIL N/A KARUHI','abigailkaruhi@gmail.com',NULL,'$2y$12$jqW0/moHnqLtY3sTF4vHCeKqR9SxrD3Q5vEe.Qi7angd.oto5cmje',NULL,'2025-01-06 07:53:53','2025-01-06 07:53:53'),
(124,'Elvis Kibet Yego','kibetelvoo1999@gmail.com',NULL,'$2y$12$8nccTv7500cr2lzmpJbOzuPMs3MeRaDQHoXPpYsKJ.RYX.dSDMC0u',NULL,'2025-01-06 07:54:06','2025-01-06 07:54:06'),
(125,'CHRISTINE N/A ONEGE','christineonege@gmail.com',NULL,'$2y$12$SPsyzzamxSIGe6gy0aJ/MOOY4hK0R/KyoKQZgSg3lBx2ML2LnQcZu',NULL,'2025-01-06 07:54:12','2025-01-06 07:54:12'),
(126,'Chidimma Divine Obasi-Nwonye','chidimmmanwonye299@gmail.com',NULL,'$2y$12$uHi5d8DiOm4qngOojsyQ7uPDZJ6EkA/cX4qPNbBqYuBxfdx/Saf9.',NULL,'2025-01-06 07:54:19','2025-01-06 07:54:19'),
(127,'Keyhodos Buya Wachu','buyawachu23@gmail.com',NULL,'$2y$12$pNJi0gZLaxCMiPHtJ5jXcetz6jmns/EGPNbK7h7H9zSR1lilyBo3i',NULL,'2025-01-06 07:54:23','2025-01-06 07:54:23'),
(128,'Calistus Simiyu Waswa','waswacalistus24@gmail.com',NULL,'$2y$12$qctTVZulpODOav4bF9CHW.e3EGD6fCdJogBRU1AGelPe1YOvlwfDG',NULL,'2025-01-06 23:16:58','2025-01-06 23:16:58'),
(129,'ALFRED OCHIENG ODERA','alfredodera3@gmail.com',NULL,'$2y$12$IE5Pj6Nu51LaEQRfE.VhuOJmrQHcrTJ.C2Y8JqzDbWV3PETSS.cPe',NULL,'2025-01-09 22:07:11','2025-01-09 22:07:11'),
(130,'CHRISTIAN LINGA OGEDA','ogedachristianlinga@gmail.com',NULL,'$2y$12$L4bFID5fstEJ.tulhzeTmeWK3rxW67R.LPsze9/q/zm8I45lBgksi',NULL,'2025-01-09 22:07:12','2025-01-09 22:07:12'),
(131,'Ibrahim Misati Mokua','Ibrahimmisati8@gmail.com',NULL,'$2y$12$s2JjO3dKnXCeLwrZvbUXBeNXKEjgj4ebkfNcOI0QQiCmT3pzYfvWq',NULL,'2025-01-09 22:07:13','2025-01-09 22:07:13'),
(132,'Evelyne Lindsay Atieno','evelindsay1@gmail.com',NULL,'$2y$12$NXZM5tzTkK8sV8Vh6htCE.PtjUmctRSebALCC/mdr0SlXCLZFQmKe',NULL,'2025-01-09 22:07:14','2025-01-09 22:07:14'),
(133,'Joyce N/A Wanjigi','jwahura@yahoo.com',NULL,'$2y$12$bjb1lO3m16mbH8k92kB0R.lGsN77z7ECrxQyKZxYuK1lRrZF3j.zK',NULL,'2025-01-09 22:07:15','2025-01-09 22:07:15'),
(134,'Irine Muga Muga','sakede2010@gmail.com',NULL,'$2y$12$LwUfbWR735cjMH8PXkfrPOxHqnilLzWVYPQKv9fdH1qanV9eY1Ha6',NULL,'2025-01-09 22:07:16','2025-01-09 22:07:16'),
(135,'PHILIP N/A MANYI','philipongechi82@gmail.com',NULL,'$2y$12$SC.ODWuJet/fhD.enavpdOWjZWvGoZJr02XNKY6pbNuU4lglE6Twq',NULL,'2025-01-09 22:07:17','2025-01-09 22:07:17'),
(136,'Shanice N/A Wairimu','shanicewairimu7@gmail.com',NULL,'$2y$12$qH3mvPoV2wFGneFUMNY0.Oq7gpT1ALFgdIe1lG.lfZSi1UXGbZlGa',NULL,'2025-01-09 22:07:28','2025-01-09 22:07:28'),
(137,'NICKSON KIPTOO METTO','nmetto63@gmail.com',NULL,'$2y$12$pIxOz4rtchnkrbKTV5h.Z.X5oiJPYEVQzajVF7b7.ZbnziVaGvMG6',NULL,'2025-01-10 07:05:37','2025-01-10 07:05:37'),
(138,'Collins Ouma Festo','Collinsfesto000@gmail.com',NULL,'$2y$12$gZBPkNpKUJzMGttqEMC4be8sTN/ibqAoAR0RU6QkZ3M9TxLluvbiy',NULL,'2025-01-11 04:39:18','2025-01-11 04:39:18'),
(139,'DUNCAN CHRIS MWASHIGHADI','duncanchris1999@gmail.com',NULL,'$2y$12$Dz4uWAbSVSUGSCgC4uGxcefScvTNhgzoEGNhb1H0nCACngk4w74Ta',NULL,'2025-01-11 04:39:19','2025-01-11 04:39:19'),
(140,'Margaret N/A Onjeso','joyj31718@gmail.com',NULL,'$2y$12$GuT5St9AS19wF2gMU04AZ.MdUiuF1KE7J48npnzdXACPTc8ZlZDry',NULL,'2025-01-11 04:39:20','2025-01-11 04:39:20'),
(141,'David Barasa Maili','davidmaili333@gmail.com',NULL,'$2y$12$sCiw6tuVWogRD1xNsWu56eX0MRSubLmR2n39YAcmTvkTYZG9y14/m',NULL,'2025-01-11 04:39:21','2025-01-11 04:39:21'),
(142,'Moses Mutua Michael','mutuamichael271@gmail.com',NULL,'$2y$12$7shB4E8UoO/pp7yEnUa9duU3rAtSP4P.scD.F9axNRr/pHIeSEH9a',NULL,'2025-01-14 00:17:51','2025-01-14 00:17:51'),
(143,'Benjamin Lunani Injemela','benmpole72@gmail.com',NULL,'$2y$12$a1lUt.w3hvQBZfcsIdeA0Oqfg8ne5jazv6wtEkQzP/WBNciKLYcUe',NULL,'2025-01-14 00:17:51','2025-01-14 00:17:51'),
(144,'Ibrahim Lorot Edan','lorotibra1963@gmail.com',NULL,'$2y$12$LbQ1m4NZVtm.SVn/aF/8vedqDONRnPEsThWtTkdUJeezx8RLrFis6',NULL,'2025-01-14 00:18:05','2025-01-14 00:18:05'),
(145,'Bramwel Poghisio Poghisio','Poghisiobramwel27@gmail.com',NULL,'$2y$12$.TaarGhY0z6ZuHj1JnsOK.jzHVfwHaSp3mXfBqxr929X7v5WidfxW',NULL,'2025-01-14 00:18:16','2025-01-14 00:18:16'),
(146,'Oloishorua N/A Elijah','elijahsaoli5@gmail.com',NULL,'$2y$12$Bb30CClLNH2kN6CHYfHQgO/zNLrr26A2TUsIwXpymyl/mBFEgL42W',NULL,'2025-01-14 00:18:27','2025-01-14 00:18:27'),
(147,'PAULINE MUENI WAMBUA','itslynnwambua@gmail.com',NULL,'$2y$12$igimJts5GinDu3Kd6ip9rOo7NDw5XtGql2f03WpPQ4wvvf7zPKM.C',NULL,'2025-01-14 00:18:37','2025-01-14 00:18:37'),
(148,'RAHAB N/A WAINAINA','raaydaves@gmail.com',NULL,'$2y$12$aPBPrvce4iS.cVt3HRdaJOg7CBdDqRBggXmLoHTluA3.IaXQn2L06',NULL,'2025-01-14 00:18:51','2025-01-14 00:18:51'),
(149,'DENIS N/A KIBET','denisatkibet@gmail.com',NULL,'$2y$12$MoCOVMRgi.JcF2a063eXaOC/Sehu3V.wjzTBukYf1rkDqC3bdzi3S',NULL,'2025-01-14 00:19:03','2025-01-14 00:19:03'),
(150,'Sharon Jepngetich Kemboi','sharonkemboi454@gmail.com',NULL,'$2y$12$/6BCLvMbYlh6OZ9PaglEZeykKbmCsreIDyZo6miMWg8e5JPmDJkje',NULL,'2025-01-14 00:19:11','2025-01-14 00:19:11'),
(151,'Eric Kipsang Chirchir','brianmudenge159@gmail.com',NULL,'$2y$12$x4HdREFbQttuPickoumbkOC9PCuSKgdH3D9j3TxccoJMbaXOg8avK',NULL,'2025-01-14 00:19:22','2025-01-14 00:19:22'),
(152,'Mercy ADHIAMBO Odumbe','odumbemercy22@gmail.com',NULL,'$2y$12$WGDWjQiXzXJIGHJBCzwH6enKkcMyDy0QcQRvvPCKu5MF67OaRB0rC',NULL,'2025-01-14 00:19:35','2025-01-14 00:19:35'),
(153,'FELIX HANNS IBUYA','ibuyafelix88@gmail.com',NULL,'$2y$12$x.O8Rqyb4NKOIKbZM4VaIeUM69VFD3S8jqe2pHJNMhd0iEoTVy.MS',NULL,'2025-01-14 00:19:43','2025-01-14 00:19:43'),
(154,'Catherine Karendi Tharamba','karecatejames@gmail.com',NULL,'$2y$12$BwEp3kDEJufom0WMelP9Eub6l/Los9cStk4nAFT3hF8IYPJEh27tG',NULL,'2025-01-14 23:59:41','2025-01-14 23:59:41'),
(155,'Mark Onyango Oluoch','markoluoch332@gmail.com',NULL,'$2y$12$poIhzMxosxv8I4clgZveP.V6HK9EitsspEsKo6pK0KaGfGncnBkYe',NULL,'2025-01-15 15:43:00','2025-01-15 15:43:00'),
(156,'STEPHEN OCHIENG OJWANG','stephennawyak28@gmail.com',NULL,'$2y$12$7eA34ACKc2OIy8Gm2gKZ1OpaRhN4tZ//9wK25aQjR4wyaKfw83Ftm',NULL,'2025-01-15 15:43:06','2025-01-15 15:43:06'),
(157,'francis kamau kungu','kunguf488@gmail.com',NULL,'$2y$12$DommK.Bf0TPL5caaOzAF3uqi.IDctLToO6VKgLAlMfn6ewj9hTSl2',NULL,'2025-01-15 15:43:11','2025-01-15 15:43:11'),
(158,'Samuel N/A baranda','Samuelbidaku93@gmail.com',NULL,'$2y$12$aUPtuSSEXZjBHBqccsec4Ow3WcmiJwXEpMQWr30hQWP0uOjh7XMhi',NULL,'2025-01-17 16:42:30','2025-01-17 16:42:30'),
(159,'Thoya N/A Kibwana','kibzzdon@gmail.com',NULL,'$2y$12$cKRBXqmx9ks1bNYtfbUGTehtEajOiTTfmEgZs0oAgDpYh2eH8GA/6',NULL,'2025-01-17 16:43:23','2025-01-17 16:43:23'),
(160,'Rita Maremo Kisaka','kisakamildred5@gmail.com',NULL,'$2y$12$hD7JNSIvJ8VhKtF8EVXH3ePPcPn/eAQMnp5xZAzzytsOnmw/5Ro7u',NULL,'2025-01-21 22:56:51','2025-01-21 22:56:51'),
(161,'Lorna Sharon Mwangi','mukalimwangi7@gmail.com',NULL,'$2y$12$oGvNTdO/6HidhcCZJXgAbun8Fl9sYLonq3jYkh911/cdoxl4k2E32',NULL,'2025-01-24 01:33:28','2025-01-24 01:33:28'),
(162,'Michelle N/A Silole','michellesilole@gmail.com',NULL,'$2y$12$Sn5h/Bq8yNKM2lUT1Hs6jedqeOHtSlpxBp3YSupbGzmgAx2MYV7QG',NULL,'2025-01-24 01:33:43','2025-01-24 01:33:43'),
(163,'Faridah Anyango Ahmed','ahmedfaridahj@gmail.com',NULL,'$2y$12$fTJ9yWFE.J5JksXa.eOheuP/ZDL8Kd/pb.6Am5ADd0VtbixBx.ufK',NULL,'2025-01-24 01:33:53','2025-01-24 01:33:53'),
(164,'Vincent Kipngeno Koskei','tysonkosgei1@gmail.com',NULL,'$2y$12$9J6bFMwSNyP39jtino2mtO7E6eOzpPDiZmR/7SUnQlIvAc0oBnB4e',NULL,'2025-01-26 22:49:16','2025-01-26 22:49:16'),
(165,'SHEILA JEROP MISOI','SHEILAJ@GMAIL.COM',NULL,'$2y$12$IjK9mdxhyVfPJM/PEwkk9eW4NBT2GVe8EDEKRnCYdPdurMbfob1gy',NULL,'2025-01-26 22:49:24','2025-01-26 22:49:24'),
(166,'Elizabeth Mwikali Kimwele','gail93580@gmail.com',NULL,'$2y$12$LW0lfgY2KEsXBKnAZLbwv.mrXZGIFm2n6GouR3jOjGcrG7MrvgfU.',NULL,'2025-01-27 23:10:29','2025-01-27 23:10:29'),
(167,'Kerry Omondi Adongo','okerry254@gmail.com',NULL,'$2y$12$2KsS3IPxlT8oF8Nlu740n.nCnCxB34HR9sYDWNfEuI0pz0WGawHlW',NULL,'2025-01-27 23:10:40','2025-01-27 23:10:40'),
(168,'Jared Omondi Otieno','otienojared503@gimail.com',NULL,'$2y$12$Ipoqdj58QhBtBS/1e0MVp.l7cHYaATJ/GOIqKZXUOKpoJbV3u92w2',NULL,'2025-01-27 23:10:51','2025-01-27 23:10:51'),
(169,'Salima N/A Bavilie','salminahbarvilie74@gmail.com',NULL,'$2y$12$eKdkrk1/4EoNrGutmJgjk.6v6Cq.lsB2U48/nPX0zuH0Le5UuNray',NULL,'2025-01-27 23:11:00','2025-01-27 23:11:00'),
(170,'ALEX AMOS OKOCHI','alexokochi04@gmail.com',NULL,'$2y$12$l5CnkCtdPXb/Z0sjDhRgwOQh1ojimIBavSauMOCW/lVPdnIDb1NsO',NULL,'2025-01-29 23:40:50','2025-01-29 23:40:50'),
(171,'ALICE ACHIENG OKONG\'O','aliciahachieng@gmail.com',NULL,'$2y$12$OZb05CUl95aGoyRbwLnb8.cii9ythWLNTKjI3GJ3fybHnRdB7V2s6',NULL,'2025-01-29 23:41:00','2025-01-29 23:41:00'),
(172,'Nicholas Kimathi Mwikuu','nicholaskimathi61@gmail.com',NULL,'$2y$12$hPAp957NdUn.ayuo9lP8TeZHFzjv7kpekETigEn.2ylodMW1RwDh.',NULL,'2025-01-29 23:41:11','2025-01-29 23:41:11'),
(173,'Josphine Wanjiku Kimani','joanakimani@gmail.com',NULL,'$2y$12$QWeQufzb5DLBzf6o//XS9.O/UaU1YE1FSpKcGmFQu4VKHTUjSb6lC',NULL,'2025-01-29 23:41:20','2025-01-29 23:41:20'),
(174,'OLIVER WANJALA WAFULA','oliverwanjala82@gmail.com',NULL,'$2y$12$Tpo7zD8kZBzlWuDSn05HNeo3VUY6ux2ZUb/ph3hsulJDHCArzHPfS',NULL,'2025-01-29 23:41:31','2025-01-29 23:41:31'),
(175,'Evylyn Kiriki Ntinyari','ntinyarikiriki123@gmail.com',NULL,'$2y$12$Z4SPAu8znGiTSV2Zkh55kOCqTqGuUlHtveMzGbpBbYfHN.bJWTzp2',NULL,'2025-01-29 23:41:42','2025-01-29 23:41:42'),
(176,'MILDRED TOLONDO KHAOMA','MILDREDTOLONDO@GMAIL.COM',NULL,'$2y$12$pp/vCzL3qME/8rMxonZ9A.Y8eStqnGWX31AiD7twnd2mTcXt6vWXS',NULL,'2025-01-30 23:40:35','2025-01-30 23:40:35'),
(177,'Esther Nyambura Wambui','elsieosteen@gmail.com',NULL,'$2y$12$Cmq80MSG.t1RReFDDbFnuunWjsY8kJu2oDJSqHN5rNvTaPYRUsBum',NULL,'2025-02-01 00:20:39','2025-02-01 00:20:39'),
(178,'ROBERT OCHIENG OWUOR','robertowuor82@gmail.com',NULL,'$2y$12$qh/WZ8kjALiE/N92gaFyBex1oTdaiF1JiMbY.1iXYO4VTRdedHsB6',NULL,'2025-02-11 03:57:27','2025-02-11 03:57:27'),
(179,'Andrew Mwaura Gathogo','ruguruf62@gmail.com',NULL,'$2y$12$WzMcpsOYidzYmCg7cIO6NuIpx8RSKd.CyhwEEik3YLcXMqSG/1ORy',NULL,'2025-02-11 07:50:50','2025-02-11 07:50:50'),
(180,'YVONNE ADHIAMBO MWALO','yvonnemwalo@gmail.com',NULL,'$2y$12$tl.x2IimlVRfYUg8wueUsOWUeEe6yEJnq163mTjC.eAAOHpidWpGK',NULL,'2025-02-11 07:50:51','2025-02-11 07:50:51'),
(181,'MUKASIA N/A SELINER','selinermukasia8@mail.com',NULL,'$2y$12$lIc0mmF/ZMLu7zt/7d/GFOedGTx/oEol6m.ivjz7bac7bdKGcR79i',NULL,'2025-02-12 01:29:32','2025-02-12 01:29:32'),
(182,'Rael Nanyama Mutimba','mutimbarael2@gmail.com',NULL,'$2y$12$7l8a0iXU7aWcGnsqv1ABUu6PcbKKQLroU0OnS3u0GeHFoFFPYfk36',NULL,'2025-02-12 01:29:57','2025-02-12 01:29:57'),
(183,'Eleazar N/A Maviah','maviaheleazar@gmail.com',NULL,'$2y$12$p1j6OR9S5xwf0JhFd8XtL.JAGQIOCFDnqbUwoGv3UbLwpSxlFAXEa',NULL,'2025-02-12 01:30:10','2025-02-12 01:30:10'),
(184,'Benard E. Wanyonyi','wanyonyibenard292@gmail.com',NULL,'$2y$12$Kg..20DVBi1nBjDJ162aYuSOdprPNsYOgKHP2F7W8eLS7ffc0FZWC',NULL,'2025-02-12 01:30:20','2025-02-12 01:30:20'),
(185,'DAVID OTIENO OTIENO','davidootieno155@gmail.com',NULL,'$2y$12$keCl5iLnNiWFd1NFcOQN4Ox1d4aWWk7/4btkEFmSkpdtHFg/QRjwG',NULL,'2025-02-12 01:30:30','2025-02-12 01:30:30'),
(186,'Catherine Wambui Ndiba','catherinendiba2@gmail.com',NULL,'$2y$12$PsB7i29xs8V1uh4vX0iOlOHK5iXhK0zO2jgbqNdQgoVUTKz85C2Ua',NULL,'2025-02-19 01:35:21','2025-02-19 01:35:21'),
(187,'Emmanuel Kiplagat Kogo','emmanuelkogo17@gmail.com',NULL,'$2y$12$pCzU64z6pgjutfkJ4S3zQeCp57eyoCMU3pAcpPFEuE/ZBh207g0bO',NULL,'2025-02-19 01:35:34','2025-02-19 01:35:34'),
(188,'John Mwangi Wachera','mwangijohn813@gmail.com',NULL,'$2y$12$9/MLRy9TcIG8IzsYmtmvaOkHcOZLJf7aBS9qM/qRaBUQl4QkdKbRG',NULL,'2025-02-19 01:35:43','2025-02-19 01:35:43'),
(189,'ANTHONY KIPKURUI KIPTOO','anthonykiptoo222@gmail.com',NULL,'$2y$12$S7U79EDmUWOKvhGkFr10fOnjT6N/42bU9.WAMqBCRXFb3R4zEbY4K',NULL,'2025-02-19 01:35:51','2025-02-19 01:35:51'),
(190,'Prisilla Wairimu Karanja','wairimupriscilla71@gmail.com',NULL,'$2y$12$2AEgl7K/PyPtaOnCj8h/UOQtFa1Bs5nI0Yo.j.B/GPfAjO8jszkf.',NULL,'2025-02-21 08:36:47','2025-02-21 08:36:47'),
(191,'Purity Makungu Mwange','Puritymakungu005@gmail.com',NULL,'$2y$12$duy6qUIPb6cMmm6UG8tMxuVLgLZHwGja/zsWGdG98gb.dspw9SPza',NULL,'2025-02-23 23:48:27','2025-02-23 23:48:27'),
(192,'ELIZABETH ONGAYO OYOKO','elizabethongayo646@gmail.com',NULL,'$2y$12$L2EyuuBl6zHWZNIobzjK7OcIBbAtz3jQhYX2xuvS/UwaRflgHiW2i',NULL,'2025-02-26 16:28:34','2025-02-26 16:28:34'),
(193,'Clement Munyua Mureithi','Mcmureithi@gmail.com',NULL,'$2y$12$JUVTtyfXsj6G.QsMtGygrelwm//tT8pL8o6QeDWlHbVklm6SEUEPi',NULL,'2025-03-17 23:32:39','2025-03-17 23:32:39'),
(194,'Jayson N/A Ombima','eprahimjayson@gmail.com',NULL,'$2y$12$TGIhN56HOZWLCXzoOBWhMO.cjTsbGwq6O7VA8bZfvBaGstu3RwfXi',NULL,'2025-03-17 23:33:02','2025-03-17 23:33:02'),
(195,'Susan N/A Wanjiru','Susanwanjiru927@gmail.com',NULL,'$2y$12$dSLO4IxUi2.5N6lJhImjw.7B3OSPRPMTGoGReV1OxSwUDR/g4PC/u',NULL,'2025-03-17 23:33:19','2025-03-17 23:33:19'),
(196,'jecinta njeri nyaboro','jecintanjeri017@gmail.com',NULL,'$2y$12$.EsUX.N.9Abyf9z5tZnDZOmlrCjLnTO4d8DQdfgYSGBSZlcGZewdu',NULL,'2025-03-17 23:33:25','2025-03-17 23:33:25'),
(197,'Zachary NGARE OBONYO','jdemocity@gmail.com',NULL,'$2y$12$zAbSF3IVb2snG6FAuaMo1uCKvh/GyXzPGfxpGik4OWPp9Xrxt.XyW',NULL,'2025-03-17 23:33:39','2025-03-17 23:33:39'),
(198,'Triumph N/A Museveni','Jackieobura@gmail.com',NULL,'$2y$12$oHBw1UBiTrZUoKdlD9uYiObDCRFH/b6qmTsQyf3me2k3TBPO8pg/6',NULL,'2025-03-17 23:33:46','2025-03-17 23:33:46'),
(199,'Maryann Njoki Karanja','njokimary498@gmail.com',NULL,'$2y$12$TE0bwEjwt2zO68RQXCneq.yGmeoQ7yDNQro1Hc3TRRmAU42haJgP2',NULL,'2025-03-17 23:33:54','2025-03-17 23:33:54'),
(200,'Diana Mujenyi Ayodi','ayodidiana1@gmail.com',NULL,'$2y$12$dz2Cy2ERhVfLvUbdmpwWy.Rs.yrw7RAJFEx420r6CXAX92b6NRA8C',NULL,'2025-03-17 23:34:01','2025-03-17 23:34:01'),
(201,'SHEILA N/A KAVUGWI','Khavugwisheillah63@gmail.com',NULL,'$2y$12$besrbowvyW9GwAkCIoGl4uiEOnneZTrcDM0Cu6ccyivkaZuEnO2ia',NULL,'2025-03-17 23:34:09','2025-03-17 23:34:09'),
(202,'Solomon Karanja Gathoni','solslaiscott@gmail.com',NULL,'$2y$12$Wp5mng/l9obVlTn3wkkvXe1aeSDBDYuOEm.z/r6VyovOzjMkCyopq',NULL,'2025-03-20 00:11:10','2025-03-20 00:11:10'),
(203,'Winfred Nzula Caroline','nzulawinfred99@gmail.com',NULL,'$2y$12$Q/gTLckG4UPo1Xng3aUKa.RlNwe8w0f5JLH0FoUmb9i0cbsobNf/6',NULL,'2025-03-20 00:11:17','2025-03-20 00:11:17'),
(204,'Linus Mwangi Maina','linusmaina716@gmail.com',NULL,'$2y$12$VD9eBAjoLf8TrfmbTZzxRe8CWyECIh7.UzaWrmmgYPKPLDI1A9Jne',NULL,'2025-03-20 00:11:24','2025-03-20 00:11:24'),
(205,'Phanice Nasimiyu Wafula','phanicewa2000@gmail.com',NULL,'$2y$12$NoJiWkwLai/QwsmASktUc.BSSRSNOLiuQT4edbUvk1JvFaQSPk/M.',NULL,'2025-03-21 03:43:22','2025-03-21 03:43:22'),
(206,'HYLINE NYANCHAMA ONGWAE','Hylineongwae5@gmail.com',NULL,'$2y$12$MRewiwjaUMyuGEALBxaGPutsJbIlErMd3kSvQwdZoD/MPAufRH1g2',NULL,'2025-04-08 06:27:44','2025-04-08 06:27:44'),
(207,'Rachel Georgina Wilson','r53224145@gmail.com',NULL,'$2y$12$YWbtzn94ZWyxeFaWxOufN.DcNlPBM3TAfUHYkw1/5pnCKS6ZpHp5m',NULL,'2025-04-08 06:28:02','2025-04-08 06:28:02'),
(208,'TERRY AWUOR OGWENO','terryawuorogweno@gmail.com',NULL,'$2y$12$7e9PUYSLoX/ZbzxOUkR4EOWjfHQWmeXP2ev1cz.kXwnjZDACnYpvu',NULL,'2025-04-08 06:28:23','2025-04-08 06:28:23'),
(209,'Beatrice Njeri Mbugua','mbuguabeatrice98@gmail.com',NULL,'$2y$12$xzKShUUzL.6PiVhzV8.A.O9c0mH45.d3fStSL0sDXdm97MigfgfsG',NULL,'2025-04-08 06:28:29','2025-04-08 06:28:29'),
(210,'Stephen Gikonyo Maina','captain001stevegm@gmail.com',NULL,'$2y$12$xiRgshOCyT/S.VA7Kr/NYOIm/55IrTsm1/51.2Ah633Rcw60xI65S',NULL,'2025-04-08 06:28:54','2025-04-08 06:28:54'),
(211,'esther kaluki nzyoka','esthernzyoka25@gmail.com',NULL,'$2y$12$ewQ8RP8WS.kwwcpftMfRIOcc6VRy0ptgOGzZaSOvfCkJNu6dFouk.',NULL,'2025-04-08 06:29:17','2025-04-08 06:29:17'),
(212,'Cynthia Michelle Achieng','cynthiamichelle515@gmail.com',NULL,'$2y$12$po0V79D1Iw058OxJvGojvegf4i5sM7SqZpwJ8DmWTgm0qpG/T6QF6',NULL,'2025-04-08 06:29:35','2025-04-08 06:29:35'),
(213,'Kiseli Mukinyi Mwakavi','kmukinyi@gmail.com',NULL,'$2y$12$rLOWmY9Sf8dRzStKb9n86udRRAr7ND1CLSVgGDE.g1EsR/s5ECfzG',NULL,'2025-05-19 06:13:44','2025-05-19 06:13:44'),
(214,'Stacy Osore Marienga','lenastacy74@gmail.com',NULL,'$2y$12$9/qfjrpYkTN75cZ8fdwtdurtk3LrPj0GxBEbbcFTpqCWym1jvTYKy',NULL,'2025-05-19 06:13:54','2025-05-19 06:13:54'),
(215,'Fredrick Otieno Mwemba','Fredrick.mwemba@gmail.com',NULL,'$2y$12$JxWvNtEtUNcVthcZ0fnItegR/kiQNxfqimTuu7VArdo4R1M0uLlmG',NULL,'2025-05-19 06:14:03','2025-05-19 06:14:03'),
(216,'ROSE MUTIO NZALA','rosemutio50@gmail.com',NULL,'$2y$12$pgna9HMhOcdaOuKdMF98oOoYSPFEuE4jTRDMbH.pt3Y30/xF.tj1i',NULL,'2025-05-19 06:14:12','2025-05-19 06:14:12'),
(217,'Precious Wambui Susan','reshireci0@gmail.com',NULL,'$2y$12$gbUNDkvsSJ7SAYmrLNOsnO/Pov/7D1v.mbiolLZRUVYk/SQtbZnou',NULL,'2025-05-19 06:14:26','2025-05-19 06:14:26'),
(218,'MICHAEL OTIENO OMONDI','MichaelKingAngel00@gmail.com',NULL,'$2y$12$.Td1Cuvs8CW6cY8QZaSrgODxSfu0DQ19d9B7I4zE2PYXt9aeKXKZK',NULL,'2025-05-19 06:14:37','2025-05-19 06:14:37'),
(219,'Brandon Omondi Ogada','brandon.ogada@icloud.com',NULL,'$2y$12$h7QMolXZv5OuMOL3tC0zY.n2G2Xc16U1HuWRAJQledmqzB2.GMjqa',NULL,'2025-05-19 06:14:49','2025-05-19 06:14:49'),
(220,'Awuor N/A Ngolo','effiengolo6@gmail.com',NULL,'$2y$12$jFfOKgZhzHSk4MYfZKNPquD3S00851fuyKRH7/4ssSsuALDc8zX5m',NULL,'2025-05-19 06:14:58','2025-05-19 06:14:58'),
(221,'Steave Ochieng Otieno','ochiengsteave999@gmail.com',NULL,'$2y$12$9aZN51oxm1hafTTrghve.OYnMy.q0sS5Y0vR4JAw9ykaSaRo82hgq',NULL,'2025-05-24 07:42:40','2025-05-24 07:42:40'),
(222,'ALEX KENGA WANJE','kengawanje94@gmail.com',NULL,'$2y$12$p9hXMGMiriTKs0KwsyRtz.DcjSDVARfZjztSeeFOJ08nZ0hlJSFJi',NULL,'2025-05-24 07:42:48','2025-05-24 07:42:48'),
(223,'MERCY MUTHONI ITOTIA','mercitotia@gmail.com',NULL,'$2y$12$tV9oY7dBHY3QBl5/rXEHluufRCeIejiZ5nTqjkYvyd1voZaWSBJrS',NULL,'2025-07-05 12:56:08','2025-07-05 12:56:08'),
(224,'Benta N/A Chepngeno','chepngenobenta@gmail.com',NULL,'$2y$12$dg.fXKHYXLKa4juPRFNxC.QocR9uFf4m3jJJI9c/E.s68BjBCJgsu',NULL,'2025-07-05 12:56:20','2025-07-05 12:56:20'),
(225,'Elias Odhiambo Juma','eliasodhiambo840@gmail.com',NULL,'$2y$12$JDdCR47P5sDgCcJVjnfotO9hM748uCbibv5Z6inbQq0AOtvz8E716',NULL,'2025-07-05 12:56:25','2025-07-05 12:56:25'),
(226,'Amin Abdirahman Mohamed','aminabdirahman586@gmail.com',NULL,'$2y$12$5wAsm9xWyvtgUTFcvRiOHeNUCDZiBwTEMWZ6H.ZiEn8mrnQSgglvu',NULL,'2025-07-05 12:56:32','2025-07-05 12:56:32'),
(227,'Pauline Vudembeke Asena','paulineasena319@gmail.com',NULL,'$2y$12$D3c9EN4EbLQN2e/I24/1yuCRTIhFtL8U45X4/trafTmL2qaTVwUuO',NULL,'2025-07-05 12:56:46','2025-07-05 12:56:46'),
(228,'ZAKARIA ALI SHEIKH','grandsonmursal@gmail.com',NULL,'$2y$12$aOxE7pZ7Wr9oCLE.7FcKr.UMSFfF1pxlknEse.RuiQX7le8ZwjadW',NULL,'2025-07-05 12:56:54','2025-07-05 12:56:54'),
(229,'JOHN MADERO OKUDO','johnmadero651@gmail.com',NULL,'$2y$12$vAHQujjNh1E..4LbguxvOOb6uL7Mqp6FUF2LnFeXjrDYUjFYSX.hO',NULL,'2025-07-05 12:57:03','2025-07-05 12:57:03'),
(230,'ROBERT KARIUKI KINUTHIA','robertkariuki87@outlook.com',NULL,'$2y$12$pm8hOYZwpjrRPU/j8pXwAeH.jdM3ZDCjAl/0THY9WPJM.1UfQ2ko.',NULL,'2025-07-05 12:57:08','2025-07-05 12:57:08'),
(231,'Cheruiyot N/A Rotich','cheruiyotrotich3320@gmail.com',NULL,'$2y$12$4wYThVxJyTM8uBwYY4WOI.khwJ.45v/A5daGI0QlGSMd9vtZj8CwO',NULL,'2025-07-05 12:57:18','2025-07-05 12:57:18'),
(232,'MILDRED NDINDA MUSILU','musilumildred@gmail.com',NULL,'$2y$12$bK6TNhdQWjIcyznA1n8H/Oq3zRwgEY3.DS8TjIb8dwfH4JzMCzWSm',NULL,'2025-07-05 12:57:33','2025-07-05 12:57:33'),
(233,'ESTHER NGONYO DERRICK','DERRICKKAVITA04@GMAIL.COM',NULL,'$2y$12$S173l.l0eQJSv07D175Bg.qobj/QpQhNTkcKH2CkUFMm5VJo5b5Bm',NULL,'2025-07-05 12:57:38','2025-07-05 12:57:38'),
(234,'Elisha N/A Mboya','elishajanabi254@gmail.com',NULL,'$2y$12$qtwb9jNAZHDWnS22QPkW6uCBZOck5GBmEHlCDtidePUxCK3CIX5O2',NULL,'2025-07-05 12:57:42','2025-07-05 12:57:42'),
(235,'JAYSON N/A OMBIMA','andreajason116@gmail.com',NULL,'$2y$12$oe8h9cdKzzn/ai0HbFwDB.l8SDXlCk/PfHvVTRNuxtyAr2s2NPkMS',NULL,'2025-07-05 12:57:45','2025-07-05 12:57:45'),
(236,'ERICK ODHIAMBO OKOTH','okotherick8@gmail.com',NULL,'$2y$12$DxyTbrTAJQWqjt0WSWYAROnsJkbAu3af.hyzXduxn0AO7YFZdHVcG',NULL,'2025-07-05 12:57:50','2025-07-05 12:57:50'),
(237,'Kayian N/A Amos','tateamos49@gmail.com',NULL,'$2y$12$01lHz7Roggbn1PUak96HaOBRKzIUL/RDma88J9JrYDvo4G2if69Bu',NULL,'2025-07-05 12:57:53','2025-07-05 12:57:53'),
(238,'NELLY ADHIAMBO OMONDI NELLY ADHIAMBO','adhiambonelly48@gmail.com',NULL,'$2y$12$d.F7aYU939j2wuWKYqr4jeIDfABxGtdksic4vphw/WDhO1hNTV1s6',NULL,'2025-07-05 12:57:57','2025-07-05 12:57:57'),
(239,'Tsiamazi Kinamugoli Ebby','ebbnetebby706@gmail.com',NULL,'$2y$12$PDcXY8v0d0rSGT/H7JPsquaTsReG4hKw923bsTp.WZQtN6kugvgDi',NULL,'2025-07-05 12:58:12','2025-07-05 12:58:12'),
(240,'Mbaika Lilian Ndile','lilianmikerosa@gmail.com',NULL,'$2y$12$3NIvd5QbZ8634eohEi/xc.vxd57uIOriILCe9nF263e2h8XuuagEq',NULL,'2025-07-05 12:58:25','2025-07-05 12:58:25'),
(241,'BRIAN OTIENO MUSALIA','braxbrian830@gmail.com',NULL,'$2y$12$ohXE/YQ1J3lcBEWeJkiPAOAHx0z2MrVDkWd.BQ2hT0jx0Lc.1AfWy',NULL,'2025-07-05 12:58:46','2025-07-05 12:58:46'),
(242,'Dorothy Mukami Munywoki','Mukamidorothy2@gmail.com',NULL,'$2y$12$erXIAyccM03eJShCduzBPOMx672I0IALUVsbe0h3xetghx.0C8apG',NULL,'2025-07-05 12:59:16','2025-07-05 12:59:16'),
(243,'Maureen Wanjiru Nduta','dmaurhin02@gmail.com',NULL,'$2y$12$5ShGyuj9D80LcjAXX5MhauFs5KsyFOw2FNXzI0YzuIRtVzb7Yh9SK',NULL,'2025-07-13 07:53:08','2025-07-13 07:53:08'),
(244,'ELBURS EWOI EKAI','elburzekai@gmail.com',NULL,'$2y$12$FMm1/K03Z9UnJH/e2besAepsiBQh3sG2AE4ibF5e.yHns7/IS7cfe',NULL,'2025-07-13 07:53:17','2025-07-13 07:53:17'),
(245,'ELIZABETH NGINA MUTISO','mutisoelizabeth15@gmail.com',NULL,'$2y$12$qjEtsJTBR2gzmpSKbKRlC.ZOddq8Nc0CeCeQ/XL6M2.Y/cofJQNDW',NULL,'2025-07-23 05:11:23','2025-07-23 05:11:23'),
(246,'PAULINE YABESI OCHIENG','paulineyabesi@gmail.com',NULL,'$2y$12$d/B38S358NtfAtMsQFI.3ezd7ErqN.uzAWOOOJ8butxy4ZOtvAC4S',NULL,'2025-07-25 13:26:15','2025-07-25 13:26:15'),
(247,'Denis N/A Oduor','denisoduor@gmail.com',NULL,'$2y$12$SrTPPApQiGuRYYfOd4O28ulIpKrs1cSnp4WD11l/pZRK41DrFLT5G',NULL,'2025-07-31 04:07:42','2025-07-31 04:07:42'),
(248,'Moses Maina Irungu','mosesirungu515@gmail.comm',NULL,'$2y$12$C/UsknNMD.PhwpesgL3IN.SNrp5CLv7Xdw/90fdzPB2iBzJzKLyKC',NULL,'2025-07-31 04:07:52','2025-07-31 04:07:52'),
(249,'THOMAS N/A PETER','thomaswambua107@gmail.com',NULL,'$2y$12$r9r6iCqfw8b35lMxMDo52Oeu4Z61/SSbFCDJswrM/nIaINHg97tkS',NULL,'2025-08-11 04:28:15','2025-08-11 04:28:15'),
(250,'Joshua Njane Kuria','njanejoshua2@gmail.com',NULL,'$2y$12$WFe5PRoW8YUNtIZft2DUxOSbFgbkNoWvhpmPQipFYMco1pZp96dt2',NULL,'2025-08-11 04:28:21','2025-08-11 04:28:21'),
(251,'Darian Kipkoech Langat','darian1610911@gmail.com',NULL,'$2y$12$FHHaM3GlfVWvLX3vTs4H0.wka9.pZ4ysSLSE5JATxR7PzykeR77KO',NULL,'2025-08-30 01:59:30','2025-08-30 01:59:30'),
(252,'SAMWEL OMONDI OMOLLO','samwelomondi346@gmail.com',NULL,'$2y$12$.N8qniqwDJocLbTGONyxSOV7hoc3mDleMmPGUEHYsKEXUd/aGqDii',NULL,'2025-08-30 01:59:56','2025-08-30 01:59:56'),
(253,'Jamila N/A Rashid','rashidjamila592@gmail.com',NULL,'$2y$12$iCKIq/bURjcE1/GffmfVLuWctJ0833NeZYxzfL0YG9NsSkgqh0E5O',NULL,'2025-08-30 02:00:08','2025-08-30 02:00:08'),
(254,'JOHNSON OPONDO OLIENG','oliengjohnny92@gmail.com',NULL,'$2y$12$hyrsCS6Q4/ngJ8Fllh1oT.DKo/m3t/JPndGcHWkFxNWdzLEX.2v2S',NULL,'2025-08-30 02:00:14','2025-08-30 02:00:14'),
(255,'Lydiah wanguu Gathiru','lydiahwangui60@gmail.com',NULL,'$2y$12$sicEsUhWYA5JQxM2kSKuWeNYdxvE5ZBIoGsxevmcAMbT7P9A45v.O',NULL,'2025-08-30 02:00:18','2025-08-30 02:00:18'),
(256,'RAHMA N/A BASHIR','bashirrahma38@gmail.com',NULL,'$2y$12$i4dPsMVvihs99cPa8yF6CuAdZQRm0xWBbIJ/lsL1.t03BhSUeEgzy',NULL,'2025-08-30 02:00:22','2025-08-30 02:00:22'),
(257,'PAMELAH AKINYI LUSALA','pamstaicy@gmail.com',NULL,'$2y$12$MbtgplUV12Sez/5M6wV1L.GGcSjsGDEy11vFzvBdFv9b/TaB9lxNa',NULL,'2025-08-30 02:00:26','2025-08-30 02:00:26'),
(258,'Bonface Mwangi Wambui','bonfacewambui2@gmail.com',NULL,'$2y$12$dZ93B0Udmqdl0PEerncTF.bqhANHiy4nr5cjQmlQVbiwzMxE9GEUm',NULL,'2025-08-30 02:00:29','2025-08-30 02:00:29'),
(259,'Calvin N/A Atsiaya','michaelpaisly@gmail.com',NULL,'$2y$12$CvF7eNMiaihGqAdNAJJJuuXAPHux84r7G5aPFjucU4fv5hcoi7e8.',NULL,'2025-09-01 03:07:15','2025-09-01 03:07:15'),
(260,'Rodgers Cedrick Echakan','rodgerscedrick@gmail.com',NULL,'$2y$12$Y4ODeJ6Xt5ePhLIY/Ma9fO42Rv0xAfCrYy5tsnWGJKMK5u8rGSHWe',NULL,'2025-09-03 04:52:25','2025-09-03 04:52:25'),
(261,'NELLY N/A CHEPKEMBOI','mumdarmian89@gmail.com',NULL,'$2y$12$8aw/iDt9N625.yCYfvouyO/dinNCzMwt.gJCrwEB9Fhjys3mrWbE6',NULL,'2025-09-03 04:52:38','2025-09-03 04:52:38'),
(262,'Brian Ekai Loduk','lodukbrian874@gmail.com',NULL,'$2y$12$TdTnwLHHs21H13TSUzChIexBAbGTl6dyAQAz81HhLHE/QBHtm51AW',NULL,'2025-09-03 04:52:47','2025-09-03 04:52:47'),
(263,'YOHANINA JACINTA AOKO NETO','yohaninaaoko@gmail.com',NULL,'$2y$12$Qy6l5/fvgax0.lBQZ/Yz2OylOo/DTSeDHaSLr1lE5W1752Tf1as8.',NULL,'2025-09-04 00:14:00','2025-09-04 00:14:00'),
(264,'William Odino Otieno','williamodino@gmail.com',NULL,'$2y$12$X/CFGPA.kjGWz4SZYqSDw.ltcYSJPsPbKR7pwjz1sbZobhI2Hh62e',NULL,'2025-09-13 01:49:56','2025-09-13 01:49:56'),
(265,'GETRUDE NZISA NGALA','gertrudecharlie@gmail.com',NULL,'$2y$12$dheHxXZog/Z8yGcwm6qr3OZITzIUIS0SbUjHb9RRHWfeETCe81LFu',NULL,'2025-09-13 01:50:23','2025-09-13 01:50:23'),
(266,'Thomas Kiptonui Ochieng','thomasochieng994@gmail.com',NULL,'$2y$12$P.QQua5S4NNTjFHxOwEkyeOGsFS.Ftv7tz/GcgqLo/XNMQML3uS3y',NULL,'2025-09-13 01:50:24','2025-09-13 01:50:24'),
(267,'CAROLINE JEMUTAI CHELIMO','chelimocaroo@gmail.com',NULL,'$2y$12$8unsPgS7oedlsE3VJQYgXeSCqnPV.RA7VoqNUhBlwr.MLT67ZnRBK',NULL,'2025-09-16 05:23:18','2025-09-16 05:23:18'),
(268,'JACKLINE AUMA ODHIAMBO','jacklineauma586@gmail.com',NULL,'$2y$12$t4MQF65ggl9Hzl1zV4QDOO.cOcZX9kUGRVeWGRXAdRN2k6rFEw2d2',NULL,'2025-09-16 05:23:34','2025-09-16 05:23:34'),
(269,'Lorenzo Nguku Mwaura','lorenzomwaura04@gmail.com',NULL,'$2y$12$kYQeLCCu0VWcN62BjvLEfeSi/euid7HyJiGM070tkEURaMdhIrd4u',NULL,'2025-09-16 05:23:43','2025-09-16 05:23:43'),
(270,'Ramadhan Salim Ngowa','ngowameraki@gmail.com',NULL,'$2y$12$eXfp3rW4JRPis0fpWGJhzedftRkVOlyvkS8/gySvX8DAaqPpxqSki',NULL,'2025-09-25 07:41:43','2025-09-25 07:41:43'),
(271,'Tilen Ochieng Otieno','tilenotieno@gmail.com',NULL,'$2y$12$mj2yQmJ4uMID1W153ofxq.nlzFjlGayKG4Db1AfkT8jA60YR0l8Y2',NULL,'2025-09-25 07:41:52','2025-09-25 07:41:52'),
(272,'Stephen Kyalo Ndunge','ndungestephen@gmail.com',NULL,'$2y$12$lDgCf4XB0zfeOw/So/GPpuhrUroMIiQNk3/C5913nQC89CZwKaYBm',NULL,'2025-09-25 07:42:00','2025-09-25 07:42:00'),
(273,'Lisper Wambui Muthoni','wambuilisper91@gmail.com',NULL,'$2y$12$43UkrRjCkbeLhUKHFCSdXuEsk2FsyQgJSdLZdvrrkmRp6McVdsWcW',NULL,'2025-09-25 07:42:08','2025-09-25 07:42:08'),
(274,'Angela N/A Mutua','mutuaangela20@gmail.com',NULL,'$2y$12$JnD29ZrmsdrhSbBTqtLzauI.cYrBeQggIAGqcU9IFMbvJDh0thDhi',NULL,'2025-10-01 06:22:20','2025-10-01 06:22:20'),
(275,'Fred Onchuru Ayaga','fredayaga1@gmail.com',NULL,'$2y$12$lDz2Xvbq.OJB8.j0r5jdSuuqmiI78jd6neBR5dZS.s9aYON/cH8VW',NULL,'2025-10-01 06:22:23','2025-10-01 06:22:23'),
(276,'Zedekia Okumu Mudondo','okumuzedekia89@gmail.com',NULL,'$2y$12$8gnK2ZRFTJpMLwB3WRAAku4E1eCfAC7MqNQkQsqGjhJis.VGOyfJG',NULL,'2025-10-01 06:22:42','2025-10-01 06:22:42'),
(277,'VINCENT KPROTICH MUTAI','kiprotichmutz@gmail.com',NULL,'$2y$12$LoG9pAm0VZDAgGtp3L.8G.XOHHrMFWS0BQPYDJhjsTFpuckUy4pZS',NULL,'2025-10-01 06:22:50','2025-10-01 06:22:50'),
(278,'Caroline N/A Kemboi','kemboicaroline21@gmail.com',NULL,'$2y$12$rmKBx47O/euGOwFQrrVYf.c7s1zE2m4eksUodfAJjdvFWqfJUFb/S',NULL,'2025-10-01 06:22:55','2025-10-01 06:22:55'),
(279,'EMMANUEL KIPLAGAT KOILEGE','koilegemmanuel@gmail.com',NULL,'$2y$12$dEeECEbLo1vq6j35Z4qQ/eMJ/F0lSuIzEaHTSl/L.PHbtG8DhfkV2',NULL,'2025-10-01 06:23:05','2025-10-01 06:23:05'),
(280,'MAURICE RUWA MWERO','mauricemwero86@gmail.com',NULL,'$2y$12$yy47kwihREWo5t/i/NI2su5X1of964h5TVnIEGKPN4taQR0.qghPi',NULL,'2025-10-01 06:23:18','2025-10-01 06:23:18'),
(281,'DAPHINE N/A CHEPKOECH','daphkoech0@gmail.com',NULL,'$2y$12$GA8yJ039N2e/AKboF6LodeQH/ZwO1XJ9O3EA5gyQ69fickIMQfCy2',NULL,'2025-10-01 06:23:27','2025-10-01 06:23:27'),
(282,'OLIVER WAFULA SIMIYU','wafulaoliver4@gmail.com',NULL,'$2y$12$58YCAmn8gHWdlhwE2vmNnuJu2DurqWknewWidp6ocwyDQEdPvfJaC',NULL,'2025-10-01 06:23:40','2025-10-01 06:23:40'),
(283,'Patricia Nduku Mutua','ndukupatricia300@gmail.com',NULL,'$2y$12$QxZUc6aoBJbG3PNtKTnFLOnV3ycyVv0PkzQ2jRNf90FIvfllydW/6',NULL,'2025-10-27 11:23:39','2025-10-27 11:23:39'),
(284,'ABDIKADIR ADDOW ALI','shankare666@gmail.com',NULL,'$2y$12$RqieiNDpg8gnXktxKOaXS.hiQBx9fslyI5RpCGPfkf.Bbg/fLIt5O',NULL,'2025-10-27 11:24:02','2025-10-27 11:24:02'),
(285,'MARY WAMBAIRE WANGUI','marywambaire117@gmail.com',NULL,'$2y$12$RbIeIRvqmxz.N4rNpiXQhubpIpIfX49uJK6wP4rlKsnq9LSJxbTOq',NULL,'2025-10-27 11:24:14','2025-10-27 11:24:14'),
(286,'ELIAS N/A ODHIAMBO','ellyjuma38@gmail.com',NULL,'$2y$12$CJQIdcYCZR15uQ4WwPc5de35CquAqb0VfS.5sldf8hfFUeK4sgGoS',NULL,'2025-10-27 11:24:26','2025-10-27 11:24:26'),
(287,'JAMES BETHUEL OYOH','bethueljames30@gmail.com',NULL,'$2y$12$yzknvoII4yXrRfoXQXV.q.6s7nLjjL0XLQ/92UlMVSBUwcm0kI3EO',NULL,'2025-11-07 12:29:43','2025-11-07 12:29:43'),
(288,'Anthony Kithi Yaa','yaaanthony@gmail.com',NULL,'$2y$12$QV3vXJuyn2gApc/WEkU1DeVbt9A0FI8IgpZ2TxblNqKKCExvKT8Wa',NULL,'2025-11-07 12:30:09','2025-11-07 12:30:09'),
(289,'Cecilia N/A Kingo’ri','kingoricecilia52@gmail.com',NULL,'$2y$12$xbOZTAssR3cDWLeINJGGTuy/UhB/QAoqgt7Xxpe554R8L6msHROom',NULL,'2025-11-07 12:30:27','2025-11-07 12:30:27'),
(290,'Esther Mukwana Esther Wanyama','wanyamaesther1993@hmail.com',NULL,'$2y$12$CtK7qE1d4KVvivyj6sUkEuj72Se1zacZFaoeWouWycpoZXQj5cd/C',NULL,'2025-11-11 08:52:49','2025-11-11 08:52:49'),
(291,'WYCLIFFE N/A MAMRA','wycliffemamra@gmail.com',NULL,'$2y$12$LkmOI.QS0MsGShQ3cM.qwuZRqkD1Ay8vGgG3JNn6sE8OlE0K2zC7W',NULL,'2025-11-11 08:53:02','2025-11-11 08:53:02'),
(292,'Peris Wambui Ngugi','perisngugi184@gmail.com',NULL,'$2y$12$e6yavvVLr6zWt7whfcdv9esT7qIxIt48CKLt8I3apk7hCJLiABsNG',NULL,'2025-11-11 08:53:16','2025-11-11 08:53:16'),
(293,'Mwangi N/A Moses','mwangimoses778@gmail.com',NULL,'$2y$12$p8dQixmJguaOW2M19CmFwedZdbwfuH5Q4UNBYONLcr.eIqKj/Ud/6',NULL,'2025-11-11 08:53:22','2025-11-11 08:53:22'),
(294,'Maloba Atieno Mouvine','amosorembo4@gmail.com',NULL,'$2y$12$7Sy8kkwHBXUSSUpE515v7.ck6ujFwOgYEurCeiq4WTvh9THD.tQOO',NULL,'2025-11-15 14:34:51','2025-11-15 14:34:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cleversc_clevers'
--

--
-- Dumping routines for database 'cleversc_clevers'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-17  8:40:38
