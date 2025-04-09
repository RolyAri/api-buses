-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db-buses
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activo` bit(1) NOT NULL,
  `caracteristicas` varchar(255) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `numero_de_bus` varchar(255) DEFAULT NULL,
  `placa` varchar(255) DEFAULT NULL,
  `marca_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6mmbt43kmdip2jh71qpynr0xl` (`marca_id`),
  CONSTRAINT `FK6mmbt43kmdip2jh71qpynr0xl` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,_binary '','Bus de larga distancia, cómodo, con wifi y asientos reclinables','2025-04-09 00:33:11','001','ABC123',1),(2,_binary '','Bus urbano, con aire acondicionado y asientos confortables','2025-04-09 00:33:11','002','XYZ456',2),(3,_binary '\0','Bus eléctrico, ecológico y silencioso','2025-04-09 00:33:11','003','LMN789',3),(4,_binary '','Bus de lujo con pantallas, asientos de cuero y servicio a bordo','2025-04-09 00:33:11','004','DEF987',4),(5,_binary '','Bus escolar con cinturones de seguridad y asientos acolchonados','2025-04-09 00:33:11','005','GHI123',5),(6,_binary '\0','Bus híbrido con motor eléctrico y de combustión','2025-04-09 00:33:11','006','JKL456',6),(7,_binary '','Bus turístico con capacidad para 50 personas','2025-04-09 00:33:11','007','MNO789',7),(8,_binary '','Bus económico con bajos costos de mantenimiento','2025-04-09 00:33:11','008','PQR987',8),(9,_binary '\0','Bus de lujo con asientos ergonómicos y servicio de comida','2025-04-09 00:33:11','009','STU654',9),(10,_binary '','Bus urbano con accesibilidad para personas con discapacidad','2025-04-09 00:33:11','010','VWX321',2),(11,_binary '\0','Bus híbrido de bajo consumo energético','2025-04-09 00:33:11','011','YZA432',6),(12,_binary '','Bus de transporte público con tecnología de punta','2025-04-09 00:33:11','012','BCD543',7),(13,_binary '','Bus de largo recorrido con sistema de entretenimiento','2025-04-09 00:33:11','013','EFG654',1),(14,_binary '\0','Bus con asientos reclinables y aire acondicionado','2025-04-09 00:33:11','014','HIJ765',4),(15,_binary '','Bus de transporte de carga con gran capacidad','2025-04-09 00:33:11','015','KLM876',3),(16,_binary '','Bus de lujo con conexión Wi-Fi y entretenimiento a bordo','2025-04-09 00:33:11','016','NOP987',4),(17,_binary '\0','Bus con sistema de refrigeración para mercancías','2025-04-09 00:33:11','017','QRS234',5),(18,_binary '','Bus ecológico con energía solar y eléctrica','2025-04-09 00:33:11','018','TUV567',6),(19,_binary '','Bus urbano con espacio para bicicletas','2025-04-09 00:33:11','019','WXY678',2),(20,_binary '','Bus interurbano con asientos de alta comodidad','2025-04-09 00:33:11','020','ZAB789',7),(21,_binary '','Bus eléctrico con tecnología de carga rápida y cero emisiones','2025-04-09 00:33:46','021','ABX123',3),(22,_binary '\0','Bus antiguo con asientos de madera y sin aire acondicionado','2025-04-09 00:33:46','022','CDE456',2),(23,_binary '','Bus interurbano con sistema de entretenimiento y pantallas HD','2025-04-09 00:33:46','023','FGH789',1),(24,_binary '','Bus urbano con cámara de seguridad y sistema de monitoreo GPS','2025-04-09 00:33:46','024','IJK012',4),(25,_binary '\0','Bus de carga con gran capacidad y espacio para mercancías','2025-04-09 00:33:46','025','LMN345',3),(26,_binary '','Bus turístico de lujo con asientos cama y servicio de guía','2025-04-09 00:33:46','026','OPQ678',7),(27,_binary '','Bus escolar con zona de juegos para niños y ventilación natural','2025-04-09 00:33:46','027','RST901',5),(28,_binary '','Bus de transporte público con acceso a personas con movilidad reducida','2025-04-09 00:33:46','028','UVW234',2),(29,_binary '\0','Bus usado con sistema de frenos antiguo y asientos estándar','2025-04-09 00:33:46','029','XYZ567',2),(30,_binary '','Bus rápido con motor diésel y asientos ergonómicos','2025-04-09 00:33:46','030','ABC890',1),(31,_binary '','Bus híbrido con motor eléctrico y de gasolina para mayor eficiencia','2025-04-09 00:33:46','031','DEF123',6),(32,_binary '','Bus de lujo para viajes de largas distancias, con Wi-Fi y mesas','2025-04-09 00:33:46','032','GHI456',4),(33,_binary '\0','Bus de transporte público con frecuencias altas y espacio reducido','2025-04-09 00:33:46','033','JKL789',2),(34,_binary '','Bus de turismo ecológico con paneles solares y reciclaje integrado','2025-04-09 00:33:46','034','MNO012',6),(35,_binary '\0','Bus de baja velocidad con aire acondicionado defectuoso','2025-04-09 00:33:46','035','PQR345',3),(36,_binary '','Bus urbano de doble piso con capacidad para 80 personas','2025-04-09 00:33:46','036','STU678',1),(37,_binary '','Bus de carga con plataforma para transporte de vehículos','2025-04-09 00:33:46','037','VWX901',3),(38,_binary '','Bus turístico con asientos panorámicos y aire acondicionado','2025-04-09 00:33:46','038','YZA234',7),(39,_binary '','Bus híbrido con opción de recarga eléctrica y motor eficiente','2025-04-09 00:33:46','039','BCD567',6),(40,_binary '\0','Bus de transporte público con motor ineficiente y problemas mecánicos','2025-04-09 00:33:46','040','EFG890',5);
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activo` bit(1) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,_binary '','Marca de buses internacional con alta fiabilidad','Volvo'),(2,_binary '','Marca de buses especializada en transporte urbano','Mercedes-Benz'),(3,_binary '\0','Marca de buses ecológicos','BYD'),(4,_binary '','Marca de buses de lujo','Scania'),(5,_binary '','Marca especializada en transporte escolar','Daimler'),(6,_binary '\0','Marca de buses de baja emisión de carbono','MAN'),(7,_binary '','Marca líder en buses turísticos','Irizar'),(8,_binary '','Marca de buses híbridos y eléctricos','Tesla'),(9,_binary '\0','Marca de buses económicos y accesibles','Ford'),(10,_binary '','Marca de buses de alta gama y confort','Neoplan');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-08 22:43:34
