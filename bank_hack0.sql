-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 16 2021 г., 15:44
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bank_hack0`
--

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id_client` int NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `id_document` int NOT NULL,
  `id_credit` int NOT NULL,
  `id_income` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id_client`, `Phone`, `id_document`, `id_credit`, `id_income`) VALUES
(1, '+79613063139', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `credit`
--

CREATE TABLE `credit` (
  `id_credit` int NOT NULL,
  `Sum_credit` decimal(9,3) NOT NULL,
  `Interest rate` int NOT NULL,
  `Target_credit` varchar(255) NOT NULL,
  `Date_of_issue` date NOT NULL,
  `Term_credit` varchar(11) NOT NULL,
  `Early_repayment` tinyint(1) NOT NULL,
  `id_currency` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `credit`
--

INSERT INTO `credit` (`id_credit`, `Sum_credit`, `Interest rate`, `Target_credit`, `Date_of_issue`, `Term_credit`, `Early_repayment`, `id_currency`) VALUES
(1, '123300.000', 8, 'Автомобиль', '2021-03-16', '12', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `id_currency` int NOT NULL,
  `Currency` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id_currency`, `Currency`) VALUES
(1, 'usd'),
(2, 'eur'),
(3, 'tng'),
(4, 'usd'),
(5, 'krn');

-- --------------------------------------------------------

--
-- Структура таблицы `document`
--

CREATE TABLE `document` (
  `id_document` int NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `SecondName` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `Doc_type` varchar(11) NOT NULL,
  `Document_number` int NOT NULL,
  `Document_series` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `document`
--

INSERT INTO `document` (`id_document`, `LastName`, `FirstName`, `SecondName`, `Adress`, `Doc_type`, `Document_number`, `Document_series`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', 'Г. Ростов-на-Дону, ул. Советская 11/3a', 'Паспорт РФ', 23455675, 123456);

-- --------------------------------------------------------

--
-- Структура таблицы `income`
--

CREATE TABLE `income` (
  `id_income` int NOT NULL,
  `Income` decimal(11,3) NOT NULL,
  `id_currency` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `income`
--

INSERT INTO `income` (`id_income`, `Income`, `id_currency`) VALUES
(1, '30000.000', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `id_document` (`id_document`),
  ADD KEY `id_credit` (`id_credit`),
  ADD KEY `id_income` (`id_income`);

--
-- Индексы таблицы `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id_credit`),
  ADD KEY `id_currency` (`id_currency`);

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id_currency`);

--
-- Индексы таблицы `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id_document`);

--
-- Индексы таблицы `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id_income`),
  ADD KEY `id_currency` (`id_currency`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `credit`
--
ALTER TABLE `credit`
  MODIFY `id_credit` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `id_currency` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `document`
--
ALTER TABLE `document`
  MODIFY `id_document` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `income`
--
ALTER TABLE `income`
  MODIFY `id_income` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
