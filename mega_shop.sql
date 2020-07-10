-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Лип 10 2020 р., 15:48
-- Версія сервера: 10.3.13-MariaDB-log
-- Версія PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `mega_shop`
--

-- --------------------------------------------------------

--
-- Структура таблиці `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `addresses`
--

INSERT INTO `addresses` (`id`, `line1`, `line2`, `city`, `state`, `country`, `phone`, `pincode`, `user_id`) VALUES
(1, 'Test Address', 'Test Address', 'New Delhi', 'Delhi', 'India', '9855698981', 110045, 1),
(2, 'Test Address 2', 'Gollahalli, Electronic City', 'Bangalore', 'Karnataka', 'India', '9855698981', 560100, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Shoes'),
(2, 'Electronics'),
(3, 'Clothes'),
(4, 'Shirts'),
(5, 'Shirts'),
(6, 'Dresses'),
(7, 'Shoes');

-- --------------------------------------------------------

--
-- Структура таблиці `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(7, 1),
(8, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(120, 1),
(6, 2),
(42, 2),
(43, 2),
(44, 2),
(63, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2),
(178, 2),
(179, 2),
(180, 2),
(181, 2),
(182, 2),
(183, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(335, 193, 54, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(54, 'SNAKESKIN PRINT SHIRT', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/5134/844/926/5134844926_2_1_16.jpg?t=1583947775085&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/5134/844/926/5134844926_1_1_16.jpg?t=1583947775085&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/5134/844/926/5134844926_2_4_16.jpg?t=1583947775085&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/5134/844/926/5134844926_2_3_16.jpg?t=1583947775085&impolicy=massimodutti-itxmedium&imwidth=600', 'JOIN LIFE Care for fiber: Sustainably Grown European Linen. Sustainably Grown European Linen is farmed using a natural irrigation system and no genetically modified seeds or defoliants. This process is water-friendly and environmentally friendly.', 120, 0, 'xxxxxxxxxxxxxxxxx', 3),
(55, 'Neck Tshirt', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6862/895/251/6862895251_2_1_16.jpg?t=1580836475222&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6862/895/251/6862895251_1_1_16.jpg?t=1580836475222&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6862/895/251/6862895251_2_2_16.jpg?t=1580836475222&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6862/895/251/6862895251_2_3_16.jpg?t=1580836475222&impolicy=massimodutti-itxmedium&imwidth=600;', 'JOIN LIFE Care for fiber: Sustainably Grown European Linen. Sustainably Grown European Linen is farmed using a natural irrigation system and no genetically modified seeds or defoliants. This process is water-friendly and environmentally friendly.', 140, 99, '', 4),
(56, 'Silk T-Shirt', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6031/555/520/6031555520_1_1_16.jpg?t=1584022406285&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6031/555/520/6031555520_2_1_16.jpg?t=1584022406285&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6031/555/520/6031555520_2_2_16.jpg?t=1584022406285&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6031/555/520/6031555520_2_3_16.jpg?t=1584022406285&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6031/555/520/6031555520_2_4_16.jpg?t=1584022406285&impolicy=massimodutti-itxmedium&imwidth=600', 'An essential made of exquisite natural fibres for maximum comfort and convenience. T-shirt made of 100% mulberry silk featuring a straight fit, crew neck, short sleeves and side vents at the hem.', 90, 99, '', 4),
(57, 'Spotted print jumpsuit\r\n', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6617/849/710/6617849710_2_5_16.jpg?t=1586280259711&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6617/849/710/6617849710_2_4_16.jpg?t=1586280259711&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6617/849/710/6617849710_1_1_16.jpg?t=1586280259711&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6617/849/710/6617849710_2_3_16.jpg?t=1586280259711&impolicy=massimodutti-itxmedium&imwidth=600', '\r\nPrinted\r\n\r\nMade of cotton and linen\r\n\r\nFlared\r\n\r\nV-neck\r\n\r\nFront button fastening concealed by a placket\r\n\r\nTwo side pockets\r\n\r\nBuckled belt detail\r\n\r\nBelt loops', 300, 99, '', 6),
(58, 'CAMISOLE DRESS\r\n', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6649/580/806/6649580806_1_1_16.jpg?t=1586283826796&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6649/580/806/6649580806_2_1_16.jpg?t=1586283826796&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6649/580/806/6649580806_2_2_16.jpg?t=1586283826796&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6649/580/806/6649580806_2_3_16.jpg?t=1586283826796&impolicy=massimodutti-itxmedium&imwidth=600', 'The garment length for size 38 is 103 cm.\r\n\r\nTel. 800 333 7374 / 8 800 333 7374\r\n\r\nFree Home Delivery over 5.000 RUB\r\n\r\nPayments: VISA, MasterCard, American Express, MIR', 280, 50, '', 6),
(59, 'HEELED BOOTS WITH BUCKLE DETAIL\r\n', 'https://static.massimodutti.net/3/photos/2020/V/1/1/p/1002/550/707/1002550707_1_1_16.jpg?t=1581334954208&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/1/1/p/1002/550/707/1002550707_2_1_16.jpg?t=1581334954208&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/1/1/p/1002/550/707/1002550707_2_2_16.jpg?t=1581334954208&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/1/1/p/1002/550/707/1002550707_2_4_16.jpg?t=1581334954208&impolicy=massimodutti-itxmedium&imwidth=600', 'Heeled tall boots made of split suede leather with stitched detail and silver buckle on the leg. Featuring leather insole and lining and matching wood-effect sole.', 100, 44, '', 7),
(60, 'KHAKI ANKLE BOOTS WITH WOODEN HEELS\r\n', 'https://static.massimodutti.net/3/photos/2020/V/1/1/p/1210/550/500/1210550500_1_1_16.jpg?t=1580742572981&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/1/1/p/1210/550/500/1210550500_2_1_16.jpg?t=1580742572981&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/1/1/p/1210/550/500/1210550500_2_2_16.jpg?t=1580742572981&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/1/1/p/1210/550/500/1210550500_2_5_16.jpg?t=1580742572981&impolicy=massimodutti-itxmedium&imwidth=600', 'Leather ankle boots with stitching detail and a wood-effect heel. Featuring leather lining and insole, and a matching sole.', 110, 0, '', 7),
(61, 'Boat neck sweater with decrease stitching\r\n', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5687/864/712/5687864712_6_1_16.jpg?t=1592847795895&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5687/864/712/5687864712_2_4_16.jpg?t=1592847795895&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5687/864/712/5687864712_2_3_16.jpg?t=1592847795895&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5687/864/712/5687864712_2_2_16.jpg?t=1592847795895&impolicy=massimodutti-itxmedium&imwidth=600', '\r\nMade of 100% cotton\r\n\r\nStraight\r\n\r\nBoat neck', 70, 100, '', 3),
(62, 'Sweatshirt with adjustable hood\r\n', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6835/888/800/6835888800_1_1_16.jpg?t=1589208486953&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6835/888/800/6835888800_2_1_16.jpg?t=1589208486953&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6835/888/800/6835888800_2_2_16.jpg?t=1589208486953&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6835/888/800/6835888800_2_3_16.jpg?t=1589208486953&impolicy=massimodutti-itxmedium&imwidth=600', 'Sweatshirt\r\n\r\nStraight\r\n\r\nAdjustable hood\r\n\r\nStretch hem', 80, 5, '', 3);

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT 'not set',
  `last_name` varchar(255) DEFAULT 'not set',
  `role` int(10) DEFAULT 555,
  `created` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `password`, `email`, `first_name`, `last_name`, `role`, `created`) VALUES
(1, '$2b$10$iLEz3tkVKeOCwuagcqhDUOV.Iswjc.I41unbnnFGiqK/gmstDCC3i', 'john@gmail.com', 'Indranil', 'Mukherjee', 777, NULL),
(2, '$2b$10$ewemZ.oLASXUIWfUrjkDeOTCZUCpnhSlR3/Act2eQnvGg6mnGLOtG', 'shane123@gmail.com', 'Navoneel', 'Mukherjee', 555, NULL),
(11, '$2b$10$vIS0W3LKhbx2tFh1GMYWhul7GWtIg4jnKU2C/NGux1pUG3QKMdNzO', 'mike-doe@excellent.com', 'Mike', 'Leming', 555, NULL),
(14, '$2b$10$po91FRkYQIfPDN6G1BxG0uIV7Z54GbJRkJw2t9wRec9uqmRKillqa', 'indramukh@hotmail.com', 'Indranil', 'Mukherjee', 555, NULL),
(19, '$2b$10$cSa3jm7cboNSJRTgNRFJg.GviAzr/pyfptMxwxmjdKP./CdxDtLlK', 'test@gmail.com', 'Indranil', 'Mukherjee', 555, NULL),
(20, '$2b$10$P9X8c/MC39.Zxr2k5SfxK.lwbcj6PNou2ueqod29CFZrmuDUCvlfe', 'bhaikaju@gmail.com', 'Programming\'s Fun', 'not set', 555, NULL),
(21, '$2b$10$SOw/LSErH0IbZ96h7pop.O6NJreOD3HjRGiZZmKnqiXiuUPCl8b8W', 'shreyamukherjee07@gmail.com', 'Shreya', 'Mukherjee', 555, NULL),
(22, '1234567', 'vas-hrom@ukr.net', 'Vasyl', 'Khromyshyn', 555, NULL),
(23, '$2b$10$S5cJnNs0mG.neXu3mUyJc.j9LTzT0K8zy5zS5SdM9s3s90BmGe4qm', 'hello@gmail.com', 'John', 'Spier', 555, '2020-07-08 18:49:17'),
(24, '$2b$10$y/GG/9zCjt7fk6uerp9Ffu1/8LLeDmMXBS2BOP1FfizRAbwD3CCGm', 'admin@gmail.com', 'Buzz', 'Earth', 555, '2020-07-08 21:40:05'),
(25, '$2b$10$biutfuI2QMzU/VaIe9zwhugoiR.dIPWuXoAkj22FDsdOtsCBV8O62', 'mmm@mmm', 'mmm', 'mmm', 555, '2020-07-08 21:42:39'),
(26, '$2b$10$wPt0ASjIjWso2qKOWWG7L.mPwYgAE89B5HshikEPXpmg/J8taW4Bu', 'hhh', 'hhh', 'hhh', 555, '2020-07-09 10:43:18'),
(27, '$2b$10$3SdKyj5AWzi6Ul.OJr7KSeW/Z6rd0.5r6WtGEYnruV4u/FyNOSaIq', 'ff@ff.ff', 'Alfa', 'Omega', 555, '2020-07-09 12:17:22');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addresses_users1_idx` (`user_id`);

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1_idx` (`user_id`);

--
-- Індекси таблиці `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_has_products_products1_idx` (`product_id`),
  ADD KEY `fk_orders_has_products_orders1_idx` (`order_id`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cat_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT для таблиці `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
