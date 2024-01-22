-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 23 2024 г., 00:45
-- Версия сервера: 5.7.39
-- Версия PHP: 7.2.34

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
-- Структура таблицы `Article`
--

CREATE TABLE `Article` (
  `Article_ID` int(11) NOT NULL,
  `Title` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Text` varchar(15555) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User_ID` int(11) NOT NULL,
  `bg` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Article`
--

INSERT INTO `Article` (`Article_ID`, `Title`, `Text`, `Date`, `img`, `User_ID`, `bg`) VALUES
(1, 'Где искать вдохновение для чтения: книжные магазины и библиотеки', 'Чтение - это настоящее искусство, которое способно перенести нас в другие миры и помочь нам расширить наши горизонты. Однако, иногда нам может быть сложно найти новую книгу, особенно когда мы ищем чтение, которое будет интересным и вдохновляющим. К счастью, в мире существует множество мест, где можно найти вдохновение для чтения, и два из самых лучших мест - это книжные магазины и библиотеки.\n\nКнижные магазины - это места, где мы можем обнаружить самые новые книги и бестселлеры. Визит в книжный магазин может стать настоящим приключением, особенно когда мы начинаем блуждать по его полкам и рассматривать разнообразие книг. Книжные магазины также предлагают возможность перелистнуть странички книги, прочитать отрывки или посмотреть отзывы, что помогает нам сформировать представление о ней. Вдохновение может найтись в самых неожиданных местах, и часто мы оказываемся влюбленными в книгу, которую мы даже не собирались читать раньше. Книжные магазины также важны для поддержки авторов и индустрии печатных изданий, что означает, что мы можем найти уникальные книги, которых нет в библиотеке.\n\nБиблиотеки - это настоящие кладези знаний и источники вдохновения для чтения. Библиотеки предлагают широкий выбор книг по всевозможным тематикам и жанрам. Они предоставляют нам возможность бесплатно брать книги на время и наслаждаться чтением. В библиотеках мы можем найти не только популярные книги и классическую литературу, но и меньшеизвестные произведения и книги местных авторов. Библиотеки часто организуют литературные кружки, встречи с писателями и другие мероприятия, которые могут стать отличным источником вдохновения. Библиотеки также предоставляют уютное и спокойное место для чтения, где мы можем погрузиться в историю и забыться на несколько часов.\n\nКак и в книжных магазинах, вдохновение в библиотеке может находиться в самых неожиданных местах. В библиотеке мы можем случайно наткнуться на интересную книгу, основываясь только на ее обложке или описании на спине. Это может помочь нам открыть для себя что-то новое и узнать о книге, о которой мы раньше и не слышали. Кроме того, библиотеки часто размещают рекомендации и списки рекомендуемых книг, которые помогают нам узнать о самых интересных произведениях.', '2022-01-01', NULL, 1, 'ligth-blue'),
(2, 'Как читать эффективнее\nи быстрее', 'Как читать эффективнее и быстрее\n\nЧтение является одним из самых полезных и важных навыков, которые можно развить. Чтение помогает расширить кругозор, улучшить память и когнитивные способности, а также обогатить собственный словарный запас. Однако, многие из нас сталкиваются с проблемой отсутствия времени или недостаточной эффективности в процессе чтения. В этой статье мы расскажем о нескольких способах, как читать эффективнее и быстрее.\n\n1. Задайте себе цель и определите свои приоритеты. Прежде чем начать чтение какой-либо книги, определитесь, какую цель вы хотите достичь. Читаете ли вы для развлечения, чтобы получить новые знания или для работы или учебы? Определение цели поможет вам сконцентрироваться, избегая отвлекающих факторов.\n\n2. Найдите свое время и создайте свое место для чтения. Выделите определенное время в день, которое будет полностью посвящено чтению. Это может быть утренняя или вечерняя пора, когда вы чувствуете себя более энергичным и концентрированным. Также рекомендуется создать комфортное место для чтения, где нет никаких отвлекающих элементов, таких как телевизор или смартфон.\n\n3. Учитесь скиммингу и сканированию. Овладение техниками скимминга (беглое чтение) и сканирования (быстрый обзор текста) поможет вам быстрее находить нужную информацию и понимать общую суть книги или статьи. Научитесь просматривать заголовки, подзаголовки, ключевые слова и фразы, чтобы более эффективно ориентироваться в тексте.\n\n4. Используйте стратегии активного чтения. Поставьте себе вопросы перед началом чтения, чтобы стимулировать свое мышление и активное включение в процесс. Применяйте метод заметок и подчеркивания важных моментов, чтобы легче запомнить информацию и возвращаться к ней в будущем. Обсуждайте прочитанное с другими людьми, чтобы усвоить их точку зрения и обогатить свою.\n\n5. Оптимизируйте свой визуальный паттерн чтения. Многие люди имеют привычку перечитывать уже прочитанные строки или даже возвращаться в начало страницы. Однако, это замедляет процесс чтения. Старайтесь сосредотачивать свое внимание на центральной части строки, а не на каждом отдельном слове. Это позволит вам быстрее воспринимать информацию и передвигаться по тексту без лишних прерываний.\n\nЧтение является ключевым компонентом нашего образования и развития. Разработка эффективных чтения позволяет нам усваивать информацию быстрее, получать больше знаний и становиться более продуктивными. Вспомните эти пять способов, как читать эффективнее и быстрее, и начните развивать свои навыки чтения уже сегодня.', '2022-01-02', 'улитка.png', 1, 'orange'),
(3, 'Книжные тренды: что будет популярно в ближайшем будущем', 'В современном мире книги играют большую роль в нашей жизни. Они являются не только источником информации, но и источником вдохновения, развлечения и путешествий. Каждый год появляются новые тренды в литературе, предлагающие нам новые сюжеты и темы. Давайте рассмотрим, какие книжные тренды будут популярными в ближайшем будущем.\n|| chr(10) \nПостапокалиптические миры и дистопии – с каждым годом интерес читателей к этой тематике растет. Они позволяют нам вообразить мир после разрушительных событий и задуматься о нашем будущем. Такие книги, как \"1984\" Джорджа Оруэлла или \"Голодные игры\" Сьюзен Коллинз, становятся бестселлерами и надолго запоминаются читателям. В ближайшем будущем можно ожидать новых увлекательных историй о выживании и борьбе за лучшую жизнь.\n|| chr(10) \nФантастика и фэнтези – еще один популярный жанр, который будет оставаться актуальным и в ближайшем будущем. Фантастические элементы позволяют авторам создавать необычные миры и персонажей, погрузить читателей в их приключения. Серия \"Игра престолов\" Джорджа Мартина стала одной из самых популярных книжных серий прошлого десятилетия, и это только один пример того, как фэнтези привлекает внимание читателей.\n\nНаучно-популярная литература – в последние годы наблюдается повышенный интерес к научным исследованиям и новым открытиям в разных областях. Книги, которые объясняют сложные концепции и явления простым языком, становятся популярными среди тех, кто хочет расширить свой кругозор и развить свою эрудицию. В ближайшем будущем можно ожидать еще больше научно-популярной литературы, которая поможет читателям разобраться в сложных вопросах и расширить свои знания.\n\nКниги о саморазвитии – в наше время все больше людей стремятся к личностному росту и самоусовершенствованию. Книги по данной тематике становятся все более популярными, так как они помогают нам развивать навыки, улучшать качество жизни и становиться лучше. В ближайшем будущем можно ожидать еще больше книг по саморазвитию, которые будут предлагать новые методики и советы для достижения успеха и счастья.\n\nИсторическая литература – наш мир богат историческими событиями и личностями, и историческая литература позволяет нам окунуться в прошлое и понять его значения и последствия. Книги об истории становятся все более популярными, так как они предлагают увлекательные истории, основанные на реальных событиях. В ближайшем будущем можно ожидать еще больше исторических романов и биографий, которые помогут нам понять истоки нашей современности.\n\nНезависимо от жанра, книги останутся постоянным источником знаний и развлечения для нас. Тренды в литературе могут меняться, но любовь к чтению останется с нами. Используйте свободное время для знакомства с новинками и наслаждайтесь удовольствием от чтения книг!', '2022-01-03', 'тренды.png', 1, 'black'),
(4, 'Как расширить свой кругозор через чтение книг разных жанров', 'Fourth Text', '2022-01-04', NULL, 1, 'blue');

-- --------------------------------------------------------

--
-- Структура таблицы `Author`
--

CREATE TABLE `Author` (
  `Author_ID` int(11) NOT NULL,
  `Name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Surname` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Patronomyc` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Author`
--

INSERT INTO `Author` (`Author_ID`, `Name`, `Surname`, `Patronomyc`) VALUES
(1, 'Джордж', 'Оруэлл', '-'),
(2, 'Jane', 'Smith', 'Doe'),
(3, 'Michael', 'Johnson', 'Brown');

-- --------------------------------------------------------

--
-- Структура таблицы `Book`
--

CREATE TABLE `Book` (
  `Book_ID` int(11) NOT NULL,
  `Title` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Author_ID` int(11) NOT NULL,
  `Publisher` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Year_Published` year(4) NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Book`
--

INSERT INTO `Book` (`Book_ID`, `Title`, `Author_ID`, `Publisher`, `Year_Published`, `Description`) VALUES
(1, 'Book 1', 1, 'Publisher 1', 2020, 'Description 1'),
(2, 'Book 2', 2, 'Publisher 2', 2019, 'Description 2'),
(3, 'Book 3', 3, 'Publisher 3', 2018, 'Description 3'),
(4, 'Book 1', 1, 'Publisher 1', 2020, 'Description 1'),
(5, 'Book 2', 2, 'Publisher 2', 2019, 'Description 2'),
(6, 'Book 3', 3, 'Publisher 3', 2018, 'Description 3'),
(7, 'Book 1', 1, 'Publisher 1', 2020, 'Description 1'),
(8, 'Book 2', 2, 'Publisher 2', 2019, 'Description 2'),
(9, 'Book 3', 3, 'Publisher 3', 2018, 'Description 3'),
(10, 'Book 1', 1, 'Publisher 1', 2020, 'Description 1'),
(11, 'Book 2', 2, 'Publisher 2', 2019, 'Description 2'),
(12, 'Book 3', 3, 'Publisher 3', 2018, 'Description 3');

-- --------------------------------------------------------

--
-- Структура таблицы `Comment`
--

CREATE TABLE `Comment` (
  `Comment_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Post_ID` int(11) NOT NULL,
  `Text` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Comment_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Comment`
--

INSERT INTO `Comment` (`Comment_ID`, `User_ID`, `Post_ID`, `Text`, `Comment_Date`) VALUES
(1, 2, 1, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  ', '2024-01-18 10:38:40'),
(2, 3, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2024-01-18 10:39:43'),
(3, 3, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2024-01-18 10:39:43'),
(4, 1, 1, 'list-group-item list-group-item-action  align-items-start\"', '2024-01-18 10:55:26'),
(5, 1, 2, 'list-group-item list-group-item-action  align-items-start\"', '2024-01-18 10:55:26'),
(6, 4, 1, 'tyvjet', '2024-01-19 16:49:56'),
(8, 4, 2, 'eeeweeeeeeeeeeee', '2024-01-19 16:55:32'),
(14, 4, 2, 'AEQ5RTRGC ERTG E', '2024-01-19 16:58:55');

-- --------------------------------------------------------

--
-- Структура таблицы `Post`
--

CREATE TABLE `Post` (
  `Post_ID` int(11) NOT NULL,
  `Title` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Text` varchar(15555) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Post`
--

INSERT INTO `Post` (`Post_ID`, `Title`, `Text`, `Date`, `User_ID`, `Book_ID`, `photo`) VALUES
(1, 'Новинка - 1984', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', '2021-01-01', 1, 1, '1984.jpg'),
(2, 'Бестселлер - Отделенные', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-01-02', 2, 2, 'отделенные.jpg'),
(3, 'Post 3', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-01-03', 3, 3, '1984.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `Role_ID` int(11) NOT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`Role_ID`, `name`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `User`
--

CREATE TABLE `User` (
  `User_ID` int(11) NOT NULL,
  `Name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Surname` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Role_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `User`
--

INSERT INTO `User` (`User_ID`, `Name`, `Surname`, `phoneNumber`, `password`, `login`, `Role_ID`) VALUES
(1, 'John', 'Doe', '1234567890', 'password', 'login', 1),
(2, 'Jane', 'Smith', '0987654321', 'password2', 'login2', 2),
(3, 'Michael', 'Johnson', '9876543210', 'password3', 'michael789', 3),
(4, 'd', 'd', 'd', 'd', 'd', 1),
(5, 's', 's', 's', 's', 's', 1),
(6, 'f', 'f', 'f', 'f', 'f', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`Article_ID`),
  ADD KEY `User_ID` (`User_ID`);

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
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Post_ID` (`Post_ID`);

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
  ADD KEY `user_ibfk_1` (`Role_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Article`
--
ALTER TABLE `Article`
  MODIFY `Article_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Author`
--
ALTER TABLE `Author`
  MODIFY `Author_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Book`
--
ALTER TABLE `Book`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `Comment`
--
ALTER TABLE `Comment`
  MODIFY `Comment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `Role_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `User`
--
ALTER TABLE `User`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Article`
--
ALTER TABLE `Article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
