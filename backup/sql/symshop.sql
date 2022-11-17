-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 17 nov. 2022 à 11:55
-- Version du serveur :  8.0.31-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `owner_id`) VALUES
(26, 'Beauty, Outdoors & Movies', 'beauty-outdoors-and-movies', 8),
(27, 'Music & Industrial', 'music-and-industrial', 7),
(28, 'Books, Industrial & Music', 'books-industrial-and-music', 8);

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
('DoctrineMigrations\\Version20221102153127', '2022-11-02 16:33:35', 34),
('DoctrineMigrations\\Version20221102153639', '2022-11-02 16:37:26', 40),
('DoctrineMigrations\\Version20221102160653', '2022-11-02 17:07:12', 40),
('DoctrineMigrations\\Version20221107150627', '2022-11-07 16:22:03', 69),
('DoctrineMigrations\\Version20221107151922', '2022-11-07 16:22:03', 11);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int DEFAULT NULL,
  `main_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `slug`, `category_id`, `main_picture`, `short_description`) VALUES
(1058, 'Gorgeous Concrete Shirt', 4389, 'gorgeous-concrete-shirt', 26, 'https://picsum.photos/id/1002/400/400', 'Veniam soluta sed repellat autem ab. Consequuntur eum ducimus adipisci rerum numquam neque. Porro sequi eos consequatur quibusdam est.'),
(1059, 'Mediocre Wooden Hat', 15449, 'mediocre-wooden-hat', 26, 'https://picsum.photos/id/282/400/400', 'Fugit earum est dolorem eligendi. Tenetur quibusdam enim sed reiciendis qui ut placeat. Consequuntur porro quis facilis. Illum aut nihil exercitationem ex.'),
(1060, 'Durable Copper Hat', 5799, 'durable-copper-hat', 26, 'https://picsum.photos/id/513/400/400', 'Explicabo voluptatem rerum optio delectus qui nulla praesentium quo. Est sunt quaerat omnis omnis aut unde. Quaerat est facere ut quos necessitatibus. Cum aut quidem enim ratione.'),
(1061, 'Incredible Granite Shoes', 13909, 'incredible-granite-shoes', 26, 'https://picsum.photos/id/859/400/400', 'Quaerat dolorem quibusdam iusto. Dicta velit et sint dolorum odit nostrum. Fuga assumenda culpa iure neque adipisci. A est recusandae ex voluptas est non nihil et.'),
(1062, 'Sleek Silk Computer', 17119, 'sleek-silk-computer', 26, 'https://picsum.photos/id/953/400/400', 'Aut quo eum at placeat perferendis. Unde sequi minus ratione provident pariatur. Eaque nulla et molestiae animi eos. Error possimus sed non ut nobis.'),
(1063, 'Practical Steel Chair', 14919, 'practical-steel-chair', 26, 'https://picsum.photos/id/986/400/400', 'Commodi sapiente natus officia. Aut iusto ipsum porro fugiat. Culpa ut cupiditate reiciendis cupiditate quidem molestias.'),
(1064, 'Enormous Bronze Bench', 5859, 'enormous-bronze-bench', 26, 'https://picsum.photos/id/922/400/400', 'Non beatae fuga voluptas fuga aut sequi. Dolor voluptas eligendi neque est cupiditate vel voluptatem. Sapiente ut cum explicabo est molestiae blanditiis quia. Fuga repellendus magni laudantium quia consequatur et.'),
(1065, 'Fantastic Rubber Gloves', 9379, 'fantastic-rubber-gloves', 26, 'https://picsum.photos/id/499/400/400', 'Aut saepe sit ut quae eaque. Autem ratione sit molestiae libero illo. Et rerum in sint. Quibusdam autem temporibus possimus consectetur voluptatum ea. Omnis ea quam exercitationem excepturi quam est consequuntur.'),
(1066, 'Aerodynamic Bronze Bottle', 19079, 'aerodynamic-bronze-bottle', 26, 'https://picsum.photos/id/694/400/400', 'Corporis nisi et aut sit quia est dolores. Perspiciatis necessitatibus commodi necessitatibus. Ipsam aut dolor ut debitis. Tempora in quam ad saepe eius quibusdam.'),
(1067, 'Enormous Marble Table', 18219, 'enormous-marble-table', 26, 'https://picsum.photos/id/376/400/400', 'Nobis natus autem quasi dolor corporis. Perferendis delectus non illum placeat doloribus quidem consectetur. Illo placeat eum quibusdam odio illum ea. A et ducimus molestiae et.'),
(1068, 'Synergistic Aluminum Watch', 9649, 'synergistic-aluminum-watch', 26, 'https://picsum.photos/id/321/400/400', 'Sit voluptate consequuntur rerum cupiditate. Et eius ut tenetur soluta fugiat. Soluta aspernatur commodi quod.'),
(1069, 'Durable Aluminum Keyboard', 6299, 'durable-aluminum-keyboard', 26, 'https://picsum.photos/id/47/400/400', 'Esse dolorem expedita quibusdam voluptatum soluta quo. Error quis dolor accusantium non in maiores. Nihil est magnam vel et numquam facilis hic.'),
(1070, 'Awesome Copper Pants', 6479, 'awesome-copper-pants', 26, 'https://picsum.photos/id/676/400/400', 'Deserunt adipisci mollitia accusantium et. Minima porro dolorem perspiciatis eum aliquam eos. Architecto fugit qui est eveniet. Temporibus corrupti animi ducimus quis est eos.'),
(1071, 'Mediocre Copper Clock', 10269, 'mediocre-copper-clock', 26, 'https://picsum.photos/id/405/400/400', 'Quaerat blanditiis tempore in minima ab soluta. Sed atque ut ea aut qui adipisci sunt. Culpa dolores ducimus perspiciatis impedit dolorum illum. Velit est dolorem aliquid ut eaque quo error. Vel magni tenetur sit magni perferendis nobis.'),
(1072, 'Awesome Copper Chair', 15119, 'awesome-copper-chair', 26, 'https://picsum.photos/id/482/400/400', 'Eos non eum consequuntur optio. Qui minima sit quidem cum veniam neque qui.'),
(1073, 'Rustic Concrete Keyboard', 4129, 'rustic-concrete-keyboard', 26, 'https://picsum.photos/id/47/400/400', 'Sunt dignissimos enim quidem iure. Tempore pariatur natus vel velit consequatur odio voluptatem. Placeat qui ducimus fugiat non quia. Vel cumque molestiae et quis.'),
(1074, 'Synergistic Paper Bag', 14909, 'synergistic-paper-bag', 26, 'https://picsum.photos/id/272/400/400', 'Asperiores perspiciatis atque tempora aperiam. Aperiam quasi eveniet est accusantium eveniet. Eaque non sint nihil sit occaecati.'),
(1075, 'Fantastic Wooden Lamp', 14839, 'fantastic-wooden-lamp', 27, 'https://picsum.photos/id/213/400/400', 'Ullam ipsam beatae perferendis natus optio at. Molestiae ut cumque repudiandae et dolorum sit commodi. Ut minima eveniet ut repellendus molestiae.'),
(1076, 'Heavy Duty Wooden Watch', 18579, 'heavy-duty-wooden-watch', 27, 'https://picsum.photos/id/777/400/400', 'Maxime maxime dignissimos et et. Optio officia natus aliquid voluptas est nostrum. Et id rerum illum exercitationem vitae nostrum. Ut non praesentium pariatur dolor ea molestiae occaecati.'),
(1077, 'Fantastic Wooden Computer', 13859, 'fantastic-wooden-computer', 27, 'https://picsum.photos/id/351/400/400', 'Non iste culpa quia consequatur consequatur. Quaerat tenetur laudantium minus enim consequatur illum. Culpa tempora veniam dolorum earum nisi et molestiae est.'),
(1078, 'Synergistic Linen Chair', 15309, 'synergistic-linen-chair', 27, 'https://picsum.photos/id/322/400/400', 'Ut quod soluta eos odio ex. Nihil necessitatibus ratione corrupti velit nobis ex. Non nihil temporibus inventore magnam est alias.'),
(1079, 'Rustic Plastic Bag', 5549, 'rustic-plastic-bag', 27, 'https://picsum.photos/id/388/400/400', 'Quidem architecto aut aut veniam in magnam voluptatem recusandae. Reiciendis voluptate explicabo nisi aut ut facilis nam. Nostrum esse nostrum iste nobis aliquid debitis. Rerum vel id iusto suscipit non sit.'),
(1080, 'Aerodynamic Plastic Hat', 4229, 'aerodynamic-plastic-hat', 27, 'https://picsum.photos/id/606/400/400', 'Inventore ipsa ea accusantium id aspernatur. Totam omnis quia hic saepe ullam modi ducimus. Inventore dolorem sunt fugit. Voluptas voluptatem consequatur aliquam nobis rerum.'),
(1081, 'Sleek Marble Wallet', 10119, 'sleek-marble-wallet', 27, 'https://picsum.photos/id/955/400/400', 'Inventore veritatis sed esse quia occaecati culpa et. Laboriosam sequi quod quod enim quo est. Explicabo eum id sed sint.'),
(1082, 'Aerodynamic Iron Bottle', 17819, 'aerodynamic-iron-bottle', 27, 'https://picsum.photos/id/813/400/400', 'Nihil atque nisi expedita nemo. Quod aliquam voluptates dolores eum cupiditate ipsa.'),
(1083, 'Incredible Leather Bag', 14059, 'incredible-leather-bag', 27, 'https://picsum.photos/id/321/400/400', 'Ea ut at facere vitae natus et odio dignissimos. Sit aut dolorem et ex rerum. Vero aperiam iure sit esse.'),
(1084, 'Mediocre Steel Chair', 17379, 'mediocre-steel-chair', 27, 'https://picsum.photos/id/503/400/400', 'Qui quod asperiores sit. Quae iure quo atque laborum quasi facere. Nihil quia nulla corporis aliquam.'),
(1085, 'Synergistic Rubber Plate', 9029, 'synergistic-rubber-plate', 27, 'https://picsum.photos/id/323/400/400', 'Modi molestiae sit quo tenetur. Et aut asperiores molestiae explicabo aut sequi. Eius illo quia ipsum libero non ipsa. Porro explicabo commodi voluptates voluptas vitae repellat doloremque.'),
(1086, 'Practical Rubber Bag', 6929, 'practical-rubber-bag', 27, 'https://picsum.photos/id/78/400/400', 'Odit unde harum voluptas nesciunt et et. Corrupti tenetur totam cum et sed ab quisquam. Aut et enim iste eveniet architecto.'),
(1087, 'Sleek Leather Chair', 15299, 'sleek-leather-chair', 27, 'https://picsum.photos/id/666/400/400', 'Nam et aliquam repellendus et et. Itaque maiores quo sit. Qui et ad sit ducimus ullam suscipit laborum.'),
(1088, 'Incredible Plastic Table', 18959, 'incredible-plastic-table', 27, 'https://picsum.photos/id/1004/400/400', 'Harum assumenda perferendis occaecati aut. Et est odit eveniet corrupti earum. Consequuntur commodi doloremque et reprehenderit.'),
(1089, 'Ergonomic Granite Pants', 14199, 'ergonomic-granite-pants', 27, 'https://picsum.photos/id/559/400/400', 'Tenetur ipsa dolore et sit illo aperiam ipsum quasi. Autem blanditiis sit cumque quaerat sit.'),
(1090, 'Sleek Wool Computer', 9929, 'sleek-wool-computer', 27, 'https://picsum.photos/id/293/400/400', 'Accusantium et eum culpa sit adipisci veniam sit. Ad aut et ut ea exercitationem numquam. Omnis occaecati nihil enim pariatur omnis incidunt.'),
(1091, 'Enormous Silk Chair', 7289, 'enormous-silk-chair', 28, 'https://picsum.photos/id/95/400/400', 'Omnis fuga fugit veniam doloremque. Necessitatibus eos corporis autem ut est nostrum repellendus numquam. Molestias hic voluptas sequi similique rerum autem aliquam repudiandae. Sunt officiis vel voluptatem vitae est. Dignissimos natus et aperiam et dolorum dicta.'),
(1092, 'Practical Rubber Bench', 18049, 'practical-rubber-bench', 28, 'https://picsum.photos/id/301/400/400', 'A autem repellendus tempore aut. Optio tempora ducimus quo rerum. Praesentium in est laboriosam.'),
(1093, 'Incredible Copper Coat', 10299, 'incredible-copper-coat', 28, 'https://picsum.photos/id/678/400/400', 'Nihil ut a facilis ducimus. Mollitia cumque iusto perspiciatis cupiditate ut.'),
(1094, 'Enormous Leather Bottle', 14119, 'enormous-leather-bottle', 28, 'https://picsum.photos/id/218/400/400', 'Itaque voluptatibus dolorem culpa. Quibusdam aperiam eum quibusdam. Qui aliquid commodi nemo harum dolores rerum.'),
(1095, 'Mediocre Granite Shirt', 8739, 'mediocre-granite-shirt', 28, 'https://picsum.photos/id/289/400/400', 'Porro maiores repellat quod eius. Sequi qui ipsa ratione magni reprehenderit hic. Natus velit nihil facere. Odio neque beatae rerum iste cupiditate.'),
(1096, 'Synergistic Plastic Shirt', 13269, 'synergistic-plastic-shirt', 28, 'https://picsum.photos/id/534/400/400', 'Rerum quia voluptatum ducimus sed voluptatem totam. Et ratione dicta laudantium cupiditate. Totam architecto iure eaque voluptas amet minima id aliquam.'),
(1097, 'Synergistic Wool Coat', 16449, 'synergistic-wool-coat', 28, 'https://picsum.photos/id/1038/400/400', 'In ab itaque fugiat et at aliquam. Voluptatem veniam sit consequatur voluptas et rem sint. Impedit iure quidem earum iure assumenda ducimus qui.'),
(1098, 'Aerodynamic Plastic Gloves', 8879, 'aerodynamic-plastic-gloves', 28, 'https://picsum.photos/id/200/400/400', 'Aliquam perspiciatis dolorum rerum pariatur inventore doloribus iste. Voluptatem sit voluptatem sint qui est amet. Sunt expedita aut autem vel est.'),
(1099, 'Durable Leather Car', 15819, 'durable-leather-car', 28, 'https://picsum.photos/id/18/400/400', 'Ab modi qui occaecati illum. Ut iure qui adipisci voluptas sed ut consectetur. Qui quia magni dolorem qui.'),
(1100, 'Heavy Duty Aluminum Shirt', 15449, 'heavy-duty-aluminum-shirt', 28, 'https://picsum.photos/id/945/400/400', 'Consequatur quo dolore perspiciatis qui quos aut est voluptatem. Ab consequatur harum non incidunt. Ullam dolorem dolores iure dolorum occaecati repellendus aspernatur. Et tempore qui itaque animi eveniet temporibus.'),
(1101, 'Gorgeous Leather Keyboard', 7979, 'gorgeous-leather-keyboard', 28, 'https://picsum.photos/id/982/400/400', 'Eos voluptatibus nam modi eligendi accusamus qui. Neque itaque nisi sunt commodi ut natus. Veniam quasi quia nihil atque est commodi sed est.'),
(1102, 'Incredible Marble Car', 18599, 'incredible-marble-car', 28, 'https://picsum.photos/id/345/400/400', 'Dolore et id harum repudiandae. Culpa repellendus minus enim quam praesentium totam. Expedita quasi magnam id quaerat.'),
(1103, 'Aerodynamic Wool Computer', 5719, 'aerodynamic-wool-computer', 28, 'https://picsum.photos/id/135/400/400', 'Eveniet voluptatem unde excepturi placeat nesciunt inventore quis. Omnis maiores et voluptates dicta minima qui. Sint voluptas voluptas et temporibus fugit quas. Iusto non eos possimus dignissimos dignissimos amet.'),
(1104, 'Ergonomic Marble Bag', 12399, 'ergonomic-marble-bag', 28, 'https://picsum.photos/id/811/400/400', 'Et reiciendis odit magni commodi laboriosam laborum. Maxime laboriosam corrupti quidem veritatis praesentium culpa. Sit aspernatur explicabo porro corrupti. Iste animi illum quia fugit dolorum in. At perspiciatis debitis quia autem.'),
(1105, 'Ergonomic Silk Computer', 4719, 'ergonomic-silk-computer', 28, 'https://picsum.photos/id/116/400/400', 'Sed ut explicabo explicabo voluptate repudiandae. Ipsum qui et voluptatum. Exercitationem voluptatem sunt tempora et facilis a iste. Est dolor praesentium inventore velit voluptas inventore fugit.'),
(1106, 'Synergistic Concrete Plate', 13899, 'synergistic-concrete-plate', 28, 'https://picsum.photos/id/991/400/400', 'Placeat consequatur tempora delectus vel est dicta. Fugiat temporibus unde debitis consequuntur. Sint non animi laboriosam natus impedit quis aut. Quis reiciendis vitae ipsam officiis quibusdam incidunt temporibus.'),
(1107, 'Rustic Plastic Gloves', 12019, 'rustic-plastic-gloves', 28, 'https://picsum.photos/id/383/400/400', 'Ut ut et est eos reiciendis praesentium aliquid. In aut excepturi minus sunt quasi autem omnis magni. Dignissimos quam nihil voluptatem consequatur asperiores.'),
(1108, 'Intelligent Wool Plate', 18399, 'intelligent-wool-plate', 28, 'https://picsum.photos/id/1005/400/400', 'Unde laudantium vel in tempore laborum ducimus. Dicta fuga culpa praesentium ex vitae et. Ea porro rerum doloremque suscipit non occaecati. Nisi dolorem quia debitis facilis.');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `full_name`) VALUES
(7, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$QVdltd.G5Q5KPdpe3L7BfeSKmf0JY0VUt47HWjgE0hIutQE9Rye/S', 'admin'),
(8, 'user0@gmail.com', '[]', '$2y$13$ELOSW.0QOWMef.hGexUVTOmBgp9ap27vMtTn1ZzrDOLXVubl7niK2', 'Constance Maillot'),
(9, 'user1@gmail.com', '[]', '$2y$13$mmDvwtmmRYq1G90JZLpOne8VkP3d6gGu/M1gBlvHflGDIHPP4NP1S', 'Élisabeth Masson'),
(10, 'user2@gmail.com', '[]', '$2y$13$Y9O4NxgQx55vadVh9yO45u0W6XKn06WtYsDj2ejP8qJIBvr1iXeky', 'Henriette Weber-Salmon'),
(11, 'user3@gmail.com', '[]', '$2y$13$V78wmO78.3GxIBN3XPetr.Ehd0ezgjumwdZ4jt9WCHWbVO7Pk9rO6', 'Caroline Gaudin'),
(12, 'user4@gmail.com', '[]', '$2y$13$PMYmxXxodysRjQ/lzPP0cutgo1r0q2GaPy6pQrcY011q2fvPZSDmG', 'Gabriel Levy');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_64C19C17E3C61F9` (`owner_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1109;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_64C19C17E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
