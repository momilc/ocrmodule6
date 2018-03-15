-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 15 mars 2018 à 21:27
-- Version du serveur :  10.2.13-MariaDB
-- Version de PHP :  7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `snowtrick_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `snowtrick_category`
--

CREATE TABLE `snowtrick_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `snowtrick_category`
--

INSERT INTO `snowtrick_category` (`id`, `title`) VALUES
(1, 'Grab'),
(2, 'Rotation');

-- --------------------------------------------------------

--
-- Structure de la table `snowtrick_comment`
--

CREATE TABLE `snowtrick_comment` (
  `id` int(11) NOT NULL,
  `figure_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `published_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `snowtrick_figure`
--

CREATE TABLE `snowtrick_figure` (
  `id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `style_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `published_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `snowtrick_figure`
--

INSERT INTO `snowtrick_figure` (`id`, `image_id`, `author_id`, `category_id`, `style_id`, `title`, `slug`, `content`, `published_at`) VALUES
(1, 1, 1, 1, 1, 'Mute', 'mute', 'Pour réaliser un Grab Mute il faut saisir la carre frontside de la planche entre les deux pieds avec la main avant .', '2018-03-08 16:38:46'),
(2, 2, 1, 1, 2, 'Sad', 'sad', 'La figure Sad ou Mélancolie ou encore Style week : elle consiste à saisir  la carre backside de la planche, entre les deux pieds, avec la main avant.', '2018-03-08 23:28:15'),
(17, 17, 1, 1, 1, 'Indy', 'indy', 'Consiste à saisir de la carre frontside de la planche, entre les deux pieds, avec la main arrière', '2018-03-09 00:03:25'),
(18, 18, 1, 1, 2, 'Stalefish', 'stalefish', 'Consiste à saisir la carre backside de la planche entre les deux pieds avec la main arrière', '2018-03-09 09:47:57'),
(19, 19, 1, 1, 1, 'Tail grab', 'tail-grab', 'Consiste saisir la partie arrière de la planche, avec la main arrière', '2018-03-09 09:58:08'),
(20, 20, 1, 1, 1, 'Nose grab', 'nose-grab', 'Consiste à saisi la partie avant de la planche, avec la main avant', '2018-03-09 10:02:28'),
(21, 21, 1, 1, 2, 'Japan Air', 'japan-air', 'Saisir l\'avant de la planche, avec la main avant, du côté de la carre frontside.', '2018-03-09 10:17:25'),
(26, 26, 1, 1, 2, 'Seat Belt', 'seat-belt', 'Consiste à saisir le carre frontside à l\'arrière avec la main avant', '2018-03-09 11:11:35'),
(27, 27, 1, 1, 2, 'Truck Driver', 'truck-driver', 'Consiste à saisir du carre avant et carre arrière avec chaque main (comme tenir un volant de voiture)', '2018-03-09 11:22:35'),
(28, 28, 1, 2, 2, 'Rotation Backside 180', 'rotation-backside-180', 'Une rotation frontside se déclenche naturellement depuis une position frontside (l\'appui se fait sur la carre frontside). un 180 désigne un demi-tour, soit 180 degrés d\'angle.', '2018-03-09 11:25:34');

-- --------------------------------------------------------

--
-- Structure de la table `snowtrick_figure_videos`
--

CREATE TABLE `snowtrick_figure_videos` (
  `figure_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `snowtrick_figure_videos`
--

INSERT INTO `snowtrick_figure_videos` (`figure_id`, `video_id`) VALUES
(1, 3),
(2, 2),
(17, 14),
(18, 15),
(19, 16),
(20, 17),
(21, 18),
(26, 20),
(27, 21),
(28, 22);

-- --------------------------------------------------------

--
-- Structure de la table `snowtrick_image`
--

CREATE TABLE `snowtrick_image` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `snowtrick_image`
--

INSERT INTO `snowtrick_image` (`id`, `url`, `alt`) VALUES
(1, 'uploads/img', 'mute-grab-snowboarding_348x199.png'),
(2, 'uploads/img', 'snowboard_sad.png'),
(17, 'uploads/img', 'indy-grab-goofy-snowboarding_348x199.png'),
(18, 'uploads/img', '2018-02-19-snowboard_stalefish_-trick-thumbnail_348x199.png'),
(19, 'uploads/img', '03_tail_grab_4348_348x199.png'),
(20, 'uploads/img', '03_tail_grab_4348_348x199.png'),
(21, 'uploads/img', 'japan_air_348_199.png'),
(22, 'uploads/img', 'Japan Powder with BYND X MDLS 2018 Episode 1- photo1.jpg'),
(23, 'uploads/img', 'Japan Powder with BYND X MDLS 2018 Episode 1- photo1.jpg'),
(24, 'uploads/img', 'Japan Powder with BYND X MDLS 2018 Episode 1- photo1.jpg'),
(25, 'uploads/img', 'Japan Powder with BYND X MDLS 2018 Episode 1- photo1.jpg'),
(26, 'uploads/img', '20120107-furey-_grab_seat_belt_348x199.png'),
(27, 'uploads/img', 'snowboard_grab_truck_driver.png'),
(28, 'uploads/img', 'snowboard_backside_180_Wellhausen_348x199.png');

-- --------------------------------------------------------

--
-- Structure de la table `snowtrick_photo`
--

CREATE TABLE `snowtrick_photo` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `snowtrick_style`
--

CREATE TABLE `snowtrick_style` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `snowtrick_style`
--

INSERT INTO `snowtrick_style` (`id`, `title`) VALUES
(1, 'GooFy'),
(2, 'Regular');

-- --------------------------------------------------------

--
-- Structure de la table `snowtrick_user`
--

CREATE TABLE `snowtrick_user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `profile_picture_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `snowtrick_user`
--

INSERT INTO `snowtrick_user` (`id`, `full_name`, `username`, `email`, `password`, `roles`, `profile_picture_path`) VALUES
(1, 'adazd', 'admin', 'afzaza@yaho.fr', '$2y$13$KpNRi83amdwGBesHbu6UK.mKeTCp9WyaQ.IQvj8YJjIBvytvT9pbO', '[\"ROLE_ADMIN\"]', NULL),
(17, 'zdazdad', 'dzazdaz', 'dzazdaz@gerger.vom', '$2y$13$0mSlJSNI0wmxQPgS8oCWGuo10HXAEyu8/i8H81VVetPylGxmwWjGS', '[\"ROLE_ADMIN\"]', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `snowtrick_video`
--

CREATE TABLE `snowtrick_video` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `snowtrick_video`
--

INSERT INTO `snowtrick_video` (`id`, `url`) VALUES
(1, '8nf_KkZmEMA'),
(2, 'KEdFwJ4SWq4'),
(3, 'wWmqtgDutls'),
(14, 'IfFcP3krS98'),
(15, 'f9FjhCt_w2U'),
(16, 'ueU_HGSvEKU'),
(17, 'y2MHu0mbzQw'),
(18, 'jH76540wSqU'),
(19, 'H76540wSqU'),
(20, '4vGEOYNGi_c'),
(21, '6tgjY8baFT0'),
(22, 'duCwYpZ_--4');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `snowtrick_category`
--
ALTER TABLE `snowtrick_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `snowtrick_comment`
--
ALTER TABLE `snowtrick_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_864BED2B5C011B5` (`figure_id`),
  ADD KEY `IDX_864BED2BF675F31B` (`author_id`),
  ADD KEY `IDX_864BED2B7E9E4C8C` (`photo_id`);

--
-- Index pour la table `snowtrick_figure`
--
ALTER TABLE `snowtrick_figure`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A701A4232B36786B` (`title`),
  ADD UNIQUE KEY `UNIQ_A701A4233DA5256D` (`image_id`),
  ADD KEY `IDX_A701A423F675F31B` (`author_id`),
  ADD KEY `IDX_A701A42312469DE2` (`category_id`),
  ADD KEY `IDX_A701A423BACD6074` (`style_id`);

--
-- Index pour la table `snowtrick_figure_videos`
--
ALTER TABLE `snowtrick_figure_videos`
  ADD PRIMARY KEY (`figure_id`,`video_id`),
  ADD KEY `IDX_419DFB445C011B5` (`figure_id`),
  ADD KEY `IDX_419DFB4429C1004E` (`video_id`);

--
-- Index pour la table `snowtrick_image`
--
ALTER TABLE `snowtrick_image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `snowtrick_photo`
--
ALTER TABLE `snowtrick_photo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `snowtrick_style`
--
ALTER TABLE `snowtrick_style`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `snowtrick_user`
--
ALTER TABLE `snowtrick_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1ED50031F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_1ED50031E7927C74` (`email`);

--
-- Index pour la table `snowtrick_video`
--
ALTER TABLE `snowtrick_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `snowtrick_category`
--
ALTER TABLE `snowtrick_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `snowtrick_comment`
--
ALTER TABLE `snowtrick_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `snowtrick_figure`
--
ALTER TABLE `snowtrick_figure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `snowtrick_image`
--
ALTER TABLE `snowtrick_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `snowtrick_photo`
--
ALTER TABLE `snowtrick_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `snowtrick_style`
--
ALTER TABLE `snowtrick_style`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `snowtrick_user`
--
ALTER TABLE `snowtrick_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `snowtrick_video`
--
ALTER TABLE `snowtrick_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `snowtrick_comment`
--
ALTER TABLE `snowtrick_comment`
  ADD CONSTRAINT `FK_864BED2B5C011B5` FOREIGN KEY (`figure_id`) REFERENCES `snowtrick_figure` (`id`),
  ADD CONSTRAINT `FK_864BED2B7E9E4C8C` FOREIGN KEY (`photo_id`) REFERENCES `snowtrick_photo` (`id`),
  ADD CONSTRAINT `FK_864BED2BF675F31B` FOREIGN KEY (`author_id`) REFERENCES `snowtrick_user` (`id`);

--
-- Contraintes pour la table `snowtrick_figure`
--
ALTER TABLE `snowtrick_figure`
  ADD CONSTRAINT `FK_A701A42312469DE2` FOREIGN KEY (`category_id`) REFERENCES `snowtrick_category` (`id`),
  ADD CONSTRAINT `FK_A701A4233DA5256D` FOREIGN KEY (`image_id`) REFERENCES `snowtrick_image` (`id`),
  ADD CONSTRAINT `FK_A701A423BACD6074` FOREIGN KEY (`style_id`) REFERENCES `snowtrick_style` (`id`),
  ADD CONSTRAINT `FK_A701A423F675F31B` FOREIGN KEY (`author_id`) REFERENCES `snowtrick_user` (`id`);

--
-- Contraintes pour la table `snowtrick_figure_videos`
--
ALTER TABLE `snowtrick_figure_videos`
  ADD CONSTRAINT `FK_419DFB4429C1004E` FOREIGN KEY (`video_id`) REFERENCES `snowtrick_video` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_419DFB445C011B5` FOREIGN KEY (`figure_id`) REFERENCES `snowtrick_figure` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
