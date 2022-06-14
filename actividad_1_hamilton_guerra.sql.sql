-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para la_ley_stationery_store
DROP DATABASE IF EXISTS `la_ley_stationery_store`;
CREATE DATABASE IF NOT EXISTS `la_ley_stationery_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `la_ley_stationery_store`;

-- Volcando estructura para tabla la_ley_stationery_store.compras
DROP TABLE IF EXISTS `compras`;
CREATE TABLE IF NOT EXISTS `compras` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `supplier_id` smallint(6) NOT NULL,
  `product_id` smallint(6) NOT NULL,
  `unit cost` float(12,2) NOT NULL DEFAULT 0.00,
  `quantity` mediumint(9) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla la_ley_stationery_store.compras: ~1 rows (aproximadamente)
DELETE FROM `compras`;
INSERT INTO `compras` (`id`, `date`, `supplier_id`, `product_id`, `unit cost`, `quantity`) VALUES
	(1, '2022-06-09', 1, 1, 8000.00, 14),
	(2, '2022-06-09', 2, 2, 13000.00, 24);

-- Volcando estructura para tabla la_ley_stationery_store.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `cost` float(12,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla la_ley_stationery_store.products: ~2 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `price`, `cost`) VALUES
	(1, 'memoria usb 8 gb', 5000.00, 8000.00),
	(2, 'adaptador usb', 8000.00, 13000.00);

-- Volcando estructura para tabla la_ley_stationery_store.suppliers
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `nit` varchar(50) NOT NULL DEFAULT '0',
  `address` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla la_ley_stationery_store.suppliers: ~2 rows (aproximadamente)
DELETE FROM `suppliers`;
INSERT INTO `suppliers` (`id`, `name`, `nit`, `address`) VALUES
	(1, 'nia', '900228992-6', 'Cll 35- 105'),
	(2, 'bigtronicas', '900555224-5', 'cll 45 - d - 132');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
