USE nettebrands_db;
-- ----------------------------
-- brands records
-- ----------------------------
INSERT INTO `brand` (`id`, `name`, `country`, `description`, `insertion_date`, `deleted`) VALUES
(1, 'ALPINE PRO', 'CZ', 'Oblečení a boty pro malé i velké výletníky', '2023-04-25 07:07:18', 0),
(2, 'Baagl', NULL, 'Školní batohy pro zdravá záda', '2023-04-25 07:08:11', 0),
(3, 'Highlander', NULL, NULL, '2023-04-25 07:08:58', 0),
(4, 'Happy Socks', NULL, 'Veselé ponožky', '2023-04-25 07:09:42', 0),
(5, 'Salomon', NULL, 'Jistota v náročném terénu', '2023-04-25 07:10:55', 0),
(6, 'WEST PAW', 'USA', 'Outdoor vybavení pro psy', '2023-04-25 07:12:38', 0),
(7, 'Reebok', 'GB', 'Boty a oblečení pro sport, fitness, běh', '2023-04-25 07:14:08', 0),
(8, 'Apache', 'CZ', 'Cyklistika', '2023-04-25 07:15:40', 0),
(9, 'Nike', '', '', '2023-04-25 10:09:23', 0),
(10, 'Unihoc', '', '', '2023-04-25 10:11:18', 0),
(11, 'One Way', '', '', '2023-04-25 10:30:43', 0),
(14, 'Pealock', '', '', '2023-04-25 10:54:32', 0),
(16, 'Harrows', '', '', '2023-04-26 07:05:59', 0),
(17, 'Keller', '', '', '2023-04-26 07:42:21', 0),
(18, 'Umbro', NULL, NULL, '2023-04-26 08:04:58', 0),
(19, 'Under Armour', NULL, NULL, '2023-04-26 08:04:58', 0),
(20, 'Vans', 'USA', NULL, '2023-04-26 08:06:18', 0),
(21, 'VUCH', 'CZ', NULL, '2023-04-26 08:06:18', 0),
(22, 'Warrior', NULL, NULL, '2023-04-26 08:08:20', 0),
(23, 'Willard', NULL, 'Všestranná značka, která vyrábí volnočasové i outdoorové vybavení. Největší důraz klade na pohodlí uživatel a snaží se mu poskytnout zboží za přiměřené ceny. Zákazník také jistě ocení technologickou propracovanost či praktičnost produktů.', '2023-04-26 08:08:20', 0),
(24, 'LAMAX', 'CZ', 'Lamax je česká značka dominující v mobilní či spotřební elektronice. K nejoblíbenějším produktům patří bezdrátová sluchátka, reproduktory, fitness náramky nebo sportovní kamery. Velkými přednostmi firmy jsou rychlá technická podpora produktů s bezkonkurenčním poměrem cena/výkon.', '2023-04-26 08:10:42', 0),
(25, 'AMERICAN TOURISTER', 'USA', NULL, '2023-04-26 08:10:42', 0),
(26, 'Ulvang', NULL, NULL, '2023-04-26 08:11:55', 0),
(27, 'La Siesta', NULL, NULL, '2023-04-26 08:12:21', 0),
(28, 'Klimatex', NULL, NULL, '2023-04-26 08:12:23', 0),
(29, 'Oakley', NULL, NULL, '2023-04-26 08:12:23', 0),
(30, 'Oxybag', NULL, NULL, '2023-04-26 08:12:23', 0),
(31, 'Olpran', NULL, NULL, '2023-04-26 08:12:23', 0),
(32, 'AQUATIC', NULL, NULL, '2023-04-26 08:14:29', 0),
(33, 'ATOM', NULL, NULL, '2023-04-26 08:14:29', 0),
(34, 'AXONE', NULL, NULL, '2023-04-26 08:14:29', 0),
(35, 'BABY JOGGER', NULL, NULL, '2023-04-26 08:14:29', 0),
(36, 'BABYPACK', NULL, NULL, '2023-04-26 08:14:29', 0),
(37, 'BAG BOY', NULL, NULL, '2023-04-26 08:14:30', 0),
(38, 'Bauer', NULL, NULL, '2023-04-26 08:14:30', 0),
(39, 'Asics', NULL, NULL, '2023-04-26 08:14:30', 0),
(40, 'Arena', NULL, NULL, '2023-04-26 08:14:30', 0),
(41, 'PEDAG', NULL, NULL, '2023-04-26 08:14:30', 0),
(42, 'Amulet', NULL, NULL, '2023-04-26 08:14:30', 0),
(43, 'Aress', NULL, NULL, '2023-04-26 08:14:30', 0),
(44, 'URBAN IKI', NULL, NULL, '2023-04-26 08:18:30', 0),
(45, 'Merrell', NULL, NULL, '2023-04-26 08:18:30', 0),
(46, 'TREE FROG', NULL, NULL, '2023-04-26 08:18:32', 0),
(47, 'TOM AND JERRY', NULL, NULL, '2023-04-26 08:18:32', 0),
(48, 'The North Face', NULL, NULL, '2023-04-26 08:18:32', 0),
(49, 'TRUE LIFE', NULL, NULL, '2023-04-26 08:18:33', 0),
(50, 'Ticket To The Moon', NULL, NULL, '2023-04-26 08:18:33', 0),
(51, 'Timberland', NULL, NULL, '2023-04-26 08:18:33', 0),
(52, 'Tatonka', NULL, NULL, '2023-04-26 08:18:33', 0),
(53, '2117', NULL, NULL, '2023-04-26 08:21:33', 0),
(54, '47', NULL, NULL, '2023-04-26 08:21:33', 0),
(55, '4Car', NULL, NULL, '2023-04-26 08:21:34', 0),
(56, '4F', NULL, NULL, '2023-04-26 08:21:34', 0),
(57, '4KAAD', '', 'značka', '2023-04-26 08:21:34', 0),
(58, 'ZERO FRICTION', NULL, NULL, '2023-04-26 08:21:34', 0),
(59, 'ZOPA', NULL, NULL, '2023-04-26 08:21:34', 0),
(60, 'Zealot', NULL, NULL, '2023-04-26 08:21:34', 0),
(61, 'Zaxy', NULL, NULL, '2023-04-26 08:21:34', 0),
(62, 'Zefal', NULL, NULL, '2023-04-26 08:21:34', 0),
(63, 'Ziener', NULL, NULL, '2023-04-26 08:21:34', 0),
(64, 'Zone', NULL, NULL, '2023-04-26 08:21:34', 0),
(65, 'Zray', NULL, NULL, '2023-04-26 08:21:34', 0),
(66, 'XISS', NULL, NULL, '2023-04-26 08:21:34', 0),
(67, 'Xon', NULL, NULL, '2023-04-26 08:21:34', 0),
(68, 'XTRIX', NULL, NULL, '2023-04-26 08:21:34', 0),
(69, 'YATE', NULL, NULL, '2023-04-26 08:21:34', 0),
(70, 'Yedoo', NULL, NULL, '2023-04-26 08:21:34', 0),
(71, 'YOGGYS', NULL, NULL, '2023-04-26 08:21:35', 0),
(72, 'Yonex', NULL, NULL, '2023-04-26 08:21:35', 0),
(73, 'Windson', NULL, NULL, '2023-04-26 08:24:25', 0),
(74, 'Wish', NULL, NULL, '2023-04-26 08:24:25', 0),
(75, 'WOODY', NULL, NULL, '2023-04-26 08:24:26', 0),
(76, 'WTB', NULL, NULL, '2023-04-26 08:24:26', 0),
(77, 'Wilson', NULL, NULL, '2023-04-26 08:24:26', 0),
(78, 'Westport', NULL, NULL, '2023-04-26 08:24:26', 0),
(79, 'Weldtite', NULL, NULL, '2023-04-26 08:24:26', 0),
(80, 'WATTSUP', NULL, NULL, '2023-04-26 08:24:26', 0),
(81, 'Warner Bros', NULL, NULL, '2023-04-26 08:24:26', 0),
(82, 'Vango', NULL, NULL, '2023-04-26 08:24:26', 0),
(83, 'VAUHTI', NULL, NULL, '2023-04-26 08:24:26', 0),
(84, 'Venum', NULL, NULL, '2023-04-26 08:24:26', 0),
(85, 'Victor', NULL, NULL, '2023-04-26 08:24:26', 0),
(86, 'Viola', NULL, NULL, '2023-04-26 08:24:26', 0),
(87, 'Vist', NULL, NULL, '2023-04-26 08:24:26', 0),
(88, 'VIZOPOL', NULL, NULL, '2023-04-26 08:24:26', 0),
(89, 'Volcom', NULL, NULL, '2023-04-26 08:24:26', 0),
(90, 'VOLVIK', NULL, NULL, '2023-04-26 08:24:27', 0),
(91, 'Voxx', NULL, NULL, '2023-04-26 08:24:27', 0),
(92, 'Uvex', NULL, NULL, '2023-04-26 08:24:27', 0),
(93, 'Nordica', NULL, NULL, '2023-04-26 08:32:36', 0),
(94, 'NORDICTRACK', NULL, NULL, '2023-04-26 08:32:36', 0),
(95, 'Northfinder', NULL, NULL, '2023-04-26 08:32:36', 0),
(96, 'Northwave', NULL, NULL, '2023-04-26 08:32:36', 0),
(97, 'Nutrend', NULL, NULL, '2023-04-26 08:32:36', 0),
(98, 'NON-STOP DOGWEAR', NULL, NULL, '2023-04-26 08:32:36', 0),
(99, 'NITRO', NULL, NULL, '2023-04-26 08:32:36', 0),
(100, 'NECO', NULL, NULL, '2023-04-26 08:32:36', 0),
(101, 'NAX', NULL, NULL, '2023-04-26 08:32:37', 0),
(102, 'Napapijri', NULL, NULL, '2023-04-26 08:32:37', 0),
(103, 'Neon', NULL, NULL, '2023-04-26 08:32:37', 0),
(104, 'New Era', NULL, NULL, '2023-04-26 08:32:37', 0),
(105, 'New Balance', NULL, NULL, '2023-04-26 08:32:37', 0),
(106, 'Nexelo', NULL, NULL, '2023-04-26 08:32:37', 0),
(107, 'Ocean Reef', NULL, NULL, '2023-04-26 08:32:37', 0),
(108, 'Oxdog', NULL, NULL, '2023-04-26 08:32:37', 0),
(109, 'Osprey', NULL, NULL, '2023-04-26 08:32:37', 0);