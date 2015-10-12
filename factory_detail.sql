-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2014 at 07:50 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `factorydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `factory_detail`
--

CREATE TABLE IF NOT EXISTS `factory_detail` (
  `FactoryName` varchar(50) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Quarter` varchar(10) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factory_detail`
--

INSERT INTO `factory_detail` (`FactoryName`, `ItemName`, `Quarter`, `Quantity`) VALUES
('Factory1', 'Toy', 'Q1', 190),
('Factory1', 'Choclates', 'Q1', 100),
('Factory1', 'Chips', 'Q1', 200),
('Factory1', 'Toy', 'Q2', 190),
('Factory1', 'Choclates', 'Q2', 100),
('Factory1', 'Chips', 'Q2', 200),
('Factory2', 'Toy', 'Q2', 190),
('Factory2', 'Choclates', 'Q2', 100),
('Factory2', 'Chips', 'Q2', 200),
('Factory3', 'Toy', 'Q2', 190),
('Factory3', 'Choclates', 'Q2', 100),
('Factory3', 'Chips', 'Q2', 200),
('Factory2', 'Toy', 'Q1', 190),
('Factory2', 'Chips', 'Q1', 100),
('Factory2', 'Choclates', 'Q1', 200),
('Factory3', 'Toy', 'Q1', 190),
('Factory3', 'Choclates', 'Q1', 100),
('Factory3', 'Chips', 'Q1', 200),
('Factory1', 'Toy', 'Q3', 190),
('Factory1', 'Choclates', 'Q3', 100),
('Factory1', 'Chips', 'Q3', 200),
('Factory2', 'Toy', 'Q3', 190),
('Factory2', 'Choclates', 'Q3', 100),
('Factory2', 'Chips', 'Q3', 200),
('Factory3', 'Toy', 'Q3', 190),
('Factory3', 'Choclates', 'Q3', 100),
('Factory3', 'Chips', 'Q3', 200);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
