-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2021 at 11:01 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `csc506web`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `comment`
--

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `phone`, `address`, `password`) VALUES
(1, 'Ahimaaz', 'dioahimaaz@gmail.com', '08066685691', 'Sangere FUTY', '0000'),
(2, 'Ahimaazfff', 'dioahimaaz@gmail.com', '08066685691', 'Sangere FUTY', '0000'),
(3, 'Ahimaazsddfsf', 'dioahimaaz@gmail.com', '08066685691', 'Sangere FUTY', '0000'),
(4, 'Ahimaaz', 'dioahimaaz@gmail.com', '08066685691', 'Sangere FUTY', '0000'),
(5, 'Ahimaaz', 'dioahimaaz@gmail.com', '08066685691', 'Sangere FUTY\\\\\\\\', '0000'),
(6, 'Ahmed', 'test@gmail.com', '08056213245', 'Yola', '1234'),
(7, 'Ahmed', 'test@gmail.com', '08056213245', 'Yolaooo', '1234'),
(8, 'Ahimaazsghdhsf', 'dioahimaaz@gmail.com', '08066685691', 'Sangere FUTY', '0000'),
(9, 'Samuel Javan', 'samuel@gmail.com', '0900000000', 'Sengere', 'sammy'),
(10, 'Samuel Javan', 'samuel@gmail.com', '0900000000', 'Sengere', 'sammy'),
(11, 'Samuel Javan', 'samuel@gmail.com', '0900000000', 'Sengere', 'sammy');
