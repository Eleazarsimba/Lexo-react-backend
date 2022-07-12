-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 01:53 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thelexo`
--

-- --------------------------------------------------------

--
-- Table structure for table `allusers`
--

CREATE TABLE `allusers` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `activated` tinyint(1) NOT NULL,
  `profilepic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allusers`
--

INSERT INTO `allusers` (`email`, `password`, `role`, `activated`, `profilepic`) VALUES
('eleazarkathangu5@gmail.com', '$2a$10$aWsTUWnQ24a7uIe/fTTBPujBhRo/RCB0NERp7vstSQxjZiQfLC23O', 'staff', 1, '1641224483862.jpg'),
('eleazarsimba5@gmail.com', '$2a$10$K6yeBF21XEkUoFy1KYYGKOvwz4OVPRmqXlPxlBcXMKEHfkeSHQHdy', 'employee', 1, '1639418600542.jpg'),
('johndoe@gmail.com', '$2a$10$i46G5hWQ/BqCUDGc7v5eZeSLClBCYEssEOTUFiWd/G9lQqV30xGp.', 'employee', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `email` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`email`, `firstName`, `lastName`, `salary`) VALUES
('eleazarsimba5@gmail.com', 'Eleazar', 'bb', 40000),
('johndoe@gmail.com', 'John', 'Doe', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `imgdesc` varchar(255) NOT NULL,
  `offerdesc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`imgdesc`, `offerdesc`) VALUES
('1639509984952.png', 'Buy 2 litres of petrol and get and extra litre of petrol within 24 hours'),
('1639634189302.png', 'Buy petrol worth ksh 3000 and get free 2litres'),
('1639644728476.png', 'Discounts at ksh2 ');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `imgdesc` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `productdesc` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`imgdesc`, `pname`, `productdesc`, `price`) VALUES
('1639975486649.jpg', 'Petrol', 'Unleaded petrol available with Christmas offers', 130),
('1639975818336.jpg', 'Diesel', 'Get diesel at a favourable price with Lexo', 140);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `seller` varchar(255) NOT NULL,
  `carNo` varchar(255) DEFAULT NULL,
  `no_of_ltrs` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `date_refilled` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`seller`, `carNo`, `no_of_ltrs`, `product`, `date_refilled`) VALUES
('eleazarsimba5@gmail.com', 'KDD 456Y', 4, 'Petrol', '12/19/2021, 1:11:07 AM'),
('johndoe@gmail.com', 'KCA 393B', 10, 'Petrol', '12/19/2021, 1:13:29 AM'),
('eleazarsimba5@gmail.com', '', 4, 'Kerosene', '1/4/2022, 8:58:38 PM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`firstName`, `lastName`, `email`, `position`) VALUES
('Eleazar', 'Simba', 'eleazarkathangu5@gmail.com', 'CEO');

-- --------------------------------------------------------

--
-- Table structure for table `subscribed_users`
--

CREATE TABLE `subscribed_users` (
  `email` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribed_users`
--

INSERT INTO `subscribed_users` (`email`, `confirmed`) VALUES
('eleazarsimba5@gmail.com', 1),
('johndoe@gmail.com', 0),
('titusmumo9432@gmail.com', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
