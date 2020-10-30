-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8081
-- Generation Time: Oct 30, 2020 at 01:53 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `binotrome`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_apprenants`
--

CREATE TABLE `table_apprenants` (
  `id_apprenant` int(11) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_apprenants`
--

INSERT INTO `table_apprenants` (`id_apprenant`, `prenom`, `nom`) VALUES
(1, 'Amaury', 'Bonneau'),
(2, 'Aude', 'Pertron'),
(3, 'Baptiste', 'Le Berre'),
(4, 'Baptiste', 'Le Goff'),
(5, 'Celine', 'Guillen'),
(6, 'Christelle', 'Karfaoui'),
(7, 'Christian', 'Mbarga Mvogo'),
(8, 'Erwan', 'Cloatre'),
(9, 'Eva', 'Moulard'),
(10, 'Guillaume', 'Verpoest'),
(11, 'Jamal', 'Ibanni'),
(12, 'Jérémy', 'Le Joncour'),
(13, 'Julien', 'Furiga'),
(14, 'Ludivine', 'Maintier'),
(15, 'Luigi', 'Bokalli'),
(16, 'Patricia', 'Le Moal'),
(17, 'Paul', 'Sabia'),
(18, 'Pereg', 'Hergoualc\'h'),
(19, 'Ronan', 'Rioual'),
(20, 'Thomas', 'Chaigneau');

-- --------------------------------------------------------

--
-- Table structure for table `table_apprenants_groupe`
--

CREATE TABLE `table_apprenants_groupe` (
  `id_apprenant` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `id_projet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_apprenants_groupe`
--

INSERT INTO `table_apprenants_groupe` (`id_apprenant`, `id_groupe`, `id_projet`) VALUES
(12, 1, 16),
(6, 1, 16),
(17, 1, 16),
(5, 2, 16),
(14, 2, 16),
(7, 2, 16),
(4, 3, 16),
(18, 3, 16),
(19, 3, 16),
(2, 4, 16),
(15, 4, 16),
(20, 4, 16),
(11, 5, 16),
(9, 5, 16),
(3, 5, 16),
(1, 6, 16),
(13, 6, 16),
(16, 6, 16),
(8, 7, 16),
(10, 7, 16),
(10, 1, 17),
(12, 1, 17),
(13, 1, 17),
(3, 2, 17),
(18, 2, 17),
(5, 2, 17),
(16, 3, 17),
(11, 3, 17),
(17, 3, 17),
(2, 4, 17),
(4, 4, 17),
(7, 4, 17),
(6, 5, 17),
(9, 5, 17),
(19, 5, 17),
(15, 6, 17),
(8, 6, 17),
(1, 6, 17),
(20, 7, 17),
(14, 7, 17);

-- --------------------------------------------------------

--
-- Table structure for table `table_groupe`
--

CREATE TABLE `table_groupe` (
  `id_groupe` int(11) NOT NULL,
  `libellé` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_groupe`
--

INSERT INTO `table_groupe` (`id_groupe`, `libellé`) VALUES
(1, 'Groupe 1'),
(2, 'Groupe 2'),
(3, 'Groupe 3'),
(4, 'Groupe 4'),
(5, 'Groupe 5'),
(6, 'Groupe 6'),
(7, 'Groupe 7'),
(8, 'Groupe 8'),
(9, 'Groupe 9'),
(10, 'Groupe 10');

-- --------------------------------------------------------

--
-- Table structure for table `table_projet`
--

CREATE TABLE `table_projet` (
  `id_projet` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_projet`
--

INSERT INTO `table_projet` (`id_projet`, `nom`, `date`) VALUES
(16, 'Projet1', '2020-10-30 11:31:25'),
(17, 'Projet 2', '2020-10-30 11:31:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_apprenants`
--
ALTER TABLE `table_apprenants`
  ADD PRIMARY KEY (`id_apprenant`);

--
-- Indexes for table `table_apprenants_groupe`
--
ALTER TABLE `table_apprenants_groupe`
  ADD KEY `id_apprenant` (`id_apprenant`),
  ADD KEY `id_groupe` (`id_groupe`),
  ADD KEY `id_projet` (`id_projet`);

--
-- Indexes for table `table_groupe`
--
ALTER TABLE `table_groupe`
  ADD PRIMARY KEY (`id_groupe`);

--
-- Indexes for table `table_projet`
--
ALTER TABLE `table_projet`
  ADD PRIMARY KEY (`id_projet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_apprenants`
--
ALTER TABLE `table_apprenants`
  MODIFY `id_apprenant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `table_groupe`
--
ALTER TABLE `table_groupe`
  MODIFY `id_groupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_projet`
--
ALTER TABLE `table_projet`
  MODIFY `id_projet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_apprenants_groupe`
--
ALTER TABLE `table_apprenants_groupe`
  ADD CONSTRAINT `table_apprenants_groupe_ibfk_1` FOREIGN KEY (`id_apprenant`) REFERENCES `table_apprenants` (`id_apprenant`),
  ADD CONSTRAINT `table_apprenants_groupe_ibfk_2` FOREIGN KEY (`id_groupe`) REFERENCES `table_groupe` (`id_groupe`),
  ADD CONSTRAINT `table_apprenants_groupe_ibfk_3` FOREIGN KEY (`id_projet`) REFERENCES `table_projet` (`id_projet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
