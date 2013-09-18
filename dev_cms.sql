-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 18, 2013 at 05:56 PM
-- Server version: 5.5.31
-- PHP Version: 5.4.4-14+deb7u4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dev_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE IF NOT EXISTS `workers` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(11) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `user_surname` varchar(11) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `rodzaj_umowy` varchar(11) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `user_group` varchar(11) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `working_since` int(11) NOT NULL,
  `working_till` int(11) NOT NULL,
  `holidays` int(11) NOT NULL,
  `holidays_since` int(11) NOT NULL,
  `holidays_till` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Ive no idea what the fuck Im doing' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`user_id`, `user_name`, `user_surname`, `rodzaj_umowy`, `user_group`, `working_since`, `working_till`, `holidays`, `holidays_since`, `holidays_till`) VALUES
(1, 'Jan', 'Kowalski', 'Zlecenie', 'Magazyn', 13062013, 15102013, 0, 0, 0),
(2, 'Tomasz', 'Kowalski', 'Zlecenie', 'Magazyn', 13062013, 15102013, 0, 0, 0),
(3, 'Tomasz', 'Nowak', 'Dzielo', 'Handlowcy', 13072013, 15112013, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
