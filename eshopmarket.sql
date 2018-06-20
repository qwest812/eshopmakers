-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 20, 2018 at 03:58 PM
-- Server version: 5.6.38
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshopmarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajax`
--

CREATE TABLE `ajax` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ajax`
--

INSERT INTO `ajax` (`id`, `text`) VALUES
(1, 'London'),
(2, 'Kyiv'),
(3, 'Lviv'),
(4, 'Krakov'),
(5, 'Lisabon'),
(6, 'Kirov');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajax`
--
ALTER TABLE `ajax`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajax`
--
ALTER TABLE `ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
