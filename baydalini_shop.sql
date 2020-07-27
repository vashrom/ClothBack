-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Лип 27 2020 р., 16:23
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
-- База даних: `baydalini_shop`
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
-- Структура таблиці `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `images` text CHARACTER SET utf8 DEFAULT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `category` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(30) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `images`, `text`, `category`, `date`) VALUES
(1, 'Test Blog', 'https://blog.echizh.com.ua/wp-content/uploads/2017/10/blogging-e1484908296381.jpg', 'https://umi.ru/images/cms/data/blog/blog1.jpg;https://porositweb.com/wp-content/uploads/2019/11/krijo-nje-blog.jpg;https://www.patientpop.com/wp-content/uploads/Blogging101_Feature-e1512079399362-920x518.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Travel', '21 July, 2020'),
(2, 'Get One blog', 'https://neilpatel.com/wp-content/uploads/2017/09/5-Common-Blogging-Mistakes-And-How-to-Fix-Them.jpg', NULL, 'I GET ONE BLOG ITEEEEm', 'Testing', '32 July, 2020'),
(3, 'Blog from Postman', 'https://logodix.com/logo/2062870.png', '', 'Text from blog created by Postman', 'Test', '21 July, 2020'),
(4, 'Pickachu', 'https://vignette.wikia.nocookie.net/pokemon/images/4/49/Ash_Pikachu.png/revision/latest?cb=20200405125039', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQWejx1A1AUS1FgggjfcC-4iUXMg7C-GaJdrQ&usqp=CAU;https://assets.pokemon.com/assets/cms2/img/pokedex/full/026.png;https://pokemongolife.ru/p/Pichu.png', 'pikaaaaaaaaaaaa', 'Travel', '22 July, 2020');

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
(6, 'Dresses'),
(7, 'Shoes');

-- --------------------------------------------------------

--
-- Структура таблиці `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `postcode` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `country`, `street`, `postcode`, `city`, `email`, `phone`) VALUES
(6, 2, '', '', '', '', '', '', '', ''),
(7, 1, '', '', '', '', '', '', '', ''),
(8, 1, '', '', '', '', '', '', '', ''),
(13, 1, '', '', '', '', '', '', '', ''),
(14, 1, '', '', '', '', '', '', '', ''),
(15, 1, '', '', '', '', '', '', '', ''),
(16, 1, '', '', '', '', '', '', '', ''),
(17, 1, '', '', '', '', '', '', '', ''),
(18, 1, '', '', '', '', '', '', '', ''),
(19, 1, '', '', '', '', '', '', '', ''),
(20, 1, '', '', '', '', '', '', '', ''),
(21, 1, '', '', '', '', '', '', '', ''),
(22, 1, '', '', '', '', '', '', '', ''),
(23, 1, '', '', '', '', '', '', '', ''),
(24, 1, '', '', '', '', '', '', '', ''),
(25, 1, '', '', '', '', '', '', '', ''),
(26, 1, '', '', '', '', '', '', '', ''),
(27, 1, '', '', '', '', '', '', '', ''),
(28, 1, '', '', '', '', '', '', '', ''),
(29, 1, '', '', '', '', '', '', '', ''),
(30, 1, '', '', '', '', '', '', '', ''),
(31, 1, '', '', '', '', '', '', '', ''),
(32, 1, '', '', '', '', '', '', '', ''),
(33, 1, '', '', '', '', '', '', '', ''),
(34, 1, '', '', '', '', '', '', '', ''),
(35, 1, '', '', '', '', '', '', '', ''),
(36, 1, '', '', '', '', '', '', '', ''),
(37, 1, '', '', '', '', '', '', '', ''),
(38, 1, '', '', '', '', '', '', '', ''),
(39, 1, '', '', '', '', '', '', '', ''),
(40, 1, '', '', '', '', '', '', '', ''),
(41, 1, '', '', '', '', '', '', '', ''),
(42, 2, '', '', '', '', '', '', '', ''),
(43, 2, '', '', '', '', '', '', '', ''),
(44, 2, '', '', '', '', '', '', '', ''),
(52, 1, '', '', '', '', '', '', '', ''),
(53, 1, '', '', '', '', '', '', '', ''),
(54, 1, '', '', '', '', '', '', '', ''),
(55, 1, '', '', '', '', '', '', '', ''),
(56, 1, '', '', '', '', '', '', '', ''),
(57, 1, '', '', '', '', '', '', '', ''),
(58, 1, '', '', '', '', '', '', '', ''),
(59, 1, '', '', '', '', '', '', '', ''),
(60, 1, '', '', '', '', '', '', '', ''),
(61, 1, '', '', '', '', '', '', '', ''),
(62, 1, '', '', '', '', '', '', '', ''),
(63, 2, '', '', '', '', '', '', '', ''),
(64, 1, '', '', '', '', '', '', '', ''),
(65, 1, '', '', '', '', '', '', '', ''),
(66, 1, '', '', '', '', '', '', '', ''),
(67, 1, '', '', '', '', '', '', '', ''),
(68, 1, '', '', '', '', '', '', '', ''),
(69, 1, '', '', '', '', '', '', '', ''),
(70, 1, '', '', '', '', '', '', '', ''),
(71, 1, '', '', '', '', '', '', '', ''),
(72, 1, '', '', '', '', '', '', '', ''),
(73, 1, '', '', '', '', '', '', '', ''),
(74, 1, '', '', '', '', '', '', '', ''),
(75, 1, '', '', '', '', '', '', '', ''),
(76, 1, '', '', '', '', '', '', '', ''),
(77, 1, '', '', '', '', '', '', '', ''),
(78, 1, '', '', '', '', '', '', '', ''),
(79, 1, '', '', '', '', '', '', '', ''),
(80, 1, '', '', '', '', '', '', '', ''),
(81, 1, '', '', '', '', '', '', '', ''),
(82, 1, '', '', '', '', '', '', '', ''),
(83, 1, '', '', '', '', '', '', '', ''),
(84, 1, '', '', '', '', '', '', '', ''),
(85, 1, '', '', '', '', '', '', '', ''),
(86, 1, '', '', '', '', '', '', '', ''),
(87, 1, '', '', '', '', '', '', '', ''),
(88, 1, '', '', '', '', '', '', '', ''),
(89, 1, '', '', '', '', '', '', '', ''),
(90, 1, '', '', '', '', '', '', '', ''),
(91, 1, '', '', '', '', '', '', '', ''),
(93, 1, '', '', '', '', '', '', '', ''),
(94, 1, '', '', '', '', '', '', '', ''),
(95, 1, '', '', '', '', '', '', '', ''),
(96, 1, '', '', '', '', '', '', '', ''),
(97, 1, '', '', '', '', '', '', '', ''),
(98, 1, '', '', '', '', '', '', '', ''),
(99, 1, '', '', '', '', '', '', '', ''),
(100, 1, '', '', '', '', '', '', '', ''),
(101, 1, '', '', '', '', '', '', '', ''),
(102, 1, '', '', '', '', '', '', '', ''),
(103, 1, '', '', '', '', '', '', '', ''),
(104, 2, '', '', '', '', '', '', '', ''),
(105, 2, '', '', '', '', '', '', '', ''),
(106, 2, '', '', '', '', '', '', '', ''),
(107, 2, '', '', '', '', '', '', '', ''),
(108, 2, '', '', '', '', '', '', '', ''),
(109, 2, '', '', '', '', '', '', '', ''),
(110, 2, '', '', '', '', '', '', '', ''),
(111, 2, '', '', '', '', '', '', '', ''),
(112, 2, '', '', '', '', '', '', '', ''),
(113, 2, '', '', '', '', '', '', '', ''),
(114, 2, '', '', '', '', '', '', '', ''),
(115, 2, '', '', '', '', '', '', '', ''),
(116, 2, '', '', '', '', '', '', '', ''),
(117, 2, '', '', '', '', '', '', '', ''),
(118, 2, '', '', '', '', '', '', '', ''),
(119, 2, '', '', '', '', '', '', '', ''),
(120, 1, '', '', '', '', '', '', '', ''),
(121, 2, '', '', '', '', '', '', '', ''),
(122, 2, '', '', '', '', '', '', '', ''),
(123, 2, '', '', '', '', '', '', '', ''),
(124, 2, '', '', '', '', '', '', '', ''),
(125, 2, '', '', '', '', '', '', '', ''),
(126, 2, '', '', '', '', '', '', '', ''),
(127, 2, '', '', '', '', '', '', '', ''),
(128, 2, '', '', '', '', '', '', '', ''),
(129, 2, '', '', '', '', '', '', '', ''),
(130, 2, '', '', '', '', '', '', '', ''),
(131, 2, '', '', '', '', '', '', '', ''),
(132, 2, '', '', '', '', '', '', '', ''),
(133, 2, '', '', '', '', '', '', '', ''),
(134, 2, '', '', '', '', '', '', '', ''),
(135, 2, '', '', '', '', '', '', '', ''),
(136, 2, '', '', '', '', '', '', '', ''),
(137, 2, '', '', '', '', '', '', '', ''),
(138, 2, '', '', '', '', '', '', '', ''),
(139, 2, '', '', '', '', '', '', '', ''),
(140, 2, '', '', '', '', '', '', '', ''),
(141, 2, '', '', '', '', '', '', '', ''),
(142, 2, '', '', '', '', '', '', '', ''),
(143, 2, '', '', '', '', '', '', '', ''),
(144, 2, '', '', '', '', '', '', '', ''),
(145, 2, '', '', '', '', '', '', '', ''),
(146, 2, '', '', '', '', '', '', '', ''),
(147, 2, '', '', '', '', '', '', '', ''),
(148, 2, '', '', '', '', '', '', '', ''),
(149, 2, '', '', '', '', '', '', '', ''),
(150, 2, '', '', '', '', '', '', '', ''),
(151, 2, '', '', '', '', '', '', '', ''),
(152, 2, '', '', '', '', '', '', '', ''),
(153, 2, '', '', '', '', '', '', '', ''),
(154, 2, '', '', '', '', '', '', '', ''),
(155, 2, '', '', '', '', '', '', '', ''),
(156, 2, '', '', '', '', '', '', '', ''),
(157, 2, '', '', '', '', '', '', '', ''),
(158, 2, '', '', '', '', '', '', '', ''),
(159, 2, '', '', '', '', '', '', '', ''),
(160, 2, '', '', '', '', '', '', '', ''),
(161, 2, '', '', '', '', '', '', '', ''),
(162, 2, '', '', '', '', '', '', '', ''),
(163, 2, '', '', '', '', '', '', '', ''),
(164, 2, '', '', '', '', '', '', '', ''),
(165, 2, '', '', '', '', '', '', '', ''),
(166, 2, '', '', '', '', '', '', '', ''),
(167, 2, '', '', '', '', '', '', '', ''),
(168, 2, '', '', '', '', '', '', '', ''),
(169, 2, '', '', '', '', '', '', '', ''),
(170, 2, '', '', '', '', '', '', '', ''),
(171, 2, '', '', '', '', '', '', '', ''),
(172, 2, '', '', '', '', '', '', '', ''),
(173, 2, '', '', '', '', '', '', '', ''),
(174, 2, '', '', '', '', '', '', '', ''),
(175, 2, '', '', '', '', '', '', '', ''),
(176, 2, '', '', '', '', '', '', '', ''),
(177, 2, '', '', '', '', '', '', '', ''),
(178, 2, '', '', '', '', '', '', '', ''),
(179, 2, '', '', '', '', '', '', '', ''),
(180, 2, '', '', '', '', '', '', '', ''),
(181, 2, '', '', '', '', '', '', '', ''),
(182, 2, '', '', '', '', '', '', '', ''),
(183, 2, '', '', '', '', '', '', '', ''),
(184, 2, '', '', '', '', '', '', '', ''),
(185, 2, '', '', '', '', '', '', '', ''),
(186, 2, '', '', '', '', '', '', '', ''),
(187, 2, '', '', '', '', '', '', '', ''),
(188, 2, '', '', '', '', '', '', '', ''),
(189, 2, '', '', '', '', '', '', '', ''),
(190, 2, '', '', '', '', '', '', '', ''),
(191, 2, '', '', '', '', '', '', '', ''),
(192, 2, '', '', '', '', '', '', '', ''),
(193, 2, '', '', '', '', '', '', '', ''),
(194, 2, '', '', '', '', '', '', '', ''),
(195, 2, '', '', '', '', '', '', '', ''),
(196, 2, '', '', '', '', '', '', '', ''),
(197, 2, '', '', '', '', '', '', '', ''),
(198, 2, '', '', '', '', '', '', '', ''),
(199, 2, '', '', '', '', '', '', '', ''),
(200, 2, '', '', '', '', '', '', '', ''),
(201, 2, '', '', '', '', '', '', '', ''),
(202, 2, '', '', '', '', '', '', '', ''),
(203, 2, '', '', '', '', '', '', '', ''),
(204, 2, '', '', '', '', '', '', '', ''),
(205, 2, '', '', '', '', '', '', '', ''),
(206, 2, '', '', '', '', '', '', '', ''),
(207, 2, '', '', '', '', '', '', '', ''),
(208, 2, '', '', '', '', '', '', '', ''),
(209, 2, '', '', '', '', '', '', '', ''),
(210, 2, '', '', '', '', '', '', '', ''),
(211, 2, '', '', '', '', '', '', '', ''),
(212, 2, '', '', '', '', '', '', '', ''),
(213, 2, '', '', '', '', '', '', '', ''),
(214, 2, '', '', '', '', '', '', '', ''),
(215, 2, '', '', '', '', '', '', '', ''),
(216, 2, '', '', '', '', '', '', '', ''),
(217, 2, '', '', '', '', '', '', '', ''),
(218, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 2, '1', '1', '1', '1', '1', '1', '1', '5'),
(238, 2, '1', '1', '1', '1', '1', '1', '1', '5'),
(239, 2, 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g'),
(240, 2, 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g'),
(241, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 2, 'F', 'F', 'FFFFFFFFFFFFFFFFFFFFFFFFFFF', 'Ghryshevskoho', '77220', 'Tysiv', 'qwfqwfqwf@afawfawf', 'iglouv'),
(250, 2, 'F', 'F', 'FFFFFFFFFFFFFFFFFFFFFFFFFFF', 'Ghryshevskoho', '77220', 'Tysiv', 'qwfqwfqwf@afawfawf', 'iglouv'),
(251, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 2, 'Michael', 'Koogootyk', 'Ukraine', 'Ghryshevskoho', '77220', 'Tysiv', 'admin@gmail.com', '(123) 456-7890'),
(254, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 2, 'Vasko', 'X', 'X', 'Z', 'C', 'X', 'gonevludd@gmail.com', '2141241244412'),
(256, 2, 'Vasko', 'GSA', 'Ukraine', 'Ghryshevskoho', '77220', 'Tysiv', 'ss', 'ss'),
(257, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `size` varchar(10) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`, `size`, `color`) VALUES
(335, 193, 54, 2, NULL, ''),
(336, 194, 57, 2, NULL, ''),
(337, 194, 58, 2, NULL, ''),
(338, 195, 55, 4, NULL, ''),
(339, 196, 55, 1, NULL, ''),
(340, 197, 56, 1, NULL, ''),
(341, 197, 55, 1, NULL, ''),
(342, 198, 55, 2, NULL, ''),
(344, 199, 55, 1, NULL, ''),
(345, 199, 57, 2, NULL, ''),
(346, 200, 56, 1, NULL, ''),
(347, 201, 56, 1, NULL, ''),
(348, 201, 55, 1, NULL, ''),
(349, 202, 55, 2, NULL, ''),
(350, 202, 56, 1, NULL, ''),
(351, 202, 59, 1, NULL, ''),
(352, 203, 55, 1, NULL, ''),
(353, 204, 58, 3, NULL, ''),
(354, 204, 55, 1, NULL, ''),
(355, 205, 55, 1, NULL, ''),
(356, 206, 56, 1, NULL, ''),
(357, 206, 57, 3, NULL, ''),
(358, 207, 56, 1, NULL, ''),
(359, 207, 57, 1, NULL, ''),
(360, 207, 55, 2, NULL, ''),
(362, 209, 59, 3, NULL, ''),
(363, 210, 56, 1, NULL, ''),
(371, 217, 55, 2, 'XL', 'Blue'),
(372, 217, 55, 2, 'XL', 'Blue'),
(373, 217, 54, 2, 'XL', 'Blue'),
(374, 217, 54, 2, 'XL', 'Blue'),
(375, 217, 54, 2, 'XL', 'Blue'),
(376, 217, 54, 2, 'XL', 'Blue'),
(377, 217, 54, 2, 'XL', 'Blue'),
(378, 217, 54, 2, 'XL', 'Blue'),
(379, 54, 54, 121, 'XXXXXXL', 'Orange'),
(380, 232, 58, 1, 'S', 'Violet'),
(381, 233, 55, 2, '', 'Red'),
(382, 233, 56, 1, 'XL', 'Green'),
(383, 233, 57, 1, 'S', 'Violet'),
(384, 234, 55, 2, '', 'Red'),
(385, 234, 56, 1, 'XL', 'Green'),
(386, 234, 57, 1, 'S', 'Violet'),
(387, 235, 54, 1, '', ''),
(388, 236, 54, 1, '', ''),
(389, 237, 54, 1, '', ''),
(390, 238, 54, 1, '', ''),
(391, 239, 55, 1, '', ''),
(392, 240, 55, 1, '', ''),
(393, 241, 57, 1, '', ''),
(394, 242, 57, 1, '', ''),
(395, 243, 55, 1, '', ''),
(396, 244, 55, 1, '', ''),
(399, 247, 55, 1, '', ''),
(400, 248, 55, 1, '', ''),
(401, 249, 55, 1, '', ''),
(402, 250, 55, 1, '', ''),
(403, 251, 54, 1, '', ''),
(404, 252, 54, 1, '', ''),
(405, 253, 58, 2, 'S', 'Yellow'),
(406, 253, 62, 3, 'XL', 'White'),
(407, 254, 57, 1, '', ''),
(408, 255, 55, 1, '', ''),
(409, 256, 56, 1, 'M', 'Red'),
(410, 256, 58, 2, 'XS', 'Red'),
(411, 257, 55, 1, '', ''),
(412, 258, 55, 1, '', ''),
(413, 259, 55, 1, '', ''),
(414, 260, 55, 1, '', ''),
(415, 261, 54, 1, '', ''),
(416, 262, 55, 2, '', ''),
(417, 263, 55, 1, '', ''),
(418, 264, 55, 1, '', ''),
(419, 265, 55, 1, '', ''),
(420, 266, 55, 1, '', ''),
(421, 267, 55, 1, '', ''),
(422, 268, 55, 1, '', ''),
(423, 269, 55, 2, '', ''),
(424, 270, 55, 1, '', ''),
(425, 271, 55, 1, '', ''),
(426, 272, 55, 1, '', ''),
(427, 273, 55, 1, '', ''),
(428, 274, 55, 1, '', ''),
(429, 275, 56, 1, '', ''),
(430, 276, 55, 1, '', ''),
(431, 277, 55, 1, '', ''),
(432, 278, 55, 1, '', ''),
(433, 279, 55, 1, '', ''),
(434, 280, 58, 1, '', ''),
(435, 281, 58, 1, '', ''),
(436, 282, 55, 1, '', ''),
(437, 283, 55, 1, 'M', 'Violet'),
(438, 283, 58, 1, 'M', 'Yellow'),
(439, 284, 55, 1, '', ''),
(440, 285, 54, 2, '', ''),
(441, 286, 55, 2, '', ''),
(442, 287, 55, 1, '', ''),
(443, 288, 55, 1, '', ''),
(444, 289, 59, 1, '', ''),
(445, 290, 57, 1, '', ''),
(446, 291, 55, 1, '', ''),
(447, 292, 57, 1, '', ''),
(448, 293, 59, 1, '', ''),
(449, 294, 58, 1, '', ''),
(450, 295, 55, 1, '', ''),
(451, 296, 55, 1, '', ''),
(452, 297, 54, 1, '', ''),
(453, 298, 54, 1, '', ''),
(454, 299, 55, 1, '', ''),
(455, 300, 54, 1, '', ''),
(456, 301, 54, 1, NULL, NULL),
(457, 301, 55, 1, '', ''),
(458, 302, 54, 1, '', ''),
(459, 302, 55, 1, NULL, NULL),
(460, 303, 54, 1, '', ''),
(461, 303, 55, 1, NULL, NULL),
(462, 304, 54, 1, 'M', 'Violet'),
(463, 305, 54, 1, '', ''),
(464, 306, 55, 2, '', ''),
(465, 307, 54, 1, '', ''),
(466, 307, 55, 1, NULL, NULL),
(467, 308, 55, 1, '', ''),
(468, 308, 56, 1, NULL, NULL),
(469, 309, 55, 1, '', ''),
(470, 309, 56, 1, NULL, NULL),
(471, 310, 58, 1, NULL, NULL),
(472, 310, 59, 1, '', ''),
(473, 310, 62, 1, NULL, NULL),
(474, 311, 57, 1, '', ''),
(475, 312, 55, 1, '', ''),
(476, 313, 54, 1, '', ''),
(477, 314, 55, 1, NULL, NULL),
(478, 314, 54, 1, '', ''),
(479, 315, 54, 1, '', ''),
(480, 315, 55, 1, NULL, NULL),
(481, 316, 54, 1, '', ''),
(482, 317, 55, 1, '', ''),
(483, 318, 54, 1, '', ''),
(484, 319, 55, 1, '', ''),
(485, 320, 55, 1, NULL, NULL),
(486, 320, 54, 1, '', ''),
(487, 321, 55, 1, '', ''),
(488, 321, 54, 1, NULL, NULL),
(489, 322, 54, 1, '', ''),
(490, 322, 56, 1, NULL, NULL),
(491, 323, 55, 1, '', ''),
(492, 324, 55, 1, '', ''),
(493, 325, 55, 1, '', ''),
(494, 326, 59, 1, '', ''),
(495, 327, 55, 1, NULL, NULL),
(496, 327, 59, 1, '', ''),
(497, 327, 54, 1, NULL, NULL),
(498, 328, 59, 1, '', ''),
(499, 328, 54, 1, NULL, NULL),
(500, 328, 55, 1, NULL, NULL),
(501, 329, 54, 1, '', ''),
(502, 329, 55, 1, NULL, NULL),
(503, 330, 59, 1, '', ''),
(504, 330, 62, 1, NULL, NULL);

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
  `cat_id` int(10) DEFAULT NULL,
  `size_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`, `size_id`) VALUES
(54, 'SNAKESKIN PRINT SHIRT', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/5134/844/926/5134844926_2_1_16.jpg?t=1583947775085&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/5134/844/926/5134844926_1_1_16.jpg?t=1583947775085&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/5134/844/926/5134844926_2_4_16.jpg?t=1583947775085&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/5134/844/926/5134844926_2_3_16.jpg?t=1583947775085&impolicy=massimodutti-itxmedium&imwidth=600', 'JOIN LIFE Care for fiber: Sustainably Grown European Linen. Sustainably Grown European Linen is farmed using a natural irrigation system and no genetically modified seeds or defoliants. This process is water-friendly and environmentally friendly.', 120, 74, 'xxxxxxxxxxxxxxxxx', 3, 1),
(55, 'Neck Tshirt', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6862/895/251/6862895251_2_1_16.jpg?t=1580836475222&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6862/895/251/6862895251_1_1_16.jpg?t=1580836475222&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6862/895/251/6862895251_2_2_16.jpg?t=1580836475222&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6862/895/251/6862895251_2_3_16.jpg?t=1580836475222&impolicy=massimodutti-itxmedium&imwidth=600;', 'JOIN LIFE Care for fiber: Sustainably Grown European Linen. Sustainably Grown European Linen is farmed using a natural irrigation system and no genetically modified seeds or defoliants. This process is water-friendly and environmentally friendly.', 140, 20, '', 4, 2),
(56, 'Silk T-Shirt', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6031/555/520/6031555520_1_1_16.jpg?t=1584022406285&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6031/555/520/6031555520_2_1_16.jpg?t=1584022406285&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6031/555/520/6031555520_2_2_16.jpg?t=1584022406285&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6031/555/520/6031555520_2_3_16.jpg?t=1584022406285&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6031/555/520/6031555520_2_4_16.jpg?t=1584022406285&impolicy=massimodutti-itxmedium&imwidth=600', 'An essential made of exquisite natural fibres for maximum comfort and convenience. T-shirt made of 100% mulberry silk featuring a straight fit, crew neck, short sleeves and side vents at the hem.', 90, 86, '', 4, 1),
(57, 'Spotted print jumpsuit\r\n', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6617/849/710/6617849710_2_5_16.jpg?t=1586280259711&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6617/849/710/6617849710_2_4_16.jpg?t=1586280259711&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6617/849/710/6617849710_1_1_16.jpg?t=1586280259711&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6617/849/710/6617849710_2_3_16.jpg?t=1586280259711&impolicy=massimodutti-itxmedium&imwidth=600', '\r\nPrinted\r\n\r\nMade of cotton and linen\r\n\r\nFlared\r\n\r\nV-neck\r\n\r\nFront button fastening concealed by a placket\r\n\r\nTwo side pockets\r\n\r\nBuckled belt detail\r\n\r\nBelt loops', 300, 85, '', 6, 1),
(58, 'CAMISOLE DRESS\r\n', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6649/580/806/6649580806_1_1_16.jpg?t=1586283826796&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/0/1/p/6649/580/806/6649580806_2_1_16.jpg?t=1586283826796&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6649/580/806/6649580806_2_2_16.jpg?t=1586283826796&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/0/1/p/6649/580/806/6649580806_2_3_16.jpg?t=1586283826796&impolicy=massimodutti-itxmedium&imwidth=600', 'The garment length for size 38 is 103 cm.\r\n\r\nTel. 800 333 7374 / 8 800 333 7374\r\n\r\nFree Home Delivery over 5.000 RUB\r\n\r\nPayments: VISA, MasterCard, American Express, MIR', 280, 35, '', 6, 1),
(59, 'Shoes', 'https://static.massimodutti.net/3/photos/2020/V/1/1/p/1002/550/707/1002550707_1_1_16.jpg?t=1581334954208&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/1/1/p/1002/550/707/1002550707_2_1_16.jpg?t=1581334954208&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/1/1/p/1002/550/707/1002550707_2_2_16.jpg?t=1581334954208&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/1/1/p/1002/550/707/1002550707_2_4_16.jpg?t=1581334954208&impolicy=massimodutti-itxmedium&imwidth=600', 'It\'s a description of this shoes', 133, 33, '', 7, 1),
(60, 'KHAKI ANKLE BOOTS WITH WOODEN HEELS\r\n', 'https://static.massimodutti.net/3/photos/2020/V/1/1/p/1210/550/500/1210550500_1_1_16.jpg?t=1580742572981&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/V/1/1/p/1210/550/500/1210550500_2_1_16.jpg?t=1580742572981&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/1/1/p/1210/550/500/1210550500_2_2_16.jpg?t=1580742572981&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/V/1/1/p/1210/550/500/1210550500_2_5_16.jpg?t=1580742572981&impolicy=massimodutti-itxmedium&imwidth=600', 'Leather ankle boots with stitching detail and a wood-effect heel. Featuring leather lining and insole, and a matching sole.', 110, 0, '', 7, 1),
(61, 'Boat neck sweater with decrease stitching\r\n', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5687/864/712/5687864712_6_1_16.jpg?t=1592847795895&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5687/864/712/5687864712_2_4_16.jpg?t=1592847795895&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5687/864/712/5687864712_2_3_16.jpg?t=1592847795895&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5687/864/712/5687864712_2_2_16.jpg?t=1592847795895&impolicy=massimodutti-itxmedium&imwidth=600', '\r\nMade of 100% cotton\r\n\r\nStraight\r\n\r\nBoat neck', 70, 100, '', 3, 1),
(62, 'Sweatshirt with adjustable hood\r\n', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6835/888/800/6835888800_1_1_16.jpg?t=1589208486953&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6835/888/800/6835888800_2_1_16.jpg?t=1589208486953&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6835/888/800/6835888800_2_2_16.jpg?t=1589208486953&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6835/888/800/6835888800_2_3_16.jpg?t=1589208486953&impolicy=massimodutti-itxmedium&imwidth=600', 'Sweatshirt\r\n\r\nStraight\r\n\r\nAdjustable hood\r\n\r\nStretch hem', 80, 0, '', 3, 1),
(89, 'Black Dress', 'https://scontent.fifo2-1.fna.fbcdn.net/v/t1.0-0/p480x480/101688926_302058804522201_5250209285083386065_o.jpg?_nc_cat=107&_nc_sid=a26aad&_nc_ohc=fvfvc5HY94EAX-knjA6&_nc_ht=scontent.fifo2-1.fna&_nc_tp=6&oh=b93c70578a006e46f38ac3042d74be63&oe=5F44451F', 'https://scontent.fifo2-1.fna.fbcdn.net/v/t1.0-0/p480x480/101985634_302058837855531_791076211953094523_o.jpg?_nc_cat=111&_nc_sid=a26aad&_nc_ohc=dcAdlsv9FxsAX-Y5Xrs&_nc_ht=scontent.fifo2-1.fna&_nc_tp=6&oh=41e526099160dc5c1d3a9ca6671c0754&oe=5F42C30A;https://scontent.fifo2-1.fna.fbcdn.net/v/t1.0-0/p480x480/101379554_302058871188861_3282210923230642599_o.jpg?_nc_cat=102&_nc_sid=a26aad&_nc_ohc=Y50mpHrocTUAX8wM6oy&_nc_ht=scontent.fifo2-1.fna&_nc_tp=6&oh=6d2c7dc480d85d90b5f68d6e72276762&oe=5F428273;https://scontent.fifo2-1.fna.fbcdn.net/v/l/t1.0-0/p480x480/102439612_302058911188857_1693129611366013292_o.jpg?_nc_cat=106&_nc_sid=a26aad&_nc_ohc=Lyz0WxZD7v0AX_DawHL&_nc_ht=scontent.fifo2-1.fna&_nc_tp=6&oh=ef9a7d8cd2e2eb1c633949b2eb805e88&oe=5F45E977', 'Образ который не требует комментария. Блуза изготовлена  из смесового льна, что даёт изделию умеренную мятость. Изделие одновременно простое и элегантное, которое никогда не будет лишним в летнем гардеробе.', 1080, 33, '', 6, 3),
(90, 'Classic dress', 'https://scontent.fifo2-1.fna.fbcdn.net/v/t1.0-0/p480x480/98170669_288766975851384_811752035874504704_o.jpg?_nc_cat=102&_nc_sid=a26aad&_nc_ohc=_wCnyMN3fU0AX_Au5nA&_nc_ht=scontent.fifo2-1.fna&_nc_tp=6&oh=82493944c3bf50ab4fc838b030deaa79&oe=5F42AD96', 'https://scontent.fifo2-1.fna.fbcdn.net/v/t1.0-0/p480x480/98024870_288767019184713_4250784799922323456_o.jpg?_nc_cat=101&_nc_sid=a26aad&_nc_ohc=9mDuOTya_roAX_XJzZu&_nc_ht=scontent.fifo2-1.fna&_nc_tp=6&oh=206e13616864203f409126691dc18d99&oe=5F44E9AB;https://scontent.fifo2-1.fna.fbcdn.net/v/t1.0-0/p480x480/98145388_288767072518041_3800709387358568448_o.jpg?_nc_cat=106&_nc_sid=a26aad&_nc_ohc=ywxdpGDLqaAAX9ktWR7&_nc_ht=scontent.fifo2-1.fna&_nc_tp=6&oh=8b72bbef60ecf46f076660df557f9a59&oe=5F441F4C;https://scontent.fifo2-1.fna.fbcdn.net/v/t1.0-0/p480x480/99106300_288767115851370_3101579472818667520_o.jpg?_nc_cat=106&_nc_sid=a26aad&_nc_ohc=XHYPoBDh0aEAX8h5PFl&_nc_ht=scontent.fifo2-1.fna&_nc_tp=6&oh=575bac62dc320226cc3d209852da44aa&oe=5F43AF70', 'І знову класика!!! Краса (надія) і затишок! Цитую великих: ′′ Найголовніше в жіночому одязі - це жінка, яка його носить ′′ Єва Сен-Лоран', 1190, 50, '', 6, 4),
(91, 'Square T-Shirt', 'https://scontent.fifo2-1.fna.fbcdn.net/v/t1.0-0/p480x480/97286888_286725196055562_8592485274292846592_o.jpg?_nc_cat=101&_nc_sid=a26aad&_nc_ohc=qVRWETR4z2kAX_NrwcZ&_nc_ht=scontent.fifo2-1.fna&_nc_tp=6&oh=e3f49cbd1d7580ce93de6a63c0ad4e8d&oe=5F43E77A', 'https://scontent.fifo2-1.fna.fbcdn.net/v/t1.0-0/p480x480/99140945_286725149388900_1704623612989800448_o.jpg?_nc_cat=106&_nc_sid=a26aad&_nc_ohc=p6adxwoVskUAX9Yd2A7&_nc_ht=scontent.fifo2-1.fna&_nc_tp=6&oh=0494a625444716a8ec0b4d49c0290f3b&oe=5F464201', 'Клітка завжди в тренді. Футболка Кейдж @baydalini_boutique, дуже популярна модель в так званому американському стилі, натуральні кольори, оверсайз. Ідеально поєднані з джинсовим одягом: бойфренди, шорти, комбінезони - порвані та потерті чоботи або кросівки.Розмір: S, M, L, XL', 1480, 100, '', 4, 5);

-- --------------------------------------------------------

--
-- Структура таблиці `sizes`
--

CREATE TABLE `sizes` (
  `XS` int(11) NOT NULL,
  `S` int(11) NOT NULL,
  `M` int(11) NOT NULL,
  `L` int(11) NOT NULL,
  `XL` int(11) NOT NULL,
  `XXL` int(11) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `sizes`
--

INSERT INTO `sizes` (`XS`, `S`, `M`, `L`, `XL`, `XXL`, `id`) VALUES
(4, 4, 3, 2, 8, 2, 1),
(8, 8, 8, 8, 8, 8, 2),
(10, 10, 10, 10, 0, 0, 3),
(10, 10, 10, 10, 10, 10, 4),
(1, 1, 10, 1, 10, 1, 5);

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
(27, '$2b$10$3SdKyj5AWzi6Ul.OJr7KSeW/Z6rd0.5r6WtGEYnruV4u/FyNOSaIq', 'ff@ff.ff', 'Alfa', 'Omega', 555, '2020-07-09 12:17:22'),
(28, '$2b$10$J6mBS4O4ITmQegfmt/Z9gOqMVOvRzSjrlV.ke5QWyQBnWZcTWmJra', 'aaa@aaa', 'aaa', 'aaa', 555, '2020-07-10 12:59:17'),
(29, '$2b$10$nVxbGrnw4mBGQ1ZIMV92feR9b3gZmMJuPnJRNvvpCmVup5bCZ7/xm', 'zzz@zzz', 'zzz', 'zzz', 555, '2020-07-20 13:29:47'),
(30, '$2b$10$qYVDfNV0P6hFvWYve.OggO4nvc6PuVCBA4L3O5ASl4gZwZYgj.PHe', 'xxx@xxx', 'xxx', 'xxx', 555, '2020-07-22 18:53:48'),
(31, '$2b$10$0v13O3nZ7vAU0CjlN6mJneayjBAuAPZzO6EWxxTy1ZY0QN34JRMg.', 'ukhanskyi@gmail.om', 'Mykola', 'Ukhankyi', 555, '2020-07-27 13:18:37');

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
-- Індекси таблиці `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

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
-- Індекси таблиці `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблиці `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT для таблиці `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT для таблиці `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
