-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `vtc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `vtc`;

DROP TABLE IF EXISTS `association_vehicule_conducteur`;
CREATE TABLE `association_vehicule_conducteur` (
  `id_association` int(11) NOT NULL AUTO_INCREMENT,
  `id_vehicule` int(11) NOT NULL,
  `id_conducteur` int(11) NOT NULL,
  `fk_id_vehicule` int(11) DEFAULT NULL,
  `fk_id_conducteur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_association`),
  KEY `fk_id_vehicule` (`fk_id_vehicule`),
  KEY `fk_id_conducteur` (`fk_id_conducteur`),
  CONSTRAINT `association_vehicule_conducteur_ibfk_1` FOREIGN KEY (`fk_id_vehicule`) REFERENCES `vehicule` (`id_vehicule`),
  CONSTRAINT `association_vehicule_conducteur_ibfk_2` FOREIGN KEY (`fk_id_conducteur`) REFERENCES `conducteur` (`id_conducteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `association_vehicule_conducteur` (`id_association`, `id_vehicule`, `id_conducteur`, `fk_id_vehicule`, `fk_id_conducteur`) VALUES
(1,	501,	1,	NULL,	NULL),
(2,	502,	2,	NULL,	NULL),
(3,	503,	3,	NULL,	NULL),
(4,	504,	4,	NULL,	NULL),
(5,	501,	3,	NULL,	NULL);

DROP TABLE IF EXISTS `conducteur`;
CREATE TABLE `conducteur` (
  `id_conducteur` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id_conducteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `conducteur` (`id_conducteur`, `prenom`, `nom`) VALUES
(1,	'Julien',	'Avigny'),
(2,	'Morgane',	'Alamia'),
(3,	'Philippe',	'Pandre'),
(4,	'Amelie',	'Blondelle'),
(5,	'Alex',	'Richy');

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE `vehicule` (
  `id_vehicule` int(11) NOT NULL AUTO_INCREMENT,
  `marque` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `couleur` varchar(100) NOT NULL,
  `immatriculation` varchar(100) NOT NULL,
  PRIMARY KEY (`id_vehicule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `vehicule` (`id_vehicule`, `marque`, `modele`, `couleur`, `immatriculation`) VALUES
(501,	'Peugeot',	'807',	'noir',	'AB-355-CA'),
(502,	'Citroen',	'C8',	'bleu',	'CE-122-AE'),
(503,	'Mercedes',	'C1s',	'vert',	'FG-953-HI'),
(504,	'Volkswagen',	'Touran',	'noir',	'SO-322-NV'),
(505,	'Skoda',	'Octavia',	'gris',	'PB-631-TK'),
(506,	'Volkswagen',	'Passat',	'gris',	'XN-973-MM');

-- 2020-04-29 11:34:29