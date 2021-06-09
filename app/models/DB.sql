-- SELECT * FROM sous_categories; POUR VOIR LA DATA
-- SELECT * FROM videos;
-- DESCRIBE categories
-- https://lesdeuxpaumes-api.herokuapp.com/
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Dessins animés'),
(2, 'Activités'),
(3, 'Musique');

--
-- Table structure for table `sous_categories`
--

CREATE TABLE `sous_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sous_categories` (`id`, `name`, `categories_id`) VALUES
(1, 'Peppa Pig', 1),
(3, 'Cuisine', 2),
(4, 'Apprendre facilement', 2),
(5, 'Les comptines', 3),
(6, 'Les chansons', 3),
(7, 'Les histoires animées', 1);

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `src` varchar(250) NOT NULL,
  `miniature` varchar(250) NOT NULL,
  `texte` longtext NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sous_categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `videos` (`id`, `title`, `src`, `miniature`, `texte`, `categories_id`, `sous_categories_id`) VALUES
(1, 'LE GÂTEAU AU CHOCOLAT IMPOSSIBLE À RATER', 'https://www.youtube.com/embed/oIF4F48aGrg', 'https://i.ytimg.com/vi/oIF4F48aGrg/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDplnuBM7XqBl2y2jSbYgEiC75B6A', 'On se retrouve aujourd\'hui pour une recette que vous connaissez tous : le gâteau au chocolat !', 2, 3),
(4, 'LA COMPOTE DE POMMES - JackiSigne Cuisine - LSF + VOIX OFF', 'https://www.youtube.com/embed/Wfn72vzCei4', 'https://i.ytimg.com/vi/Wfn72vzCei4/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAKMmlL33ZA24072gxziEMCJlK7Mw', 'Aujourd\'hui, il y a un grand soleil et la chaleur est au rendez-vous. Je vous propose une recette très simple mais tellement agréable une fois refroidie au frigo : La compote de pommes ! \r\nPrenez soin de vous et surtout, restez chez vous.\r\n\r\nLe tout expliqué entièrement en Langue des Signes Française, avec l\'ajout d\'une voix-off et de sous-titres, comme promis !\r\n\r\nJ\'espère que vous allez aimer la vidéo, n\'hésitez pas à me partager vos retours, vos avis et même vos photos si vous la réalisez à votre tour ! ', 2, 3),
(5, 'LES COOKIES AUX PÉPITES DE CHOCOLAT - JackiSigne Cuisine - LSF - VOIX OFF', 'https://www.youtube.com/embed/qmDGCXJ_3W8', 'https://i.ytimg.com/vi/qmDGCXJ_3W8/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLD2ZTl9TGQVitHy_XTnW_B4hw-tXQ', 'Aujourd\'hui je vous propose la recette des cookies aux pépites de chocolat. Une recette très simple mais tellement bonne ! Les bords croustillants et le cœur moelleux... Trop bien non ? Alors n\'hésitez pas à rejoindre le commerce ouvert le plus proche de chez vous, trouver des œufs et des pépites de chocolat et préparer un magnifique goûter pour toute la famille. \r\n\r\nLe tout expliqué entièrement en Langue des Signes Française, avec l\'ajout d\'une voix-off et de sous-titres.\r\n\r\nJ\'espère que vous allez aimer la vidéo, n\'hésitez pas à me partager vos retours, vos avis et même vos photos si vous la réalisez à votre tour ! ', 2, 3),
(6, 'LES CHOUQUETTES - JackiSigne Cuisine - LSF + VOIX OFF', 'https://www.youtube.com/embed/61fgOHT8eFg', 'https://i.ytimg.com/vi/61fgOHT8eFg/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAsm1Ck97IdeF0Gqh91O6Q6EEUWXQ', 'Aujourd\'hui, je vous présente la recette des chouquettes. Vous allez donc apprendre à réaliser une pâte à choux qui est la base de beaucoup de desserts comme : le Paris Brest, les éclairs, les profiteroles etc. Surtout, soyez attentif sur la cuisson car ce n\'est pas une recette compliquée mais la technique de fin de cuisson est essentielle pour un bon rendu final. \r\n\r\nLe tout expliqué entièrement en Langue des Signes Française, avec l\'ajout d\'une voix-off et de sous-titres, comme promis !\r\n\r\nJ\'espère que vous allez aimer la vidéo, n\'hésitez pas à me partager vos retours, vos avis et même vos photos si vous la réalisez à votre tour ! ', 2, 3),
(7, 'CHANSIGNE - HAKUNA MATATA - LE ROI LION | LSF', 'https://www.youtube.com/embed/taZu3VYqKqc', 'https://i.ytimg.com/vi/taZu3VYqKqc/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC2fA54dzwah60RictIQQdIZ_di7w', 'Bonjour bonjour ! Un Chansigne en Langue des signes Française (LSF) juste pour le plaisir ! Donnez-nous votre avis ! ;)\r\n', 3, 6),
(8, 'Miam Miam LSF', 'https://www.youtube.com/embed/izVJiOzJANY', 'https://i.ytimg.com/vi/izVJiOzJANY/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBMXQYUqviYal4AesxeFvzvOqozwA', 'MIAM MIAM\r\nMiam miam miam miam miam\r\nMoi je suis gourmande', 3, 5),
(9, 'Petit escargot LSF', 'https://www.youtube.com/embed/C-3_L56w8hc', 'https://i.ytimg.com/vi/C-3_L56w8hc/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBQ5lMYUnq1QJmWs2YMryBBLYpjZw', 'Petit escargot\r\n\r\nPorte sur son dos', 3, 5),
(10, 'CHANSIGNE - L\'HYMNE DE NOS CAMPAGNES - TRYO | LANGUE DES SIGNES', 'https://www.youtube.com/embed/h3_9hbuEtWI', 'https://i.ytimg.com/vi/h3_9hbuEtWI/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLARo65EyobY1Wq14XUiUA4cda-mow', 'Un autre chansigne en Langue des Signes Française (LSF) ! Cette fois-ci nous vous présentons \"L\'hymne de nos campagnes\", une chanson de Tryo. Si vous avez des propositions n\'hésitez pas ! Bonne vidéo ;)', 3, 6),
(11, 'sciences les escargots en LSF\r\n', 'https://www.youtube.com/embed/6sH_OtiQlw4', 'https://i.ytimg.com/vi/6sH_OtiQlw4/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAOH1KRKVHqfVwjBtOPbq1hl5nG5A', 'Petit cours de sciences autour de l\'escargot en LSF!', 2, 4),
(12, 'Que reste t-il aujourd\'hui de la révolution française? LSF\r\n', 'https://www.youtube.com/embed/Na5LD5R9VAk', 'https://i.ytimg.com/vi/Na5LD5R9VAk/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCoYw7Vd0j8ncnLT-uhOF0JV5kLGQ', 'Apprenons ensemble ce qu\'il reste de la révolution française !', 2, 4),
(13, 'Eurêka Pi! le cycle de la vie humaine LSF et voix-off', 'https://www.youtube.com/embed/VUxV3NFvthE', 'https://i.ytimg.com/vi/VUxV3NFvthE/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDkRv-LpTU2La8teAEygqXlgj650Q', 'L\'explication du cycle de la vie humaine !', 2, 4),
(14, 'Peppa Pig S1E01 Les flaques de boues\r\n', 'https://www.youtube.com/embed/kIiuiCjGvJw', 'https://i.ytimg.com/vi/fml_K8XH7Gc/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAjQPBW6n4IgmahG2w4btdnN1DTrw', 'Aujourd\'hui, Peppa met ses bottes et emmène son petit frère George jouer dans les flaques de boues. Et les cochons, les petits comme les grands, ça adore la boue !', 1, 1),
(15, 'Peppa Pig S1E04 Polly le perroquet', 'https://www.youtube.com/embed/cHlvnuboDGo', 'https://i.ytimg.com/vi/zAeADDhpghw/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLA0_BEETP21-EgoCOxcFcjOHN-HIw', 'Peppa rend visite à ses grands-parents. Elle a hâte de faire la connaissance de leur nouvel animal de compagnie, un perroquet. L\'oiseau, appelé Polly, répète tout ce qu\'il entend, sans discernement, à la plus grande joie des enfants.', 1, 1),
(16, 'Peppa Pig S1E03 Ma meilleure amie\r\n', 'https://www.youtube.com/embed/PGS1Scwgmhw', 'https://i.ytimg.com/vi/E4dwaF34WVI/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAwj0dqBeBwleLVi0B4kH4t3aW_3w', 'Suzy vient passer l\'après-midi chez Peppa. George n\'est pas autorisé à se joindre à leurs jeux de grandes filles, disent-elles et il est bien triste.\r\n\r\nPeppa et Suzy jouent aux docteurs et aux infirmières, et le petit cochon est tout ravi lorsque les deux filles lui proposent de prendre le rôle du patient... surtout quand Maman Cochon lui apporte des cookies.', 1, 1),
(17, 'Peppa Pig S1E02 A la recherche de Mr Dinosaure', 'https://www.youtube.com/embed/7MvBPTmR6eI', 'https://i.ytimg.com/vi/JyTa3OxZpfg/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLDs8VCTBgl9orJRCoIb19KioB-ZFQ', 'Lorsque monsieur Dinosaure, le doudou de George, disparaît, le petit cochon est angoissé. Papa Cochon et Peppa tentent de le retrouver...', 1, 1),
(18, 'Laurent tout seul', 'https://www.youtube.com/embed/hVFVDZ2E7G4', 'https://i.ytimg.com/vi/hVFVDZ2E7G4/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCmi99bTOGPzY8qwvwt1nUuM73wvg', 'Laurent tout seul d\'Anaïs Vaugelade\r\nEditions Ecole des loisirs\r\n\r\n\r\nLecture en Langue des Signes : Thumette Léon\r\nVoix : Typhaine Léon', 1, 7),
(19, 'Le Géant de Zeralda', 'https://www.youtube.com/embed/6sIMElsUhXg', 'https://i.ytimg.com/vi/6sIMElsUhXg/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCaisFUt0wZcWLWScsXxuq6w0tsfA', 'Le Géant de Zeralda\r\nDe Tomi Ungerer \r\n\r\nEditions Ecole des loisirs\r\n\r\n\r\nLecture en Langue des Signes : Delfi St Raymond,\r\nVoix : Jérôme et Violette Caen', 1, 7),
(20, 'Le vilain petit canard', 'https://www.youtube.com/embed/aXhISGCnpcI', 'https://i.ytimg.com/vi/aXhISGCnpcI/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAY0FUBqVGDnOtdOWEzMntZLZUtaw', 'Le vilain petit canard\r\nConte d\'Anderson, adapté aux enfants par Stephy\r\n\r\nlecture en LSF par Émilie Rigaud\r\nVoix d\'Aurélien Mancino', 1, 7),
(21, 'La chaise bleue', 'https://www.youtube.com/embed/x4CUSY-ChIU', 'https://i.ytimg.com/vi/x4CUSY-ChIU/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCROQJA_s_0_-qHaJWbd_D4NTjnBQ', 'La chaise bleue de Claude Boujon\r\nEditions L\'école des loisirs\r\n\r\n\r\nLecture en Langue de Signes : Thumette Léon\r\nVoix : Typhaine Léon', 1, 7),
(22, 'Activité manuelle : Cadeau pour la fête des mères', 'https://www.youtube.com/embed/mqTBd84UA00', 'https://i.ytimg.com/vi/mqTBd84UA00/maxresdefault.jpg', 'Aujourd\'hui nous te proposons une activité manuelle , DIY spécial fête des Mères. Une Idée facile et pas chère, à faire soi-même pour faire plaisir à ta maman', 2, 4),
(23, 'la pomme rouge LSF (version contage)\r\n', 'https://www.youtube.com/embed/m2OgkdgR0K0', 'https://i.ytimg.com/vi/m2OgkdgR0K0/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDkFpCVf8v2vcC4iVWjYnd5o04ddw', 'Album de jeunesse: La pomme rouge\r\nAuteur: Kazuo Iwamura\r\nédition: L\'école des loisirs \r\n\r\n\r\nRaconté par Bastien et Anaïs Dubois', 3, 5),
(24, 'La tetine de Nina LSF (version lecture)\r\n', 'https://www.youtube.com/embed/m9ww6v3SXcQ', 'https://i.ytimg.com/vi/m9ww6v3SXcQ/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBTc4CTE-C-4ycitMSeyS78ecqRHw', 'Album de jeunesse: La tétine de Nina\r\nAuteur: Christine Naumann-Villemin\r\nIllustrations: Marianne Barcilon\r\nédition: L\'école des loisirs \r\n\r\n\r\nRaconté par Bastien et Anaïs Dubois', 3, 5),
(25, '[CHANSIGNE #52] Let it Snow - Dean Martin | LSF\r\n', 'https://www.youtube.com/embed/yHrcf4_DmTM', 'https://i.ytimg.com/vi/yHrcf4_DmTM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCLY5VO0-AJ8nqwHxUyGb6tYJSZqQ', 'Notre traditionnelle chanson de Noël adaptée en langue des signes française ! Vous aurez le temps de l\'apprendre pour le 25 décembre ;)', 3, 6),
(26, '[CHANSIGNE #50] It\'s raining men - The Weather Girls | LSF\r\n', 'https://www.youtube.com/embed/iV0FtepNsfQ', 'https://i.ytimg.com/vi/iV0FtepNsfQ/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAndx1wUcewy6kw9Flkcj_CNjQBCg', 'Nouvelle adaptation en Langue des Signes Française !\r\n', 3, 6);


--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sous_categories`
--
ALTER TABLE `sous_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `sous_categories_id` (`sous_categories_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sous_categories`
--
ALTER TABLE `sous_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sous_categories`
--
ALTER TABLE `sous_categories`
  ADD CONSTRAINT `sous_categories_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `videos_ibfk_2` FOREIGN KEY (`sous_categories_id`) REFERENCES `sous_categories` (`id`);