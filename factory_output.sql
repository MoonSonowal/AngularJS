-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2014 at 07:51 AM
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
-- Table structure for table `factory_output`
--

CREATE TABLE IF NOT EXISTS `factory_output` (
  `FactoryID` int(11) DEFAULT '0',
  `DatePro` datetime DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  KEY `FactoryID` (`FactoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factory_output`
--

INSERT INTO `factory_output` (`FactoryID`, `DatePro`, `Quantity`) VALUES
(1, '2003-01-01 17:53:26', 21),
(1, '2003-01-02 17:54:13', 23),
(1, '2003-01-03 17:54:14', 22),
(2, '2003-01-01 17:53:26', 121),
(2, '2003-01-02 17:54:13', 123),
(2, '2003-01-03 17:54:14', 122),
(3, '2003-01-01 17:53:26', 54),
(3, '2003-01-02 17:54:13', 56),
(3, '2003-01-03 17:54:14', 89);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
