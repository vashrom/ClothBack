-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Сер 21 2020 р., 17:13
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
  `title_de` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `title`, `title_ua`, `title_ru`, `title_de`) VALUES
(1, 'Shoes', 'Взуття', 'Обувь', 'Schuhe'),
(4, 'Shirts', 'Сорочки', 'Рубашки', 'Hemden'),
(6, 'Dresses', 'Сукні', 'Платья', 'Kleider'),
(9, 'Pants', 'Штани', 'Брюки', 'Hose');

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
(67, 'Contact', 'ff@ff.ff', 'Contact message', 1),
(68, 'Link', 'Test@ss', 'works', 1);

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
(1, 'https://static.massimodutti.net/3/cms/assets/uploads/nuevoWomanX_6.jpg?imwidth=1300', 'https://static.massimodutti.net/3/cms/assets/uploads/coleccionX_7.jpg?imwidth=1300', 'https://thegoldenbun.com/wp-content/uploads/2020/01/Dotted-chiffon-blouse-metallic-skirt-Pura-Lopez-boots-www.thegoldenbun.com-header.jpg', 'https://achiclittlehoney.files.wordpress.com/2017/04/header.jpg?w=1350&h=541&crop=1', 'https://libautech.com/wp-content/uploads/2020/05/Capturing-Perfect-Product-Photography-for-Shopify-Store-1300x558.jpg', 'https://i8.amplience.net/i/hotter/comfort-concept-header-chase?qlt=80', 'https://i.pinimg.com/564x/26/25/68/2625687b5cbfddb483e036e0efc25fb2.jpg', 'https://i.pinimg.com/564x/cb/f7/88/cbf788cf59de33192cd49148d00f3b01.jpg', 'https://i.pinimg.com/564x/a2/60/9e/a2609e631d9a1288d6e193ffc674b28e.jpg');

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
  `user_id` int(11) NOT NULL,
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
(375, 1, 'Vasko', '12231', 'Ukraine', 'Ghryshevskoho', '77220', 'Tysiv', 'vas-hrom@ukr.net', '(123) 456-7890', 'WoW');

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
(565, 375, 32, 1, NULL, NULL),
(566, 375, 30, 1, NULL, NULL),
(567, 375, 31, 1, '', '');

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
  `coll_id` int(10) DEFAULT NULL,
  `xs` int(30) DEFAULT NULL,
  `s` int(30) DEFAULT NULL,
  `m` int(30) DEFAULT NULL,
  `l` int(30) DEFAULT NULL,
  `xl` int(30) DEFAULT NULL,
  `xxl` int(30) DEFAULT NULL,
  `title_ua` varchar(50) NOT NULL,
  `title_ru` varchar(50) NOT NULL,
  `title_de` varchar(50) NOT NULL,
  `price_ua` decimal(19,2) NOT NULL,
  `price_ru` decimal(19,2) NOT NULL,
  `price_de` decimal(19,2) NOT NULL,
  `description_ru` text NOT NULL,
  `description_de` text NOT NULL,
  `description_ua` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`, `coll_id`, `xs`, `s`, `m`, `l`, `xl`, `xxl`, `title_ua`, `title_ru`, `title_de`, `price_ua`, `price_ru`, `price_de`, `description_ru`, `description_de`, `description_ua`) VALUES
(25, 'Printed Dress', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6620/858/518/6620858518_1_1_16.jpg?t=1593594959686&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6620/858/518/6620858518_2_4_16.jpg?t=1593594959686&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6620/858/518/6620858518_2_1_16.jpg?t=1593594959686&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6620/858/518/6620858518_2_3_16.jpg?t=1593594959686&impolicy=massimodutti-itxmedium&imwidth=600', 'Опис', '5550.00', 23, 'Short Description', 6, 4, 4, 3, 4, 4, 4, 4, 'Плаття з прінтом і волан', 'Платье с принтом', 'Deu Name', '5550.00', '10250.00', '109.99', 'Описание', 'Opys', 'Опис'),
(26, 'Black dress', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6695/848/800/6695848800_1_1_16.jpg?t=1595523532982&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6695/848/800/6695848800_2_7_16.jpg?t=1595523532982&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6695/848/800/6695848800_2_2_16.jpg?t=1595523532982&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6695/848/800/6695848800_2_1_16.jpg?t=1595523532982&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6695/848/800/6695848800_2_5_16.jpg?t=1595523532982&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6695/848/800/6695848800_2_3_16.jpg?t=1595523532982&impolicy=massimodutti-itxmedium&imwidth=600', 'Description', '6999.00', 14, 'Short Description', 6, 2, 3, 3, 3, 2, 3, 0, 'Чорне Плаття', 'Чёрное платье', 'Deu title', '10000.00', '20000.00', '7000.00', 'Описание', 'Opys', 'Опис'),
(29, 'White Shirt-Dress', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6622/967/251/6622967251_2_2_16.jpg?t=1595597498292&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6622/967/251/6622967251_2_5_16.jpg?t=1595597498292&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6622/967/251/6622967251_2_6_16.jpg?t=1595597498292&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6622/967/251/6622967251_2_7_16.jpg?t=1595597498292&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6622/967/251/6622967251_2_1_16.jpg?t=1595597498292&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6622/967/251/6622967251_2_3_16.jpg?t=1595597498292&impolicy=massimodutti-itxmedium&imwidth=600', 'Description', '499.00', 9, 'short desc', 4, 4, 2, 0, 2, 2, 1, 2, 'Біла сорочка', 'Белая рубашка', 'Deu title', '6999.00', '12999.00', '4999.00', 'описание', 'opys', 'опис'),
(30, 'Dark-Blue dress', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6685/786/800/6685786800_2_1_16.jpg?t=1596447472142&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/6685/786/800/6685786800_2_2_16.jpg?t=1596447472142&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6685/786/800/6685786800_6_1_16.jpg?t=1596447472142&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6685/786/800/6685786800_2_4_16.jpg?t=1596447472142&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/6685/786/800/6685786800_1_1_16.jpg?t=1596447472142&impolicy=massimodutti-itxmedium&imwidth=600', 'Опис', '4999.00', 3, 'Desc', 6, 2, 0, 0, 1, 0, 0, 2, 'Темно-Синє плаття', 'Темно-Синее платье', 'Deu title', '4999.00', '8880.00', '4449.00', 'Описание', 'Opys', 'Опис'),
(31, 'Jacquard blouse', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5139/586/500/5139586500_1_1_16.jpg?t=1596646171486&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5139/586/500/5139586500_2_1_16.jpg?t=1596646171486&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5139/586/500/5139586500_2_2_16.jpg?t=1596646171486&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5139/586/500/5139586500_2_3_16.jpg?t=1596646171486&impolicy=massimodutti-itxmedium&imwidth=600', 'Description', '500.00', 12, 'edsc shrt', 4, 5, 2, 2, 2, 2, 2, 2, 'Жакардова блуза', 'Жаккардовая блуза', 'Deu ', '5779.00', '12550.00', '279.99', 'Описание', 'Opys', 'Опис'),
(32, 'Blouse with tie detail', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5112/830/615/5112830615_2_5_16.jpg?t=1596649366791&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/0/1/p/5112/830/615/5112830615_2_3_16.jpg?t=1596649366791&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5112/830/615/5112830615_2_1_16.jpg?t=1596649366791&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/0/1/p/5112/830/615/5112830615_2_4_16.jpg?t=1596649366791&impolicy=massimodutti-itxmedium&imwidth=600', 'Description', '8999.00', 10, 'desc', 4, 5, 2, 2, 0, 2, 2, 2, 'Блуза з бантом', 'Блуза з бантом', 'Deu title', '8559.00', '16999.00', '299.99', 'описание', 'opys', 'опис'),
(33, 'Brown Split', 'https://static.massimodutti.net/3/photos/2020/I/1/1/p/1160/650/700/01/1160650700_1_1_16.jpg?t=1596446724269&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/1/1/p/1160/650/700/01/1160650700_2_1_16.jpg?t=1596446724269&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/1/1/p/1160/650/700/01/1160650700_2_2_16.jpg?t=1596446724269&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/1/1/p/1160/650/700/01/1160650700_2_3_16.jpg?t=1596446724269&impolicy=massimodutti-itxmedium&imwidth=600', 'Description', '889.00', 0, 'desc', 1, 3, 0, 0, 0, 0, 0, 0, 'Коричневі Ботільйони', 'Коричнивые Ботильйоны', 'Deu title', '8899.00', '1599.00', '599.00', 'Описание', 'Opys', 'Опис'),
(34, 'Taupe Split Suede', 'https://static.massimodutti.net/3/photos/2020/I/1/1/p/1156/650/712/01/1156650712_1_1_16.jpg?t=1595504411352&impolicy=massimodutti-itxmedium&imwidth=600', 'https://static.massimodutti.net/3/photos/2020/I/1/1/p/1156/650/712/01/1156650712_2_1_16.jpg?t=1595504411352&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/1/1/p/1156/650/712/01/1156650712_2_2_16.jpg?t=1595504411352&impolicy=massimodutti-itxmedium&imwidth=600;https://static.massimodutti.net/3/photos/2020/I/1/1/p/1156/650/712/01/1156650712_2_3_16.jpg?t=1595504411352&impolicy=massimodutti-itxmedium&imwidth=600', 'Description', '140.00', 9, 'desc', 1, 4, 0, 2, 2, 2, 2, 1, 'Сірі чоботи із замші', 'Серые Ботинки', 'Deu title', '4999.00', '12999.00', '23555.00', 'Описание', 'Opys', 'Опис');

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
(1, '$2b$10$0v13O3nZ7vAU0CjlN6mJneayjBAuAPZzO6EWxxTy1ZY0QN34JRMg.', 'guest@gmail.om', 'Guest', 'Guest', 111, '2020-07-27 10:18:37', ''),
(24, '$2b$10$y/GG/9zCjt7fk6uerp9Ffu1/8LLeDmMXBS2BOP1FfizRAbwD3CCGm', 'admin@gmail.com', 'Buzz', 'Earth', 555, '2020-07-08 21:40:05', ''),
(25, '$2b$10$biutfuI2QMzU/VaIe9zwhugoiR.dIPWuXoAkj22FDsdOtsCBV8O62', 'mmm@mmm', 'mmm', 'mmm', 555, '2020-07-08 21:42:39', ''),
(27, '$2b$10$3SdKyj5AWzi6Ul.OJr7KSeW/Z6rd0.5r6WtGEYnruV4u/FyNOSaIq', 'ff@ff.ffx', 'Alfach', 'Omegach', 777, '2021-07-09 09:17:22', ''),
(28, '$2b$10$J6mBS4O4ITmQegfmt/Z9gOqMVOvRzSjrlV.ke5QWyQBnWZcTWmJra', 'aaa@aaa', 'aaa', 'aaa', 555, '2020-07-10 12:59:17', ''),
(29, '$2b$10$nVxbGrnw4mBGQ1ZIMV92feR9b3gZmMJuPnJRNvvpCmVup5bCZ7/xm', 'zzz@zzz', 'zzz', 'zzz', 555, '2020-07-20 13:29:47', ''),
(30, '$2b$10$qYVDfNV0P6hFvWYve.OggO4nvc6PuVCBA4L3O5ASl4gZwZYgj.PHe', 'xxx@xxx', 'xxx', 'xxx', 777, '2020-07-22 18:53:48', '+380660277000'),
(32, '$2b$10$bUqwlsVYE1PCI3J5LG7xQuVhYwKOWFlr2aiPlKkkBF84kqGEQ5HNO', 's@s', 's', 's', 555, '2020-08-06 10:07:00', ''),
(101, '$2b$10$Du.V.wMWK4Ahytf9QEIDue30P642/hJFjh6qs1n4A7xiQtQARzL/2', 'B@B', 'B', 'B', 555, '2020-08-06 14:02:06', 'B'),
(102, '$2b$10$.hxPIlL93bAImvQHUSJ7X.bYf20XQ0NynIgiAIOMBVBKMycFwAsSm', 'ff@ff.ff', 'BZ', 'BZ', 555, '2020-08-06 14:03:08', ''),
(103, '$2b$10$uqJSUVi6bLVej/Sb1nWCpeBqfku30oO.NeZ.fOzy1HUdt8vqerWTu', 'safsfasfasfs@asfas', 'Prrerererer', 'fsfafaf', 555, '2020-08-06 14:29:51', 'ff1wf1wf1f1wfwf1'),
(104, '$2b$10$Pn1wTbsNe1NU/c.BDrytaeUU8KQL.26mpXkbIyM3Sq9JcnbgOOJm2', 'HH@HH', 'HHH', 'HHH', 555, '2020-08-06 14:34:27', 'HHHHHHH'),
(105, '$2b$10$jKa.B22lmcO2Tw64BxBqIuzAEcaPymKKOxk5lb7UrirCcDc0qXQoS', 'xxx@x', 'xxx', 'xxx', 777, '2020-08-06 14:39:44', 'xxxxxx'),
(106, '$2b$10$qidTnPjIMHCs1VF8az8WE.0X5TYN64xLkqg73wHQLZOQh2IBwQaDO', 'admin@admin', 'admin', 'admin', 777, '2020-08-10 16:03:57', '(123) 456-7890');

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
  ADD KEY `order_d_to_prod` (`product_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT для таблиці `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=579;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

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
  ADD CONSTRAINT `prod_to_category` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `prod_to_collection` FOREIGN KEY (`coll_id`) REFERENCES `collections` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
