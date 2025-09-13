-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2025 at 11:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bharat_darshan`
--

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `imageUrl` text NOT NULL,
  `isFeatured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`id`, `name`, `location`, `imageUrl`, `isFeatured`) VALUES
(0, 'Taj Mahal', 'Agra, Uttar Pradesh', 'https://upload.wikimedia.org/wikipedia/commons/d/da/Taj-Mahal.jpg', 0),
(0, 'Gateway of India', 'Mumbai, Maharashtra', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Gateway_of_India_in_Mumbai_03-2016_img3.jpg', 0),
(0, 'Golden Temple', 'Amritsar, Punjab', 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Golden_Temple_in_night_2018_img3.jpg', 0),
(0, 'Raigad Fort', 'Raigad, Maharashtra', 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Raigad_Fort.jpg', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
