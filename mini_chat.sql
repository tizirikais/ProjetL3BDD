-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 14 Janvier 2017 à 12:53
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mini_chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `ip_adresse`
--

CREATE TABLE `ip_adresse` (
  `id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `time_connexion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ip_adresse`
--

INSERT INTO `ip_adresse` (`id`, `ip`, `time_connexion`) VALUES
(64, '::1', 1484398416);

-- --------------------------------------------------------

--
-- Structure de la table `messageprive`
--

CREATE TABLE `messageprive` (
  `id` int(11) NOT NULL,
  `id_emeteur` int(11) NOT NULL,
  `id_recepteur` int(11) NOT NULL,
  `datecreate` datetime NOT NULL,
  `message` text NOT NULL,
  `etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `messagetable`
--

CREATE TABLE `messagetable` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `pseudo` varchar(250) NOT NULL,
  `datecreate` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messagetable`
--

INSERT INTO `messagetable` (`id`, `userid`, `pseudo`, `datecreate`, `message`) VALUES
(79, 38, 'mokrane', '2017-01-14 10:35:30', 'refrfv dfvfd'),
(70, 38, 'mokrane', '2017-01-14 10:32:30', 'tfred'),
(71, 38, 'mokrane', '2017-01-14 10:33:23', 'juhtf'),
(72, 38, 'mokrane', '2017-01-14 10:34:58', 'jgj'),
(73, 38, 'mokrane', '2017-01-14 10:35:08', 'dasdas '),
(74, 38, 'mokrane', '2017-01-14 10:35:11', 'ddds'),
(75, 38, 'mokrane', '2017-01-14 10:35:13', 'sadxd'),
(76, 38, 'mokrane', '2017-01-14 10:35:19', 'dwqa'),
(78, 38, 'mokrane', '2017-01-14 10:35:25', 'dregbq'),
(77, 38, 'mokrane', '2017-01-14 10:35:21', 'rtgsdsd');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `PSEUDO` varchar(120) DEFAULT NULL,
  `NOM` varchar(120) DEFAULT NULL,
  `PRENOM` varchar(120) DEFAULT NULL,
  `DATENAISSANCE` date NOT NULL,
  `MAIL` varchar(120) DEFAULT NULL,
  `MOT_PASSE` varchar(250) DEFAULT NULL,
  `SEXE` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `PSEUDO`, `NOM`, `PRENOM`, `DATENAISSANCE`, `MAIL`, `MOT_PASSE`, `SEXE`) VALUES
(35, 'kahina', 'MOHAMMEDI', 'kahina', '1985-06-10', 'kahinak85@yahoo.fr', '24ba2b5e27f6ac19281687120a4cc2545f08577a', 1),
(36, 'Zili', 'KAIS', 'Tiziri', '1990-03-27', 'tizirikais@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1),
(38, 'mokrane', 'krikeb', 'mokrane', '1980-10-29', 'mokrane@lyxeo.fr', 'cb45c671cbc500627ea424eea5f91996221b5935', 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ip_adresse`
--
ALTER TABLE `ip_adresse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messageprive`
--
ALTER TABLE `messageprive`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messagetable`
--
ALTER TABLE `messagetable`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ip_adresse`
--
ALTER TABLE `ip_adresse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `messageprive`
--
ALTER TABLE `messageprive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `messagetable`
--
ALTER TABLE `messagetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
