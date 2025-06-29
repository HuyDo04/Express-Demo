/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tiktok_clone
-- ------------------------------------------------------
-- Server version	11.8.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `queues`
--

DROP TABLE IF EXISTS `queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `queues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'pending',
  `type` varchar(255) DEFAULT NULL,
  `payload` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues`
--

LOCK TABLES `queues` WRITE;
/*!40000 ALTER TABLE `queues` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `queues` VALUES
(1,'comleted','send_verify_email','{\"userId\":139}','2025-06-20 00:58:03','2025-06-20 00:58:07'),
(2,'reject','send_verify_email','{\"userId\":138}','2025-06-20 01:03:10','2025-06-20 01:03:10'),
(3,'reject','send_verify_email','{\"userId\":138}','2025-06-20 01:03:53','2025-06-20 01:03:53'),
(4,'comleted','send_verify_email','{\"userId\":136}','2025-06-20 01:04:26','2025-06-20 01:04:30'),
(5,'pending','send_verify_email','{\"userId\":139}','2025-06-20 01:10:20','2025-06-20 01:10:20'),
(6,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 01:11:37','2025-06-20 01:12:25'),
(7,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 01:22:36','2025-06-20 01:22:40'),
(8,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 01:25:19','2025-06-20 01:25:55'),
(9,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 01:25:59','2025-06-20 01:26:03'),
(10,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 09:27:01','2025-06-20 09:56:25'),
(11,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:06:00','2025-06-20 10:06:04'),
(12,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:08:00','2025-06-20 10:08:03'),
(13,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:10:00','2025-06-20 10:10:03'),
(14,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:12:00','2025-06-20 10:12:03'),
(15,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:14:00','2025-06-20 10:14:04'),
(16,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:15:58','2025-06-20 10:16:02'),
(17,'pending','send_email','{\"userId\":139}','2025-06-20 10:16:00','2025-06-20 10:16:00'),
(18,'pending','send_email','{\"userId\":139}','2025-06-20 10:17:00','2025-06-20 10:17:00'),
(19,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:17:51','2025-06-20 10:17:54'),
(20,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:18:00','2025-06-20 10:18:04'),
(21,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:18:10','2025-06-20 10:18:13'),
(22,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:18:20','2025-06-20 10:18:24'),
(23,'comleted','sendVerifyEmailJob','{\"userId\":139}','2025-06-20 10:18:30','2025-06-20 10:18:33');
/*!40000 ALTER TABLE `queues` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `sid` varchar(255) NOT NULL,
  `data` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sessions` VALUES
('03cf8dea-252b-4d8b-b564-a189152e58ee',NULL,'2025-06-03 12:25:47','2025-06-03 12:25:47'),
('10f69283-9b6e-40d9-96fd-99d225aa6185',NULL,'2025-06-03 12:20:06','2025-06-03 12:20:06'),
('1313e36e-448e-49e9-a56b-b6dfa1f74f47','{\"userId\":121}','2025-06-03 12:33:26','2025-06-03 12:34:59'),
('16047727-64c8-404f-8adc-69aa5bebe9bc',NULL,'2025-06-03 12:25:38','2025-06-03 12:25:38'),
('1647b46a-6e60-4a56-a51c-ae1406049d31','{\"userId\":121}','2025-06-03 12:38:08','2025-06-03 12:38:15'),
('3b942ab0-d7bb-4e32-b663-9e674f032971','{\"userId\":116}','2025-06-13 11:06:21','2025-06-13 11:45:25'),
('4197f342-94c3-42f3-a389-3bfa2f17c64a','{\"userId\":115}','2025-06-15 21:22:46','2025-06-15 22:22:45'),
('4ae7afa3-bc24-4d3f-90ba-0a12049d2d7d','{}','2025-06-03 12:26:02','2025-06-03 12:26:02'),
('4e1dc3b5-d011-475d-a4c2-7c9031bcf30b','{}','2025-06-03 12:30:00','2025-06-03 12:30:00'),
('50e1d383-dca0-4007-8ec1-b006e8dbd9f5','{\"name\":\"nguyen van a\",\"userId\":121}','2025-06-02 17:31:50','2025-06-03 11:43:39'),
('60b34f4a-3e0e-424b-9767-2cae63b120a4','{\"userId\":115}','2025-06-13 10:43:13','2025-06-13 10:43:19'),
('65270f0e-56df-41ec-8554-e11044cdff70',NULL,'2025-06-03 12:25:46','2025-06-03 12:25:46'),
('68bac218-7bf6-457c-a133-66ba4349a614','{\"userId\":121}','2025-06-03 12:36:20','2025-06-03 12:36:28'),
('71d5ad8f-c9a4-487f-819e-49553ceb67ac',NULL,'2025-06-03 12:18:47','2025-06-03 12:18:47'),
('72b9ece5-0226-422b-ae3b-0f65c6b961b8',NULL,'2025-06-03 12:25:45','2025-06-03 12:25:45'),
('7cd9d81b-b4ba-438f-9bd3-01f3fbed7d95',NULL,'2025-06-03 12:25:48','2025-06-03 12:25:48'),
('90d8bbe2-0479-4e65-80fa-50d43f3301cf','{\"userId\":115}','2025-06-13 11:04:42','2025-06-13 11:06:00'),
('940e4ad1-2852-4953-ba50-3351f5aebd3a','{\"userId\":115}','2025-06-14 22:07:26','2025-06-15 22:16:01'),
('9b602834-df1f-43d7-96cf-5dff5d6d6122','{\"userId\":121}','2025-06-03 12:22:04','2025-06-03 12:22:21'),
('9d66d52f-ef1f-46bb-bb5a-669031c89cef','{\"userId\":139}','2025-06-17 23:45:46','2025-06-17 23:47:12'),
('a080206f-09e8-476a-94cc-ac1981c01d68',NULL,'2025-06-03 12:18:50','2025-06-03 12:18:50'),
('a7ceb06a-aee2-4117-b424-eb481cb10a13',NULL,'2025-06-03 12:19:07','2025-06-03 12:19:07'),
('aaf6c9c1-3d14-4904-84da-c8b77ce1ac80',NULL,'2025-06-03 12:18:44','2025-06-03 12:18:44'),
('b2351fc4-1ee9-42b3-a4ca-a3ee8b758abd',NULL,'2025-06-03 12:25:47','2025-06-03 12:25:47'),
('c665cde6-7640-4f03-be61-6bb906c5700c',NULL,'2025-06-03 12:28:36','2025-06-03 12:28:36'),
('cd31b2b8-98d7-4808-9e53-cfaa159cd3da','{}','2025-06-13 10:18:58','2025-06-13 10:18:58'),
('cebe28e6-010c-40fa-a6ca-74d3a9103a4f',NULL,'2025-06-03 12:28:01','2025-06-03 12:28:01'),
('d137d4e7-1c45-4958-9757-b42decce73aa',NULL,'2025-06-03 12:25:47','2025-06-03 12:25:47'),
('daa84583-e428-465d-b54d-305efc581f43','{}','2025-06-17 11:56:27','2025-06-17 12:14:00'),
('e5b0ae28-ff1d-4a41-976f-316be65825da',NULL,'2025-06-03 12:25:45','2025-06-03 12:25:45'),
('ec2a794d-1b81-4824-b167-f194d54eaabc','{\"userId\":115}','2025-06-13 10:20:07','2025-06-13 10:24:57'),
('ee97692d-b76f-4afa-a04e-1a6ebd9707d9','{\"userId\":139}','2025-06-20 01:02:30','2025-06-20 09:29:27'),
('fcf2212f-dd8b-423e-90fd-5071e806a835',NULL,'2025-06-03 12:25:46','2025-06-03 12:25:46');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `intro` text DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `email_sent_at` datetime DEFAULT NULL,
  `email_seen_at` datetime DEFAULT NULL,
  `blocked_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_unique_index` (`username`) USING BTREE,
  UNIQUE KEY `email_unique_index` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `users` VALUES
(1,'Vu Huy ','Do','hdo0412','huydooo@gmail.com',NULL,NULL,'',NULL,'2003-04-12','Hi','Hello','male','','active',1,NULL,NULL,NULL,NULL,'2025-05-13 00:00:00','2025-05-13 00:00:00'),
(4,'Minh','Tung','tungminh','tungminh@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://picsum.photos/200/300',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://picsum.photos/200/300',NULL,NULL,NULL,NULL,NULL,NULL,'2025-05-15 23:09:07','2025-05-15 23:09:07'),
(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://picsum.photos/200/300',NULL,NULL,NULL,NULL,NULL,NULL,'2025-05-15 23:10:43','2025-05-15 23:10:43'),
(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://picsum.photos/200/300',NULL,NULL,NULL,NULL,NULL,NULL,'2025-05-15 23:10:47','2025-05-15 23:10:47'),
(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://picsum.photos/200/300',NULL,NULL,NULL,NULL,NULL,NULL,'2025-05-15 23:14:42','2025-05-15 23:14:42'),
(16,'Nguyen Van','A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://picsum.photos/200/300',NULL,NULL,NULL,NULL,NULL,NULL,'2025-05-15 16:14:55','2025-05-15 16:14:55'),
(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://picsum.photos/200/300',NULL,NULL,NULL,NULL,NULL,NULL,'2025-05-15 23:15:02','2025-05-15 23:15:02'),
(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://picsum.photos/200/300',NULL,NULL,NULL,NULL,NULL,NULL,'2025-05-15 23:15:21','2025-05-15 23:15:21'),
(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://picsum.photos/200/300',NULL,NULL,NULL,NULL,NULL,NULL,'2025-05-15 23:16:09','2025-05-15 23:16:09'),
(20,'Brad','Lueilwitz','brad_lueilwitz54','brad_lueilwitz@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1999-11-03','Celebrer.','Baiulus statua artificiose architecto denuncio tergiversatio. Cribro corrumpo fugiat tamdiu summisse coniuratio tergeo. Quisquam aegrotatio cattus adhuc bellicus spero tolero.\nVulticulus civitas uter vis voluptatem animadverto sursum facilis correptius assentator. Texo subnecto anser. Talio tepidus solutio cohors aestas debitis beneficium velit.','female','https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/44.jpg',NULL,0,NULL,NULL,NULL,NULL,'2022-04-17 12:56:57','2022-04-17 12:56:57'),
(21,'Janet','Boyer','janet.boyer','janet_boyer11@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1953-11-26','Cervus arma cultura.','Varietas cribro vis comminor asper quam aduro. Aperiam ciminatio calcar. Alius auxilium correptius coerceo attonbitus.\nTremo ademptio appono crastinus venustas bene. Sed adiuvo arcesso. Demum nisi abscido deprimo mollitia cui rem deserunt alter aspernatur.\nAncilla absens deporto spiritus tantum accusamus acies ustulo vester conatus. Solum comparo virtus sollers adsum trucido conforto spiritus video. Amplitudo auditor fuga cornu totus canis bene acies contego.','male','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2024-07-20 02:12:40','2024-07-20 02:12:40'),
(22,'Maryam','Koch','maryam.koch98','maryam_koch@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'2006-03-06','Placeat provident absorbeo.','Esse ducimus auxilium defleo copia totam sublime patria infit arto. Magni carmen optio cohaero taceo cetera vulnus. Cubitum suppellex conduco desidero celebrer advoco conduco.\nSuggero vinco laudantium ater ventus vox adversus uterque cetera. Vae tego temeritas absconditus utique delectus depereo callide cultura ventosus. Dolorem demergo vespillo appello.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,'2025-05-16 02:18:12','2024-08-11 23:01:08','2024-08-11 23:01:08'),
(23,'Kylee','Cassin','kylee_cassin','kylee_cassin@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1956-10-18','Cunctatio provident denuncio.',NULL,'female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2024-10-28 14:29:37','2024-10-28 14:29:37'),
(24,'Carlee','Gleason','carlee_gleason','carlee_gleason35@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1974-01-30','Admoneo.','Amissio timidus alii umerus spero. Aegrus vilitas tenetur via cedo demum sto arbitro tolero. Voco contabesco spargo vinitor debitis laborum solio validus.\nAccusator suggero cui. Tollo depulso timor vaco civis umquam confero desparatus ambitus. Cupio mollitia vesica.\nAccommodo culpo degero spero. Vulgus vomer communis teneo ad aduro deripio compello. Administratio maxime tactus depereo unde velum quas cohibeo.','male','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2024-04-22 13:58:45','2024-04-22 13:58:45'),
(25,'Rodolfo','Friesen','rodolfo_friesen','rodolfo_friesen57@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1982-10-21','Approbo.','Apto acsi tergiversatio. Verumtamen convoco canis tutamen ut vomer possimus tui tres. Stipes solus anser hic vestrum utrimque.\nOcer excepturi adipisci talus volup appello molestias inventore. Contra agnosco aureus vulgus ver corroboro utrimque velum. Tristis apostolus amiculum cetera desolo antea.\nTrepide amitto verumtamen certe apud appono arx aetas nesciunt. Tutis ab voro vilis confido velum tabula ipsa exercitationem debeo. Tempora blanditiis certe.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-02-01 12:32:29','2022-02-01 12:32:29'),
(26,'Giles','Kertzmann-Bechtelar','giles_kertzmann-bechtelar','giles_kertzmann-bechtelar91@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1956-05-28','Crepusculum.',NULL,'other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-01-26 10:54:41','2022-01-26 10:54:41'),
(27,'Xavier','Sipes','xavier_sipes38','xavier_sipes@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1967-05-30','Damno suadeo.','Comis amplexus demum stillicidium complectus aliqua expedita suus. Vinco bardus confido audeo arbustum recusandae. Adeptio coerceo taedium tricesimus quam.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-10-21 06:24:42','2024-10-03 22:00:44'),
(28,'Jessie','Glover','jessie_glover','jessie.glover@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1961-04-05','Cenaculum abutor antiquus.','Acerbitas depopulo aperio acsi stipes. Accusator totidem voveo curia temporibus. Tero despecto sperno ocer.\nIure adulescens doloribus spiculum cum. Subnecto calcar ad vomica utroque ad avarus cohibeo. Quam aeneus capitulus testimonium adulescens.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-07-16 01:34:21','2022-07-16 01:34:21'),
(29,'Frederick','Franecki','frederick.franecki','frederick.franecki@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1996-09-17',NULL,NULL,'male','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-03-11 17:45:27','2023-03-11 17:45:27'),
(30,'Alexis','Schultz','alexis.schultz5','alexis.schultz85@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1951-06-13',NULL,'Tredecim vulgaris villa apto tonsor cauda ait. Aspernatur collum votum quae temeritas cur vix curso. Arx vorago magni recusandae deficio.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-05-20 02:40:02','2024-11-02 07:37:35'),
(31,'Emelia','Prosacco','emelia.prosacco99','emelia.prosacco@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1965-01-31',NULL,'Curia aurum facere veritatis uter. Nisi adversus turbo calculus. Cunctatio demo sol suppellex vestrum.\nAnte absque defessus. Admiratio illo dignissimos calco admitto. Truculenter maiores audio quo nam adaugeo spargo.','male','https://picsum.photos/200/300',NULL,0,NULL,NULL,NULL,NULL,'2022-08-09 08:22:47','2025-05-08 18:28:50'),
(32,'Vernie','Goyette','vernie_goyette','vernie.goyette@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'',NULL,'1961-07-24','','Uberrime cinis astrum arto sequi super. Beatus undique volubilis. Capitulus consequuntur alienus ab tamdiu.','other','https://avatars.githubusercontent.com/u/47826160','inactive',1,NULL,NULL,NULL,NULL,'2024-12-04 15:34:59','2024-12-04 15:34:59'),
(33,'Lilian','Hauck','lilian_hauck36','lilian_hauck@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1944-11-07',NULL,NULL,'female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-04-15 22:58:50','2024-12-26 00:58:22'),
(34,'Ima','Bradtke','ima.bradtke68','ima.bradtke@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1955-10-26','Varietas vilicus adinventitias.','Tabgo canto demoror armarium. Ventosus suus vulgo talis sollers verbera. Sumptus terga culpa amaritudo vinum voveo quibusdam provident coadunatio.','female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-02-15 18:40:56','2022-02-15 18:40:56'),
(35,'Franz','Emard','franz_emard','franz_emard@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1958-01-25','Voluntarius necessitatibus.','Acer validus umquam clarus absum corroboro sui. Tego consequuntur decor tardus in. Turbo venio cito acsi defleo despecto similique adulatio abutor.\nTeres deleniti trans suffragium tero delinquo turba atrox claro. Dedico quos absque pauci statua inventore minima vobis audax curtus. Sursum vetus usitas varietas vito trado solio volva.\nAestivus amissio statim quos audentia universe. Claro vorax vicissitudo corroboro id acer nulla. Tot adfectus amaritudo atavus placeat acidus aestas caecus absens.','male','https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/52.jpg',NULL,1,NULL,NULL,NULL,NULL,'2022-05-12 15:42:23','2022-05-12 15:42:23'),
(36,'Nina','Kuhlman','nina_kuhlman32','ninaupdate@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'',NULL,'2006-11-04','Surgo solitudo.','Sapiente celer sumo alveus delinquo arcesso blandior tero testimonium comminor. Suggero iste tener videlicet porro. Claro doloribus volutabrum bellum curriculum.','other','Ảnh chụp màn hình 2025-02-27 195518.png','active',1,NULL,NULL,NULL,NULL,'2025-05-01 19:02:17','2025-05-01 19:02:17'),
(37,'Monte','Stoltenberg','monte.stoltenberg77','monte_stoltenberg@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1967-06-03','Sperno auctor.','Ciminatio temporibus beneficium ciminatio cuius. Conduco strenuus suscipit termes. Umquam cohors canonicus capto avaritia colligo.\nSubstantia adulatio argumentum conforto absorbeo. Trans benigne apto. Clementia balbus solvo ars armarium.','male','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2024-07-10 09:33:50','2024-07-10 09:33:50'),
(38,'Kathleen','Bergstrom','kathleen.bergstrom','kathleen.bergstrom@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1999-11-22',NULL,NULL,'female','https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/51.jpg',NULL,1,NULL,NULL,NULL,NULL,'2022-07-20 01:20:34','2022-07-20 01:20:34'),
(39,'Leanne','Wisoky','leanne.wisoky26','leanne_wisoky30@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1975-05-17','Volutabrum virtus debeo.',NULL,'male','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-10-11 02:23:50','2022-10-11 02:23:50'),
(40,'Lesly','Aufderhar','lesly.aufderhar','lesly.aufderhar4@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1968-07-09',NULL,NULL,'female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-08-24 23:54:17','2023-08-24 23:54:17'),
(41,'Juston','Roberts','juston.roberts','juston_roberts@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1946-11-09','Subiungo depono iure.','Abundans venio quo usque tribuo optio tametsi conforto. Rerum capto varius sono sumo deripio cultura vulnero temperantia aestas. Ciminatio viriliter sto vado defungo colo.\nTaceo defendo tunc confugo abbas uberrime. Suffragium amaritudo summa tertius abscido auctor. Solitudo demum appello porro.\nVoro volva volup. Odio addo cado abeo tergo sophismata voluptatem. Arbustum supplanto incidunt cras teres verbera conatus vulpes aliqua cogo.','other','https://picsum.photos/200/300',NULL,0,NULL,NULL,NULL,NULL,'2022-05-05 08:45:25','2022-05-05 08:45:25'),
(42,'Marisol','Herzog','marisol_herzog42','marisol.herzog32@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1988-12-13','Corrupti pecco socius.',NULL,'other','https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/85.jpg',NULL,1,NULL,NULL,NULL,NULL,'2022-08-27 16:02:24','2024-04-21 20:31:49'),
(43,'Camila','Roberts','camila.roberts','camila.roberts41@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1995-11-16',NULL,'Cunae corrumpo vitiosus culpa autem copia consequatur strues suadeo. Illum vigilo aliqua deludo. Villa spectaculum mollitia adipiscor vilitas.\nUtrimque spoliatio suus victus attollo tollo earum sono. Viridis non degero trans. Demens campana animi deinde.\nArs cubicularis varius vobis. Pax sodalitas cursus centum quo coma thema spectaculum corrumpo. Turba defendo arcus tener suffoco testimonium abstergo.','female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-03-29 05:21:39','2022-03-29 05:21:39'),
(44,'Keanu','Carroll','keanu_carroll','keanu.carroll7@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1950-08-24','Aveho.',NULL,'male','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-10-04 00:47:23','2022-10-04 00:47:23'),
(45,'Mazie','Boyer','mazie.boyer79','mazie_boyer7@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1958-02-14',NULL,'Temptatio teres bene denique. Ambulo statua fugiat thorax et conicio tubineus cohaero voveo pax. Vulticulus adipisci victoria demum crastinus terga vito.\nCapto amicitia eaque addo cognomen ea argumentum tergiversatio cunctatio. Ipsam bonus adeo ante bene sponte adstringo tollo coniuratio contego. Aspernatur ars tredecim ago undique thorax socius antiquus.','female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2024-07-05 05:04:02','2024-07-05 05:04:02'),
(46,'Isidro','Mraz','isidro.mraz72','isidro.mraz@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1994-10-18','Thymum approbo.',NULL,'male','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-03-21 23:26:45','2025-05-02 10:51:03'),
(47,'Araceli','Bruen','araceli_bruen','araceli.bruen78@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'2007-03-13','Aufero.','Acerbitas celebrer cena tamisium creptio. Terra bos cupio tamisium conduco sperno curtus cado. Sollers thalassinus ab aperiam cubo desino magni uberrime.','other','https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/60.jpg',NULL,1,NULL,NULL,NULL,NULL,'2023-02-03 06:43:09','2024-06-21 15:07:19'),
(48,'Giovanny','Klocko','giovanny_klocko','giovanny_klocko97@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1999-03-09',NULL,'Consequuntur rerum amissio coaegresco apparatus cruciamentum similique currus repellendus. Laudantium subnecto ex demitto voco colligo voco spiritus villa. Inventore amplexus minus texo esse aufero apostolus suadeo.\nMagnam amicitia angulus considero cunctatio. Tracto valens despecto ratione canis vapulus casus cohibeo cibo tenax. Aegrotatio cupiditas subseco adicio capio utrum.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-08-20 21:54:14','2023-08-20 21:54:14'),
(49,'Vallie','Brown','vallie.brown','vallie.brown@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'2006-01-01','Vulticulus molestiae.','Cariosus suppellex comedo cariosus aequus molestias spargo. Bestia verto valde adficio. Alter vero accusamus verecundia sophismata decumbo advoco.\nVicinus autem tempora. Cultura cuppedia voluptates spes deinde tempora stultus. Architecto doloremque debitis conor deprimo.\nTergum adfero molestiae solum canis. Cumque qui coniecto animi alveus. Ante utrum dignissimos cauda deorsum corrumpo delectus.','other','https://picsum.photos/200/300',NULL,0,NULL,NULL,NULL,NULL,'2023-03-26 23:32:50','2023-03-26 23:32:50'),
(50,'Candelario','Rau','candelario.rau','candelario_rau51@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1982-06-10','Censura cohibeo eos.','Sulum tempore cupressus vel cui absorbeo valeo recusandae quasi defendo. Sursum certus unde sol ante carpo virga crinis. Complectus aut cohaero tempore tantillus uredo verus numquam acceptus.\nImpedit una attonbitus summa vae depraedor vaco cauda correptius beatae. Tondeo vulgivagus abutor repudiandae conduco. Beatus optio ex corporis explicabo aveho derelinquo nemo.\nColligo deripio basium umquam trepide antepono depulso viridis ceno totam. Deinde neque comitatus voco volaticus thalassinus. Voluntarius conitor aequus angulus tertius defluo blandior adicio.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-01-27 22:54:09','2023-06-02 07:19:16'),
(51,'Junius','Walsh','junius_walsh','junius_walsh@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1956-05-29',NULL,'Admitto amplexus voluntarius audentia. Terga patior victoria statim antea ter spero. Aestus conduco caterva comedo audentia vilis optio adinventitias.\nSub aegrotatio caries demens substantia tabella cauda voveo. Alo adipiscor architecto impedit praesentium. Dignissimos expedita enim ventus corrumpo cernuus cenaculum depulso vos.','female','https://avatars.githubusercontent.com/u/1143900',NULL,1,NULL,NULL,NULL,NULL,'2023-09-16 00:55:01','2023-09-16 00:55:01'),
(52,'Johanna','Cole','johanna_cole17','johanna.cole54@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1984-08-10','Labore beneficium.',NULL,'female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-08-16 10:58:17','2023-08-16 10:58:17'),
(53,'Reyna','Wilkinson','reyna_wilkinson','reyna.wilkinson@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'2001-05-22','Bestia tamdiu.',NULL,'female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-11-26 12:51:57','2023-11-26 12:51:57'),
(54,'Merl','Aufderhar','merl.aufderhar80','merl.aufderhar@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1948-06-09','Accusamus admiratio abeo.',NULL,'other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-02-02 06:43:04','2023-02-02 06:43:04'),
(55,'Jevon','Nader','jevon_nader33','jevon.nader@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1991-05-19',NULL,NULL,'other','https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/34.jpg',NULL,1,NULL,NULL,NULL,NULL,'2024-02-20 10:05:54','2024-11-20 10:30:10'),
(56,'Chaya','Donnelly','chaya.donnelly88','chaya.donnelly@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1979-01-12','Taedium concido consequatur.',NULL,'female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2024-12-27 23:59:33','2024-12-27 23:59:33'),
(57,'Joanie','Boehm','joanie.boehm','joanie.boehm@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1990-08-03','Cogo cornu vae.','Verumtamen acies adsum molestias somniculosus spoliatio. Comburo eius varietas coadunatio recusandae compello adimpleo verecundia suadeo crepusculum. Vomito suadeo cibus quod amita censura.\nAngulus appositus adiuvo congregatio tergum. Corroboro armarium suadeo capitulus templum censura vulgivagus caelestis spero. Cotidie tempus enim acsi videlicet contabesco aveho cilicium turba.\nAdamo quo vinum nihil terminatio chirographum. Valeo vinculum sustineo dolor. Vilis adnuo viriliter quos harum tenuis.','female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-11-23 21:03:41','2023-11-23 21:03:41'),
(58,'Tommie','Homenick','tommie.homenick','tommie.homenick92@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1951-07-29','Vulgivagus nulla cruentus.','Laudantium denuo uterque cauda et bos decerno blandior antea. Id degusto cohibeo aperio inflammatio. Catena creber crastinus.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-08-22 18:53:49','2022-08-22 18:53:49'),
(59,'Alexane','Schimmel','alexane_schimmel89','alexane.schimmel@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1956-08-02',NULL,NULL,'female','https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/90.jpg',NULL,1,NULL,NULL,NULL,NULL,'2022-06-17 06:10:01','2022-12-24 00:38:31'),
(60,'Kristin','Veum','kristin.veum8','kristin.veum44@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1980-09-22',NULL,NULL,'other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-01-16 06:35:12','2023-01-16 06:35:12'),
(61,'Natasha','Weissnat','natasha_weissnat60','natasha.weissnat@yahoo.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1978-07-23','Absconditus ultio.','Cultura depereo adamo abutor argumentum illum arto confugo tener omnis. Articulus agnosco creber tremo dolor sponte thymum spiculum auctus. Dedico creber aqua altus.\nAmplexus degusto adnuo aliqua. Suffragium corrumpo quia utilis. Acceptus aut adflicto corona.','male','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2024-11-27 20:12:14','2024-11-27 20:12:14'),
(62,'Shanon','Cummings','shanon_cummings0','shanon.cummings@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1963-06-12',NULL,'Thorax talio utrimque triduana delibero adeo odio approbo absque attero. Velit acerbitas confugo occaecati convoco pauper cras defungo vergo argentum. Adhaero coma depono unus absorbeo.\nCogo sui terebro cultura verto aufero arca testimonium decimus. Aufero terebro surculus. Alii vulgaris aegrotatio asperiores constans correptius apostolus corona contabesco adduco.','female','https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/93.jpg',NULL,1,NULL,NULL,NULL,NULL,'2022-01-02 13:20:29','2023-09-23 11:50:07'),
(63,'Emmet','Rolfson','emmet_rolfson','emmet_rolfson@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1986-11-14','Ventosus vaco.','Conscendo officiis ducimus. Bos ullus cupiditas bestia commodi aurum curriculum adeo. Sopor conculco perspiciatis defendo ut accusamus colo undique thymbra cibo.','other','https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/73.jpg',NULL,1,NULL,NULL,NULL,NULL,'2022-02-03 11:57:43','2024-04-26 10:20:22'),
(64,'Tad','Bauch','tad_bauch','tad_bauch71@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'2006-10-14',NULL,'Confero cunctatio coma soleo textilis. Conforto aedificium abundans adhuc suffragium maiores asper tristis spero apparatus. Sit delectatio vulgus audacia corona ducimus virga adnuo terror.','female','https://picsum.photos/200/300',NULL,0,NULL,NULL,NULL,NULL,'2024-06-13 09:54:40','2024-06-13 09:54:40'),
(65,'Justen','Abernathy','justen.abernathy','justen.abernathy79@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1989-01-23','Abutor.','Turba eius solus caute ustulo error adiuvo asporto fuga. Esse vita abeo. Barba vehemens color articulus supra ulciscor.\nConqueror vilicus ager. Crux alii laudantium demitto vitae curvo utrimque deinde uxor. Tandem usitas perspiciatis calculus advenio accusator comburo.\nDesipio adeptio territo ratione vomito. Repellat tonsor concedo assumenda velum somniculosus. Ipsam tumultus deprimo decimus contigo depromo territo advoco quisquam.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2022-02-25 13:27:53','2024-12-23 03:49:53'),
(66,'Aubree','McLaughlin','aubree.mclaughlin','aubree.mclaughlin0@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1953-03-26','Aurum spiculum.','Videlicet dicta textor uberrime aperiam tantillus aegrotatio vinum temptatio. Comminor dedecor nihil acer repudiandae. Atque animus stips alienus allatus alienus ter optio.\nConculco cuius tremo. Curis cibus tempus vinculum vilis. Dapifer ambitus cerno coadunatio vomer cruentus.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2023-12-12 03:42:33','2024-09-01 06:50:54'),
(67,'Maryjane','Gutmann','maryjane_gutmann','maryjane_gutmann@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1955-10-13','Tres vilicus libero.','Tamisium facilis utique caries vaco curriculum alias cuppedia. Delego minima ipsam arbitro vomito. Toties sint collum volup aeternus spectaculum totidem verbum ater terebro.\nConspergo tenus sequi tam cubitum denuo ut veniam. Nobis amitto alioqui fugiat tibi coerceo asporto audeo curia. Vir umquam creta iste compono denuncio.\nDefessus tollo viscus atrocitas adulescens conculco cunae solio sumptus sint. Umerus aestus acies. Amor aufero sono adsidue quibusdam unde totam communis.','other','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2025-02-07 04:39:37','2025-02-07 04:39:37'),
(68,'Keeley','Sawayn','keeley_sawayn','keeley_sawayn43@gmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1949-07-25','Credo earum sonitus.',NULL,'other','https://avatars.githubusercontent.com/u/36111145',NULL,1,NULL,NULL,NULL,NULL,'2024-01-19 20:59:27','2024-01-19 20:59:27'),
(69,'Jason','Schroeder','jason.schroeder','jason.schroeder8@hotmail.com','$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'1955-01-21','Soluta nulla saepe.',NULL,'female','https://picsum.photos/200/300',NULL,1,NULL,NULL,NULL,NULL,'2024-03-02 17:00:19','2024-07-17 10:08:00'),
(111,'','','','','','','','',NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(114,'VU','VU','h_vu_minh_1','q199@gmail.com','','','','',NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(115,NULL,NULL,NULL,'huydo111@gmail.com','24bb3f84e2cc9119a176565f0b2347ec',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(116,NULL,NULL,NULL,'test123@gmail.com','c4ca4238a0b923820dcc509a6f75849b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(117,'Test','123','test011','test111@gmail.com','1','admin','098766543','Thai Binh',NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,'2025-06-20 00:46:07','2025-06-16 23:27:27',NULL,NULL,NULL),
(136,NULL,NULL,NULL,'test123333@gmail.com','24bb3f84e2cc9119a176565f0b2347ec',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-06-20 01:04:30',NULL,NULL,NULL,NULL),
(139,NULL,NULL,NULL,'huydo041203@gmail.com','24bb3f84e2cc9119a176565f0b2347ec',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-06-17 12:14:09','2025-06-20 10:18:33',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-06-23 21:20:03
