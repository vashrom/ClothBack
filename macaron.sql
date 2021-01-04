-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Січ 04 2021 р., 20:15
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
-- База даних: `macaron`
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
  `title_ua` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_de` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL,
  `images` text CHARACTER SET utf8 DEFAULT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `text_ua` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_de` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `category_ua` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_ru` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_de` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(30) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `title_ua`, `title_ru`, `title_de`, `image`, `images`, `text`, `text_ua`, `text_ru`, `text_de`, `category`, `category_ua`, `category_ru`, `category_de`, `date`) VALUES
(4, 'Pickachu!', 'Пікачу!', 'Пикачу!', 'DEU', 'https://vignette.wikia.nocookie.net/pokemon/images/4/49/Ash_Pikachu.png/revision/latest?cb=20200405125039', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQWejx1A1AUS1FgggjfcC-4iUXMg7C-GaJdrQ&usqp=CAU;https://assets.pokemon.com/assets/cms2/img/pokedex/full/026.png;https://pokemongolife.ru/p/Pichu.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien et ligula. Varius vel pharetra vel turpis nunc eget lorem dolor sed. Sit amet consectetur adipiscing elit pellentesque habitant morbi tristique. Ut enim blandit volutpat maecenas volutpat blandit aliquam. Aliquet enim tortor at auctor urna nunc id. Augue neque gravida in fermentum et. Consectetur adipiscing elit ut aliquam purus. Diam in arcu cursus euismod quis viverra nibh cras. Sed libero enim sed faucibus turpis in eu mi bibendum. Eget mauris pharetra et ultrices. Id aliquet risus feugiat in ante metus. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Elit ut aliquam purus sit amet luctus venenatis.  Duis convallis convallis tellus id interdum velit laoreet id donec. Magna etiam tempor orci eu lobortis elementum nibh tellus molestie. Ut morbi tincidunt augue interdum velit. Nisl nisi scelerisque eu ultrices vitae auctor. Purus faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Sit amet porttitor eget dolor. Orci eu lobortis elementum nibh tellus molestie. Tincidunt ornare massa eget egestas purus viverra accumsan. Urna cursus eget nunc scelerisque viverra mauris in. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Maecenas pharetra convallis posuere morbi leo urna molestie at.  Vitae purus faucibus ornare suspendisse sed. Morbi quis commodo odio aenean. Dolor sit amet consectetur adipiscing. Faucibus ornare suspendisse sed nisi lacus sed. Dolor purus non enim praesent elementum facilisis leo vel. Facilisis volutpat est velit egestas dui id ornare. Morbi non arcu risus quis varius. Eget duis at tellus at urna condimentum mattis. Diam in arcu cursus euismod quis viverra nibh cras pulvinar. Suspendisse interdum consectetur libero id faucibus. Et ultrices neque ornare aenean euismod elementum. Iaculis at erat pellentesque adipiscing commodo elit at.', 'Текст українською', 'Текст на русском', 'DEU', 'Travel', 'Подорож', 'Путешествия', 'DEU', '22.08.2021'),
(7, 'Cat', 'Кіт ', 'Кот', 'DEU ', 'https://image.winudf.com/v2/image/Y29tLkhEV2FsbHBhcGVyLmN1dGVjYXRjX3NjcmVlbl80XzE1MjQzNzk3MDJfMDQw/screen-4.jpg?fakeurl=1&type=.jpg', 'https://www.pngitem.com/pimgs/m/230-2305081_meme-crying-kitty-cat-cute-dank-freetoedit-crying.png;https://www.meme-arsenal.com/memes/2fd3ca7a74bc210d36c6afa88fcf042a.jpg;https://i.ytimg.com/vi/gHeWzrh9hOI/maxresdefault.jpg', 'It is real blog about cat!!!Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien et ligula. Varius vel pharetra vel turpis nunc eget lorem dolor sed. Sit amet consectetur adipiscing elit pellentesque habitant morbi tristique. Ut enim blandit volutpat maecenas volutpat blandit aliquam. Aliquet enim tortor at auctor urna nunc id. Augue neque gravida in fermentum et. Consectetur adipiscing elit ut aliquam purus. Diam in arcu cursus euismod quis viverra nibh cras. Sed libero enim sed faucibus turpis in eu mi bibendum. Eget mauris pharetra et ultrices. Id aliquet risus feugiat in ante metus. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Elit ut aliquam purus sit amet luctus venenatis.  Duis convallis convallis tellus id interdum velit laoreet id donec. Magna etiam tempor orci eu lobortis elementum nibh tellus molestie. Ut morbi tincidunt augue interdum velit. Nisl nisi scelerisque eu ultrices vitae auctor. Purus faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Sit amet porttitor eget dolor. Orci eu lobortis elementum nibh tellus molestie. Tincidunt ornare massa eget egestas purus viverra accumsan. Urna cursus eget nunc scelerisque viverra mauris in. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Maecenas pharetra convallis posuere morbi leo urna molestie at.  Vitae purus faucibus ornare suspendisse sed. Morbi quis commodo odio aenean. Dolor sit amet consectetur adipiscing. Faucibus ornare suspendisse sed nisi lacus sed. Dolor purus non enim praesent elementum facilisis leo vel. Facilisis volutpat est velit egestas dui id ornare. Morbi non arcu risus quis varius. Eget duis at tellus at urna condimentum mattis. Diam in arcu cursus euismod quis viverra nibh cras pulvinar. Suspendisse interdum consectetur libero id faucibus. Et ultrices neque ornare aenean euismod elementum. Iaculis at erat pellentesque adipiscing commodo elit at.', 'Блог про кота', 'Блог про кота', 'DEU', 'Animals', 'Тварини', 'Животные', 'DEU ', '12.09.2020'),
(8, 'Mountains', 'Гори', 'Горы', 'DEU', 'https://cdn.mos.cms.futurecdn.net/ntFmJUZ8tw3ULD3tkBaAtf.jpg', 'https://i.insider.com/5ad4fd1bfacba823008b45e0?width=750&format=jpeg&auto=webp;https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbpTNYhpshgVq_dmiyoL_YmkQKkfeP3Ilqpw&usqp=CAU;https://i.insider.com/5ad4fd1bfacba823008b45e0?width=750&format=jpeg&auto=webp', 'Look at this beautiful mountains!!!Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien et ligula. Varius vel pharetra vel turpis nunc eget lorem dolor sed. Sit amet consectetur adipiscing elit pellentesque habitant morbi tristique. Ut enim blandit volutpat maecenas volutpat blandit aliquam. Aliquet enim tortor at auctor urna nunc id. Augue neque gravida in fermentum et. Consectetur adipiscing elit ut aliquam purus. Diam in arcu cursus euismod quis viverra nibh cras. Sed libero enim sed faucibus turpis in eu mi bibendum. Eget mauris pharetra et ultrices. Id aliquet risus feugiat in ante metus. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Elit ut aliquam purus sit amet luctus venenatis.  Duis convallis convallis tellus id interdum velit laoreet id donec. Magna etiam tempor orci eu lobortis elementum nibh tellus molestie. Ut morbi tincidunt augue interdum velit. Nisl nisi scelerisque eu ultrices vitae auctor. Purus faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Sit amet porttitor eget dolor. Orci eu lobortis elementum nibh tellus molestie. Tincidunt ornare massa eget egestas purus viverra accumsan. Urna cursus eget nunc scelerisque viverra mauris in. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Maecenas pharetra convallis posuere morbi leo urna molestie at.  Vitae purus faucibus ornare suspendisse sed. Morbi quis commodo odio aenean. Dolor sit amet consectetur adipiscing. Faucibus ornare suspendisse sed nisi lacus sed. Dolor purus non enim praesent elementum facilisis leo vel. Facilisis volutpat est velit egestas dui id ornare. Morbi non arcu risus quis varius. Eget duis at tellus at urna condimentum mattis. Diam in arcu cursus euismod quis viverra nibh cras pulvinar. Suspendisse interdum consectetur libero id faucibus. Et ultrices neque ornare aenean euismod elementum. Iaculis at erat pellentesque adipiscing commodo elit at.', 'Текст про гори', 'Текст про горы', 'DEU', 'Travel', 'Подорож', 'Путешествия', 'DEU', '25.07.2020');

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_ua` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `title_de` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `title`, `title_ua`, `title_ru`, `title_de`) VALUES
(15, 'Nuts', 'Горіхи', 'Орехи', ''),
(16, 'Molds', 'Молди', 'Молды', ''),
(17, 'Glaze', 'Глазур', 'Глазурь', ''),
(18, 'Chocolate', 'Шоколад', 'Шоколад', '');

-- --------------------------------------------------------

--
-- Структура таблиці `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_ua` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `title_de` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `collections`
--

INSERT INTO `collections` (`id`, `title`, `title_ua`, `title_ru`, `title_de`) VALUES
(2, 'Dark Style', 'Темний стиль', 'Темный стиль', 'Dunkler Stil'),
(3, 'Shoes Collection', 'Колекція Взуття', 'Коллекция Обуви', 'Schuhkollektion'),
(4, 'Summer Dresses', 'Літні сукні', 'Летние платья', 'Sommerkleider'),
(5, 'Business Blouses', 'Ділові блузки', 'Деловые блузки', 'Geschäftsblusen');

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
(66, 'Admin', 'admin@admin', 'Hello', 2),
(67, 'Contact', 'ff@ff.ff', 'Contact message', 1);

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
-- Структура таблиці `main_images`
--

CREATE TABLE `main_images` (
  `id` int(11) NOT NULL,
  `slider1_1` text NOT NULL,
  `slider1_2` text DEFAULT NULL,
  `slider2_1` text NOT NULL,
  `slider2_2` text DEFAULT NULL,
  `slider3_1` text NOT NULL,
  `slider3_2` text DEFAULT NULL,
  `cat_1` text NOT NULL,
  `cat_2` text NOT NULL,
  `cat_3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `main_images`
--

INSERT INTO `main_images` (`id`, `slider1_1`, `slider1_2`, `slider2_1`, `slider2_2`, `slider3_1`, `slider3_2`, `cat_1`, `cat_2`, `cat_3`) VALUES
(1, 'https://images-na.ssl-images-amazon.com/images/I/71LLBXKuFcL._AC_SL1500_.jpg', 'https://static.onecms.io/wp-content/uploads/sites/9/2017/05/pink-white-marshmallows-blog0517.jpg', 'https://images2.minutemediacdn.com/image/upload/c_crop,h_998,w_1500,x_0,y_1/v1555006794/shape/mentalfloss/istock-522735736.jpg?itok=X09xkrkm', 'https://chefcynthialouise.com/wp-content/uploads/2017/05/How-to-make-chocolate-at-home-1920x1080.jpg', 'https://i.ytimg.com/vi/-sTpC8_BXpM/maxresdefault.jpg', 'https://zira.uz/wp-content/uploads/2018/04/karamel-breadly-2.jpg', 'https://shtuki.ua/upload/iblock/0f4/24685_Nabor_orehov_Shtuki_Mix_nuts_Orehi_i_suhofrukty.jpg', 'https://lh3.googleusercontent.com/proxy/JLLfHRUyjMMvU5YLyzNd2KagXsYK4CHFc3pCBmkHm49O6k8SARpuIbfbyTu6OXRy7xcTDn06Cuq4v_2gh1_WvEqjtRs93_g4QFIYmLUIC_iA1Q', 'https://res.cloudinary.com/dnfncahxa/image/upload/v1609679218/95371398_537469453608806_1850535909132794270_n_mclaxc.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`) VALUES
(3, 'ukhanskiy@gmail.com'),
(4, 'vas-hrom@ukr.net');

-- --------------------------------------------------------

--
-- Структура таблиці `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `postcode` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `country`, `street`, `postcode`, `city`, `email`, `phone`, `message`) VALUES
(457, 109, 'Vasko', 'Khrom', 'Ukraine', 'Hrushevskyi street', '77220', 'ZZZ', 'ajara@gmail.com', '+380666329444', 'vavsavasqgqg');

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
(667, 457, 45, 1, '', ''),
(668, 457, 47, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(300) NOT NULL,
  `image` text NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` decimal(19,2) NOT NULL,
  `quantity` int(30) NOT NULL,
  `short_desc` text DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `coll_id` int(10) DEFAULT NULL,
  `xs` int(30) DEFAULT NULL,
  `s` int(30) DEFAULT NULL,
  `m` int(30) DEFAULT NULL,
  `l` int(30) DEFAULT NULL,
  `xl` int(30) DEFAULT NULL,
  `xxl` int(30) DEFAULT NULL,
  `title_ua` varchar(300) NOT NULL,
  `title_ru` varchar(300) NOT NULL,
  `title_de` varchar(300) DEFAULT NULL,
  `price_ua` decimal(19,2) DEFAULT NULL,
  `price_ru` decimal(19,2) DEFAULT NULL,
  `price_de` decimal(19,2) DEFAULT NULL,
  `description_ru` text NOT NULL,
  `description_de` text DEFAULT NULL,
  `description_ua` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`, `coll_id`, `xs`, `s`, `m`, `l`, `xl`, `xxl`, `title_ua`, `title_ru`, `title_de`, `price_ua`, `price_ru`, `price_de`, `description_ru`, `description_de`, `description_ua`) VALUES
(36, 'Milka Oreo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa4JSaMDmJbwbFUQgorLpq59SfVrKVUKDlRQ&usqp=CAU', '', 'Milk Chocolate with oreo Cookies', '140.00', 1231, '', 18, 2, 0, 0, 0, 0, 0, 0, 'Мілка Орео', 'Милка Орео', '', '0.00', '0.00', '0.00', 'Молочный шоколад з печеньем Орео', '', 'Молочний шоколад з печивом Орео'),
(43, 'Chocolate GRAND', 'https://res.cloudinary.com/dnfncahxa/image/upload/v1609689139/106495309_877927786033323_1704121522964570843_n_kjxmdm.jpg', '', 'Переважною особливістю шоколаду є високий блиск та неймовірно  гладке відчуття смаку, які досягаються інтенсивним подрібненням маси до тих пір, поки розмір часток твердої речовини не зменшиться приблизно до 16 мікрон.', '75.00', 88, '', 17, 2, 0, 0, 0, 0, 0, 0, 'Шоколад Grand', 'Шоколад Grand', '', '0.00', '0.00', '0.00', 'Шоколад Grand', '', 'Шоколад Grand'),
(45, 'Caramel', 'https://res.cloudinary.com/dnfncahxa/image/upload/v1609689133/124330017_120808629631564_5469205280205431826_n_qsiosn.jpg', '', 'Карамель', '60.00', 11, 'Карамель', 17, 2, 0, 0, 0, 0, 0, 0, 'Карамель', 'Карамель', '', '0.00', '0.00', '0.00', 'Caramel', '', 'Caramel'),
(47, 'Вирубки для пряників \"Сніжинки\"', 'https://res.cloudinary.com/dnfncahxa/image/upload/v1609689133/125876395_125463179356443_6095837421823048559_n_admvyb.jpg', 'https://res.cloudinary.com/dnfncahxa/image/upload/v1609689138/125518877_218935739652036_6585102673708585016_n_fouv9q.jpg;https://res.cloudinary.com/dnfncahxa/image/upload/v1609689135/125839502_385886055982082_9131762858282089506_n_etjdts.jpg;https://res.cloudinary.com/dnfncahxa/image/upload/v1609689133/125833031_188025929565818_8456805100406261193_n_j0uqdt.jpg', 'Вирубки для пряників \"Сніжинки\"', '25.00', 2, 'Вирубки для пряників \"Сніжинки\"', 16, 2, 0, 0, 0, 0, 0, 0, 'Вирубки для пряників \"Сніжинки\"', 'Вирубки для пряників \"Сніжинки\"', '', '0.00', '0.00', '0.00', 'Вирубки для пряників \"Сніжинки\"', '', 'Вирубки для пряників \"Сніжинки\"'),
(48, 'M&M\'s', 'https://assets.sainsburys-groceries.co.uk/gol/7073481/1/640x640.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPuBvtlsJQNh_qkNQh8pQ_1VC9tuh6Atsc6g&usqp=CAU;https://images.shopdutyfree.com/image/upload/c_pad,f_auto,h_350,w_350/v1586768407/030/001/001/4011100005884/4011100005884_1_default_default.jpg;https://res.cloudinary.com/hkiilvsot/image/upload/s--mHChC_gR--/c_limit,f_auto,h_1024,q_auto,w_1024/f9iuxmuhw0ihnjkpddxe', 'M&M\'s', '50.00', 10, 'M&M\'s', 18, 2, 0, 0, 0, 0, 0, 0, 'M&M\'s', 'M&M\'s', '', '0.00', '0.00', '0.00', 'M&M\'s', '', 'M&M\'s');

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
  `created` text DEFAULT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `password`, `email`, `first_name`, `last_name`, `role`, `created`, `phone`) VALUES
(1, '$2b$10$unOw8Q47MZdZhrKq8GLJFeNOPTIJOoKbHjtW8s09V9oh9r8K3jjXy', 'guest@guest', 'guest', 'guest', 555, '2020-08-25 10:03:28', '(123) 456-7890'),
(105, '$2b$10$jKa.B22lmcO2Tw64BxBqIuzAEcaPymKKOxk5lb7UrirCcDc0qXQoS', 'xxx@x', 'xxx', 'xxx', 777, '2020-08-06 14:39:44', 'xxxxxx'),
(106, '$2b$10$qidTnPjIMHCs1VF8az8WE.0X5TYN64xLkqg73wHQLZOQh2IBwQaDO', 'admin@admin', 'admin', 'admin', 777, '2020-08-10 16:03:57', '(123) 456-7890'),
(109, '$2b$10$d7.QOLhi9viBwfO7dl6fE.C6LA6wivZlyE1M8067wIcUzvZhKFIU6', 'ajara@gmail.com', 'Василь', 'Хромишин', 777, '2021-01-03 11:36:07', '+380666329444'),
(110, '$2b$10$OeuZAB6LXCaAjqfs2trmwuTot93cDnUDzsQV4fovu4fUa3rhrCKHu', 'vas-hrom@ukr.net', 'МММ', 'ЗЗЗ', 555, '2021-01-04 16:40:57', '+380666329444');

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
-- Індекси таблиці `collections`
--
ALTER TABLE `collections`
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
-- Індекси таблиці `main_images`
--
ALTER TABLE `main_images`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
  ADD KEY `order_d_to_prod` (`product_id`),
  ADD KEY `order_d_to_user` (`order_id`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_to_category` (`cat_id`),
  ADD KEY `prod_to_collection` (`coll_id`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблиці `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблиці `comment_categories`
--
ALTER TABLE `comment_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `main_images`
--
ALTER TABLE `main_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT для таблиці `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=669;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

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
  ADD CONSTRAINT `order_d_to_prod` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_d_to_user` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `prod_to_category` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `prod_to_collection` FOREIGN KEY (`coll_id`) REFERENCES `collections` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
