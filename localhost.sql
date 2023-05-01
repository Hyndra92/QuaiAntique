-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 01 mai 2023 à 12:11
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230327154942', '2023-03-27 15:49:52', 20),
('DoctrineMigrations\\Version20230327155403', '2023-03-27 15:55:05', 22);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `firstname`, `lastname`, `email`) VALUES
(1, 'Mourad', '[]', '$2y$13$yg5meysA/.CSIxLRyIYdDO67gbTxCFpjL0EofVnpayR4l.7mmn1g6', 'Mourad', 'Mourad', 'Mourad@Mourad.fr');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de données : `quaiantique`
--
CREATE DATABASE IF NOT EXISTS `quaiantique` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `quaiantique`;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230327115020', '2023-03-27 11:50:56', 38),
('DoctrineMigrations\\Version20230327121001', '2023-03-27 12:10:12', 21),
('DoctrineMigrations\\Version20230327132840', '2023-03-27 13:28:55', 15),
('DoctrineMigrations\\Version20230329160334', '2023-03-29 16:03:44', 22),
('DoctrineMigrations\\Version20230329165948', '2023-03-29 16:59:57', 22),
('DoctrineMigrations\\Version20230330114139', '2023-03-30 11:41:48', 31),
('DoctrineMigrations\\Version20230330133529', '2023-03-30 13:35:37', 166),
('DoctrineMigrations\\Version20230404120606', '2023-04-04 12:06:17', 92),
('DoctrineMigrations\\Version20230404134913', '2023-04-04 13:49:21', 22),
('DoctrineMigrations\\Version20230405141755', '2023-04-05 14:18:30', 48),
('DoctrineMigrations\\Version20230405142134', '2023-04-05 14:21:41', 24),
('DoctrineMigrations\\Version20230405145457', '2023-04-05 14:55:43', 31),
('DoctrineMigrations\\Version20230405155829', '2023-04-05 15:58:36', 23),
('DoctrineMigrations\\Version20230406143147', '2023-04-06 14:31:54', 59),
('DoctrineMigrations\\Version20230406143613', '2023-04-06 14:36:19', 9),
('DoctrineMigrations\\Version20230406153544', '2023-04-06 15:35:52', 25),
('DoctrineMigrations\\Version20230406153658', '2023-04-06 15:37:03', 11),
('DoctrineMigrations\\Version20230419133319', '2023-04-19 13:33:30', 35);

-- --------------------------------------------------------

--
-- Structure de la table `gallery`
--

CREATE TABLE `gallery` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `horaire`
--

CREATE TABLE `horaire` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `horaire`
--

INSERT INTO `horaire` (`id`, `name`, `moment`, `open`) VALUES
(1, '12h00', 'Midi', 1),
(2, '13H00', 'Midi', 1),
(3, '14H00', 'Midi', 1),
(4, '19H00', 'Night', 1),
(5, '20H00', 'Night', 1),
(6, '21H00', 'Night', 1),
(7, '22H00', 'Night', 1);

-- --------------------------------------------------------

--
-- Structure de la table `menudesserts`
--

CREATE TABLE `menudesserts` (
  `menus_id` int NOT NULL,
  `plats_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menudesserts`
--

INSERT INTO `menudesserts` (`menus_id`, `plats_id`) VALUES
(1, 12),
(1, 14),
(1, 15),
(2, 12),
(2, 14),
(2, 17),
(3, 14),
(3, 17);

-- --------------------------------------------------------

--
-- Structure de la table `menuprincipale`
--

CREATE TABLE `menuprincipale` (
  `menus_id` int NOT NULL,
  `plats_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menuprincipale`
--

INSERT INTO `menuprincipale` (`menus_id`, `plats_id`) VALUES
(1, 7),
(1, 8),
(1, 9),
(2, 5),
(2, 10),
(2, 11),
(3, 8),
(3, 9),
(3, 11);

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `price`) VALUES
(1, 'Menu du midi', 'Ce que nous servons le midi', '45'),
(2, 'Menu du soir', 'Ce que nous servons le soir', '65'),
(3, 'Menu enfant', 'Pour les petits mais aussi les grands', '30');

-- --------------------------------------------------------

--
-- Structure de la table `menus_plats`
--

CREATE TABLE `menus_plats` (
  `menus_id` int NOT NULL,
  `plats_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus_plats`
--

INSERT INTO `menus_plats` (`menus_id`, `plats_id`) VALUES
(1, 1),
(1, 2),
(1, 5),
(2, 1),
(2, 3),
(2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `parameters`
--

CREATE TABLE `parameters` (
  `id` int NOT NULL,
  `places_of_morning` int NOT NULL,
  `places_of_night` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_one` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_two` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parameters`
--

INSERT INTO `parameters` (`id`, `places_of_morning`, `places_of_night`, `title`, `horaire`, `content_one`, `content_two`) VALUES
(1, 30, 30, 'Bienvenue Au Quai Antique', '<div>Jeudi 11h-12h / 19h-22h</div>', '<div>Bienvenue dans notre restaurant bio organique, où nous vous proposons une expérience culinaire saine, durable et respectueuse de l\'environnement. Chez nous, vous trouverez une cuisine inventive et savoureuse, préparée avec des ingrédients locaux et de saison, issue de l\'agriculture biologique et respectant les normes strictes de production et de transformation. Nous sommes fiers de proposer des plats équilibrés, riches en nutriments, et sans compromis sur le goût. Notre carte est élaborée avec soin pour répondre aux besoins et aux envies de chacun, que vous soyez végétarien, végétalien, sans gluten ou simplement à la recherche de nouvelles saveurs. Nous travaillons également avec des producteurs locaux, dans une démarche éthique et solidaire, pour soutenir l\'agriculture biologique et réduire notre empreinte carbone. Nous sommes convaincus que la qualité de nos ingrédients se sent dans la qualité de nos plats, et nous sommes heureux de partager cette expérience avec vous. Notre restaurant est un lieu chaleureux et convivial, où vous pourrez vous détendre et profiter d\'un moment de plaisir et de bien-être. Nous sommes impatients de vous accueillir et de vous faire découvrir notre univers culinaire bio et organique.</div>', '<div>exemple</div>');

-- --------------------------------------------------------

--
-- Structure de la table `plats`
--

CREATE TABLE `plats` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plats`
--

INSERT INTO `plats` (`id`, `name`, `description`, `price`, `type`) VALUES
(1, 'Salade de lentilles', 'une délicieuse salade aux lentilles corailles', '14', 'Entrée'),
(2, 'Salade fetâ', 'Une salade accompagné de sa fetâ 100% Grec', '13', 'Entrée'),
(3, 'Plateau de charcuterie', 'charcuterie de nos producteur de Savoie', '24', 'Entrée'),
(5, 'Crozets bio', 'Des petites pâtes carrées faites à partir de farine de sarrasin et d\'eau, souvent accompagnées d\'une sauce au fromage et de lardons.', '16', 'Plat principal'),
(6, 'Pormonier revisité bio', 'Un saucisson à base de viande de porc savoyard, d\'oignons et de persil.', '17', 'Entrée'),
(7, 'Magret de canard bio aux myrtilles', 'Un magret de canard grillé, accompagné d\'une sauce aux myrtilles et de pommes de terre sautées.', '30', 'Plat principal'),
(8, 'Croûte aux champignons bio', 'Une tarte croustillante garnie de champignons sautés, de jambon cru et de fromage fondu.', '29', 'Plat principal'),
(9, 'Soufflé de fromage de Savoie bio', 'Un soufflé aérien à base de fromage de Savoie, garni de noix et de fines herbes.', '29', 'Plat principal'),
(10, 'Carré d\'agneau bio en croûte d\'herbes', 'Un carré d\'agneau tendre et juteux enrobé d\'une croûte croustillante aux herbes, accompagné de légumes de saison.', '42', 'Plat principal'),
(11, 'Feuilleté de chèvre bio aux herbes', 'Un feuilleté croustillant garni de fromage de chèvre frais, de fines herbes et de légumes grillés.', '26', 'Plat principal'),
(12, 'Gateau de Savoie bio', 'Un gâteau léger et moelleux fait avec des oeufs, de la farine et du sucre.', '12', 'Dessert'),
(14, 'Tarte aux myrtilles bio', 'Une tarte sucrée faite avec des myrtilles fraîches et une pâte sablée, servie avec une boule de glace vanille.', '14', 'Dessert'),
(15, 'Crème glacée à la chartreuse bio', 'Une crème glacée onctueuse à base de chartreuse verte bio, servie avec une sauce au chocolat noir.', '14', 'Dessert'),
(16, 'Sabayon de vin blanc bio', 'Un sabayon léger et mousseux à base de vin blanc bio, accompagné de fruits de saison et de biscuits croustillants.', '16', 'Dessert'),
(17, 'Coupe de glace bio', 'Une sélection de glaces artisanales bio, servie avec des fruits frais et des noix caramélisées.', '9', 'Dessert'),
(20, 'Chignin-Bergeron', 'Un vin blanc sec et élégant produit à partir du cépage roussanne, avec des arômes de fruits blancs, de miel et d\'amandes grillées. Certains Chignin-Bergeron peuvent également être élevés en fûts de chêne pour ajouter des notes de vanille et de noisette.', '75', 'Vin'),
(21, 'Pinot noir', 'Un vin rouge élégant et complexe produit à partir du cépage pinot noir, avec des notes de cerises, de framboises et de vanille. Les meilleurs Pinot noir proviennent des vignobles les plus frais et les plus en altitude de la région.', '55', 'Vin'),
(22, 'Gamay', 'Un vin rouge fruité et léger produit à partir du cépage gamay, avec des arômes de cerises, de fraises et d\'épices douces.', '21', 'Vin'),
(23, 'Ice-tea', 'Servis avec tranche de citron et glaçons', '6', 'Soda'),
(24, 'Jus de fruits', 'Jus aux fruits de saisons ( selon la disponibilité )', '8', 'Soda'),
(25, 'Coca-Cola', 'Servis avec tranche de citron et glaçons', '7', 'Soda'),
(26, 'Sprite', 'Servis avec tranche de citron et glaçons', '7', 'Soda'),
(27, 'Evian bouteille 1L', 'Eau plate', '4', 'Eau'),
(28, 'Bonneval bouteille 1L', 'Eau plate', '4', 'Eau'),
(29, 'Badoit 50cl', 'Eau gazeuse', '5', 'Eau'),
(30, 'Badoit citron 50cl', 'Eau gazeuse', '7', 'Eau');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int NOT NULL,
  `number_of_seats` int NOT NULL,
  `date_reserv` date NOT NULL,
  `allergy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `hour_reserv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `number_of_seats`, `date_reserv`, `allergy`, `username`, `user_id`, `hour_reserv`) VALUES
(12, 2, '2025-01-01', 'Carotte', 'Mourad', NULL, '12h00'),
(13, 3, '2025-09-14', 'pénicilline', 'Mourad', NULL, '12h00'),
(14, 2, '2027-09-15', 'pénicilline', 'Mourad', NULL, '14H00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `convive` int DEFAULT NULL,
  `infos` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`, `convive`, `infos`) VALUES
(1, 'Mourad', '[\"ROLE_ADMIN\"]', '$2y$13$PCC2HYuES.7JyL1eLiMyAOh0PZPAzKTw/xOUIcQvTv4f3hyK1Pu/S', 'Mourad@Mourad.fr', 3, 'Allergie a la banane'),
(2, 'LaMeche', '[]', '$2y$13$r3BVQCDXCiRL/Vp8NpsPJ.2BjAONXlDin.VRmPNflR6tmyUkD9yLi', 'Mourad@lameche.fr', NULL, NULL),
(3, 'Bababa', '[]', '$2y$13$FxT0ijfg8GzmtQHVfZ0cgOC9S.td7hN1u5r02IkTTzHKBwWJPUJx2', 'Mourad@lameche.fr', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `horaire`
--
ALTER TABLE `horaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menudesserts`
--
ALTER TABLE `menudesserts`
  ADD PRIMARY KEY (`menus_id`,`plats_id`),
  ADD KEY `IDX_FE882CA214041B84` (`menus_id`),
  ADD KEY `IDX_FE882CA2AA14E1C8` (`plats_id`);

--
-- Index pour la table `menuprincipale`
--
ALTER TABLE `menuprincipale`
  ADD PRIMARY KEY (`menus_id`,`plats_id`),
  ADD KEY `IDX_479F948314041B84` (`menus_id`),
  ADD KEY `IDX_479F9483AA14E1C8` (`plats_id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus_plats`
--
ALTER TABLE `menus_plats`
  ADD PRIMARY KEY (`menus_id`,`plats_id`),
  ADD KEY `IDX_D42885A614041B84` (`menus_id`),
  ADD KEY `IDX_D42885A6AA14E1C8` (`plats_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plats`
--
ALTER TABLE `plats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_42C84955A76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `horaire`
--
ALTER TABLE `horaire`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parameters`
--
ALTER TABLE `parameters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `plats`
--
ALTER TABLE `plats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `menudesserts`
--
ALTER TABLE `menudesserts`
  ADD CONSTRAINT `FK_FE882CA214041B84` FOREIGN KEY (`menus_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FE882CA2AA14E1C8` FOREIGN KEY (`plats_id`) REFERENCES `plats` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `menuprincipale`
--
ALTER TABLE `menuprincipale`
  ADD CONSTRAINT `FK_479F948314041B84` FOREIGN KEY (`menus_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_479F9483AA14E1C8` FOREIGN KEY (`plats_id`) REFERENCES `plats` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `menus_plats`
--
ALTER TABLE `menus_plats`
  ADD CONSTRAINT `FK_D42885A614041B84` FOREIGN KEY (`menus_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D42885A6AA14E1C8` FOREIGN KEY (`plats_id`) REFERENCES `plats` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_42C84955A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
