-- MySQL dump 10.13  Distrib 8.0.29, for macos12.2 (x86_64)
--
-- Host: localhost    Database: nfc
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` longtext,
  `email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `user_orderer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs799hwep5puwsl3recdbni7m4` (`user_orderer_id`),
  CONSTRAINT `FKs799hwep5puwsl3recdbni7m4` FOREIGN KEY (`user_orderer_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (4,'Passage Zadkine','Fort-de-France','2022-07-06 17:03:47.785000','Chuck Norris doesn\'t pair program.','sacha.dufour@yahoo.fr','https://pigment.github.io/fake-logos/logos/medium/color/10.png','Menard SA','0178454923',NULL,'1837',1),(5,'Quai Charlemagne','Argenteuil','2022-07-06 17:03:48.679000','Chuck Norris can compile syntax errors.','maxence.bertrand@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/10.png','Renaud SAS','0492207112',NULL,'1',2),(6,'Impasse du Bac','Saint-Denis','2022-07-06 17:03:49.230000','Chuck Norris\'s keyboard doesn\'t have a Ctrl key because nothing controls Chuck Norris.','axel.moreau@gmail.com','https://pigment.github.io/fake-logos/logos/medium/color/9.png','Perrin et Perrin','+33 2 62 49 83 59',NULL,'96',1),(7,'Place du Chat-qui-Pêche','Argenteuil','2022-07-06 17:03:49.814000','Chuck Norris rewrote the Google search engine from scratch.','lena.moulin@gmail.com','https://pigment.github.io/fake-logos/logos/medium/color/3.png','Laurent EURL','0105839314',NULL,'2',3),(8,'Avenue Vaneau','Caen','2022-07-06 17:03:50.452000','Chuck Norris\'s keyboard doesn\'t have a Ctrl key because nothing controls Chuck Norris.','camille.schneider@yahoo.fr','https://pigment.github.io/fake-logos/logos/medium/color/9.png','Dumas et Dumas','01 39 54 58 53',NULL,'768',2);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `type_company` varchar(31) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` longtext,
  `email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('Orderer',1,'Boulevard de Richelieu','Avignon','2022-07-06 16:58:14.635000','Laboriosam dolores accusantium recusandae nobis.Quaerat numquam voluptates deleniti accusantium magn','anaïs.martin@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/12.png','Schmitt SCOP','03 16 65 65 11',NULL,'12'),('Orderer',2,'Avenue des Francs-Bourgeois','Toulon','2022-07-06 16:58:14.908000','Et magni qui et voluptatem.Molestiae quas rerum consequatur delectus dolores modi.Aperiam suscipit n','marie.renaud@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/6.png','Masson et Masson','+33 3 43 29 62 64',NULL,'1327'),('Orderer',3,'Passage des Rosiers','Le Havre','2022-07-06 16:58:15.108000','Recusandae quia labore ut iste aut autem consectetur.Tempore quod temporibus magni fugit.Debitis ape','kylian.laurent@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/7.png','Denis et Denis','0377283444',NULL,'8'),('Orderer',4,'Boulevard des Grands Augustins','Hyères','2022-07-06 16:58:15.338000','Laborum laborum repellendus non officia.Consequatur debitis unde placeat vero.Veritatis ex autem ita','alicia.jean@gmail.com','https://pigment.github.io/fake-logos/logos/medium/color/10.png','Laurent et Laurent','+33 593561971',NULL,'6'),('Orderer',5,'Allée, Voie Saint-Denis','Caen','2022-07-06 16:58:15.554000','Porro et molestiae repellendus dolores delectus.Aperiam fuga nam voluptatem at.Et eos corporis.Totam','ines.dubois@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/12.png','Blanc EI','+33 4 28 09 07 62',NULL,'2937'),('Provider',6,'Quai des Saussaies','La Seyne-sur-Mer','2022-07-06 16:58:15.773000','Assumenda vitae alias nobis.Mollitia et aut nihil id repudiandae.Corporis voluptatem doloremque simi','gabriel.rolland@yahoo.fr','https://pigment.github.io/fake-logos/logos/medium/color/7.png','Gaillard et Gaillard','+33 595350203',NULL,'084'),('Provider',7,'Quai Lepic','Montreuil','2022-07-06 16:58:15.945000','Ipsam optio culpa.Illo vero esse.Autem voluptatem consequatur in culpa odio temporibus excepturi.Pro','océane.renault@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/5.png','Roger et Roger','09 43 24 19 47',NULL,'9435'),('Provider',8,'Passage des Lombards','Poitiers','2022-07-06 16:58:16.124000','Minus tempora quia at voluptatem alias.Qui et nulla et recusandae aut.Quidem aut iste quaerat.Sint d','mélissa.schneider@gmail.com','https://pigment.github.io/fake-logos/logos/medium/color/6.png','Leroy EI','0534637288',NULL,'9'),('Provider',9,'Allée, Voie Charlemagne','Cannes','2022-07-06 16:58:16.292000','In cum ut vel sit.Ut labore omnis animi modi officia.Blanditiis quas et porro.Repudiandae ut sed por','julie.chevalier@gmail.com','https://pigment.github.io/fake-logos/logos/medium/color/10.png','Roux et Roux','+33 4 52 72 73 46',NULL,'8727'),('Provider',10,'Allée, Voie de Rivoli','Clermont-Ferrand','2022-07-06 16:58:16.461000','Id autem quam dolore quaerat quod vel et.Error quia dolore asperiores.Aut aut quo cum.Doloremque atq','théo.fleury@gmail.com','https://pigment.github.io/fake-logos/logos/medium/color/10.png','Baron et Baron','+33 2 96 56 44 25',NULL,'91');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etape`
--

DROP TABLE IF EXISTS `etape`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etape` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` longtext,
  `data` varchar(255) DEFAULT NULL,
  `data2` varchar(255) DEFAULT NULL,
  `internal_validation` varchar(255) DEFAULT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `intervention_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrl81jx04teer91kudftesfw4i` (`intervention_id`),
  CONSTRAINT `FKrl81jx04teer91kudftesfw4i` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etape`
--

LOCK TABLES `etape` WRITE;
/*!40000 ALTER TABLE `etape` DISABLE KEYS */;
/*!40000 ALTER TABLE `etape` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installation`
--

DROP TABLE IF EXISTS `installation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `installation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` longtext,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `client_id` bigint DEFAULT NULL,
  `utilisateur_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcv3c5hn3r0a4s6rmv7x4550gt` (`client_id`),
  KEY `FK7kuvl8pjv4f4b9t2sjshacl7a` (`utilisateur_id`),
  CONSTRAINT `FK7kuvl8pjv4f4b9t2sjshacl7a` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FKcv3c5hn3r0a4s6rmv7x4550gt` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installation`
--

LOCK TABLES `installation` WRITE;
/*!40000 ALTER TABLE `installation` DISABLE KEYS */;
INSERT INTO `installation` VALUES (1,'Rue de l\'Odéon',NULL,'2022-07-06 17:42:15.929000','When Chuck Norris\' code fails to compile the compiler apologises.','https://pigment.github.io/fake-logos/logos/medium/color/10.png','Installation#10',NULL,'7766',4,NULL),(2,'Passage d\'Orsel',NULL,'2022-07-06 17:42:16.547000','No statement can catch the ChuckNorrisException.','https://pigment.github.io/fake-logos/logos/medium/color/7.png','Installation#11',NULL,'7',5,NULL),(3,'Avenue Saint-Honoré',NULL,'2022-07-06 17:42:16.890000','Quantum cryptography does not work on Chuck Norris. When something is being observed by Chuck it stays in the same state until he\'s finished.','https://pigment.github.io/fake-logos/logos/medium/color/6.png','Installation#14',NULL,'68',6,NULL),(4,'Passage de Tilsitt',NULL,'2022-07-06 17:42:17.181000','\"It works on my machine\" always holds true for Chuck Norris.','https://pigment.github.io/fake-logos/logos/medium/color/10.png','Installation#13',NULL,'32',7,NULL),(5,'Boulevard de Nesle',NULL,'2022-07-06 17:42:17.478000','The only pattern Chuck Norris knows is God Object.','https://pigment.github.io/fake-logos/logos/medium/color/12.png','Installation#16',NULL,'25',8,NULL);
/*!40000 ALTER TABLE `installation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervention`
--

DROP TABLE IF EXISTS `intervention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intervention` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `detail` longtext,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `installation_id` bigint DEFAULT NULL,
  `utilisateur_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn1ux8lll5mmtkko6j50t5lvry` (`installation_id`),
  KEY `FKehy292hxfssge7ub5s2546run` (`utilisateur_id`),
  CONSTRAINT `FKehy292hxfssge7ub5s2546run` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FKn1ux8lll5mmtkko6j50t5lvry` FOREIGN KEY (`installation_id`) REFERENCES `installation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervention`
--

LOCK TABLES `intervention` WRITE;
/*!40000 ALTER TABLE `intervention` DISABLE KEYS */;
/*!40000 ALTER TABLE `intervention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervention_provider`
--

DROP TABLE IF EXISTS `intervention_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intervention_provider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `est_attribue` bit(1) DEFAULT NULL,
  `installation_id` bigint DEFAULT NULL,
  `provider_id` bigint DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `FK7uannkay3989q1emmf0v29nso` (`installation_id`),
  KEY `FK7p2and1kfoqk09wdvsajv9680` (`provider_id`),
  CONSTRAINT `FK7p2and1kfoqk09wdvsajv9680` FOREIGN KEY (`provider_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK7uannkay3989q1emmf0v29nso` FOREIGN KEY (`installation_id`) REFERENCES `installation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervention_provider`
--

LOCK TABLES `intervention_provider` WRITE;
/*!40000 ALTER TABLE `intervention_provider` DISABLE KEYS */;
INSERT INTO `intervention_provider` VALUES (4,'2022-07-06 23:52:32.461000',_binary '',1,6,NULL),(5,'2022-07-06 23:53:15.601000',_binary '\0',2,6,NULL),(6,'2022-07-07 00:24:21.232000',_binary '\0',5,8,NULL),(7,'2022-07-07 23:30:35.410000',_binary '',3,10,'Panne du moteur à gaz');
/*!40000 ALTER TABLE `intervention_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervention_provider_travailleur`
--

DROP TABLE IF EXISTS `intervention_provider_travailleur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intervention_provider_travailleur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `est_intervenue` bit(1) DEFAULT NULL,
  `intervention_provider_id` int DEFAULT NULL,
  `travailleur_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdygfui00u8taxfjtgeshodae4` (`intervention_provider_id`),
  KEY `FKolc37y76gsegostn4ylusvpvl` (`travailleur_id`),
  CONSTRAINT `FKdygfui00u8taxfjtgeshodae4` FOREIGN KEY (`intervention_provider_id`) REFERENCES `intervention_provider` (`id`),
  CONSTRAINT `FKolc37y76gsegostn4ylusvpvl` FOREIGN KEY (`travailleur_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervention_provider_travailleur`
--

LOCK TABLES `intervention_provider_travailleur` WRITE;
/*!40000 ALTER TABLE `intervention_provider_travailleur` DISABLE KEYS */;
INSERT INTO `intervention_provider_travailleur` VALUES (2,'2022-07-07 09:28:47.055000',_binary '\0',4,36),(3,'2022-07-07 23:42:00.838000',_binary '\0',7,56);
/*!40000 ALTER TABLE `intervention_provider_travailleur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_TRAVAILLEUR'),(2,'ROLE_CHEF'),(3,'ROLE_MODERATOR'),(4,'ROLE_ADMIN'),(5,'ROLE_USER'),(6,'ROLE_ADJOIN_CHEF'),(7,'ROLE_CLIENT');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKfhg6g8mbl6gcwupy69tajpvjm` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(61,7),(62,7),(63,7),(64,7),(65,7);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` bigint DEFAULT NULL,
  `company_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKc68xm0uykgh24nqfefurtkrh3` (`user_name`),
  UNIQUE KEY `UKrma38wvnqfaf66vvmi57c71lo` (`email`),
  KEY `FK8b28kmujgtm655whf9b1s4nfm` (`client_id`),
  KEY `FKac4j5tgj5aubt5gskl417mj0n` (`company_id`),
  CONSTRAINT `FK8b28kmujgtm655whf9b1s4nfm` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `FKac4j5tgj5aubt5gskl417mj0n` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'2022-07-07 23:50:09.807000','louis.schmitt@gmail.com','Louis','schmitt','+33 66 10 76 450','$2a$10$lfEyO0VfXUTKGTaopLmleuShN4on1r.7xxkKoFb0qB85eVpQLzJ9y',NULL,'louis.schmitt',NULL,1),(2,'2022-07-06 16:58:17.226000','clément.aubry@hotmail.fr','Léo','Roche','0104924042','$2a$10$WxBhbirZUr85EQ7WooeSn.K4Q6lAcC0rPB/qgyoMEXYjkKYW.WbK6',NULL,'marie.girard',NULL,2),(3,'2022-07-06 16:58:17.578000','océane.charpentier@hotmail.fr','Marie','Nguyen','+33 561075612','$2a$10$.3YoViD05q9NDYZaJ8l3z.q/zmwz8fa.AvVk9H/J5zAsdWKb7i7sy',NULL,'noa.marty',NULL,3),(4,'2022-07-06 16:58:17.922000','zoe.rey@yahoo.fr','Nicolas','Mathieu','05 32 45 82 77','$2a$10$xwBwSl.duTLLsLER4qL8.eKMXbCXso9hQToaHpgFNfh0TH84O3sSu',NULL,'ambre.guillaume',NULL,4),(5,'2022-07-06 16:58:18.252000','nathan.barre@hotmail.fr','Noah','Berger','+33 229705941','$2a$10$A63X8FTTeh1kc/Dx6YUh3.a8tlHVaofnG8AUeOgMokfmr.QWUiyLC',NULL,'océane.guyot',NULL,5),(6,'2022-07-06 16:58:18.660000','baptiste.fournier@yahoo.fr','Maëlys','Huet','+33 581504585','$2a$10$G1ed1/aQLfMSLBP3Jn.cvO3c35Xq/mq.Z8mAPzBf6G3X8CHB.AiTS',NULL,'enzo.moreau',NULL,6),(7,'2022-07-06 16:58:18.995000','elisa.leroy@gmail.com','Lina','Picard','04 82 51 60 89','$2a$10$mDJ/sPH9GJtIbY2b0feXe.g/TOcQEz6pKffjAEu.qBX49bDzIkNy2',NULL,'romain.caron',NULL,7),(8,'2022-07-06 16:58:19.324000','zoe.collet@gmail.com','Ambre','Roux','+33 417440132','$2a$10$FuPZnFbiv5LeEt4.yUQNneWGxnC.KmgjZFmwqYew4Ru55GPsTMv1S',NULL,'lucie.poirier',NULL,8),(9,'2022-07-06 16:58:19.659000','raphaël.fontaine@yahoo.fr','Mathis','Vidal','+33 9 44 40 91 85','$2a$10$5G8aU2GISqa6Ut1oWkvhgumLK8hnldrMqyw3NgRODXi5Tl5CPnFEe',NULL,'adrien.vincent',NULL,9),(10,'2022-07-06 16:58:19.989000','lucie.olivier@hotmail.fr','Ambre','Guillot','+33 1 99 03 04 53','$2a$10$wZnGOM1HruF79o27fGU57ekTG30B7zFNOHd56pW5QDnGdvP9Tdbg6',NULL,'baptiste.leclerc',NULL,10),(11,'2022-07-06 16:58:20.336000','mathilde.renault@hotmail.fr','Jeanne','Louis','+33 1 12 18 62 56','$2a$10$LkESbavSpWueLnbL4g941e7F1nBdXLIRwtHEPYBfm1Ldku8MP5sq2',NULL,'mattéo.da silva',NULL,1),(12,'2022-07-06 16:58:20.674000','clara.rolland@gmail.com','Julien','Garcia','09 95 64 49 96','$2a$10$lQ.BtmKua6N5tiZKitiWH.gKu3WIJFF8tTlb4SLtk3MxBkl9Ey6Om',NULL,'baptiste.perrot',NULL,1),(13,'2022-07-06 16:58:21.000000','thomas.bourgeois@yahoo.fr','Noa','Royer','02 67 11 39 13','$2a$10$fXDrQxU2M417Qd3mk2PQ6Oyz48LbWtUUDTrUVyvbnw3GTPpM.dzRi',NULL,'eva.pons',NULL,1),(14,'2022-07-06 16:58:21.331000','julie.francois@gmail.com','Pierre','Barre','+33 411755158','$2a$10$k06l4mhfLEkJsnHkn4hYE.DnJAKLlkMTVsRNNpnodyEuD7b7n2/wq',NULL,'julien.baron',NULL,1),(15,'2022-07-06 16:58:21.647000','valentin.morel@yahoo.fr','Raphaël','Bernard','+33 2 93 10 25 00','$2a$10$4Qqfm2fGGn69Y6xZrTZ0wOlQt9AABMim0uFYqGqr9UFBpa5xffnYm',NULL,'raphaël.david',NULL,1),(16,'2022-07-06 16:58:21.969000','paul.bertrand@gmail.com','Océane','Dupont','04 86 38 96 83','$2a$10$rS3blfwbwYqQfNk3HeTVw.bIzRCR3b2rq3CBjMr/jB8RvadCpujmG',NULL,'marie.julien',NULL,2),(17,'2022-07-06 16:58:22.284000','océane.le gall@gmail.com','Louis','Fontaine','09 30 94 34 09','$2a$10$KtkLW/aHPA/I0uwgsZIY6ezZPul.6WWoCeewBNVS0m4MlW.RTL/Zm',NULL,'kylian.pons',NULL,2),(18,'2022-07-06 16:58:22.602000','célia.renaud@hotmail.fr','Louise','Olivier','+33 105829212','$2a$10$5iE4rD.7uWP7qqspje6Rguu84paM.HaAknmUcoQlS/Xcv5wYPTvr2',NULL,'louis.dumont',NULL,2),(19,'2022-07-06 16:58:22.932000','maëlle.marchal@yahoo.fr','Jules','Simon','0362157941','$2a$10$LoLcsTj80s27/7BI4Utfiusv0Bpo663fWmfRTNEB64jEIBuLWakRW',NULL,'chloé.pierre',NULL,2),(20,'2022-07-06 16:58:23.242000','mathilde.mathieu@hotmail.fr','Laura','Perrin','0494650490','$2a$10$A1pKjjm7hZOaSCU/q/miRuDjGHj8gglLzddkDbvQY57mxj7ugeNby',NULL,'julien.sanchez',NULL,2),(21,'2022-07-06 16:58:23.550000','noa.arnaud@yahoo.fr','Noah','Gaillard','+33 2 30 56 49 65','$2a$10$IclPzYe2gOcWIzEx6Us0IOMjYp1gliU.aowPj5RTTE.r0ol5smSUy',NULL,'arthur.sanchez',NULL,3),(22,'2022-07-06 16:58:23.862000','paul.guillot@yahoo.fr','Lena','Gonzalez','0265488308','$2a$10$K8o.NPPg315u10XcCQAT6ebropI5JfPNOVxwETuGZO3Fdd5mrY3n2',NULL,'yanis.dupuy',NULL,3),(23,'2022-07-06 16:58:24.169000','romain.vincent@hotmail.fr','Jade','Carre','0181087464','$2a$10$hK/QekYnuLBz81QykIhn6uS9.t3UF4OLiRgfl0UOljdUzw3cCZqJ.',NULL,'lina.moulin',NULL,3),(24,'2022-07-06 16:58:24.478000','enzo.bonnet@yahoo.fr','Victor','Giraud','01 19 45 86 53','$2a$10$DJxZzuzOLdjjASsxTrWpT.1spHQA/c6iTHqplgIZFY/2gQxhN6TX.',NULL,'camille.lucas',NULL,3),(25,'2022-07-06 16:58:24.791000','antoine.noel@hotmail.fr','Lou','Duval','+33 3 05 91 11 54','$2a$10$9M1Hncf.E2o1F1nc.UqgrOjY6R1WsYRgSGpRV1BMvzdADjjkIPPBu',NULL,'jade.marchal',NULL,3),(26,'2022-07-06 16:58:25.099000','lola.lacroix@hotmail.fr','Rayan','Renault','0331428174','$2a$10$8x95nNgfAK3yNf/V6ODYTeiQFs41htCze6THq6WL/5QgPsokUEOZS',NULL,'lina.leroux',NULL,4),(27,'2022-07-06 16:58:25.410000','louna.arnaud@yahoo.fr','Alexandre','Petit','0487157486','$2a$10$ZCPPtCpSB/HSMLh9qcPxhOzR4FxyS2d1vp20dddqEWUE9Aus5bv76',NULL,'axel.chevalier',NULL,4),(28,'2022-07-06 16:58:25.722000','sarah.bernard@yahoo.fr','Léa','Brun','0971174284','$2a$10$O52DDbvGz/sMWsLMJ2ZjAe1YVv3ZkBAX3vAXPbzqJOviXMu6ySG5K',NULL,'rayan.gerard',NULL,4),(29,'2022-07-06 16:58:26.019000','jules.thomas@gmail.com','Chloé','Legrand','+33 1 23 06 23 04','$2a$10$R8XRFMjM8V0BI8UCq0nq3etCYoWdIIFq9IS.nXZkBPuqL2ApLq/gO',NULL,'antoine.dubois',NULL,4),(30,'2022-07-06 16:58:26.318000','chloé.renard@yahoo.fr','Raphaël','Carre','+33 499785834','$2a$10$YQcwn0q1M.26kdKaBoPOf.9/Ppnlow1fnncDLCGku0.B1RFDAlwUW',NULL,'mathilde.lucas',NULL,4),(31,'2022-07-06 16:58:26.609000','julien.sanchez@gmail.com','Mael','Philippe','02 29 06 44 74','$2a$10$JjQbhRWvlFddaBHPA939F.aL8hf0LEfUTB66MpJ.J1y0Moby6Uj0q',NULL,'pierre.dumont',NULL,5),(32,'2022-07-06 16:58:26.903000','sacha.marchand@yahoo.fr','Adam','Lecomte','+33 2 58 69 28 93','$2a$10$nee7X8kkkN/yPyhTkr6l3ecD3W14kmIMvYDEy1Z6Mx13cTNBfXRNC',NULL,'chloé.masson',NULL,5),(33,'2022-07-06 16:58:27.198000','maxence.barre@hotmail.fr','Jade','Guyot','04 52 91 67 69','$2a$10$dDCXJATonjKWZcQdoXz.7OOhx9kxlxAm0dq.Jd2qnqO87SvFDf1Ie',NULL,'mathis.moulin',NULL,5),(34,'2022-07-06 16:58:27.494000','noah.paris@gmail.com','Marie','Lefevre','+33 5 68 63 95 00','$2a$10$TpFaQ.pg6ELFE7YNWiiI4ON3.I9UtcGKYmlzywsKk2SO6nHlkKh5y',NULL,'anaïs.bertrand',NULL,5),(35,'2022-07-06 16:58:27.786000','axel.da silva@hotmail.fr','Adrien','Giraud','0990279029','$2a$10$qJcB6n7Jw2dzVk2tJ8k7COSKr6hECB2HnRhELW3tNeEIb0PwuKM2C',NULL,'théo.morel',NULL,5),(36,'2022-07-06 16:58:28.133000','ethan.rodriguez@hotmail.fr','Clara','Picard','04 47 40 91 74','$2a$10$t.HQPr4RHvkqAIg4rwvsBuhf4y/SxqCLJDzt9RS5LjO0waLWzo2Ly',NULL,'rayan.dupuis',NULL,6),(37,'2022-07-06 16:58:28.432000','manon.charles@gmail.com','Raphaël','Dupuy','+33 522119698','$2a$10$8VPkvi.64gmeqlg2cXXeXeWrRSApqVQSfO.2qIAvWoCOMeXfDLVUm',NULL,'paul.brunet',NULL,6),(38,'2022-07-06 16:58:28.726000','louis.prevost@yahoo.fr','Thomas','Breton','+33 1 30 65 38 35','$2a$10$DCi82wmwXBtoFA4zFqN5N.P4559Eql.GRzKk7SKQ3EvmQOO39XhnS',NULL,'maëlys.rousseau',NULL,6),(39,'2022-07-06 16:58:29.023000','enzo.blanc@hotmail.fr','Mohamed','Leclercq','0404841885','$2a$10$Q1oldhX/tdifR2LgC1XJA.wF9.T8JLVud.DB5xweXgXU8bbPdV8Ai',NULL,'lucas.roche',NULL,6),(40,'2022-07-06 16:58:29.317000','alicia.riviere@yahoo.fr','Raphaël','Olivier','0353406948','$2a$10$xVm98fof/Al4H0FAQBCigukKUIZSvPQla.8mDMHZDeGEN8h3aJZ5G',NULL,'raphaël.nguyen',NULL,6),(41,'2022-07-06 16:58:29.614000','alicia.guillot@hotmail.fr','Mael','Lacroix','+33 2 78 40 77 49','$2a$10$ZhlZwFmJF1n4Z7T/noZ96u0xIskOKG.ERYpr3yU.wUgiS4bqTGNf2',NULL,'lou.julien',NULL,7),(42,'2022-07-06 16:58:29.907000','emilie.barre@hotmail.fr','Louise','Perez','0404117611','$2a$10$NGAyBveQTXiqbgiYIm4KVeWAPSiG885a5P2DbFBCqTOldJCAvfAB6',NULL,'jules.fleury',NULL,7),(43,'2022-07-06 16:58:30.207000','lola.royer@gmail.com','Alexandre','Petit','+33 9 55 12 87 09','$2a$10$8EltIjVbBYI5nTQ9kIZeYOyHa2ScJu6HPj4hPg88tWg451O4nMQae',NULL,'lola.lemaire',NULL,7),(44,'2022-07-06 16:58:30.500000','yanis.fournier@yahoo.fr','Romane','Leclercq','+33 1 89 53 38 79','$2a$10$drsWBXCMLNGMo3ItJLkhVuFsf43s5NuP1iGIN0eJAPpvOUCORAYHa',NULL,'elisa.leroy',NULL,7),(45,'2022-07-06 16:58:30.793000','benjamin.pons@gmail.com','Julie','Michel','+33 1 62 72 80 28','$2a$10$gwDx8yDeraCTocXQU/QmIeVvauEzX3wc6rja9OlPNdM0CFWc2B5Oq',NULL,'ethan.petit',NULL,7),(46,'2022-07-06 16:58:31.089000','kylian.leroux@hotmail.fr','Noah','Marie','+33 2 60 34 28 36','$2a$10$SYmGg2Su9AwRDZdq4u6aPuZxmkT0lxy/GeDtfs/XQPrJ7kn68oNVq',NULL,'marie.boyer',NULL,8),(47,'2022-07-06 16:58:31.390000','gabriel.menard@gmail.com','Maxime','Laine','09 53 90 98 16','$2a$10$tbqDRuSzQxHxsVOYz8sQpe.wQR8aVnQZKwyMws1Tz4dihhF97xIsa',NULL,'kylian.jean',NULL,8),(48,'2022-07-06 16:58:31.689000','baptiste.le roux@yahoo.fr','Raphaël','Roger','09 07 91 52 17','$2a$10$/BWx/C2eHijfjLXK.5FyUekbSLGKm5PMFqKaQyKYXBKTxi2G3XcpW',NULL,'alicia.henry',NULL,8),(49,'2022-07-06 16:58:31.986000','lilou.sanchez@hotmail.fr','Kylian','Dubois','+33 204192833','$2a$10$TimW6TZFOFH0iVeh/wWHFut1dZV/NBZPY9sOYexX7CS3drlXKwGQq',NULL,'mathis.colin',NULL,8),(50,'2022-07-06 16:58:32.279000','elisa.pons@yahoo.fr','Romain','Marty','0141575567','$2a$10$VsdP1dFV4qDurB8WSI1ErOKFcigAeV1C3LdrwVLRGhKtlXawtVy/C',NULL,'quentin.simon',NULL,8),(51,'2022-07-06 16:58:32.589000','laura.leclerc@hotmail.fr','Adam','Paris','0290937956','$2a$10$vInyAFwWaELrzcfJhOWEOef.ia5BWJNXVSuZhXJ6lmKa16SdcsrHC',NULL,'mael.breton',NULL,9),(52,'2022-07-06 16:58:32.882000','arthur.perrin@gmail.com','Emilie','Vincent','+33 5 98 86 57 07','$2a$10$x8fSQ2UOkz1Xxx5F2KlwgOnHxTNvFV042.xND09K/yYeciA10p2Wy',NULL,'ambre.dupuis',NULL,9),(53,'2022-07-06 16:58:33.175000','charlotte.hubert@yahoo.fr','Emilie','Perez','+33 2 85 83 76 83','$2a$10$Ihe80WomjIXMMuEuq/FI7OtYabIXm64R5cZ1KTDDBIRGhIkxc1e56',NULL,'mathis.fleury',NULL,9),(54,'2022-07-06 16:58:33.473000','ines.morel@hotmail.fr','Lucie','Gauthier','+33 3 06 57 27 02','$2a$10$5iZxkbgb34fwdwYXmUoU3Osmy.G8MXnNGM2C9rhC1J1CRMzlHnn02',NULL,'alexis.charpentier',NULL,9),(55,'2022-07-06 16:58:33.763000','antoine.mathieu@yahoo.fr','Lilou','Brun','+33 9 10 81 40 24','$2a$10$zPqihzRfMOnnLQP6c9mDoOP4ob8ulUQbBoC8YvbqMnzs2oBH67OgO',NULL,'théo.menard',NULL,9),(56,'2022-07-06 16:58:34.056000','raphaël.masson@hotmail.fr','Léa','Muller','09 72 25 21 73','$2a$10$mpRy61sF2M.zawGDVuRB.OEoW7Q7E0Kl5CXjZDxq544CC6kdmWifO',NULL,'mathilde.carre',NULL,10),(57,'2022-07-06 16:58:34.351000','tom.perrin@yahoo.fr','Raphaël','Lecomte','0519158970','$2a$10$dfZrox0Rh4WgXlQw8V/KSeVKwkJ9Tj9aLOQrvpfGTg1wS9dHMnn5q',NULL,'julie.carre',NULL,10),(58,'2022-07-06 16:58:34.642000','lena.meyer@gmail.com','Noa','Boyer','+33 114962817','$2a$10$f5YnbSq8rhKCG9vfYyMRb.Lxqg4dpHmUOlvngXTvhQisVRKpAHGv6',NULL,'charlotte.fernandez',NULL,10),(59,'2022-07-06 16:58:34.934000','lilou.joly@yahoo.fr','Sarah','Dubois','01 66 39 85 57','$2a$10$ni.f2EG43RT8IskxVZLOjeY23AUcyFO2Fm0ZjrH4TFUJCkChCk6OO',NULL,'hugo.nicolas',NULL,10),(60,'2022-07-06 16:58:35.227000','mathéo.david@yahoo.fr','Clément','Berger','+33 522480921','$2a$10$cxSSjlfMngV4kzyd/CVN6uyBQkGjdTweei/5vONAh0lsTEIOqX5HO',NULL,'sacha.caron',NULL,10),(61,'2022-07-06 17:03:48.126000','jeanne.fleury@yahoo.fr','Maëlys','Lucas','0101270649','$2a$10$g9xoQWIOW3x3futewTZZdeyW/kBitVo8Wz.l0Z/Upfdbe.5ylShaC',NULL,'maëlle.guillot',4,NULL),(62,'2022-07-06 17:03:48.694000','nicolas.gaillard@hotmail.fr','Maxime','Adam','05 44 34 27 54','$2a$10$Is9wRLDiqink8zuysVttDOpfV4uMO8jUJSuDvf2C6DLqqp9yLB/5W',NULL,'mathéo.colin',5,NULL),(63,'2022-07-06 17:03:49.246000','quentin.fleury@yahoo.fr','Noa','Fleury','+33 3 20 49 27 17','$2a$10$P8ly43cs5Y78gM/Zaiu24eTZqDL8e0Z73c3TXZvlnABwu9f2g3av6',NULL,'quentin.leclercq',6,NULL),(64,'2022-07-06 17:03:49.827000','célia.le gall@gmail.com','Jeanne','Picard','0949987779','$2a$10$vuLakr5AweBOIN4HC5kBZeRAct.i7kt6EQ1T2x7cdqUO3zJYKYRPW',NULL,'charlotte.gonzalez',7,NULL),(65,'2022-07-06 17:03:50.463000','maëlys.aubry@gmail.com','Mohamed','Mercier','02 48 94 74 07','$2a$10$qvCnyyHACJL3VkOu8L2mCeIqLaehjnOHo4ubD1EOAmMqs.jNCwMay',NULL,'clémence.arnaud',8,NULL);
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-08 10:26:58
