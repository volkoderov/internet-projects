-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 06 2019 г., 21:17
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_internet_projects`
--
CREATE DATABASE IF NOT EXISTS `test_internet_projects` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test_internet_projects`;

-- --------------------------------------------------------

--
-- Структура таблицы `dob`
--

CREATE TABLE `dob` (
  `id` int(11) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dob`
--

INSERT INTO `dob` (`id`, `dob`) VALUES
(1, '2019-02-12'),
(2, '2019-02-15'),
(3, '2019-02-19'),
(4, '2019-02-13'),
(5, '2018-07-06'),
(6, '2018-07-19'),
(7, '2018-06-14'),
(8, '2018-06-15'),
(9, '2018-12-05');

-- --------------------------------------------------------

--
-- Структура таблицы `tel`
--

CREATE TABLE `tel` (
  `id` int(11) NOT NULL,
  `tel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tel`
--

INSERT INTO `tel` (`id`, `tel`) VALUES
(1, '79823304050'),
(2, '79824405060'),
(3, '79825506070'),
(4, '79826607080'),
(5, '79827708090'),
(6, '79828809000'),
(7, '79829900010'),
(8, '79820001020');

-- --------------------------------------------------------

--
-- Структура таблицы `username`
--

CREATE TABLE `username` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `username`
--

INSERT INTO `username` (`id`, `name`, `surname`) VALUES
(1, 'Иван', 'Иванов'),
(2, 'Петр', 'Петров'),
(3, 'Сидор', 'Сидоров'),
(4, 'Сергей', 'Сергеев'),
(5, 'Владимир', 'Владимиров'),
(6, 'Игорь', 'Кузнецов'),
(7, 'Евгений', 'Соколов'),
(8, 'Александр', 'Попов'),
(9, 'Анатлий', 'Лебедев'),
(10, 'Матвей', 'Волкодеров');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dob`
--
ALTER TABLE `dob`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `tel`
--
ALTER TABLE `tel`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `username`
--
ALTER TABLE `username`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tel`
--
ALTER TABLE `tel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `dob`
--
ALTER TABLE `dob`
  ADD CONSTRAINT `dob_ibfk_1` FOREIGN KEY (`id`) REFERENCES `username` (`id`);

--
-- Ограничения внешнего ключа таблицы `tel`
--
ALTER TABLE `tel`
  ADD CONSTRAINT `tel_ibfk_1` FOREIGN KEY (`id`) REFERENCES `username` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
