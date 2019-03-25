-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 04:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aeroportmtl`
--



-- --------------------------------------------------------

--
-- Table structure for table `aeroport`
--

CREATE TABLE `aeroport` (
  `ID` int(10) NOT NULL,
  `NOM` varchar(100) NOT NULL,
  `ID_VILLE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aeroport`
--

INSERT INTO `aeroport` (`ID`, `NOM`, `ID_VILLE`) VALUES
(1, 'Toronto', 1),
(2, 'Toronto City', 1),
(3, 'Vancouver', 2),
(4, 'Edmonton', 3),
(5, 'Winnipeg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `compagnie`
--

CREATE TABLE `compagnie` (
  `ID` int(10) NOT NULL,
  `NOM` varchar(100) NOT NULL,
  `IMAGE` varchar(200) NOT NULL,
  `ADRESSE` varchar(400) DEFAULT NULL,
  `TELEPHONE` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compagnie`
--

INSERT INTO `compagnie` (`ID`, `NOM`, `IMAGE`, `ADRESSE`, `TELEPHONE`) VALUES
(1, 'Air Canada', 'images/aircanada.png', 'Montreal', '18882472262'),
(2, 'Air Transat', 'images/airtransat.png', 'Montreal', '18778726728'),
(3, 'WestJet', 'images/westjet.png', 'Calgari', '18889378538');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `ID` int(10) NOT NULL,
  `ID_VOL` int(10) NOT NULL,
  `DATE_PREVU` date NOT NULL,
  `DATE_REVISE` date DEFAULT NULL,
  `HEURE_REVISE` time DEFAULT NULL,
  `PORTE` varchar(4) DEFAULT NULL,
  `STATUT` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`ID`, `ID_VOL`, `DATE_PREVU`, `DATE_REVISE`, `HEURE_REVISE`, `PORTE`, `STATUT`) VALUES
(1, 1, '2019-03-26', '2019-03-26', '19:00:00', NULL, 3),
(2, 2, '2019-03-27', '2019-03-27', NULL, 'D34', 1),
(3, 4, '2019-03-26', '2019-03-26', '20:11:00', 'E45', 6),
(4, 7, '2019-03-26', '2019-03-26', '12:17:00', 'E33', 3),
(5, 8, '2019-03-27', NULL, NULL, NULL, 5),
(6, 3, '2019-03-27', '0000-00-00', NULL, NULL, 4),
(7, 5, '2019-03-26', NULL, NULL, 'A56', 1),
(8, 8, '2019-03-26', '2019-03-26', '09:44:00', 'M55', 2);

-- --------------------------------------------------------

--
-- Table structure for table `inscrits`
--

CREATE TABLE `inscrits` (
  `ID` int(10) NOT NULL,
  `Telephone` varchar(11) NOT NULL,
  `ID_VOL` int(10) NOT NULL,
  `ACTIF` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inscrits`
--

INSERT INTO `inscrits` (`ID`, `Telephone`, `ID_VOL`, `ACTIF`) VALUES
(1, '5149915806', 1, 1),
(2, '4389915802', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `statut`
--

CREATE TABLE `statut` (
  `ID` int(10) NOT NULL,
  `NOM` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statut`
--

INSERT INTO `statut` (`ID`, `NOM`) VALUES
(1, 'Arrivee'),
(2, 'Parti'),
(3, 'Retarde'),
(4, 'Annule'),
(5, 'Temps revise'),
(6, 'Devance');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `ID` int(10) NOT NULL,
  `NOM` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`ID`, `NOM`) VALUES
(1, 'Depart'),
(2, 'Arrivee');

-- --------------------------------------------------------

--
-- Table structure for table `ville`
--

CREATE TABLE `ville` (
  `ID` int(10) NOT NULL,
  `NOM` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ville`
--

INSERT INTO `ville` (`ID`, `NOM`) VALUES
(1, 'Toronto'),
(2, 'Vancouver'),
(3, 'Edmonton'),
(4, 'Winnipeg');

-- --------------------------------------------------------

--
-- Table structure for table `vols`
--

CREATE TABLE `vols` (
  `ID` int(10) NOT NULL,
  `NumeroVol` varchar(6) NOT NULL,
  `Heure_prevu` time NOT NULL,
  `ID_AEROPORT` int(10) NOT NULL,
  `ID_COMPAGNIE` int(10) NOT NULL,
  `TYPE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vols`
--

INSERT INTO `vols` (`ID`, `NumeroVol`, `Heure_prevu`, `ID_AEROPORT`, `ID_COMPAGNIE`, `TYPE`) VALUES
(1, 'AC1855', '11:25:00', 1, 1, 1),
(2, 'AC3611', '12:15:00', 2, 1, 1),
(3, 'AC8978', '19:30:00', 3, 1, 2),
(4, 'AC7711', '21:00:00', 4, 1, 2),
(5, 'WS3520', '10:27:00', 4, 3, 2),
(6, 'WS5698', '09:20:00', 5, 3, 1),
(7, 'TS195', '08:24:00', 1, 2, 2),
(8, 'TS589', '12:22:00', 3, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aeroport`
--
ALTER TABLE `aeroport`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_AEROPORT_VILLE` (`ID_VILLE`);

--
-- Indexes for table `compagnie`
--
ALTER TABLE `compagnie`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_DETAILS_VOLS` (`ID_VOL`),
  ADD KEY `FK_DETAILS_STATUT` (`STATUT`);

--
-- Indexes for table `inscrits`
--
ALTER TABLE `inscrits`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_INSCRITS_VOLS` (`ID_VOL`);

--
-- Indexes for table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vols`
--
ALTER TABLE `vols`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_VOLS_TYPE` (`TYPE`),
  ADD KEY `FK_VOLS_COMPAGNIE` (`ID_COMPAGNIE`),
  ADD KEY `FK_VOLS_AEROPORT` (`ID_AEROPORT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aeroport`
--
ALTER TABLE `aeroport`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `compagnie`
--
ALTER TABLE `compagnie`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inscrits`
--
ALTER TABLE `inscrits`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statut`
--
ALTER TABLE `statut`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ville`
--
ALTER TABLE `ville`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vols`
--
ALTER TABLE `vols`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aeroport`
--
ALTER TABLE `aeroport`
  ADD CONSTRAINT `FK_AEROPORT_VILLE` FOREIGN KEY (`ID_VILLE`) REFERENCES `ville` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `FK_DETAILS_STATUT` FOREIGN KEY (`STATUT`) REFERENCES `statut` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DETAILS_VOLS` FOREIGN KEY (`ID_VOL`) REFERENCES `vols` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `inscrits`
--
ALTER TABLE `inscrits`
  ADD CONSTRAINT `FK_INSCRITS_VOLS` FOREIGN KEY (`ID_VOL`) REFERENCES `aeroport` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `vols`
--
ALTER TABLE `vols`
  ADD CONSTRAINT `FK_VOLS_AEROPORT` FOREIGN KEY (`ID_AEROPORT`) REFERENCES `aeroport` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_VOLS_COMPAGNIE` FOREIGN KEY (`ID_COMPAGNIE`) REFERENCES `compagnie` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_VOLS_TYPE` FOREIGN KEY (`TYPE`) REFERENCES `type` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
