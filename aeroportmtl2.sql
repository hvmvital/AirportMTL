-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Час створення: Бер 30 2019 р., 21:13
-- Версія сервера: 5.6.41
-- Версія PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Структура таблиці `aeroport`
--

CREATE TABLE `aeroport` (
  `ID` int(10) NOT NULL,
  `NOM` varchar(100) NOT NULL,
  `ID_VILLE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `aeroport`
--

INSERT INTO `aeroport` (`ID`, `NOM`, `ID_VILLE`) VALUES
(1, 'Toronto', 1),
(2, 'Toronto City', 1),
(3, 'Vancouver', 2),
(4, 'Edmonton', 3),
(5, 'Winnipeg', 4);

-- --------------------------------------------------------

--
-- Структура таблиці `compagnie`
--

CREATE TABLE `compagnie` (
  `ID` int(10) NOT NULL,
  `NOM` varchar(100) NOT NULL,
  `IMAGE` varchar(200) NOT NULL,
  `ADRESSE` varchar(400) DEFAULT NULL,
  `TELEPHONE` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `compagnie`
--

INSERT INTO `compagnie` (`ID`, `NOM`, `IMAGE`, `ADRESSE`, `TELEPHONE`) VALUES
(1, 'Air Canada', 'images/aircanada.png', 'Montreal', '18882472262'),
(2, 'Air Transat', 'images/airtransat.png', 'Montreal', '18778726728'),
(3, 'WestJet', 'images/westjet.png', 'Calgari', '18889378538');

-- --------------------------------------------------------

--
-- Структура таблиці `details`
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
-- Дамп даних таблиці `details`
--

INSERT INTO `details` (`ID`, `ID_VOL`, `DATE_PREVU`, `DATE_REVISE`, `HEURE_REVISE`, `PORTE`, `STATUT`) VALUES
(1, 1, '2019-03-26', '2019-03-26', '19:00:00', NULL, 3),
(2, 2, '2019-03-27', '2019-03-27', NULL, 'D34', 1),
(3, 4, '2019-03-26', '2019-03-26', '20:11:00', 'E45', 6),
(4, 7, '2019-03-26', '2019-03-26', '12:17:00', 'E33', 3),
(6, 3, '2019-03-27', '2019-03-31', NULL, NULL, 4),
(7, 5, '2019-03-26', '2019-03-31', NULL, 'A56', 1),
(8, 8, '2019-03-26', '2019-03-26', '09:44:00', 'M55', 2),
(11, 10, '2019-03-31', '2019-04-03', '13:03:00', 'D40', 1),
(12, 11, '2019-04-22', '2019-04-30', '06:03:00', 'P90', 3),
(15, 6, '2019-03-30', '2019-03-31', '06:03:00', 'P09', 4),
(16, 12, '2019-03-30', '2019-03-31', '02:00:00', NULL, 3),
(17, 13, '2019-03-30', '2019-03-31', '19:07:00', 'T66', 5),
(18, 14, '2019-03-30', '2019-03-31', '13:10:00', NULL, 3),
(21, 15, '2019-03-30', '2019-03-31', '15:36:00', 'O88', 5),
(22, 16, '2019-03-30', '2019-03-31', '22:36:00', 'U77', 5),
(23, 17, '2019-03-30', '2019-04-02', '15:00:00', NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `inscrits`
--

CREATE TABLE `inscrits` (
  `ID` int(10) NOT NULL,
  `Telephone` varchar(11) NOT NULL,
  `ID_VOL` int(10) NOT NULL,
  `ACTIF` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `inscrits`
--

INSERT INTO `inscrits` (`ID`, `Telephone`, `ID_VOL`, `ACTIF`) VALUES
(1, '5149915806', 1, 1),
(2, '4389915802', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `statut`
--

CREATE TABLE `statut` (
  `ID` int(10) NOT NULL,
  `NOM` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `statut`
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
-- Структура таблиці `type`
--

CREATE TABLE `type` (
  `ID` int(10) NOT NULL,
  `NOM` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `type`
--

INSERT INTO `type` (`ID`, `NOM`) VALUES
(1, 'Depart'),
(2, 'Arrivee');

-- --------------------------------------------------------

--
-- Структура таблиці `ville`
--

CREATE TABLE `ville` (
  `ID` int(10) NOT NULL,
  `NOM` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `ville`
--

INSERT INTO `ville` (`ID`, `NOM`) VALUES
(1, 'Toronto'),
(2, 'Vancouver'),
(3, 'Edmonton'),
(4, 'Winnipeg');

-- --------------------------------------------------------

--
-- Структура таблиці `vols`
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
-- Дамп даних таблиці `vols`
--

INSERT INTO `vols` (`ID`, `NumeroVol`, `Heure_prevu`, `ID_AEROPORT`, `ID_COMPAGNIE`, `TYPE`) VALUES
(1, 'AC1855', '11:25:00', 1, 1, 1),
(2, 'AC3611', '12:15:00', 2, 1, 1),
(3, 'AC8978', '19:30:00', 3, 1, 2),
(4, 'AC7711', '21:00:00', 4, 1, 2),
(5, 'WS3520', '10:27:00', 4, 3, 2),
(6, 'WS5698', '09:20:00', 5, 3, 1),
(7, 'TS195', '08:24:00', 1, 2, 2),
(8, 'TS589', '12:22:00', 3, 2, 1),
(10, 'TS5677', '09:21:00', 5, 2, 1),
(11, 'TS5632', '21:12:00', 5, 2, 2),
(12, 'WJ9901', '07:00:00', 4, 3, 1),
(13, 'WJ4333', '11:00:00', 2, 3, 1),
(14, 'WJ4353', '10:10:00', 3, 3, 1),
(15, 'AC4344', '19:06:00', 5, 1, 1),
(16, 'AC2222', '06:02:00', 4, 1, 1),
(17, 'AC1122', '16:10:00', 1, 1, 1);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `aeroport`
--
ALTER TABLE `aeroport`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_AEROPORT_VILLE` (`ID_VILLE`);

--
-- Індекси таблиці `compagnie`
--
ALTER TABLE `compagnie`
  ADD PRIMARY KEY (`ID`);

--
-- Індекси таблиці `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_DETAILS_VOLS` (`ID_VOL`),
  ADD KEY `FK_DETAILS_STATUT` (`STATUT`);

--
-- Індекси таблиці `inscrits`
--
ALTER TABLE `inscrits`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_INSCRITS_VOLS` (`ID_VOL`);

--
-- Індекси таблиці `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`ID`);

--
-- Індекси таблиці `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`ID`);

--
-- Індекси таблиці `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`ID`);

--
-- Індекси таблиці `vols`
--
ALTER TABLE `vols`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_VOLS_TYPE` (`TYPE`),
  ADD KEY `FK_VOLS_COMPAGNIE` (`ID_COMPAGNIE`),
  ADD KEY `FK_VOLS_AEROPORT` (`ID_AEROPORT`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `aeroport`
--
ALTER TABLE `aeroport`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `compagnie`
--
ALTER TABLE `compagnie`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `details`
--
ALTER TABLE `details`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблиці `inscrits`
--
ALTER TABLE `inscrits`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `statut`
--
ALTER TABLE `statut`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблиці `type`
--
ALTER TABLE `type`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `ville`
--
ALTER TABLE `ville`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `vols`
--
ALTER TABLE `vols`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `aeroport`
--
ALTER TABLE `aeroport`
  ADD CONSTRAINT `FK_AEROPORT_VILLE` FOREIGN KEY (`ID_VILLE`) REFERENCES `ville` (`ID`) ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `FK_DETAILS_STATUT` FOREIGN KEY (`STATUT`) REFERENCES `statut` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DETAILS_VOLS` FOREIGN KEY (`ID_VOL`) REFERENCES `vols` (`ID`) ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `inscrits`
--
ALTER TABLE `inscrits`
  ADD CONSTRAINT `FK_INSCRITS_VOLS` FOREIGN KEY (`ID_VOL`) REFERENCES `aeroport` (`ID`) ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `vols`
--
ALTER TABLE `vols`
  ADD CONSTRAINT `FK_VOLS_AEROPORT` FOREIGN KEY (`ID_AEROPORT`) REFERENCES `aeroport` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_VOLS_COMPAGNIE` FOREIGN KEY (`ID_COMPAGNIE`) REFERENCES `compagnie` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_VOLS_TYPE` FOREIGN KEY (`TYPE`) REFERENCES `type` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
