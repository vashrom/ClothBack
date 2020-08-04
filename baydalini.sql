-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Сер 04 2020 р., 16:59
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
-- База даних: `baydalini`
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

-- --------------------------------------------------------

--
-- Структура таблиці `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `images` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
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
(4, 'Pickachu!', 'https://vignette.wikia.nocookie.net/pokemon/images/4/49/Ash_Pikachu.png/revision/latest?cb=20200405125039', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQWejx1A1AUS1FgggjfcC-4iUXMg7C-GaJdrQ&usqp=CAU;https://assets.pokemon.com/assets/cms2/img/pokedex/full/026.png;https://pokemongolife.ru/p/Pichu.png', 'pikaaaaaaaaaaaachu', 'Travel', '22 July, 2021');

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
-- Структура таблиці `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `text` varchar(255) NOT NULL,
  `cat_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `text`, `cat_id`) VALUES
(8, 'Contacter', 'contact@gmail.com', 'gqegrgqegq', 1),
(9, 'User 4', 'user@gmail.com', 'First comment!', 2),
(15, 'Horse', 'ff@ff.ff', 'Bla-bla-bla', 2),
(16, 'Mouse', 'ff@ff.ff', 'Bla-bla-bla', 2),
(17, 'QQQ', 'qq@qq', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 2),
(18, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(19, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(20, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(21, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(22, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(23, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(24, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(25, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(26, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(27, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(28, 'CCc', 'ccc@cc', 'cccccccccccccccccc', 2),
(29, 'ssssssssssssssssssssssssssssss', 'ssssss@ssssss', 'sssssssssssssssssssssssssssssssssssssssszx', 2),
(30, 'ssssssssssssssssssssssssssssss', 'ssssss@ssssss', 'sssssssssssssssssssssssssssssssssssssssszx', 2),
(31, 'ssssssssssssssssssssssssssssss', 'ssssss@ssssss', 'sssssssssssssssssssssssssssssssssssssssszx', 2),
(32, 'ssssssssssssssssssssssssssssss', 'ssssss@ssssss', 'sssssssssssssssssssssssssssssssssssssssszx', 2),
(33, 'ssssssssssssssssssssssssssssss', 'ssssss@ssssss', 'sssssssssssssssssssssssssssssssssssssssszx', 2),
(34, 'ssssssssssssssssssssssssssssss', 'ssssss@ssssss', 'sssssssssssssssssssssssssssssssssssssssszx', 2),
(35, 'ssssssssssssssssssssssssssssss', 'ssssss@ssssss', 'sssssssssssssssssssssssssssssssssssssssszx', 2),
(36, 'ssssssssssssssssssssssssssssss', 'ssssss@ssssss', 'sssssssssssssssssssssssssssssssssssssssszx', 2),
(37, 'dfcz', 'ff@ff.ff', 'safagasgasgasgasgccc', 2),
(38, 'dfcz', 'ff@ff.ff', 'safagasgasgasgasgccc', 2),
(39, 'sfasaf', 'asfasfasf@f', 'asgasasgas', 2),
(40, 'sfasaf', 'asfasfasf@f', 'asgasasgas', 2),
(41, 'sfasaf', 'asfasfasf@f', 'asgasasgas', 2),
(42, 'sfasaf', 'asfasfasf@f', 'asgasasgasc', 2),
(43, 'zzzzzzzzzz', 'ff@ff.ff', 'asasgasas', 2),
(44, '11111111111', '111@11', '1111111111111111111111', 2),
(45, 'dgsdsdh', 'sdhsdhsdh@asg', 'asgaasgasg', 2),
(46, 'Horse', 'VVVVVVVVVV@V', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', 2),
(47, 'asfasasfa', 'sfasfasf@fas', 'sadasfaf', 2),
(48, 'asgasasg', 'ff@ff.ff', 'agwgagagagag', 2),
(49, 'asfasf', 'asfa@asag', 'asfagasaggavav', 2),
(50, 'ssdsg', 'wegwegwage@go.co', 'agsgag', 2),
(51, 'Mush', 'vas-hrom@ukr.net', 'agqgb3f@gag', 2),
(52, 'asgasg', 'asgasg@asgvvv', 'egagagawawgg', 2),
(53, 'vas_hrom', 'gonevludd@gmail.com', 'sfafafq33gggg', 1),
(57, 'xbsbs', 'dsgsdggdg@f', 'dsb', 2),
(58, 'hhhh', 'hhhh@gsg', 'agsgashashah', 2),
(59, 'Horse', 'fnsnsf@hahadh', 'haehaeh', 2),
(60, 'ahaahe', 'asg@agasg', 'asaasenqnn', 2),
(61, 'sdbvq', 'admin@gmail.com', 'qwgqggqrgbqe', 2),
(62, 'qwfqwfqfqwf', 'ff@ff.ff', 'fqwfqwfqf', 2),
(63, 'safwefwf', 'ff@ff.ff', 'qwqwqwqf', 2),
(64, 'qwfqwqw', 'qwfqwfqwf@afawfawf', 'fqwfqwfqf', 2),
(65, 'Horse', 'ff@ff.ff', 'qf1g1g13g1', 2);

-- --------------------------------------------------------

--
-- Структура таблиці `comment_categories`
--

CREATE TABLE `comment_categories` (
  `id` int(10) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `comment_categories`
--

INSERT INTO `comment_categories` (`id`, `title`) VALUES
(1, 'contact'),
(2, 'return'),
(3, 'blog');

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
  `phone` varchar(30) DEFAULT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `country`, `street`, `postcode`, `city`, `email`, `phone`, `message`) VALUES
(358, 30, 'Michael', 'GSA', 'USA', 'Ghryshevskoho', '77220', 'Los Angeles', 'ff@ff.ff', '(123) 456-7890', 'Call me later'),
(359, 30, 'Vasko', 'Khrom', 'Ukraine', 'Ghryshevskoho', '77220', 'ZZZ', 'vas-hrom@ukr.net', '(123) 456-7890', 'Hello world');

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
(532, 355, 19, 2, NULL, NULL),
(533, 355, 20, 1, NULL, NULL),
(534, 356, 19, 1, 'XL', NULL),
(535, 356, 20, 2, 'M', ''),
(536, 358, 19, 2, 'XL', 'Violet'),
(537, 358, 20, 1, 'XS', ''),
(538, 359, 20, 1, 'M', 'Violet'),
(539, 359, 19, 1, 'S', 'Yellow');

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` decimal(19,2) NOT NULL,
  `quantity` int(30) NOT NULL,
  `short_desc` text DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `xs` int(30) DEFAULT NULL,
  `s` int(30) DEFAULT NULL,
  `m` int(30) DEFAULT NULL,
  `l` int(30) DEFAULT NULL,
  `xl` int(30) DEFAULT NULL,
  `xxl` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`, `xs`, `s`, `m`, `l`, `xl`, `xxl`) VALUES
(19, 'Two-tone seed print top', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5158/863/251/5158863251_2_1_16.jpg?t=1592319150680&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5158/863/251/5158863251_2_2_16.jpg?t=1592319150680&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5158/863/251/5158863251_2_4_16.jpg?t=1592319150680&impolicy=massimodutti-itxmedium&imwidth=600', 'JOIN LIFE Care for fiber: at least 50% Sustainably Grown European Linen. Sustainably Grown European Linen is farmed using a natural irrigation system and no genetically modified seeds or defoliants. This process is water-friendly and environmentally friendly.', '74.28', 116, 'Tel. 800 333 7374 / 8 800 333 7374  Free Home Delivery over 5.000 RUB  Payments: VISA, MasterCard, American Express, MIR', 4, 20, 19, 20, 20, 17, 20),
(20, 'Open front cape', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5665/513/830/5665513830_2_1_16.jpg?t=1596101034137&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5665/513/830/5665513830_2_6_16.jpg?t=1596101034137&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5665/513/830/5665513830_2_2_16.jpg?t=1596101034137&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5665/513/830/5665513830_2_4_16.jpg?t=1596101034137&impolicy=massimodutti-itxmedium&imwidth=600', 'JOIN LIFE Care for fiber: EcoVeroTMViscose. EcoVeroTM has been certified with the EU Ecolabel and meets the high environmental standards of the European Union from raw material to production, helping us to protect the environment.', '101.35', 26, 'Tel. 800 333 7374 / 8 800 333 7374  Free Home Delivery over 5.000 RUB  Payments: VISA, MasterCard, American Express, MIR', 3, 4, 5, 2, 5, 5, 5);

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
(24, '$2b$10$y/GG/9zCjt7fk6uerp9Ffu1/8LLeDmMXBS2BOP1FfizRAbwD3CCGm', 'admin@gmail.com', 'Buzz', 'Earth', 555, '2020-07-08 21:40:05'),
(25, '$2b$10$biutfuI2QMzU/VaIe9zwhugoiR.dIPWuXoAkj22FDsdOtsCBV8O62', 'mmm@mmm', 'mmm', 'mmm', 555, '2020-07-08 21:42:39'),
(27, '$2b$10$3SdKyj5AWzi6Ul.OJr7KSeW/Z6rd0.5r6WtGEYnruV4u/FyNOSaIq', 'ff@ff.ffx', 'Alfach', 'Omegach', 777, '2021-07-09 09:17:22'),
(28, '$2b$10$J6mBS4O4ITmQegfmt/Z9gOqMVOvRzSjrlV.ke5QWyQBnWZcTWmJra', 'aaa@aaa', 'aaa', 'aaa', 555, '2020-07-10 12:59:17'),
(29, '$2b$10$nVxbGrnw4mBGQ1ZIMV92feR9b3gZmMJuPnJRNvvpCmVup5bCZ7/xm', 'zzz@zzz', 'zzz', 'zzz', 555, '2020-07-20 13:29:47'),
(30, '$2b$10$qYVDfNV0P6hFvWYve.OggO4nvc6PuVCBA4L3O5ASl4gZwZYgj.PHe', 'xxx@xxx', 'xxx', 'xxx', 777, '2020-07-22 18:53:48'),
(31, '$2b$10$0v13O3nZ7vAU0CjlN6mJneayjBAuAPZzO6EWxxTy1ZY0QN34JRMg.', 'ukhanskyi@gmail.om', 'Mykola', 'Ukhanskyi', 777, '2020-07-27 10:18:37');

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
-- Індекси таблиці `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `comment_categories`
--
ALTER TABLE `comment_categories`
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
  ADD KEY `order_d_to_prod` (`product_id`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_to_category` (`cat_id`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблиці `comment_categories`
--
ALTER TABLE `comment_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT для таблиці `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  ADD CONSTRAINT `order_d_to_prod` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `prod_to_category` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
