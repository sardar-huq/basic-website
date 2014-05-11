-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2014 at 02:47 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `basic_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `pagedata`
--

CREATE TABLE IF NOT EXISTS `pagedata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `page` text NOT NULL,
  `text1` text NOT NULL,
  `text2` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pagedata`
--

INSERT INTO `pagedata` (`id`, `title`, `page`, `text1`, `text2`) VALUES
(1, 'Home Page', 'home', 'Welcome to Fazlul''s website', 'Hello, I am S.M.Fazlul huq. This is my website built on CodeIgniter Framework. I like codeIgniter because I can make a website quickly in CodeIgniter compared to PHP. I also like learning new technologies. I spend as much time as I find in learning new web development technologies. I like Wordpress, Magento, jQuery etc...'),
(2, 'About Page', 'about', 'About Fazlul''s website', 'Hello, I am S.M.Fazlul huq. This is my website built on CodeIgniter Framework. I like codeIgniter because I can make a website quickly in CodeIgniter compared to PHP. I also like learning new technologies. I spend as much time as I find in learning new web development technologies. I like Wordpress, Magento, jQuery etc...');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
