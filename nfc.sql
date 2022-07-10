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
  `orderer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs799hwep5puwsl3recdbni7m4` (`user_orderer_id`),
  KEY `FK98roi416ndh6gwmec2b8ibup4` (`orderer_id`),
  CONSTRAINT `FK98roi416ndh6gwmec2b8ibup4` FOREIGN KEY (`orderer_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKs799hwep5puwsl3recdbni7m4` FOREIGN KEY (`user_orderer_id`) REFERENCES `utilisateur` (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Place Joubert','Le Tampon','2022-07-09 19:22:32.047000','When Chuck Norris points to null, null quakes in fear.','ambre.nguyen@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/6.png','Riviere SARL','+33 119018614',NULL,'214',1,1),(2,'Place de la Huchette','Le Havre','2022-07-09 19:22:32.237000','Chuck Norris can access private methods.','nicolas.blanc@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/11.png','Leroy SAS','09 71 71 83 11',NULL,'33',1,1),(3,'Rue d\'Argenteuil','Villeneuve-d\'Ascq','2022-07-09 19:22:32.434000','Chuck Norris doesn\'t need a java compiler, he goes straight to .war','antoine.colin@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/8.png','Mercier et Mercier','+33 4 76 88 32 50',NULL,'24',1,1),(7,'28 Avenue de Lodeve','Montpellier','2022-07-10 00:36:12.754000','O\'Tacos #2','otacos@montpellier.rh.com',NULL,'O\'Tacos','+33415265845',NULL,'34123',2,2),(8,'42 Rue le Mercier','Nancy','2022-07-10 00:58:50.723000','Maison du monde','maisondumonde@rh.com',NULL,'Maison du monde','0458968574',NULL,'35687',2,2);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('Orderer',1,'Quai Royale','Cergy','2022-07-09 19:22:24.172000','Eum voluptate molestiae voluptas.Odit distinctio voluptas harum.Ab nisi ut enim.In delectus sed ut.V','eva.leclerc@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/4.png','Gonzalez EI','0304642349',NULL,'887'),('Orderer',2,'Allée, Voie de Seine','Nice','2022-07-09 19:22:24.345000','Ea et magni.Porro doloremque aut nesciunt iste hic.Quibusdam dolores amet deserunt nemo dolores magn','carla.breton@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/7.png','Fontaine EURL','+33 2 34 37 73 76',NULL,'3'),('Orderer',3,'Quai Saint-Séverin','Saint-Quentin','2022-07-09 19:22:24.440000','Repudiandae enim architecto.Placeat et dolorem eos.Laboriosam delectus qui.Molestias et non aliquam ','quentin.guillot@yahoo.fr','https://pigment.github.io/fake-logos/logos/medium/color/4.png','Le roux EURL','+33 254805345',NULL,'033'),('Orderer',4,'Allée, Voie Marcadet','Cayenne','2022-07-09 19:22:24.518000','Veniam esse similique.Recusandae ut accusamus earum perspiciatis fugit aspernatur.Eveniet nisi repel','noémie.leclercq@gmail.com','https://pigment.github.io/fake-logos/logos/medium/color/3.png','Renaud SEM','+33 977565063',NULL,'11'),('Orderer',5,'Allée, Voie de la Victoire','Boulogne-Billancourt','2022-07-09 19:22:24.600000','Autem ea et enim.Corporis voluptatem voluptas mollitia sit ducimus.Dolorem distinctio iusto est libe','victor.vincent@yahoo.fr','https://pigment.github.io/fake-logos/logos/medium/color/11.png','Nicolas SEM','0474879078',NULL,'5253'),('Provider',6,'Allée, Voie Saint-Bernard','Noisy-le-Grand','2022-07-09 19:22:24.733000','Veritatis sit culpa qui consequuntur maxime magnam.Impedit ratione qui aut.Optio asperiores aliquam ','maëlys.marchand@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/9.png','Simon et Simon','0397370876',NULL,'03'),('Provider',7,'Avenue de la Chaussée-d\'Antin','Troyes','2022-07-09 19:22:24.812000','Quos libero facere inventore sed quibusdam dolorem.Ducimus et ratione porro.Omnis minima est et non.','mohamed.leroux@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/12.png','Roy et Roy','+33 4 25 64 27 05',NULL,'403'),('Provider',8,'Avenue Bonaparte','Dunkerque14','2022-07-09 19:22:24.890000','Id excepturi minus rerum quia.Velit id sed.Vel harum tenetur voluptatem ipsa qui.Est nesciunt deleni','adam.fabre@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/12.png','Roche EI','+33 434603747',NULL,'7075'),('Provider',9,'Quai Saint-Jacques','Cannes','2022-07-09 19:22:24.979000','Ea dicta quam natus sed magni.Quaerat explicabo quae odit.Ad id rem.Quas explicabo officiis odit vol','pauline.joly@hotmail.fr','https://pigment.github.io/fake-logos/logos/medium/color/5.png','Clement et Clement','0476294913',NULL,'61'),('Provider',10,'Boulevard Saint-Séverin','Pau','2022-07-09 19:22:25.069000','At beatae ducimus adipisci.Reiciendis dolore dolores tenetur autem quo.Quaerat molestiae illum expli','lena.noel@gmail.com','https://pigment.github.io/fake-logos/logos/medium/color/8.png','Adam et Adam','+33 266100766',NULL,'4007'),('nfcentralis',13,'Boulevard Saint-Honoré','Colombes','2022-07-09 20:03:46.428000','Et in mollitia praesentium dolores.Dolor molestias doloremque.Alias quis et minima soluta.Expedita v','mathis.breton@yahoo.fr','https://pigment.github.io/fake-logos/logos/medium/color/8.png','Collet et Collet','01 01 72 50 14',NULL,'56');
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
);
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
  `orderer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcv3c5hn3r0a4s6rmv7x4550gt` (`client_id`),
  KEY `FK7kuvl8pjv4f4b9t2sjshacl7a` (`utilisateur_id`),
  KEY `FKb6dh579ucjmynq008whqehu6x` (`orderer_id`),
  CONSTRAINT `FK7kuvl8pjv4f4b9t2sjshacl7a` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FKb6dh579ucjmynq008whqehu6x` FOREIGN KEY (`orderer_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKcv3c5hn3r0a4s6rmv7x4550gt` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installation`
--

LOCK TABLES `installation` WRITE;
/*!40000 ALTER TABLE `installation` DISABLE KEYS */;
INSERT INTO `installation` VALUES (1,'Allée, Voie Mouffetard',NULL,'2022-07-09 19:22:32.539000','Chuck Norris\' preferred IDE is hexedit.','https://pigment.github.io/fake-logos/logos/medium/color/7.png','Installation#16',NULL,'250',1,NULL,1),(2,'Boulevard de la Chaussée-d\'Antin',NULL,'2022-07-09 19:22:32.657000','Chuck Norris breaks RSA 128-bit encrypted codes in milliseconds.','https://pigment.github.io/fake-logos/logos/medium/color/4.png','Installation#14',NULL,'7',2,NULL,1),(3,'Passage du Havre',NULL,'2022-07-09 19:22:32.735000','Chuck Norris\'s first program was kill -9.','https://pigment.github.io/fake-logos/logos/medium/color/10.png','Installation#16',NULL,'1',3,NULL,1),(4,'ugruygrueyrg kehgeuyr','euguereygu','2022-07-10 12:09:53.901000','kjnjiereureuirjuir',NULL,'Installation Teste postmane',NULL,'345334',NULL,1,1),(5,'ugruygrueyrg kehgeuyr','euguereygu','2022-07-10 12:12:54.181000','kjnjiereureuirjuir',NULL,'Installation Teste postmane',NULL,'345334',7,1,1);
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
);
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
  `description` longtext,
  `est_attribue` bit(1) DEFAULT NULL,
  `installation_id` bigint DEFAULT NULL,
  `provider_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7uannkay3989q1emmf0v29nso` (`installation_id`),
  KEY `FK7p2and1kfoqk09wdvsajv9680` (`provider_id`),
  CONSTRAINT `FK7p2and1kfoqk09wdvsajv9680` FOREIGN KEY (`provider_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK7uannkay3989q1emmf0v29nso` FOREIGN KEY (`installation_id`) REFERENCES `installation` (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervention_provider`
--

LOCK TABLES `intervention_provider` WRITE;
/*!40000 ALTER TABLE `intervention_provider` DISABLE KEYS */;
INSERT INTO `intervention_provider` VALUES (1,'2022-07-09 20:54:17.000000','Reparation de la prise électronique',_binary '\0',1,6);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervention_provider_travailleur`
--

LOCK TABLES `intervention_provider_travailleur` WRITE;
/*!40000 ALTER TABLE `intervention_provider_travailleur` DISABLE KEYS */;
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
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_CLIENT'),(2,'ROLE_ADMIN'),(3,'ROLE_TRAVAILLEUR'),(4,'ROLE_CHEF_PROVIDER'),(5,'ROLE_ADJOINT_PROVIDER'),(6,'ROLE_CHEF_ORDERER'),(7,'ROLE_ADJOINT_ORDERER');
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (41,1),(42,1),(43,1),(44,2),(45,2),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(6,4),(7,4),(8,4),(9,4),(10,4),(1,6),(2,6),(3,6),(4,6),(5,6),(11,7),(12,7),(13,7),(14,7),(15,7);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'2022-07-09 19:22:25.333000','adrien.noel@gmail.com','Léa','Morel','0312010547','$2a$10$tTKdoo58eAHGCdfZ5Ssx9e5qjrzicnKXVEonp/IMFiN/ag53X20/a',NULL,'manon.maillard',NULL,1),(2,'2022-07-09 19:22:25.518000','nicolas.dufour@hotmail.fr','Anaïs','Philippe','05 77 36 30 63','$2a$10$nVLC6j2mMZMAWvh5Q8Bexup8vR60Lqde7bUg6QHrqr.ss8nPMaEJm',NULL,'elisa.guillot',NULL,2),(3,'2022-07-09 19:22:25.681000','lena.nguyen@hotmail.fr','Zoe','Gaillard','+33 478372457','$2a$10$I3UrHZm8pri3ETWd8NEnTO5Wf8R.xr24JgGLxRLKin5aWpGUXSyH2',NULL,'maxime.morel',NULL,3),(4,'2022-07-09 19:22:25.841000','lou.bonnet@gmail.com','Adrien','Blanc','0374281228','$2a$10$iPPWz4eLbX9E3.FpClS4wuG3QMsyt6Ylt8sbqrTTDRFgs/5/vB6E6',NULL,'adrien.roussel',NULL,4),(5,'2022-07-09 19:22:26.009000','zoe.noel@gmail.com','Alexandre','Michel','+33 251144893','$2a$10$GmbGd8c5NfBSa5H.NDi.9OpC/F4jq1Qp/H6CJriFdVVgDDS5gvMfG',NULL,'eva.remy',NULL,5),(6,'2022-07-09 19:22:26.223000','léa.marchand@gmail.com','Adam','Laurent','0533228689','$2a$10$eVTvlIQruAjjaIFE4LRJTOTHot9FFVGs3XB.oFKM0REJtmWgC1jFC',NULL,'louise.cousin',NULL,6),(7,'2022-07-09 19:22:26.420000','adam.robin@hotmail.fr','Maxence','Da silva','03 13 64 54 34','$2a$10$o30uIo5/NRVht.NpSxMYcej3h81fZ8UPIYAv6EV4VkCPxNHaR93Jm',NULL,'lola.lambert',NULL,7),(8,'2022-07-09 19:22:26.590000','marie.cousin@yahoo.fr','Lisa','Girard','+33 439984415','$2a$10$W2EHH17cwWuBOiQc.efNqOfXfyk1.RUP0jqneEouLIwwZrs/xg75q',NULL,'maëlle.gauthier',NULL,8),(9,'2022-07-09 19:22:26.754000','camille.clement@hotmail.fr','Juliette','Clement','+33 574588932','$2a$10$MaFh4iI09GRGURpJnu2sZO3E/lLKnYuerKFW6j3zi4XB5D66u3MMa',NULL,'antoine.lopez',NULL,9),(10,'2022-07-09 19:22:26.913000','yanis.bonnet@gmail.com','Nathan','Deschamps','03 39 04 46 23','$2a$10$qVv/VrWkRZ/CscjcKUGB7OQuctcmiDz9wBPxE2N4gZv8rsCw4SvMO',NULL,'mattéo.carpentier',NULL,10),(11,'2022-07-09 19:22:27.116000','noémie.andre@gmail.com','Nathan','Michel','0105243084','$2a$10$PCsnXgrWIF1Wu9qOfPHZ2OLHw4u3I.TKGNKXiFoUrA9SwOHczLnoO',NULL,'clara.maillard',NULL,1),(12,'2022-07-09 19:22:27.285000','chloé.rey@yahoo.fr','Zoe','Laine','+33 196969872','$2a$10$ZCUeushAn2W4V6Xd1N4RI.03D0qnGXF.P157JHvtyfpJafhMevIh2',NULL,'axel.fabre',NULL,2),(13,'2022-07-09 19:22:27.448000','thomas.rousseau@gmail.com','Justine','Guyot','01 53 37 27 98','$2a$10$VnJY8woQXsMf7tFNXCklkuFXE1wsQ.pQxSX0A5RWzZ6os1DqwD2km',NULL,'laura.bernard',NULL,3),(14,'2022-07-09 19:22:27.605000','gabriel.leclerc@gmail.com','Julie','Royer','+33 5 07 45 66 37','$2a$10$eE0WtLd6M5mYGFZWvz67jOEd07Q53h34dq0gEKJkcOsuf1vxMRObS',NULL,'yanis.menard',NULL,4),(15,'2022-07-09 19:22:27.764000','paul.gaillard@hotmail.fr','Romain','Mathieu','09 03 77 26 67','$2a$10$g3Be6870RPCOWVDJa8cF9O95TUd8gYEyiyB0XtJOqn1UQlUxxuqpS',NULL,'emilie.dupuis',NULL,5),(16,'2022-07-09 19:22:27.935000','antoine.girard@yahoo.fr','Jade','Brunet','+33 422812995','$2a$10$VFH7D2ntc7DQ4OH1LYXxMe7ns41TioqeK6z6pFuxMzwNsqs2xSC7G',NULL,'louis.carre',NULL,6),(17,'2022-07-09 19:22:28.110000','maeva.pons@yahoo.fr','Maxence','Charpentier','+33 3 06 81 98 29','$2a$10$WcnExscyfPzV9z9k4sS.ae7eAygFCGu02TweTuyHzXcCh5y5/tXoy',NULL,'lola.laine',NULL,6),(18,'2022-07-09 19:22:28.277000','ethan.mathieu@yahoo.fr','Maxence','Rousseau','0511934334','$2a$10$suTy2OlAtv1GLdC71qVywelyzzE3SJ2So4ABrdq6dO8a0AuJu/ARq',NULL,'noa.le roux',NULL,6),(19,'2022-07-09 19:22:28.450000','océane.gautier@gmail.com','Lisa','Carpentier','05 37 63 22 43','$2a$10$JkRT1meDbbI4OMQbnyVeUOUmOMoRCEucpT9J/nRPSkJpV44nWwltm',NULL,'julie.boyer',NULL,6),(20,'2022-07-09 19:22:28.603000','pierre.nguyen@hotmail.fr','Baptiste','Martinez','+33 2 76 58 01 84','$2a$10$1KaNjcR4O2FacqZzNU.Ds.EozF1G8t3lehMz0bPxSmrIbuPh59YxO',NULL,'yanis.boyer',NULL,6),(21,'2022-07-09 19:22:28.761000','raphaël.caron@gmail.com','Laura','Da silva','09 14 79 45 98','$2a$10$9GsI.Bo9ScVBhvl6FrAx8OnUHhrZSZLM8wjkGWd2ccVxkG.NwFl1a',NULL,'jade.moreau',NULL,7),(22,'2022-07-09 19:22:28.936000','carla.bonnet@gmail.com','Justine','Lopez','09 83 00 12 52','$2a$10$HvPTWM1d/EXiWim6fKH/p.sPctGaxSQ2raJS.3mbfh8Ldm0m1Wzxu',NULL,'maeva.brunet',NULL,7),(23,'2022-07-09 19:22:29.105000','pierre.robert@yahoo.fr','Pierre','Renault','02 71 59 35 81','$2a$10$NbZBaQgtnQvOk.zqAbK9ee8v81n6onqtzb8J8CXL8aJjisVURVu.y',NULL,'hugo.leroy',NULL,7),(24,'2022-07-09 19:22:29.264000','eva.roux@yahoo.fr','Lilou','Lambert','0307737278','$2a$10$VGYbPY4ZqdEjwp36HD61zOnOPomTotGrowLC26w/Faw89P5m3STT6',NULL,'ambre.lecomte',NULL,7),(25,'2022-07-09 19:22:29.435000','alexis.le gall@gmail.com','Lina','Remy','02 90 77 04 97','$2a$10$BX.8Z3r9ue3kI6LZRq.8uenTfQf6A9OwGtI6fdLav2CwsLOBUEVO6',NULL,'mattéo.le roux',NULL,7),(26,'2022-07-09 19:22:29.588000','antoine.durand@hotmail.fr','Anaïs','Marchal','+33 962836870','$2a$10$0mVSviSiJEU1KZaYaZBryu3G9/r7XV3eJ2LywM.l3xrBOgCjniKKO',NULL,'lisa.dumont',NULL,8),(27,'2022-07-09 19:22:29.746000','lucas.marchand@hotmail.fr','Jules','Fontaine','0101811529','$2a$10$5P1IKakjsByMYRlHRTQZJ./AS54Y8FlnXCi8F1V8JkWkAykHsZ6Yq',NULL,'maxime.gonzalez',NULL,8),(28,'2022-07-09 19:22:29.906000','maeva.baron@gmail.com','Carla','Breton','05 80 54 02 75','$2a$10$pQ5ZcfJYbe6P/9N2Plgx7OYYpzfjV4yjn6VqAiqu7lIJxPiYx0MLS',NULL,'alice.perez',NULL,8),(29,'2022-07-09 19:22:30.069000','emilie.laurent@gmail.com','Benjamin','Mercier','+33 9 32 49 37 20','$2a$10$UKl8ObMjujR.zPfouJew8ee9V7q35cys5uywA/PCjc8oVpVbBPfza',NULL,'maeva.vincent',NULL,8),(30,'2022-07-09 19:22:30.225000','romain.sanchez@yahoo.fr','Pauline','Blanchard','+33 3 02 14 28 39','$2a$10$cEg/9sUjeCGFlNIX7wyWHuRGLjMnQQwTQj2KStSDuL4817mixQSRW',NULL,'louna.gerard',NULL,8),(31,'2022-07-09 19:22:30.390000','maxence.da silva@hotmail.fr','Jules','Louis','0267114807','$2a$10$67Gzr07g09DPXpYp7lvPf./1c84Pqk7vxU3bUNe/dTCVElnP18Fj2',NULL,'raphaël.lopez',NULL,9),(32,'2022-07-09 19:22:30.542000','valentin.rolland@yahoo.fr','Clara','Martinez','+33 901252225','$2a$10$dxTaeSYu.vTOiAbzmdewoO/UrBNQrfyAnVSkWmYmHkD0GQFrQjpZC',NULL,'mathis.rey',NULL,9),(33,'2022-07-09 19:22:30.700000','raphaël.paris@hotmail.fr','Maëlys','Moulin','0193990695','$2a$10$vt4.YoPup0Udz2113sLnM.ZTpFMlE/vHC3oLhj6QVAobBcCS0ekJW',NULL,'jules.gauthier',NULL,9),(34,'2022-07-09 19:22:30.857000','pierre.lefevre@gmail.com','Evan','Rolland','+33 1 69 91 22 36','$2a$10$wRYk46BcsoMqrI/ZNXts2OYynqwlIyxGu5l2S57879t.iw9Fi8Qja',NULL,'louna.lacroix',NULL,9),(35,'2022-07-09 19:22:31.021000','tom.muller@gmail.com','Sarah','Marty','+33 396078275','$2a$10$Z4nWGp0/D0nErpbHMKTrC.nk94ECBqMuVBZCgXK0jE.P/V.f9plvO',NULL,'lisa.lacroix',NULL,9),(36,'2022-07-09 19:22:31.176000','alice.carre@hotmail.fr','Maeva','Renault','02 36 28 86 39','$2a$10$SrPlcXZpCMOJ6SFTXLRm6uWkdnHvvAfOF/p9xKAfvNqLiQKR1VqA6',NULL,'lucas.nguyen',NULL,10),(37,'2022-07-09 19:22:31.354000','juliette.perrin@gmail.com','Lilou','Clement','+33 5 64 73 45 52','$2a$10$YWXp9qQXWil.8LQAQIVTZu/YxtrxPGQaozdIxSdPwOYPU7IKCK7S2',NULL,'chloé.lucas',NULL,10),(38,'2022-07-09 19:22:31.524000','sacha.moreau@gmail.com','Emilie','Boyer','+33 9 76 97 67 51','$2a$10$dcbIPIKrUq1/YXbKnc0OoOK9wCCexEcU4SLbc/1fiVMcjh9/dzDg.',NULL,'gabriel.nguyen',NULL,10),(39,'2022-07-09 19:22:31.683000','lisa.roux@yahoo.fr','Alexandre','Dumas','0920692164','$2a$10$a6dUn36swOHCcpQ85vSEYu0dQSlgq4xvp3LzJxdZ4q9ahlKMIrcH6',NULL,'mathéo.fernandez',NULL,10),(40,'2022-07-09 19:22:31.838000','ambre.hubert@yahoo.fr','Valentin','Moulin','0964039677','$2a$10$C9qucEl/Xcbuf8n00r6RqOjRTKuwuYsJwGMbNf02JP/Ar3mIzxAVC',NULL,'charlotte.rey',NULL,10),(41,'2022-07-09 19:22:32.075000','ambre.cousin@gmail.com','Lisa','Carre','+33 3 93 30 33 79','$2a$10$W9l8foZq24UPfg8gEFVQKOL/ETYJhLqnzTQ1W.nC.ZUOTPbEpidXq',NULL,'elisa.boyer',1,NULL),(42,'2022-07-09 19:22:32.241000','sarah.renard@gmail.com','Jade','Leclercq','0487365798','$2a$10$x4Bu/ENq9GwOUSspqWlJV.rOyKoHDhgBqRnJUKhxIv0ahi5Zo8Z32',NULL,'lola.fournier',2,NULL),(43,'2022-07-09 19:22:32.437000','romain.gonzalez@yahoo.fr','Sarah','Lambert','0597174525','$2a$10$aROZWv2V5WCgBKgZ9aEDqOP/TBoII6p1VRb0b53Dy19bPhMMUrl7C',NULL,'alexandre.blanchard',3,NULL),(44,'2022-07-09 20:03:46.657000','louna.vidal@yahoo.fr','Carla','Nguyen','0586652185','$2a$10$yGQ.9LBN6SyybEI2K8M8TeN3nk.hNYMfv.STZDWBnVimuWb8.6cjO',NULL,'noa.brun',NULL,13),(45,'2022-07-09 20:19:22.928000','iminkoamoa@gmail.com','Dareine','AMOA','+33 66 10 76 450','$2a$10$X/nRCdXnY4xVNraifQIY0uC5C3.CjGqc0o4B/gjV9jhhB5jCKCtK2',NULL,'maiddima',NULL,13);
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

-- Dump completed on 2022-07-10 13:43:06
