-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 26 2024 г., 08:44
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `new`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Comment`
--

CREATE TABLE `Comment` (
  `Comment_ID` int NOT NULL,
  `User_ID` int NOT NULL,
  `Post_ID` int NOT NULL,
  `Text` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Comment_Date` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Comment`
--

INSERT INTO `Comment` (`Comment_ID`, `User_ID`, `Post_ID`, `Text`, `Comment_Date`, `status`) VALUES
(2, 3, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2024-01-18 10:39:43', 'approved'),
(3, 3, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2024-01-18 10:39:43', 'approved'),
(5, 1, 2, 'list-group-item list-group-item-action  align-items-start\"', '2024-01-18 10:55:26', 'approved'),
(6, 4, 1, 'tyvjet', '2024-01-19 16:49:56', 'approved'),
(8, 4, 2, 'eeeweeeeeeeeeeee', '2024-01-19 16:55:32', 'approved'),
(14, 4, 2, 'AEQ5RTRGC ERTG E', '2024-01-19 16:58:55', 'processing'),
(15, 7, 1, 'dfbSBF', '2024-01-23 06:47:17', 'processing'),
(17, 7, 2, 'ss', '2024-01-23 07:16:29', 'processing'),
(18, 7, 2, 'ss', '2024-01-23 07:16:35', 'processing'),
(20, 8, 1, 'asasv', '2024-01-23 07:19:53', 'approved'),
(21, 9, 2, 'укпУК', '2024-01-23 08:18:20', 'approved'),
(22, 9, 2, 'укпУК', '2024-01-23 08:18:24', 'processing');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`Comment_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Comment`
--
ALTER TABLE `Comment`
  MODIFY `Comment_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
