-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 16 2024 г., 06:38
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
-- База данных: `Fakhrutdinova_books_block`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Author`
--

CREATE TABLE `Author` (
  `Author_ID` int NOT NULL,
  `Name` varchar(155) NOT NULL,
  `Surname` varchar(155) NOT NULL,
  `Patronomyc` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Book`
--

CREATE TABLE `Book` (
  `Book_ID` int NOT NULL,
  `Title` varchar(155) NOT NULL,
  `Author_ID` int NOT NULL,
  `Publisher` varchar(155) NOT NULL,
  `Year_Published` year NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Comment`
--

CREATE TABLE `Comment` (
  `Comment_ID` int NOT NULL,
  `User_ID` int NOT NULL,
  `Post_ID` int NOT NULL,
  `Text` varchar(500) NOT NULL,
  `Comment_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Post`
--

CREATE TABLE `Post` (
  `Post_ID` int NOT NULL,
  `Title` varchar(155) NOT NULL,
  `Text` varchar(155) NOT NULL,
  `Date` varchar(155) NOT NULL,
  `User_ID` int NOT NULL,
  `Book_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `Role_ID` int NOT NULL,
  `name` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `User`
--

CREATE TABLE `User` (
  `User_ID` int NOT NULL,
  `Name` varchar(155) NOT NULL,
  `Surname` varchar(155) NOT NULL,
  `phoneNumber` varchar(155) NOT NULL,
  `password` varchar(155) NOT NULL,
  `login` varchar(155) NOT NULL,
  `Role_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Author`
--
ALTER TABLE `Author`
  ADD PRIMARY KEY (`Author_ID`);

--
-- Индексы таблицы `Book`
--
ALTER TABLE `Book`
  ADD PRIMARY KEY (`Book_ID`),
  ADD KEY `Author_ID` (`Author_ID`);

--
-- Индексы таблицы `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`Comment_ID`),
  ADD KEY `Post_ID` (`Post_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Индексы таблицы `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`Post_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Role_ID`);

--
-- Индексы таблицы `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `Role_ID` (`Role_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Author`
--
ALTER TABLE `Author`
  MODIFY `Author_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Book`
--
ALTER TABLE `Book`
  MODIFY `Book_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Comment`
--
ALTER TABLE `Comment`
  MODIFY `Comment_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Post`
--
ALTER TABLE `Post`
  MODIFY `Post_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `Role_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `User`
--
ALTER TABLE `User`
  MODIFY `User_ID` int NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Book`
--
ALTER TABLE `Book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`Author_ID`) REFERENCES `Author` (`Author_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`Post_ID`) REFERENCES `Post` (`Post_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Post`
--
ALTER TABLE `Post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`Book_ID`) REFERENCES `Book` (`Book_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`Role_ID`) REFERENCES `role` (`Role_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


ChatGPT (беседа № 412):

INSERT INTO Author (Author_ID, Name, Surname, Patronomyc)
VALUES (1, 'John', 'Doe', 'Smith'),
       (2, 'Jane', 'Smith', 'Doe'),
       (3, 'Michael', 'Johnson', 'Brown');

INSERT INTO Book (Book_ID, Title, Author_ID, Publisher, Year_Published, Description)
VALUES (1, 'Book 1', 1, 'Publisher 1', 2020, 'Description 1'),
       (2, 'Book 2', 2, 'Publisher 2', 2019, 'Description 2'),
       (3, 'Book 3', 3, 'Publisher 3', 2018, 'Description 3');

INSERT INTO Post (Post_ID, Title, Text, Date, User_ID, Book_ID, photo)
VALUES (1, 'Post 1', 'Text 1', '2021-01-01', 1, 1, '1984.jpg'),
       (2, 'Post 2', 'Text 2', '2021-01-02', 2, 2, 'отделенные.jpg'),
       (3, 'Post 3', 'Text 3', '2021-01-03', 3, 3, '1984.jpg');

INSERT INTO role (Role_ID, name)
VALUES (1, 'Admin'),
       (2, 'User'),
       (3, 'Guest');

INSERT INTO User (User_ID, Name, Surname, phoneNumber, password, login, Role_ID)
VALUES (1, 'John', 'Doe', '1234567890', 'password1', 'john123', 1),
       (2, 'Jane', 'Smith', '0987654321', 'password2', 'jane456', 2),
       (3, 'Michael', 'Johnson', '9876543210', 'password3', 'michael789', 3);

1063 из 16384