-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 02 2022 г., 20:56
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `site`
--
CREATE DATABASE IF NOT EXISTS `site` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `site`;

-- --------------------------------------------------------

--
-- Структура таблицы `pictures`
--

CREATE TABLE `pictures` (
  `ID_Picture` int(11) NOT NULL,
  `Link` varchar(150) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `ALT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pictures`
--

INSERT INTO `pictures` (`ID_Picture`, `Link`, `Title`, `ALT`) VALUES
(1, 'Кепка_белая1.webp', 'Кепка белая 1', 'Кепка белая 1'),
(2, 'Кепка_белая2.webp', 'Кепка белая 2', 'Кепка белая 2'),
(3, 'Куртка_желтая1.webp', 'Куртка желтая 1', 'Куртка желтая 1'),
(4, 'Куртка_желтая2.webp', 'Куртка желтая 2', 'Куртка желтая 2'),
(5, 'Куртка_желтая3.webp', 'Куртка желтая 3', 'Куртка желтая 3'),
(6, 'Куртка_синяя1.webp', 'Куртка синяя 1', 'Куртка синяя 1'),
(7, 'Куртка_синяя2.webp', 'Куртка синяя 2', 'Куртка синяя 2'),
(8, 'Куртка_синяя3.webp', 'Куртка синяя 3', 'Куртка синяя 3'),
(9, 'Куртка_черная1.webp', 'Куртка черная 1', 'Куртка черная 1'),
(10, 'Куртка_черная2.webp', 'Куртка черная 2', 'Куртка черная 2'),
(11, 'Носки_белые1.webp', 'Носки белые 1', 'Носки белые 1'),
(12, 'Носки_белые2.webp', 'Носки белые 2', 'Носки белые 2'),
(13, 'Носки_зеленые1.webp', 'Носки зеленые 1', 'Носки зеленые 1'),
(14, 'Носки_зеленые2.webp', 'Носки зеленые 2', 'Носки зеленые 2'),
(15, 'Носки_фиолетовые1.webp', 'Носки фиолетовые 1', 'Носки фиолетовые 1'),
(16, 'Носки_фиолетовые2.webp', 'Носки фиолетовые 2', 'Носки фиолетовые 2'),
(17, 'Носки_черные1.webp', 'Носки черные 1', 'Носки черные 1'),
(18, 'Носки_черные2.webp', 'Носки черные 2', 'Носки черные 2'),
(19, 'Рубашка_белая1.webp', 'Рубашка белая 1', 'Рубашка белая 1'),
(20, 'Рубашка_белая2.webp', 'Рубашка белая 2', 'Рубашка белая 2'),
(21, 'Рубашка_белая3.webp', 'Рубашка белая 3', 'Рубашка белая 3'),
(22, 'Рубашка_синяя1.webp', 'Рубашка синяя 1', 'Рубашка синяя 1'),
(23, 'Рубашка_синяя2.webp', 'Рубашка синяя 2', 'Рубашка синяя 2'),
(24, 'Рубашка_синяя3.webp', 'Рубашка синяя 3', 'Рубашка синяя 3'),
(25, 'Рубашка_черная1.webp', 'Рубашка черная 1', 'Рубашка черная 1'),
(26, 'Рубашка_черная2.webp', 'Рубашка черная 2', 'Рубашка черная 2'),
(27, 'Рубашка_черная3.webp', 'Рубашка черная 3', 'Рубашка черная 3'),
(28, 'Штаны_красные1.webp', 'Штаны красные 1', 'Штаны красные 1'),
(29, 'Штаны_красные2.webp', 'Штаны красные 2', 'Штаны красные 2'),
(30, 'Штаны_красные3.webp', 'Штаны красные 3', 'Штаны красные 3'),
(31, 'Штаны_черные1.webp', 'Штаны черные 1', 'Штаны черные 1'),
(32, 'Штаны_черные2.webp', 'Штаны черные 2', 'Штаны черные 2'),
(33, 'Штаны_черные3.webp', 'Штаны черные 3', 'Штаны черные 3'),
(34, 'Кепка_синяя1.webp', 'Кепка синяя 1', 'Кепка синяя 1'),
(35, 'Кепка_синяя2.webp', 'Кепка синяя 2', 'Кепка синяя 2'),
(36, 'Кепка_черная1.webp', 'Кепка черная 1', 'Кепка черная 1'),
(37, 'Кепка_черная2.webp', 'Кепка черная 2', 'Кепка черная 2'),
(38, 'Шарф_синий1.webp', 'Шарф синий 1', 'Шарф синий 1'),
(39, 'Шарф_синий2.webp', 'Шарф синий 2', 'Шарф синий 2'),
(40, 'Шарф_черный1.webp', 'Шарф черный 1', 'Шарф черный 1'),
(41, 'Шарф_черный2.webp', 'Шарф черный 2', 'Шарф черный 2');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID_Products` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Characteristics` varchar(200) DEFAULT NULL,
  `Description` varchar(400) DEFAULT NULL,
  `Price` int(20) NOT NULL,
  `Discont_Price` int(20) NOT NULL,
  `Promo_Code_Price` int(20) NOT NULL,
  `Main_Picture` int(11) DEFAULT NULL,
  `Main_Sections` int(11) NOT NULL,
  `Amount` int(20) DEFAULT 1,
  `ON_OF` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Вкл.-Выкл.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID_Products`, `Name`, `Characteristics`, `Description`, `Price`, `Discont_Price`, `Promo_Code_Price`, `Main_Picture`, `Main_Sections`, `Amount`, `ON_OF`) VALUES
(1, 'Куртка желтая', '<br> -Цвет: желтый;   <br>                               \r\n-Материал: хлопок; <br>\r\n-Размер: S. <br>', 'Хорошая желтая куртка', 5000, 4500, 4000, 3, 3, 2, 1),
(2, 'Куртка черная', '<br> -Цвет: черный; <br>\r\n-Материал: хлопок; <br>\r\n-Размер: M.', 'Хорошая черная куртка', 3000, 3500, 3000, 9, 3, 4, 1),
(3, 'Куртка синяя', '<br> -Цвет: синий; <br>\r\n-Материал: хлопок; <br>\r\n-Размер: S. ', 'Хорошая синяя куртка', 3000, 2500, 2000, 6, 3, 1, 1),
(4, 'Штаны черные', '<br> -Цвет: черный; <br>\r\n-Материал: синтетика; <br>\r\n-Размер: L.', 'Хорошие черные штаны', 4500, 4000, 3500, 31, 6, 3, 1),
(5, 'Штаны красные', '<br> -Цвет: красный; <br>\r\n-Материал: синтетика; <br>\r\n-Размер: XL.', 'Хорошие красные штаны', 2000, 1500, 1000, 28, 6, 1, 1),
(6, 'Рубашка черная', '<br> -Цвет: черный; <br>\r\n-Материал: синтетика; <br>\r\n-Размер: M.', 'Хорошая черная рубашка', 1000, 800, 500, 25, 7, 3, 1),
(7, 'Рубашка белая', '<br> -Цвет: белый; <br>\r\n-Материал: синтетика; <br>\r\n-Размер: L.', 'Хорошая белая рубашка', 1000, 800, 500, 19, 7, 1, 1),
(8, 'Рубашка синяя', '<br> -Цвет: синий; <br>\r\n-Материал: синтетика; <br>\r\n-Размер: XL.', 'Хорошая синяя рубашка', 1500, 1300, 1100, 22, 7, 5, 1),
(9, 'Носки черные', '<br> -Цвет: черный; <br>\r\n-Материал: хлопок; <br>\r\n-Размер: M.', 'Хорошие черные носки', 400, 300, 200, 17, 8, 1, 1),
(10, 'Носки белые', '<br> -Цвет: белый; <br>\r\n-Материал: хлопок; <br>\r\n-Размер: S.', 'Хорошие белые носки', 200, 150, 100, 11, 8, 3, 1),
(11, 'Носки фиолетовые', '<br> -Цвет: фиолетовые; <br>\r\n-Материал: синтетика; <br>\r\n-Размер: L.\r\n', 'Хорошие фиолетовые носки', 300, 250, 200, 15, 8, 3, 1),
(12, 'Носки зеленые', '<br> -Цвет: зеленый; <br>\r\n-Материал: хлопок; <br>\r\n-Размер: S.', 'Хорошие зеленые носки', 100, 80, 50, 13, 8, 4, 1),
(13, 'Кепка белая', '<br> -Цвет: белый; <br>\r\n-Материал: синтетика; <br>\r\n-Размер: M.', 'Хорошая белая кепка', 600, 400, 300, 1, 9, 1, 1),
(14, 'Кепка черная', '<br> -Цвет: черный; <br>\r\n-Материал: хлопок; <br>\r\n-Размер: L.', 'Хорошая черная кепка', 1000, 800, 500, 36, 9, 1, 1),
(15, 'Кепка синяя', '<br> -Цвет: синий; <br>\r\n-Материал: синтетика; <br>\r\n-Размер: L\r\n', 'Хорошая синяя кепка', 3000, 2500, 2000, 34, 9, 3, 1),
(16, 'Шарф черный', '<br> -Цвет: черный; <br>\r\n-Материал: хлопок;\r\n', 'Хороший черный шарф', 1000, 800, 500, 40, 10, 1, 1),
(17, 'Шарф синий', '<br> -Цвет: синий; <br>\r\n-Материал: синтетика;\r\n', 'Хороший синий шарф', 600, 400, 300, 38, 10, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `productspictures`
--

CREATE TABLE `productspictures` (
  `ID_Products` int(11) NOT NULL,
  `ID_Picture` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `productspictures`
--

INSERT INTO `productspictures` (`ID_Products`, `ID_Picture`) VALUES
(1, 3),
(1, 4),
(1, 5),
(2, 9),
(2, 10),
(3, 6),
(3, 7),
(3, 8),
(4, 31),
(4, 32),
(4, 33),
(5, 28),
(5, 29),
(5, 30),
(6, 25),
(6, 26),
(6, 27),
(7, 19),
(7, 20),
(7, 21),
(8, 22),
(8, 23),
(8, 24),
(9, 17),
(9, 18),
(10, 11),
(10, 12),
(11, 15),
(11, 16),
(12, 13),
(12, 14),
(13, 1),
(13, 2),
(14, 36),
(14, 37),
(15, 34),
(15, 35),
(16, 40),
(16, 41),
(17, 38),
(17, 39);

-- --------------------------------------------------------

--
-- Структура таблицы `productssections`
--

CREATE TABLE `productssections` (
  `ID_Products` int(11) NOT NULL,
  `ID_Section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `productssections`
--

INSERT INTO `productssections` (`ID_Products`, `ID_Section`) VALUES
(1, 3),
(1, 1),
(2, 3),
(2, 1),
(3, 1),
(3, 3),
(4, 1),
(4, 6),
(5, 1),
(5, 6),
(6, 1),
(6, 7),
(7, 1),
(7, 7),
(8, 1),
(8, 7),
(9, 2),
(9, 8),
(10, 2),
(10, 8),
(11, 2),
(11, 8),
(12, 2),
(12, 8),
(13, 1),
(13, 9),
(14, 1),
(14, 9),
(15, 1),
(15, 9),
(17, 1),
(17, 10),
(16, 1),
(16, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `ID_Section` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`ID_Section`, `Name`, `Description`) VALUES
(1, 'Верхняя одежда', 'Здесь вы найдете верхнюю одежду'),
(2, 'Нижнее белье', 'Здесь вы найдете нижнее белье на любой вкус'),
(3, 'Куртки', 'Здесь можно просмотреть доступные куртки'),
(6, 'Штаны', 'Здесь можно увидеть штаны'),
(7, 'Рубашки', 'Здесь собраны все рубашки'),
(8, 'Носки', 'Здесь можно просмотреть носки'),
(9, 'Кепки', 'Здесь собраны кепки'),
(10, 'Шарфы', 'Здесь вы увидите шарфы');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`ID_Picture`),
  ADD UNIQUE KEY `Link` (`Link`),
  ADD UNIQUE KEY `ID_Picture` (`ID_Picture`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID_Products`),
  ADD UNIQUE KEY `ID_Products` (`ID_Products`),
  ADD KEY `products_ibfk_1` (`Main_Sections`),
  ADD KEY `Main_Picture` (`Main_Picture`);

--
-- Индексы таблицы `productspictures`
--
ALTER TABLE `productspictures`
  ADD KEY `productspictures_ibfk_1` (`ID_Products`),
  ADD KEY `productspictures_ibfk_2` (`ID_Picture`);

--
-- Индексы таблицы `productssections`
--
ALTER TABLE `productssections`
  ADD KEY `productssections_ibfk_1` (`ID_Products`),
  ADD KEY `productssections_ibfk_2` (`ID_Section`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`ID_Section`),
  ADD UNIQUE KEY `ID_Section` (`ID_Section`),
  ADD UNIQUE KEY `Section_Name` (`Name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pictures`
--
ALTER TABLE `pictures`
  MODIFY `ID_Picture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `ID_Products` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `ID_Section` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`Main_Sections`) REFERENCES `sections` (`ID_Section`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`Main_Picture`) REFERENCES `pictures` (`ID_Picture`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `productspictures`
--
ALTER TABLE `productspictures`
  ADD CONSTRAINT `productspictures_ibfk_1` FOREIGN KEY (`ID_Products`) REFERENCES `products` (`ID_Products`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productspictures_ibfk_2` FOREIGN KEY (`ID_Picture`) REFERENCES `pictures` (`ID_Picture`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `productssections`
--
ALTER TABLE `productssections`
  ADD CONSTRAINT `productssections_ibfk_1` FOREIGN KEY (`ID_Products`) REFERENCES `products` (`ID_Products`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productssections_ibfk_2` FOREIGN KEY (`ID_Section`) REFERENCES `sections` (`ID_Section`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
