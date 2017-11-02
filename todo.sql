-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 02, 2017 at 10:51 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--
CREATE DATABASE IF NOT EXISTS `todo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `todo`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(5, 'Home Chores'),
(6, 'Things to Buy'),
(7, 'Places to Go'),
(8, 'Friends to Meet'),
(9, 'Books to Write'),
(10, 'Wishlist'),
(11, 'Yard Work'),
(12, 'Homework'),
(13, 'Band stuff');

-- --------------------------------------------------------

--
-- Table structure for table `categories_tasks`
--

CREATE TABLE `categories_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories_tasks`
--

INSERT INTO `categories_tasks` (`id`, `category_id`, `task_id`) VALUES
(1, 0, 19),
(2, 0, 20),
(3, 6, 23);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `description`, `due_date`) VALUES
(19, 'sheep', '2017-10-10'),
(20, 'goat', '2017-01-02'),
(21, 'goat', '2017-01-02'),
(22, 'Hansen', '0000-00-00'),
(23, 'Anatomy of Frogs', '2017-01-02'),
(24, 'France', '2017-10-09'),
(25, 'ipHoneX', '2017-10-19'),
(26, 'dsasd', '2017-10-31'),
(27, 'dsasd', '2017-10-31'),
(28, 'Rake Leaves', '2017-11-23'),
(29, 'Epicodus', '2017-10-26'),
(30, 'EXAMPLE', '2017-10-18'),
(31, 'ipHoneX', '2017-10-12'),
(32, 'I WORK NOW', '2017-10-25'),
(33, 'I WORK NOW', '2017-10-25'),
(34, 'I WORK NOW', '2017-10-25'),
(35, 'I WORK NOW', '2017-10-25'),
(36, 'Sweep the floor', '2017-11-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `categories_tasks`
--
ALTER TABLE `categories_tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `categories_tasks`
--
ALTER TABLE `categories_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
