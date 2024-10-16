-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 16 oct. 2024 à 00:08
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibal_janati_diallo`
--
CREATE DATABASE IF NOT EXISTS `bibal_janati_diallo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bibal_janati_diallo`;

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `ID` int(11) NOT NULL,
  `ExemplaireId` int(11) NOT NULL,
  `UsagerID` int(11) NOT NULL,
  `DateEmprunt` date NOT NULL,
  `DateRetourPrevu` date NOT NULL,
  `DateRetourEffective` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`ID`, `ExemplaireId`, `UsagerID`, `DateEmprunt`, `DateRetourPrevu`, `DateRetourEffective`) VALUES
(1, 4, 59, '2016-04-28', '2016-05-15', NULL),
(2, 13, 56, '2016-04-29', '2016-05-16', NULL),
(3, 4, 35, '2016-04-28', '2016-05-10', NULL),
(4, 16, 18, '2016-04-22', '2016-05-15', NULL),
(5, 34, 82, '2016-04-22', '2016-05-03', NULL),
(6, 11, 68, '2016-04-21', '2016-05-14', NULL),
(7, 9, 30, '2016-04-22', '2016-05-15', NULL),
(8, 25, 92, '2016-04-21', '2016-05-14', NULL),
(9, 40, 52, '2016-04-27', '2016-05-10', NULL),
(10, 31, 44, '2016-04-24', '2016-05-16', NULL),
(11, 22, 8, '2016-04-27', '2016-05-03', NULL),
(12, 18, 83, '2016-04-29', '2016-05-13', NULL),
(13, 22, 25, '2016-04-26', '2016-05-18', NULL),
(14, 27, 36, '2016-04-21', '2016-05-17', NULL),
(15, 30, 69, '2016-04-27', '2016-05-08', '2016-04-21'),
(16, 38, 21, '2016-04-26', '2016-05-16', NULL),
(17, 10, 72, '2016-04-29', '2016-05-15', NULL),
(18, 7, 69, '2016-04-27', '2016-05-18', NULL),
(19, 39, 90, '2016-04-27', '2016-05-06', NULL),
(20, 19, 5, '2016-04-23', '2016-05-04', NULL),
(21, 23, 91, '2016-04-29', '2016-05-16', NULL),
(22, 12, 39, '2016-04-24', '2016-05-18', NULL),
(23, 25, 81, '2016-04-23', '2016-05-02', NULL),
(24, 18, 51, '2016-04-24', '2016-05-04', NULL),
(25, 22, 34, '2016-04-21', '2016-05-14', NULL),
(26, 4, 56, '2016-04-24', '2016-05-09', NULL),
(27, 5, 93, '2016-04-26', '2016-05-17', NULL),
(28, 39, 89, '2016-04-27', '2016-05-13', NULL),
(29, 40, 46, '2016-04-27', '2016-05-04', NULL),
(30, 25, 65, '2016-04-22', '2016-05-02', NULL),
(31, 24, 82, '2016-04-21', '2016-05-13', '2016-04-21'),
(32, 35, 9, '2016-04-22', '2016-05-06', NULL),
(33, 30, 51, '2016-04-21', '2016-05-14', '2016-04-21'),
(34, 18, 51, '2016-04-26', '2016-05-08', NULL),
(35, 35, 22, '2016-04-25', '2016-05-17', NULL),
(36, 5, 75, '2016-04-26', '2016-05-03', NULL),
(37, 22, 98, '2016-04-27', '2016-05-04', NULL),
(38, 36, 80, '2016-04-23', '2016-05-18', NULL),
(39, 8, 69, '2016-04-28', '2016-05-01', NULL),
(40, 39, 84, '2016-04-24', '2016-05-13', NULL),
(41, 15, 1, '2016-04-21', '2016-05-01', NULL),
(42, 6, 2, '2016-04-22', '2016-05-02', '2016-04-22'),
(43, 6, 1, '2016-04-22', '2016-05-02', '2016-04-22');

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

CREATE TABLE `exemplaire` (
  `ID` int(11) NOT NULL,
  `OeuvreID` int(11) NOT NULL,
  `etat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `exemplaire`
--

INSERT INTO `exemplaire` (`ID`, `OeuvreID`, `etat`) VALUES
(1, 8, 'Neuf '),
(2, 8, 'Neuf '),
(3, 2, 'Neuf '),
(4, 8, ' Bon '),
(5, 18, ' Bon '),
(6, 1, ' Bon '),
(7, 14, ' Vieux'),
(8, 20, ' Vieux'),
(9, 11, ' Vieux'),
(10, 1, 'Neuf '),
(11, 4, 'Neuf '),
(12, 1, 'Neuf '),
(13, 1, ' Bon '),
(14, 1, ' Bon '),
(15, 3, ' Bon '),
(16, 14, ' Vieux'),
(17, 4, ' Vieux'),
(18, 13, ' Vieux'),
(19, 7, 'Neuf '),
(20, 17, 'Neuf '),
(21, 2, 'Neuf '),
(22, 12, ' Bon '),
(23, 12, ' Bon '),
(24, 2, ' Bon '),
(25, 2, ' Vieux'),
(27, 6, ' Vieux'),
(28, 13, 'Neuf '),
(29, 13, 'Neuf '),
(30, 3, 'Neuf '),
(31, 19, ' Bon '),
(32, 17, ' Bon '),
(33, 10, ' Bon '),
(34, 10, ' Vieux'),
(35, 12, ' Vieux'),
(36, 9, ' Vieux'),
(37, 15, 'Neuf '),
(38, 14, 'Neuf '),
(39, 7, 'Neuf '),
(40, 17, ' Bon '),
(45, 27, 'Neuf'),
(46, 27, 'Vieux');

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

CREATE TABLE `oeuvre` (
  `ID` int(11) NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Auteur` varchar(255) NOT NULL,
  `Categorie` varchar(255) NOT NULL,
  `NbResa` int(11) NOT NULL DEFAULT 0,
  `Lending` int(11) NOT NULL,
  `TypeOeuvre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `oeuvre`
--

INSERT INTO `oeuvre` (`ID`, `Titre`, `Auteur`, `Categorie`, `NbResa`, `Lending`, `TypeOeuvre`) VALUES
(1, 'metus', 'Amery Tyler', 'Classiques ', 4, 10, 'Livre'),
(2, 'magna et ipsum', 'Petra Fry', 'Classiques ', 0, 10, 'Livre '),
(3, 'ligula.', 'Fritz Smith', 'Classiques ', 0, 10, 'Livre'),
(4, 'ante. Vivamus', 'Candace Kidd', ' Policier ', 1, 30, 'Livre'),
(5, 'tempor', 'Gretchen Austin', ' Policier ', 1, 30, ' Magazine'),
(6, 'mi fringilla mi', 'Gwendolyn Livingston', ' Policier ', 2, 30, ' Magazine'),
(7, 'cursus in', 'Jackson Ramsey', ' Historique ', 3, 10, 'Livre '),
(8, 'porta', 'Destiny Taylor', ' Historique ', 1, 10, 'Livre '),
(9, 'erat', 'Heidi Church', ' Historique ', 3, 10, 'Livre '),
(10, 'magna et ipsum', 'Desirae Hodges', ' Humour', 2, 30, ' Magazine'),
(11, 'Sed congue', 'Peter Lara', ' Humour', 2, 30, ' Magazine'),
(12, 'justo sit amet', 'Nyssa Gillespie', ' Humour', 1, 30, ' Magazine'),
(13, 'eu elit', 'Eagan Maldonado', 'Classiques ', 1, 10, 'Livre '),
(14, 'felis ullamcorper viverra', 'William Coffey', 'Classiques ', 4, 10, 'Livre '),
(15, 'Morbi', 'Lewis Fowler', 'Classiques ', 2, 10, 'Livre '),
(16, 'arcu imperdiet', 'Helen Cross', ' Policier ', 2, 30, ' Magazine'),
(17, 'tristique', 'Gage Crosby', ' Policier ', 5, 30, ' Magazine'),
(18, 'parturient montes', 'Duncan Collins', ' Policier ', 1, 30, ' Magazine'),
(19, 'volutpat ornare facilisis', 'Gail Whitley', ' Historique ', 3, 10, 'Livre '),
(20, 'ante lectus', 'Cole Frost', ' Historique ', 2, 10, 'Livre'),
(27, 'Les comptes philosohiques', 'Voltaire', 'Fiction', 0, 10, 'Livre'),
(28, 'jose', 'prince', 'boss', 0, 10, 'Livre'),
(29, 'Inno', 'Inno', 'Progra', 0, 30, 'Magazine');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `ID` int(11) NOT NULL,
  `OeuvreID` int(11) NOT NULL,
  `UsagerID` int(11) NOT NULL,
  `dateReservation` date NOT NULL,
  `DateAnnulation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`ID`, `OeuvreID`, `UsagerID`, `dateReservation`, `DateAnnulation`) VALUES
(1, 19, 26, '2016-04-02', NULL),
(2, 19, 75, '2016-04-04', NULL),
(3, 17, 86, '2016-04-01', NULL),
(4, 17, 30, '2016-04-07', NULL),
(5, 1, 54, '2016-04-06', NULL),
(6, 1, 85, '2016-04-05', NULL),
(7, 18, 29, '2016-04-04', NULL),
(8, 17, 80, '2016-04-01', NULL),
(9, 1, 21, '2016-04-07', NULL),
(10, 14, 1, '2016-04-05', NULL),
(11, 15, 34, '2016-04-01', NULL),
(12, 9, 16, '2016-04-09', NULL),
(13, 9, 13, '2016-04-10', NULL),
(14, 9, 28, '2016-04-02', NULL),
(15, 14, 65, '2016-04-05', NULL),
(16, 19, 36, '2016-04-10', NULL),
(17, 6, 7, '2016-04-06', NULL),
(18, 14, 97, '2016-04-03', NULL),
(19, 17, 90, '2016-04-02', NULL),
(20, 11, 95, '2016-04-07', NULL),
(21, 6, 62, '2016-04-03', NULL),
(22, 5, 9, '2016-04-07', NULL),
(23, 15, 87, '2016-04-07', NULL),
(24, 20, 34, '2016-04-05', NULL),
(25, 7, 41, '2016-04-06', NULL),
(26, 4, 78, '2016-04-10', NULL),
(27, 13, 87, '2016-04-04', NULL),
(28, 20, 16, '2016-04-01', NULL),
(29, 7, 8, '2016-04-03', NULL),
(30, 16, 17, '2016-04-10', NULL),
(31, 14, 34, '2016-04-09', NULL),
(32, 1, 31, '2016-04-06', NULL),
(33, 12, 90, '2016-04-08', NULL),
(34, 17, 6, '2016-04-09', NULL),
(35, 11, 99, '2016-04-05', NULL),
(36, 7, 96, '2016-04-04', NULL),
(37, 8, 21, '2016-04-04', NULL),
(38, 16, 52, '2016-04-06', NULL),
(39, 10, 45, '2016-04-09', NULL),
(40, 10, 93, '2016-04-06', NULL),
(41, 3, 1, '2016-04-21', '2016-04-21'),
(42, 4, 3, '2016-04-21', '2016-04-21'),
(43, 1, 1, '2016-04-22', '2016-04-22'),
(44, 1, 1, '2016-04-22', '2016-04-22');

-- --------------------------------------------------------

--
-- Structure de la table `usager`
--

CREATE TABLE `usager` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `DateNais` date NOT NULL,
  `Sexe` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `usager`
--

INSERT INTO `usager` (`ID`, `Nom`, `Prenom`, `DateNais`, `Sexe`, `Adresse`, `Tel`) VALUES
(1, 'Soto', 'Lev', '2015-09-05', 'Homme ', '611-8071 Non, Impasse', '03 65 28 43 07'),
(2, 'Solis', 'Penelope', '2016-10-01', 'Homme ', 'Appartement 464-4541 Sed Route', '03 45 29 51 48'),
(3, 'Kerr', 'Evelyn', '2015-06-29', 'Homme ', '997-1437 Tellus Impasse', '07 54 60 67 78'),
(4, 'Shepherd', 'Yardley', '2016-10-23', 'Homme ', 'Appartement 436-7802 Duis Av.', '04 04 29 43 90'),
(5, 'BRIGGS', 'Cailin', '2016-12-02', 'Féminin', '486-130 Aliquam Av.', '0682024228'),
(6, 'Boyer', 'Zachery', '2015-05-06', 'Homme ', 'CP 957, 7758 Euismod Av.', '09 89 44 08 34'),
(7, 'Holmes', 'Nathaniel', '2016-10-18', 'Homme ', 'CP 168, 6599 Sit Ave', '04 60 84 81 58'),
(8, 'Holland', 'Kirk', '2016-05-13', 'Homme ', '5343 Ornare, Av.', '07 34 48 84 30'),
(9, 'Watts', 'Bernard', '2017-04-15', 'Homme ', '3710 Vulputate, Chemin', '02 96 66 62 40'),
(10, 'Curtis', 'Victoria', '2015-09-13', 'Homme ', '198 Tellus. Ave', '09 28 39 37 64'),
(11, 'Keith', 'Raya', '2016-01-26', ' Femme', 'Appartement 486-8127 Vel Chemin', '09 39 59 43 55'),
(12, 'Chavez', 'Griffith', '2017-02-20', ' Femme', 'CP 821, 220 In Ave', '08 77 79 71 23'),
(13, 'Stein', 'Xantha', '2016-12-19', ' Femme', '643 Libero Rd.', '05 30 56 02 34'),
(14, 'Gamble', 'Jarrod', '2016-06-21', ' Femme', '9473 Mauris Route', '02 89 51 80 69'),
(15, 'Le', 'Jescie', '2016-09-12', ' Femme', 'Appartement 402-9000 Lectus Route', '09 11 46 01 71'),
(16, 'Oneil', 'Fletcher', '2015-11-17', ' Femme', '591-8894 Augue Ave', '02 63 89 85 85'),
(17, 'Patterson', 'Lamar', '2016-12-04', ' Femme', '654-8974 Sapien Route', '08 30 26 08 28'),
(18, 'Lindsey', 'Kadeem', '2015-05-16', ' Femme', 'CP 101, 9498 Nec Route', '06 43 26 80 11'),
(19, 'Castro', 'William', '2017-02-13', ' Femme', '4584 Consectetuer Av.', '08 31 13 83 38'),
(20, 'Riggs', 'Zachary', '2015-09-19', ' Femme', 'Appartement 969-7160 Magna. Rue', '06 20 79 39 10'),
(21, 'Dudley', 'Charde', '2015-11-11', 'Homme ', 'Appartement 663-5855 Placerat, Impasse', '02 80 69 13 84'),
(22, 'Mueller', 'Joshua', '2016-09-07', 'Homme ', 'Appartement 239-5202 Non Rue', '01 46 39 02 29'),
(23, 'Weiss', 'Beau', '2017-01-08', 'Homme ', 'CP 463, 8955 Laoreet, Route', '02 17 20 11 09'),
(24, 'Maddox', 'Dawn', '2017-01-05', 'Homme ', 'CP 297, 5309 Quam Rue', '04 54 18 13 69'),
(25, 'Drake', 'Kelly', '2016-06-03', 'Homme ', '160-782 Pellentesque Rd.', '06 10 93 12 12'),
(26, 'Witt', 'Eagan', '2016-11-16', 'Homme ', '984-4052 Rutrum Route', '01 25 32 49 78'),
(27, 'Lloyd', 'Renee', '2015-10-29', 'Homme ', 'Appartement 658-8081 Proin Avenue', '02 90 17 58 24'),
(28, 'Lane', 'Nathan', '2016-08-28', 'Homme ', 'Appartement 178-8324 Netus Ave', '05 21 44 80 62'),
(29, 'Mcknight', 'Hector', '2015-11-13', 'Homme ', 'Appartement 853-3347 Phasellus Chemin', '01 34 86 33 85'),
(30, 'Woodard', 'Bruno', '2016-08-12', 'Homme ', 'Appartement 662-345 Dolor. Chemin', '06 98 54 78 83'),
(31, 'Giles', 'Devin', '2015-12-11', ' Femme', '8062 Augue Impasse', '08 81 11 85 72'),
(32, 'Benjamin', 'Griffin', '2016-04-27', ' Femme', '4262 Proin Ave', '06 11 17 34 61'),
(33, 'Wall', 'Nash', '2016-08-14', ' Femme', '2177 Ultricies Rue', '07 96 24 47 07'),
(34, 'Gomez', 'Teegan', '2015-09-26', ' Femme', '860-1484 Arcu. Ave', '01 39 72 03 21'),
(35, 'Daniels', 'Clark', '2015-12-18', ' Femme', 'Appartement 938-6022 Donec Route', '03 39 67 27 17'),
(36, 'Nguyen', 'Mona', '2015-08-19', ' Femme', 'Appartement 740-7672 Interdum. Impasse', '03 63 64 58 28'),
(37, 'Howell', 'Zelenia', '2015-07-27', ' Femme', '3695 Eu Impasse', '08 74 55 12 61'),
(38, 'Burgess', 'Honorato', '2016-08-12', ' Femme', 'CP 584, 3377 Justo Route', '03 66 99 66 99'),
(39, 'Nixon', 'Dolan', '2017-04-07', ' Femme', '2214 Et Rd.', '03 15 39 98 52'),
(40, 'Casey', 'Amelia', '2016-09-02', ' Femme', '893-9437 Ligula. Rue', '04 76 36 18 83'),
(41, 'Oneil', 'Keefe', '2016-10-24', 'Homme ', 'Appartement 621-4937 Turpis Av.', '01 50 72 09 29'),
(42, 'Kinney', 'Rinah', '2015-09-27', 'Homme ', '1570 Est, Impasse', '09 70 12 65 47'),
(43, 'Whitney', 'Quincy', '2017-03-01', 'Homme ', 'CP 774, 3014 Amet Avenue', '06 84 99 73 25'),
(44, 'Prince', 'Eleanor', '2017-02-23', 'Homme ', '481-3562 Penatibus Rue', '04 37 19 33 58'),
(45, 'Peters', 'Linus', '2016-05-26', 'Homme ', 'CP 945, 6472 Orci Chemin', '09 09 79 61 63'),
(46, 'Hunt', 'Quinn', '2016-10-30', 'Homme ', 'Appartement 918-3066 Facilisis Rd.', '06 46 50 19 51'),
(47, 'Hyde', 'Irma', '2016-11-15', 'Homme ', 'CP 764, 2652 A Rd.', '08 38 72 54 17'),
(48, 'Mcknight', 'Alika', '2017-01-27', 'Homme ', 'Appartement 567-1884 In Impasse', '09 17 11 97 18'),
(49, 'Kennedy', 'Sybill', '2017-03-23', 'Homme ', 'Appartement 821-6318 Tempus Chemin', '04 67 44 96 30'),
(50, 'Church', 'Daria', '2015-10-22', 'Homme ', '1171 Lectus Chemin', '03 02 43 22 28'),
(51, 'Stewart', 'Macon', '2016-06-14', ' Femme', 'CP 398, 5712 Vitae Rue', '02 10 56 75 02'),
(52, 'Norman', 'Addison', '2016-11-16', ' Femme', '400 Ante Rd.', '08 31 83 58 92'),
(53, 'Wood', 'Destiny', '2015-06-17', ' Femme', 'CP 377, 6873 Laoreet Av.', '05 80 06 06 09'),
(54, 'Tucker', 'Yoshi', '2016-09-02', ' Femme', 'Appartement 413-6509 Lacinia Ave', '05 59 51 77 30'),
(55, 'Hampton', 'Ainsley', '2016-11-13', ' Femme', 'Appartement 267-8909 Orci Av.', '07 72 43 91 97'),
(56, 'Pittman', 'Cameron', '2017-03-18', ' Femme', 'CP 491, 8543 Proin Chemin', '07 10 58 34 83'),
(57, 'Holden', 'Armand', '2016-11-30', ' Femme', 'Appartement 699-1639 Faucibus Av.', '03 16 64 82 60'),
(58, 'Vance', 'Maile', '2017-01-30', ' Femme', '4411 Sem Ave', '05 28 57 12 66'),
(59, 'Huffman', 'Bruce', '2016-09-15', ' Femme', 'CP 297, 7393 Auctor Ave', '05 89 43 20 05'),
(60, 'Poole', 'Jarrod', '2015-07-03', ' Femme', 'CP 560, 4625 Lorem Rue', '04 78 37 75 10'),
(61, 'Holloway', 'Paula', '2015-12-22', 'Homme ', '193-6448 Donec Chemin', '01 03 96 83 22'),
(62, 'Freeman', 'Rose', '2015-08-27', 'Homme ', 'CP 467, 4149 Sed Ave', '04 41 10 11 02'),
(63, 'Cervantes', 'Kaitlin', '2016-04-13', 'Homme ', 'Appartement 603-8179 Fusce Av.', '08 86 46 94 54'),
(64, 'Santos', 'Destiny', '2016-02-07', 'Homme ', 'Appartement 804-9939 Ante Avenue', '01 28 92 33 90'),
(65, 'Wolf', 'Hadley', '2015-12-01', 'Homme ', 'CP 726, 7368 Metus. Impasse', '08 59 21 50 51'),
(66, 'Morin', 'Phyllis', '2016-09-11', 'Homme ', '933-9590 Vitae Av.', '07 66 43 44 63'),
(67, 'Robles', 'Galena', '2015-08-06', 'Homme ', '272-6867 Mollis Avenue', '08 14 22 54 43'),
(68, 'Hoover', 'Hayfa', '2016-09-16', 'Homme ', 'Appartement 957-5575 Neque. Av.', '03 33 25 47 01'),
(69, 'Guy', 'Thor', '2016-01-22', 'Homme ', '565-8655 Urna. Impasse', '03 68 48 09 14'),
(70, 'Cross', 'Hakeem', '2016-01-02', 'Homme ', '441-1228 Hendrerit. Impasse', '03 31 71 89 65'),
(71, 'Norman', 'Shaeleigh', '2015-06-21', ' Femme', 'Appartement 322-4143 Elit Rd.', '09 93 55 96 26'),
(72, 'Garner', 'Rebekah', '2015-05-07', ' Femme', '5557 Maecenas Chemin', '05 94 76 48 52'),
(73, 'Madden', 'Pamela', '2016-03-02', ' Femme', 'Appartement 292-1706 Duis Rd.', '03 54 68 67 83'),
(74, 'Daugherty', 'Guy', '2016-04-08', ' Femme', '5183 Eros Rue', '03 91 05 83 16'),
(75, 'Mcneil', 'Michael', '2016-07-11', ' Femme', 'CP 654, 6262 Aliquet. Rue', '01 86 78 30 69'),
(76, 'Michael', 'Howard', '2015-10-08', ' Femme', '404-9017 Nunc Rd.', '03 67 89 98 00'),
(77, 'Ayers', 'Demetria', '2015-06-17', ' Femme', '5790 Arcu. Av.', '08 15 40 80 77'),
(78, 'Walton', 'Thane', '2015-09-13', ' Femme', 'Appartement 624-3697 Interdum. Ave', '05 68 80 54 52'),
(79, 'Blevins', 'Scarlet', '2016-03-30', ' Femme', 'CP 166, 1361 Mauris Rd.', '01 24 85 02 94'),
(80, 'Fisher', 'Tanya', '2015-04-25', ' Femme', '1476 Sollicitudin Chemin', '05 74 68 19 01'),
(81, 'Potter', 'Hayes', '2016-02-18', 'Homme ', 'CP 128, 1392 Elementum Route', '07 99 08 14 98'),
(82, 'Molina', 'Olivia', '2015-05-26', 'Homme ', '103-9739 Leo, Route', '08 29 71 42 29'),
(83, 'Blankenship', 'Shay', '2016-04-19', 'Homme ', 'CP 761, 6652 Feugiat Impasse', '09 96 39 87 18'),
(84, 'Hayes', 'Macey', '2016-09-12', 'Homme ', '640-8801 Nulla. Avenue', '07 80 50 81 93'),
(85, 'York', 'Kenyon', '2016-11-05', 'Homme ', 'Appartement 816-1880 Integer Ave', '09 17 45 21 57'),
(86, 'Hudson', 'Lareina', '2016-07-06', 'Homme ', '966-6892 Eu Ave', '01 00 96 30 24'),
(87, 'Parrish', 'Rebekah', '2016-04-11', 'Homme ', '2084 Sit Chemin', '03 39 27 04 39'),
(88, 'Kline', 'Jamal', '2016-01-13', 'Homme ', '425-6964 Tempus Impasse', '06 69 40 48 82'),
(89, 'Ellis', 'Lance', '2017-03-04', 'Homme ', 'Appartement 850-5715 Non, Rue', '07 63 09 62 13'),
(90, 'Cox', 'Meredith', '2017-03-06', 'Homme ', '7638 Suspendisse Ave', '01 97 39 24 75'),
(91, 'Haney', 'Phelan', '2016-03-23', ' Femme', '180-3626 Metus. Route', '09 00 25 14 85'),
(92, 'Buck', 'Hammett', '2016-10-15', ' Femme', '9437 Et Chemin', '03 45 46 43 58'),
(93, 'Wright', 'Celeste', '2015-09-17', ' Femme', 'Appartement 233-7468 Eros Rue', '04 73 81 82 35'),
(94, 'Clements', 'Leslie', '2016-04-06', ' Femme', 'CP 519, 5535 Elementum Rue', '06 84 03 96 75'),
(95, 'Schmidt', 'Arsenio', '2016-08-24', ' Femme', '150-5537 Id Chemin', '02 63 69 20 00'),
(96, 'ROJAS', 'Cara', '2015-07-15', 'Féminin', 'CP 414, 5404 Aliquet Rue', '0487929742'),
(97, 'Cummings', 'Jael', '2015-07-01', ' Femme', 'Appartement 421-6226 Feugiat Rue', '05 15 53 59 89'),
(98, 'Wilcox', 'Belle', '2016-05-04', ' Femme', '389-3998 Aliquet, Rd.', '02 90 36 98 70'),
(99, 'Lester', 'Portia', '2015-10-10', ' Femme', 'Appartement 687-2031 Magna. Route', '02 47 72 16 95'),
(100, 'Conner', 'Rana', '2016-04-10', ' Femme', 'Appartement 916-4387 Donec Rd.', '01 76 37 37 94'),
(111, 'JANATI', 'Idrissi Mohammed', '1992-04-07', 'Masculin', 'Kamra cym Rabat', '0679876590');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKEmprunt521388` (`UsagerID`),
  ADD KEY `FKEmprunt665940` (`ExemplaireId`);

--
-- Index pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKExamplaire350739` (`OeuvreID`);

--
-- Index pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKReservatio502961` (`UsagerID`),
  ADD KEY `FKReservatio107611` (`OeuvreID`);

--
-- Index pour la table `usager`
--
ALTER TABLE `usager`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `usager`
--
ALTER TABLE `usager`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `FK_Emprunt_Examplaire` FOREIGN KEY (`ExemplaireId`) REFERENCES `exemplaire` (`ID`),
  ADD CONSTRAINT `FK_Emprunt_Usager` FOREIGN KEY (`UsagerID`) REFERENCES `usager` (`ID`);

--
-- Contraintes pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD CONSTRAINT `FK_Examplaire_Oeuvre` FOREIGN KEY (`OeuvreID`) REFERENCES `oeuvre` (`ID`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_Reservatio_Oeuvre` FOREIGN KEY (`OeuvreID`) REFERENCES `oeuvre` (`ID`),
  ADD CONSTRAINT `FK_Reservatio_Usager` FOREIGN KEY (`UsagerID`) REFERENCES `usager` (`ID`);
--
-- Base de données : `cil_db`
--
CREATE DATABASE IF NOT EXISTS `cil_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cil_db`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `ID_article` int(11) NOT NULL,
  `nom_article` varchar(50) DEFAULT NULL,
  `lien_article` varchar(500) DEFAULT NULL,
  `Date_article` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`ID_article`, `nom_article`, `lien_article`, `Date_article`) VALUES
(1, 'biometrie', 'article_biometrique.html', '2024-03-29 23:15:16'),
(2, 'Arnarque cam coquine', 'article_cam_coquine.html', '2024-03-29 23:18:25'),
(3, 'mot de passe fort', 'article_password.html', '2024-03-29 23:19:13'),
(4, 'Mot de passe Unique', 'article_different_password.html', '2024-03-29 23:20:17'),
(5, 'Double authentification', 'article_double_authentification', '2024-03-29 23:20:52'),
(6, 'geolocalisation', 'article_geolocalisation.html', '2024-03-29 23:21:22'),
(7, 'cyberharcelement', 'article_harcelement.html', '2024-03-29 23:22:03'),
(8, 'mail different', 'article_mail.html', '2024-03-29 23:22:31'),
(9, 'Bien Naviguer', 'article_naviguer.html', '2024-03-29 23:23:12'),
(10, 'publicites illicites', 'article_publicites_illicite.html', '2024-03-29 23:23:44'),
(11, 'securiser vos comptes', 'article_securiser_comptes.html', '2024-03-29 23:25:03'),
(12, 'Vpn gratuit', 'article_vpn.html', '2024-03-29 23:25:35'),
(13, 'Droit d\'accès', 'droit_acces.html', '2024-03-29 23:26:06'),
(14, 'Droit d\'opposition', 'droit_opposion.html', '2024-03-29 23:27:11'),
(15, 'Droit Oubli', 'Droit_oubli.html', '2024-03-29 23:27:58'),
(16, 'Droit suppression.html', 'droit_suppression.html', '2024-03-29 23:28:31'),
(17, 'generer mot de passe', 'generer_mot_de_passe.html', '2024-03-29 23:29:18'),
(18, 'lois', 'loi.html', '2024-03-29 23:29:43');

-- --------------------------------------------------------

--
-- Structure de la table `discussion`
--

CREATE TABLE `discussion` (
  `id_disc` int(11) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `probleme` varchar(500) DEFAULT NULL,
  `Date_disc` datetime DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `entité_1`
--

CREATE TABLE `entité_1` (
  `ID` int(11) NOT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `Date_inscription` datetime NOT NULL,
  `mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(50) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `newsletter`
--

INSERT INTO `newsletter` (`id`, `mail`, `date`) VALUES
(1, 'sakibara@gmail.com', '2024-03-27 21:46:27.589967'),
(4, 'favidi2217@otemdi.com', '2024-03-27 21:51:22.074492'),
(5, 'obed@gmail.com', '2024-03-27 21:58:36.144604'),
(9, 'cherifat@gmail.com', '2024-03-28 09:27:42.067421'),
(10, 'prince@gmail.com', '2024-03-28 09:28:24.704432'),
(11, 'didib@gmail.com', '2024-03-28 09:36:06.663953'),
(12, 'boniface@gmail.com', '2024-03-28 13:19:39.156152'),
(13, 'rodrigue@gmail.com', '2024-03-29 23:16:15.550725'),
(14, 'aziz@gmail.com', '2024-03-30 09:02:43.118537'),
(15, 'allasane@gmail.com', '2024-06-15 09:15:59.180040');

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `id_rep` int(11) NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  `Date_rep` datetime DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `id_disc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ID_article`),
  ADD UNIQUE KEY `nom_article` (`nom_article`),
  ADD UNIQUE KEY `lien_article` (`lien_article`),
  ADD UNIQUE KEY `nom_article_2` (`nom_article`,`lien_article`);

--
-- Index pour la table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id_disc`),
  ADD KEY `ID` (`ID`);

--
-- Index pour la table `entité_1`
--
ALTER TABLE `entité_1`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `pseudo` (`pseudo`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id_rep`),
  ADD KEY `ID` (`ID`),
  ADD KEY `id_disc` (`id_disc`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `ID_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `discussion`
--
ALTER TABLE `discussion`
  ADD CONSTRAINT `discussion_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `entité_1` (`ID`);

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `reponse_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `entité_1` (`ID`),
  ADD CONSTRAINT `reponse_ibfk_2` FOREIGN KEY (`id_disc`) REFERENCES `discussion` (`id_disc`);
--
-- Base de données : `gestion_depense`
--
CREATE DATABASE IF NOT EXISTS `gestion_depense` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestion_depense`;

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `depenses`
--

CREATE TABLE `depenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `montant` int(11) NOT NULL,
  `date_depense` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_categorie` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_16_123350_create_categories_table', 1),
(5, '2024_05_16_123369_create_depenses_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GJgl5qDZH3ipRTQOmV3bOVz3kIBzv9pG7W2PHbnx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXlhRmhtNDZISExJR1lHem5YdGNhRmFZWHhHUFpsb3p3Q2xGYkJjYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716388286),
('IHaJE7RYy0TUQADQlBy6Ws0jsrRK8mt7V8rW9Izy', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWFlBSGpZZm91c2tndjlibDdaZldVMTVtWTN0Q2drTVBoem5UTTlaSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9maWxlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1716421785),
('v6B7FnDpEVpXjO49Tx7xTPhzvbg3c4sDnE0E1kHH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV3YwTzVnaGVPOVgyQmxIMXVlRVhmY1ZzS2tSVDR3SGM0R2hxVmRCWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1716473218);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'prince', 'juanprince04@gmail.com', NULL, '$2y$12$WxOb12GKEYymx7/B2zkH6.3BehhWft5HENVmaR.62YZgqeZTw/6iW', NULL, '2024-05-22 23:49:13', '2024-05-22 23:49:13');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Index pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `depenses_user_id_foreign` (`user_id`),
  ADD KEY `depenses_user_categorie_foreign` (`user_categorie`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `depenses`
--
ALTER TABLE `depenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD CONSTRAINT `depenses_user_categorie_foreign` FOREIGN KEY (`user_categorie`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `depenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Base de données : `gestion_tache`
--
CREATE DATABASE IF NOT EXISTS `gestion_tache` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestion_tache`;

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_categorie` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom_categorie`, `description`, `created_at`, `updated_at`) VALUES
(9, 'Travail', 'doit rendre le rapport de la mission', '2024-05-20 19:34:54', '2024-05-21 15:01:57'),
(10, 'Reunion', 'doit y etre avant 9H', '2024-05-20 19:50:34', '2024-05-21 15:02:15'),
(13, 'lol', 'ptdrrr', '2024-05-21 15:08:02', '2024-05-21 15:08:11');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '0001_01_01_000000_create_users_table', 1),
(13, '0001_01_01_000001_create_cache_table', 1),
(14, '0001_01_01_000002_create_jobs_table', 1),
(15, '2024_05_13_193314_create_categories_table', 2),
(16, '2024_05_13_195515_create_taches_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AOVB4HHZeyxAdQDKfQ7tkYfS4xHlGmft6smBXV0f', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidXFVdEN4WjVkYUVNQTNNbUJ0YWxEOHVJVmluTTNhOUx4R2c2MFB6RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YWNoZS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1716322217),
('CO6lq6nbH7IGwGqdsx99nFkOtENa3MmYsEyJfWhz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2JCVURzYmNuVUZQZ3RicFVaS2tXYzJweUFzdnljeXptWGRRSXBJdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YWNoZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716371651);

-- --------------------------------------------------------

--
-- Structure de la table `taches`
--

CREATE TABLE `taches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `statut` varchar(50) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `taches`
--

INSERT INTO `taches` (`id`, `titre`, `description`, `statut`, `date_debut`, `date_fin`, `user_id`, `categorie_id`, `created_at`, `updated_at`) VALUES
(1, 'programmer un logiciel', 'laravel', 'pas terminer', '2024-05-21', '2024-05-30', 1, 9, '2024-05-21 16:11:23', '2024-05-21 19:20:56'),
(2, 'programmer un logiciel', 'gjyugyguefzzd', 'pas terminer', '2024-05-21', '2024-05-30', 1, 9, '2024-05-21 16:31:07', '2024-05-21 16:31:07'),
(3, 'CISCO', 'Finir la formation', 'non terminer', '2024-05-21', '2024-05-24', 1, 9, '2024-05-21 17:12:13', '2024-05-21 17:12:13'),
(4, 'programmer un logiciel', 'gjyugyguefzzd', 'pas terminer', '2024-05-21', '2024-05-30', 1, 10, '2024-05-21 18:17:05', '2024-05-21 18:17:05'),
(7, 'python', 'Coder un scrpt', 'pas commencer', '2024-05-21', '2024-06-02', 1, 9, '2024-05-21 18:43:19', '2024-05-21 18:43:19'),
(8, 'Prince', 'Prince', 'En cours', '2024-05-21', '2024-05-31', 1, 10, '2024-05-21 18:49:19', '2024-05-21 18:49:19');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prince', 'juanprince04@gmail.com', NULL, '$2y$12$PkFImakREyRc9/0XVlZ4euZXTNPJb/NSZPx5fJ.VfeAiRCDGN3xWK', NULL, '2024-05-14 19:44:16', '2024-05-14 19:44:16');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `taches`
--
ALTER TABLE `taches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taches_user_id_foreign` (`user_id`),
  ADD KEY `taches_categorie_id_foreign` (`categorie_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `taches`
--
ALTER TABLE `taches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `taches`
--
ALTER TABLE `taches`
  ADD CONSTRAINT `taches_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `taches_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Base de données : `login_db`
--
CREATE DATABASE IF NOT EXISTS `login_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login_db`;

-- --------------------------------------------------------

--
-- Structure de la table `comment_table`
--

CREATE TABLE `comment_table` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `comment_sender_name` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `comment_table`
--

INSERT INTO `comment_table` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(1, 0, 'hello', 'inno', '2024-06-14 08:59:46'),
(2, 1, 'hello guy', 'ali', '2024-06-14 10:09:24'),
(3, 1, 'hello inno', 'moussa', '2024-06-14 10:09:54'),
(4, 0, 'je suis programmer', 'ali', '2024-06-14 10:10:12'),
(5, 4, 'Habon moi je suis graphiste', 'Aline', '2024-06-14 10:10:39'),
(6, 0, 'Hello', 'Aline', '2024-06-14 10:16:26'),
(7, 0, 'ok', 'Mousa', '2024-06-14 10:17:11'),
(8, 7, 'Thanks', 'Darile', '2024-06-14 10:17:32'),
(9, 0, 'hello', 'Aline', '2024-06-14 10:20:09'),
(10, 0, 'j&#39;ai un soucis avec ma securitÃ© ', 'Innocent', '2024-06-14 11:04:42'),
(11, 0, 'Je suis dataScientist', 'Mousa', '2024-06-14 14:39:08'),
(12, 0, 'Je suis Innocent', 'Inno', '2024-06-14 17:35:51'),
(13, 12, 'Je suis ali', 'Hello', '2024-06-14 17:40:08'),
(14, 12, 'Je suis Dangoter', 'Dangote', '2024-06-14 17:40:31'),
(15, 12, 'Je suis Moussa ', 'Moussa', '2024-06-14 17:41:15'),
(16, 11, 'Je suis Moussa ', 'Moussa', '2024-06-14 17:41:33'),
(17, 0, 'Je suis kabore Innocent', 'kabore Innocent', '2024-06-14 17:46:04'),
(18, 17, 'Je suis Ali', 'Ali', '2024-06-14 17:46:27'),
(19, 17, 'J&#39;amairais me renseigner sur ce qu&#39;est la cyber securitÃ©', 'Caleb', '2024-06-14 17:50:06'),
(20, 0, 'J&#39;aimerais me renseigner', 'Caleb', '2024-06-14 17:50:29'),
(21, 20, 'Okk je vois', 'Inno', '2024-06-14 17:50:52'),
(22, 0, 'Je suis aline', 'Aline', '2024-06-14 17:56:38'),
(23, 22, 'Je suis aline', 'Aline', '2024-06-14 17:57:14'),
(24, 22, 'Je suis Innocent', 'Inno', '2024-06-14 17:57:44'),
(25, 0, 'kabore', 'kabore Innocent', '2024-06-14 17:58:07'),
(26, 25, 'Okk', 'kabore Innocent', '2024-06-14 17:58:18'),
(27, 25, 'Je suis Ali', 'Ali', '2024-06-14 17:58:36'),
(28, 0, 'Hello', 'kabore Innocent', '2024-06-14 18:01:52'),
(29, 28, 'Hello', 'Ali', '2024-06-14 18:02:10'),
(30, 28, 'Bjr', 'Alice', '2024-06-14 18:02:34'),
(31, 28, 'Aki', 'helo', '2024-06-14 18:08:08'),
(32, 28, 'Aki', 'Aza', '2024-06-14 18:08:33'),
(33, 0, 'Aza est plus fort', 'Aza', '2024-06-14 18:09:01'),
(34, 0, 'Je suis INNO', 'Inno', '2024-06-14 18:35:45'),
(35, 34, 'Je suis Aristide', 'Aristide', '2024-06-14 18:36:07'),
(36, 34, 'Hello Innocent', 'Ali', '2024-06-14 18:40:10'),
(37, 34, 'Slt Moussa', 'Moussa ', '2024-06-14 18:40:43'),
(38, 1, 'Je suis Marie', 'Inno', '2024-06-14 18:41:20'),
(39, 0, 'LCDCKKE', 'Caleb', '2024-06-14 18:42:15'),
(40, 39, 'SDCD', 'aLCS', '2024-06-14 18:42:29'),
(41, 0, 'Je suis PRine', 'Prince', '2024-06-14 18:42:48'),
(42, 0, 'je me suis fait pirater les gars', 'prince', '2024-06-15 01:27:48'),
(43, 0, 'je me suis fait hacker', 'saki', '2024-06-15 09:11:36'),
(44, 43, 'Habon raconte', 'Ali', '2024-06-15 09:12:26'),
(45, 0, 'je suis pirate', 'saki', '2024-06-15 09:58:19');

-- --------------------------------------------------------

--
-- Structure de la table `gestionnaire_mot_de_passe`
--

CREATE TABLE `gestionnaire_mot_de_passe` (
  `id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gestionnerer_mot_de_passe`
--

CREATE TABLE `gestionnerer_mot_de_passe` (
  `password_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `titre_site` varchar(255) NOT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `gestionnerer_mot_de_passe`
--

INSERT INTO `gestionnerer_mot_de_passe` (`password_id`, `password`, `titre_site`, `id`) VALUES
(1, '$2y$10$K3DDhydIib9wetnhS2L2b.0iIfqhqagHPabuAVmU0BnWfWOInE1Iy', 'Facebook', 8),
(2, '$2y$10$W2Jc2KOfpX/E382W7/QXyuSIv6RYqLZN3U3IgoP3bquNVVwyKYEzO', 'Twiter', 8);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password_hash`) VALUES
(1, 'inno', 'kaboreinnocent93@gmail.com', '$2y$10$nQu2JbVCO1z9xx5I6JZarOLzkjAuM5n/eoKljoYUKHnQL6S8OmbGy'),
(2, 'david', 'david93@gmail.com', '$2y$10$wAQ/N0stFpYsPmtOeu1pSu2D/PVaUj.eYn1QE8VSYoPIowKqGjNIi'),
(3, 'ali', 'ali93@gmail.com', '$2y$10$B.fP9jywSfCGTUWn/fd3BeAsMrYcdg93fka0draNlI6QpRoptiUxC'),
(4, 'PRINCE', 'prince@gmail.com', '$2y$10$5T63va46One7Sh/UXOTgeOlexTRYA4AsHBes7HRQTItiajGpUyNg2'),
(5, 'kali', 'kali@gmail.com', '$2y$10$rbL5cNwGBfYrxMu9K5lrEO9XiLMkSy/fHcuxVRet.mPenJID1XXiG'),
(6, 'Mousssa', 'moussa@gmail.com', '$2y$10$H8/BFMI4idWGOzxKd83h/OzZEOa2.Hroo.csFksE3BoihmnNbG70i'),
(7, 'Aziz', 'aziz@gmail.com', '$2y$10$WhuQLOJkBQTv.lYi/cpjPOSRh29P19OcUw2YHpkMVZUAlXuN/oVfK'),
(8, 'Inno', 'inno@gmail.com', '$2y$10$soutAWU2BviEQBZb.RqJh.Hw6AlJ3SWt50sd48aWesdlnD7r2uB6m'),
(9, 'juan prince', 'juanprince04@gmail.com', '$2y$10$RegoACHq4uKhcEW4FHS3ruJNAarlxfULCB5Q38HumolaZPxGMFUby'),
(10, 'saki', 'sakibara@gmail.com', '$2y$10$pdmwjehDIXFYM3ckOEhOROyY5hVmEvuOuIvrYb6KRGvahz0yUEfaK');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comment_table`
--
ALTER TABLE `comment_table`
  ADD PRIMARY KEY (`comment_id`);

--
-- Index pour la table `gestionnerer_mot_de_passe`
--
ALTER TABLE `gestionnerer_mot_de_passe`
  ADD PRIMARY KEY (`password_id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comment_table`
--
ALTER TABLE `comment_table`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `gestionnerer_mot_de_passe`
--
ALTER TABLE `gestionnerer_mot_de_passe`
  MODIFY `password_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-07-19 18:15:34', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `plateforme_it`
--
CREATE DATABASE IF NOT EXISTS `plateforme_it` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `plateforme_it`;

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('5c785c036466adea360111aa28563bfd556b5fba', 'i:1;', 1725376399),
('5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1725376399;', 1725376399);

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `candidactures`
--

CREATE TABLE `candidactures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `motivation` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat_candidature` varchar(255) NOT NULL DEFAULT 'En attente',
  `point` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `offre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `candidactures`
--

INSERT INTO `candidactures` (`id`, `motivation`, `description`, `etat_candidature`, `point`, `user_id`, `offre_id`, `created_at`, `updated_at`) VALUES
(4, 'dj dnvxk', 'kdkdn', 'Accepter', 4, 3, 1, '2024-07-18 18:29:21', '2024-08-01 15:12:04'),
(5, 'j bsd bj jc', 'ndj vnj jxc', 'Rejeter', 5, 6, 1, '2024-07-18 18:33:14', '2024-07-19 18:39:55'),
(6, 'n f ndfn,c,', 'fbhvbdj', 'Rejeter', 0, 2, 1, '2024-07-18 18:34:56', '2024-07-19 18:39:55'),
(7, 'jsjjfejfefjkj', ',vdcdkv vkdvjdf', 'En attente', 0, 7, 6, '2024-07-19 19:27:18', '2024-07-19 19:27:18'),
(8, 'je suis motive', 'je suis interesse', 'Accepter', 0, 2, 8, '2024-09-02 18:28:31', '2024-09-03 12:17:58'),
(9, 'je suis motive', 'je suis motive', 'Rejeter', 0, 8, 8, '2024-09-03 13:48:39', '2024-09-03 13:49:55'),
(10, 'je suis motive', 'je suis motive', 'Accepter', 3, 1, 9, '2024-09-03 15:16:04', '2024-09-03 15:17:13');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `libelle`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Développement Web', 'Catégorie couvrant tout ce qui concerne le développement de sites et applications web.', NULL, NULL),
(2, 'Sécurité Informatique', 'Catégorie couvrant la protection des systèmes informatiques contre le vol, les dommages, et les accès non autorisés.', NULL, NULL),
(3, 'Réseaux et Télécommunications', 'Catégorie couvrant la conception, la mise en œuvre et la gestion des réseaux de communication.', NULL, NULL),
(4, 'Intelligence Artificielle', 'Catégorie couvrant le développement de systèmes capables d\'effectuer des tâches qui nécessitent généralement l\'intelligence humaine.', NULL, NULL),
(5, 'Base de Données', 'Catégorie couvrant la conception, la gestion et l\'optimisation des systèmes de gestion de bases de données.', NULL, NULL),
(6, 'DevOps', 'Catégorie couvrant les pratiques visant à unifier le développement logiciel et les opérations informatiques.', NULL, NULL),
(7, 'Cloud Computing', 'Catégorie couvrant la fourniture de services informatiques via internet.', NULL, NULL),
(8, 'Big Data', 'Catégorie couvrant la gestion et l\'analyse de grandes quantités de données.', NULL, NULL),
(9, 'Développement Mobile', 'Catégorie couvrant la création d\'applications pour les appareils mobiles.', NULL, NULL),
(10, 'Gestion de Projets IT', 'Catégorie couvrant la planification, l\'exécution et la gestion de projets informatiques.', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(200) NOT NULL,
  `nom_institut` varchar(200) NOT NULL,
  `date_dobtention` date NOT NULL,
  `fichier` varchar(500) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

CREATE TABLE `competences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competences`
--

INSERT INTO `competences` (`id`, `titre`, `description`, `user_id`, `categorie_id`, `created_at`, `updated_at`) VALUES
(1, 'laravel', 'jkdkskncs', 1, 1, '2024-07-18 17:41:08', '2024-07-18 17:41:08'),
(2, 'Docker', 'vnjvsdjkqcj', 1, 6, '2024-07-18 17:41:48', '2024-07-18 17:41:48'),
(3, 'laravel', 'svsjvjksd', 3, 1, '2024-07-18 18:15:23', '2024-07-18 18:15:23'),
(4, 'laravel', ',d,vx ,', 6, 1, '2024-07-18 18:32:30', '2024-07-18 18:32:30'),
(5, 'Pentester', 'njfjvdj', 1, 2, '2024-07-19 19:33:21', '2024-07-19 19:33:21');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cv_et_motivations`
--

CREATE TABLE `cv_et_motivations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `motivation` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_et_motivations`
--

INSERT INTO `cv_et_motivations` (`id`, `cv`, `motivation`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'CVs/LAkrGpE2kbYbqxCkhRKRfn0miNzbGeearEbWP3C1.pdf', 'motivations/0OivlvF74L1hX1txR6G4TYOAaGrhWErezEmEJm6J.pdf', 'lol', 1, '2024-07-18 17:44:52', '2024-07-18 17:44:52');

-- --------------------------------------------------------

--
-- Structure de la table `discussions`
--

CREATE TABLE `discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL DEFAULT 'ouvert',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `discussions`
--

INSERT INTO `discussions` (`id`, `sujet`, `contenu`, `etat`, `user_id`, `categorie_id`, `created_at`, `updated_at`) VALUES
(1, 'Travail en temps que developpeur', 'Quelles sont vos conseils pour avoir rapidement du travail en temps que developpeur Web.', 'Ouvert', 1, 1, '2024-07-08 09:54:19', '2024-07-08 09:54:19'),
(2, 'jgjivdkscmvdsk', 'je suis dev', 'Fermer', 1, 5, '2024-07-08 10:22:52', '2024-07-08 15:52:20'),
(3, 'hacking', 'comment recuperer mon compte facebook pirater?', 'Ouvert', 1, 2, '2024-07-08 10:53:49', '2024-07-08 10:53:49'),
(4, 'sdsdcjsdcsj', 'hcbhjhcsdj', 'Ouvert', 1, 1, '2024-07-08 19:17:39', '2024-07-08 19:17:39'),
(5, 'Docker', 'j\'ai des soucis avec Docker, qui peut m\'aider à le resoudre?', 'Ouvert', 2, 6, '2024-07-22 11:42:49', '2024-07-22 11:42:49'),
(6, 'Quelle framework choisir', 'gjsdsdcysdyucbuivcvbjhefvjfjv dfdv', 'Ouvert', 2, 1, '2024-09-02 18:31:53', '2024-09-02 18:31:53'),
(7, 'laravel', 'mon code ne marche pas', 'Ouvert', 1, 1, '2024-09-03 15:18:06', '2024-09-03 15:18:06');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `titre`, `description`, `date_debut`, `date_fin`, `lieu`, `type`, `created_at`, `updated_at`) VALUES
(1, 'fespaco', 'jjnjfds', '2024-07-19 19:29:00', '2024-07-28 19:29:00', 'Ouagadougou', 'webinar', '2024-07-19 19:29:57', '2024-07-19 19:29:57'),
(2, 'Dev Fest', 'dksdsn,kcqs', '2024-07-26 17:45:00', '2024-07-31 17:45:00', 'Ouagadougou', 'salon', '2024-07-26 17:45:59', '2024-07-26 17:45:59'),
(3, 'OSC', 'JNGSDJKSNJ', '2024-09-02 18:02:00', '2024-09-18 18:02:00', 'Ouagadougou', 'salon', '2024-09-02 18:02:32', '2024-09-02 18:02:32'),
(4, 'POESAM', 'DFMCDCSDNKCJNKS', '2024-09-12 18:29:00', '2024-09-28 18:29:00', 'Ouagadougou', 'webinar', '2024-09-02 18:30:14', '2024-09-02 18:30:14'),
(5, 'poesam', 'skcksncnm', '2024-09-03 15:19:00', '2024-09-21 15:19:00', 'Ouagadougou', 'salon', '2024-09-03 15:19:19', '2024-09-03 15:19:19');

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entreprise` varchar(100) NOT NULL,
  `nom_superviseur` varchar(100) NOT NULL,
  `contact_superviseur` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `responsabilite` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experiences`
--

INSERT INTO `experiences` (`id`, `entreprise`, `nom_superviseur`, `contact_superviseur`, `titre`, `responsabilite`, `date_debut`, `date_fin`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Orange Digital Center', 'Mr Bessin', '67501316', 'Devellopeur Laravel', 'je gerais la maintenance du site', '2020-06-18', '2024-07-18', 1, '2024-07-18 17:44:09', '2024-07-18 17:44:09');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_28_094346_create_categories_table', 1),
(5, '2024_05_28_094356_create_competences_table', 1),
(6, '2024_05_28_094400_create_experiences_table', 1),
(7, '2024_05_28_094407_create_certifications_table', 1),
(8, '2024_05_28_094408_create_offres_table', 1),
(9, '2024_05_28_094432_create_candidactures_table', 1),
(10, '2024_05_28_095000_create_discussions_table', 1),
(11, '2024_05_28_095113_create_reponses_table', 1),
(12, '2024_05_28_096000_create_notifications_table', 1),
(13, '2024_06_04_094320_create_cv_et_motivations_table', 1),
(14, '2024_06_06_134732_create_personal_access_tokens_table', 1),
(15, '2024_07_08_174316_create_events_table', 1),
(16, '2024_07_11_181306_create_cours_table', 1),
(17, '2024_07_17_230929_create_visites_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL DEFAULT 'Pas lu',
  `candidacture_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discussion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `offre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `message`, `etat`, `candidacture_id`, `user_id`, `discussion_id`, `offre_id`, `created_at`, `updated_at`) VALUES
(7, 'Nouvelle Candidature', 'Une nouvelle candidature a été soumise pour votre offre.', 'Pas lu', 4, 1, NULL, 1, '2024-07-18 18:29:21', '2024-07-18 18:29:21'),
(8, 'Candidature à une offre', 'Confirmation de votre candidature à l\'offre: Developeur Laravel.', 'Pas lu', 4, 3, NULL, 1, '2024-07-18 18:29:21', '2024-07-18 18:29:21'),
(9, 'Nouvelle Candidature', 'Une nouvelle candidature a été soumise pour votre offre.', 'Pas lu', 5, 1, NULL, 1, '2024-07-18 18:33:14', '2024-07-18 18:33:14'),
(10, 'Candidature à une offre', 'Confirmation de votre candidature à l\'offre: Developeur Laravel.', 'Pas lu', 5, 6, NULL, 1, '2024-07-18 18:33:14', '2024-07-18 18:33:14'),
(11, 'Nouvelle Candidature', 'Une nouvelle candidature a été soumise pour votre offre.', 'Pas lu', 6, 1, NULL, 1, '2024-07-18 18:34:56', '2024-07-18 18:34:56'),
(12, 'Candidature à une offre', 'Confirmation de votre candidature à l\'offre: Developeur Laravel.', 'Pas lu', 6, 2, NULL, 1, '2024-07-18 18:34:56', '2024-07-18 18:34:56'),
(13, 'Vous avez un retour pour Candidature.', 'Votre Candidacture à l\'offre Developeur Laravel à ete Accepter.', 'Pas lu', 4, 3, NULL, 1, '2024-07-19 18:39:21', '2024-07-19 18:39:21'),
(14, 'Nouvelle Candidature', 'Une nouvelle candidature a été soumise pour votre offre.', 'Pas lu', 7, 5, NULL, 6, '2024-07-19 19:27:18', '2024-07-19 19:27:18'),
(15, 'Candidature à une offre', 'Confirmation de votre candidature à l\'offre: Developpeur.', 'Pas lu', 7, 7, NULL, 6, '2024-07-19 19:27:18', '2024-07-19 19:27:18'),
(16, 'Vous avez une reponse', 'abdel à repondu à votre discussion .', 'Pas lu', NULL, 1, 3, NULL, '2024-07-19 19:28:52', '2024-07-19 19:28:52'),
(17, 'Vous avez un retour pour Candidature.', 'Votre Candidacture à l\'offre Developeur Laravel à ete Rejeter.', 'Pas lu', 4, 3, NULL, 1, '2024-07-19 19:32:14', '2024-07-19 19:32:14'),
(18, 'Nouvelle Offre creer', 'Vous avez creer une nouvelle Offre \'laravel\' avec succès.', 'Pas lu', NULL, 1, NULL, 7, '2024-07-19 19:35:18', '2024-07-19 19:35:18'),
(19, 'Nouvelle Discussion creer', 'Vous avez creer une nouvelle Offre \'Docker\' avec succès.', 'Pas lu', NULL, 2, 5, NULL, '2024-07-22 11:42:49', '2024-07-22 11:42:49'),
(20, 'Vous avez un retour pour Candidature.', 'Votre Candidacture à l\'offre Developeur Laravel à ete Accepter.', 'Pas lu', 4, 3, NULL, 1, '2024-08-01 15:12:04', '2024-08-01 15:12:04'),
(21, 'Vous avez une reponse', 'KOUCHANOU à repondu à votre discussion .', 'Pas lu', NULL, 1, 1, NULL, '2024-08-01 15:12:34', '2024-08-01 15:12:34'),
(22, 'Nouvelle Offre creer', 'Vous avez creer une nouvelle Offre \'Developpeur Web\' avec succès.', 'Pas lu', NULL, 1, NULL, 8, '2024-09-02 18:25:17', '2024-09-02 18:25:17'),
(23, 'Nouvelle Candidature', 'Une nouvelle candidature a été soumise pour votre offre.', 'Pas lu', 8, 1, NULL, 8, '2024-09-02 18:28:31', '2024-09-02 18:28:31'),
(24, 'Candidature à une offre', 'Confirmation de votre candidature à l\'offre: Developpeur Web.', 'Pas lu', 8, 2, NULL, 8, '2024-09-02 18:28:31', '2024-09-02 18:28:31'),
(25, 'Nouvelle Discussion creer', 'Vous avez creer une nouvelle Offre \'Quelle framework choisir\' avec succès.', 'Pas lu', NULL, 2, 6, NULL, '2024-09-02 18:31:53', '2024-09-02 18:31:53'),
(26, 'Vous avez une reponse', 'Kabore à repondu à votre discussion .', 'Pas lu', NULL, 2, 6, NULL, '2024-09-02 18:32:31', '2024-09-02 18:32:31'),
(27, 'Vous avez un retour pour Candidature.', 'Votre Candidacture à l\'offre Developpeur Web à ete Accepter.', 'Pas lu', 8, 2, NULL, 8, '2024-09-03 12:17:58', '2024-09-03 12:17:58'),
(28, 'Nouvelle Candidature', 'Une nouvelle candidature a été soumise pour votre offre.', 'Pas lu', 9, 1, NULL, 8, '2024-09-03 13:48:39', '2024-09-03 13:48:39'),
(29, 'Candidature à une offre', 'Confirmation de votre candidature à l\'offre: Developpeur Web.', 'Pas lu', 9, 8, NULL, 8, '2024-09-03 13:48:39', '2024-09-03 13:48:39'),
(30, 'Vous avez un retour pour Candidature.', 'Votre Candidacture à l\'offre Developpeur Web à ete Rejeter.', 'Pas lu', 9, 8, NULL, 8, '2024-09-03 13:49:55', '2024-09-03 13:49:55'),
(31, 'Nouvelle Offre creer', 'Vous avez creer une nouvelle Offre \'developpeur web\' avec succès.', 'Pas lu', NULL, 9, NULL, 9, '2024-09-03 15:14:58', '2024-09-03 15:14:58'),
(32, 'Nouvelle Candidature', 'Une nouvelle candidature a été soumise pour votre offre.', 'Pas lu', 10, 9, NULL, 9, '2024-09-03 15:16:04', '2024-09-03 15:16:04'),
(33, 'Candidature à une offre', 'Confirmation de votre candidature à l\'offre: developpeur web.', 'Pas lu', 10, 1, NULL, 9, '2024-09-03 15:16:04', '2024-09-03 15:16:04'),
(34, 'Vous avez un retour pour Candidature.', 'Votre Candidacture à l\'offre developpeur web à ete Accepter.', 'Pas lu', 10, 1, NULL, 9, '2024-09-03 15:17:13', '2024-09-03 15:17:13'),
(35, 'Nouvelle Discussion creer', 'Vous avez creer une nouvelle Offre \'laravel\' avec succès.', 'Pas lu', NULL, 1, 7, NULL, '2024-09-03 15:18:06', '2024-09-03 15:18:06'),
(36, 'Vous avez une reponse', 'KOUCHANOU à repondu à votre discussion .', 'Pas lu', NULL, 1, 7, NULL, '2024-09-03 15:18:30', '2024-09-03 15:18:30');

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

CREATE TABLE `offres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `type_offre` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `prix` int(10) UNSIGNED DEFAULT NULL,
  `salaire` int(10) UNSIGNED DEFAULT NULL,
  `experience_requis` int(10) UNSIGNED DEFAULT NULL,
  `niveau_etude` varchar(255) NOT NULL,
  `entreprise` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `responsabilite` varchar(255) NOT NULL,
  `competence_requis` varchar(255) NOT NULL,
  `etat_offre` varchar(255) NOT NULL DEFAULT 'en cours',
  `date_debut_offre` date NOT NULL,
  `date_fin_offre` date NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `offres`
--

INSERT INTO `offres` (`id`, `titre`, `type_offre`, `ville`, `pays`, `image`, `email`, `prix`, `salaire`, `experience_requis`, `niveau_etude`, `entreprise`, `website`, `logo`, `responsabilite`, `competence_requis`, `etat_offre`, `date_debut_offre`, `date_fin_offre`, `categorie_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Developeur Laravel', 'Stage', 'Paris', 'France', 'images/2XCz0nAEP2z68xMU6jViNyAZugpXv0vgnkpz4Ife.jpg', 'Orange@gmail.com', NULL, 800000, 2, 'Bac+3', 'Orange', NULL, 'logos/4f1Cs3DFpaPCZmHbdpE7p3P1ojoWd1mhpxsd2ilN.jpg', 'gerer la maintenance du site et concevoir un site pour un client', 'laravel et symphony| react', 'Terminer', '2024-06-27', '2024-08-11', 1, 1, '2024-06-27 12:41:52', '2024-09-02 18:08:44'),
(3, 'Designer Figma', 'Stage', 'Cotonou', 'Bénin', NULL, 'Orange@gmail.com', NULL, 80000, 1, 'Bac+2', 'Orange', NULL, NULL, 'gerer l\'aspect visuel du site', 'Figma', 'Terminer', '2024-06-28', '2024-08-11', 1, 1, '2024-06-28 11:41:34', '2024-09-02 18:08:44'),
(4, 'Pentester', 'Emploi', 'Londre', 'Royaume-Uni', 'images/OLk1CP5rdVJ8tbW7aHjT709LPVgb2OwTTFk1bWDn.jpg', 'amazon@gmail.com', NULL, 900000, 5, 'Bac+5', 'Amazon', 'https://www.amazon.fr/', 'logos/PotslLMNHkbj6D5dFsRCj3qKy1QaernjSmsdcX5D.jpg', 'Gerer les tests reguliers du reseau et des applications de notre entreprise. Assurer et tester les limites des outils informatiques, pour identifier les possible failles du systeme de l\'entreprise', 'pentesting | Ethical Hacking', 'Terminer', '2024-06-28', '2024-08-11', 2, 1, '2024-06-28 18:03:39', '2024-09-02 18:08:44'),
(5, 'Developpeur Full stack', 'Stage', 'Ouagadougou', 'Burkina Faso', 'images/zcSeo7J3dkAfULgSzy0RHFq6619QQHHNCxhnokk5.jpg', 'inno@gmail.com', NULL, NULL, 0, 'Bac+3', 'Orange', 'https://www.amazon.fr/', 'logos/qnOCmODtcXPZ7ognITRxu6SeYZ7phA6ltTojvGNL.jpg', 'jdvjnkdkjdksdvoqsd vdkvdvqsvldsd vqsdvkvdvd vsd', 'laravel', 'Terminer', '2024-06-30', '2024-07-31', 1, 2, '2024-06-28 18:56:40', '2024-08-01 15:11:17'),
(6, 'Developpeur', 'Emploi', 'Ouagadougou', 'Burkina Faso', 'images/sZSg0uJCpc6oU5876aElSQ6rggXjf3dmdPBBjKQP.png', 'Orange@gmail.com', NULL, 60000, 4, 'Bac+3', 'Orange', NULL, NULL, 'cvsdjnivsdjnvjksdjkcsdjk', 'laravel', 'Terminer', '2024-07-08', '2024-07-31', 1, 5, '2024-07-08 19:14:45', '2024-08-01 15:11:17'),
(7, 'laravel', 'Stage', 'Pa', 'France', 'images/iXvyS5GMTmV44qIieaeLFkb9bFmQ33NhrPdUBl7E.jpg', 'Orange@gmail.com', NULL, 7000000, 4, 'Bac+4', 'Orange Digital Center', NULL, NULL, 'fjdsjnvdjksvdfsvjkdfjk', 'laravel et symphony| react', 'Terminer', '2024-07-19', '2024-08-03', 1, 1, '2024-07-19 19:35:18', '2024-09-02 18:08:44'),
(8, 'Developpeur Web', 'Emploi', 'Ouagadougou', 'Burkina Faso', 'images/ZoLZVJlDEG0ltiEjam1MJOWxjJsJcUSE6CfWFjhZ.jpg', 'juanprince04@gmail.com', NULL, 90000, 4, 'Bac+4', 'Orange', NULL, NULL, 'jebdfjsd sdjsdsmd,xm,cxz,czxkk\r\n,lscxlclxclmxcmxcmlclscm,slcslcs,cls', 'laravel', 'Offre publiée', '2024-09-02', '2024-09-19', 1, 1, '2024-09-02 18:25:17', '2024-09-02 18:25:17'),
(9, 'developpeur web', 'Stage', 'Ouagadougou', 'Burkina Faso', 'images/d2s5HXp5kuuTrvAGncf56c0phO8l2ABuN8Ry7xAI.png', 'orangebf@gmail.com', NULL, 80000, 4, 'Bac+4', 'orange', NULL, NULL, 'fnjdfsncxccj', 'laravel', 'Offre publiée', '2024-09-03', '2024-09-28', 1, 9, '2024-09-03 15:14:58', '2024-09-03 15:14:58');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE `reponses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `discussion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`id`, `contenu`, `user_id`, `discussion_id`, `created_at`, `updated_at`) VALUES
(1, 'cest bien', 7, 3, '2024-07-19 19:28:52', '2024-07-19 19:28:52'),
(2, 'ncvjnxnv, ,', 1, 1, '2024-08-01 15:12:34', '2024-08-01 15:12:34'),
(3, 'React', 2, 6, '2024-09-02 18:32:31', '2024-09-02 18:32:31'),
(4, 'je poknkds', 1, 7, '2024-09-03 15:18:30', '2024-09-03 15:18:30');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6MEKwT9C6QinP9MCRpJIjnwCbz8MJZhFo3GZ332u', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN0NRTVlGZnZaZ1RmRE52bHBadzFsN3dyOFVoMVNaTWhxOWUzQlozayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1725376852),
('DvDyKgtkHaQu9IvT75GAa9k3ql17wJfSPTAMFwFq', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWmpqRE5sU2s3bnFLVzBHU3Z4M3h6VGtQdXJHRWFpbVg0eWJ0aFBCSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ldmVudHMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo5O3M6MTg6InByb2ZpbGVfaW5jb21wbGV0ZSI7YjoxO30=', 1725377395);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `telepone` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `addresse` varchar(255) DEFAULT NULL,
  `niveau_etude` varchar(255) DEFAULT NULL,
  `statut` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `prenom`, `date_naissance`, `description`, `telepone`, `telephone_2`, `ville`, `addresse`, `niveau_etude`, `statut`, `image`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'KOUCHANOU', 'juanprince04@gmail.com', NULL, '$2y$12$RW.WU/ebf9qY8oJsJDEr8.vn83j/AzW5En5AC0O7CoECL4Xdp2vca', 'Juan Prince', '2003-05-30', 'Je suis certifie programmeur front end', '67504477', '07444578', 'Ouagadougou', 'Bonheur Ville', 'Bac+3', 'Etudiant', 'images/CDXUOLJnwTIsxqRTbg97MjVXJPq0GKzccFRsSVG8.png', 'admin', NULL, '2024-06-27 12:38:09', '2024-07-02 18:18:12'),
(2, 'Kabore', 'inno@gmail.com', NULL, '$2y$12$AAtJDopPt/PhBV.l83ICv.LS4IJB06npT1//vypocXLmSWKe3sw7u', 'Innocent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, '2024-06-28 18:46:55', '2024-06-28 18:46:55'),
(3, 'Mantiga', 'rezie@gmail.com', NULL, '$2y$12$8jjqUSPJFc8CDZ5q/8Bm/.rnYAknRI5htIFM0vjrzFqjhiovgV3m.', 'Rezie', NULL, NULL, NULL, NULL, 'Cotonou', NULL, 'Bac+3', 'Etudiant', NULL, 'user', NULL, '2024-07-03 21:04:23', '2024-07-18 18:15:59'),
(4, 'Bara', 'barasaki@gmail.com', NULL, '$2y$12$rRKToDe1GDH/ItMETf0r2u/PjqOC.6qBXdlUe2cmQMKOJQWDPOosS', 'Sakina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, '2024-07-03 21:09:15', '2024-07-03 21:17:03'),
(5, 'Ali', 'ali@gmail.com', NULL, '$2y$12$t5VsfWCofPYeIegtJOdlqeX..aleMH0QyNesXCrppbA/ThYvZWUBG', 'Ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, '2024-07-08 19:10:11', '2024-07-08 19:10:11'),
(6, 'obed', 'obed@gmail.com', NULL, '$2y$12$UqQwFehb7kpnBj0bveSjx.UAVsJJwnR.pTdnav.SgkCzZ7hbDAfBC', 'obed', NULL, NULL, NULL, NULL, 'Paris', NULL, 'Bac+3', NULL, NULL, 'user', NULL, '2024-07-12 10:39:39', '2024-07-18 18:32:06'),
(7, 'abdel', 'abdel@gmail.com', NULL, '$2y$12$/LwALeOTWdsaSLrWdmY23uwVHE8ofzSnKikyZN/FMHmDfyJxhfIP2', 'abdel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, '2024-07-19 19:26:26', '2024-07-19 19:26:26'),
(8, 'aziz', 'aziz@gmail.com', NULL, '$2y$12$fX.BkBMLE3lJoI9n5E/I6.Sd1JD8T156PJZ2RlEAmm1ru4e9H.qam', 'aziz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, '2024-09-03 11:26:38', '2024-09-03 11:26:38'),
(9, 'orange', 'orangebf@gmail.com', NULL, '$2y$12$T2cxcfwmVPKpjNu8gGnGHexO9yoUrYweKwJuATfjMSHsSKqktLknK', 'ORANGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, '2024-09-03 15:13:26', '2024-09-03 15:13:26');

-- --------------------------------------------------------

--
-- Structure de la table `visites`
--

CREATE TABLE `visites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visit_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visites`
--

INSERT INTO `visites` (`id`, `visit_count`, `created_at`, `updated_at`) VALUES
(1, 323, NULL, '2024-09-03 15:42:04');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `candidactures`
--
ALTER TABLE `candidactures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidactures_user_id_foreign` (`user_id`),
  ADD KEY `candidactures_offre_id_foreign` (`offre_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certifications_user_id_foreign` (`user_id`);

--
-- Index pour la table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competences_user_id_foreign` (`user_id`),
  ADD KEY `competences_categorie_id_foreign` (`categorie_id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cv_et_motivations`
--
ALTER TABLE `cv_et_motivations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cv_et_motivations_user_id_foreign` (`user_id`);

--
-- Index pour la table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussions_categorie_id_foreign` (`categorie_id`),
  ADD KEY `discussions_user_id_foreign` (`user_id`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_user_id_foreign` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_candidacture_id_foreign` (`candidacture_id`),
  ADD KEY `notifications_discussion_id_foreign` (`discussion_id`),
  ADD KEY `notifications_offre_id_foreign` (`offre_id`);

--
-- Index pour la table `offres`
--
ALTER TABLE `offres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offres_categorie_id_foreign` (`categorie_id`),
  ADD KEY `offres_user_id_foreign` (`user_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reponses_user_id_foreign` (`user_id`),
  ADD KEY `reponses_discussion_id_foreign` (`discussion_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `visites`
--
ALTER TABLE `visites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `candidactures`
--
ALTER TABLE `candidactures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cv_et_motivations`
--
ALTER TABLE `cv_et_motivations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `offres`
--
ALTER TABLE `offres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reponses`
--
ALTER TABLE `reponses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `visites`
--
ALTER TABLE `visites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidactures`
--
ALTER TABLE `candidactures`
  ADD CONSTRAINT `candidactures_offre_id_foreign` FOREIGN KEY (`offre_id`) REFERENCES `offres` (`id`),
  ADD CONSTRAINT `candidactures_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `certifications`
--
ALTER TABLE `certifications`
  ADD CONSTRAINT `certifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `competences`
--
ALTER TABLE `competences`
  ADD CONSTRAINT `competences_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `competences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `cv_et_motivations`
--
ALTER TABLE `cv_et_motivations`
  ADD CONSTRAINT `cv_et_motivations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `discussions`
--
ALTER TABLE `discussions`
  ADD CONSTRAINT `discussions_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_candidacture_id_foreign` FOREIGN KEY (`candidacture_id`) REFERENCES `candidactures` (`id`),
  ADD CONSTRAINT `notifications_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`),
  ADD CONSTRAINT `notifications_offre_id_foreign` FOREIGN KEY (`offre_id`) REFERENCES `offres` (`id`),
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `offres`
--
ALTER TABLE `offres`
  ADD CONSTRAINT `offres_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `offres_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD CONSTRAINT `reponses_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`),
  ADD CONSTRAINT `reponses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Base de données : `smartapic`
--
CREATE DATABASE IF NOT EXISTS `smartapic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `smartapic`;

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `humidites`
--

CREATE TABLE `humidites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `constante` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `ruche_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `humidites`
--

INSERT INTO `humidites` (`id`, `constante`, `date`, `etat`, `ruche_id`, `created_at`, `updated_at`) VALUES
(1, 80, '2024-08-28 10:42:58', 0, 1, NULL, NULL),
(2, 60, '2024-08-29 23:54:48', 1, 2, NULL, NULL),
(3, 40, '2024-09-09 12:07:06', 1, 4, '2024-09-09 12:07:06', '2024-09-09 12:07:06'),
(4, 40, '2024-09-09 12:07:34', 1, 4, '2024-09-09 12:07:34', '2024-09-09 12:07:34'),
(5, 9, '2024-09-18 14:11:00', 1, 10, NULL, NULL),
(6, 48, '2024-09-18 14:11:01', 1, 6, NULL, NULL),
(7, 36, '2024-09-20 11:13:04', 1, 4, NULL, NULL),
(8, 0, '2024-10-08 11:45:13', 1, 15, '2024-10-08 11:45:13', '2024-10-08 11:45:13'),
(9, 23, '2024-10-08 11:49:44', 1, 16, '2024-10-08 11:49:44', '2024-10-08 11:49:44'),
(10, 0, '2024-10-08 11:52:54', 1, 16, '2024-10-08 11:52:54', '2024-10-08 11:52:54'),
(11, 0, '2024-10-08 11:53:09', 1, 16, '2024-10-08 11:53:10', '2024-10-08 11:53:10'),
(12, 38, '2024-10-08 11:56:30', 1, 16, '2024-10-08 11:56:30', '2024-10-08 11:56:30'),
(13, 23, '2024-10-08 11:59:40', 1, 16, '2024-10-08 11:59:40', '2024-10-08 11:59:40'),
(14, 0, '2024-10-08 12:03:06', 1, 16, '2024-10-08 12:03:07', '2024-10-08 12:03:07'),
(15, 0, '2024-10-08 12:03:09', 1, 16, '2024-10-08 12:03:10', '2024-10-08 12:03:10'),
(16, 39, '2024-10-08 12:06:25', 1, 16, '2024-10-08 12:06:25', '2024-10-08 12:06:25'),
(17, 22, '2024-10-08 12:09:47', 1, 16, '2024-10-08 12:09:47', '2024-10-08 12:09:47'),
(18, 22, '2024-10-08 12:10:23', 1, 16, '2024-10-08 12:10:23', '2024-10-08 12:10:23'),
(19, 22, '2024-10-08 12:10:36', 1, 16, '2024-10-08 12:10:36', '2024-10-08 12:10:36'),
(20, 23, '2024-10-08 12:10:50', 1, 16, '2024-10-08 12:10:50', '2024-10-08 12:10:50'),
(21, 0, '2024-10-08 12:13:59', 1, 16, '2024-10-08 12:13:59', '2024-10-08 12:13:59'),
(22, 0, '2024-10-08 12:14:08', 1, 16, '2024-10-08 12:14:08', '2024-10-08 12:14:08'),
(23, 39, '2024-10-08 12:17:22', 1, 16, '2024-10-08 12:17:22', '2024-10-08 12:17:22'),
(24, 23, '2024-10-08 12:20:41', 1, 16, '2024-10-08 12:20:41', '2024-10-08 12:20:41'),
(25, 23, '2024-10-08 12:20:54', 1, 16, '2024-10-08 12:20:54', '2024-10-08 12:20:54'),
(26, 0, '2024-10-08 12:24:04', 1, 16, '2024-10-08 12:24:04', '2024-10-08 12:24:04'),
(27, 0, '2024-10-08 12:24:13', 1, 16, '2024-10-08 12:24:13', '2024-10-08 12:24:13'),
(28, 23, '2024-10-08 12:27:29', 1, 16, '2024-10-08 12:27:29', '2024-10-08 12:27:29'),
(29, 0, '2024-10-08 12:30:38', 1, 16, '2024-10-08 12:30:39', '2024-10-08 12:30:39'),
(30, 0, '2024-10-08 12:30:48', 1, 16, '2024-10-08 12:30:48', '2024-10-08 12:30:48'),
(31, 23, '2024-10-08 12:34:17', 1, 16, '2024-10-08 12:34:17', '2024-10-08 12:34:17'),
(32, 0, '2024-10-08 12:37:24', 1, 16, '2024-10-08 12:37:24', '2024-10-08 12:37:24'),
(33, 41, '2024-10-08 12:37:40', 1, 16, '2024-10-08 12:37:40', '2024-10-08 12:37:40'),
(34, 23, '2024-10-08 12:40:55', 1, 16, '2024-10-08 12:40:55', '2024-10-08 12:40:55'),
(35, 22, '2024-10-08 12:41:16', 1, 16, '2024-10-08 12:41:16', '2024-10-08 12:41:16'),
(36, 0, '2024-10-08 12:44:30', 1, 16, '2024-10-08 12:44:30', '2024-10-08 12:44:30'),
(37, 0, '2024-10-08 12:44:37', 1, 16, '2024-10-08 12:44:37', '2024-10-08 12:44:37'),
(38, 40, '2024-10-08 12:47:46', 1, 16, '2024-10-08 12:47:47', '2024-10-08 12:47:47'),
(39, 23, '2024-10-08 12:51:02', 1, 16, '2024-10-08 12:51:02', '2024-10-08 12:51:02'),
(40, 0, '2024-10-08 12:54:13', 1, 16, '2024-10-08 12:54:13', '2024-10-08 12:54:13'),
(41, 0, '2024-10-08 12:54:24', 1, 16, '2024-10-08 12:54:24', '2024-10-08 12:54:24'),
(42, 39, '2024-10-08 12:57:41', 1, 16, '2024-10-08 12:57:41', '2024-10-08 12:57:41'),
(43, 23, '2024-10-08 13:00:57', 1, 16, '2024-10-08 13:00:57', '2024-10-08 13:00:57'),
(44, 0, '2024-10-08 13:04:08', 1, 16, '2024-10-08 13:04:08', '2024-10-08 13:04:08'),
(45, 0, '2024-10-08 13:04:18', 1, 16, '2024-10-08 13:04:18', '2024-10-08 13:04:18'),
(46, 38, '2024-10-08 13:07:28', 1, 16, '2024-10-08 13:07:28', '2024-10-08 13:07:28'),
(47, 23, '2024-10-08 13:10:43', 1, 16, '2024-10-08 13:10:43', '2024-10-08 13:10:43'),
(48, 0, '2024-10-08 13:10:56', 1, 16, '2024-10-08 13:10:56', '2024-10-08 13:10:56'),
(49, 38, '2024-10-08 13:13:23', 1, 17, '2024-10-08 13:13:23', '2024-10-08 13:13:23'),
(50, 23, '2024-10-08 13:16:32', 1, 17, '2024-10-08 13:16:32', '2024-10-08 13:16:32'),
(51, 0, '2024-10-08 13:19:45', 1, 17, '2024-10-08 13:19:45', '2024-10-08 13:19:45'),
(52, 39, '2024-10-08 13:20:01', 1, 17, '2024-10-08 13:20:01', '2024-10-08 13:20:01'),
(53, 23, '2024-10-08 13:23:13', 1, 17, '2024-10-08 13:23:13', '2024-10-08 13:23:13'),
(54, 0, '2024-10-08 13:26:25', 1, 17, '2024-10-08 13:26:25', '2024-10-08 13:26:25'),
(55, 0, '2024-10-08 13:26:39', 1, 17, '2024-10-08 13:26:39', '2024-10-08 13:26:39'),
(56, 39, '2024-10-08 13:29:49', 1, 17, '2024-10-08 13:29:49', '2024-10-08 13:29:49'),
(57, 23, '2024-10-08 13:33:09', 1, 17, '2024-10-08 13:33:09', '2024-10-08 13:33:09'),
(58, 0, '2024-10-08 13:36:15', 1, 17, '2024-10-08 13:36:15', '2024-10-08 13:36:15'),
(59, 38, '2024-10-08 13:36:30', 1, 17, '2024-10-08 13:36:30', '2024-10-08 13:36:30'),
(60, 38, '2024-10-08 13:36:50', 1, 17, '2024-10-08 13:36:50', '2024-10-08 13:36:50'),
(61, 23, '2024-10-08 13:40:02', 1, 17, '2024-10-08 13:40:02', '2024-10-08 13:40:02'),
(62, 44, '2024-10-08 16:16:32', 1, 18, '2024-10-08 16:16:32', '2024-10-08 16:16:32'),
(63, 44, '2024-10-08 16:16:44', 1, 18, '2024-10-08 16:16:44', '2024-10-08 16:16:44'),
(64, 26, '2024-10-08 16:19:59', 1, 18, '2024-10-08 16:20:00', '2024-10-08 16:20:00'),
(65, 0, '2024-10-08 16:23:10', 1, 18, '2024-10-08 16:23:10', '2024-10-08 16:23:10'),
(66, 45, '2024-10-08 16:23:27', 1, 18, '2024-10-08 16:23:27', '2024-10-08 16:23:27'),
(67, 25, '2024-10-08 16:26:46', 1, 18, '2024-10-08 16:26:46', '2024-10-08 16:26:46'),
(68, 25, '2024-10-08 17:00:58', 1, 19, '2024-10-08 17:00:58', '2024-10-08 17:00:58'),
(69, 0, '2024-10-08 17:04:08', 1, 19, '2024-10-08 17:04:08', '2024-10-08 17:04:08'),
(70, 0, '2024-10-08 17:04:25', 1, 19, '2024-10-08 17:04:25', '2024-10-08 17:04:25'),
(71, 44, '2024-10-08 17:04:41', 1, 19, '2024-10-08 17:04:41', '2024-10-08 17:04:41'),
(72, 24, '2024-10-08 17:04:58', 1, 19, '2024-10-08 17:04:58', '2024-10-08 17:04:58'),
(73, 29, '2024-10-15 17:11:35', 1, 33, '2024-10-15 17:11:35', '2024-10-15 17:11:35'),
(74, 29, '2024-10-15 17:11:42', 1, 33, '2024-10-15 17:11:42', '2024-10-15 17:11:42'),
(75, 29, '2024-10-15 17:11:48', 1, 33, '2024-10-15 17:11:48', '2024-10-15 17:11:48'),
(76, 29, '2024-10-15 17:11:54', 1, 33, '2024-10-15 17:11:54', '2024-10-15 17:11:54'),
(77, 29, '2024-10-15 17:12:00', 1, 33, '2024-10-15 17:12:00', '2024-10-15 17:12:00'),
(78, 29, '2024-10-15 17:12:06', 1, 33, '2024-10-15 17:12:06', '2024-10-15 17:12:06'),
(79, 29, '2024-10-15 17:12:12', 1, 33, '2024-10-15 17:12:12', '2024-10-15 17:12:12'),
(80, 29, '2024-10-15 17:12:20', 1, 33, '2024-10-15 17:12:20', '2024-10-15 17:12:20'),
(81, 29, '2024-10-15 17:12:26', 1, 33, '2024-10-15 17:12:26', '2024-10-15 17:12:26'),
(82, 29, '2024-10-15 17:12:32', 1, 33, '2024-10-15 17:12:32', '2024-10-15 17:12:32'),
(83, 29, '2024-10-15 17:12:38', 1, 33, '2024-10-15 17:12:38', '2024-10-15 17:12:38'),
(84, 29, '2024-10-15 17:12:44', 1, 33, '2024-10-15 17:12:44', '2024-10-15 17:12:44'),
(85, 29, '2024-10-15 17:12:51', 1, 33, '2024-10-15 17:12:51', '2024-10-15 17:12:51'),
(86, 30, '2024-10-15 17:12:57', 1, 33, '2024-10-15 17:12:57', '2024-10-15 17:12:57'),
(87, 30, '2024-10-15 17:13:06', 1, 33, '2024-10-15 17:13:06', '2024-10-15 17:13:06'),
(88, 30, '2024-10-15 17:13:13', 1, 33, '2024-10-15 17:13:13', '2024-10-15 17:13:13'),
(89, 30, '2024-10-15 17:13:20', 1, 33, '2024-10-15 17:13:20', '2024-10-15 17:13:20'),
(90, 30, '2024-10-15 17:13:26', 1, 33, '2024-10-15 17:13:26', '2024-10-15 17:13:26'),
(91, 31, '2024-10-15 17:13:32', 1, 33, '2024-10-15 17:13:32', '2024-10-15 17:13:32'),
(92, 31, '2024-10-15 17:13:37', 1, 33, '2024-10-15 17:13:37', '2024-10-15 17:13:37'),
(93, 31, '2024-10-15 17:13:43', 1, 33, '2024-10-15 17:13:43', '2024-10-15 17:13:43'),
(94, 31, '2024-10-15 17:13:49', 1, 33, '2024-10-15 17:13:49', '2024-10-15 17:13:49'),
(95, 31, '2024-10-15 17:13:54', 1, 33, '2024-10-15 17:13:54', '2024-10-15 17:13:54'),
(96, 31, '2024-10-15 17:14:00', 1, 33, '2024-10-15 17:14:00', '2024-10-15 17:14:00'),
(97, 31, '2024-10-15 17:14:06', 1, 33, '2024-10-15 17:14:06', '2024-10-15 17:14:06'),
(98, 31, '2024-10-15 17:14:12', 1, 33, '2024-10-15 17:14:12', '2024-10-15 17:14:12'),
(99, 31, '2024-10-15 17:14:18', 1, 33, '2024-10-15 17:14:18', '2024-10-15 17:14:18'),
(100, 31, '2024-10-15 17:14:25', 1, 33, '2024-10-15 17:14:25', '2024-10-15 17:14:25'),
(101, 31, '2024-10-15 17:14:31', 1, 33, '2024-10-15 17:14:31', '2024-10-15 17:14:31'),
(102, 31, '2024-10-15 17:14:37', 1, 33, '2024-10-15 17:14:37', '2024-10-15 17:14:37'),
(103, 31, '2024-10-15 17:14:42', 1, 33, '2024-10-15 17:14:42', '2024-10-15 17:14:42'),
(104, 31, '2024-10-15 17:14:48', 1, 33, '2024-10-15 17:14:48', '2024-10-15 17:14:48'),
(105, 31, '2024-10-15 17:14:54', 1, 33, '2024-10-15 17:14:54', '2024-10-15 17:14:54'),
(106, 31, '2024-10-15 17:14:59', 1, 33, '2024-10-15 17:14:59', '2024-10-15 17:14:59'),
(107, 31, '2024-10-15 17:15:05', 1, 33, '2024-10-15 17:15:05', '2024-10-15 17:15:05'),
(108, 31, '2024-10-15 17:15:10', 1, 33, '2024-10-15 17:15:10', '2024-10-15 17:15:10'),
(109, 31, '2024-10-15 17:15:16', 1, 33, '2024-10-15 17:15:16', '2024-10-15 17:15:16'),
(110, 31, '2024-10-15 17:15:21', 1, 33, '2024-10-15 17:15:21', '2024-10-15 17:15:21'),
(111, 31, '2024-10-15 17:15:26', 1, 33, '2024-10-15 17:15:26', '2024-10-15 17:15:26'),
(112, 31, '2024-10-15 17:15:32', 1, 33, '2024-10-15 17:15:32', '2024-10-15 17:15:32'),
(113, 31, '2024-10-15 17:15:38', 1, 33, '2024-10-15 17:15:38', '2024-10-15 17:15:38'),
(114, 31, '2024-10-15 17:15:44', 1, 33, '2024-10-15 17:15:44', '2024-10-15 17:15:44'),
(115, 31, '2024-10-15 17:15:49', 1, 33, '2024-10-15 17:15:49', '2024-10-15 17:15:49'),
(116, 31, '2024-10-15 17:15:55', 1, 33, '2024-10-15 17:15:55', '2024-10-15 17:15:55'),
(117, 31, '2024-10-15 17:16:01', 1, 33, '2024-10-15 17:16:01', '2024-10-15 17:16:01'),
(118, 31, '2024-10-15 17:16:08', 1, 33, '2024-10-15 17:16:08', '2024-10-15 17:16:08'),
(119, 31, '2024-10-15 17:16:14', 1, 33, '2024-10-15 17:16:14', '2024-10-15 17:16:14'),
(120, 31, '2024-10-15 17:16:19', 1, 33, '2024-10-15 17:16:19', '2024-10-15 17:16:19'),
(121, 31, '2024-10-15 17:16:24', 1, 33, '2024-10-15 17:16:24', '2024-10-15 17:16:24'),
(122, 31, '2024-10-15 17:16:30', 1, 33, '2024-10-15 17:16:30', '2024-10-15 17:16:30'),
(123, 31, '2024-10-15 17:16:35', 1, 33, '2024-10-15 17:16:35', '2024-10-15 17:16:35'),
(124, 31, '2024-10-15 17:16:41', 1, 33, '2024-10-15 17:16:41', '2024-10-15 17:16:41'),
(125, 31, '2024-10-15 17:16:46', 1, 33, '2024-10-15 17:16:46', '2024-10-15 17:16:46'),
(126, 31, '2024-10-15 17:16:52', 1, 33, '2024-10-15 17:16:52', '2024-10-15 17:16:52'),
(127, 31, '2024-10-15 17:16:57', 1, 33, '2024-10-15 17:16:57', '2024-10-15 17:16:57'),
(128, 31, '2024-10-15 17:17:02', 1, 33, '2024-10-15 17:17:03', '2024-10-15 17:17:03'),
(129, 31, '2024-10-15 17:17:08', 1, 33, '2024-10-15 17:17:08', '2024-10-15 17:17:08'),
(130, 31, '2024-10-15 17:17:13', 1, 33, '2024-10-15 17:17:13', '2024-10-15 17:17:13'),
(131, 31, '2024-10-15 17:17:19', 1, 33, '2024-10-15 17:17:19', '2024-10-15 17:17:19'),
(132, 31, '2024-10-15 17:17:38', 1, 33, '2024-10-15 17:17:38', '2024-10-15 17:17:38'),
(133, 31, '2024-10-15 17:17:44', 1, 33, '2024-10-15 17:17:44', '2024-10-15 17:17:44'),
(134, 31, '2024-10-15 17:17:49', 1, 33, '2024-10-15 17:17:49', '2024-10-15 17:17:49'),
(135, 31, '2024-10-15 17:17:54', 1, 33, '2024-10-15 17:17:54', '2024-10-15 17:17:54'),
(136, 31, '2024-10-15 17:18:00', 1, 33, '2024-10-15 17:18:00', '2024-10-15 17:18:00'),
(137, 31, '2024-10-15 17:18:05', 1, 33, '2024-10-15 17:18:05', '2024-10-15 17:18:05'),
(138, 31, '2024-10-15 17:18:10', 1, 33, '2024-10-15 17:18:10', '2024-10-15 17:18:10'),
(139, 31, '2024-10-15 17:18:16', 1, 33, '2024-10-15 17:18:16', '2024-10-15 17:18:16'),
(140, 31, '2024-10-15 17:18:21', 1, 33, '2024-10-15 17:18:21', '2024-10-15 17:18:21'),
(141, 31, '2024-10-15 17:18:26', 1, 33, '2024-10-15 17:18:26', '2024-10-15 17:18:26'),
(142, 31, '2024-10-15 17:18:32', 1, 33, '2024-10-15 17:18:32', '2024-10-15 17:18:32'),
(143, 31, '2024-10-15 17:18:37', 1, 33, '2024-10-15 17:18:37', '2024-10-15 17:18:37'),
(144, 31, '2024-10-15 17:18:43', 1, 33, '2024-10-15 17:18:43', '2024-10-15 17:18:43'),
(145, 31, '2024-10-15 17:18:48', 1, 33, '2024-10-15 17:18:48', '2024-10-15 17:18:48'),
(146, 31, '2024-10-15 17:18:54', 1, 33, '2024-10-15 17:18:54', '2024-10-15 17:18:54'),
(147, 31, '2024-10-15 17:18:59', 1, 33, '2024-10-15 17:18:59', '2024-10-15 17:18:59'),
(148, 31, '2024-10-15 17:19:16', 1, 33, '2024-10-15 17:19:16', '2024-10-15 17:19:16'),
(149, 31, '2024-10-15 17:19:22', 1, 33, '2024-10-15 17:19:22', '2024-10-15 17:19:22'),
(150, 31, '2024-10-15 17:19:27', 1, 33, '2024-10-15 17:19:27', '2024-10-15 17:19:27'),
(151, 31, '2024-10-15 17:19:33', 1, 33, '2024-10-15 17:19:33', '2024-10-15 17:19:33'),
(152, 31, '2024-10-15 17:19:38', 1, 33, '2024-10-15 17:19:38', '2024-10-15 17:19:38'),
(153, 31, '2024-10-15 17:19:45', 1, 33, '2024-10-15 17:19:45', '2024-10-15 17:19:45'),
(154, 31, '2024-10-15 17:19:50', 1, 33, '2024-10-15 17:19:50', '2024-10-15 17:19:50'),
(155, 31, '2024-10-15 17:19:55', 1, 33, '2024-10-15 17:19:55', '2024-10-15 17:19:55'),
(156, 31, '2024-10-15 17:20:01', 1, 33, '2024-10-15 17:20:01', '2024-10-15 17:20:01'),
(157, 31, '2024-10-15 17:20:06', 1, 33, '2024-10-15 17:20:06', '2024-10-15 17:20:06'),
(158, 31, '2024-10-15 17:20:12', 1, 33, '2024-10-15 17:20:12', '2024-10-15 17:20:12'),
(159, 31, '2024-10-15 17:20:17', 1, 33, '2024-10-15 17:20:17', '2024-10-15 17:20:17'),
(160, 31, '2024-10-15 17:20:22', 1, 33, '2024-10-15 17:20:22', '2024-10-15 17:20:22'),
(161, 31, '2024-10-15 17:20:28', 1, 33, '2024-10-15 17:20:28', '2024-10-15 17:20:28'),
(162, 31, '2024-10-15 17:20:33', 1, 33, '2024-10-15 17:20:33', '2024-10-15 17:20:33'),
(163, 31, '2024-10-15 17:20:39', 1, 33, '2024-10-15 17:20:39', '2024-10-15 17:20:39'),
(164, 31, '2024-10-15 17:20:44', 1, 33, '2024-10-15 17:20:44', '2024-10-15 17:20:44'),
(165, 31, '2024-10-15 17:20:49', 1, 33, '2024-10-15 17:20:49', '2024-10-15 17:20:49'),
(166, 31, '2024-10-15 17:20:55', 1, 33, '2024-10-15 17:20:55', '2024-10-15 17:20:55'),
(167, 31, '2024-10-15 17:21:00', 1, 33, '2024-10-15 17:21:00', '2024-10-15 17:21:00'),
(168, 31, '2024-10-15 17:21:06', 1, 33, '2024-10-15 17:21:06', '2024-10-15 17:21:06'),
(169, 31, '2024-10-15 17:21:11', 1, 33, '2024-10-15 17:21:11', '2024-10-15 17:21:11'),
(170, 31, '2024-10-15 17:21:17', 1, 33, '2024-10-15 17:21:17', '2024-10-15 17:21:17'),
(171, 31, '2024-10-15 17:21:22', 1, 33, '2024-10-15 17:21:22', '2024-10-15 17:21:22'),
(172, 31, '2024-10-15 17:21:27', 1, 33, '2024-10-15 17:21:27', '2024-10-15 17:21:27'),
(173, 31, '2024-10-15 17:21:33', 1, 33, '2024-10-15 17:21:33', '2024-10-15 17:21:33'),
(174, 31, '2024-10-15 17:21:38', 1, 33, '2024-10-15 17:21:38', '2024-10-15 17:21:38'),
(175, 31, '2024-10-15 17:21:44', 1, 33, '2024-10-15 17:21:44', '2024-10-15 17:21:44'),
(176, 31, '2024-10-15 17:21:50', 1, 33, '2024-10-15 17:21:50', '2024-10-15 17:21:50'),
(177, 31, '2024-10-15 17:21:55', 1, 33, '2024-10-15 17:21:55', '2024-10-15 17:21:55'),
(178, 31, '2024-10-15 17:22:01', 1, 33, '2024-10-15 17:22:01', '2024-10-15 17:22:01'),
(179, 31, '2024-10-15 17:22:07', 1, 33, '2024-10-15 17:22:07', '2024-10-15 17:22:07'),
(180, 31, '2024-10-15 17:22:13', 1, 33, '2024-10-15 17:22:13', '2024-10-15 17:22:13'),
(181, 31, '2024-10-15 17:22:19', 1, 33, '2024-10-15 17:22:19', '2024-10-15 17:22:19'),
(182, 31, '2024-10-15 17:22:25', 1, 33, '2024-10-15 17:22:25', '2024-10-15 17:22:25'),
(183, 31, '2024-10-15 17:22:30', 1, 33, '2024-10-15 17:22:30', '2024-10-15 17:22:30'),
(184, 31, '2024-10-15 17:22:36', 1, 33, '2024-10-15 17:22:36', '2024-10-15 17:22:36'),
(185, 31, '2024-10-15 17:22:42', 1, 33, '2024-10-15 17:22:42', '2024-10-15 17:22:42'),
(186, 31, '2024-10-15 17:22:47', 1, 33, '2024-10-15 17:22:47', '2024-10-15 17:22:47'),
(187, 31, '2024-10-15 17:22:53', 1, 33, '2024-10-15 17:22:53', '2024-10-15 17:22:53'),
(188, 31, '2024-10-15 17:22:59', 1, 33, '2024-10-15 17:22:59', '2024-10-15 17:22:59'),
(189, 31, '2024-10-15 17:23:04', 1, 33, '2024-10-15 17:23:04', '2024-10-15 17:23:04'),
(190, 31, '2024-10-15 17:23:10', 1, 33, '2024-10-15 17:23:10', '2024-10-15 17:23:10'),
(191, 31, '2024-10-15 17:23:16', 1, 33, '2024-10-15 17:23:16', '2024-10-15 17:23:16'),
(192, 31, '2024-10-15 17:23:21', 1, 33, '2024-10-15 17:23:21', '2024-10-15 17:23:21'),
(193, 31, '2024-10-15 17:23:27', 1, 33, '2024-10-15 17:23:27', '2024-10-15 17:23:27'),
(194, 31, '2024-10-15 17:23:33', 1, 33, '2024-10-15 17:23:33', '2024-10-15 17:23:33'),
(195, 31, '2024-10-15 17:23:39', 1, 33, '2024-10-15 17:23:39', '2024-10-15 17:23:39'),
(196, 31, '2024-10-15 17:23:45', 1, 33, '2024-10-15 17:23:45', '2024-10-15 17:23:45'),
(197, 31, '2024-10-15 17:23:50', 1, 33, '2024-10-15 17:23:50', '2024-10-15 17:23:50'),
(198, 31, '2024-10-15 17:23:56', 1, 33, '2024-10-15 17:23:56', '2024-10-15 17:23:56'),
(199, 31, '2024-10-15 17:24:01', 1, 33, '2024-10-15 17:24:01', '2024-10-15 17:24:01'),
(200, 31, '2024-10-15 17:24:07', 1, 33, '2024-10-15 17:24:07', '2024-10-15 17:24:07'),
(201, 31, '2024-10-15 17:24:12', 1, 33, '2024-10-15 17:24:12', '2024-10-15 17:24:12'),
(202, 31, '2024-10-15 17:24:18', 1, 33, '2024-10-15 17:24:18', '2024-10-15 17:24:18'),
(203, 31, '2024-10-15 17:24:24', 1, 33, '2024-10-15 17:24:24', '2024-10-15 17:24:24'),
(204, 31, '2024-10-15 17:24:29', 1, 33, '2024-10-15 17:24:29', '2024-10-15 17:24:29'),
(205, 31, '2024-10-15 17:24:35', 1, 33, '2024-10-15 17:24:35', '2024-10-15 17:24:35'),
(206, 31, '2024-10-15 17:24:41', 1, 33, '2024-10-15 17:24:42', '2024-10-15 17:24:42'),
(207, 31, '2024-10-15 17:24:47', 1, 33, '2024-10-15 17:24:47', '2024-10-15 17:24:47'),
(208, 31, '2024-10-15 17:24:53', 1, 33, '2024-10-15 17:24:53', '2024-10-15 17:24:53'),
(209, 31, '2024-10-15 17:24:59', 1, 33, '2024-10-15 17:24:59', '2024-10-15 17:24:59'),
(210, 31, '2024-10-15 17:25:04', 1, 33, '2024-10-15 17:25:04', '2024-10-15 17:25:04'),
(211, 31, '2024-10-15 17:25:10', 1, 33, '2024-10-15 17:25:10', '2024-10-15 17:25:10'),
(212, 31, '2024-10-15 17:25:16', 1, 33, '2024-10-15 17:25:16', '2024-10-15 17:25:16'),
(213, 31, '2024-10-15 17:25:21', 1, 33, '2024-10-15 17:25:21', '2024-10-15 17:25:21'),
(214, 31, '2024-10-15 17:25:27', 1, 33, '2024-10-15 17:25:27', '2024-10-15 17:25:27'),
(215, 31, '2024-10-15 17:25:33', 1, 33, '2024-10-15 17:25:33', '2024-10-15 17:25:33'),
(216, 31, '2024-10-15 17:25:39', 1, 33, '2024-10-15 17:25:39', '2024-10-15 17:25:39'),
(217, 31, '2024-10-15 17:25:45', 1, 33, '2024-10-15 17:25:45', '2024-10-15 17:25:45'),
(218, 31, '2024-10-15 17:25:51', 1, 33, '2024-10-15 17:25:51', '2024-10-15 17:25:51'),
(219, 31, '2024-10-15 17:25:57', 1, 33, '2024-10-15 17:25:57', '2024-10-15 17:25:57'),
(220, 31, '2024-10-15 17:26:02', 1, 33, '2024-10-15 17:26:02', '2024-10-15 17:26:02'),
(221, 31, '2024-10-15 17:26:08', 1, 33, '2024-10-15 17:26:09', '2024-10-15 17:26:09'),
(222, 31, '2024-10-15 17:26:14', 1, 33, '2024-10-15 17:26:14', '2024-10-15 17:26:14'),
(223, 31, '2024-10-15 17:26:20', 1, 33, '2024-10-15 17:26:21', '2024-10-15 17:26:21'),
(224, 31, '2024-10-15 17:26:27', 1, 33, '2024-10-15 17:26:27', '2024-10-15 17:26:27'),
(225, 31, '2024-10-15 17:26:41', 1, 33, '2024-10-15 17:26:41', '2024-10-15 17:26:41'),
(226, 31, '2024-10-15 17:26:47', 1, 33, '2024-10-15 17:26:47', '2024-10-15 17:26:47'),
(227, 31, '2024-10-15 17:26:53', 1, 33, '2024-10-15 17:26:53', '2024-10-15 17:26:53'),
(228, 31, '2024-10-15 17:26:59', 1, 33, '2024-10-15 17:26:59', '2024-10-15 17:26:59'),
(229, 31, '2024-10-15 17:27:05', 1, 33, '2024-10-15 17:27:05', '2024-10-15 17:27:05'),
(230, 31, '2024-10-15 17:27:11', 1, 33, '2024-10-15 17:27:11', '2024-10-15 17:27:11'),
(231, 31, '2024-10-15 17:27:16', 1, 33, '2024-10-15 17:27:16', '2024-10-15 17:27:16'),
(232, 31, '2024-10-15 17:27:21', 1, 33, '2024-10-15 17:27:21', '2024-10-15 17:27:21'),
(233, 31, '2024-10-15 17:27:26', 1, 33, '2024-10-15 17:27:26', '2024-10-15 17:27:26'),
(234, 31, '2024-10-15 17:27:32', 1, 33, '2024-10-15 17:27:32', '2024-10-15 17:27:32'),
(235, 31, '2024-10-15 17:27:37', 1, 33, '2024-10-15 17:27:37', '2024-10-15 17:27:37'),
(236, 31, '2024-10-15 17:27:42', 1, 33, '2024-10-15 17:27:42', '2024-10-15 17:27:42'),
(237, 31, '2024-10-15 17:27:48', 1, 33, '2024-10-15 17:27:48', '2024-10-15 17:27:48'),
(238, 31, '2024-10-15 17:27:53', 1, 33, '2024-10-15 17:27:53', '2024-10-15 17:27:53'),
(239, 31, '2024-10-15 17:27:58', 1, 33, '2024-10-15 17:27:58', '2024-10-15 17:27:58'),
(240, 31, '2024-10-15 17:28:03', 1, 33, '2024-10-15 17:28:03', '2024-10-15 17:28:03'),
(241, 31, '2024-10-15 17:28:09', 1, 33, '2024-10-15 17:28:09', '2024-10-15 17:28:09'),
(242, 31, '2024-10-15 17:28:14', 1, 33, '2024-10-15 17:28:14', '2024-10-15 17:28:14'),
(243, 31, '2024-10-15 17:28:19', 1, 33, '2024-10-15 17:28:19', '2024-10-15 17:28:19'),
(244, 31, '2024-10-15 17:28:25', 1, 33, '2024-10-15 17:28:25', '2024-10-15 17:28:25'),
(245, 31, '2024-10-15 17:28:30', 1, 33, '2024-10-15 17:28:30', '2024-10-15 17:28:30'),
(246, 31, '2024-10-15 17:28:35', 1, 33, '2024-10-15 17:28:35', '2024-10-15 17:28:35'),
(247, 31, '2024-10-15 17:28:41', 1, 33, '2024-10-15 17:28:41', '2024-10-15 17:28:41'),
(248, 31, '2024-10-15 17:28:46', 1, 33, '2024-10-15 17:28:46', '2024-10-15 17:28:46'),
(249, 31, '2024-10-15 17:28:51', 1, 33, '2024-10-15 17:28:51', '2024-10-15 17:28:51'),
(250, 31, '2024-10-15 17:28:57', 1, 33, '2024-10-15 17:28:57', '2024-10-15 17:28:57'),
(251, 31, '2024-10-15 17:29:02', 1, 33, '2024-10-15 17:29:02', '2024-10-15 17:29:02'),
(252, 31, '2024-10-15 17:29:07', 1, 33, '2024-10-15 17:29:07', '2024-10-15 17:29:07'),
(253, 31, '2024-10-15 17:29:12', 1, 33, '2024-10-15 17:29:12', '2024-10-15 17:29:12'),
(254, 31, '2024-10-15 17:29:18', 1, 33, '2024-10-15 17:29:18', '2024-10-15 17:29:18'),
(255, 31, '2024-10-15 17:29:23', 1, 33, '2024-10-15 17:29:23', '2024-10-15 17:29:23'),
(256, 31, '2024-10-15 17:29:28', 1, 33, '2024-10-15 17:29:28', '2024-10-15 17:29:28'),
(257, 31, '2024-10-15 17:29:33', 1, 33, '2024-10-15 17:29:33', '2024-10-15 17:29:33'),
(258, 31, '2024-10-15 17:29:39', 1, 33, '2024-10-15 17:29:39', '2024-10-15 17:29:39'),
(259, 31, '2024-10-15 17:29:44', 1, 33, '2024-10-15 17:29:44', '2024-10-15 17:29:44'),
(260, 31, '2024-10-15 17:29:49', 1, 33, '2024-10-15 17:29:49', '2024-10-15 17:29:49'),
(261, 31, '2024-10-15 17:29:55', 1, 33, '2024-10-15 17:29:55', '2024-10-15 17:29:55'),
(262, 31, '2024-10-15 17:30:00', 1, 33, '2024-10-15 17:30:00', '2024-10-15 17:30:00'),
(263, 31, '2024-10-15 17:30:05', 1, 33, '2024-10-15 17:30:05', '2024-10-15 17:30:05'),
(264, 31, '2024-10-15 17:30:10', 1, 33, '2024-10-15 17:30:10', '2024-10-15 17:30:10'),
(265, 31, '2024-10-15 17:30:16', 1, 33, '2024-10-15 17:30:16', '2024-10-15 17:30:16'),
(266, 31, '2024-10-15 17:30:21', 1, 33, '2024-10-15 17:30:21', '2024-10-15 17:30:21'),
(267, 31, '2024-10-15 17:30:26', 1, 33, '2024-10-15 17:30:26', '2024-10-15 17:30:26'),
(268, 31, '2024-10-15 17:30:31', 1, 33, '2024-10-15 17:30:32', '2024-10-15 17:30:32'),
(269, 31, '2024-10-15 17:30:37', 1, 33, '2024-10-15 17:30:37', '2024-10-15 17:30:37'),
(270, 31, '2024-10-15 17:30:42', 1, 33, '2024-10-15 17:30:42', '2024-10-15 17:30:42'),
(271, 31, '2024-10-15 17:30:47', 1, 33, '2024-10-15 17:30:47', '2024-10-15 17:30:47'),
(272, 31, '2024-10-15 17:30:53', 1, 33, '2024-10-15 17:30:53', '2024-10-15 17:30:53'),
(273, 31, '2024-10-15 17:30:58', 1, 33, '2024-10-15 17:30:58', '2024-10-15 17:30:58'),
(274, 31, '2024-10-15 17:31:03', 1, 33, '2024-10-15 17:31:03', '2024-10-15 17:31:03'),
(275, 30, '2024-10-15 17:31:09', 1, 33, '2024-10-15 17:31:09', '2024-10-15 17:31:09'),
(276, 31, '2024-10-15 17:31:14', 1, 33, '2024-10-15 17:31:14', '2024-10-15 17:31:14'),
(277, 30, '2024-10-15 17:31:19', 1, 33, '2024-10-15 17:31:19', '2024-10-15 17:31:19'),
(278, 30, '2024-10-15 17:31:24', 1, 33, '2024-10-15 17:31:24', '2024-10-15 17:31:24'),
(279, 30, '2024-10-15 17:31:29', 1, 33, '2024-10-15 17:31:29', '2024-10-15 17:31:29'),
(280, 30, '2024-10-15 17:31:35', 1, 33, '2024-10-15 17:31:35', '2024-10-15 17:31:35'),
(281, 30, '2024-10-15 17:31:40', 1, 33, '2024-10-15 17:31:40', '2024-10-15 17:31:40'),
(282, 30, '2024-10-15 17:31:45', 1, 33, '2024-10-15 17:31:45', '2024-10-15 17:31:45'),
(283, 30, '2024-10-15 17:31:51', 1, 33, '2024-10-15 17:31:51', '2024-10-15 17:31:51'),
(284, 30, '2024-10-15 17:31:56', 1, 33, '2024-10-15 17:31:56', '2024-10-15 17:31:56'),
(285, 30, '2024-10-15 17:32:02', 1, 33, '2024-10-15 17:32:02', '2024-10-15 17:32:02'),
(286, 30, '2024-10-15 17:32:07', 1, 33, '2024-10-15 17:32:07', '2024-10-15 17:32:07'),
(287, 30, '2024-10-15 17:32:13', 1, 33, '2024-10-15 17:32:13', '2024-10-15 17:32:13'),
(288, 30, '2024-10-15 17:32:18', 1, 33, '2024-10-15 17:32:18', '2024-10-15 17:32:18'),
(289, 30, '2024-10-15 17:32:23', 1, 33, '2024-10-15 17:32:23', '2024-10-15 17:32:23'),
(290, 30, '2024-10-15 17:32:29', 1, 33, '2024-10-15 17:32:29', '2024-10-15 17:32:29'),
(291, 30, '2024-10-15 17:32:35', 1, 33, '2024-10-15 17:32:35', '2024-10-15 17:32:35'),
(292, 30, '2024-10-15 17:32:40', 1, 33, '2024-10-15 17:32:40', '2024-10-15 17:32:40'),
(293, 30, '2024-10-15 17:32:45', 1, 33, '2024-10-15 17:32:45', '2024-10-15 17:32:45'),
(294, 30, '2024-10-15 17:32:51', 1, 33, '2024-10-15 17:32:51', '2024-10-15 17:32:51'),
(295, 30, '2024-10-15 17:32:56', 1, 33, '2024-10-15 17:32:56', '2024-10-15 17:32:56'),
(296, 30, '2024-10-15 17:33:01', 1, 33, '2024-10-15 17:33:01', '2024-10-15 17:33:01'),
(297, 30, '2024-10-15 17:33:06', 1, 33, '2024-10-15 17:33:06', '2024-10-15 17:33:06'),
(298, 30, '2024-10-15 17:33:12', 1, 33, '2024-10-15 17:33:12', '2024-10-15 17:33:12'),
(299, 30, '2024-10-15 17:33:17', 1, 33, '2024-10-15 17:33:17', '2024-10-15 17:33:17'),
(300, 30, '2024-10-15 17:33:22', 1, 33, '2024-10-15 17:33:22', '2024-10-15 17:33:22'),
(301, 30, '2024-10-15 17:33:27', 1, 33, '2024-10-15 17:33:27', '2024-10-15 17:33:27'),
(302, 30, '2024-10-15 17:33:33', 1, 33, '2024-10-15 17:33:33', '2024-10-15 17:33:33'),
(303, 30, '2024-10-15 17:33:38', 1, 33, '2024-10-15 17:33:38', '2024-10-15 17:33:38'),
(304, 30, '2024-10-15 17:33:43', 1, 33, '2024-10-15 17:33:43', '2024-10-15 17:33:43'),
(305, 30, '2024-10-15 17:33:49', 1, 33, '2024-10-15 17:33:49', '2024-10-15 17:33:49'),
(306, 30, '2024-10-15 17:33:54', 1, 33, '2024-10-15 17:33:54', '2024-10-15 17:33:54'),
(307, 30, '2024-10-15 17:33:59', 1, 33, '2024-10-15 17:33:59', '2024-10-15 17:33:59'),
(308, 30, '2024-10-15 17:34:05', 1, 33, '2024-10-15 17:34:05', '2024-10-15 17:34:05'),
(309, 30, '2024-10-15 17:34:10', 1, 33, '2024-10-15 17:34:10', '2024-10-15 17:34:10'),
(310, 30, '2024-10-15 17:34:15', 1, 33, '2024-10-15 17:34:15', '2024-10-15 17:34:15'),
(311, 30, '2024-10-15 17:34:20', 1, 33, '2024-10-15 17:34:20', '2024-10-15 17:34:20'),
(312, 30, '2024-10-15 17:34:25', 1, 33, '2024-10-15 17:34:25', '2024-10-15 17:34:25'),
(313, 30, '2024-10-15 17:34:31', 1, 33, '2024-10-15 17:34:31', '2024-10-15 17:34:31'),
(314, 30, '2024-10-15 17:34:36', 1, 33, '2024-10-15 17:34:36', '2024-10-15 17:34:36'),
(315, 30, '2024-10-15 17:34:41', 1, 33, '2024-10-15 17:34:41', '2024-10-15 17:34:41'),
(316, 30, '2024-10-15 17:34:46', 1, 33, '2024-10-15 17:34:46', '2024-10-15 17:34:46'),
(317, 30, '2024-10-15 17:34:51', 1, 33, '2024-10-15 17:34:52', '2024-10-15 17:34:52'),
(318, 30, '2024-10-15 17:34:57', 1, 33, '2024-10-15 17:34:57', '2024-10-15 17:34:57'),
(319, 30, '2024-10-15 17:35:02', 1, 33, '2024-10-15 17:35:02', '2024-10-15 17:35:02'),
(320, 30, '2024-10-15 17:35:07', 1, 33, '2024-10-15 17:35:07', '2024-10-15 17:35:07'),
(321, 30, '2024-10-15 17:35:12', 1, 33, '2024-10-15 17:35:12', '2024-10-15 17:35:12'),
(322, 30, '2024-10-15 17:35:17', 1, 33, '2024-10-15 17:35:17', '2024-10-15 17:35:17'),
(323, 30, '2024-10-15 17:35:23', 1, 33, '2024-10-15 17:35:23', '2024-10-15 17:35:23'),
(324, 30, '2024-10-15 17:35:28', 1, 33, '2024-10-15 17:35:28', '2024-10-15 17:35:28'),
(325, 30, '2024-10-15 17:35:33', 1, 33, '2024-10-15 17:35:33', '2024-10-15 17:35:33'),
(326, 30, '2024-10-15 17:35:39', 1, 33, '2024-10-15 17:35:39', '2024-10-15 17:35:39'),
(327, 30, '2024-10-15 17:35:46', 1, 33, '2024-10-15 17:35:46', '2024-10-15 17:35:46'),
(328, 30, '2024-10-15 17:35:52', 1, 33, '2024-10-15 17:35:52', '2024-10-15 17:35:52'),
(329, 30, '2024-10-15 17:35:57', 1, 33, '2024-10-15 17:35:57', '2024-10-15 17:35:57'),
(330, 30, '2024-10-15 17:36:02', 1, 33, '2024-10-15 17:36:02', '2024-10-15 17:36:02'),
(331, 30, '2024-10-15 17:36:08', 1, 33, '2024-10-15 17:36:08', '2024-10-15 17:36:08'),
(332, 30, '2024-10-15 17:36:13', 1, 33, '2024-10-15 17:36:13', '2024-10-15 17:36:13'),
(333, 30, '2024-10-15 17:36:18', 1, 33, '2024-10-15 17:36:18', '2024-10-15 17:36:18'),
(334, 30, '2024-10-15 17:36:24', 1, 33, '2024-10-15 17:36:24', '2024-10-15 17:36:24'),
(335, 30, '2024-10-15 17:36:29', 1, 33, '2024-10-15 17:36:29', '2024-10-15 17:36:29'),
(336, 30, '2024-10-15 17:36:34', 1, 33, '2024-10-15 17:36:34', '2024-10-15 17:36:34'),
(337, 30, '2024-10-15 17:36:39', 1, 33, '2024-10-15 17:36:39', '2024-10-15 17:36:39'),
(338, 30, '2024-10-15 17:36:45', 1, 33, '2024-10-15 17:36:45', '2024-10-15 17:36:45'),
(339, 30, '2024-10-15 17:36:50', 1, 33, '2024-10-15 17:36:50', '2024-10-15 17:36:50'),
(340, 30, '2024-10-15 17:36:55', 1, 33, '2024-10-15 17:36:55', '2024-10-15 17:36:55'),
(341, 30, '2024-10-15 17:37:00', 1, 33, '2024-10-15 17:37:00', '2024-10-15 17:37:00'),
(342, 30, '2024-10-15 17:37:06', 1, 33, '2024-10-15 17:37:06', '2024-10-15 17:37:06'),
(343, 30, '2024-10-15 17:37:11', 1, 33, '2024-10-15 17:37:11', '2024-10-15 17:37:11'),
(344, 30, '2024-10-15 17:37:16', 1, 33, '2024-10-15 17:37:16', '2024-10-15 17:37:16'),
(345, 30, '2024-10-15 17:37:21', 1, 33, '2024-10-15 17:37:21', '2024-10-15 17:37:21'),
(346, 30, '2024-10-15 17:37:26', 1, 33, '2024-10-15 17:37:26', '2024-10-15 17:37:26'),
(347, 30, '2024-10-15 17:37:32', 1, 33, '2024-10-15 17:37:32', '2024-10-15 17:37:32'),
(348, 30, '2024-10-15 17:37:37', 1, 33, '2024-10-15 17:37:37', '2024-10-15 17:37:37'),
(349, 30, '2024-10-15 17:37:42', 1, 33, '2024-10-15 17:37:42', '2024-10-15 17:37:42'),
(350, 30, '2024-10-15 17:37:47', 1, 33, '2024-10-15 17:37:47', '2024-10-15 17:37:47'),
(351, 30, '2024-10-15 17:37:53', 1, 33, '2024-10-15 17:37:53', '2024-10-15 17:37:53'),
(352, 30, '2024-10-15 17:37:58', 1, 33, '2024-10-15 17:37:58', '2024-10-15 17:37:58'),
(353, 30, '2024-10-15 17:38:03', 1, 33, '2024-10-15 17:38:03', '2024-10-15 17:38:03'),
(354, 30, '2024-10-15 17:38:08', 1, 33, '2024-10-15 17:38:08', '2024-10-15 17:38:08'),
(355, 30, '2024-10-15 17:38:13', 1, 33, '2024-10-15 17:38:13', '2024-10-15 17:38:13'),
(356, 29, '2024-10-15 17:38:18', 1, 33, '2024-10-15 17:38:18', '2024-10-15 17:38:18'),
(357, 29, '2024-10-15 17:38:24', 1, 33, '2024-10-15 17:38:24', '2024-10-15 17:38:24'),
(358, 29, '2024-10-15 17:38:29', 1, 33, '2024-10-15 17:38:29', '2024-10-15 17:38:29'),
(359, 29, '2024-10-15 17:38:34', 1, 33, '2024-10-15 17:38:34', '2024-10-15 17:38:34'),
(360, 29, '2024-10-15 17:38:39', 1, 33, '2024-10-15 17:38:39', '2024-10-15 17:38:39'),
(361, 29, '2024-10-15 17:38:44', 1, 33, '2024-10-15 17:38:44', '2024-10-15 17:38:44'),
(362, 29, '2024-10-15 17:38:49', 1, 33, '2024-10-15 17:38:49', '2024-10-15 17:38:49'),
(363, 29, '2024-10-15 17:38:54', 1, 33, '2024-10-15 17:38:54', '2024-10-15 17:38:54'),
(364, 29, '2024-10-15 17:39:00', 1, 33, '2024-10-15 17:39:00', '2024-10-15 17:39:00'),
(365, 29, '2024-10-15 17:39:05', 1, 33, '2024-10-15 17:39:05', '2024-10-15 17:39:05'),
(366, 29, '2024-10-15 17:39:10', 1, 33, '2024-10-15 17:39:10', '2024-10-15 17:39:10'),
(367, 29, '2024-10-15 17:39:15', 1, 33, '2024-10-15 17:39:15', '2024-10-15 17:39:15'),
(368, 29, '2024-10-15 17:39:20', 1, 33, '2024-10-15 17:39:20', '2024-10-15 17:39:20'),
(369, 30, '2024-10-15 17:39:25', 1, 33, '2024-10-15 17:39:25', '2024-10-15 17:39:25'),
(370, 30, '2024-10-15 17:39:31', 1, 33, '2024-10-15 17:39:31', '2024-10-15 17:39:31'),
(371, 30, '2024-10-15 17:39:36', 1, 33, '2024-10-15 17:39:36', '2024-10-15 17:39:36'),
(372, 30, '2024-10-15 17:39:41', 1, 33, '2024-10-15 17:39:41', '2024-10-15 17:39:41'),
(373, 30, '2024-10-15 17:39:46', 1, 33, '2024-10-15 17:39:46', '2024-10-15 17:39:46'),
(374, 30, '2024-10-15 17:39:51', 1, 33, '2024-10-15 17:39:51', '2024-10-15 17:39:51'),
(375, 30, '2024-10-15 17:39:57', 1, 33, '2024-10-15 17:39:57', '2024-10-15 17:39:57'),
(376, 29, '2024-10-15 17:40:02', 1, 33, '2024-10-15 17:40:02', '2024-10-15 17:40:02'),
(377, 28, '2024-10-15 17:40:07', 1, 33, '2024-10-15 17:40:07', '2024-10-15 17:40:07'),
(378, 28, '2024-10-15 17:40:12', 1, 33, '2024-10-15 17:40:12', '2024-10-15 17:40:12'),
(379, 28, '2024-10-15 17:40:17', 1, 33, '2024-10-15 17:40:17', '2024-10-15 17:40:17'),
(380, 28, '2024-10-15 17:40:22', 1, 33, '2024-10-15 17:40:22', '2024-10-15 17:40:22'),
(381, 28, '2024-10-15 17:40:27', 1, 33, '2024-10-15 17:40:27', '2024-10-15 17:40:27'),
(382, 27, '2024-10-15 17:40:33', 1, 33, '2024-10-15 17:40:33', '2024-10-15 17:40:33'),
(383, 27, '2024-10-15 17:40:38', 1, 33, '2024-10-15 17:40:38', '2024-10-15 17:40:38'),
(384, 28, '2024-10-15 17:40:43', 1, 33, '2024-10-15 17:40:43', '2024-10-15 17:40:43'),
(385, 28, '2024-10-15 17:40:48', 1, 33, '2024-10-15 17:40:48', '2024-10-15 17:40:48'),
(386, 28, '2024-10-15 17:40:53', 1, 33, '2024-10-15 17:40:53', '2024-10-15 17:40:53'),
(387, 28, '2024-10-15 17:40:58', 1, 33, '2024-10-15 17:40:58', '2024-10-15 17:40:58'),
(388, 28, '2024-10-15 17:41:04', 1, 33, '2024-10-15 17:41:04', '2024-10-15 17:41:04'),
(389, 28, '2024-10-15 17:41:09', 1, 33, '2024-10-15 17:41:09', '2024-10-15 17:41:09'),
(390, 28, '2024-10-15 17:41:14', 1, 33, '2024-10-15 17:41:14', '2024-10-15 17:41:14'),
(391, 28, '2024-10-15 17:41:19', 1, 33, '2024-10-15 17:41:19', '2024-10-15 17:41:19'),
(392, 28, '2024-10-15 17:41:24', 1, 33, '2024-10-15 17:41:24', '2024-10-15 17:41:24'),
(393, 29, '2024-10-15 17:41:29', 1, 33, '2024-10-15 17:41:29', '2024-10-15 17:41:29'),
(394, 29, '2024-10-15 17:41:34', 1, 33, '2024-10-15 17:41:34', '2024-10-15 17:41:34'),
(395, 29, '2024-10-15 17:41:40', 1, 33, '2024-10-15 17:41:40', '2024-10-15 17:41:40'),
(396, 29, '2024-10-15 17:41:45', 1, 33, '2024-10-15 17:41:45', '2024-10-15 17:41:45'),
(397, 29, '2024-10-15 17:41:50', 1, 33, '2024-10-15 17:41:50', '2024-10-15 17:41:50'),
(398, 29, '2024-10-15 17:41:55', 1, 33, '2024-10-15 17:41:55', '2024-10-15 17:41:55'),
(399, 29, '2024-10-15 17:42:00', 1, 33, '2024-10-15 17:42:01', '2024-10-15 17:42:01'),
(400, 29, '2024-10-15 17:42:06', 1, 33, '2024-10-15 17:42:06', '2024-10-15 17:42:06'),
(401, 29, '2024-10-15 17:42:11', 1, 33, '2024-10-15 17:42:11', '2024-10-15 17:42:11'),
(402, 29, '2024-10-15 17:42:16', 1, 33, '2024-10-15 17:42:16', '2024-10-15 17:42:16'),
(403, 29, '2024-10-15 17:42:22', 1, 33, '2024-10-15 17:42:22', '2024-10-15 17:42:22'),
(404, 29, '2024-10-15 17:42:27', 1, 33, '2024-10-15 17:42:27', '2024-10-15 17:42:27');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `localisations`
--

CREATE TABLE `localisations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `positon` varchar(255) NOT NULL,
  `etat` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `ruche_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `localisations`
--

INSERT INTO `localisations` (`id`, `positon`, `etat`, `date`, `ruche_id`, `created_at`, `updated_at`) VALUES
(1, 'paris', 1, '2024-08-28 16:37:29', 1, NULL, NULL),
(2, 'ouagadougou', 1, '2024-08-29 23:55:44', 2, NULL, NULL),
(3, 'paris', 1, '2024-09-09 12:11:20', 4, '2024-09-09 12:11:20', '2024-09-09 12:11:20'),
(4, '12.442310, -1.485896', 1, '2024-09-20 17:26:01', 4, NULL, NULL),
(5, '12.309531, -1.529120', 1, '2024-10-03 12:25:08', 11, NULL, NULL),
(6, '12.309531, -1.529120\r\n', 1, '2024-10-08 18:28:15', 18, NULL, NULL),
(7, '12.309531, -1.529120\r\n', 1, '2024-10-08 19:00:49', 19, NULL, NULL),
(8, '12.3657,-1.5339', 1, '2024-10-15 17:11:39', 33, '2024-10-15 17:11:39', '2024-10-15 17:11:39'),
(9, '12.3657,-1.5339', 1, '2024-10-15 17:11:45', 33, '2024-10-15 17:11:45', '2024-10-15 17:11:45'),
(10, '12.3657,-1.5339', 1, '2024-10-15 17:11:51', 33, '2024-10-15 17:11:51', '2024-10-15 17:11:51'),
(11, '12.3657,-1.5339', 1, '2024-10-15 17:11:57', 33, '2024-10-15 17:11:57', '2024-10-15 17:11:57'),
(12, '12.3657,-1.5339', 1, '2024-10-15 17:12:03', 33, '2024-10-15 17:12:03', '2024-10-15 17:12:03'),
(13, '12.3657,-1.5339', 1, '2024-10-15 17:12:09', 33, '2024-10-15 17:12:09', '2024-10-15 17:12:09'),
(14, '12.3657,-1.5339', 1, '2024-10-15 17:12:16', 33, '2024-10-15 17:12:16', '2024-10-15 17:12:16'),
(15, '12.3657,-1.5339', 1, '2024-10-15 17:12:23', 33, '2024-10-15 17:12:23', '2024-10-15 17:12:23'),
(16, '12.3657,-1.5339', 1, '2024-10-15 17:12:29', 33, '2024-10-15 17:12:29', '2024-10-15 17:12:29'),
(17, '12.3657,-1.5339', 1, '2024-10-15 17:12:35', 33, '2024-10-15 17:12:35', '2024-10-15 17:12:35'),
(18, '12.3657,-1.5339', 1, '2024-10-15 17:12:41', 33, '2024-10-15 17:12:41', '2024-10-15 17:12:41'),
(19, '12.3657,-1.5339', 1, '2024-10-15 17:12:48', 33, '2024-10-15 17:12:48', '2024-10-15 17:12:48'),
(20, '12.3657,-1.5339', 1, '2024-10-15 17:12:54', 33, '2024-10-15 17:12:54', '2024-10-15 17:12:54'),
(21, '12.3657,-1.5339', 1, '2024-10-15 17:13:02', 33, '2024-10-15 17:13:02', '2024-10-15 17:13:02'),
(22, '12.3657,-1.5339', 1, '2024-10-15 17:13:10', 33, '2024-10-15 17:13:10', '2024-10-15 17:13:10'),
(23, '12.3657,-1.5339', 1, '2024-10-15 17:13:15', 33, '2024-10-15 17:13:15', '2024-10-15 17:13:15'),
(24, '12.3657,-1.5339', 1, '2024-10-15 17:13:23', 33, '2024-10-15 17:13:23', '2024-10-15 17:13:23'),
(25, '12.3657,-1.5339', 1, '2024-10-15 17:13:29', 33, '2024-10-15 17:13:29', '2024-10-15 17:13:29'),
(26, '12.3657,-1.5339', 1, '2024-10-15 17:13:34', 33, '2024-10-15 17:13:34', '2024-10-15 17:13:34'),
(27, '12.3657,-1.5339', 1, '2024-10-15 17:13:40', 33, '2024-10-15 17:13:40', '2024-10-15 17:13:40'),
(28, '12.3657,-1.5339', 1, '2024-10-15 17:13:46', 33, '2024-10-15 17:13:46', '2024-10-15 17:13:46'),
(29, '12.3657,-1.5339', 1, '2024-10-15 17:13:52', 33, '2024-10-15 17:13:52', '2024-10-15 17:13:52'),
(30, '12.3657,-1.5339', 1, '2024-10-15 17:13:57', 33, '2024-10-15 17:13:57', '2024-10-15 17:13:57'),
(31, '12.3657,-1.5339', 1, '2024-10-15 17:14:03', 33, '2024-10-15 17:14:03', '2024-10-15 17:14:03'),
(32, '12.3657,-1.5339', 1, '2024-10-15 17:14:09', 33, '2024-10-15 17:14:09', '2024-10-15 17:14:09'),
(33, '12.3657,-1.5339', 1, '2024-10-15 17:14:15', 33, '2024-10-15 17:14:15', '2024-10-15 17:14:15'),
(34, '12.3657,-1.5339', 1, '2024-10-15 17:14:21', 33, '2024-10-15 17:14:21', '2024-10-15 17:14:21'),
(35, '12.3657,-1.5339', 1, '2024-10-15 17:14:28', 33, '2024-10-15 17:14:28', '2024-10-15 17:14:28'),
(36, '12.3657,-1.5339', 1, '2024-10-15 17:14:34', 33, '2024-10-15 17:14:34', '2024-10-15 17:14:34'),
(37, '12.3657,-1.5339', 1, '2024-10-15 17:14:40', 33, '2024-10-15 17:14:40', '2024-10-15 17:14:40'),
(38, '12.3657,-1.5339', 1, '2024-10-15 17:14:45', 33, '2024-10-15 17:14:45', '2024-10-15 17:14:45'),
(39, '12.3657,-1.5339', 1, '2024-10-15 17:14:51', 33, '2024-10-15 17:14:51', '2024-10-15 17:14:51'),
(40, '12.3657,-1.5339', 1, '2024-10-15 17:14:56', 33, '2024-10-15 17:14:57', '2024-10-15 17:14:57'),
(41, '12.3657,-1.5339', 1, '2024-10-15 17:15:02', 33, '2024-10-15 17:15:02', '2024-10-15 17:15:02'),
(42, '12.3657,-1.5339', 1, '2024-10-15 17:15:07', 33, '2024-10-15 17:15:07', '2024-10-15 17:15:07'),
(43, '12.3657,-1.5339', 1, '2024-10-15 17:15:13', 33, '2024-10-15 17:15:13', '2024-10-15 17:15:13'),
(44, '12.3657,-1.5339', 1, '2024-10-15 17:15:18', 33, '2024-10-15 17:15:18', '2024-10-15 17:15:18'),
(45, '12.3657,-1.5339', 1, '2024-10-15 17:15:24', 33, '2024-10-15 17:15:24', '2024-10-15 17:15:24'),
(46, '12.3657,-1.5339', 1, '2024-10-15 17:15:29', 33, '2024-10-15 17:15:29', '2024-10-15 17:15:29'),
(47, '12.3657,-1.5339', 1, '2024-10-15 17:15:35', 33, '2024-10-15 17:15:35', '2024-10-15 17:15:35'),
(48, '12.3657,-1.5339', 1, '2024-10-15 17:15:41', 33, '2024-10-15 17:15:41', '2024-10-15 17:15:41'),
(49, '12.3657,-1.5339', 1, '2024-10-15 17:15:46', 33, '2024-10-15 17:15:47', '2024-10-15 17:15:47'),
(50, '12.3657,-1.5339', 1, '2024-10-15 17:15:53', 33, '2024-10-15 17:15:53', '2024-10-15 17:15:53'),
(51, '12.3657,-1.5339', 1, '2024-10-15 17:15:58', 33, '2024-10-15 17:15:58', '2024-10-15 17:15:58'),
(52, '12.3657,-1.5339', 1, '2024-10-15 17:16:05', 33, '2024-10-15 17:16:05', '2024-10-15 17:16:05'),
(53, '12.3657,-1.5339', 1, '2024-10-15 17:16:11', 33, '2024-10-15 17:16:11', '2024-10-15 17:16:11'),
(54, '12.3657,-1.5339', 1, '2024-10-15 17:16:16', 33, '2024-10-15 17:16:16', '2024-10-15 17:16:16'),
(55, '12.3657,-1.5339', 1, '2024-10-15 17:16:22', 33, '2024-10-15 17:16:22', '2024-10-15 17:16:22'),
(56, '12.3657,-1.5339', 1, '2024-10-15 17:16:27', 33, '2024-10-15 17:16:27', '2024-10-15 17:16:27'),
(57, '12.3657,-1.5339', 1, '2024-10-15 17:16:32', 33, '2024-10-15 17:16:33', '2024-10-15 17:16:33'),
(58, '12.3657,-1.5339', 1, '2024-10-15 17:16:38', 33, '2024-10-15 17:16:38', '2024-10-15 17:16:38'),
(59, '12.3657,-1.5339', 1, '2024-10-15 17:16:43', 33, '2024-10-15 17:16:43', '2024-10-15 17:16:43'),
(60, '12.3657,-1.5339', 1, '2024-10-15 17:16:49', 33, '2024-10-15 17:16:49', '2024-10-15 17:16:49'),
(61, '12.3657,-1.5339', 1, '2024-10-15 17:16:54', 33, '2024-10-15 17:16:54', '2024-10-15 17:16:54'),
(62, '12.3657,-1.5339', 1, '2024-10-15 17:17:00', 33, '2024-10-15 17:17:00', '2024-10-15 17:17:00'),
(63, '12.3657,-1.5339', 1, '2024-10-15 17:17:05', 33, '2024-10-15 17:17:05', '2024-10-15 17:17:05'),
(64, '12.3657,-1.5339', 1, '2024-10-15 17:17:11', 33, '2024-10-15 17:17:11', '2024-10-15 17:17:11'),
(65, '12.3657,-1.5339', 1, '2024-10-15 17:17:16', 33, '2024-10-15 17:17:16', '2024-10-15 17:17:16'),
(66, '12.3657,-1.5339', 1, '2024-10-15 17:17:41', 33, '2024-10-15 17:17:41', '2024-10-15 17:17:41'),
(67, '12.3657,-1.5339', 1, '2024-10-15 17:17:46', 33, '2024-10-15 17:17:46', '2024-10-15 17:17:46'),
(68, '12.3657,-1.5339', 1, '2024-10-15 17:17:52', 33, '2024-10-15 17:17:52', '2024-10-15 17:17:52'),
(69, '12.3657,-1.5339', 1, '2024-10-15 17:17:57', 33, '2024-10-15 17:17:57', '2024-10-15 17:17:57'),
(70, '12.3657,-1.5339', 1, '2024-10-15 17:18:02', 33, '2024-10-15 17:18:02', '2024-10-15 17:18:02'),
(71, '12.3657,-1.5339', 1, '2024-10-15 17:18:08', 33, '2024-10-15 17:18:08', '2024-10-15 17:18:08'),
(72, '12.3657,-1.5339', 1, '2024-10-15 17:18:13', 33, '2024-10-15 17:18:13', '2024-10-15 17:18:13'),
(73, '12.3657,-1.5339', 1, '2024-10-15 17:18:18', 33, '2024-10-15 17:18:18', '2024-10-15 17:18:18'),
(74, '12.3657,-1.5339', 1, '2024-10-15 17:18:24', 33, '2024-10-15 17:18:24', '2024-10-15 17:18:24'),
(75, '12.3657,-1.5339', 1, '2024-10-15 17:18:29', 33, '2024-10-15 17:18:29', '2024-10-15 17:18:29'),
(76, '12.3657,-1.5339', 1, '2024-10-15 17:18:35', 33, '2024-10-15 17:18:35', '2024-10-15 17:18:35'),
(77, '12.3657,-1.5339', 1, '2024-10-15 17:18:40', 33, '2024-10-15 17:18:40', '2024-10-15 17:18:40'),
(78, '12.3657,-1.5339', 1, '2024-10-15 17:18:45', 33, '2024-10-15 17:18:45', '2024-10-15 17:18:45'),
(79, '12.3657,-1.5339', 1, '2024-10-15 17:18:51', 33, '2024-10-15 17:18:51', '2024-10-15 17:18:51'),
(80, '12.3657,-1.5339', 1, '2024-10-15 17:18:56', 33, '2024-10-15 17:18:56', '2024-10-15 17:18:56'),
(81, '12.3657,-1.5339', 1, '2024-10-15 17:19:02', 33, '2024-10-15 17:19:02', '2024-10-15 17:19:02'),
(82, '12.3657,-1.5339', 1, '2024-10-15 17:19:19', 33, '2024-10-15 17:19:19', '2024-10-15 17:19:19'),
(83, '12.3657,-1.5339', 1, '2024-10-15 17:19:24', 33, '2024-10-15 17:19:24', '2024-10-15 17:19:24'),
(84, '12.3657,-1.5339', 1, '2024-10-15 17:19:30', 33, '2024-10-15 17:19:30', '2024-10-15 17:19:30'),
(85, '12.3657,-1.5339', 1, '2024-10-15 17:19:35', 33, '2024-10-15 17:19:35', '2024-10-15 17:19:35'),
(86, '12.3657,-1.5339', 1, '2024-10-15 17:19:41', 33, '2024-10-15 17:19:41', '2024-10-15 17:19:41'),
(87, '12.3657,-1.5339', 1, '2024-10-15 17:19:47', 33, '2024-10-15 17:19:47', '2024-10-15 17:19:47'),
(88, '12.3657,-1.5339', 1, '2024-10-15 17:19:53', 33, '2024-10-15 17:19:53', '2024-10-15 17:19:53'),
(89, '12.3657,-1.5339', 1, '2024-10-15 17:19:58', 33, '2024-10-15 17:19:58', '2024-10-15 17:19:58'),
(90, '12.3657,-1.5339', 1, '2024-10-15 17:20:04', 33, '2024-10-15 17:20:04', '2024-10-15 17:20:04'),
(91, '12.3657,-1.5339', 1, '2024-10-15 17:20:09', 33, '2024-10-15 17:20:09', '2024-10-15 17:20:09'),
(92, '12.3657,-1.5339', 1, '2024-10-15 17:20:14', 33, '2024-10-15 17:20:14', '2024-10-15 17:20:14'),
(93, '12.3657,-1.5339', 1, '2024-10-15 17:20:20', 33, '2024-10-15 17:20:20', '2024-10-15 17:20:20'),
(94, '12.3657,-1.5339', 1, '2024-10-15 17:20:25', 33, '2024-10-15 17:20:25', '2024-10-15 17:20:25'),
(95, '12.3657,-1.5339', 1, '2024-10-15 17:20:30', 33, '2024-10-15 17:20:31', '2024-10-15 17:20:31'),
(96, '12.3657,-1.5339', 1, '2024-10-15 17:20:36', 33, '2024-10-15 17:20:36', '2024-10-15 17:20:36'),
(97, '12.3657,-1.5339', 1, '2024-10-15 17:20:41', 33, '2024-10-15 17:20:41', '2024-10-15 17:20:41'),
(98, '12.3657,-1.5339', 1, '2024-10-15 17:20:47', 33, '2024-10-15 17:20:47', '2024-10-15 17:20:47'),
(99, '12.3657,-1.5339', 1, '2024-10-15 17:20:52', 33, '2024-10-15 17:20:52', '2024-10-15 17:20:52'),
(100, '12.3657,-1.5339', 1, '2024-10-15 17:20:58', 33, '2024-10-15 17:20:58', '2024-10-15 17:20:58'),
(101, '12.3657,-1.5339', 1, '2024-10-15 17:21:03', 33, '2024-10-15 17:21:03', '2024-10-15 17:21:03'),
(102, '12.3657,-1.5339', 1, '2024-10-15 17:21:08', 33, '2024-10-15 17:21:08', '2024-10-15 17:21:08'),
(103, '12.3657,-1.5339', 1, '2024-10-15 17:21:14', 33, '2024-10-15 17:21:14', '2024-10-15 17:21:14'),
(104, '12.3657,-1.5339', 1, '2024-10-15 17:21:19', 33, '2024-10-15 17:21:19', '2024-10-15 17:21:19'),
(105, '12.3657,-1.5339', 1, '2024-10-15 17:21:25', 33, '2024-10-15 17:21:25', '2024-10-15 17:21:25'),
(106, '12.3657,-1.5339', 1, '2024-10-15 17:21:30', 33, '2024-10-15 17:21:30', '2024-10-15 17:21:30'),
(107, '12.3657,-1.5339', 1, '2024-10-15 17:21:35', 33, '2024-10-15 17:21:35', '2024-10-15 17:21:35'),
(108, '12.3657,-1.5339', 1, '2024-10-15 17:21:41', 33, '2024-10-15 17:21:41', '2024-10-15 17:21:41'),
(109, '12.3657,-1.5339', 1, '2024-10-15 17:21:47', 33, '2024-10-15 17:21:47', '2024-10-15 17:21:47'),
(110, '12.3657,-1.5339', 1, '2024-10-15 17:21:52', 33, '2024-10-15 17:21:52', '2024-10-15 17:21:52'),
(111, '12.3657,-1.5339', 1, '2024-10-15 17:21:58', 33, '2024-10-15 17:21:58', '2024-10-15 17:21:58'),
(112, '12.3657,-1.5339', 1, '2024-10-15 17:22:04', 33, '2024-10-15 17:22:04', '2024-10-15 17:22:04'),
(113, '12.3657,-1.5339', 1, '2024-10-15 17:22:10', 33, '2024-10-15 17:22:10', '2024-10-15 17:22:10'),
(114, '12.3657,-1.5339', 1, '2024-10-15 17:22:16', 33, '2024-10-15 17:22:16', '2024-10-15 17:22:16'),
(115, '12.3657,-1.5339', 1, '2024-10-15 17:22:22', 33, '2024-10-15 17:22:22', '2024-10-15 17:22:22'),
(116, '12.3657,-1.5339', 1, '2024-10-15 17:22:28', 33, '2024-10-15 17:22:28', '2024-10-15 17:22:28'),
(117, '12.3657,-1.5339', 1, '2024-10-15 17:22:33', 33, '2024-10-15 17:22:33', '2024-10-15 17:22:33'),
(118, '12.3657,-1.5339', 1, '2024-10-15 17:22:39', 33, '2024-10-15 17:22:39', '2024-10-15 17:22:39'),
(119, '12.3657,-1.5339', 1, '2024-10-15 17:22:45', 33, '2024-10-15 17:22:45', '2024-10-15 17:22:45'),
(120, '12.3657,-1.5339', 1, '2024-10-15 17:22:50', 33, '2024-10-15 17:22:50', '2024-10-15 17:22:50'),
(121, '12.3657,-1.5339', 1, '2024-10-15 17:22:56', 33, '2024-10-15 17:22:56', '2024-10-15 17:22:56'),
(122, '12.3657,-1.5339', 1, '2024-10-15 17:23:02', 33, '2024-10-15 17:23:02', '2024-10-15 17:23:02'),
(123, '12.3657,-1.5339', 1, '2024-10-15 17:23:08', 33, '2024-10-15 17:23:08', '2024-10-15 17:23:08'),
(124, '12.3657,-1.5339', 1, '2024-10-15 17:23:13', 33, '2024-10-15 17:23:13', '2024-10-15 17:23:13'),
(125, '12.3657,-1.5339', 1, '2024-10-15 17:23:19', 33, '2024-10-15 17:23:19', '2024-10-15 17:23:19'),
(126, '12.3657,-1.5339', 1, '2024-10-15 17:23:24', 33, '2024-10-15 17:23:24', '2024-10-15 17:23:24'),
(127, '12.3657,-1.5339', 1, '2024-10-15 17:23:30', 33, '2024-10-15 17:23:30', '2024-10-15 17:23:30'),
(128, '12.3657,-1.5339', 1, '2024-10-15 17:23:36', 33, '2024-10-15 17:23:36', '2024-10-15 17:23:36'),
(129, '12.3657,-1.5339', 1, '2024-10-15 17:23:42', 33, '2024-10-15 17:23:42', '2024-10-15 17:23:42'),
(130, '12.3657,-1.5339', 1, '2024-10-15 17:23:47', 33, '2024-10-15 17:23:47', '2024-10-15 17:23:47'),
(131, '12.3657,-1.5339', 1, '2024-10-15 17:23:53', 33, '2024-10-15 17:23:53', '2024-10-15 17:23:53'),
(132, '12.3657,-1.5339', 1, '2024-10-15 17:23:58', 33, '2024-10-15 17:23:58', '2024-10-15 17:23:58'),
(133, '12.3657,-1.5339', 1, '2024-10-15 17:24:04', 33, '2024-10-15 17:24:04', '2024-10-15 17:24:04'),
(134, '12.3657,-1.5339', 1, '2024-10-15 17:24:09', 33, '2024-10-15 17:24:09', '2024-10-15 17:24:09'),
(135, '12.3657,-1.5339', 1, '2024-10-15 17:24:15', 33, '2024-10-15 17:24:15', '2024-10-15 17:24:15'),
(136, '12.3657,-1.5339', 1, '2024-10-15 17:24:21', 33, '2024-10-15 17:24:21', '2024-10-15 17:24:21'),
(137, '12.3657,-1.5339', 1, '2024-10-15 17:24:26', 33, '2024-10-15 17:24:27', '2024-10-15 17:24:27'),
(138, '12.3657,-1.5339', 1, '2024-10-15 17:24:32', 33, '2024-10-15 17:24:32', '2024-10-15 17:24:32'),
(139, '12.3657,-1.5339', 1, '2024-10-15 17:24:38', 33, '2024-10-15 17:24:39', '2024-10-15 17:24:39'),
(140, '12.3657,-1.5339', 1, '2024-10-15 17:24:44', 33, '2024-10-15 17:24:44', '2024-10-15 17:24:44'),
(141, '12.3657,-1.5339', 1, '2024-10-15 17:24:50', 33, '2024-10-15 17:24:50', '2024-10-15 17:24:50'),
(142, '12.3657,-1.5339', 1, '2024-10-15 17:24:56', 33, '2024-10-15 17:24:56', '2024-10-15 17:24:56'),
(143, '12.3657,-1.5339', 1, '2024-10-15 17:25:02', 33, '2024-10-15 17:25:02', '2024-10-15 17:25:02'),
(144, '12.3657,-1.5339', 1, '2024-10-15 17:25:07', 33, '2024-10-15 17:25:07', '2024-10-15 17:25:07'),
(145, '12.3657,-1.5339', 1, '2024-10-15 17:25:13', 33, '2024-10-15 17:25:13', '2024-10-15 17:25:13'),
(146, '12.3657,-1.5339', 1, '2024-10-15 17:25:18', 33, '2024-10-15 17:25:19', '2024-10-15 17:25:19'),
(147, '12.3657,-1.5339', 1, '2024-10-15 17:25:24', 33, '2024-10-15 17:25:24', '2024-10-15 17:25:24'),
(148, '12.3657,-1.5339', 1, '2024-10-15 17:25:30', 33, '2024-10-15 17:25:30', '2024-10-15 17:25:30'),
(149, '12.3657,-1.5339', 1, '2024-10-15 17:25:36', 33, '2024-10-15 17:25:36', '2024-10-15 17:25:36'),
(150, '12.3657,-1.5339', 1, '2024-10-15 17:25:42', 33, '2024-10-15 17:25:42', '2024-10-15 17:25:42'),
(151, '12.3657,-1.5339', 1, '2024-10-15 17:25:48', 33, '2024-10-15 17:25:48', '2024-10-15 17:25:48'),
(152, '12.3657,-1.5339', 1, '2024-10-15 17:25:54', 33, '2024-10-15 17:25:54', '2024-10-15 17:25:54'),
(153, '12.3657,-1.5339', 1, '2024-10-15 17:25:59', 33, '2024-10-15 17:25:59', '2024-10-15 17:25:59'),
(154, '12.3657,-1.5339', 1, '2024-10-15 17:26:06', 33, '2024-10-15 17:26:06', '2024-10-15 17:26:06'),
(155, '12.3657,-1.5339', 1, '2024-10-15 17:26:11', 33, '2024-10-15 17:26:11', '2024-10-15 17:26:11'),
(156, '12.3657,-1.5339', 1, '2024-10-15 17:26:17', 33, '2024-10-15 17:26:17', '2024-10-15 17:26:17'),
(157, '12.3657,-1.5339', 1, '2024-10-15 17:26:23', 33, '2024-10-15 17:26:23', '2024-10-15 17:26:23'),
(158, '12.3657,-1.5339', 1, '2024-10-15 17:26:38', 33, '2024-10-15 17:26:38', '2024-10-15 17:26:38'),
(159, '12.3657,-1.5339', 1, '2024-10-15 17:26:44', 33, '2024-10-15 17:26:44', '2024-10-15 17:26:44'),
(160, '12.3657,-1.5339', 1, '2024-10-15 17:26:50', 33, '2024-10-15 17:26:50', '2024-10-15 17:26:50'),
(161, '12.3657,-1.5339', 1, '2024-10-15 17:26:55', 33, '2024-10-15 17:26:55', '2024-10-15 17:26:55'),
(162, '12.3657,-1.5339', 1, '2024-10-15 17:27:02', 33, '2024-10-15 17:27:02', '2024-10-15 17:27:02'),
(163, '12.3657,-1.5339', 1, '2024-10-15 17:27:08', 33, '2024-10-15 17:27:08', '2024-10-15 17:27:08'),
(164, '12.3657,-1.5339', 1, '2024-10-15 17:27:13', 33, '2024-10-15 17:27:13', '2024-10-15 17:27:13'),
(165, '12.3657,-1.5339', 1, '2024-10-15 17:27:18', 33, '2024-10-15 17:27:18', '2024-10-15 17:27:18'),
(166, '12.3657,-1.5339', 1, '2024-10-15 17:27:24', 33, '2024-10-15 17:27:24', '2024-10-15 17:27:24'),
(167, '12.3657,-1.5339', 1, '2024-10-15 17:27:29', 33, '2024-10-15 17:27:29', '2024-10-15 17:27:29'),
(168, '12.3657,-1.5339', 1, '2024-10-15 17:27:34', 33, '2024-10-15 17:27:34', '2024-10-15 17:27:34'),
(169, '12.3657,-1.5339', 1, '2024-10-15 17:27:40', 33, '2024-10-15 17:27:40', '2024-10-15 17:27:40'),
(170, '12.3657,-1.5339', 1, '2024-10-15 17:27:45', 33, '2024-10-15 17:27:45', '2024-10-15 17:27:45'),
(171, '12.3657,-1.5339', 1, '2024-10-15 17:27:50', 33, '2024-10-15 17:27:50', '2024-10-15 17:27:50'),
(172, '12.3657,-1.5339', 1, '2024-10-15 17:27:56', 33, '2024-10-15 17:27:56', '2024-10-15 17:27:56'),
(173, '12.3657,-1.5339', 1, '2024-10-15 17:28:01', 33, '2024-10-15 17:28:01', '2024-10-15 17:28:01'),
(174, '12.3657,-1.5339', 1, '2024-10-15 17:28:06', 33, '2024-10-15 17:28:06', '2024-10-15 17:28:06'),
(175, '12.3657,-1.5339', 1, '2024-10-15 17:28:11', 33, '2024-10-15 17:28:11', '2024-10-15 17:28:11'),
(176, '12.3657,-1.5339', 1, '2024-10-15 17:28:17', 33, '2024-10-15 17:28:17', '2024-10-15 17:28:17'),
(177, '12.3657,-1.5339', 1, '2024-10-15 17:28:22', 33, '2024-10-15 17:28:22', '2024-10-15 17:28:22'),
(178, '12.3657,-1.5339', 1, '2024-10-15 17:28:28', 33, '2024-10-15 17:28:28', '2024-10-15 17:28:28'),
(179, '12.3657,-1.5339', 1, '2024-10-15 17:28:33', 33, '2024-10-15 17:28:33', '2024-10-15 17:28:33'),
(180, '12.3657,-1.5339', 1, '2024-10-15 17:28:38', 33, '2024-10-15 17:28:38', '2024-10-15 17:28:38'),
(181, '12.3657,-1.5339', 1, '2024-10-15 17:28:43', 33, '2024-10-15 17:28:43', '2024-10-15 17:28:43'),
(182, '12.3657,-1.5339', 1, '2024-10-15 17:28:49', 33, '2024-10-15 17:28:49', '2024-10-15 17:28:49'),
(183, '12.3657,-1.5339', 1, '2024-10-15 17:28:54', 33, '2024-10-15 17:28:54', '2024-10-15 17:28:54'),
(184, '12.3657,-1.5339', 1, '2024-10-15 17:28:59', 33, '2024-10-15 17:28:59', '2024-10-15 17:28:59'),
(185, '12.3657,-1.5339', 1, '2024-10-15 17:29:05', 33, '2024-10-15 17:29:05', '2024-10-15 17:29:05'),
(186, '12.3657,-1.5339', 1, '2024-10-15 17:29:10', 33, '2024-10-15 17:29:10', '2024-10-15 17:29:10'),
(187, '12.3657,-1.5339', 1, '2024-10-15 17:29:15', 33, '2024-10-15 17:29:15', '2024-10-15 17:29:15'),
(188, '12.3657,-1.5339', 1, '2024-10-15 17:29:20', 33, '2024-10-15 17:29:20', '2024-10-15 17:29:20'),
(189, '12.3657,-1.5339', 1, '2024-10-15 17:29:25', 33, '2024-10-15 17:29:25', '2024-10-15 17:29:25'),
(190, '12.3657,-1.5339', 1, '2024-10-15 17:29:31', 33, '2024-10-15 17:29:31', '2024-10-15 17:29:31'),
(191, '12.3657,-1.5339', 1, '2024-10-15 17:29:36', 33, '2024-10-15 17:29:36', '2024-10-15 17:29:36'),
(192, '12.3657,-1.5339', 1, '2024-10-15 17:29:41', 33, '2024-10-15 17:29:41', '2024-10-15 17:29:41'),
(193, '12.3657,-1.5339', 1, '2024-10-15 17:29:47', 33, '2024-10-15 17:29:47', '2024-10-15 17:29:47'),
(194, '12.3657,-1.5339', 1, '2024-10-15 17:29:52', 33, '2024-10-15 17:29:52', '2024-10-15 17:29:52'),
(195, '12.3657,-1.5339', 1, '2024-10-15 17:29:57', 33, '2024-10-15 17:29:57', '2024-10-15 17:29:57'),
(196, '12.3657,-1.5339', 1, '2024-10-15 17:30:03', 33, '2024-10-15 17:30:03', '2024-10-15 17:30:03'),
(197, '12.3657,-1.5339', 1, '2024-10-15 17:30:08', 33, '2024-10-15 17:30:08', '2024-10-15 17:30:08'),
(198, '12.3657,-1.5339', 1, '2024-10-15 17:30:13', 33, '2024-10-15 17:30:13', '2024-10-15 17:30:13'),
(199, '12.3657,-1.5339', 1, '2024-10-15 17:30:18', 33, '2024-10-15 17:30:18', '2024-10-15 17:30:18'),
(200, '12.3657,-1.5339', 1, '2024-10-15 17:30:24', 33, '2024-10-15 17:30:24', '2024-10-15 17:30:24'),
(201, '12.3657,-1.5339', 1, '2024-10-15 17:30:29', 33, '2024-10-15 17:30:29', '2024-10-15 17:30:29'),
(202, '12.3657,-1.5339', 1, '2024-10-15 17:30:34', 33, '2024-10-15 17:30:34', '2024-10-15 17:30:34'),
(203, '12.3657,-1.5339', 1, '2024-10-15 17:30:39', 33, '2024-10-15 17:30:39', '2024-10-15 17:30:39'),
(204, '12.3657,-1.5339', 1, '2024-10-15 17:30:45', 33, '2024-10-15 17:30:45', '2024-10-15 17:30:45'),
(205, '12.3657,-1.5339', 1, '2024-10-15 17:30:50', 33, '2024-10-15 17:30:50', '2024-10-15 17:30:50'),
(206, '12.3657,-1.5339', 1, '2024-10-15 17:30:55', 33, '2024-10-15 17:30:55', '2024-10-15 17:30:55'),
(207, '12.3657,-1.5339', 1, '2024-10-15 17:31:01', 33, '2024-10-15 17:31:01', '2024-10-15 17:31:01'),
(208, '12.3657,-1.5339', 1, '2024-10-15 17:31:06', 33, '2024-10-15 17:31:06', '2024-10-15 17:31:06'),
(209, '12.3657,-1.5339', 1, '2024-10-15 17:31:11', 33, '2024-10-15 17:31:11', '2024-10-15 17:31:11'),
(210, '12.3657,-1.5339', 1, '2024-10-15 17:31:16', 33, '2024-10-15 17:31:16', '2024-10-15 17:31:16'),
(211, '12.3657,-1.5339', 1, '2024-10-15 17:31:22', 33, '2024-10-15 17:31:22', '2024-10-15 17:31:22'),
(212, '12.3657,-1.5339', 1, '2024-10-15 17:31:27', 33, '2024-10-15 17:31:27', '2024-10-15 17:31:27'),
(213, '12.3657,-1.5339', 1, '2024-10-15 17:31:32', 33, '2024-10-15 17:31:32', '2024-10-15 17:31:32'),
(214, '12.3657,-1.5339', 1, '2024-10-15 17:31:37', 33, '2024-10-15 17:31:37', '2024-10-15 17:31:37'),
(215, '12.3657,-1.5339', 1, '2024-10-15 17:31:43', 33, '2024-10-15 17:31:43', '2024-10-15 17:31:43'),
(216, '12.3657,-1.5339', 1, '2024-10-15 17:31:48', 33, '2024-10-15 17:31:48', '2024-10-15 17:31:48'),
(217, '12.3657,-1.5339', 1, '2024-10-15 17:31:53', 33, '2024-10-15 17:31:53', '2024-10-15 17:31:53'),
(218, '12.3657,-1.5339', 1, '2024-10-15 17:31:59', 33, '2024-10-15 17:31:59', '2024-10-15 17:31:59'),
(219, '12.3657,-1.5339', 1, '2024-10-15 17:32:05', 33, '2024-10-15 17:32:05', '2024-10-15 17:32:05'),
(220, '12.3657,-1.5339', 1, '2024-10-15 17:32:10', 33, '2024-10-15 17:32:10', '2024-10-15 17:32:10'),
(221, '12.3657,-1.5339', 1, '2024-10-15 17:32:15', 33, '2024-10-15 17:32:15', '2024-10-15 17:32:15'),
(222, '12.3657,-1.5339', 1, '2024-10-15 17:32:21', 33, '2024-10-15 17:32:21', '2024-10-15 17:32:21'),
(223, '12.3657,-1.5339', 1, '2024-10-15 17:32:26', 33, '2024-10-15 17:32:26', '2024-10-15 17:32:26'),
(224, '12.3657,-1.5339', 1, '2024-10-15 17:32:32', 33, '2024-10-15 17:32:32', '2024-10-15 17:32:32'),
(225, '12.3657,-1.5339', 1, '2024-10-15 17:32:37', 33, '2024-10-15 17:32:37', '2024-10-15 17:32:37'),
(226, '12.3657,-1.5339', 1, '2024-10-15 17:32:43', 33, '2024-10-15 17:32:43', '2024-10-15 17:32:43'),
(227, '12.3657,-1.5339', 1, '2024-10-15 17:32:48', 33, '2024-10-15 17:32:48', '2024-10-15 17:32:48'),
(228, '12.3657,-1.5339', 1, '2024-10-15 17:32:53', 33, '2024-10-15 17:32:53', '2024-10-15 17:32:53'),
(229, '12.3657,-1.5339', 1, '2024-10-15 17:32:59', 33, '2024-10-15 17:32:59', '2024-10-15 17:32:59'),
(230, '12.3657,-1.5339', 1, '2024-10-15 17:33:04', 33, '2024-10-15 17:33:04', '2024-10-15 17:33:04'),
(231, '12.3657,-1.5339', 1, '2024-10-15 17:33:09', 33, '2024-10-15 17:33:09', '2024-10-15 17:33:09'),
(232, '12.3657,-1.5339', 1, '2024-10-15 17:33:14', 33, '2024-10-15 17:33:14', '2024-10-15 17:33:14'),
(233, '12.3657,-1.5339', 1, '2024-10-15 17:33:20', 33, '2024-10-15 17:33:20', '2024-10-15 17:33:20'),
(234, '12.3657,-1.5339', 1, '2024-10-15 17:33:25', 33, '2024-10-15 17:33:25', '2024-10-15 17:33:25'),
(235, '12.3657,-1.5339', 1, '2024-10-15 17:33:30', 33, '2024-10-15 17:33:30', '2024-10-15 17:33:30'),
(236, '12.3657,-1.5339', 1, '2024-10-15 17:33:35', 33, '2024-10-15 17:33:35', '2024-10-15 17:33:35'),
(237, '12.3657,-1.5339', 1, '2024-10-15 17:33:41', 33, '2024-10-15 17:33:41', '2024-10-15 17:33:41'),
(238, '12.3657,-1.5339', 1, '2024-10-15 17:33:46', 33, '2024-10-15 17:33:46', '2024-10-15 17:33:46'),
(239, '12.3657,-1.5339', 1, '2024-10-15 17:33:51', 33, '2024-10-15 17:33:51', '2024-10-15 17:33:51'),
(240, '12.3657,-1.5339', 1, '2024-10-15 17:33:57', 33, '2024-10-15 17:33:57', '2024-10-15 17:33:57'),
(241, '12.3657,-1.5339', 1, '2024-10-15 17:34:02', 33, '2024-10-15 17:34:02', '2024-10-15 17:34:02'),
(242, '12.3657,-1.5339', 1, '2024-10-15 17:34:07', 33, '2024-10-15 17:34:07', '2024-10-15 17:34:07'),
(243, '12.3657,-1.5339', 1, '2024-10-15 17:34:12', 33, '2024-10-15 17:34:12', '2024-10-15 17:34:12'),
(244, '12.3657,-1.5339', 1, '2024-10-15 17:34:18', 33, '2024-10-15 17:34:18', '2024-10-15 17:34:18'),
(245, '12.3657,-1.5339', 1, '2024-10-15 17:34:23', 33, '2024-10-15 17:34:23', '2024-10-15 17:34:23'),
(246, '12.3657,-1.5339', 1, '2024-10-15 17:34:28', 33, '2024-10-15 17:34:28', '2024-10-15 17:34:28'),
(247, '12.3657,-1.5339', 1, '2024-10-15 17:34:33', 33, '2024-10-15 17:34:33', '2024-10-15 17:34:33'),
(248, '12.3657,-1.5339', 1, '2024-10-15 17:34:39', 33, '2024-10-15 17:34:39', '2024-10-15 17:34:39'),
(249, '12.3657,-1.5339', 1, '2024-10-15 17:34:44', 33, '2024-10-15 17:34:44', '2024-10-15 17:34:44'),
(250, '12.3657,-1.5339', 1, '2024-10-15 17:34:49', 33, '2024-10-15 17:34:49', '2024-10-15 17:34:49'),
(251, '12.3657,-1.5339', 1, '2024-10-15 17:34:54', 33, '2024-10-15 17:34:54', '2024-10-15 17:34:54'),
(252, '12.3657,-1.5339', 1, '2024-10-15 17:34:59', 33, '2024-10-15 17:34:59', '2024-10-15 17:34:59'),
(253, '12.3657,-1.5339', 1, '2024-10-15 17:35:04', 33, '2024-10-15 17:35:04', '2024-10-15 17:35:04'),
(254, '12.3657,-1.5339', 1, '2024-10-15 17:35:09', 33, '2024-10-15 17:35:10', '2024-10-15 17:35:10'),
(255, '12.3657,-1.5339', 1, '2024-10-15 17:35:15', 33, '2024-10-15 17:35:15', '2024-10-15 17:35:15'),
(256, '12.3657,-1.5339', 1, '2024-10-15 17:35:20', 33, '2024-10-15 17:35:20', '2024-10-15 17:35:20'),
(257, '12.3657,-1.5339', 1, '2024-10-15 17:35:25', 33, '2024-10-15 17:35:25', '2024-10-15 17:35:25'),
(258, '12.3657,-1.5339', 1, '2024-10-15 17:35:31', 33, '2024-10-15 17:35:31', '2024-10-15 17:35:31'),
(259, '12.3657,-1.5339', 1, '2024-10-15 17:35:36', 33, '2024-10-15 17:35:36', '2024-10-15 17:35:36'),
(260, '12.3657,-1.5339', 1, '2024-10-15 17:35:42', 33, '2024-10-15 17:35:42', '2024-10-15 17:35:42'),
(261, '12.3657,-1.5339', 1, '2024-10-15 17:35:49', 33, '2024-10-15 17:35:49', '2024-10-15 17:35:49'),
(262, '12.3657,-1.5339', 1, '2024-10-15 17:35:54', 33, '2024-10-15 17:35:54', '2024-10-15 17:35:54'),
(263, '12.3657,-1.5339', 1, '2024-10-15 17:36:00', 33, '2024-10-15 17:36:00', '2024-10-15 17:36:00'),
(264, '12.3657,-1.5339', 1, '2024-10-15 17:36:05', 33, '2024-10-15 17:36:05', '2024-10-15 17:36:05'),
(265, '12.3657,-1.5339', 1, '2024-10-15 17:36:11', 33, '2024-10-15 17:36:11', '2024-10-15 17:36:11'),
(266, '12.3657,-1.5339', 1, '2024-10-15 17:36:16', 33, '2024-10-15 17:36:16', '2024-10-15 17:36:16'),
(267, '12.3657,-1.5339', 1, '2024-10-15 17:36:21', 33, '2024-10-15 17:36:21', '2024-10-15 17:36:21'),
(268, '12.3657,-1.5339', 1, '2024-10-15 17:36:26', 33, '2024-10-15 17:36:26', '2024-10-15 17:36:26'),
(269, '12.3657,-1.5339', 1, '2024-10-15 17:36:32', 33, '2024-10-15 17:36:32', '2024-10-15 17:36:32'),
(270, '12.3657,-1.5339', 1, '2024-10-15 17:36:37', 33, '2024-10-15 17:36:37', '2024-10-15 17:36:37'),
(271, '12.3657,-1.5339', 1, '2024-10-15 17:36:42', 33, '2024-10-15 17:36:42', '2024-10-15 17:36:42'),
(272, '12.3657,-1.5339', 1, '2024-10-15 17:36:47', 33, '2024-10-15 17:36:47', '2024-10-15 17:36:47'),
(273, '12.3657,-1.5339', 1, '2024-10-15 17:36:52', 33, '2024-10-15 17:36:52', '2024-10-15 17:36:52'),
(274, '12.3657,-1.5339', 1, '2024-10-15 17:36:58', 33, '2024-10-15 17:36:58', '2024-10-15 17:36:58'),
(275, '12.3657,-1.5339', 1, '2024-10-15 17:37:03', 33, '2024-10-15 17:37:03', '2024-10-15 17:37:03'),
(276, '12.3657,-1.5339', 1, '2024-10-15 17:37:08', 33, '2024-10-15 17:37:08', '2024-10-15 17:37:08'),
(277, '12.3657,-1.5339', 1, '2024-10-15 17:37:13', 33, '2024-10-15 17:37:13', '2024-10-15 17:37:13'),
(278, '12.3657,-1.5339', 1, '2024-10-15 17:37:18', 33, '2024-10-15 17:37:19', '2024-10-15 17:37:19'),
(279, '12.3657,-1.5339', 1, '2024-10-15 17:37:24', 33, '2024-10-15 17:37:24', '2024-10-15 17:37:24'),
(280, '12.3657,-1.5339', 1, '2024-10-15 17:37:29', 33, '2024-10-15 17:37:29', '2024-10-15 17:37:29'),
(281, '12.3657,-1.5339', 1, '2024-10-15 17:37:34', 33, '2024-10-15 17:37:34', '2024-10-15 17:37:34'),
(282, '12.3657,-1.5339', 1, '2024-10-15 17:37:40', 33, '2024-10-15 17:37:40', '2024-10-15 17:37:40'),
(283, '12.3657,-1.5339', 1, '2024-10-15 17:37:45', 33, '2024-10-15 17:37:45', '2024-10-15 17:37:45'),
(284, '12.3657,-1.5339', 1, '2024-10-15 17:37:50', 33, '2024-10-15 17:37:50', '2024-10-15 17:37:50'),
(285, '12.3657,-1.5339', 1, '2024-10-15 17:37:55', 33, '2024-10-15 17:37:55', '2024-10-15 17:37:55'),
(286, '12.3657,-1.5339', 1, '2024-10-15 17:38:00', 33, '2024-10-15 17:38:00', '2024-10-15 17:38:00'),
(287, '12.3657,-1.5339', 1, '2024-10-15 17:38:06', 33, '2024-10-15 17:38:06', '2024-10-15 17:38:06'),
(288, '12.3657,-1.5339', 1, '2024-10-15 17:38:11', 33, '2024-10-15 17:38:11', '2024-10-15 17:38:11'),
(289, '12.3657,-1.5339', 1, '2024-10-15 17:38:16', 33, '2024-10-15 17:38:16', '2024-10-15 17:38:16'),
(290, '12.3657,-1.5339', 1, '2024-10-15 17:38:21', 33, '2024-10-15 17:38:21', '2024-10-15 17:38:21'),
(291, '12.3657,-1.5339', 1, '2024-10-15 17:38:26', 33, '2024-10-15 17:38:26', '2024-10-15 17:38:26'),
(292, '12.3657,-1.5339', 1, '2024-10-15 17:38:31', 33, '2024-10-15 17:38:31', '2024-10-15 17:38:31'),
(293, '12.3657,-1.5339', 1, '2024-10-15 17:38:36', 33, '2024-10-15 17:38:36', '2024-10-15 17:38:36'),
(294, '12.3657,-1.5339', 1, '2024-10-15 17:38:42', 33, '2024-10-15 17:38:42', '2024-10-15 17:38:42'),
(295, '12.3657,-1.5339', 1, '2024-10-15 17:38:47', 33, '2024-10-15 17:38:47', '2024-10-15 17:38:47'),
(296, '12.3657,-1.5339', 1, '2024-10-15 17:38:52', 33, '2024-10-15 17:38:52', '2024-10-15 17:38:52'),
(297, '12.3657,-1.5339', 1, '2024-10-15 17:38:57', 33, '2024-10-15 17:38:57', '2024-10-15 17:38:57'),
(298, '12.3657,-1.5339', 1, '2024-10-15 17:39:02', 33, '2024-10-15 17:39:02', '2024-10-15 17:39:02'),
(299, '12.3657,-1.5339', 1, '2024-10-15 17:39:07', 33, '2024-10-15 17:39:07', '2024-10-15 17:39:07'),
(300, '12.3657,-1.5339', 1, '2024-10-15 17:39:13', 33, '2024-10-15 17:39:13', '2024-10-15 17:39:13'),
(301, '12.3657,-1.5339', 1, '2024-10-15 17:39:18', 33, '2024-10-15 17:39:18', '2024-10-15 17:39:18'),
(302, '12.3657,-1.5339', 1, '2024-10-15 17:39:23', 33, '2024-10-15 17:39:23', '2024-10-15 17:39:23'),
(303, '12.3657,-1.5339', 1, '2024-10-15 17:39:28', 33, '2024-10-15 17:39:28', '2024-10-15 17:39:28'),
(304, '12.3657,-1.5339', 1, '2024-10-15 17:39:33', 33, '2024-10-15 17:39:33', '2024-10-15 17:39:33'),
(305, '12.3657,-1.5339', 1, '2024-10-15 17:39:38', 33, '2024-10-15 17:39:38', '2024-10-15 17:39:38'),
(306, '12.3657,-1.5339', 1, '2024-10-15 17:39:44', 33, '2024-10-15 17:39:44', '2024-10-15 17:39:44'),
(307, '12.3657,-1.5339', 1, '2024-10-15 17:39:49', 33, '2024-10-15 17:39:49', '2024-10-15 17:39:49'),
(308, '12.3657,-1.5339', 1, '2024-10-15 17:39:54', 33, '2024-10-15 17:39:54', '2024-10-15 17:39:54'),
(309, '12.3657,-1.5339', 1, '2024-10-15 17:39:59', 33, '2024-10-15 17:39:59', '2024-10-15 17:39:59'),
(310, '12.3657,-1.5339', 1, '2024-10-15 17:40:04', 33, '2024-10-15 17:40:04', '2024-10-15 17:40:04'),
(311, '12.3657,-1.5339', 1, '2024-10-15 17:40:09', 33, '2024-10-15 17:40:09', '2024-10-15 17:40:09'),
(312, '12.3657,-1.5339', 1, '2024-10-15 17:40:15', 33, '2024-10-15 17:40:15', '2024-10-15 17:40:15'),
(313, '12.3657,-1.5339', 1, '2024-10-15 17:40:20', 33, '2024-10-15 17:40:20', '2024-10-15 17:40:20'),
(314, '12.3657,-1.5339', 1, '2024-10-15 17:40:25', 33, '2024-10-15 17:40:25', '2024-10-15 17:40:25'),
(315, '12.3657,-1.5339', 1, '2024-10-15 17:40:30', 33, '2024-10-15 17:40:30', '2024-10-15 17:40:30'),
(316, '12.3657,-1.5339', 1, '2024-10-15 17:40:35', 33, '2024-10-15 17:40:35', '2024-10-15 17:40:35'),
(317, '12.3657,-1.5339', 1, '2024-10-15 17:40:40', 33, '2024-10-15 17:40:40', '2024-10-15 17:40:40'),
(318, '12.3657,-1.5339', 1, '2024-10-15 17:40:45', 33, '2024-10-15 17:40:45', '2024-10-15 17:40:45'),
(319, '12.3657,-1.5339', 1, '2024-10-15 17:40:51', 33, '2024-10-15 17:40:51', '2024-10-15 17:40:51'),
(320, '12.3657,-1.5339', 1, '2024-10-15 17:40:56', 33, '2024-10-15 17:40:56', '2024-10-15 17:40:56'),
(321, '12.3657,-1.5339', 1, '2024-10-15 17:41:01', 33, '2024-10-15 17:41:01', '2024-10-15 17:41:01'),
(322, '12.3657,-1.5339', 1, '2024-10-15 17:41:06', 33, '2024-10-15 17:41:06', '2024-10-15 17:41:06'),
(323, '12.3657,-1.5339', 1, '2024-10-15 17:41:11', 33, '2024-10-15 17:41:11', '2024-10-15 17:41:11'),
(324, '12.3657,-1.5339', 1, '2024-10-15 17:41:16', 33, '2024-10-15 17:41:16', '2024-10-15 17:41:16'),
(325, '12.3657,-1.5339', 1, '2024-10-15 17:41:22', 33, '2024-10-15 17:41:22', '2024-10-15 17:41:22'),
(326, '12.3657,-1.5339', 1, '2024-10-15 17:41:27', 33, '2024-10-15 17:41:27', '2024-10-15 17:41:27'),
(327, '12.3657,-1.5339', 1, '2024-10-15 17:41:32', 33, '2024-10-15 17:41:32', '2024-10-15 17:41:32'),
(328, '12.3657,-1.5339', 1, '2024-10-15 17:41:37', 33, '2024-10-15 17:41:37', '2024-10-15 17:41:37'),
(329, '12.3657,-1.5339', 1, '2024-10-15 17:41:42', 33, '2024-10-15 17:41:42', '2024-10-15 17:41:42'),
(330, '12.3657,-1.5339', 1, '2024-10-15 17:41:47', 33, '2024-10-15 17:41:47', '2024-10-15 17:41:47'),
(331, '12.3657,-1.5339', 1, '2024-10-15 17:41:53', 33, '2024-10-15 17:41:53', '2024-10-15 17:41:53'),
(332, '12.3657,-1.5339', 1, '2024-10-15 17:41:58', 33, '2024-10-15 17:41:58', '2024-10-15 17:41:58'),
(333, '12.3657,-1.5339', 1, '2024-10-15 17:42:03', 33, '2024-10-15 17:42:03', '2024-10-15 17:42:03'),
(334, '12.3657,-1.5339', 1, '2024-10-15 17:42:08', 33, '2024-10-15 17:42:08', '2024-10-15 17:42:08'),
(335, '12.3657,-1.5339', 1, '2024-10-15 17:42:14', 33, '2024-10-15 17:42:14', '2024-10-15 17:42:14'),
(336, '12.3657,-1.5339', 1, '2024-10-15 17:42:19', 33, '2024-10-15 17:42:19', '2024-10-15 17:42:19'),
(337, '12.3657,-1.5339', 1, '2024-10-15 17:42:24', 33, '2024-10-15 17:42:24', '2024-10-15 17:42:24'),
(338, '12.3657,-1.5339', 1, '2024-10-15 17:42:29', 33, '2024-10-15 17:42:29', '2024-10-15 17:42:29');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_19_185434_create_personal_access_tokens_table', 1),
(5, '2024_08_19_211447_create_ruchiers_table', 1),
(6, '2024_08_19_211500_create_ruches_table', 1),
(7, '2024_08_19_211533_create_poids_table', 1),
(8, '2024_08_19_211548_create_temperatures_table', 1),
(9, '2024_08_19_211559_create_humidites_table', 1),
(10, '2024_08_19_212816_create_localisations_table', 1),
(11, '2024_09_26_100225_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_notification` varchar(255) NOT NULL,
  `date_envoie` datetime NOT NULL,
  `etat` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `ruche_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `temperature_id` bigint(20) UNSIGNED DEFAULT NULL,
  `humidite_id` bigint(20) UNSIGNED DEFAULT NULL,
  `poid_id` bigint(20) UNSIGNED DEFAULT NULL,
  `localisation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `type_notification`, `date_envoie`, `etat`, `message`, `ruche_id`, `user_id`, `temperature_id`, `humidite_id`, `poid_id`, `localisation_id`, `created_at`, `updated_at`) VALUES
(1, 'Poids élevé', '2024-09-26 11:45:10', 'non lue', 'Le poids a dépassé les 80Kg', 8, 3, NULL, NULL, 37, NULL, '2024-09-26 11:45:10', '2024-09-26 11:45:10'),
(2, 'Poids élevé', '2024-09-26 12:26:15', 'non lue', 'Le poids a dépassé les 80Kg', 8, 3, NULL, NULL, 37, NULL, '2024-09-26 12:26:15', '2024-09-26 12:26:15'),
(3, 'Poids élevé', '2024-09-26 16:05:44', 'non lue', 'Le poids a dépassé les 80Kg', 8, 3, NULL, NULL, 37, NULL, '2024-09-26 16:05:44', '2024-09-26 16:05:44'),
(4, 'Température élevée', '2024-09-26 16:57:21', 'non lue', 'La température a dépassé 50°c', 8, 3, 10, NULL, NULL, NULL, '2024-09-26 16:57:21', '2024-09-26 16:57:21'),
(5, 'Poids élevé', '2024-09-26 16:57:24', 'non lue', 'Le poids a dépassé les 80Kg', 8, 3, NULL, NULL, 37, NULL, '2024-09-26 16:57:24', '2024-09-26 16:57:24');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('juanprince04@gmail.com', '$2y$12$z41Ffu/9tfP2ugX6c1urnuaKZYK12fHrdTvxEZoCDAgPq78yvy.AS', '2024-09-16 14:15:06'),
('prince@gmail.com', '$2y$12$x5YGeqS4klSQxx7kPZo5tOUKiYxcSyu49Niqbtt6sjfQQsV3wEhgW', '2024-09-16 14:14:48'),
('rezie@gmail.com', '$2y$12$CX9QhsCffL.kRWYP7JaHIO.Ey5XgmuJ.SMuA6qQWcoKL5an6mmJFG', '2024-09-16 14:02:33');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'register_Token', '38cd3d4d41dc54d7a2d726005fe9ed8030e3ccf3d6fc047fe35825028e96b208', '[\"*\"]', '2024-08-28 14:38:17', NULL, '2024-08-28 10:02:56', '2024-08-28 14:38:17'),
(2, 'App\\Models\\User', 3, 'register_Token', '2d6e4abf15db6a3e00d2f54f7abd3af64ab216b3174defe2d152470aee434456', '[\"*\"]', NULL, NULL, '2024-08-29 09:59:17', '2024-08-29 09:59:17'),
(3, 'App\\Models\\User', 4, 'register_Token', 'd4d04c7afcf3fa5bbf0f65b8f3743c2fc3d925fa46f398d53118b964e2671650', '[\"*\"]', NULL, NULL, '2024-08-29 10:48:06', '2024-08-29 10:48:06'),
(4, 'App\\Models\\User', 5, 'register_Token', '5f00217c128dbd0ae473a01266426d1a41175b4e49bfadc4de787729de563312', '[\"*\"]', NULL, NULL, '2024-08-31 12:06:46', '2024-08-31 12:06:46'),
(5, 'App\\Models\\User', 6, 'register_Token', '706f12b52cfa2322ea56bb9dc12280004661edd9b12ab40bab0e30adc4461a82', '[\"*\"]', NULL, NULL, '2024-08-31 12:12:26', '2024-08-31 12:12:26'),
(6, 'App\\Models\\User', 7, 'register_Token', 'b353e95cdfc8f4312b270a29b01a6584ccd799b85bf79eb8f67b01d43ea0faa7', '[\"*\"]', NULL, NULL, '2024-08-31 12:12:44', '2024-08-31 12:12:44'),
(7, 'App\\Models\\User', 3, 'login_Token', '61f46cb61159d203c5806b2ad5ed7b22ee9fd3485cd015ca3eba86fa9f67ee33', '[\"*\"]', NULL, NULL, '2024-09-02 13:27:53', '2024-09-02 13:27:53'),
(8, 'App\\Models\\User', 3, 'login_Token', '7a3ca0ab773e51867fd602bc773eb15c31df7759beb4ac1b29e24809fd797043', '[\"*\"]', NULL, NULL, '2024-09-02 13:29:38', '2024-09-02 13:29:38'),
(9, 'App\\Models\\User', 3, 'login_Token', 'bc8dbbff463a861dba0c81c4b4a821ccd2a74272832d282cf7335ecdcd1b9177', '[\"*\"]', NULL, NULL, '2024-09-02 13:37:23', '2024-09-02 13:37:23'),
(10, 'App\\Models\\User', 3, 'login_Token', '36a69821a3b812cba4090e6c36d983d23277b20dc538b49227d9d1192a392e90', '[\"*\"]', NULL, NULL, '2024-09-02 13:41:17', '2024-09-02 13:41:17'),
(11, 'App\\Models\\User', 3, 'login_Token', '229099ddb8a0157478b53be68e1e0c42bf7c74d5104095938d1d7acc976b8e85', '[\"*\"]', '2024-09-09 11:09:51', NULL, '2024-09-09 10:26:31', '2024-09-09 11:09:51'),
(12, 'App\\Models\\User', 1, 'login_Token', 'd0edeb6e11a4b3775bb4de863a61758957888675dd4f95cfea12a05e1033d79d', '[\"*\"]', NULL, NULL, '2024-09-12 15:41:36', '2024-09-12 15:41:36'),
(13, 'App\\Models\\User', 3, 'login_Token', '9ffae6948bc31c910536719dc9a79d49956acd36b75a0dbbc7d817a91bd86151', '[\"*\"]', NULL, NULL, '2024-09-14 11:18:40', '2024-09-14 11:18:40'),
(14, 'App\\Models\\User', 3, 'login_Token', '444984d71b18468aa798ea54a6457d0b5366dbe8dc10f647b143ad56969fd22c', '[\"*\"]', NULL, NULL, '2024-09-14 11:26:39', '2024-09-14 11:26:39'),
(15, 'App\\Models\\User', 3, 'login_Token', '39bebf6583efc60e0b47791ef5b5ffb39c1f6d16bd321c5c5861f71af81e2c50', '[\"*\"]', NULL, NULL, '2024-09-14 11:34:30', '2024-09-14 11:34:30'),
(16, 'App\\Models\\User', 3, 'login_Token', 'ffa26b980dbb314bf4d898c41505208be4afadf616a1524394d37e37dbba4cd1', '[\"*\"]', NULL, NULL, '2024-09-14 11:37:22', '2024-09-14 11:37:22'),
(17, 'App\\Models\\User', 3, 'login_Token', 'b166eabff9f9a1e88e10a1ab4a8833f94a4eda8dac0fa3c8946db68303f9b4c0', '[\"*\"]', NULL, NULL, '2024-09-14 11:45:04', '2024-09-14 11:45:04'),
(18, 'App\\Models\\User', 3, 'login_Token', 'eef6a8f01fe5d3e569ef1d0e6b4bbafcd9e4166c14e0463dbbe247d16434dc69', '[\"*\"]', NULL, NULL, '2024-09-14 11:48:13', '2024-09-14 11:48:13'),
(19, 'App\\Models\\User', 3, 'login_Token', '45cd6fa0127f7a321c2b059a578d6c1d4d43e0f3d6f3d39b7a459eed3b1bd040', '[\"*\"]', NULL, NULL, '2024-09-14 11:53:01', '2024-09-14 11:53:01'),
(20, 'App\\Models\\User', 3, 'login_Token', 'ebf82006269ae1b39f157baeb1e9363c676b675f6c91bee4d0ff097e534e6ea1', '[\"*\"]', NULL, NULL, '2024-09-14 11:58:48', '2024-09-14 11:58:48'),
(21, 'App\\Models\\User', 3, 'login_Token', 'd69888f15552e37ce018721f139884f951ae6e6e2153e515113dccf84c6c316d', '[\"*\"]', NULL, NULL, '2024-09-14 12:02:56', '2024-09-14 12:02:56'),
(22, 'App\\Models\\User', 3, 'login_Token', '21c7f8abfa7b1870a2675cde1946ab4e93dba42250da41d31596189ac40d8836', '[\"*\"]', NULL, NULL, '2024-09-14 12:07:41', '2024-09-14 12:07:41'),
(23, 'App\\Models\\User', 3, 'login_Token', '4a264aab7bd9b2be24c519511692cc81224c071255bb11a61595ba9ecdaf7a4d', '[\"*\"]', NULL, NULL, '2024-09-14 12:12:48', '2024-09-14 12:12:48'),
(24, 'App\\Models\\User', 3, 'login_Token', '0de6130d16a030309c5cdce27c4bf719fc218d5973d4d140d16c43439f921952', '[\"*\"]', NULL, NULL, '2024-09-14 12:21:57', '2024-09-14 12:21:57'),
(25, 'App\\Models\\User', 3, 'login_Token', 'ac3bca644906fede3d18015aac53dec5fe404c1353cc24ba2863f8487710d6ec', '[\"*\"]', NULL, NULL, '2024-09-14 12:32:17', '2024-09-14 12:32:17'),
(26, 'App\\Models\\User', 3, 'login_Token', '3b3ebdbbc073af67250d539f2a7893b03c31e6de262f127e39feef42f7ff9faf', '[\"*\"]', NULL, NULL, '2024-09-14 12:50:52', '2024-09-14 12:50:52'),
(27, 'App\\Models\\User', 3, 'login_Token', '92011f54577ad824d83d69fcdf06dfc9b004813cbb34d97ad252d9fa40dcf7a5', '[\"*\"]', NULL, NULL, '2024-09-14 12:56:21', '2024-09-14 12:56:21'),
(28, 'App\\Models\\User', 3, 'login_Token', '0f8065534ef0970d5e7329f13f5c6aeeb0a1122188b71374df6f6f8512c342b7', '[\"*\"]', NULL, NULL, '2024-09-14 12:57:51', '2024-09-14 12:57:51'),
(29, 'App\\Models\\User', 3, 'login_Token', 'ccacfd706e7c8e3a5aebfa694cfee98e1a9abc229d4825f3300e83041c2e023d', '[\"*\"]', NULL, NULL, '2024-09-14 13:13:38', '2024-09-14 13:13:38'),
(30, 'App\\Models\\User', 8, 'register_Token', 'e32b1deac6a2d00fb090b7bb51f2f69fa5179373fedfa49ab58d8a2cf57a208c', '[\"*\"]', NULL, NULL, '2024-09-16 12:24:41', '2024-09-16 12:24:41'),
(31, 'App\\Models\\User', 9, 'register_Token', 'f2c4859519ff3d1b3bb776aa911032872345fd49dde508935b72603d7d918702', '[\"*\"]', NULL, NULL, '2024-09-16 14:18:52', '2024-09-16 14:18:52'),
(32, 'App\\Models\\User', 8, 'login_Token', 'e5bef21af8a3805e6fe0c5c513746c9b5a0caa78b2acae541945bbdf91e2ef6e', '[\"*\"]', NULL, NULL, '2024-09-16 16:24:19', '2024-09-16 16:24:19'),
(33, 'App\\Models\\User', 10, 'register_Token', '168339c084a97b85519b84d08bba53de822b855c3a9227ca426921e774b259a7', '[\"*\"]', NULL, NULL, '2024-09-17 09:45:02', '2024-09-17 09:45:02'),
(34, 'App\\Models\\User', 3, 'login_Token', '1f6d8ee1e6e46af5d317ace71e5c5eaac8783ba284e663299bc41ea059ea9903', '[\"*\"]', '2024-09-18 15:37:16', NULL, '2024-09-17 11:10:10', '2024-09-18 15:37:16'),
(35, 'App\\Models\\User', 4, 'login_Token', 'd6cacff7563680fd99361675cd399eb0342d7e65d464d499b72586c175dfe22c', '[\"*\"]', '2024-09-17 11:30:09', NULL, '2024-09-17 11:21:25', '2024-09-17 11:30:09'),
(36, 'App\\Models\\User', 11, 'register_Token', '86d2f48180cf98310128f89cb34c3cc265928fae024d1176990a73850fa1270b', '[\"*\"]', '2024-09-19 11:31:51', NULL, '2024-09-18 15:44:30', '2024-09-19 11:31:51'),
(37, 'App\\Models\\User', 3, 'login_Token', '031eebe51921ef807adaa8adfcdd1d7e920d36034033f6372c9e3cc653169992', '[\"*\"]', '2024-09-27 09:48:04', NULL, '2024-09-19 11:44:05', '2024-09-27 09:48:04'),
(38, 'App\\Models\\User', 3, 'login_Token', '7628eb637640d2bc738c3fa4c30773a4d61d16aa6f5799129f1b44509562524f', '[\"*\"]', '2024-09-27 10:04:04', NULL, '2024-09-27 10:03:24', '2024-09-27 10:04:04'),
(39, 'App\\Models\\User', 12, 'register_Token', 'e3117e40e321dbb30a12673aa6566c3c49ab7831a6731bb5c6c2dbd76920d782', '[\"*\"]', NULL, NULL, '2024-09-27 10:12:47', '2024-09-27 10:12:47'),
(40, 'App\\Models\\User', 3, 'login_Token', '90817a0b2a349ef5bf745e4291b692a3ce0609415c43ac1383d8e5657f596dee', '[\"*\"]', '2024-09-28 15:13:34', NULL, '2024-09-28 13:09:33', '2024-09-28 15:13:34'),
(41, 'App\\Models\\User', 3, 'login_Token', 'e4c55608b6ef350d3317681a879b5f76a2635b96938faec80cd4741768c34224', '[\"*\"]', '2024-10-03 11:16:34', NULL, '2024-10-03 10:11:03', '2024-10-03 11:16:34'),
(42, 'App\\Models\\User', 3, 'login_Token', '5bd9ee721a4acd9ac288ea6cb790b79ecfdfa1ff287e40799b7b2866e57ee786', '[\"*\"]', '2024-10-03 16:59:50', NULL, '2024-10-03 16:57:43', '2024-10-03 16:59:50'),
(43, 'App\\Models\\User', 3, 'login_Token', '991657f2b59fab7a242b843b0e1a1c4af3aeae2df87c1e9740b1d07812487aca', '[\"*\"]', '2024-10-07 13:44:21', NULL, '2024-10-07 13:39:03', '2024-10-07 13:44:21'),
(44, 'App\\Models\\User', 3, 'login_Token', '5bd603e37288927aa2f482f90184c03a0ab976cd90f553ae3c10d47002cb61e8', '[\"*\"]', '2024-10-07 15:41:39', NULL, '2024-10-07 13:51:58', '2024-10-07 15:41:39'),
(45, 'App\\Models\\User', 3, 'login_Token', '70d52f9bc1409b1935d09d7dcbbcac6cf46123579ff0274e647dd45b28c232bf', '[\"*\"]', '2024-10-07 15:35:09', NULL, '2024-10-07 13:59:03', '2024-10-07 15:35:09'),
(46, 'App\\Models\\User', 3, 'login_Token', '89a156ddc054062a629a9cb88916df97801c49841611d51dfc7e0448c5fcb15c', '[\"*\"]', '2024-10-08 17:12:36', NULL, '2024-10-08 11:21:10', '2024-10-08 17:12:36'),
(47, 'App\\Models\\User', 13, 'register_Token', 'ff070ac7282938f3dd5955621b730450d7014f5793e92701a2029da69e864633', '[\"*\"]', '2024-10-08 17:12:04', NULL, '2024-10-08 16:26:45', '2024-10-08 17:12:04'),
(51, 'App\\Models\\User', 14, 'login_Token', '31027db9b45d48f1f29b6b3f130a192d3c1c468b901bfc3e2062ccd186e5d281', '[\"*\"]', '2024-10-09 10:40:09', NULL, '2024-10-09 10:40:04', '2024-10-09 10:40:09');

-- --------------------------------------------------------

--
-- Structure de la table `poids`
--

CREATE TABLE `poids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `constante` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `ruche_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `poids`
--

INSERT INTO `poids` (`id`, `constante`, `date`, `etat`, `ruche_id`, `created_at`, `updated_at`) VALUES
(1, 80, '2024-08-28 10:11:17', 0, 2, NULL, NULL),
(2, 70, '2024-08-28 10:13:37', 0, 1, NULL, NULL),
(3, 0, '2024-08-28 12:13:55', 0, 1, NULL, NULL),
(4, 90, '2024-08-28 12:16:25', 0, 1, NULL, NULL),
(5, 10, '2024-01-01 08:00:00', 1, 1, '2024-01-01 08:00:00', '2024-01-01 08:00:00'),
(6, 12, '2024-02-01 08:00:00', 1, 1, '2024-02-01 08:00:00', '2024-02-01 08:00:00'),
(7, 14, '2024-03-01 08:00:00', 1, 1, '2024-03-01 08:00:00', '2024-03-01 08:00:00'),
(8, 11, '2024-04-01 08:00:00', 1, 1, '2024-04-01 08:00:00', '2024-04-01 08:00:00'),
(9, 13, '2024-05-01 08:00:00', 1, 1, '2024-05-01 08:00:00', '2024-05-01 08:00:00'),
(10, 15, '2024-06-01 08:00:00', 1, 1, '2024-06-01 08:00:00', '2024-06-01 08:00:00'),
(11, 16, '2024-07-01 08:00:00', 1, 1, '2024-07-01 08:00:00', '2024-07-01 08:00:00'),
(12, 14, '2024-08-01 08:00:00', 1, 1, '2024-08-01 08:00:00', '2024-08-01 08:00:00'),
(13, 13, '2024-09-01 08:00:00', 1, 1, '2024-09-01 08:00:00', '2024-09-01 08:00:00'),
(14, 12, '2024-10-01 08:00:00', 1, 1, '2024-10-01 08:00:00', '2024-10-01 08:00:00'),
(15, 11, '2024-11-01 08:00:00', 1, 1, '2024-11-01 08:00:00', '2024-11-01 08:00:00'),
(16, 15, '2024-12-01 08:00:00', 1, 1, '2024-12-01 08:00:00', '2024-12-01 08:00:00'),
(17, 17, '2024-08-05 08:00:00', 1, 1, '2024-08-05 08:00:00', '2024-08-05 08:00:00'),
(18, 18, '2024-08-12 08:00:00', 1, 1, '2024-08-12 08:00:00', '2024-08-12 08:00:00'),
(19, 19, '2024-08-19 08:00:00', 1, 1, '2024-08-19 08:00:00', '2024-08-19 08:00:00'),
(20, 20, '2024-08-26 08:00:00', 1, 1, '2024-08-26 08:00:00', '2024-08-26 08:00:00'),
(21, 10, '2024-08-25 08:00:00', 1, 1, '2024-08-25 08:00:00', '2024-08-25 08:00:00'),
(22, 12, '2024-08-26 08:00:00', 1, 1, '2024-08-26 08:00:00', '2024-08-26 08:00:00'),
(23, 14, '2024-08-27 20:00:00', 1, 1, '2024-08-27 08:00:00', '2024-08-27 08:00:00'),
(24, 16, '2024-08-28 08:00:00', 1, 1, '2024-08-28 08:00:00', '2024-08-28 08:00:00'),
(25, 13, '2024-08-29 08:00:00', 1, 1, '2024-08-29 08:00:00', '2024-08-29 08:00:00'),
(26, 15, '2024-08-30 08:00:00', 1, 1, '2024-08-30 08:00:00', '2024-08-30 08:00:00'),
(27, 14, '2024-08-31 08:00:00', 1, 1, '2024-08-31 08:00:00', '2024-08-31 08:00:00'),
(28, 0, '2024-08-28 10:48:42', 1, 1, NULL, NULL),
(29, 40, '2024-09-03 14:34:26', 1, 2, NULL, NULL),
(30, 0, '2024-09-03 14:38:48', 0, 1, NULL, NULL),
(31, 40, '2024-09-09 11:44:07', 1, 4, '2024-09-09 11:44:07', '2024-09-09 11:44:07'),
(32, 40, '2024-09-09 12:07:13', 1, 4, '2024-09-09 12:07:13', '2024-09-09 12:07:13'),
(33, 90, '2024-09-18 14:09:49', 1, 9, NULL, NULL),
(34, 50, '2024-09-18 14:09:49', 1, 6, NULL, NULL),
(35, 44, '2024-09-23 17:43:36', 1, 4, NULL, NULL),
(36, 47, '2024-09-23 17:43:36', 1, 6, NULL, NULL),
(37, 85, '2024-09-26 11:45:10', 1, 8, '2024-09-26 11:45:10', '2024-09-26 11:45:10'),
(38, 37, '2024-10-08 11:49:48', 1, 16, '2024-10-08 11:49:48', '2024-10-08 11:49:48'),
(39, 23, '2024-10-08 11:52:58', 1, 16, '2024-10-08 11:52:58', '2024-10-08 11:52:58'),
(40, 0, '2024-10-08 11:56:24', 1, 16, '2024-10-08 11:56:24', '2024-10-08 11:56:24'),
(41, 0, '2024-10-08 11:56:33', 1, 16, '2024-10-08 11:56:33', '2024-10-08 11:56:33'),
(42, 38, '2024-10-08 11:59:45', 1, 16, '2024-10-08 11:59:45', '2024-10-08 11:59:45'),
(43, 23, '2024-10-08 12:03:09', 1, 16, '2024-10-08 12:03:09', '2024-10-08 12:03:09'),
(44, 0, '2024-10-08 12:06:17', 1, 16, '2024-10-08 12:06:17', '2024-10-08 12:06:17'),
(45, 0, '2024-10-08 12:06:26', 1, 16, '2024-10-08 12:06:26', '2024-10-08 12:06:26'),
(46, 22, '2024-10-08 12:09:50', 1, 16, '2024-10-08 12:09:50', '2024-10-08 12:09:50'),
(47, 22, '2024-10-08 12:10:24', 1, 16, '2024-10-08 12:10:24', '2024-10-08 12:10:24'),
(48, 39, '2024-10-08 12:10:39', 1, 16, '2024-10-08 12:10:39', '2024-10-08 12:10:39'),
(49, 39, '2024-10-08 12:10:52', 1, 16, '2024-10-08 12:10:52', '2024-10-08 12:10:52'),
(50, 23, '2024-10-08 12:14:02', 1, 16, '2024-10-08 12:14:02', '2024-10-08 12:14:02'),
(51, 0, '2024-10-08 12:17:12', 1, 16, '2024-10-08 12:17:12', '2024-10-08 12:17:12'),
(52, 0, '2024-10-08 12:17:24', 1, 16, '2024-10-08 12:17:24', '2024-10-08 12:17:24'),
(53, 39, '2024-10-08 12:20:43', 1, 16, '2024-10-08 12:20:43', '2024-10-08 12:20:43'),
(54, 39, '2024-10-08 12:20:57', 1, 16, '2024-10-08 12:20:57', '2024-10-08 12:20:57'),
(55, 23, '2024-10-08 12:24:12', 1, 16, '2024-10-08 12:24:12', '2024-10-08 12:24:12'),
(56, 0, '2024-10-08 12:27:20', 1, 16, '2024-10-08 12:27:20', '2024-10-08 12:27:20'),
(57, 39, '2024-10-08 12:27:32', 1, 16, '2024-10-08 12:27:32', '2024-10-08 12:27:32'),
(58, 23, '2024-10-08 12:30:42', 1, 16, '2024-10-08 12:30:42', '2024-10-08 12:30:42'),
(59, 0, '2024-10-08 12:34:01', 1, 16, '2024-10-08 12:34:01', '2024-10-08 12:34:01'),
(60, 40, '2024-10-08 12:34:17', 1, 16, '2024-10-08 12:34:17', '2024-10-08 12:34:17'),
(61, 23, '2024-10-08 12:37:30', 1, 16, '2024-10-08 12:37:30', '2024-10-08 12:37:30'),
(62, 0, '2024-10-08 12:37:43', 1, 16, '2024-10-08 12:37:43', '2024-10-08 12:37:43'),
(63, 40, '2024-10-08 12:41:08', 1, 16, '2024-10-08 12:41:08', '2024-10-08 12:41:08'),
(64, 40, '2024-10-08 12:41:19', 1, 16, '2024-10-08 12:41:19', '2024-10-08 12:41:19'),
(65, 22, '2024-10-08 12:44:31', 1, 16, '2024-10-08 12:44:31', '2024-10-08 12:44:31'),
(66, 0, '2024-10-08 12:47:40', 1, 16, '2024-10-08 12:47:40', '2024-10-08 12:47:40'),
(67, 0, '2024-10-08 12:47:51', 1, 16, '2024-10-08 12:47:51', '2024-10-08 12:47:51'),
(68, 39, '2024-10-08 12:51:05', 1, 16, '2024-10-08 12:51:05', '2024-10-08 12:51:05'),
(69, 22, '2024-10-08 12:54:16', 1, 16, '2024-10-08 12:54:16', '2024-10-08 12:54:16'),
(70, 0, '2024-10-08 12:57:31', 1, 16, '2024-10-08 12:57:31', '2024-10-08 12:57:31'),
(71, 0, '2024-10-08 12:57:43', 1, 16, '2024-10-08 12:57:43', '2024-10-08 12:57:43'),
(72, 39, '2024-10-08 13:01:00', 1, 16, '2024-10-08 13:01:00', '2024-10-08 13:01:00'),
(73, 23, '2024-10-08 13:04:11', 1, 16, '2024-10-08 13:04:11', '2024-10-08 13:04:11'),
(74, 0, '2024-10-08 13:07:21', 1, 16, '2024-10-08 13:07:21', '2024-10-08 13:07:21'),
(75, 0, '2024-10-08 13:07:31', 1, 16, '2024-10-08 13:07:31', '2024-10-08 13:07:31'),
(76, 23, '2024-10-08 13:10:46', 1, 16, '2024-10-08 13:10:46', '2024-10-08 13:10:46'),
(77, 0, '2024-10-08 13:13:26', 1, 17, '2024-10-08 13:13:26', '2024-10-08 13:13:26'),
(78, 38, '2024-10-08 13:16:35', 1, 17, '2024-10-08 13:16:35', '2024-10-08 13:16:35'),
(79, 23, '2024-10-08 13:19:51', 1, 17, '2024-10-08 13:19:51', '2024-10-08 13:19:51'),
(80, 0, '2024-10-08 13:20:05', 1, 17, '2024-10-08 13:20:05', '2024-10-08 13:20:05'),
(81, 39, '2024-10-08 13:23:18', 1, 17, '2024-10-08 13:23:18', '2024-10-08 13:23:18'),
(82, 23, '2024-10-08 13:26:28', 1, 17, '2024-10-08 13:26:28', '2024-10-08 13:26:28'),
(83, 0, '2024-10-08 13:29:44', 1, 17, '2024-10-08 13:29:44', '2024-10-08 13:29:44'),
(84, 0, '2024-10-08 13:29:53', 1, 17, '2024-10-08 13:29:53', '2024-10-08 13:29:53'),
(85, 38, '2024-10-08 13:33:14', 1, 17, '2024-10-08 13:33:14', '2024-10-08 13:33:14'),
(86, 23, '2024-10-08 13:36:24', 1, 17, '2024-10-08 13:36:24', '2024-10-08 13:36:24'),
(87, 0, '2024-10-08 13:36:42', 1, 17, '2024-10-08 13:36:42', '2024-10-08 13:36:42'),
(88, 0, '2024-10-08 13:36:54', 1, 17, '2024-10-08 13:36:54', '2024-10-08 13:36:54'),
(89, 38, '2024-10-08 13:40:05', 1, 17, '2024-10-08 13:40:05', '2024-10-08 13:40:05'),
(90, 0, '2024-10-08 16:16:37', 1, 18, '2024-10-08 16:16:37', '2024-10-08 16:16:37'),
(91, 0, '2024-10-08 16:16:48', 1, 18, '2024-10-08 16:16:48', '2024-10-08 16:16:48'),
(92, 45, '2024-10-08 16:20:02', 1, 18, '2024-10-08 16:20:02', '2024-10-08 16:20:02'),
(93, 25, '2024-10-08 16:23:16', 1, 18, '2024-10-08 16:23:17', '2024-10-08 16:23:17'),
(94, 0, '2024-10-08 16:23:31', 1, 18, '2024-10-08 16:23:31', '2024-10-08 16:23:31'),
(95, 44, '2024-10-08 16:26:49', 1, 18, '2024-10-08 16:26:50', '2024-10-08 16:26:50'),
(96, 44, '2024-10-08 17:01:01', 1, 19, '2024-10-08 17:01:01', '2024-10-08 17:01:01'),
(97, 25, '2024-10-08 17:04:11', 1, 19, '2024-10-08 17:04:11', '2024-10-08 17:04:11'),
(98, 24, '2024-10-08 17:04:35', 1, 19, '2024-10-08 17:04:35', '2024-10-08 17:04:35'),
(99, 24, '2024-10-08 17:04:44', 1, 19, '2024-10-08 17:04:44', '2024-10-08 17:04:44'),
(100, 44, '2024-10-08 17:05:01', 1, 19, '2024-10-08 17:05:01', '2024-10-08 17:05:01'),
(101, 20, '2024-10-15 17:11:37', 1, 33, '2024-10-15 17:11:37', '2024-10-15 17:11:37'),
(102, 20, '2024-10-15 17:11:43', 1, 33, '2024-10-15 17:11:43', '2024-10-15 17:11:43'),
(103, 20, '2024-10-15 17:11:49', 1, 33, '2024-10-15 17:11:49', '2024-10-15 17:11:49'),
(104, 20, '2024-10-15 17:11:55', 1, 33, '2024-10-15 17:11:55', '2024-10-15 17:11:55'),
(105, 20, '2024-10-15 17:12:01', 1, 33, '2024-10-15 17:12:01', '2024-10-15 17:12:01'),
(106, 20, '2024-10-15 17:12:08', 1, 33, '2024-10-15 17:12:08', '2024-10-15 17:12:08'),
(107, 20, '2024-10-15 17:12:14', 1, 33, '2024-10-15 17:12:14', '2024-10-15 17:12:14'),
(108, 20, '2024-10-15 17:12:21', 1, 33, '2024-10-15 17:12:21', '2024-10-15 17:12:21'),
(109, 20, '2024-10-15 17:12:27', 1, 33, '2024-10-15 17:12:27', '2024-10-15 17:12:27'),
(110, 20, '2024-10-15 17:12:34', 1, 33, '2024-10-15 17:12:34', '2024-10-15 17:12:34'),
(111, 20, '2024-10-15 17:12:40', 1, 33, '2024-10-15 17:12:40', '2024-10-15 17:12:40'),
(112, 20, '2024-10-15 17:12:46', 1, 33, '2024-10-15 17:12:46', '2024-10-15 17:12:46'),
(113, 20, '2024-10-15 17:12:52', 1, 33, '2024-10-15 17:12:52', '2024-10-15 17:12:52'),
(114, 20, '2024-10-15 17:13:00', 1, 33, '2024-10-15 17:13:00', '2024-10-15 17:13:00'),
(115, 20, '2024-10-15 17:13:08', 1, 33, '2024-10-15 17:13:08', '2024-10-15 17:13:08'),
(116, 20, '2024-10-15 17:13:14', 1, 33, '2024-10-15 17:13:14', '2024-10-15 17:13:14'),
(117, 20, '2024-10-15 17:13:22', 1, 33, '2024-10-15 17:13:22', '2024-10-15 17:13:22'),
(118, 20, '2024-10-15 17:13:27', 1, 33, '2024-10-15 17:13:27', '2024-10-15 17:13:27'),
(119, 20, '2024-10-15 17:13:33', 1, 33, '2024-10-15 17:13:33', '2024-10-15 17:13:33'),
(120, 20, '2024-10-15 17:13:39', 1, 33, '2024-10-15 17:13:39', '2024-10-15 17:13:39'),
(121, 20, '2024-10-15 17:13:44', 1, 33, '2024-10-15 17:13:44', '2024-10-15 17:13:44'),
(122, 20, '2024-10-15 17:13:50', 1, 33, '2024-10-15 17:13:50', '2024-10-15 17:13:50'),
(123, 20, '2024-10-15 17:13:56', 1, 33, '2024-10-15 17:13:56', '2024-10-15 17:13:56'),
(124, 20, '2024-10-15 17:14:01', 1, 33, '2024-10-15 17:14:01', '2024-10-15 17:14:01'),
(125, 20, '2024-10-15 17:14:08', 1, 33, '2024-10-15 17:14:08', '2024-10-15 17:14:08'),
(126, 20, '2024-10-15 17:14:13', 1, 33, '2024-10-15 17:14:13', '2024-10-15 17:14:13'),
(127, 20, '2024-10-15 17:14:20', 1, 33, '2024-10-15 17:14:20', '2024-10-15 17:14:20'),
(128, 20, '2024-10-15 17:14:27', 1, 33, '2024-10-15 17:14:27', '2024-10-15 17:14:27'),
(129, 20, '2024-10-15 17:14:33', 1, 33, '2024-10-15 17:14:33', '2024-10-15 17:14:33'),
(130, 20, '2024-10-15 17:14:38', 1, 33, '2024-10-15 17:14:38', '2024-10-15 17:14:38'),
(131, 20, '2024-10-15 17:14:44', 1, 33, '2024-10-15 17:14:44', '2024-10-15 17:14:44'),
(132, 20, '2024-10-15 17:14:49', 1, 33, '2024-10-15 17:14:49', '2024-10-15 17:14:49'),
(133, 20, '2024-10-15 17:14:55', 1, 33, '2024-10-15 17:14:55', '2024-10-15 17:14:55'),
(134, 20, '2024-10-15 17:15:01', 1, 33, '2024-10-15 17:15:01', '2024-10-15 17:15:01'),
(135, 20, '2024-10-15 17:15:06', 1, 33, '2024-10-15 17:15:06', '2024-10-15 17:15:06'),
(136, 20, '2024-10-15 17:15:11', 1, 33, '2024-10-15 17:15:11', '2024-10-15 17:15:11'),
(137, 20, '2024-10-15 17:15:17', 1, 33, '2024-10-15 17:15:17', '2024-10-15 17:15:17'),
(138, 20, '2024-10-15 17:15:22', 1, 33, '2024-10-15 17:15:22', '2024-10-15 17:15:22'),
(139, 20, '2024-10-15 17:15:28', 1, 33, '2024-10-15 17:15:28', '2024-10-15 17:15:28'),
(140, 20, '2024-10-15 17:15:33', 1, 33, '2024-10-15 17:15:33', '2024-10-15 17:15:33'),
(141, 20, '2024-10-15 17:15:39', 1, 33, '2024-10-15 17:15:39', '2024-10-15 17:15:39'),
(142, 20, '2024-10-15 17:15:45', 1, 33, '2024-10-15 17:15:45', '2024-10-15 17:15:45'),
(143, 20, '2024-10-15 17:15:51', 1, 33, '2024-10-15 17:15:51', '2024-10-15 17:15:51'),
(144, 20, '2024-10-15 17:15:57', 1, 33, '2024-10-15 17:15:57', '2024-10-15 17:15:57'),
(145, 20, '2024-10-15 17:16:03', 1, 33, '2024-10-15 17:16:03', '2024-10-15 17:16:03'),
(146, 20, '2024-10-15 17:16:09', 1, 33, '2024-10-15 17:16:09', '2024-10-15 17:16:09'),
(147, 20, '2024-10-15 17:16:15', 1, 33, '2024-10-15 17:16:15', '2024-10-15 17:16:15'),
(148, 20, '2024-10-15 17:16:20', 1, 33, '2024-10-15 17:16:20', '2024-10-15 17:16:20'),
(149, 20, '2024-10-15 17:16:26', 1, 33, '2024-10-15 17:16:26', '2024-10-15 17:16:26'),
(150, 20, '2024-10-15 17:16:31', 1, 33, '2024-10-15 17:16:31', '2024-10-15 17:16:31'),
(151, 20, '2024-10-15 17:16:37', 1, 33, '2024-10-15 17:16:37', '2024-10-15 17:16:37'),
(152, 20, '2024-10-15 17:16:42', 1, 33, '2024-10-15 17:16:42', '2024-10-15 17:16:42'),
(153, 20, '2024-10-15 17:16:48', 1, 33, '2024-10-15 17:16:48', '2024-10-15 17:16:48'),
(154, 20, '2024-10-15 17:16:53', 1, 33, '2024-10-15 17:16:53', '2024-10-15 17:16:53'),
(155, 20, '2024-10-15 17:16:58', 1, 33, '2024-10-15 17:16:58', '2024-10-15 17:16:58'),
(156, 20, '2024-10-15 17:17:04', 1, 33, '2024-10-15 17:17:04', '2024-10-15 17:17:04'),
(157, 20, '2024-10-15 17:17:09', 1, 33, '2024-10-15 17:17:09', '2024-10-15 17:17:09'),
(158, 20, '2024-10-15 17:17:15', 1, 33, '2024-10-15 17:17:15', '2024-10-15 17:17:15'),
(159, 20, '2024-10-15 17:17:39', 1, 33, '2024-10-15 17:17:39', '2024-10-15 17:17:39'),
(160, 20, '2024-10-15 17:17:45', 1, 33, '2024-10-15 17:17:45', '2024-10-15 17:17:45'),
(161, 20, '2024-10-15 17:17:50', 1, 33, '2024-10-15 17:17:50', '2024-10-15 17:17:50'),
(162, 20, '2024-10-15 17:17:56', 1, 33, '2024-10-15 17:17:56', '2024-10-15 17:17:56'),
(163, 20, '2024-10-15 17:18:01', 1, 33, '2024-10-15 17:18:01', '2024-10-15 17:18:01'),
(164, 20, '2024-10-15 17:18:06', 1, 33, '2024-10-15 17:18:06', '2024-10-15 17:18:06'),
(165, 20, '2024-10-15 17:18:12', 1, 33, '2024-10-15 17:18:12', '2024-10-15 17:18:12'),
(166, 20, '2024-10-15 17:18:17', 1, 33, '2024-10-15 17:18:17', '2024-10-15 17:18:17'),
(167, 20, '2024-10-15 17:18:22', 1, 33, '2024-10-15 17:18:22', '2024-10-15 17:18:22'),
(168, 20, '2024-10-15 17:18:28', 1, 33, '2024-10-15 17:18:28', '2024-10-15 17:18:28'),
(169, 20, '2024-10-15 17:18:33', 1, 33, '2024-10-15 17:18:33', '2024-10-15 17:18:33'),
(170, 20, '2024-10-15 17:18:39', 1, 33, '2024-10-15 17:18:39', '2024-10-15 17:18:39'),
(171, 20, '2024-10-15 17:18:44', 1, 33, '2024-10-15 17:18:44', '2024-10-15 17:18:44'),
(172, 20, '2024-10-15 17:18:49', 1, 33, '2024-10-15 17:18:49', '2024-10-15 17:18:49'),
(173, 20, '2024-10-15 17:18:55', 1, 33, '2024-10-15 17:18:55', '2024-10-15 17:18:55'),
(174, 20, '2024-10-15 17:19:01', 1, 33, '2024-10-15 17:19:01', '2024-10-15 17:19:01'),
(175, 20, '2024-10-15 17:19:18', 1, 33, '2024-10-15 17:19:18', '2024-10-15 17:19:18'),
(176, 20, '2024-10-15 17:19:23', 1, 33, '2024-10-15 17:19:23', '2024-10-15 17:19:23'),
(177, 20, '2024-10-15 17:19:28', 1, 33, '2024-10-15 17:19:29', '2024-10-15 17:19:29'),
(178, 20, '2024-10-15 17:19:34', 1, 33, '2024-10-15 17:19:34', '2024-10-15 17:19:34'),
(179, 20, '2024-10-15 17:19:40', 1, 33, '2024-10-15 17:19:40', '2024-10-15 17:19:40'),
(180, 20, '2024-10-15 17:19:46', 1, 33, '2024-10-15 17:19:46', '2024-10-15 17:19:46'),
(181, 20, '2024-10-15 17:19:51', 1, 33, '2024-10-15 17:19:51', '2024-10-15 17:19:51'),
(182, 20, '2024-10-15 17:19:57', 1, 33, '2024-10-15 17:19:57', '2024-10-15 17:19:57'),
(183, 20, '2024-10-15 17:20:02', 1, 33, '2024-10-15 17:20:02', '2024-10-15 17:20:02'),
(184, 20, '2024-10-15 17:20:08', 1, 33, '2024-10-15 17:20:08', '2024-10-15 17:20:08'),
(185, 20, '2024-10-15 17:20:13', 1, 33, '2024-10-15 17:20:13', '2024-10-15 17:20:13'),
(186, 20, '2024-10-15 17:20:18', 1, 33, '2024-10-15 17:20:18', '2024-10-15 17:20:18'),
(187, 20, '2024-10-15 17:20:24', 1, 33, '2024-10-15 17:20:24', '2024-10-15 17:20:24'),
(188, 20, '2024-10-15 17:20:29', 1, 33, '2024-10-15 17:20:29', '2024-10-15 17:20:29'),
(189, 20, '2024-10-15 17:20:35', 1, 33, '2024-10-15 17:20:35', '2024-10-15 17:20:35'),
(190, 20, '2024-10-15 17:20:40', 1, 33, '2024-10-15 17:20:40', '2024-10-15 17:20:40'),
(191, 20, '2024-10-15 17:20:45', 1, 33, '2024-10-15 17:20:45', '2024-10-15 17:20:45'),
(192, 20, '2024-10-15 17:20:51', 1, 33, '2024-10-15 17:20:51', '2024-10-15 17:20:51'),
(193, 20, '2024-10-15 17:20:56', 1, 33, '2024-10-15 17:20:56', '2024-10-15 17:20:56'),
(194, 20, '2024-10-15 17:21:02', 1, 33, '2024-10-15 17:21:02', '2024-10-15 17:21:02'),
(195, 20, '2024-10-15 17:21:07', 1, 33, '2024-10-15 17:21:07', '2024-10-15 17:21:07'),
(196, 20, '2024-10-15 17:21:13', 1, 33, '2024-10-15 17:21:13', '2024-10-15 17:21:13'),
(197, 20, '2024-10-15 17:21:18', 1, 33, '2024-10-15 17:21:18', '2024-10-15 17:21:18'),
(198, 20, '2024-10-15 17:21:23', 1, 33, '2024-10-15 17:21:23', '2024-10-15 17:21:23'),
(199, 20, '2024-10-15 17:21:29', 1, 33, '2024-10-15 17:21:29', '2024-10-15 17:21:29'),
(200, 20, '2024-10-15 17:21:34', 1, 33, '2024-10-15 17:21:34', '2024-10-15 17:21:34'),
(201, 20, '2024-10-15 17:21:40', 1, 33, '2024-10-15 17:21:40', '2024-10-15 17:21:40'),
(202, 20, '2024-10-15 17:21:45', 1, 33, '2024-10-15 17:21:46', '2024-10-15 17:21:46'),
(203, 20, '2024-10-15 17:21:51', 1, 33, '2024-10-15 17:21:51', '2024-10-15 17:21:51'),
(204, 20, '2024-10-15 17:21:57', 1, 33, '2024-10-15 17:21:57', '2024-10-15 17:21:57'),
(205, 20, '2024-10-15 17:22:03', 1, 33, '2024-10-15 17:22:03', '2024-10-15 17:22:03'),
(206, 20, '2024-10-15 17:22:08', 1, 33, '2024-10-15 17:22:09', '2024-10-15 17:22:09'),
(207, 20, '2024-10-15 17:22:15', 1, 33, '2024-10-15 17:22:15', '2024-10-15 17:22:15'),
(208, 20, '2024-10-15 17:22:20', 1, 33, '2024-10-15 17:22:20', '2024-10-15 17:22:20'),
(209, 20, '2024-10-15 17:22:26', 1, 33, '2024-10-15 17:22:26', '2024-10-15 17:22:26'),
(210, 20, '2024-10-15 17:22:32', 1, 33, '2024-10-15 17:22:32', '2024-10-15 17:22:32'),
(211, 20, '2024-10-15 17:22:38', 1, 33, '2024-10-15 17:22:38', '2024-10-15 17:22:38'),
(212, 20, '2024-10-15 17:22:43', 1, 33, '2024-10-15 17:22:43', '2024-10-15 17:22:43'),
(213, 20, '2024-10-15 17:22:49', 1, 33, '2024-10-15 17:22:49', '2024-10-15 17:22:49'),
(214, 20, '2024-10-15 17:22:54', 1, 33, '2024-10-15 17:22:54', '2024-10-15 17:22:54'),
(215, 20, '2024-10-15 17:23:00', 1, 33, '2024-10-15 17:23:00', '2024-10-15 17:23:00'),
(216, 20, '2024-10-15 17:23:06', 1, 33, '2024-10-15 17:23:06', '2024-10-15 17:23:06'),
(217, 20, '2024-10-15 17:23:12', 1, 33, '2024-10-15 17:23:12', '2024-10-15 17:23:12'),
(218, 20, '2024-10-15 17:23:17', 1, 33, '2024-10-15 17:23:17', '2024-10-15 17:23:17'),
(219, 20, '2024-10-15 17:23:23', 1, 33, '2024-10-15 17:23:23', '2024-10-15 17:23:23'),
(220, 20, '2024-10-15 17:23:29', 1, 33, '2024-10-15 17:23:29', '2024-10-15 17:23:29'),
(221, 20, '2024-10-15 17:23:34', 1, 33, '2024-10-15 17:23:34', '2024-10-15 17:23:34'),
(222, 20, '2024-10-15 17:23:40', 1, 33, '2024-10-15 17:23:40', '2024-10-15 17:23:40'),
(223, 20, '2024-10-15 17:23:46', 1, 33, '2024-10-15 17:23:46', '2024-10-15 17:23:46'),
(224, 20, '2024-10-15 17:23:51', 1, 33, '2024-10-15 17:23:51', '2024-10-15 17:23:51'),
(225, 20, '2024-10-15 17:23:57', 1, 33, '2024-10-15 17:23:57', '2024-10-15 17:23:57'),
(226, 20, '2024-10-15 17:24:03', 1, 33, '2024-10-15 17:24:03', '2024-10-15 17:24:03'),
(227, 20, '2024-10-15 17:24:08', 1, 33, '2024-10-15 17:24:08', '2024-10-15 17:24:08'),
(228, 20, '2024-10-15 17:24:14', 1, 33, '2024-10-15 17:24:14', '2024-10-15 17:24:14'),
(229, 20, '2024-10-15 17:24:20', 1, 33, '2024-10-15 17:24:20', '2024-10-15 17:24:20'),
(230, 20, '2024-10-15 17:24:25', 1, 33, '2024-10-15 17:24:25', '2024-10-15 17:24:25'),
(231, 20, '2024-10-15 17:24:31', 1, 33, '2024-10-15 17:24:31', '2024-10-15 17:24:31'),
(232, 20, '2024-10-15 17:24:37', 1, 33, '2024-10-15 17:24:37', '2024-10-15 17:24:37'),
(233, 20, '2024-10-15 17:24:43', 1, 33, '2024-10-15 17:24:43', '2024-10-15 17:24:43'),
(234, 20, '2024-10-15 17:24:49', 1, 33, '2024-10-15 17:24:49', '2024-10-15 17:24:49'),
(235, 20, '2024-10-15 17:24:55', 1, 33, '2024-10-15 17:24:55', '2024-10-15 17:24:55'),
(236, 20, '2024-10-15 17:25:00', 1, 33, '2024-10-15 17:25:00', '2024-10-15 17:25:00'),
(237, 20, '2024-10-15 17:25:06', 1, 33, '2024-10-15 17:25:06', '2024-10-15 17:25:06'),
(238, 20, '2024-10-15 17:25:12', 1, 33, '2024-10-15 17:25:12', '2024-10-15 17:25:12'),
(239, 20, '2024-10-15 17:25:17', 1, 33, '2024-10-15 17:25:17', '2024-10-15 17:25:17'),
(240, 20, '2024-10-15 17:25:23', 1, 33, '2024-10-15 17:25:23', '2024-10-15 17:25:23'),
(241, 20, '2024-10-15 17:25:28', 1, 33, '2024-10-15 17:25:28', '2024-10-15 17:25:28'),
(242, 20, '2024-10-15 17:25:34', 1, 33, '2024-10-15 17:25:34', '2024-10-15 17:25:34'),
(243, 20, '2024-10-15 17:25:41', 1, 33, '2024-10-15 17:25:41', '2024-10-15 17:25:41'),
(244, 20, '2024-10-15 17:25:46', 1, 33, '2024-10-15 17:25:46', '2024-10-15 17:25:46'),
(245, 20, '2024-10-15 17:25:52', 1, 33, '2024-10-15 17:25:52', '2024-10-15 17:25:52'),
(246, 20, '2024-10-15 17:25:58', 1, 33, '2024-10-15 17:25:58', '2024-10-15 17:25:58'),
(247, 20, '2024-10-15 17:26:04', 1, 33, '2024-10-15 17:26:04', '2024-10-15 17:26:04'),
(248, 20, '2024-10-15 17:26:10', 1, 33, '2024-10-15 17:26:10', '2024-10-15 17:26:10'),
(249, 20, '2024-10-15 17:26:16', 1, 33, '2024-10-15 17:26:16', '2024-10-15 17:26:16'),
(250, 20, '2024-10-15 17:26:22', 1, 33, '2024-10-15 17:26:22', '2024-10-15 17:26:22'),
(251, 20, '2024-10-15 17:26:33', 1, 33, '2024-10-15 17:26:34', '2024-10-15 17:26:34'),
(252, 20, '2024-10-15 17:26:42', 1, 33, '2024-10-15 17:26:43', '2024-10-15 17:26:43'),
(253, 20, '2024-10-15 17:26:48', 1, 33, '2024-10-15 17:26:48', '2024-10-15 17:26:48'),
(254, 20, '2024-10-15 17:26:54', 1, 33, '2024-10-15 17:26:54', '2024-10-15 17:26:54'),
(255, 20, '2024-10-15 17:27:01', 1, 33, '2024-10-15 17:27:01', '2024-10-15 17:27:01'),
(256, 20, '2024-10-15 17:27:06', 1, 33, '2024-10-15 17:27:07', '2024-10-15 17:27:07'),
(257, 20, '2024-10-15 17:27:12', 1, 33, '2024-10-15 17:27:12', '2024-10-15 17:27:12'),
(258, 20, '2024-10-15 17:27:17', 1, 33, '2024-10-15 17:27:17', '2024-10-15 17:27:17'),
(259, 20, '2024-10-15 17:27:22', 1, 33, '2024-10-15 17:27:22', '2024-10-15 17:27:22'),
(260, 20, '2024-10-15 17:27:28', 1, 33, '2024-10-15 17:27:28', '2024-10-15 17:27:28'),
(261, 20, '2024-10-15 17:27:33', 1, 33, '2024-10-15 17:27:33', '2024-10-15 17:27:33'),
(262, 20, '2024-10-15 17:27:38', 1, 33, '2024-10-15 17:27:38', '2024-10-15 17:27:38'),
(263, 20, '2024-10-15 17:27:44', 1, 33, '2024-10-15 17:27:44', '2024-10-15 17:27:44'),
(264, 20, '2024-10-15 17:27:49', 1, 33, '2024-10-15 17:27:49', '2024-10-15 17:27:49'),
(265, 20, '2024-10-15 17:27:54', 1, 33, '2024-10-15 17:27:54', '2024-10-15 17:27:54'),
(266, 20, '2024-10-15 17:28:00', 1, 33, '2024-10-15 17:28:00', '2024-10-15 17:28:00'),
(267, 20, '2024-10-15 17:28:05', 1, 33, '2024-10-15 17:28:05', '2024-10-15 17:28:05'),
(268, 20, '2024-10-15 17:28:10', 1, 33, '2024-10-15 17:28:10', '2024-10-15 17:28:10'),
(269, 20, '2024-10-15 17:28:15', 1, 33, '2024-10-15 17:28:15', '2024-10-15 17:28:15'),
(270, 20, '2024-10-15 17:28:21', 1, 33, '2024-10-15 17:28:21', '2024-10-15 17:28:21'),
(271, 20, '2024-10-15 17:28:26', 1, 33, '2024-10-15 17:28:26', '2024-10-15 17:28:26'),
(272, 20, '2024-10-15 17:28:31', 1, 33, '2024-10-15 17:28:31', '2024-10-15 17:28:31'),
(273, 20, '2024-10-15 17:28:37', 1, 33, '2024-10-15 17:28:37', '2024-10-15 17:28:37'),
(274, 20, '2024-10-15 17:28:42', 1, 33, '2024-10-15 17:28:42', '2024-10-15 17:28:42'),
(275, 20, '2024-10-15 17:28:47', 1, 33, '2024-10-15 17:28:47', '2024-10-15 17:28:47'),
(276, 20, '2024-10-15 17:28:53', 1, 33, '2024-10-15 17:28:53', '2024-10-15 17:28:53'),
(277, 20, '2024-10-15 17:28:58', 1, 33, '2024-10-15 17:28:58', '2024-10-15 17:28:58'),
(278, 20, '2024-10-15 17:29:03', 1, 33, '2024-10-15 17:29:03', '2024-10-15 17:29:03'),
(279, 20, '2024-10-15 17:29:09', 1, 33, '2024-10-15 17:29:09', '2024-10-15 17:29:09'),
(280, 20, '2024-10-15 17:29:14', 1, 33, '2024-10-15 17:29:14', '2024-10-15 17:29:14'),
(281, 20, '2024-10-15 17:29:19', 1, 33, '2024-10-15 17:29:19', '2024-10-15 17:29:19'),
(282, 20, '2024-10-15 17:29:24', 1, 33, '2024-10-15 17:29:24', '2024-10-15 17:29:24'),
(283, 20, '2024-10-15 17:29:30', 1, 33, '2024-10-15 17:29:30', '2024-10-15 17:29:30'),
(284, 20, '2024-10-15 17:29:35', 1, 33, '2024-10-15 17:29:35', '2024-10-15 17:29:35'),
(285, 20, '2024-10-15 17:29:40', 1, 33, '2024-10-15 17:29:40', '2024-10-15 17:29:40'),
(286, 20, '2024-10-15 17:29:45', 1, 33, '2024-10-15 17:29:45', '2024-10-15 17:29:45'),
(287, 20, '2024-10-15 17:29:51', 1, 33, '2024-10-15 17:29:51', '2024-10-15 17:29:51'),
(288, 20, '2024-10-15 17:29:56', 1, 33, '2024-10-15 17:29:56', '2024-10-15 17:29:56'),
(289, 20, '2024-10-15 17:30:01', 1, 33, '2024-10-15 17:30:01', '2024-10-15 17:30:01'),
(290, 20, '2024-10-15 17:30:06', 1, 33, '2024-10-15 17:30:06', '2024-10-15 17:30:06'),
(291, 20, '2024-10-15 17:30:12', 1, 33, '2024-10-15 17:30:12', '2024-10-15 17:30:12'),
(292, 20, '2024-10-15 17:30:17', 1, 33, '2024-10-15 17:30:17', '2024-10-15 17:30:17'),
(293, 20, '2024-10-15 17:30:22', 1, 33, '2024-10-15 17:30:22', '2024-10-15 17:30:22'),
(294, 20, '2024-10-15 17:30:28', 1, 33, '2024-10-15 17:30:28', '2024-10-15 17:30:28'),
(295, 20, '2024-10-15 17:30:33', 1, 33, '2024-10-15 17:30:33', '2024-10-15 17:30:33'),
(296, 20, '2024-10-15 17:30:38', 1, 33, '2024-10-15 17:30:38', '2024-10-15 17:30:38'),
(297, 20, '2024-10-15 17:30:43', 1, 33, '2024-10-15 17:30:43', '2024-10-15 17:30:43'),
(298, 20, '2024-10-15 17:30:49', 1, 33, '2024-10-15 17:30:49', '2024-10-15 17:30:49'),
(299, 20, '2024-10-15 17:30:54', 1, 33, '2024-10-15 17:30:54', '2024-10-15 17:30:54'),
(300, 20, '2024-10-15 17:30:59', 1, 33, '2024-10-15 17:30:59', '2024-10-15 17:30:59'),
(301, 20, '2024-10-15 17:31:05', 1, 33, '2024-10-15 17:31:05', '2024-10-15 17:31:05'),
(302, 20, '2024-10-15 17:31:10', 1, 33, '2024-10-15 17:31:10', '2024-10-15 17:31:10'),
(303, 20, '2024-10-15 17:31:15', 1, 33, '2024-10-15 17:31:15', '2024-10-15 17:31:15'),
(304, 20, '2024-10-15 17:31:20', 1, 33, '2024-10-15 17:31:20', '2024-10-15 17:31:20'),
(305, 20, '2024-10-15 17:31:26', 1, 33, '2024-10-15 17:31:26', '2024-10-15 17:31:26'),
(306, 20, '2024-10-15 17:31:31', 1, 33, '2024-10-15 17:31:31', '2024-10-15 17:31:31'),
(307, 20, '2024-10-15 17:31:36', 1, 33, '2024-10-15 17:31:36', '2024-10-15 17:31:36'),
(308, 20, '2024-10-15 17:31:41', 1, 33, '2024-10-15 17:31:41', '2024-10-15 17:31:41'),
(309, 20, '2024-10-15 17:31:47', 1, 33, '2024-10-15 17:31:47', '2024-10-15 17:31:47'),
(310, 20, '2024-10-15 17:31:52', 1, 33, '2024-10-15 17:31:52', '2024-10-15 17:31:52'),
(311, 20, '2024-10-15 17:31:58', 1, 33, '2024-10-15 17:31:58', '2024-10-15 17:31:58'),
(312, 20, '2024-10-15 17:32:03', 1, 33, '2024-10-15 17:32:03', '2024-10-15 17:32:03'),
(313, 20, '2024-10-15 17:32:09', 1, 33, '2024-10-15 17:32:09', '2024-10-15 17:32:09'),
(314, 20, '2024-10-15 17:32:14', 1, 33, '2024-10-15 17:32:14', '2024-10-15 17:32:14'),
(315, 20, '2024-10-15 17:32:19', 1, 33, '2024-10-15 17:32:20', '2024-10-15 17:32:20'),
(316, 20, '2024-10-15 17:32:25', 1, 33, '2024-10-15 17:32:25', '2024-10-15 17:32:25'),
(317, 20, '2024-10-15 17:32:30', 1, 33, '2024-10-15 17:32:30', '2024-10-15 17:32:30'),
(318, 20, '2024-10-15 17:32:36', 1, 33, '2024-10-15 17:32:36', '2024-10-15 17:32:36'),
(319, 20, '2024-10-15 17:32:41', 1, 33, '2024-10-15 17:32:41', '2024-10-15 17:32:41'),
(320, 20, '2024-10-15 17:32:47', 1, 33, '2024-10-15 17:32:47', '2024-10-15 17:32:47'),
(321, 20, '2024-10-15 17:32:52', 1, 33, '2024-10-15 17:32:52', '2024-10-15 17:32:52'),
(322, 20, '2024-10-15 17:32:57', 1, 33, '2024-10-15 17:32:57', '2024-10-15 17:32:57'),
(323, 20, '2024-10-15 17:33:03', 1, 33, '2024-10-15 17:33:03', '2024-10-15 17:33:03'),
(324, 20, '2024-10-15 17:33:08', 1, 33, '2024-10-15 17:33:08', '2024-10-15 17:33:08'),
(325, 20, '2024-10-15 17:33:13', 1, 33, '2024-10-15 17:33:13', '2024-10-15 17:33:13'),
(326, 20, '2024-10-15 17:33:18', 1, 33, '2024-10-15 17:33:18', '2024-10-15 17:33:18'),
(327, 20, '2024-10-15 17:33:23', 1, 33, '2024-10-15 17:33:23', '2024-10-15 17:33:23'),
(328, 20, '2024-10-15 17:33:29', 1, 33, '2024-10-15 17:33:29', '2024-10-15 17:33:29'),
(329, 20, '2024-10-15 17:33:34', 1, 33, '2024-10-15 17:33:34', '2024-10-15 17:33:34'),
(330, 20, '2024-10-15 17:33:39', 1, 33, '2024-10-15 17:33:39', '2024-10-15 17:33:39'),
(331, 20, '2024-10-15 17:33:45', 1, 33, '2024-10-15 17:33:45', '2024-10-15 17:33:45'),
(332, 20, '2024-10-15 17:33:50', 1, 33, '2024-10-15 17:33:50', '2024-10-15 17:33:50'),
(333, 20, '2024-10-15 17:33:55', 1, 33, '2024-10-15 17:33:55', '2024-10-15 17:33:55'),
(334, 20, '2024-10-15 17:34:00', 1, 33, '2024-10-15 17:34:01', '2024-10-15 17:34:01'),
(335, 20, '2024-10-15 17:34:06', 1, 33, '2024-10-15 17:34:06', '2024-10-15 17:34:06'),
(336, 20, '2024-10-15 17:34:11', 1, 33, '2024-10-15 17:34:11', '2024-10-15 17:34:11'),
(337, 20, '2024-10-15 17:34:16', 1, 33, '2024-10-15 17:34:16', '2024-10-15 17:34:16'),
(338, 20, '2024-10-15 17:34:21', 1, 33, '2024-10-15 17:34:21', '2024-10-15 17:34:21'),
(339, 20, '2024-10-15 17:34:27', 1, 33, '2024-10-15 17:34:27', '2024-10-15 17:34:27'),
(340, 20, '2024-10-15 17:34:32', 1, 33, '2024-10-15 17:34:32', '2024-10-15 17:34:32'),
(341, 20, '2024-10-15 17:34:37', 1, 33, '2024-10-15 17:34:37', '2024-10-15 17:34:37'),
(342, 20, '2024-10-15 17:34:42', 1, 33, '2024-10-15 17:34:42', '2024-10-15 17:34:42'),
(343, 20, '2024-10-15 17:34:48', 1, 33, '2024-10-15 17:34:48', '2024-10-15 17:34:48'),
(344, 20, '2024-10-15 17:34:53', 1, 33, '2024-10-15 17:34:53', '2024-10-15 17:34:53'),
(345, 20, '2024-10-15 17:34:58', 1, 33, '2024-10-15 17:34:58', '2024-10-15 17:34:58'),
(346, 20, '2024-10-15 17:35:03', 1, 33, '2024-10-15 17:35:03', '2024-10-15 17:35:03'),
(347, 20, '2024-10-15 17:35:08', 1, 33, '2024-10-15 17:35:08', '2024-10-15 17:35:08'),
(348, 20, '2024-10-15 17:35:13', 1, 33, '2024-10-15 17:35:13', '2024-10-15 17:35:13'),
(349, 20, '2024-10-15 17:35:19', 1, 33, '2024-10-15 17:35:19', '2024-10-15 17:35:19'),
(350, 20, '2024-10-15 17:35:24', 1, 33, '2024-10-15 17:35:24', '2024-10-15 17:35:24'),
(351, 20, '2024-10-15 17:35:29', 1, 33, '2024-10-15 17:35:29', '2024-10-15 17:35:29'),
(352, 20, '2024-10-15 17:35:35', 1, 33, '2024-10-15 17:35:35', '2024-10-15 17:35:35'),
(353, 20, '2024-10-15 17:35:40', 1, 33, '2024-10-15 17:35:40', '2024-10-15 17:35:40'),
(354, 20, '2024-10-15 17:35:47', 1, 33, '2024-10-15 17:35:47', '2024-10-15 17:35:47'),
(355, 20, '2024-10-15 17:35:53', 1, 33, '2024-10-15 17:35:53', '2024-10-15 17:35:53'),
(356, 20, '2024-10-15 17:35:58', 1, 33, '2024-10-15 17:35:58', '2024-10-15 17:35:58'),
(357, 20, '2024-10-15 17:36:04', 1, 33, '2024-10-15 17:36:04', '2024-10-15 17:36:04'),
(358, 20, '2024-10-15 17:36:09', 1, 33, '2024-10-15 17:36:09', '2024-10-15 17:36:09'),
(359, 20, '2024-10-15 17:36:14', 1, 33, '2024-10-15 17:36:15', '2024-10-15 17:36:15'),
(360, 20, '2024-10-15 17:36:20', 1, 33, '2024-10-15 17:36:20', '2024-10-15 17:36:20'),
(361, 20, '2024-10-15 17:36:25', 1, 33, '2024-10-15 17:36:25', '2024-10-15 17:36:25'),
(362, 20, '2024-10-15 17:36:30', 1, 33, '2024-10-15 17:36:30', '2024-10-15 17:36:30'),
(363, 20, '2024-10-15 17:36:36', 1, 33, '2024-10-15 17:36:36', '2024-10-15 17:36:36'),
(364, 20, '2024-10-15 17:36:41', 1, 33, '2024-10-15 17:36:41', '2024-10-15 17:36:41'),
(365, 20, '2024-10-15 17:36:46', 1, 33, '2024-10-15 17:36:46', '2024-10-15 17:36:46'),
(366, 20, '2024-10-15 17:36:51', 1, 33, '2024-10-15 17:36:51', '2024-10-15 17:36:51'),
(367, 20, '2024-10-15 17:36:56', 1, 33, '2024-10-15 17:36:56', '2024-10-15 17:36:56'),
(368, 20, '2024-10-15 17:37:02', 1, 33, '2024-10-15 17:37:02', '2024-10-15 17:37:02'),
(369, 20, '2024-10-15 17:37:07', 1, 33, '2024-10-15 17:37:07', '2024-10-15 17:37:07'),
(370, 20, '2024-10-15 17:37:12', 1, 33, '2024-10-15 17:37:12', '2024-10-15 17:37:12'),
(371, 20, '2024-10-15 17:37:17', 1, 33, '2024-10-15 17:37:17', '2024-10-15 17:37:17'),
(372, 20, '2024-10-15 17:37:22', 1, 33, '2024-10-15 17:37:22', '2024-10-15 17:37:22'),
(373, 20, '2024-10-15 17:37:28', 1, 33, '2024-10-15 17:37:28', '2024-10-15 17:37:28'),
(374, 20, '2024-10-15 17:37:33', 1, 33, '2024-10-15 17:37:33', '2024-10-15 17:37:33'),
(375, 20, '2024-10-15 17:37:38', 1, 33, '2024-10-15 17:37:38', '2024-10-15 17:37:38'),
(376, 20, '2024-10-15 17:37:43', 1, 33, '2024-10-15 17:37:44', '2024-10-15 17:37:44'),
(377, 20, '2024-10-15 17:37:49', 1, 33, '2024-10-15 17:37:49', '2024-10-15 17:37:49'),
(378, 20, '2024-10-15 17:37:54', 1, 33, '2024-10-15 17:37:54', '2024-10-15 17:37:54'),
(379, 20, '2024-10-15 17:37:59', 1, 33, '2024-10-15 17:37:59', '2024-10-15 17:37:59'),
(380, 20, '2024-10-15 17:38:04', 1, 33, '2024-10-15 17:38:04', '2024-10-15 17:38:04'),
(381, 20, '2024-10-15 17:38:09', 1, 33, '2024-10-15 17:38:09', '2024-10-15 17:38:09'),
(382, 20, '2024-10-15 17:38:15', 1, 33, '2024-10-15 17:38:15', '2024-10-15 17:38:15'),
(383, 20, '2024-10-15 17:38:20', 1, 33, '2024-10-15 17:38:20', '2024-10-15 17:38:20'),
(384, 20, '2024-10-15 17:38:25', 1, 33, '2024-10-15 17:38:25', '2024-10-15 17:38:25'),
(385, 20, '2024-10-15 17:38:30', 1, 33, '2024-10-15 17:38:30', '2024-10-15 17:38:30'),
(386, 20, '2024-10-15 17:38:35', 1, 33, '2024-10-15 17:38:35', '2024-10-15 17:38:35'),
(387, 20, '2024-10-15 17:38:40', 1, 33, '2024-10-15 17:38:40', '2024-10-15 17:38:40'),
(388, 20, '2024-10-15 17:38:45', 1, 33, '2024-10-15 17:38:45', '2024-10-15 17:38:45'),
(389, 20, '2024-10-15 17:38:51', 1, 33, '2024-10-15 17:38:51', '2024-10-15 17:38:51'),
(390, 20, '2024-10-15 17:38:56', 1, 33, '2024-10-15 17:38:56', '2024-10-15 17:38:56'),
(391, 20, '2024-10-15 17:39:01', 1, 33, '2024-10-15 17:39:01', '2024-10-15 17:39:01'),
(392, 20, '2024-10-15 17:39:06', 1, 33, '2024-10-15 17:39:06', '2024-10-15 17:39:06'),
(393, 20, '2024-10-15 17:39:11', 1, 33, '2024-10-15 17:39:11', '2024-10-15 17:39:11'),
(394, 20, '2024-10-15 17:39:16', 1, 33, '2024-10-15 17:39:16', '2024-10-15 17:39:16'),
(395, 20, '2024-10-15 17:39:22', 1, 33, '2024-10-15 17:39:22', '2024-10-15 17:39:22'),
(396, 20, '2024-10-15 17:39:27', 1, 33, '2024-10-15 17:39:27', '2024-10-15 17:39:27'),
(397, 20, '2024-10-15 17:39:32', 1, 33, '2024-10-15 17:39:32', '2024-10-15 17:39:32'),
(398, 20, '2024-10-15 17:39:37', 1, 33, '2024-10-15 17:39:37', '2024-10-15 17:39:37'),
(399, 20, '2024-10-15 17:39:42', 1, 33, '2024-10-15 17:39:42', '2024-10-15 17:39:42'),
(400, 20, '2024-10-15 17:39:47', 1, 33, '2024-10-15 17:39:47', '2024-10-15 17:39:47'),
(401, 20, '2024-10-15 17:39:53', 1, 33, '2024-10-15 17:39:53', '2024-10-15 17:39:53'),
(402, 20, '2024-10-15 17:39:58', 1, 33, '2024-10-15 17:39:58', '2024-10-15 17:39:58'),
(403, 20, '2024-10-15 17:40:03', 1, 33, '2024-10-15 17:40:03', '2024-10-15 17:40:03'),
(404, 20, '2024-10-15 17:40:08', 1, 33, '2024-10-15 17:40:08', '2024-10-15 17:40:08'),
(405, 20, '2024-10-15 17:40:13', 1, 33, '2024-10-15 17:40:13', '2024-10-15 17:40:13'),
(406, 20, '2024-10-15 17:40:18', 1, 33, '2024-10-15 17:40:18', '2024-10-15 17:40:18'),
(407, 20, '2024-10-15 17:40:24', 1, 33, '2024-10-15 17:40:24', '2024-10-15 17:40:24'),
(408, 20, '2024-10-15 17:40:29', 1, 33, '2024-10-15 17:40:29', '2024-10-15 17:40:29'),
(409, 20, '2024-10-15 17:40:34', 1, 33, '2024-10-15 17:40:34', '2024-10-15 17:40:34'),
(410, 20, '2024-10-15 17:40:39', 1, 33, '2024-10-15 17:40:39', '2024-10-15 17:40:39'),
(411, 20, '2024-10-15 17:40:44', 1, 33, '2024-10-15 17:40:44', '2024-10-15 17:40:44'),
(412, 20, '2024-10-15 17:40:49', 1, 33, '2024-10-15 17:40:49', '2024-10-15 17:40:49'),
(413, 20, '2024-10-15 17:40:55', 1, 33, '2024-10-15 17:40:55', '2024-10-15 17:40:55'),
(414, 20, '2024-10-15 17:41:00', 1, 33, '2024-10-15 17:41:00', '2024-10-15 17:41:00'),
(415, 20, '2024-10-15 17:41:05', 1, 33, '2024-10-15 17:41:05', '2024-10-15 17:41:05'),
(416, 20, '2024-10-15 17:41:10', 1, 33, '2024-10-15 17:41:10', '2024-10-15 17:41:10'),
(417, 20, '2024-10-15 17:41:15', 1, 33, '2024-10-15 17:41:15', '2024-10-15 17:41:15'),
(418, 20, '2024-10-15 17:41:20', 1, 33, '2024-10-15 17:41:20', '2024-10-15 17:41:20'),
(419, 20, '2024-10-15 17:41:25', 1, 33, '2024-10-15 17:41:25', '2024-10-15 17:41:25'),
(420, 20, '2024-10-15 17:41:30', 1, 33, '2024-10-15 17:41:31', '2024-10-15 17:41:31'),
(421, 20, '2024-10-15 17:41:36', 1, 33, '2024-10-15 17:41:36', '2024-10-15 17:41:36'),
(422, 20, '2024-10-15 17:41:41', 1, 33, '2024-10-15 17:41:41', '2024-10-15 17:41:41'),
(423, 20, '2024-10-15 17:41:46', 1, 33, '2024-10-15 17:41:46', '2024-10-15 17:41:46'),
(424, 20, '2024-10-15 17:41:51', 1, 33, '2024-10-15 17:41:51', '2024-10-15 17:41:51'),
(425, 20, '2024-10-15 17:41:57', 1, 33, '2024-10-15 17:41:57', '2024-10-15 17:41:57'),
(426, 20, '2024-10-15 17:42:02', 1, 33, '2024-10-15 17:42:02', '2024-10-15 17:42:02'),
(427, 20, '2024-10-15 17:42:07', 1, 33, '2024-10-15 17:42:07', '2024-10-15 17:42:07'),
(428, 20, '2024-10-15 17:42:12', 1, 33, '2024-10-15 17:42:12', '2024-10-15 17:42:12'),
(429, 20, '2024-10-15 17:42:18', 1, 33, '2024-10-15 17:42:18', '2024-10-15 17:42:18'),
(430, 20, '2024-10-15 17:42:23', 1, 33, '2024-10-15 17:42:23', '2024-10-15 17:42:23'),
(431, 20, '2024-10-15 17:42:28', 1, 33, '2024-10-15 17:42:28', '2024-10-15 17:42:28');

-- --------------------------------------------------------

--
-- Structure de la table `ruches`
--

CREATE TABLE `ruches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_ruche` varchar(255) NOT NULL,
  `ruchier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ruches`
--

INSERT INTO `ruches` (`id`, `nom_ruche`, `ruchier_id`, `created_at`, `updated_at`) VALUES
(1, 'ruche One', 1, NULL, NULL),
(2, 'ruche Two', 1, NULL, NULL),
(3, 'boss', 4, '2024-09-09 11:04:58', '2024-09-09 11:04:58'),
(4, 'ruche ONE', 4, '2024-09-09 11:06:24', '2024-09-09 11:09:51'),
(5, 'boss', 3, NULL, NULL),
(6, 'coloc', 6, NULL, NULL),
(7, 'bossit', 4, NULL, NULL),
(8, 'eleonor', 5, NULL, NULL),
(9, 'koudougou', 3, NULL, NULL),
(10, 'dedougou', 6, NULL, NULL),
(11, 'Ouagadougou', 7, NULL, NULL),
(12, 'apicRUCHE_1', 19, '2024-10-08 11:38:30', '2024-10-08 11:38:30'),
(13, 'apicRUCHE_1', 20, '2024-10-08 11:39:50', '2024-10-08 11:39:50'),
(14, 'apicRUCHE_1', 21, '2024-10-08 11:40:33', '2024-10-08 11:40:33'),
(15, 'apicRUCHE_1', 25, '2024-10-08 11:44:40', '2024-10-08 11:44:40'),
(16, 'apicRUCHE_1', 28, '2024-10-08 11:49:26', '2024-10-08 11:49:26'),
(17, 'apicRUCHE_1', 29, '2024-10-08 13:13:06', '2024-10-08 13:13:06'),
(18, 'apicRUCHE_1', 30, '2024-10-08 16:16:18', '2024-10-08 16:16:18'),
(19, 'apicRUCHE_1', 32, '2024-10-08 17:00:40', '2024-10-08 17:00:40'),
(20, 'apicRUCHE_1', 35, '2024-10-14 18:31:09', '2024-10-14 18:31:09'),
(21, 'apicRUCHE_1', 35, '2024-10-14 18:35:31', '2024-10-14 18:35:31'),
(22, 'apicRUCHE_1', 35, '2024-10-14 18:42:17', '2024-10-14 18:42:17'),
(23, 'apicRUCHE_1', 35, '2024-10-14 18:44:46', '2024-10-14 18:44:46'),
(24, 'apicRUCHE_1', 35, '2024-10-14 18:52:04', '2024-10-14 18:52:04'),
(25, 'apicRUCHE_1', 35, '2024-10-14 18:56:05', '2024-10-14 18:56:05'),
(26, 'apicRUCHE_1', 35, '2024-10-15 13:20:28', '2024-10-15 13:20:28'),
(27, 'apicRUCHE_1', 35, '2024-10-15 13:30:17', '2024-10-15 13:30:17'),
(28, 'apicRUCHE_1', 35, '2024-10-15 13:45:29', '2024-10-15 13:45:29'),
(29, 'apicRUCHE_1', 35, '2024-10-15 13:49:24', '2024-10-15 13:49:24'),
(30, 'apicRUCHE_1', 35, '2024-10-15 14:16:30', '2024-10-15 14:16:30'),
(31, 'apicRUCHE_1', 35, '2024-10-15 14:17:56', '2024-10-15 14:17:56'),
(32, 'apicRUCHE_1', 35, '2024-10-15 14:26:38', '2024-10-15 14:26:38'),
(33, 'apicRUCHE_1', 35, '2024-10-15 14:30:21', '2024-10-15 14:30:21');

-- --------------------------------------------------------

--
-- Structure de la table `ruchiers`
--

CREATE TABLE `ruchiers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_ruchier` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ruchiers`
--

INSERT INTO `ruchiers` (`id`, `nom_ruchier`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'prince', 1, NULL, NULL),
(2, 'apic one', 4, NULL, NULL),
(3, 'Asterix', 3, '2024-09-09 10:18:17', '2024-09-09 10:33:29'),
(4, 'BOss', 3, '2024-09-09 10:20:13', '2024-09-09 10:30:15'),
(5, 'Ruchier Dedougou', 3, '2024-09-09 10:34:48', '2024-09-18 14:48:54'),
(6, 'Ruche Prince', 3, '2024-09-09 10:35:44', '2024-09-18 14:43:18'),
(7, 'Ouaga Ruchier', 3, NULL, '2024-10-03 10:31:50'),
(8, 'test', NULL, NULL, '2024-10-03 10:34:49'),
(9, 'prince', NULL, '2024-10-08 10:46:57', '2024-10-08 10:46:57'),
(10, 'apic_1', NULL, '2024-10-08 11:17:50', '2024-10-08 11:17:50'),
(11, 'apic_1', NULL, '2024-10-08 11:25:48', '2024-10-08 11:25:48'),
(12, 'apic_1', NULL, '2024-10-08 11:27:20', '2024-10-08 11:27:20'),
(13, 'apic_1', NULL, '2024-10-08 11:29:40', '2024-10-08 11:29:40'),
(14, 'apic_1', NULL, '2024-10-08 11:31:07', '2024-10-08 11:31:07'),
(15, 'apic_1', NULL, '2024-10-08 11:33:10', '2024-10-08 11:33:10'),
(16, 'apic_1', NULL, '2024-10-08 11:33:52', '2024-10-08 11:33:52'),
(17, 'apic_1', NULL, '2024-10-08 11:34:55', '2024-10-08 11:34:55'),
(18, 'apic_1', NULL, '2024-10-08 11:36:38', '2024-10-08 11:36:38'),
(19, 'odc', 13, '2024-10-08 11:38:13', '2024-10-08 17:01:19'),
(20, 'apic_1', NULL, '2024-10-08 11:39:28', '2024-10-08 11:39:28'),
(21, 'apic_1', NULL, '2024-10-08 11:40:17', '2024-10-08 11:40:17'),
(22, 'apic_1', NULL, '2024-10-08 11:41:10', '2024-10-08 11:41:10'),
(23, 'apic_1', NULL, '2024-10-08 11:42:49', '2024-10-08 11:42:49'),
(24, 'apic_1', NULL, '2024-10-08 11:42:59', '2024-10-08 11:42:59'),
(25, 'apic_1', NULL, '2024-10-08 11:44:23', '2024-10-08 11:44:23'),
(26, 'apic_1', NULL, '2024-10-08 11:48:30', '2024-10-08 11:48:30'),
(27, 'apic_1', NULL, '2024-10-08 11:48:53', '2024-10-08 11:48:53'),
(28, 'igor', 3, '2024-10-08 11:49:06', '2024-10-08 11:55:54'),
(29, 'apic_1', NULL, '2024-10-08 13:12:48', '2024-10-08 13:12:48'),
(30, 'apic_1', NULL, '2024-10-08 16:15:32', '2024-10-08 16:15:32'),
(31, 'apic_1', NULL, '2024-10-08 16:58:20', '2024-10-08 16:58:20'),
(32, 'OSC RUCHER', 14, '2024-10-08 16:59:37', '2024-10-09 09:02:01'),
(33, 'apic_1', NULL, '2024-10-14 13:57:54', '2024-10-14 13:57:54'),
(34, 'apic_1', NULL, '2024-10-14 14:00:26', '2024-10-14 14:00:26'),
(35, 'apic_1', NULL, '2024-10-14 14:03:00', '2024-10-14 14:03:00');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3C4j5KVfplBirEC6WATaQ9CjmLOAbazFYlFOWJsp', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMHl0T0QwOFQ5RUxKYjFaSkNGWVZ4WjJUMTdJRFVZUmNmWTBvcmFwZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9yZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1726231576),
('44dAn17eFolxAGaZ5tBOpCUQma2qjTxpvkC3yGCb', NULL, '172.16.7.80', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0lWZ0Z6cUtRMldJcml6TFJFUmw4blRTR0pFSHlrUlBTVm8wdWhoZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNzIuMTYuNy44MDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1728385652),
('4L95gkpchdNLbkMTMwEjQoScOqEjSuzVVUjFBvGg', NULL, '172.16.7.79', 'Dart/3.4 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2lGaFRqN3dpOTZ3amFEZG40VXRWUTdtYld3UHJXa2JBS3BQRTQwUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNzIuMTYuNy43OTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1728468985),
('5LPhpRb1osiN3vcW8lJYuhiifOInzxALTkQOggZX', NULL, '172.16.7.79', 'Dart/3.4 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTg4VXdQUmhjU3NDV1NnTGlCSGtRWG5Fbmk4THc4ZTJiVExSaWw5bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNzIuMTYuNy43OTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1728468174),
('73ZgiiMlgzFjM3KRO3s1Bx2ALrkixCHPZVrxH97Q', NULL, '172.16.7.79', 'Dart/3.4 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnNGZlBXSTM4bnR0R0luT2M5WU9DNUo4ZTlEVDZZc2tBdlBaSG9MZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNzIuMTYuNy43OTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1728468788),
('9rxWMStunH0oHmBlLqzE1JLI69yhwZI0gETLlicO', NULL, '172.16.7.115', 'Dart/3.4 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWxSWFhIQnpsZDNjNlRsQTJzakt5bzVNYjMwblJzNGFYZ25LTzd2QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHA6Ly8xNzIuMTYuNy4xMTU6ODAwMC8vc3RvcmFnZS9hdmF0YXIvb3B6ODl0b1VDb1dTNk4zc1ZveUxzZnBtaWJNSjlKWXZIZ21SQjB1NC5wbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1727950289),
('BogceGSLbU47T5ZNTPMkTBqMZIAO8vVM2dXkFDhK', NULL, '172.16.7.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm5mSE5Hdk9tRlJxMGlGTGpFMDEyUUd4b0RnTndyU1hrVXBnQmtFNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNzIuMTYuNy4xMTU6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727949472),
('cpvaq8xEKrKCUNU0NoYq4ALoJraSHaVzg1d7D76R', NULL, '172.16.7.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFFyNVcxUnptQUVRYjNpa25XTG81alAzQ045Y0JQbGRvSXR3eTNESiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNzIuMTYuNy4xMTU6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727949471),
('dQ9ENhgg5PNeXWTzS8CDyi0PQJ0zqK6uCQjIYkQe', 3, '172.16.7.115', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUHh5TVNQbEZSUnBLelJlUUNQdWQ4OHlUem1VYVJhbnk4Mzk2aHM5UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNzIuMTYuNy4xMTU6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1727949006),
('dqq9mojcVqjflIUVioFi6npvJQjKc4JFAMq0PHcL', NULL, '172.16.7.39', 'Mozilla/5.0 (X11; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTl0eDVKc1lKaDhZSHF0V05RZVVFUFlsYXRUUmwzUHZmQVZ0c3pYTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNzIuMTYuNy4zOTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1727892683),
('eqyxdmCMEPdT6dVpRPHhmdrX83pxFwIWia0n95mm', NULL, '127.0.0.1', 'PostmanRuntime/7.39.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVB6Wk1BMTJIRGt6dFpMNjNKSTFOS1BvazZXZGdqMUpWUGpkb0luUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727109852),
('EXFY1g7TvFaDEg3WYukUqgUnXzlIzOYeeWdUOv7T', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOXdUQkh4RTRoNUZRUWhIQ2JFZkpLNDIzakZ2cmsyV1RRNWZQQ3J6biI7czo1OiJzdGF0ZSI7czo0MDoiY1docDB3eDVmak9ISzZKa0k1SG9WZ21lNm1pMHMwVnpqdllGYlVPbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c2VyLnNob3cvMyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1726571356),
('fBBORiDYMsKPp6KmPzUDY0HdsZRksw5jQmqbT4s8', NULL, '172.16.7.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUFNdzNJTEpmNmloMDhHb0dHVnQ0SlVYRXE0U2NHR0tyU3Vtakl1ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNzIuMTYuNy4zOTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1727892946),
('gHHz6TUeQF9LRlKm9GLGYhHeGGM35ww7qc5tULp1', NULL, '172.16.7.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm5sZ2wwOUdhRU9jaHUydVNkcHRjUkpXcE5FblBKVWRPN0d2NDE1ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNzIuMTYuNy4zOTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1727892945),
('HED4iU7dSZDOfFuuE6qVHkSTwnyoFO9O15AOIEYG', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVjh0c055NGRjMzFsV0JCQ2hPM1FuOUhOM2hHdXpYSURMSjJhc0xNZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9yZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1726846170),
('Hv38AeRKi7D5jpz60x6RdEOXAMrT5Lhj5GsXgLqM', NULL, '172.16.7.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUtiU21mMlhLUWsxWUU4dlRDbWxVcHJuTFVDY0hOb3JqWkNWUVZncyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNzIuMTYuNy4xMTU6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727949473),
('I8M9NCpgFNORO6v9aEAofiWUNW51ClY3FuKGeyw0', NULL, '172.16.7.79', 'Dart/3.4 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickFSczlGWkV3T0pRdFNVWEpyZTBYMkZGejdkV1NIUWxabG9EbVZnbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNzIuMTYuNy43OTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1728468853),
('iBJOPk70vPjik7O0Yj2whVK5IBJSa5iVJjMvZHIu', NULL, '172.16.7.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1BlQ3ZjdE1Ob1dmVlY3UDhCU0lLUXExUjRzdnNWVlpGbGdka0JjaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNzIuMTYuNy4zOTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1727892947),
('iCstbCxFkwwL09DEiRuH8QoHJyoDTz8cWdjL8X60', NULL, '172.16.7.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFRnenZpQUZIeTZOdTlGMjFEcTltWno5R3VscmV3OUFSMXlmUlJwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNzIuMTYuNy4xMTU6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727949470),
('it92fOAMEkxcFuhnZfCEAQeWIwPivn1QEkX6NhmY', NULL, '172.16.7.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2s0aFZBUWZ0Mjduc2Y3NlQ2U0dKTmFjNlJadE91aG91a1FxOTFSSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNzIuMTYuNy4zOTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1727892947),
('JJPNGpiEKYZNwgMkQvDmk4GNDA3wqjZlt5Sa7JAk', NULL, '172.16.7.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemR0QVJXOTJZQzFTZXc0alV6MDBYVUR6ekR5d0dSYzd6cXBtRzNQUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNzIuMTYuNy4zOTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1727892946),
('JmGKjFUIJ1lu7Qoq7gF7iOXXpMLBzHoe1Rxa4GZT', NULL, '172.16.7.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjdnamdoeGVYZzhQTGFkVktzQ3JVdEpjMWZiZDBaeXZBMmF2WlpQeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNzIuMTYuNy4xMTU6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727949472),
('k7RGzxnuq1fhyekugdJMmSscPEAsKw6uQe0LMRUy', NULL, '172.16.7.98', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlRKVThjRWo2cDhDM1ZFN2ZIbHE4c3EyRGhURTdjVUlGMlpLSUw2ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNzIuMTYuNy45ODo4MDAwIjt9fQ==', 1728915237),
('KOrGPQCBLiFLVx6UoWaj1W4zAA1kLTbOzMFPrfwS', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRUNnZGd1MEhaaDMyYnhJUXdOT1dUekFucG9QSmVFVHRnYUZQUWptNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c2VyLnNob3cvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1727432656),
('KYSoKUWuSDhb0VIghB70DnhesoT3rDUczLMR1cGz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZmNFcER6NWI5Q1FqajdRa2pUT1BhcVppR3JJRG0xVmxPNUpCRTJ0WCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3Byb2JsZW1lIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726593202),
('LNNv25fid7v4NY64zXhCs0h2uWuwuqvOwBzSloXk', NULL, '172.16.7.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVBSc1Y2bEZEZzZlVHlrVlZDRnh3NFUwbmxzWllhNFBnN2ZaWHhXZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNzIuMTYuNy4xMTU6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727949471),
('O9xbFJY4myNbdsWjRHM8Tf74dhuxw8C6bww8Qh7u', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 14; SM-A145F Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/128.0.6613.146 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT1VEMDJDb29IR3ZpS3gxNXh1anRRVXc3ZExmWkpVakg5VWZtQjMxVSI7czo1OiJzdGF0ZSI7czo0MDoiZ1N3UDVMTWxITWpJVXExa0ZncHFQREFTQU1CR2R0Zm8yczRFckhJMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hdXRoL2ZhY2Vib29rL3JlZGlyZWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1727528422),
('OT5qA4u0Bv97eP73gZ8ddGuEe0K5z5GvfSiMbUWy', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia3p5aWw5WXFxaERyNnhkOGdiVTNIR015ZFJWOHBYSHFBMXA3ME5XdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c2VyLnNob3cvMyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1726585107),
('P7oLSgZTlAzhxpvnZgnz5m9An38P2iRRrRgV357W', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVUpYUzJoekt6bEVHeU5Zak9Pd29Gb3R0UGpHemJZdm8wWWhFVjBaZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9yZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1726675416),
('PeL2ZXYW0ptF83R7DdZPamjmfIEcC9NERdeBCksR', NULL, '172.16.7.79', 'Dart/3.4 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXNMTlFzbzhWNklHb2RHRlNaVmdJQ0hyZENFVmZiYkJHVGhrUlUyaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNzIuMTYuNy43OTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1728469283),
('pimq0cLIKjZucSeiSmdF94dYseeHyyFM6thUfjc9', NULL, '172.16.7.94', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjkwTGtteElHMHR6dXdjMUlJWmtVQjdHdFo5SGpZd2FlQTNFMUtENCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNzIuMTYuNy45NDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1728308095),
('pxO5OKR7fUewapt6lm8deVDRRoaw93o01KJzHFzn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmNUdEdJU0RuNkNUZXg5UUFhbHpWOVJKNkM0TzlCaXUyOTFqQnhkdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727520363),
('s842d1fL4RN5rrwXEQ7G10F5JyClOdXn8cMrUYwa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTzVhVzlRWUhMblJlRFJkZWl6S0hoZ1Z1RUtTQ3RBbEpKWWhOVGY0bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1726737712),
('SKNAcjn8cYSRyh9tJIRVliL7sIXHIjiAxmtvuFOz', NULL, '172.16.7.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVVWeGpUaUd6WDN4SE5ZZVhtYmh1TU9Ud2hNWm9ObTFuc3FPVXBObCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNzIuMTYuNy4zOTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1727892948),
('UXcJot0661MUnElOhw7kBes4LVlUvMSg9MGTxhIt', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia1Q0eGk4TGx5Z2k2V1hrRmNPSjRQS2x6cFRHUEtYUFFiVDJlWXZDMSI7czo1OiJzdGF0ZSI7czo0MDoiejM1ZU5XcEw5WUwwY2FqU00yakpiTUhnUUpaaHZHMXNGa2xWNHlsMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hdXRoL2dvb2dsZS9yZWRpcmVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727528923),
('W9MFIUFdxKC1dEXBEv8TogqOipA9pNptbprLwVky', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMHdNM0MyeXZ0T3V1RmZYNFRrd0VHSjlKTU9yMzJGckRTRDRVTjVXQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyLnNob3cvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1726567240),
('wJlQ8nAvPhYhnCItA2gDVjGj5DtQnP0CwI5rRjxd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicXJHYTZ5TzE0OWk4M1R0bW94QU1OeThicGJaRTVkWmt2YVYyRzFVdCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2Rhc2hib3JkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9yZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726593200),
('wvV14EUEKLXk51Y7mdlwLicvsYiTW00YPWTvTVTc', NULL, '172.16.7.79', 'Dart/3.4 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1oySlE3bzF2UEFTc2MycjZvMWM1d0lDR2QxSzNld1dubXhGRWpZTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNzIuMTYuNy43OTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1728468766),
('xonviiGYs1La5oKuuLITHTZfLaTX1FRZKo5m43ah', NULL, '127.0.0.1', 'PostmanRuntime/7.39.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0hjZUlXT25NSlU2S3FMbW10RWNWQ0t5cjFMMXVZME4xNTl0bllxZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727351389),
('XQh7ObUPbe0WM6iQMMqBUrA4HJZ7rlmVZedkZHZ2', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmJtaFNvY2N4VTg2RkZsRVNQSlF5UDZ4aEdROFRoOVVHR0ZnVFZGRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ0OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYXV0aC9nb29nbGUvY2FsbGJhY2s/YXV0aHVzZXI9MCZjb2RlPTQlMkYwQVZHN2ZpUlAzUWxvYmFnR21DVXRHR1NVRFBVbGNJRmV5ZGM3akhDTnlZWl9wRzlETmhmMTFld1JGcWt2VlZ0clU2OUtPdyZwcm9tcHQ9bm9uZSZzY29wZT1lbWFpbCUyMHByb2ZpbGUlMjBodHRwcyUzQSUyRiUyRnd3dy5nb29nbGVhcGlzLmNvbSUyRmF1dGglMkZ1c2VyaW5mby5wcm9maWxlJTIwb3BlbmlkJTIwaHR0cHMlM0ElMkYlMkZ3d3cuZ29vZ2xlYXBpcy5jb20lMkZhdXRoJTJGdXNlcmluZm8uZW1haWwmc3RhdGU9ejM1ZU5XcEw5WUwwY2FqU00yakpiTUhnUUpaaHZHMXNGa2xWNHlsMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727528924),
('xt7LHl3XuwnCcmb95cIcjp419U037z4WvUuaADA2', 3, '172.16.7.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRzJxYldGa0lpb1ZjWVJOV2ZHSWxIOVFxN1dBZndGWVRFUm1iTlFHaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xNzIuMTYuNy4zOTo4MDAwL3VzZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1727893032);

-- --------------------------------------------------------

--
-- Structure de la table `temperatures`
--

CREATE TABLE `temperatures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `constante` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `ruche_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `temperatures`
--

INSERT INTO `temperatures` (`id`, `constante`, `date`, `etat`, `ruche_id`, `created_at`, `updated_at`) VALUES
(1, 40, '2024-08-28 10:14:54', 0, 1, NULL, NULL),
(2, 40, '2024-08-29 23:55:21', 1, 2, NULL, NULL),
(3, 0, '2024-09-02 11:12:38', 0, 2, NULL, NULL),
(4, 40, '2024-09-09 12:06:39', 1, 4, '2024-09-09 12:06:39', '2024-09-09 12:06:39'),
(5, 50, '2024-09-18 14:11:39', 1, 10, NULL, NULL),
(6, 48, '2024-09-18 14:11:39', 1, 6, NULL, NULL),
(7, 50, '2024-09-19 19:38:47', 1, 4, NULL, NULL),
(8, 60, '2024-09-26 12:26:15', 1, 8, '2024-09-26 12:26:15', '2024-09-26 12:26:15'),
(9, 89, '2024-09-26 16:05:44', 1, 8, '2024-09-26 16:05:44', '2024-09-26 16:05:44'),
(10, 84, '2024-09-26 16:57:21', 1, 8, '2024-09-26 16:57:21', '2024-09-26 16:57:21'),
(11, 15, '2024-10-02 18:46:11', 1, 11, '2024-10-02 18:46:11', '2024-10-02 18:46:11'),
(12, 15, '2024-10-02 18:46:24', 1, 11, '2024-10-02 18:46:24', '2024-10-02 18:46:24'),
(13, 15, '2024-10-02 18:46:36', 1, 11, '2024-10-02 18:46:36', '2024-10-02 18:46:36'),
(14, 15, '2024-10-02 18:46:48', 1, 11, '2024-10-02 18:46:48', '2024-10-02 18:46:48'),
(15, 15, '2024-10-02 18:47:00', 1, 11, '2024-10-02 18:47:00', '2024-10-02 18:47:00'),
(16, 15, '2024-10-02 18:47:13', 1, 11, '2024-10-02 18:47:13', '2024-10-02 18:47:13'),
(17, 15, '2024-10-02 18:47:25', 1, 11, '2024-10-02 18:47:25', '2024-10-02 18:47:25'),
(18, 15, '2024-10-02 18:47:37', 1, 11, '2024-10-02 18:47:37', '2024-10-02 18:47:37'),
(19, 15, '2024-10-02 18:47:49', 1, 11, '2024-10-02 18:47:50', '2024-10-02 18:47:50'),
(20, 15, '2024-10-02 18:48:02', 1, 11, '2024-10-02 18:48:02', '2024-10-02 18:48:02'),
(21, 15, '2024-10-02 18:48:14', 1, 11, '2024-10-02 18:48:14', '2024-10-02 18:48:14'),
(22, 15, '2024-10-02 18:48:27', 1, 11, '2024-10-02 18:48:27', '2024-10-02 18:48:27'),
(23, 15, '2024-10-02 18:48:39', 1, 11, '2024-10-02 18:48:39', '2024-10-02 18:48:39'),
(24, 15, '2024-10-02 18:48:51', 1, 11, '2024-10-02 18:48:51', '2024-10-02 18:48:51'),
(25, 15, '2024-10-02 18:49:03', 1, 11, '2024-10-02 18:49:03', '2024-10-02 18:49:03'),
(26, 15, '2024-10-02 18:49:16', 1, 11, '2024-10-02 18:49:16', '2024-10-02 18:49:16'),
(27, 15, '2024-10-02 18:49:28', 1, 11, '2024-10-02 18:49:28', '2024-10-02 18:49:28'),
(28, 15, '2024-10-02 18:49:40', 1, 11, '2024-10-02 18:49:40', '2024-10-02 18:49:40'),
(29, 15, '2024-10-02 18:49:53', 1, 11, '2024-10-02 18:49:53', '2024-10-02 18:49:53'),
(30, 15, '2024-10-02 18:50:05', 1, 11, '2024-10-02 18:50:05', '2024-10-02 18:50:05'),
(31, 15, '2024-10-02 18:50:17', 1, 11, '2024-10-02 18:50:17', '2024-10-02 18:50:17'),
(32, 15, '2024-10-02 18:50:29', 1, 11, '2024-10-02 18:50:30', '2024-10-02 18:50:30'),
(33, 15, '2024-10-02 18:50:42', 1, 11, '2024-10-02 18:50:42', '2024-10-02 18:50:42'),
(34, 15, '2024-10-02 18:50:54', 1, 11, '2024-10-02 18:50:54', '2024-10-02 18:50:54'),
(35, 15, '2024-10-02 18:51:07', 1, 11, '2024-10-02 18:51:07', '2024-10-02 18:51:07'),
(36, 15, '2024-10-02 18:51:19', 1, 11, '2024-10-02 18:51:19', '2024-10-02 18:51:19'),
(37, 15, '2024-10-02 18:51:31', 1, 11, '2024-10-02 18:51:31', '2024-10-02 18:51:31'),
(38, 15, '2024-10-02 18:51:44', 1, 11, '2024-10-02 18:51:44', '2024-10-02 18:51:44'),
(39, 15, '2024-10-02 18:51:56', 1, 11, '2024-10-02 18:51:56', '2024-10-02 18:51:56'),
(40, 15, '2024-10-02 18:52:08', 1, 11, '2024-10-02 18:52:08', '2024-10-02 18:52:08'),
(41, 15, '2024-10-02 18:52:20', 1, 11, '2024-10-02 18:52:21', '2024-10-02 18:52:21'),
(42, 15, '2024-10-02 18:52:33', 1, 11, '2024-10-02 18:52:33', '2024-10-02 18:52:33'),
(43, 15, '2024-10-02 18:52:45', 1, 11, '2024-10-02 18:52:45', '2024-10-02 18:52:45'),
(44, 15, '2024-10-02 18:52:57', 1, 11, '2024-10-02 18:52:57', '2024-10-02 18:52:57'),
(45, 15, '2024-10-02 18:53:10', 1, 11, '2024-10-02 18:53:10', '2024-10-02 18:53:10'),
(46, 15, '2024-10-02 18:53:22', 1, 11, '2024-10-02 18:53:22', '2024-10-02 18:53:22'),
(47, 15, '2024-10-02 18:53:34', 1, 11, '2024-10-02 18:53:34', '2024-10-02 18:53:34'),
(48, 15, '2024-10-02 18:53:47', 1, 11, '2024-10-02 18:53:47', '2024-10-02 18:53:47'),
(49, 15, '2024-10-02 18:53:59', 1, 11, '2024-10-02 18:53:59', '2024-10-02 18:53:59'),
(50, 15, '2024-10-02 18:54:11', 1, 11, '2024-10-02 18:54:11', '2024-10-02 18:54:11'),
(51, 15, '2024-10-02 18:54:24', 1, 11, '2024-10-02 18:54:24', '2024-10-02 18:54:24'),
(52, 15, '2024-10-02 18:54:36', 1, 11, '2024-10-02 18:54:36', '2024-10-02 18:54:36'),
(53, 15, '2024-10-02 18:54:48', 1, 11, '2024-10-02 18:54:48', '2024-10-02 18:54:48'),
(54, 15, '2024-10-02 18:55:00', 1, 11, '2024-10-02 18:55:00', '2024-10-02 18:55:00'),
(55, 15, '2024-10-02 18:55:13', 1, 11, '2024-10-02 18:55:13', '2024-10-02 18:55:13'),
(56, 15, '2024-10-02 18:55:25', 1, 11, '2024-10-02 18:55:25', '2024-10-02 18:55:25'),
(57, 15, '2024-10-02 18:55:38', 1, 11, '2024-10-02 18:55:38', '2024-10-02 18:55:38'),
(58, 15, '2024-10-02 18:55:50', 1, 11, '2024-10-02 18:55:50', '2024-10-02 18:55:50'),
(59, 15, '2024-10-02 18:56:02', 1, 11, '2024-10-02 18:56:02', '2024-10-02 18:56:02'),
(60, 15, '2024-10-02 18:56:14', 1, 11, '2024-10-02 18:56:14', '2024-10-02 18:56:14'),
(61, 15, '2024-10-02 18:56:27', 1, 11, '2024-10-02 18:56:27', '2024-10-02 18:56:27'),
(62, 15, '2024-10-02 18:56:39', 1, 11, '2024-10-02 18:56:39', '2024-10-02 18:56:39'),
(63, 15, '2024-10-02 18:56:51', 1, 11, '2024-10-02 18:56:51', '2024-10-02 18:56:51'),
(64, 15, '2024-10-02 18:57:04', 1, 11, '2024-10-02 18:57:04', '2024-10-02 18:57:04'),
(65, 15, '2024-10-02 18:57:16', 1, 11, '2024-10-02 18:57:16', '2024-10-02 18:57:16'),
(66, 15, '2024-10-02 18:57:28', 1, 11, '2024-10-02 18:57:28', '2024-10-02 18:57:28'),
(67, 15, '2024-10-02 18:57:40', 1, 11, '2024-10-02 18:57:40', '2024-10-02 18:57:40'),
(68, 15, '2024-10-02 18:57:53', 1, 11, '2024-10-02 18:57:53', '2024-10-02 18:57:53'),
(69, 15, '2024-10-02 18:58:05', 1, 11, '2024-10-02 18:58:05', '2024-10-02 18:58:05'),
(70, 15, '2024-10-02 18:58:17', 1, 11, '2024-10-02 18:58:17', '2024-10-02 18:58:17'),
(71, 15, '2024-10-02 18:58:30', 1, 11, '2024-10-02 18:58:30', '2024-10-02 18:58:30'),
(72, 15, '2024-10-02 18:58:42', 1, 11, '2024-10-02 18:58:42', '2024-10-02 18:58:42'),
(73, 23, '2024-10-08 11:49:41', 1, 16, '2024-10-08 11:49:41', '2024-10-08 11:49:41'),
(74, 0, '2024-10-08 11:49:52', 1, 16, '2024-10-08 11:49:52', '2024-10-08 11:49:52'),
(75, 37, '2024-10-08 11:53:02', 1, 16, '2024-10-08 11:53:02', '2024-10-08 11:53:02'),
(76, 23, '2024-10-08 11:56:27', 1, 16, '2024-10-08 11:56:27', '2024-10-08 11:56:27'),
(77, 0, '2024-10-08 11:59:36', 1, 16, '2024-10-08 11:59:37', '2024-10-08 11:59:37'),
(78, 0, '2024-10-08 11:59:47', 1, 16, '2024-10-08 11:59:47', '2024-10-08 11:59:47'),
(79, 38, '2024-10-08 12:03:09', 1, 16, '2024-10-08 12:03:09', '2024-10-08 12:03:09'),
(80, 23, '2024-10-08 12:06:18', 1, 16, '2024-10-08 12:06:18', '2024-10-08 12:06:18'),
(81, 0, '2024-10-08 12:09:31', 1, 16, '2024-10-08 12:09:31', '2024-10-08 12:09:31'),
(82, 38, '2024-10-08 12:10:05', 1, 16, '2024-10-08 12:10:06', '2024-10-08 12:10:06'),
(83, 39, '2024-10-08 12:10:33', 1, 16, '2024-10-08 12:10:33', '2024-10-08 12:10:33'),
(84, 0, '2024-10-08 12:10:46', 1, 16, '2024-10-08 12:10:46', '2024-10-08 12:10:46'),
(85, 0, '2024-10-08 12:10:55', 1, 16, '2024-10-08 12:10:55', '2024-10-08 12:10:55'),
(86, 39, '2024-10-08 12:14:05', 1, 16, '2024-10-08 12:14:05', '2024-10-08 12:14:05'),
(87, 22, '2024-10-08 12:17:14', 1, 16, '2024-10-08 12:17:15', '2024-10-08 12:17:15'),
(88, 0, '2024-10-08 12:20:31', 1, 16, '2024-10-08 12:20:31', '2024-10-08 12:20:31'),
(89, 0, '2024-10-08 12:20:52', 1, 16, '2024-10-08 12:20:52', '2024-10-08 12:20:52'),
(90, 0, '2024-10-08 12:21:00', 1, 16, '2024-10-08 12:21:00', '2024-10-08 12:21:00'),
(91, 40, '2024-10-08 12:24:12', 1, 16, '2024-10-08 12:24:12', '2024-10-08 12:24:12'),
(92, 23, '2024-10-08 12:27:26', 1, 16, '2024-10-08 12:27:26', '2024-10-08 12:27:26'),
(93, 0, '2024-10-08 12:27:35', 1, 16, '2024-10-08 12:27:35', '2024-10-08 12:27:35'),
(94, 39, '2024-10-08 12:30:45', 1, 16, '2024-10-08 12:30:45', '2024-10-08 12:30:45'),
(95, 23, '2024-10-08 12:34:12', 1, 16, '2024-10-08 12:34:12', '2024-10-08 12:34:12'),
(96, 0, '2024-10-08 12:34:21', 1, 16, '2024-10-08 12:34:21', '2024-10-08 12:34:21'),
(97, 22, '2024-10-08 12:37:33', 1, 16, '2024-10-08 12:37:34', '2024-10-08 12:37:34'),
(98, 0, '2024-10-08 12:40:52', 1, 16, '2024-10-08 12:40:52', '2024-10-08 12:40:52'),
(99, 22, '2024-10-08 12:41:12', 1, 16, '2024-10-08 12:41:12', '2024-10-08 12:41:12'),
(100, 0, '2024-10-08 12:41:23', 1, 16, '2024-10-08 12:41:23', '2024-10-08 12:41:23'),
(101, 40, '2024-10-08 12:44:36', 1, 16, '2024-10-08 12:44:36', '2024-10-08 12:44:36'),
(102, 23, '2024-10-08 12:47:43', 1, 16, '2024-10-08 12:47:43', '2024-10-08 12:47:43'),
(103, 0, '2024-10-08 12:50:56', 1, 16, '2024-10-08 12:50:56', '2024-10-08 12:50:56'),
(104, 0, '2024-10-08 12:51:09', 1, 16, '2024-10-08 12:51:09', '2024-10-08 12:51:09'),
(105, 40, '2024-10-08 12:54:22', 1, 16, '2024-10-08 12:54:22', '2024-10-08 12:54:22'),
(106, 23, '2024-10-08 12:57:34', 1, 16, '2024-10-08 12:57:34', '2024-10-08 12:57:34'),
(107, 0, '2024-10-08 13:00:51', 1, 16, '2024-10-08 13:00:51', '2024-10-08 13:00:51'),
(108, 0, '2024-10-08 13:01:03', 1, 16, '2024-10-08 13:01:03', '2024-10-08 13:01:03'),
(109, 38, '2024-10-08 13:04:15', 1, 16, '2024-10-08 13:04:15', '2024-10-08 13:04:15'),
(110, 23, '2024-10-08 13:07:25', 1, 16, '2024-10-08 13:07:25', '2024-10-08 13:07:25'),
(111, 0, '2024-10-08 13:10:36', 1, 16, '2024-10-08 13:10:36', '2024-10-08 13:10:36'),
(112, 37, '2024-10-08 13:10:51', 1, 16, '2024-10-08 13:10:51', '2024-10-08 13:10:51'),
(113, 23, '2024-10-08 13:13:17', 1, 17, '2024-10-08 13:13:17', '2024-10-08 13:13:17'),
(114, 0, '2024-10-08 13:16:29', 1, 17, '2024-10-08 13:16:29', '2024-10-08 13:16:29'),
(115, 0, '2024-10-08 13:16:39', 1, 17, '2024-10-08 13:16:39', '2024-10-08 13:16:39'),
(116, 23, '2024-10-08 13:19:54', 1, 17, '2024-10-08 13:19:54', '2024-10-08 13:19:54'),
(117, 0, '2024-10-08 13:23:10', 1, 17, '2024-10-08 13:23:10', '2024-10-08 13:23:10'),
(118, 0, '2024-10-08 13:23:20', 1, 17, '2024-10-08 13:23:20', '2024-10-08 13:23:20'),
(119, 39, '2024-10-08 13:26:33', 1, 17, '2024-10-08 13:26:33', '2024-10-08 13:26:33'),
(120, 23, '2024-10-08 13:29:46', 1, 17, '2024-10-08 13:29:46', '2024-10-08 13:29:46'),
(121, 0, '2024-10-08 13:32:59', 1, 17, '2024-10-08 13:32:59', '2024-10-08 13:32:59'),
(122, 0, '2024-10-08 13:33:14', 1, 17, '2024-10-08 13:33:14', '2024-10-08 13:33:14'),
(123, 23, '2024-10-08 13:36:27', 1, 17, '2024-10-08 13:36:27', '2024-10-08 13:36:27'),
(124, 23, '2024-10-08 13:36:46', 1, 17, '2024-10-08 13:36:46', '2024-10-08 13:36:46'),
(125, 0, '2024-10-08 13:39:59', 1, 17, '2024-10-08 13:39:59', '2024-10-08 13:39:59'),
(126, 0, '2024-10-08 13:40:08', 1, 17, '2024-10-08 13:40:08', '2024-10-08 13:40:08'),
(127, 26, '2024-10-08 16:16:28', 1, 18, '2024-10-08 16:16:28', '2024-10-08 16:16:28'),
(128, 25, '2024-10-08 16:16:40', 1, 18, '2024-10-08 16:16:40', '2024-10-08 16:16:40'),
(129, 0, '2024-10-08 16:19:57', 1, 18, '2024-10-08 16:19:57', '2024-10-08 16:19:57'),
(130, 0, '2024-10-08 16:20:04', 1, 18, '2024-10-08 16:20:04', '2024-10-08 16:20:04'),
(131, 25, '2024-10-08 16:23:19', 1, 18, '2024-10-08 16:23:19', '2024-10-08 16:23:19'),
(132, 0, '2024-10-08 16:26:39', 1, 18, '2024-10-08 16:26:39', '2024-10-08 16:26:39'),
(133, 0, '2024-10-08 16:26:52', 1, 18, '2024-10-08 16:26:52', '2024-10-08 16:26:52'),
(134, 24, '2024-10-08 17:00:55', 1, 19, '2024-10-08 17:00:55', '2024-10-08 17:00:55'),
(135, 0, '2024-10-08 17:01:04', 1, 19, '2024-10-08 17:01:04', '2024-10-08 17:01:04'),
(136, 44, '2024-10-08 17:04:15', 1, 19, '2024-10-08 17:04:15', '2024-10-08 17:04:15'),
(137, 25, '2024-10-08 17:04:35', 1, 19, '2024-10-08 17:04:35', '2024-10-08 17:04:35'),
(138, 44, '2024-10-08 17:04:52', 1, 19, '2024-10-08 17:04:52', '2024-10-08 17:04:52'),
(139, 0, '2024-10-08 17:05:05', 1, 19, '2024-10-08 17:05:05', '2024-10-08 17:05:05'),
(140, 28, '2024-10-15 17:11:31', 1, 33, '2024-10-15 17:11:32', '2024-10-15 17:11:32'),
(141, 28, '2024-10-15 17:11:40', 1, 33, '2024-10-15 17:11:40', '2024-10-15 17:11:40'),
(142, 28, '2024-10-15 17:11:46', 1, 33, '2024-10-15 17:11:46', '2024-10-15 17:11:46'),
(143, 28, '2024-10-15 17:11:52', 1, 33, '2024-10-15 17:11:52', '2024-10-15 17:11:52'),
(144, 28, '2024-10-15 17:11:58', 1, 33, '2024-10-15 17:11:58', '2024-10-15 17:11:58'),
(145, 28, '2024-10-15 17:12:05', 1, 33, '2024-10-15 17:12:05', '2024-10-15 17:12:05'),
(146, 28, '2024-10-15 17:12:11', 1, 33, '2024-10-15 17:12:11', '2024-10-15 17:12:11'),
(147, 28, '2024-10-15 17:12:17', 1, 33, '2024-10-15 17:12:17', '2024-10-15 17:12:17'),
(148, 28, '2024-10-15 17:12:24', 1, 33, '2024-10-15 17:12:24', '2024-10-15 17:12:24'),
(149, 28, '2024-10-15 17:12:31', 1, 33, '2024-10-15 17:12:31', '2024-10-15 17:12:31'),
(150, 28, '2024-10-15 17:12:36', 1, 33, '2024-10-15 17:12:36', '2024-10-15 17:12:36'),
(151, 28, '2024-10-15 17:12:43', 1, 33, '2024-10-15 17:12:43', '2024-10-15 17:12:43'),
(152, 28, '2024-10-15 17:12:49', 1, 33, '2024-10-15 17:12:49', '2024-10-15 17:12:49'),
(153, 28, '2024-10-15 17:12:56', 1, 33, '2024-10-15 17:12:56', '2024-10-15 17:12:56'),
(154, 28, '2024-10-15 17:13:04', 1, 33, '2024-10-15 17:13:04', '2024-10-15 17:13:04'),
(155, 28, '2024-10-15 17:13:11', 1, 33, '2024-10-15 17:13:11', '2024-10-15 17:13:11'),
(156, 28, '2024-10-15 17:13:18', 1, 33, '2024-10-15 17:13:18', '2024-10-15 17:13:18'),
(157, 28, '2024-10-15 17:13:25', 1, 33, '2024-10-15 17:13:25', '2024-10-15 17:13:25'),
(158, 27, '2024-10-15 17:13:30', 1, 33, '2024-10-15 17:13:30', '2024-10-15 17:13:30'),
(159, 27, '2024-10-15 17:13:36', 1, 33, '2024-10-15 17:13:36', '2024-10-15 17:13:36'),
(160, 27, '2024-10-15 17:13:42', 1, 33, '2024-10-15 17:13:42', '2024-10-15 17:13:42'),
(161, 27, '2024-10-15 17:13:48', 1, 33, '2024-10-15 17:13:48', '2024-10-15 17:13:48'),
(162, 27, '2024-10-15 17:13:53', 1, 33, '2024-10-15 17:13:53', '2024-10-15 17:13:53'),
(163, 27, '2024-10-15 17:13:58', 1, 33, '2024-10-15 17:13:58', '2024-10-15 17:13:58'),
(164, 27, '2024-10-15 17:14:04', 1, 33, '2024-10-15 17:14:04', '2024-10-15 17:14:04'),
(165, 27, '2024-10-15 17:14:11', 1, 33, '2024-10-15 17:14:11', '2024-10-15 17:14:11'),
(166, 27, '2024-10-15 17:14:16', 1, 33, '2024-10-15 17:14:16', '2024-10-15 17:14:16'),
(167, 27, '2024-10-15 17:14:23', 1, 33, '2024-10-15 17:14:23', '2024-10-15 17:14:23'),
(168, 27, '2024-10-15 17:14:30', 1, 33, '2024-10-15 17:14:30', '2024-10-15 17:14:30'),
(169, 27, '2024-10-15 17:14:35', 1, 33, '2024-10-15 17:14:35', '2024-10-15 17:14:35'),
(170, 27, '2024-10-15 17:14:41', 1, 33, '2024-10-15 17:14:41', '2024-10-15 17:14:41'),
(171, 27, '2024-10-15 17:14:47', 1, 33, '2024-10-15 17:14:47', '2024-10-15 17:14:47'),
(172, 27, '2024-10-15 17:14:52', 1, 33, '2024-10-15 17:14:52', '2024-10-15 17:14:52'),
(173, 27, '2024-10-15 17:14:58', 1, 33, '2024-10-15 17:14:58', '2024-10-15 17:14:58'),
(174, 27, '2024-10-15 17:15:03', 1, 33, '2024-10-15 17:15:03', '2024-10-15 17:15:03'),
(175, 27, '2024-10-15 17:15:09', 1, 33, '2024-10-15 17:15:09', '2024-10-15 17:15:09'),
(176, 27, '2024-10-15 17:15:14', 1, 33, '2024-10-15 17:15:14', '2024-10-15 17:15:14'),
(177, 27, '2024-10-15 17:15:20', 1, 33, '2024-10-15 17:15:20', '2024-10-15 17:15:20'),
(178, 27, '2024-10-15 17:15:25', 1, 33, '2024-10-15 17:15:25', '2024-10-15 17:15:25'),
(179, 27, '2024-10-15 17:15:31', 1, 33, '2024-10-15 17:15:31', '2024-10-15 17:15:31'),
(180, 27, '2024-10-15 17:15:36', 1, 33, '2024-10-15 17:15:36', '2024-10-15 17:15:36'),
(181, 27, '2024-10-15 17:15:42', 1, 33, '2024-10-15 17:15:42', '2024-10-15 17:15:42'),
(182, 27, '2024-10-15 17:15:48', 1, 33, '2024-10-15 17:15:48', '2024-10-15 17:15:48'),
(183, 27, '2024-10-15 17:15:54', 1, 33, '2024-10-15 17:15:54', '2024-10-15 17:15:54'),
(184, 27, '2024-10-15 17:16:00', 1, 33, '2024-10-15 17:16:00', '2024-10-15 17:16:00'),
(185, 27, '2024-10-15 17:16:07', 1, 33, '2024-10-15 17:16:07', '2024-10-15 17:16:07'),
(186, 27, '2024-10-15 17:16:12', 1, 33, '2024-10-15 17:16:12', '2024-10-15 17:16:12'),
(187, 27, '2024-10-15 17:16:18', 1, 33, '2024-10-15 17:16:18', '2024-10-15 17:16:18'),
(188, 27, '2024-10-15 17:16:23', 1, 33, '2024-10-15 17:16:23', '2024-10-15 17:16:23'),
(189, 27, '2024-10-15 17:16:28', 1, 33, '2024-10-15 17:16:28', '2024-10-15 17:16:28'),
(190, 27, '2024-10-15 17:16:34', 1, 33, '2024-10-15 17:16:34', '2024-10-15 17:16:34'),
(191, 27, '2024-10-15 17:16:39', 1, 33, '2024-10-15 17:16:39', '2024-10-15 17:16:39'),
(192, 27, '2024-10-15 17:16:45', 1, 33, '2024-10-15 17:16:45', '2024-10-15 17:16:45'),
(193, 27, '2024-10-15 17:16:50', 1, 33, '2024-10-15 17:16:50', '2024-10-15 17:16:50'),
(194, 27, '2024-10-15 17:16:56', 1, 33, '2024-10-15 17:16:56', '2024-10-15 17:16:56'),
(195, 27, '2024-10-15 17:17:01', 1, 33, '2024-10-15 17:17:01', '2024-10-15 17:17:01'),
(196, 27, '2024-10-15 17:17:07', 1, 33, '2024-10-15 17:17:07', '2024-10-15 17:17:07'),
(197, 27, '2024-10-15 17:17:12', 1, 33, '2024-10-15 17:17:12', '2024-10-15 17:17:12'),
(198, 27, '2024-10-15 17:17:17', 1, 33, '2024-10-15 17:17:17', '2024-10-15 17:17:17'),
(199, 27, '2024-10-15 17:17:36', 1, 33, '2024-10-15 17:17:36', '2024-10-15 17:17:36'),
(200, 27, '2024-10-15 17:17:42', 1, 33, '2024-10-15 17:17:42', '2024-10-15 17:17:42'),
(201, 27, '2024-10-15 17:17:48', 1, 33, '2024-10-15 17:17:48', '2024-10-15 17:17:48'),
(202, 27, '2024-10-15 17:17:53', 1, 33, '2024-10-15 17:17:53', '2024-10-15 17:17:53'),
(203, 27, '2024-10-15 17:17:58', 1, 33, '2024-10-15 17:17:58', '2024-10-15 17:17:58'),
(204, 27, '2024-10-15 17:18:04', 1, 33, '2024-10-15 17:18:04', '2024-10-15 17:18:04'),
(205, 27, '2024-10-15 17:18:09', 1, 33, '2024-10-15 17:18:09', '2024-10-15 17:18:09'),
(206, 27, '2024-10-15 17:18:14', 1, 33, '2024-10-15 17:18:14', '2024-10-15 17:18:14'),
(207, 27, '2024-10-15 17:18:20', 1, 33, '2024-10-15 17:18:20', '2024-10-15 17:18:20'),
(208, 27, '2024-10-15 17:18:25', 1, 33, '2024-10-15 17:18:25', '2024-10-15 17:18:25'),
(209, 27, '2024-10-15 17:18:31', 1, 33, '2024-10-15 17:18:31', '2024-10-15 17:18:31'),
(210, 27, '2024-10-15 17:18:36', 1, 33, '2024-10-15 17:18:36', '2024-10-15 17:18:36'),
(211, 27, '2024-10-15 17:18:41', 1, 33, '2024-10-15 17:18:41', '2024-10-15 17:18:41'),
(212, 27, '2024-10-15 17:18:47', 1, 33, '2024-10-15 17:18:47', '2024-10-15 17:18:47'),
(213, 27, '2024-10-15 17:18:52', 1, 33, '2024-10-15 17:18:52', '2024-10-15 17:18:52'),
(214, 27, '2024-10-15 17:18:58', 1, 33, '2024-10-15 17:18:58', '2024-10-15 17:18:58'),
(215, 27, '2024-10-15 17:19:15', 1, 33, '2024-10-15 17:19:15', '2024-10-15 17:19:15'),
(216, 27, '2024-10-15 17:19:20', 1, 33, '2024-10-15 17:19:20', '2024-10-15 17:19:20'),
(217, 27, '2024-10-15 17:19:26', 1, 33, '2024-10-15 17:19:26', '2024-10-15 17:19:26'),
(218, 27, '2024-10-15 17:19:31', 1, 33, '2024-10-15 17:19:31', '2024-10-15 17:19:31'),
(219, 27, '2024-10-15 17:19:37', 1, 33, '2024-10-15 17:19:37', '2024-10-15 17:19:37'),
(220, 27, '2024-10-15 17:19:43', 1, 33, '2024-10-15 17:19:43', '2024-10-15 17:19:43'),
(221, 27, '2024-10-15 17:19:49', 1, 33, '2024-10-15 17:19:49', '2024-10-15 17:19:49'),
(222, 27, '2024-10-15 17:19:54', 1, 33, '2024-10-15 17:19:54', '2024-10-15 17:19:54'),
(223, 27, '2024-10-15 17:20:00', 1, 33, '2024-10-15 17:20:00', '2024-10-15 17:20:00'),
(224, 27, '2024-10-15 17:20:05', 1, 33, '2024-10-15 17:20:05', '2024-10-15 17:20:05'),
(225, 27, '2024-10-15 17:20:10', 1, 33, '2024-10-15 17:20:10', '2024-10-15 17:20:10'),
(226, 27, '2024-10-15 17:20:16', 1, 33, '2024-10-15 17:20:16', '2024-10-15 17:20:16'),
(227, 27, '2024-10-15 17:20:21', 1, 33, '2024-10-15 17:20:21', '2024-10-15 17:20:21'),
(228, 27, '2024-10-15 17:20:26', 1, 33, '2024-10-15 17:20:26', '2024-10-15 17:20:26'),
(229, 27, '2024-10-15 17:20:32', 1, 33, '2024-10-15 17:20:32', '2024-10-15 17:20:32'),
(230, 27, '2024-10-15 17:20:37', 1, 33, '2024-10-15 17:20:37', '2024-10-15 17:20:37'),
(231, 27, '2024-10-15 17:20:43', 1, 33, '2024-10-15 17:20:43', '2024-10-15 17:20:43'),
(232, 27, '2024-10-15 17:20:48', 1, 33, '2024-10-15 17:20:48', '2024-10-15 17:20:48'),
(233, 27, '2024-10-15 17:20:53', 1, 33, '2024-10-15 17:20:53', '2024-10-15 17:20:53'),
(234, 27, '2024-10-15 17:20:59', 1, 33, '2024-10-15 17:20:59', '2024-10-15 17:20:59'),
(235, 27, '2024-10-15 17:21:04', 1, 33, '2024-10-15 17:21:04', '2024-10-15 17:21:04'),
(236, 27, '2024-10-15 17:21:10', 1, 33, '2024-10-15 17:21:10', '2024-10-15 17:21:10'),
(237, 27, '2024-10-15 17:21:15', 1, 33, '2024-10-15 17:21:15', '2024-10-15 17:21:15'),
(238, 27, '2024-10-15 17:21:21', 1, 33, '2024-10-15 17:21:21', '2024-10-15 17:21:21'),
(239, 27, '2024-10-15 17:21:26', 1, 33, '2024-10-15 17:21:26', '2024-10-15 17:21:26'),
(240, 27, '2024-10-15 17:21:31', 1, 33, '2024-10-15 17:21:31', '2024-10-15 17:21:31'),
(241, 27, '2024-10-15 17:21:37', 1, 33, '2024-10-15 17:21:37', '2024-10-15 17:21:37'),
(242, 27, '2024-10-15 17:21:43', 1, 33, '2024-10-15 17:21:43', '2024-10-15 17:21:43'),
(243, 27, '2024-10-15 17:21:48', 1, 33, '2024-10-15 17:21:48', '2024-10-15 17:21:48'),
(244, 27, '2024-10-15 17:21:54', 1, 33, '2024-10-15 17:21:54', '2024-10-15 17:21:54'),
(245, 27, '2024-10-15 17:22:00', 1, 33, '2024-10-15 17:22:00', '2024-10-15 17:22:00'),
(246, 27, '2024-10-15 17:22:06', 1, 33, '2024-10-15 17:22:06', '2024-10-15 17:22:06'),
(247, 27, '2024-10-15 17:22:12', 1, 33, '2024-10-15 17:22:12', '2024-10-15 17:22:12'),
(248, 27, '2024-10-15 17:22:17', 1, 33, '2024-10-15 17:22:17', '2024-10-15 17:22:17'),
(249, 27, '2024-10-15 17:22:23', 1, 33, '2024-10-15 17:22:23', '2024-10-15 17:22:23'),
(250, 27, '2024-10-15 17:22:29', 1, 33, '2024-10-15 17:22:29', '2024-10-15 17:22:29'),
(251, 27, '2024-10-15 17:22:35', 1, 33, '2024-10-15 17:22:35', '2024-10-15 17:22:35'),
(252, 27, '2024-10-15 17:22:41', 1, 33, '2024-10-15 17:22:41', '2024-10-15 17:22:41'),
(253, 27, '2024-10-15 17:22:46', 1, 33, '2024-10-15 17:22:46', '2024-10-15 17:22:46'),
(254, 27, '2024-10-15 17:22:52', 1, 33, '2024-10-15 17:22:52', '2024-10-15 17:22:52'),
(255, 27, '2024-10-15 17:22:57', 1, 33, '2024-10-15 17:22:57', '2024-10-15 17:22:57'),
(256, 27, '2024-10-15 17:23:03', 1, 33, '2024-10-15 17:23:03', '2024-10-15 17:23:03'),
(257, 27, '2024-10-15 17:23:09', 1, 33, '2024-10-15 17:23:09', '2024-10-15 17:23:09'),
(258, 27, '2024-10-15 17:23:15', 1, 33, '2024-10-15 17:23:15', '2024-10-15 17:23:15'),
(259, 27, '2024-10-15 17:23:20', 1, 33, '2024-10-15 17:23:20', '2024-10-15 17:23:20'),
(260, 27, '2024-10-15 17:23:26', 1, 33, '2024-10-15 17:23:26', '2024-10-15 17:23:26'),
(261, 27, '2024-10-15 17:23:31', 1, 33, '2024-10-15 17:23:31', '2024-10-15 17:23:31'),
(262, 27, '2024-10-15 17:23:37', 1, 33, '2024-10-15 17:23:37', '2024-10-15 17:23:37'),
(263, 27, '2024-10-15 17:23:43', 1, 33, '2024-10-15 17:23:43', '2024-10-15 17:23:43'),
(264, 27, '2024-10-15 17:23:49', 1, 33, '2024-10-15 17:23:49', '2024-10-15 17:23:49'),
(265, 27, '2024-10-15 17:23:54', 1, 33, '2024-10-15 17:23:54', '2024-10-15 17:23:54'),
(266, 27, '2024-10-15 17:24:00', 1, 33, '2024-10-15 17:24:00', '2024-10-15 17:24:00'),
(267, 27, '2024-10-15 17:24:05', 1, 33, '2024-10-15 17:24:05', '2024-10-15 17:24:05'),
(268, 27, '2024-10-15 17:24:11', 1, 33, '2024-10-15 17:24:11', '2024-10-15 17:24:11'),
(269, 27, '2024-10-15 17:24:17', 1, 33, '2024-10-15 17:24:17', '2024-10-15 17:24:17'),
(270, 27, '2024-10-15 17:24:22', 1, 33, '2024-10-15 17:24:22', '2024-10-15 17:24:22'),
(271, 27, '2024-10-15 17:24:28', 1, 33, '2024-10-15 17:24:28', '2024-10-15 17:24:28'),
(272, 27, '2024-10-15 17:24:34', 1, 33, '2024-10-15 17:24:34', '2024-10-15 17:24:34'),
(273, 27, '2024-10-15 17:24:40', 1, 33, '2024-10-15 17:24:40', '2024-10-15 17:24:40'),
(274, 27, '2024-10-15 17:24:46', 1, 33, '2024-10-15 17:24:46', '2024-10-15 17:24:46'),
(275, 27, '2024-10-15 17:24:52', 1, 33, '2024-10-15 17:24:52', '2024-10-15 17:24:52'),
(276, 27, '2024-10-15 17:24:57', 1, 33, '2024-10-15 17:24:57', '2024-10-15 17:24:57'),
(277, 27, '2024-10-15 17:25:03', 1, 33, '2024-10-15 17:25:03', '2024-10-15 17:25:03'),
(278, 27, '2024-10-15 17:25:09', 1, 33, '2024-10-15 17:25:09', '2024-10-15 17:25:09'),
(279, 27, '2024-10-15 17:25:14', 1, 33, '2024-10-15 17:25:14', '2024-10-15 17:25:14'),
(280, 27, '2024-10-15 17:25:20', 1, 33, '2024-10-15 17:25:20', '2024-10-15 17:25:20'),
(281, 27, '2024-10-15 17:25:25', 1, 33, '2024-10-15 17:25:25', '2024-10-15 17:25:25'),
(282, 27, '2024-10-15 17:25:31', 1, 33, '2024-10-15 17:25:31', '2024-10-15 17:25:31'),
(283, 27, '2024-10-15 17:25:38', 1, 33, '2024-10-15 17:25:38', '2024-10-15 17:25:38'),
(284, 27, '2024-10-15 17:25:44', 1, 33, '2024-10-15 17:25:44', '2024-10-15 17:25:44'),
(285, 27, '2024-10-15 17:25:49', 1, 33, '2024-10-15 17:25:49', '2024-10-15 17:25:49'),
(286, 27, '2024-10-15 17:25:55', 1, 33, '2024-10-15 17:25:55', '2024-10-15 17:25:55'),
(287, 27, '2024-10-15 17:26:01', 1, 33, '2024-10-15 17:26:01', '2024-10-15 17:26:01'),
(288, 27, '2024-10-15 17:26:07', 1, 33, '2024-10-15 17:26:07', '2024-10-15 17:26:07'),
(289, 27, '2024-10-15 17:26:13', 1, 33, '2024-10-15 17:26:13', '2024-10-15 17:26:13'),
(290, 27, '2024-10-15 17:26:19', 1, 33, '2024-10-15 17:26:19', '2024-10-15 17:26:19'),
(291, 27, '2024-10-15 17:26:25', 1, 33, '2024-10-15 17:26:25', '2024-10-15 17:26:25'),
(292, 27, '2024-10-15 17:26:39', 1, 33, '2024-10-15 17:26:39', '2024-10-15 17:26:39'),
(293, 27, '2024-10-15 17:26:46', 1, 33, '2024-10-15 17:26:46', '2024-10-15 17:26:46'),
(294, 27, '2024-10-15 17:26:51', 1, 33, '2024-10-15 17:26:51', '2024-10-15 17:26:51'),
(295, 27, '2024-10-15 17:26:58', 1, 33, '2024-10-15 17:26:58', '2024-10-15 17:26:58'),
(296, 27, '2024-10-15 17:27:04', 1, 33, '2024-10-15 17:27:04', '2024-10-15 17:27:04'),
(297, 27, '2024-10-15 17:27:09', 1, 33, '2024-10-15 17:27:09', '2024-10-15 17:27:09'),
(298, 27, '2024-10-15 17:27:15', 1, 33, '2024-10-15 17:27:15', '2024-10-15 17:27:15'),
(299, 27, '2024-10-15 17:27:20', 1, 33, '2024-10-15 17:27:20', '2024-10-15 17:27:20'),
(300, 27, '2024-10-15 17:27:25', 1, 33, '2024-10-15 17:27:25', '2024-10-15 17:27:25'),
(301, 27, '2024-10-15 17:27:30', 1, 33, '2024-10-15 17:27:30', '2024-10-15 17:27:30'),
(302, 27, '2024-10-15 17:27:36', 1, 33, '2024-10-15 17:27:36', '2024-10-15 17:27:36'),
(303, 27, '2024-10-15 17:27:41', 1, 33, '2024-10-15 17:27:41', '2024-10-15 17:27:41'),
(304, 27, '2024-10-15 17:27:46', 1, 33, '2024-10-15 17:27:46', '2024-10-15 17:27:46'),
(305, 27, '2024-10-15 17:27:52', 1, 33, '2024-10-15 17:27:52', '2024-10-15 17:27:52'),
(306, 27, '2024-10-15 17:27:57', 1, 33, '2024-10-15 17:27:57', '2024-10-15 17:27:57'),
(307, 27, '2024-10-15 17:28:02', 1, 33, '2024-10-15 17:28:02', '2024-10-15 17:28:02'),
(308, 27, '2024-10-15 17:28:07', 1, 33, '2024-10-15 17:28:07', '2024-10-15 17:28:07'),
(309, 27, '2024-10-15 17:28:13', 1, 33, '2024-10-15 17:28:13', '2024-10-15 17:28:13'),
(310, 27, '2024-10-15 17:28:18', 1, 33, '2024-10-15 17:28:18', '2024-10-15 17:28:18'),
(311, 27, '2024-10-15 17:28:23', 1, 33, '2024-10-15 17:28:23', '2024-10-15 17:28:23'),
(312, 27, '2024-10-15 17:28:29', 1, 33, '2024-10-15 17:28:29', '2024-10-15 17:28:29'),
(313, 27, '2024-10-15 17:28:34', 1, 33, '2024-10-15 17:28:34', '2024-10-15 17:28:34'),
(314, 27, '2024-10-15 17:28:39', 1, 33, '2024-10-15 17:28:39', '2024-10-15 17:28:39'),
(315, 27, '2024-10-15 17:28:45', 1, 33, '2024-10-15 17:28:45', '2024-10-15 17:28:45'),
(316, 27, '2024-10-15 17:28:50', 1, 33, '2024-10-15 17:28:50', '2024-10-15 17:28:50'),
(317, 27, '2024-10-15 17:28:55', 1, 33, '2024-10-15 17:28:55', '2024-10-15 17:28:55'),
(318, 27, '2024-10-15 17:29:01', 1, 33, '2024-10-15 17:29:01', '2024-10-15 17:29:01'),
(319, 27, '2024-10-15 17:29:06', 1, 33, '2024-10-15 17:29:06', '2024-10-15 17:29:06'),
(320, 27, '2024-10-15 17:29:11', 1, 33, '2024-10-15 17:29:11', '2024-10-15 17:29:11'),
(321, 27, '2024-10-15 17:29:16', 1, 33, '2024-10-15 17:29:16', '2024-10-15 17:29:16'),
(322, 27, '2024-10-15 17:29:22', 1, 33, '2024-10-15 17:29:22', '2024-10-15 17:29:22'),
(323, 27, '2024-10-15 17:29:27', 1, 33, '2024-10-15 17:29:27', '2024-10-15 17:29:27'),
(324, 27, '2024-10-15 17:29:32', 1, 33, '2024-10-15 17:29:32', '2024-10-15 17:29:32'),
(325, 27, '2024-10-15 17:29:37', 1, 33, '2024-10-15 17:29:37', '2024-10-15 17:29:37'),
(326, 27, '2024-10-15 17:29:43', 1, 33, '2024-10-15 17:29:43', '2024-10-15 17:29:43'),
(327, 27, '2024-10-15 17:29:48', 1, 33, '2024-10-15 17:29:48', '2024-10-15 17:29:48'),
(328, 27, '2024-10-15 17:29:53', 1, 33, '2024-10-15 17:29:53', '2024-10-15 17:29:53'),
(329, 27, '2024-10-15 17:29:58', 1, 33, '2024-10-15 17:29:58', '2024-10-15 17:29:58'),
(330, 27, '2024-10-15 17:30:04', 1, 33, '2024-10-15 17:30:04', '2024-10-15 17:30:04'),
(331, 27, '2024-10-15 17:30:09', 1, 33, '2024-10-15 17:30:09', '2024-10-15 17:30:09'),
(332, 27, '2024-10-15 17:30:14', 1, 33, '2024-10-15 17:30:14', '2024-10-15 17:30:14'),
(333, 27, '2024-10-15 17:30:20', 1, 33, '2024-10-15 17:30:20', '2024-10-15 17:30:20'),
(334, 27, '2024-10-15 17:30:25', 1, 33, '2024-10-15 17:30:25', '2024-10-15 17:30:25'),
(335, 27, '2024-10-15 17:30:30', 1, 33, '2024-10-15 17:30:30', '2024-10-15 17:30:30'),
(336, 27, '2024-10-15 17:30:35', 1, 33, '2024-10-15 17:30:35', '2024-10-15 17:30:35'),
(337, 27, '2024-10-15 17:30:41', 1, 33, '2024-10-15 17:30:41', '2024-10-15 17:30:41'),
(338, 27, '2024-10-15 17:30:46', 1, 33, '2024-10-15 17:30:46', '2024-10-15 17:30:46'),
(339, 27, '2024-10-15 17:30:51', 1, 33, '2024-10-15 17:30:51', '2024-10-15 17:30:51'),
(340, 27, '2024-10-15 17:30:57', 1, 33, '2024-10-15 17:30:57', '2024-10-15 17:30:57'),
(341, 27, '2024-10-15 17:31:02', 1, 33, '2024-10-15 17:31:02', '2024-10-15 17:31:02'),
(342, 27, '2024-10-15 17:31:07', 1, 33, '2024-10-15 17:31:07', '2024-10-15 17:31:07'),
(343, 27, '2024-10-15 17:31:13', 1, 33, '2024-10-15 17:31:13', '2024-10-15 17:31:13'),
(344, 27, '2024-10-15 17:31:18', 1, 33, '2024-10-15 17:31:18', '2024-10-15 17:31:18'),
(345, 27, '2024-10-15 17:31:23', 1, 33, '2024-10-15 17:31:23', '2024-10-15 17:31:23'),
(346, 27, '2024-10-15 17:31:28', 1, 33, '2024-10-15 17:31:28', '2024-10-15 17:31:28'),
(347, 27, '2024-10-15 17:31:33', 1, 33, '2024-10-15 17:31:33', '2024-10-15 17:31:33'),
(348, 27, '2024-10-15 17:31:39', 1, 33, '2024-10-15 17:31:39', '2024-10-15 17:31:39'),
(349, 27, '2024-10-15 17:31:44', 1, 33, '2024-10-15 17:31:44', '2024-10-15 17:31:44'),
(350, 27, '2024-10-15 17:31:49', 1, 33, '2024-10-15 17:31:49', '2024-10-15 17:31:49'),
(351, 27, '2024-10-15 17:31:54', 1, 33, '2024-10-15 17:31:54', '2024-10-15 17:31:54'),
(352, 27, '2024-10-15 17:32:00', 1, 33, '2024-10-15 17:32:01', '2024-10-15 17:32:01'),
(353, 27, '2024-10-15 17:32:06', 1, 33, '2024-10-15 17:32:06', '2024-10-15 17:32:06'),
(354, 27, '2024-10-15 17:32:11', 1, 33, '2024-10-15 17:32:11', '2024-10-15 17:32:11'),
(355, 27, '2024-10-15 17:32:17', 1, 33, '2024-10-15 17:32:17', '2024-10-15 17:32:17'),
(356, 27, '2024-10-15 17:32:22', 1, 33, '2024-10-15 17:32:22', '2024-10-15 17:32:22'),
(357, 27, '2024-10-15 17:32:27', 1, 33, '2024-10-15 17:32:27', '2024-10-15 17:32:27'),
(358, 27, '2024-10-15 17:32:33', 1, 33, '2024-10-15 17:32:33', '2024-10-15 17:32:33'),
(359, 27, '2024-10-15 17:32:39', 1, 33, '2024-10-15 17:32:39', '2024-10-15 17:32:39'),
(360, 27, '2024-10-15 17:32:44', 1, 33, '2024-10-15 17:32:44', '2024-10-15 17:32:44'),
(361, 27, '2024-10-15 17:32:49', 1, 33, '2024-10-15 17:32:49', '2024-10-15 17:32:49'),
(362, 27, '2024-10-15 17:32:55', 1, 33, '2024-10-15 17:32:55', '2024-10-15 17:32:55'),
(363, 27, '2024-10-15 17:33:00', 1, 33, '2024-10-15 17:33:00', '2024-10-15 17:33:00'),
(364, 27, '2024-10-15 17:33:05', 1, 33, '2024-10-15 17:33:05', '2024-10-15 17:33:05'),
(365, 27, '2024-10-15 17:33:10', 1, 33, '2024-10-15 17:33:11', '2024-10-15 17:33:11'),
(366, 27, '2024-10-15 17:33:16', 1, 33, '2024-10-15 17:33:16', '2024-10-15 17:33:16'),
(367, 27, '2024-10-15 17:33:21', 1, 33, '2024-10-15 17:33:21', '2024-10-15 17:33:21'),
(368, 27, '2024-10-15 17:33:26', 1, 33, '2024-10-15 17:33:26', '2024-10-15 17:33:26'),
(369, 27, '2024-10-15 17:33:31', 1, 33, '2024-10-15 17:33:31', '2024-10-15 17:33:31'),
(370, 27, '2024-10-15 17:33:37', 1, 33, '2024-10-15 17:33:37', '2024-10-15 17:33:37'),
(371, 27, '2024-10-15 17:33:42', 1, 33, '2024-10-15 17:33:42', '2024-10-15 17:33:42'),
(372, 27, '2024-10-15 17:33:47', 1, 33, '2024-10-15 17:33:47', '2024-10-15 17:33:47'),
(373, 27, '2024-10-15 17:33:53', 1, 33, '2024-10-15 17:33:53', '2024-10-15 17:33:53'),
(374, 27, '2024-10-15 17:33:58', 1, 33, '2024-10-15 17:33:58', '2024-10-15 17:33:58'),
(375, 27, '2024-10-15 17:34:03', 1, 33, '2024-10-15 17:34:03', '2024-10-15 17:34:03'),
(376, 27, '2024-10-15 17:34:09', 1, 33, '2024-10-15 17:34:09', '2024-10-15 17:34:09'),
(377, 27, '2024-10-15 17:34:14', 1, 33, '2024-10-15 17:34:14', '2024-10-15 17:34:14'),
(378, 27, '2024-10-15 17:34:19', 1, 33, '2024-10-15 17:34:19', '2024-10-15 17:34:19'),
(379, 27, '2024-10-15 17:34:24', 1, 33, '2024-10-15 17:34:24', '2024-10-15 17:34:24'),
(380, 27, '2024-10-15 17:34:29', 1, 33, '2024-10-15 17:34:29', '2024-10-15 17:34:29'),
(381, 27, '2024-10-15 17:34:35', 1, 33, '2024-10-15 17:34:35', '2024-10-15 17:34:35'),
(382, 27, '2024-10-15 17:34:40', 1, 33, '2024-10-15 17:34:40', '2024-10-15 17:34:40'),
(383, 27, '2024-10-15 17:34:45', 1, 33, '2024-10-15 17:34:45', '2024-10-15 17:34:45'),
(384, 27, '2024-10-15 17:34:50', 1, 33, '2024-10-15 17:34:50', '2024-10-15 17:34:50'),
(385, 27, '2024-10-15 17:34:55', 1, 33, '2024-10-15 17:34:55', '2024-10-15 17:34:55'),
(386, 27, '2024-10-15 17:35:01', 1, 33, '2024-10-15 17:35:01', '2024-10-15 17:35:01'),
(387, 27, '2024-10-15 17:35:06', 1, 33, '2024-10-15 17:35:06', '2024-10-15 17:35:06'),
(388, 27, '2024-10-15 17:35:11', 1, 33, '2024-10-15 17:35:11', '2024-10-15 17:35:11'),
(389, 27, '2024-10-15 17:35:16', 1, 33, '2024-10-15 17:35:16', '2024-10-15 17:35:16'),
(390, 27, '2024-10-15 17:35:21', 1, 33, '2024-10-15 17:35:21', '2024-10-15 17:35:21'),
(391, 27, '2024-10-15 17:35:27', 1, 33, '2024-10-15 17:35:27', '2024-10-15 17:35:27'),
(392, 27, '2024-10-15 17:35:32', 1, 33, '2024-10-15 17:35:32', '2024-10-15 17:35:32'),
(393, 27, '2024-10-15 17:35:37', 1, 33, '2024-10-15 17:35:37', '2024-10-15 17:35:37'),
(394, 27, '2024-10-15 17:35:44', 1, 33, '2024-10-15 17:35:44', '2024-10-15 17:35:44'),
(395, 27, '2024-10-15 17:35:50', 1, 33, '2024-10-15 17:35:50', '2024-10-15 17:35:50'),
(396, 27, '2024-10-15 17:35:56', 1, 33, '2024-10-15 17:35:56', '2024-10-15 17:35:56'),
(397, 27, '2024-10-15 17:36:01', 1, 33, '2024-10-15 17:36:01', '2024-10-15 17:36:01'),
(398, 27, '2024-10-15 17:36:06', 1, 33, '2024-10-15 17:36:06', '2024-10-15 17:36:06'),
(399, 27, '2024-10-15 17:36:12', 1, 33, '2024-10-15 17:36:12', '2024-10-15 17:36:12'),
(400, 27, '2024-10-15 17:36:17', 1, 33, '2024-10-15 17:36:17', '2024-10-15 17:36:17'),
(401, 27, '2024-10-15 17:36:22', 1, 33, '2024-10-15 17:36:22', '2024-10-15 17:36:22'),
(402, 27, '2024-10-15 17:36:28', 1, 33, '2024-10-15 17:36:28', '2024-10-15 17:36:28'),
(403, 27, '2024-10-15 17:36:33', 1, 33, '2024-10-15 17:36:33', '2024-10-15 17:36:33'),
(404, 27, '2024-10-15 17:36:38', 1, 33, '2024-10-15 17:36:38', '2024-10-15 17:36:38'),
(405, 27, '2024-10-15 17:36:43', 1, 33, '2024-10-15 17:36:43', '2024-10-15 17:36:43'),
(406, 27, '2024-10-15 17:36:48', 1, 33, '2024-10-15 17:36:49', '2024-10-15 17:36:49'),
(407, 27, '2024-10-15 17:36:54', 1, 33, '2024-10-15 17:36:54', '2024-10-15 17:36:54'),
(408, 27, '2024-10-15 17:36:59', 1, 33, '2024-10-15 17:36:59', '2024-10-15 17:36:59'),
(409, 27, '2024-10-15 17:37:04', 1, 33, '2024-10-15 17:37:04', '2024-10-15 17:37:04'),
(410, 27, '2024-10-15 17:37:09', 1, 33, '2024-10-15 17:37:09', '2024-10-15 17:37:09'),
(411, 27, '2024-10-15 17:37:15', 1, 33, '2024-10-15 17:37:15', '2024-10-15 17:37:15'),
(412, 27, '2024-10-15 17:37:20', 1, 33, '2024-10-15 17:37:20', '2024-10-15 17:37:20'),
(413, 27, '2024-10-15 17:37:25', 1, 33, '2024-10-15 17:37:25', '2024-10-15 17:37:25'),
(414, 27, '2024-10-15 17:37:30', 1, 33, '2024-10-15 17:37:30', '2024-10-15 17:37:30'),
(415, 27, '2024-10-15 17:37:35', 1, 33, '2024-10-15 17:37:36', '2024-10-15 17:37:36'),
(416, 27, '2024-10-15 17:37:41', 1, 33, '2024-10-15 17:37:41', '2024-10-15 17:37:41'),
(417, 27, '2024-10-15 17:37:46', 1, 33, '2024-10-15 17:37:46', '2024-10-15 17:37:46'),
(418, 27, '2024-10-15 17:37:51', 1, 33, '2024-10-15 17:37:51', '2024-10-15 17:37:51'),
(419, 27, '2024-10-15 17:37:57', 1, 33, '2024-10-15 17:37:57', '2024-10-15 17:37:57'),
(420, 27, '2024-10-15 17:38:02', 1, 33, '2024-10-15 17:38:02', '2024-10-15 17:38:02'),
(421, 27, '2024-10-15 17:38:07', 1, 33, '2024-10-15 17:38:07', '2024-10-15 17:38:07'),
(422, 27, '2024-10-15 17:38:12', 1, 33, '2024-10-15 17:38:12', '2024-10-15 17:38:12'),
(423, 27, '2024-10-15 17:38:17', 1, 33, '2024-10-15 17:38:17', '2024-10-15 17:38:17'),
(424, 27, '2024-10-15 17:38:22', 1, 33, '2024-10-15 17:38:22', '2024-10-15 17:38:22'),
(425, 27, '2024-10-15 17:38:27', 1, 33, '2024-10-15 17:38:27', '2024-10-15 17:38:27'),
(426, 27, '2024-10-15 17:38:33', 1, 33, '2024-10-15 17:38:33', '2024-10-15 17:38:33'),
(427, 27, '2024-10-15 17:38:38', 1, 33, '2024-10-15 17:38:38', '2024-10-15 17:38:38'),
(428, 27, '2024-10-15 17:38:43', 1, 33, '2024-10-15 17:38:43', '2024-10-15 17:38:43'),
(429, 27, '2024-10-15 17:38:48', 1, 33, '2024-10-15 17:38:48', '2024-10-15 17:38:48'),
(430, 27, '2024-10-15 17:38:53', 1, 33, '2024-10-15 17:38:53', '2024-10-15 17:38:53'),
(431, 27, '2024-10-15 17:38:58', 1, 33, '2024-10-15 17:38:58', '2024-10-15 17:38:58'),
(432, 27, '2024-10-15 17:39:04', 1, 33, '2024-10-15 17:39:04', '2024-10-15 17:39:04'),
(433, 27, '2024-10-15 17:39:09', 1, 33, '2024-10-15 17:39:09', '2024-10-15 17:39:09'),
(434, 27, '2024-10-15 17:39:14', 1, 33, '2024-10-15 17:39:14', '2024-10-15 17:39:14'),
(435, 27, '2024-10-15 17:39:19', 1, 33, '2024-10-15 17:39:19', '2024-10-15 17:39:19'),
(436, 27, '2024-10-15 17:39:24', 1, 33, '2024-10-15 17:39:24', '2024-10-15 17:39:24'),
(437, 27, '2024-10-15 17:39:29', 1, 33, '2024-10-15 17:39:29', '2024-10-15 17:39:29'),
(438, 27, '2024-10-15 17:39:34', 1, 33, '2024-10-15 17:39:34', '2024-10-15 17:39:34'),
(439, 27, '2024-10-15 17:39:40', 1, 33, '2024-10-15 17:39:40', '2024-10-15 17:39:40'),
(440, 27, '2024-10-15 17:39:45', 1, 33, '2024-10-15 17:39:45', '2024-10-15 17:39:45'),
(441, 27, '2024-10-15 17:39:50', 1, 33, '2024-10-15 17:39:50', '2024-10-15 17:39:50'),
(442, 27, '2024-10-15 17:39:55', 1, 33, '2024-10-15 17:39:55', '2024-10-15 17:39:55'),
(443, 27, '2024-10-15 17:40:00', 1, 33, '2024-10-15 17:40:00', '2024-10-15 17:40:00'),
(444, 28, '2024-10-15 17:40:06', 1, 33, '2024-10-15 17:40:06', '2024-10-15 17:40:06'),
(445, 28, '2024-10-15 17:40:11', 1, 33, '2024-10-15 17:40:11', '2024-10-15 17:40:11'),
(446, 28, '2024-10-15 17:40:16', 1, 33, '2024-10-15 17:40:16', '2024-10-15 17:40:16'),
(447, 28, '2024-10-15 17:40:21', 1, 33, '2024-10-15 17:40:21', '2024-10-15 17:40:21'),
(448, 28, '2024-10-15 17:40:26', 1, 33, '2024-10-15 17:40:26', '2024-10-15 17:40:26'),
(449, 28, '2024-10-15 17:40:31', 1, 33, '2024-10-15 17:40:31', '2024-10-15 17:40:31'),
(450, 28, '2024-10-15 17:40:36', 1, 33, '2024-10-15 17:40:37', '2024-10-15 17:40:37'),
(451, 27, '2024-10-15 17:40:42', 1, 33, '2024-10-15 17:40:42', '2024-10-15 17:40:42'),
(452, 27, '2024-10-15 17:40:47', 1, 33, '2024-10-15 17:40:47', '2024-10-15 17:40:47'),
(453, 27, '2024-10-15 17:40:52', 1, 33, '2024-10-15 17:40:52', '2024-10-15 17:40:52'),
(454, 27, '2024-10-15 17:40:57', 1, 33, '2024-10-15 17:40:57', '2024-10-15 17:40:57'),
(455, 27, '2024-10-15 17:41:02', 1, 33, '2024-10-15 17:41:02', '2024-10-15 17:41:02'),
(456, 27, '2024-10-15 17:41:07', 1, 33, '2024-10-15 17:41:07', '2024-10-15 17:41:07'),
(457, 27, '2024-10-15 17:41:12', 1, 33, '2024-10-15 17:41:13', '2024-10-15 17:41:13'),
(458, 27, '2024-10-15 17:41:18', 1, 33, '2024-10-15 17:41:18', '2024-10-15 17:41:18'),
(459, 27, '2024-10-15 17:41:23', 1, 33, '2024-10-15 17:41:23', '2024-10-15 17:41:23'),
(460, 27, '2024-10-15 17:41:28', 1, 33, '2024-10-15 17:41:28', '2024-10-15 17:41:28'),
(461, 27, '2024-10-15 17:41:33', 1, 33, '2024-10-15 17:41:33', '2024-10-15 17:41:33'),
(462, 27, '2024-10-15 17:41:38', 1, 33, '2024-10-15 17:41:38', '2024-10-15 17:41:38'),
(463, 27, '2024-10-15 17:41:44', 1, 33, '2024-10-15 17:41:44', '2024-10-15 17:41:44'),
(464, 27, '2024-10-15 17:41:49', 1, 33, '2024-10-15 17:41:49', '2024-10-15 17:41:49'),
(465, 27, '2024-10-15 17:41:54', 1, 33, '2024-10-15 17:41:54', '2024-10-15 17:41:54'),
(466, 27, '2024-10-15 17:41:59', 1, 33, '2024-10-15 17:41:59', '2024-10-15 17:41:59'),
(467, 27, '2024-10-15 17:42:05', 1, 33, '2024-10-15 17:42:05', '2024-10-15 17:42:05'),
(468, 27, '2024-10-15 17:42:10', 1, 33, '2024-10-15 17:42:10', '2024-10-15 17:42:10'),
(469, 26, '2024-10-15 17:42:15', 1, 33, '2024-10-15 17:42:15', '2024-10-15 17:42:15'),
(470, 26, '2024-10-15 17:42:20', 1, 33, '2024-10-15 17:42:20', '2024-10-15 17:42:20'),
(471, 26, '2024-10-15 17:42:25', 1, 33, '2024-10-15 17:42:25', '2024-10-15 17:42:25');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `addresse` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `google_id`, `facebook_id`, `email_verified_at`, `password`, `avatar`, `telephone`, `ville`, `addresse`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prince Juan', 'juanprince04@gmail.com', '110324858065458221598', NULL, '2024-08-28 10:02:55', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocJzry0uzdFaHpM_mumyNiqNP43_ely1F9Zb66p17-5FbXHZzw=s96-c', NULL, NULL, NULL, 'user', NULL, '2024-08-28 10:02:55', '2024-08-28 10:02:55'),
(3, 'prince', 'prince@gmail.com', NULL, NULL, NULL, '$2y$12$Eym.qX5x955O0E6hnxTupO57YoLSblU11gR3ZXcZEI4afvXm4bXpK', 'avatar/opz89toUCoWS6N3sVoyLsfpmibMJ9JYvHgmRB0u4.png', NULL, NULL, NULL, 'admin', 'CusqUmT0xFr7zF0R3Rd2DHDZlMg3u7zqYBAr3i2LOayJFF0BiXRzH0K2FLC8', '2024-08-29 09:59:17', '2024-09-26 09:24:51'),
(4, 'rezie', 'rezie@gmail.com', NULL, NULL, NULL, '$2y$12$h0J9k3HvFSLMmsmosW2qxeoRuTJYgpPnGUGvm6B.hih/xfMKYlzC2', NULL, NULL, NULL, NULL, 'user', NULL, '2024-08-29 10:48:06', '2024-08-29 10:48:06'),
(5, 'Prince Gomez', 'princegomez1130@gmail.com', '113301756755872776623', NULL, '2024-08-31 12:06:45', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocL10PwERgDJI0L8nJiBEcWCn-nKXOHQglQfDmhR4baDEWTRgQ=s96-c', NULL, NULL, NULL, 'user', NULL, '2024-08-31 12:06:45', '2024-08-31 12:06:45'),
(6, 'abdel', 'abdel@gmail.com', NULL, NULL, NULL, '$2y$12$2uKgwCB0Z.OCnac6ViwJ.ev8zfdVXj5UkXeqcauxQEcEounQcE7/.', NULL, NULL, NULL, NULL, 'user', NULL, '2024-08-31 12:12:26', '2024-08-31 12:12:26'),
(7, 'zanre', 'zanre@gmail.com', NULL, NULL, NULL, '$2y$12$uAeTQcOn08RiJ4jaVfb7.uIWwcyUDbpRFtbwmRX2fhdOm/L02DTCq', NULL, NULL, NULL, NULL, 'user', NULL, '2024-08-31 12:12:44', '2024-08-31 12:12:44'),
(8, 'manuel', 'manuelgarcia@gmail.com', NULL, NULL, NULL, '$2y$12$Z/UqTSl.aHKamDBtkwqVduPhhSsq86MGywrYZwDZdI66dTQFaOWqe', NULL, NULL, NULL, NULL, 'user', NULL, '2024-09-16 12:24:41', '2024-09-16 12:24:41'),
(9, 'moussa', 'moussa@gmail.com', NULL, NULL, NULL, '$2y$12$IbKX01Sohm0vwOutRyqVC.jmD0tuw6fjDwXtcDsnZj63vGc9nm6Pi', NULL, NULL, NULL, NULL, 'user', NULL, '2024-09-16 14:18:52', '2024-09-16 14:18:52'),
(10, 'marius', 'maruis@gmail.com', NULL, NULL, NULL, '$2y$12$MOX3sESHSydxFiPHNJlTq.0a4J4pXjGph7nIaKgZWk/kmIuEyg76W', NULL, NULL, NULL, NULL, 'user', NULL, '2024-09-17 09:45:00', '2024-09-17 09:45:00'),
(11, 'habib', 'habib@gmail.com', NULL, NULL, NULL, '$2y$12$gBmHolzMrEvtvIkyvNPqrOozB866K1ELHxSC7mLgTGJf55MVW/35e', NULL, NULL, NULL, NULL, 'user', NULL, '2024-09-18 15:44:30', '2024-09-18 15:44:30'),
(12, 'Juan Gomez', NULL, NULL, '2001565670304950', NULL, NULL, 'https://graph.facebook.com/v3.3/2001565670304950/picture', NULL, NULL, NULL, 'user', NULL, '2024-09-27 10:12:47', '2024-09-27 10:12:47'),
(13, 'kieffer', 'kiefferilboudo@gmail.com', NULL, NULL, NULL, '$2y$12$B5VX67iX9l6JQ8Vjkj0a9umQVLUU2qve68kERTm6a8cFS1rDMxqym', 'avatar/xjT63ulk4zq5thyIPoy9VrExTqZf0S2L28jwKOKW.png', NULL, NULL, NULL, 'user', NULL, '2024-10-08 16:26:45', '2024-10-08 16:31:23'),
(14, 'boris', 'boris@gmail.com', NULL, NULL, NULL, '$2y$12$cpYmal2X7RvDH8DgKmrjh.5fUZdpUrqyx2NVbtqTIQw2P/ggeEpIa', NULL, NULL, NULL, NULL, 'user', NULL, '2024-10-08 17:19:36', '2024-10-08 17:19:36');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `humidites`
--
ALTER TABLE `humidites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `humidites_ruche_id_foreign` (`ruche_id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `localisations`
--
ALTER TABLE `localisations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localisations_ruche_id_foreign` (`ruche_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_ruche_id_foreign` (`ruche_id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_temperature_id_foreign` (`temperature_id`),
  ADD KEY `notifications_humidite_id_foreign` (`humidite_id`),
  ADD KEY `notifications_poid_id_foreign` (`poid_id`),
  ADD KEY `notifications_localisation_id_foreign` (`localisation_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `poids`
--
ALTER TABLE `poids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poids_ruche_id_foreign` (`ruche_id`);

--
-- Index pour la table `ruches`
--
ALTER TABLE `ruches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ruches_ruchier_id_foreign` (`ruchier_id`);

--
-- Index pour la table `ruchiers`
--
ALTER TABLE `ruchiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ruchiers_user_id_foreign` (`user_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `temperatures`
--
ALTER TABLE `temperatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temperatures_ruche_id_foreign` (`ruche_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`),
  ADD UNIQUE KEY `users_facebook_id_unique` (`facebook_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `humidites`
--
ALTER TABLE `humidites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `localisations`
--
ALTER TABLE `localisations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `poids`
--
ALTER TABLE `poids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT pour la table `ruches`
--
ALTER TABLE `ruches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `ruchiers`
--
ALTER TABLE `ruchiers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `temperatures`
--
ALTER TABLE `temperatures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `humidites`
--
ALTER TABLE `humidites`
  ADD CONSTRAINT `humidites_ruche_id_foreign` FOREIGN KEY (`ruche_id`) REFERENCES `ruches` (`id`);

--
-- Contraintes pour la table `localisations`
--
ALTER TABLE `localisations`
  ADD CONSTRAINT `localisations_ruche_id_foreign` FOREIGN KEY (`ruche_id`) REFERENCES `ruches` (`id`);

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_humidite_id_foreign` FOREIGN KEY (`humidite_id`) REFERENCES `humidites` (`id`),
  ADD CONSTRAINT `notifications_localisation_id_foreign` FOREIGN KEY (`localisation_id`) REFERENCES `localisations` (`id`),
  ADD CONSTRAINT `notifications_poid_id_foreign` FOREIGN KEY (`poid_id`) REFERENCES `poids` (`id`),
  ADD CONSTRAINT `notifications_ruche_id_foreign` FOREIGN KEY (`ruche_id`) REFERENCES `ruches` (`id`),
  ADD CONSTRAINT `notifications_temperature_id_foreign` FOREIGN KEY (`temperature_id`) REFERENCES `temperatures` (`id`),
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `poids`
--
ALTER TABLE `poids`
  ADD CONSTRAINT `poids_ruche_id_foreign` FOREIGN KEY (`ruche_id`) REFERENCES `ruches` (`id`);

--
-- Contraintes pour la table `ruches`
--
ALTER TABLE `ruches`
  ADD CONSTRAINT `ruches_ruchier_id_foreign` FOREIGN KEY (`ruchier_id`) REFERENCES `ruchiers` (`id`);

--
-- Contraintes pour la table `ruchiers`
--
ALTER TABLE `ruchiers`
  ADD CONSTRAINT `ruchiers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `temperatures`
--
ALTER TABLE `temperatures`
  ADD CONSTRAINT `temperatures_ruche_id_foreign` FOREIGN KEY (`ruche_id`) REFERENCES `ruches` (`id`);
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
