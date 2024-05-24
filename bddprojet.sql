-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 24 mai 2024 à 18:43
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
-- Base de données : `bddprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id_compte` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id_compte`, `pseudo`, `mail`, `password`) VALUES
(5, 'tata', 'tata@esirem.fr', 'a1cf1779ef7028d9376717d846f6cbc71b7bd7a91c344a0e71798fc2739e47a7'),
(6, 'Louis', 'LOUIS@LOUIS.fr', '5bdaad3926262926966ea35e8b40da3f9665831df4e9fa14d5fb99806aadd04f'),
(7, 'fiofka', 'fiofka@esirem.fr', 'a2c384a4a7307ca39ab31c900feda4221fc8cbc6fc37962e883f26a9a723c0b0'),
(8, 'tato', 'tato@esirem.fr', '990ea44934a4c62e9a79ae3c16b6712e1df62804ce54624d8d826f887fe79cdc'),
(9, 'max', 'max21@esirem.fr', '733207fbc9c9e066b85f789148f14e6125a145b4b80d429e5218dc253a298fa7');

-- --------------------------------------------------------

--
-- Structure de la table `grille`
--

CREATE TABLE `grille` (
  `id_grille` int(11) NOT NULL,
  `nom` varchar(1001) NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT current_timestamp(),
  `id_compte` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `grille`
--

INSERT INTO `grille` (`id_grille`, `nom`, `date_creation`, `id_compte`) VALUES
(1, 'grille1', '2024-05-22 14:04:06', 0),
(2, 'grille2', '0000-00-00 00:00:00', NULL),
(3, 'grille3', '2024-05-22 14:19:56', NULL),
(4, 'grille4', '2024-05-22 16:17:06', NULL),
(5, 'grille5', '2024-05-22 17:11:18', NULL),
(6, 'grille12', '2024-05-23 10:16:56', 5),
(7, 'grillemax', '2024-05-23 10:23:10', 9);

-- --------------------------------------------------------

--
-- Structure de la table `pixel`
--

CREATE TABLE `pixel` (
  `id_pixel` int(11) NOT NULL,
  `couleur` varchar(50) NOT NULL,
  `position_x` int(11) NOT NULL,
  `position_y` int(11) NOT NULL,
  `date_creation` datetime NOT NULL,
  `id_compte` int(11) NOT NULL,
  `id_grille` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id_compte`);

--
-- Index pour la table `grille`
--
ALTER TABLE `grille`
  ADD PRIMARY KEY (`id_grille`);

--
-- Index pour la table `pixel`
--
ALTER TABLE `pixel`
  ADD PRIMARY KEY (`id_pixel`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id_compte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `grille`
--
ALTER TABLE `grille`
  MODIFY `id_grille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `pixel`
--
ALTER TABLE `pixel`
  MODIFY `id_pixel` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
