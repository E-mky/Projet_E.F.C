-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 29 nov. 2023 à 02:04
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `europefootballclub`
--

-- --------------------------------------------------------

--
-- Structure de la table `bundesliga`
--

CREATE TABLE `bundesliga` (
  `id` int(11) NOT NULL,
  `Nom_club` varchar(255) NOT NULL,
  `Match_joue` int(11) DEFAULT NULL,
  `Match_gagne` int(11) DEFAULT NULL,
  `Match_nul` int(11) DEFAULT NULL,
  `Match_perdu` int(11) DEFAULT NULL,
  `But_pour` int(11) DEFAULT NULL,
  `But_contre` int(11) DEFAULT NULL,
  `But_difference` int(11) DEFAULT NULL,
  `Point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bundesliga`
--

INSERT INTO `bundesliga` (`id`, `Nom_club`, `Match_joue`, `Match_gagne`, `Match_nul`, `Match_perdu`, `But_pour`, `But_contre`, `But_difference`, `Point`) VALUES
(1, ' BAYER LEVERKUSEN', 11, 10, 1, 0, 34, 10, 24, 31),
(2, ' Bayern Munich', 11, 9, 2, 0, 42, 9, 33, 29),
(3, 'VFB Stuttgart', 11, 8, 0, 3, 29, 14, 15, 24),
(4, 'RB Leipzig', 11, 7, 2, 2, 28, 10, 18, 23),
(5, 'Borussia Dortmund', 11, 6, 3, 2, 21, 17, 4, 21),
(6, 'Hoffenheim', 11, 6, 1, 4, 23, 20, 3, 19),
(7, 'Eintracht Francfort', 11, 4, 6, 1, 17, 11, 6, 18),
(8, 'Fribourg', 11, 4, 2, 5, 14, 22, -8, 14),
(9, 'Borussia Mgladbach', 11, 3, 4, 4, 23, 23, 0, 13),
(10, 'Augsburg', 11, 3, 4, 4, 20, 23, -3, 13),
(11, 'Wolfsburg', 11, 4, 1, 6, 15, 20, -5, 13),
(12, 'Werder Breme', 11, 3, 2, 6, 18, 22, -4, 11),
(13, 'Heidenheim', 11, 3, 1, 7, 17, 26, -9, 10),
(14, 'Bochum', 11, 1, 6, 4, 11, 25, -14, 9),
(15, 'Darmstadt', 11, 2, 2, 7, 14, 32, -18, 8),
(16, 'Mayence', 11, 1, 4, 6, 11, 24, -13, 7),
(17, 'FC Cologne', 11, 1, 3, 7, 9, 23, -14, 6),
(18, 'Union Berlin', 11, 2, 0, 9, 11, 26, -15, 6);

-- --------------------------------------------------------

--
-- Structure de la table `liga`
--

CREATE TABLE `liga` (
  `id` int(11) NOT NULL,
  `Nom_club` varchar(255) NOT NULL,
  `Match_joue` int(11) DEFAULT NULL,
  `Match_gagne` int(11) DEFAULT NULL,
  `Match_nul` int(11) DEFAULT NULL,
  `Match_perdu` int(11) DEFAULT NULL,
  `But_pour` int(11) DEFAULT NULL,
  `But_contre` int(11) DEFAULT NULL,
  `But_difference` int(11) DEFAULT NULL,
  `Point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `liga`
--

INSERT INTO `liga` (`id`, `Nom_club`, `Match_joue`, `Match_gagne`, `Match_nul`, `Match_perdu`, `But_pour`, `But_contre`, `But_difference`, `Point`) VALUES
(1, 'Gérone', 13, 11, 1, 1, 31, 16, 15, 34),
(2, 'Réal Madrid', 13, 10, 2, 1, 28, 9, 19, 32),
(3, 'FC Barcelone ', 13, 9, 3, 1, 26, 13, 13, 30),
(4, 'Atlético Madrid', 13, 10, 1, 2, 31, 13, 18, 31),
(5, 'Athletic Bilbao', 13, 6, 2, 5, 18, 17, 1, 20),
(6, 'Réal Sociedad', 13, 6, 3, 4, 23, 16, 7, 22),
(7, 'Betis Seville', 13, 5, 6, 2, 17, 16, 1, 21),
(8, 'Las Palmas', 13, 5, 3, 5, 11, 12, -1, 18),
(9, 'Valence CF', 13, 5, 3, 5, 16, 18, -2, 18),
(10, 'Getafe', 13, 3, 7, 3, 15, 17, -2, 16),
(11, 'Osasuna', 13, 4, 2, 7, 15, 21, -6, 14),
(12, 'Seville FC', 12, 2, 6, 4, 18, 17, 1, 12),
(13, 'Villareal', 13, 3, 3, 7, 18, 24, -6, 12),
(14, 'Alavés', 13, 3, 3, 7, 11, 18, -7, 12),
(15, 'Cadix', 14, 4, 4, 6, 14, 19, -5, 16),
(16, 'Majorque', 14, 1, 6, 7, 14, 22, -6, 9),
(17, 'Celta Vigo', 13, 1, 4, 8, 14, 24, -10, 7),
(18, 'Grenade FC', 13, 1, 4, 8, 18, 30, -12, 7);

-- --------------------------------------------------------

--
-- Structure de la table `ligue1`
--

CREATE TABLE `ligue1` (
  `id` int(11) NOT NULL,
  `Nom_club` varchar(255) NOT NULL,
  `Match_joue` int(11) DEFAULT NULL,
  `Match_gagne` int(11) DEFAULT NULL,
  `Match_nul` int(11) DEFAULT NULL,
  `Match_perdu` int(11) DEFAULT NULL,
  `But_pour` int(11) DEFAULT NULL,
  `But_contre` int(11) DEFAULT NULL,
  `But_difference` int(11) DEFAULT NULL,
  `Point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ligue1`
--

INSERT INTO `ligue1` (`id`, `Nom_club`, `Match_joue`, `Match_gagne`, `Match_nul`, `Match_perdu`, `But_pour`, `But_contre`, `But_difference`, `Point`) VALUES
(1, 'Paris Saint-Germain', 12, 8, 3, 1, 29, 9, 20, 27),
(2, 'OGC Nice', 12, 7, 5, 0, 13, 4, 9, 26),
(3, 'AS Monaco', 12, 7, 3, 2, 25, 14, 11, 24),
(4, 'LOSC Lille', 12, 5, 5, 2, 15, 11, 4, 20),
(5, 'Stade de Reims', 12, 6, 3, 4, 17, 15, 2, 20),
(6, 'RC Lens', 12, 4, 4, 4, 13, 13, 0, 16),
(7, 'Havre Athletic Club', 12, 3, 6, 3, 12, 13, -1, 15),
(8, 'Stade Brestois 29', 12, 4, 3, 4, 11, 13, -2, 15),
(9, 'FC Nantes', 12, 4, 2, 6, 17, 23, -6, 14),
(10, 'Olympique de Marseille', 12, 3, 4, 4, 12, 13, -1, 13),
(11, 'FC Metz', 12, 3, 4, 5, 12, 18, -6, 13),
(12, 'Montpellier Herault SC', 12, 3, 4, 4, 15, 14, 1, 12),
(13, 'Stade Rennais FC', 12, 3, 6, 4, 16, 16, 0, 12),
(14, 'Toulouse FC', 12, 2, 6, 4, 13, 16, -3, 12),
(15, 'RC Strasbourg Alsace', 12, 2, 3, 6, 9, 15, -6, 12),
(16, 'FC Lorient', 11, 2, 5, 5, 15, 21, -6, 11),
(17, 'Clermont Foot 63', 9, 2, 3, 6, 8, 14, -6, 9),
(18, 'Olympique Lyonnais', 7, 1, 4, 6, 9, 19, -10, 7);

-- --------------------------------------------------------

--
-- Structure de la table `premierleague`
--

CREATE TABLE `premierleague` (
  `id` int(11) NOT NULL,
  `Nom_club` varchar(255) NOT NULL,
  `Match_joue` int(11) DEFAULT NULL,
  `Match_gagne` int(11) DEFAULT NULL,
  `Match_nul` int(11) DEFAULT NULL,
  `Match_perdu` int(11) DEFAULT NULL,
  `But_pour` int(11) DEFAULT NULL,
  `But_contre` int(11) DEFAULT NULL,
  `But_difference` int(11) DEFAULT NULL,
  `Point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `premierleague`
--

INSERT INTO `premierleague` (`id`, `Nom_club`, `Match_joue`, `Match_gagne`, `Match_nul`, `Match_perdu`, `But_pour`, `But_contre`, `But_difference`, `Point`) VALUES
(1, 'Manchester City', 12, 9, 1, 2, 32, 12, 20, 28),
(2, 'Liverpool', 12, 8, 3, 1, 27, 10, 17, 27),
(3, 'Arsenal', 12, 8, 3, 1, 26, 10, 16, 27),
(4, 'Tottenham', 12, 8, 2, 2, 24, 15, 9, 26),
(5, 'Aston Villa', 12, 8, 1, 3, 29, 17, 12, 25),
(6, 'Manchester United', 12, 8, 0, 5, 13, 16, -3, 21),
(7, 'Newcastle', 12, 6, 2, 4, 27, 13, 14, 20),
(8, 'Brighton', 12, 5, 4, 3, 25, 21, 4, 19),
(9, 'West Ham', 12, 5, 2, 5, 21, 22, -1, 17),
(10, 'Chelsea', 12, 4, 4, 4, 21, 16, 5, 16),
(11, 'Brentford', 12, 4, 4, 4, 19, 17, 2, 16),
(12, 'Crystal Palace', 12, 4, 3, 5, 12, 16, -4, NULL),
(13, 'Nottingham Forest', 12, 3, 4, 5, 14, 18, -4, NULL),
(14, 'Fulham', 12, 3, 3, 6, 10, 20, -10, NULL),
(15, 'Bournemouth', 12, 2, 3, 7, 11, 27, -16, 9),
(16, 'Luton', 12, 1, 3, 8, 10, 22, -12, 6),
(17, 'Everton', 12, 4, 2, 6, 14, 17, -3, 4),
(18, 'Burnley', 12, 1, 1, 10, 9, 30, -21, 4),
(37, 'Paris-Saint-Germain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `seriea`
--

CREATE TABLE `seriea` (
  `id` int(11) NOT NULL,
  `Nom_club` varchar(255) NOT NULL,
  `Match_joue` int(11) DEFAULT NULL,
  `Match_gagne` int(11) DEFAULT NULL,
  `Match_nul` int(11) DEFAULT NULL,
  `Match_perdu` int(11) DEFAULT NULL,
  `But_pour` int(11) DEFAULT NULL,
  `But_contre` int(11) DEFAULT NULL,
  `But_difference` int(11) DEFAULT NULL,
  `Point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `seriea`
--

INSERT INTO `seriea` (`id`, `Nom_club`, `Match_joue`, `Match_gagne`, `Match_nul`, `Match_perdu`, `But_pour`, `But_contre`, `But_difference`, `Point`) VALUES
(1, 'Inter Milan', 12, 10, 1, 1, 29, 6, 23, 31),
(2, 'Juventus Turin', 12, 9, 2, 1, 19, 7, 12, 29),
(3, 'AC Milan', 12, 7, 2, 3, 20, 14, 6, 23),
(4, 'Naples', 12, 6, 3, 3, 24, 13, 11, 21),
(5, 'Atalanta Bergame', 12, 6, 2, 4, 20, 11, 9, 20),
(6, 'Fiorentina', 12, 6, 2, 4, 20, 16, 4, 20),
(7, 'AS Rome', 12, 5, 3, 4, 22, 14, 8, 18),
(8, 'Bologne', 12, 4, 6, 2, 13, 10, 3, 18),
(9, 'Monza', 12, 4, 5, 3, 13, 11, 2, 17),
(10, 'Lazio Rome', 12, 5, 2, 5, 13, 13, 0, 17),
(11, 'Torino', 12, 4, 4, 4, 10, 14, -4, 16),
(12, 'Frosinone', 12, 4, 3, 5, 17, 20, -3, 15),
(13, 'Genoa', 12, 4, 2, 6, 13, 16, -3, 14),
(14, 'Lecce', 12, 3, 5, 4, 13, 16, -3, 14),
(15, 'Sassuolo', 12, 3, 3, 6, 16, 21, -5, 12),
(16, 'Udinese', 12, 1, 8, 3, 8, 15, -7, 11),
(17, 'Empoli', 12, 3, 1, 8, 5, 21, -16, 10),
(18, 'Cagliari', 12, 2, 3, 7, 12, 24, -12, 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bundesliga`
--
ALTER TABLE `bundesliga`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `liga`
--
ALTER TABLE `liga`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ligue1`
--
ALTER TABLE `ligue1`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `premierleague`
--
ALTER TABLE `premierleague`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `seriea`
--
ALTER TABLE `seriea`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bundesliga`
--
ALTER TABLE `bundesliga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `liga`
--
ALTER TABLE `liga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `ligue1`
--
ALTER TABLE `ligue1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `premierleague`
--
ALTER TABLE `premierleague`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `seriea`
--
ALTER TABLE `seriea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
