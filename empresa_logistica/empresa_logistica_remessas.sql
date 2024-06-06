-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa_logistica
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `remessas`
--

DROP TABLE IF EXISTS `remessas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remessas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `origem` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `descricao` text,
  `status` enum('em_transito','entregue','pendente') DEFAULT 'pendente',
  `data_envio` datetime DEFAULT NULL,
  `data_entrega` datetime DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  `transportadora_id` int DEFAULT NULL,
  `rota_id` int DEFAULT NULL,
  `veiculo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `transportadora_id` (`transportadora_id`),
  KEY `rota_id` (`rota_id`),
  KEY `veiculo_id` (`veiculo_id`),
  CONSTRAINT `remessas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `remessas_ibfk_2` FOREIGN KEY (`transportadora_id`) REFERENCES `transportadoras` (`id`),
  CONSTRAINT `remessas_ibfk_3` FOREIGN KEY (`rota_id`) REFERENCES `rotas` (`id`),
  CONSTRAINT `remessas_ibfk_4` FOREIGN KEY (`veiculo_id`) REFERENCES `veiculos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remessas`
--

LOCK TABLES `remessas` WRITE;
/*!40000 ALTER TABLE `remessas` DISABLE KEYS */;
/*!40000 ALTER TABLE `remessas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-06 17:01:07
