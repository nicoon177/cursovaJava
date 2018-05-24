-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Час створення: Трв 22 2018 р., 20:02
-- Версія сервера: 5.7.19
-- Версія PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `information`
--

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `role`) VALUES
(1, 'Nico', 'admin@gmail.com', 'admin'),
(2, '&#1055;&#1077;&#1090;&#1088;&#1086;', 'petro@gmail.com', 'user'),
(3, '&#1050;&#1086;&#1088;&#1080;&#1089;&#1091;&#1074;&#1072;&#1095; &#1074;&#1110;&#1076;&#1088;&#1091;&#1076;&#1072;&#1075;&#1086;&#1074;&#1072;&#1085;&#1080;&#1081;', 'user@gmail.com', 'user'),
(4, '&#1042;&#1110;&#1076;&#1074;&#1110;&#1076;&#1091;&#1074;&#1072;&#1095;', 'guest@gmail.com', 'user'),
(5, 'admin2', 'admin2@gmail.com', 'admin'),
(7, 'User updated', 'createuser@gmail.com', 'user');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_uindex` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
