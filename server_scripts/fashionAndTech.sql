-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: 10.246.16.137:3306
-- Generation Time: May 29, 2013 at 11:11 AM
-- Server version: 5.1.66-0+squeeze1
-- PHP Version: 5.3.3-7+squeeze15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `contrechoc_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `fashionAndTech`
--

CREATE TABLE IF NOT EXISTS `fashionAndTech` (
  `ID` varchar(5) NOT NULL,
  `name` text NOT NULL,
  `value` int(2) NOT NULL,
  UNIQUE KEY `key` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fashionAndTech`
--

INSERT INTO `fashionAndTech` (`ID`, `name`, `value`) VALUES
('0', 'led1', 4),
('1', 'led2', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
