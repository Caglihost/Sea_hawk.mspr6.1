-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           10.11.2-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour network_db
CREATE DATABASE IF NOT EXISTS `network_db` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `network_db`;

-- Listage de la structure de table network_db. scan_results
CREATE TABLE IF NOT EXISTS `scan_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `open_ports` text NOT NULL,
  `scan_time` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Listage des données de la table network_db.scan_results : ~28 rows (environ)
INSERT INTO `scan_results` (`id`, `ip`, `hostname`, `status`, `open_ports`, `scan_time`) VALUES
	(49, '192.168.1.5', 'DESKTOP-M333S0L', 'up', '', '2025-02-25 11:22:01'),
	(50, '192.168.1.36', 'DESKTOP-M333S0L', 'up', '', '2025-02-25 11:22:01'),
	(51, '192.168.1.254', 'DESKTOP-M333S0L', 'up', '53, 80, 443, 445, 554', '2025-02-25 12:08:51'),
	(52, '192.168.1.42', 'DESKTOP-M333S0L', 'up', '53, 135, 139, 445, 515, 902, 912', '2025-02-25 12:08:51'),
	(53, '192.168.1.36', 'DESKTOP-M333S0L', 'up', '53, 902, 912', '2025-02-25 12:08:54'),
	(54, '192.168.1.5', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-02-25 12:12:15'),
	(55, '192.168.1.41', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-02-25 12:12:15'),
	(56, '192.168.1.254', 'DESKTOP-M333S0L', 'up', '53, 80, 443, 445, 554', '2025-02-25 17:54:33'),
	(57, '192.168.1.36', 'DESKTOP-M333S0L', 'up', '53, 902, 912', '2025-02-25 17:54:35'),
	(58, '192.168.1.41', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-02-25 17:57:56'),
	(59, '192.168.1.5', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-02-25 17:57:56'),
	(60, '10.60.60.103', 'DESKTOP-M333S0L', 'up', '53, 135, 139, 445, 515, 902, 912', '2025-02-28 12:09:15'),
	(61, '10.60.63.250', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-02-28 16:55:54'),
	(62, '192.168.1.254', 'DESKTOP-M333S0L', 'up', '53, 80, 443, 445, 554', '2025-03-08 14:59:14'),
	(63, '192.168.1.42', 'DESKTOP-M333S0L', 'up', '53, 135, 139, 445, 515, 902, 912', '2025-03-08 14:59:14'),
	(64, '192.168.1.36', 'DESKTOP-M333S0L', 'up', '53, 902, 912', '2025-03-08 14:59:22'),
	(65, '192.168.1.41', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-03-08 15:02:38'),
	(66, '192.168.1.36', 'DESKTOP-M333S0L', 'up', '53, 902, 912', '2025-03-18 16:33:29'),
	(67, '192.168.1.42', 'DESKTOP-M333S0L', 'up', '53, 135, 139, 445, 515, 902, 912', '2025-03-18 16:33:29'),
	(68, '192.168.1.254', 'DESKTOP-M333S0L', 'up', '53, 80, 443, 445, 554', '2025-03-18 16:33:30'),
	(69, '192.168.1.5', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-03-18 16:36:52'),
	(70, '192.168.1.45', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-03-18 16:36:52'),
	(71, '192.168.1.41', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-03-18 16:36:52'),
	(72, '192.168.123.28', 'DESKTOP-M333S0L', 'up', '53', '2025-03-21 12:28:26'),
	(73, '192.168.123.187', 'DESKTOP-M333S0L', 'up', '53, 135, 139, 445, 515, 902, 912', '2025-03-21 12:28:26'),
	(74, '192.168.123.122', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-03-21 12:31:51'),
	(75, '192.168.123.187', 'DESKTOP-M333S0L', 'up', '53, 135, 139, 445, 515, 902, 912', '2025-03-21 14:29:10'),
	(76, '192.168.123.186', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-03-21 14:32:33'),
	(77, '192.168.123.122', 'DESKTOP-M333S0L', 'up', 'Aucun port ouvert', '2025-03-21 14:32:33');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
