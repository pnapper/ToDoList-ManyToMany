-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 02, 2017 at 10:52 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_test`
--
CREATE DATABASE IF NOT EXISTS `todo_test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `todo_test`;

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
(43, 'Household chores'),
(45, 'Household chores'),
(46, 'Household chores'),
(47, 'Household chores'),
(49, 'Household chores'),
(50, 'Household chores'),
(51, 'Household chores'),
(53, 'Household chores'),
(54, 'Household chores'),
(55, 'Household chores'),
(57, 'Household chores'),
(58, 'Household chores'),
(59, 'Household chores'),
(61, 'Household chores'),
(62, 'Household chores'),
(63, 'Household chores'),
(65, 'Household chores'),
(66, 'Household chores');

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
(2, 19, 39),
(3, 19, 40),
(4, 20, 41),
(6, 26, 46),
(7, 26, 47),
(8, 27, 48),
(10, 33, 53),
(11, 33, 54),
(12, 34, 55),
(14, 37, 60),
(15, 37, 61),
(16, 38, 62),
(18, 41, 67),
(19, 41, 68),
(20, 42, 69),
(22, 45, 74),
(23, 45, 75),
(24, 46, 76),
(26, 49, 81),
(27, 49, 82),
(28, 50, 83),
(30, 53, 88),
(31, 53, 89),
(32, 54, 90),
(34, 57, 95),
(35, 57, 96),
(36, 58, 97),
(38, 61, 102),
(39, 61, 103),
(40, 62, 104),
(42, 65, 109),
(43, 65, 110),
(44, 66, 111);

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
(71, 'Mow the lawn', '2017-01-01'),
(72, 'Do the dishes', '2017-01-01'),
(73, 'Mow the lawn', '2017-01-01'),
(74, 'Mow the lawn', '2017-01-01'),
(75, 'Water the garden', '2017-01-01'),
(76, 'Mow the lawn', '2017-01-01'),
(77, 'Buy plane ticket', '2017-01-01'),
(78, 'Mow the lawn', '2017-01-01'),
(79, 'Do the dishes', '2017-01-01'),
(80, 'Mow the lawn', '2017-01-01'),
(81, 'Mow the lawn', '2017-01-01'),
(82, 'Water the garden', '2017-01-01'),
(83, 'Mow the lawn', '2017-01-01'),
(84, 'Buy plane ticket', '2017-01-01'),
(85, 'Mow the lawn', '2017-01-01'),
(86, 'Do the dishes', '2017-02-01'),
(87, 'Mow the lawn', '2017-01-01'),
(88, 'Mow the lawn', '2017-01-01'),
(89, 'Water the garden', '2017-01-01'),
(90, 'Mow the lawn', '2017-01-01'),
(91, 'Buy plane ticket', '2017-01-01'),
(92, 'Mow the lawn', '2017-01-01'),
(93, 'Do the dishes', '2017-02-01'),
(94, 'Mow the lawn', '2017-01-01'),
(95, 'Mow the lawn', '2017-01-01'),
(96, 'Water the garden', '2017-01-01'),
(97, 'Mow the lawn', '2017-01-01'),
(98, 'Buy plane ticket', '2017-01-01'),
(99, 'Mow the lawn', '2017-01-01'),
(100, 'Do the dishes', '2017-02-01'),
(101, 'Mow the lawn', '2017-01-01'),
(102, 'Mow the lawn', '2017-01-01'),
(103, 'Water the garden', '2017-01-01'),
(104, 'Mow the lawn', '2017-01-01'),
(105, 'Buy plane ticket', '2017-01-01'),
(106, 'Mow the lawn', '2017-01-01'),
(107, 'Do the dishes', '2017-02-01'),
(108, 'Mow the lawn', '2017-01-01'),
(109, 'Mow the lawn', '2017-01-01'),
(110, 'Water the garden', '2017-01-01'),
(111, 'Mow the lawn', '2017-01-01'),
(112, 'Buy plane ticket', '2017-01-01');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `categories_tasks`
--
ALTER TABLE `categories_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
