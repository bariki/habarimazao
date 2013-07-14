-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 14, 2013 at 11:13 PM
-- Server version: 5.5.31
-- PHP Version: 5.3.10-1ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sokoni`
--

-- --------------------------------------------------------

--
-- Table structure for table `crop`
--

CREATE TABLE IF NOT EXISTS `crop` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `wholesale` varchar(20) DEFAULT NULL,
  `retail` varchar(20) DEFAULT NULL,
  `unit` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `unit` (`unit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `crop`
--

INSERT INTO `crop` (`id`, `category`, `name`, `wholesale`, `retail`, `unit`) VALUES
(1, 1, 'parachichi', '50kg', '1pc', 2),
(2, 1, 'nanasi', '50kg', '1pc', 2),
(3, 2, 'mchele', '100kg', '1kg', 1),
(4, 2, 'bisi', '25kg', '1kg', 1),
(5, 2, 'choroko', '70kg', '1kg', 1),
(6, 2, 'karanga', '100kg', '1kg', 1),
(7, 2, 'mtama', '100kg', '1kg', 1),
(8, 2, 'njugumawe', '100kg', '1kg', 1),
(9, 2, 'ngano', '100kg', '1kg', 1),
(10, 2, 'ulezi', '50kg', '1kg', 1),
(11, 5, 'vitunguu swaumu', '100kg', '1kg', 2),
(12, 5, 'tangawizi', '100kg', '1kg', 1),
(13, 1, 'ndimu', '25kg', '1pc', 2),
(14, 1, 'limao', '40kg', '1pc', 2),
(15, 2, 'kunde', '50kg', '1kg', 1),
(16, 3, 'biringanya', '70kg', '1kg', 1),
(17, 2, 'maharage mabichi', '70kg', '1kg', 1),
(31, 4, 'nile perch (waliohifadhiwa)', '200kg', '1kg', 1),
(32, 6, 'bati  32 g', '20pc', '1pc', 4),
(33, 6, 'bati 28 g', '20pc', '1pc', 4),
(34, 6, 'bati 30 g', '20pc', '1pc', 4),
(35, 6, 'mbegu maharagwe', '100kg', '1kg', 1),
(36, 2, 'maharagwe', '100kg', '1kg', 1),
(37, 2, 'maharagwe kombati', '100kg', '1kg', 1),
(38, 4, 'nyama - yenye mifupa', '40kg', '1kg', 4),
(39, 4, 'nyama - bila mifupa', '25kg', '1kg', 4),
(40, 2, 'uwele', '100kg', '1kg', 1),
(41, 3, 'kabeji', '40kg', '1kg', 2),
(42, 6, 'mbegu kabeji', '100kg', '1kg', 1),
(43, 6, 'mbolea can', '25kg', '1kg', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `crops`
--
CREATE TABLE IF NOT EXISTS `crops` (
`id` int(50)
,`name` varchar(50)
,`wholesale` varchar(20)
,`retail` varchar(20)
,`category` varchar(50)
,`unit` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `crop_cat`
--

CREATE TABLE IF NOT EXISTS `crop_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_cat`
--

INSERT INTO `crop_cat` (`id`, `name`) VALUES
(5, 'kitoweo'),
(1, 'matunda'),
(3, 'mboga_mboga'),
(2, 'nafaka'),
(6, 'viungo'),
(4, 'zingine');

-- --------------------------------------------------------

--
-- Stand-in structure for view `crop_level1`
--
CREATE TABLE IF NOT EXISTS `crop_level1` (
`year` bigint(20)
,`month` bigint(20)
,`day` bigint(20)
,`higher` double
,`lower` double
,`crop_id` int(50)
,`id` varchar(50)
,`status` tinyint(4)
,`wholesale` varchar(20)
,`category` varchar(50)
,`unit` varchar(50)
,`crop` varchar(50)
,`whole` bigint(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `crop_level2`
--
CREATE TABLE IF NOT EXISTS `crop_level2` (
`year` bigint(20)
,`month` bigint(20)
,`day` bigint(20)
,`higher` double
,`lower` double
,`crop_id` int(50)
,`id` varchar(50)
,`status` tinyint(4)
,`wholesale` varchar(20)
,`category` varchar(50)
,`unit` varchar(50)
,`location_id` varchar(50)
,`region_id` varchar(50)
,`region` varchar(50)
,`location` varchar(50)
,`crop` varchar(50)
,`whole` bigint(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `crop_level3`
--
CREATE TABLE IF NOT EXISTS `crop_level3` (
`year` bigint(20)
,`month` bigint(20)
,`day` bigint(20)
,`higher` double
,`lower` double
,`crop_id` int(50)
,`id` varchar(50)
,`status` tinyint(4)
,`wholesale` varchar(20)
,`category` varchar(50)
,`unit` varchar(50)
,`location_id` varchar(50)
,`region_id` varchar(50)
,`region` varchar(50)
,`location` varchar(50)
,`crop` varchar(50)
,`whole` bigint(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `crop_prices`
--
CREATE TABLE IF NOT EXISTS `crop_prices` (
`id` varchar(50)
,`crop_id` int(50)
,`location_id` varchar(50)
,`higher` double
,`lower` double
,`wholesale` tinyint(1)
,`add_date` datetime
,`status` tinyint(1)
,`register` varchar(50)
,`crop` varchar(50)
,`location` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `crop_retail1`
--
CREATE TABLE IF NOT EXISTS `crop_retail1` (
`year` bigint(4)
,`month` bigint(2)
,`day` bigint(2)
,`higher` double
,`lower` double
,`crop_id` int(50)
,`id` varchar(50)
,`status` tinyint(1)
,`retail` varchar(20)
,`category` varchar(50)
,`unit` varchar(50)
,`crop` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `crop_retail2`
--
CREATE TABLE IF NOT EXISTS `crop_retail2` (
`year` bigint(4)
,`month` bigint(2)
,`day` bigint(2)
,`higher` double
,`lower` double
,`crop_id` int(50)
,`id` varchar(50)
,`status` tinyint(1)
,`retail` varchar(20)
,`category` varchar(50)
,`unit` varchar(50)
,`location_id` varchar(50)
,`region_id` varchar(50)
,`region` varchar(50)
,`location` varchar(50)
,`crop` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `crop_retail3`
--
CREATE TABLE IF NOT EXISTS `crop_retail3` (
`year` bigint(4)
,`month` bigint(2)
,`day` bigint(2)
,`higher` double
,`lower` double
,`crop_id` int(50)
,`id` varchar(50)
,`status` tinyint(1)
,`retail` varchar(20)
,`category` varchar(50)
,`unit` varchar(50)
,`location_id` varchar(50)
,`region_id` varchar(50)
,`region` varchar(50)
,`location` varchar(50)
,`crop` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `crop_whole1`
--
CREATE TABLE IF NOT EXISTS `crop_whole1` (
`year` bigint(4)
,`month` bigint(2)
,`day` bigint(2)
,`higher` double
,`lower` double
,`crop_id` int(50)
,`id` varchar(50)
,`status` tinyint(1)
,`wholesale` varchar(20)
,`category` varchar(50)
,`unit` varchar(50)
,`crop` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `crop_whole2`
--
CREATE TABLE IF NOT EXISTS `crop_whole2` (
`year` bigint(4)
,`month` bigint(2)
,`day` bigint(2)
,`higher` double
,`lower` double
,`crop_id` int(50)
,`id` varchar(50)
,`status` tinyint(1)
,`wholesale` varchar(20)
,`category` varchar(50)
,`unit` varchar(50)
,`location_id` varchar(50)
,`region_id` varchar(50)
,`region` varchar(50)
,`location` varchar(50)
,`crop` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `crop_whole3`
--
CREATE TABLE IF NOT EXISTS `crop_whole3` (
`year` bigint(4)
,`month` bigint(2)
,`day` bigint(2)
,`higher` double
,`lower` double
,`crop_id` int(50)
,`id` varchar(50)
,`status` tinyint(1)
,`wholesale` varchar(20)
,`category` varchar(50)
,`unit` varchar(50)
,`location_id` varchar(50)
,`region_id` varchar(50)
,`region` varchar(50)
,`location` varchar(50)
,`crop` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `id` varchar(50) NOT NULL,
  `region_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `region_id` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `region_id`, `name`) VALUES
('51bb56708e191', '51bb54c4b7027', 'temeke'),
('51bb56708eeb7', '51bb54c4b9e9d', 'tanga'),
('51bb567139f71', '51bb54c5506dd', 'mbeya rural'),
('51bb56713cc22', '51bb54c4b9e9d', 'muheza'),
('51bb567144136', '51bb54c5583f2', 'arusha urban'),
('51bb5672007d9', '51bb54c602168', 'kahama'),
('51bb56726290d', '51bb54c662d75', 'nyamagana');

-- --------------------------------------------------------

--
-- Table structure for table `famers_crops`
--

CREATE TABLE IF NOT EXISTS `famers_crops` (
  `famer_id` int(11) NOT NULL,
  `crop_id` int(50) NOT NULL,
  `size` text NOT NULL,
  `price` double NOT NULL,
  `updates` datetime NOT NULL,
  `add_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  KEY `crop_id` (`crop_id`),
  KEY `famer_id` (`famer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `location`
--
CREATE TABLE IF NOT EXISTS `location` (
`id` varchar(50)
,`name` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE IF NOT EXISTS `market` (
  `id` varchar(50) NOT NULL,
  `location_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `market`
--

INSERT INTO `market` (`id`, `location_id`, `name`) VALUES
('51bac443a231a', '51babfafa6e7f', 'arumeru'),
('51bac443a2f93', '51babfafa6e7f', 'arusha'),
('51bac443a43dc', '51babfafa9c2f', 'babati'),
('51bac443a5f2b', '51babfafcf586', 'bagamoyo'),
('51bac443a738c', '51babfafd249b', 'bariadi'),
('51bac443a8aab', '51babfafd2956', 'biharamulo'),
('51bac443aa2e2', '51babfafcf586', 'buguruni'),
('51bac443abe7c', '51babfafd2956', 'bukoba'),
('51bac443ad46d', '51babfafd249b', 'bukombe'),
('51bac443af07c', '51babfafe0316', 'bunda'),
('51bac443afcc4', '51babfafd2956', 'chato'),
('51bac443b2b7b', '51babfafe4ef9', 'chunya'),
('51bac443b5488', '51babfafe53d8', 'dar-es-salaam'),
('51bac443b7b96', '51babfafe98b3', 'dodoma'),
('51bac443b8026', '51babfafea0d3', 'geita'),
('51bac443bc9e4', '51babfafee9da', 'hai'),
('51bac443bf0f8', '51babfafa9c2f', 'hanang'),
('51bac443c1109', '51babfaff2b23', 'handeni'),
('51bac443c1663', '51babfaff3473', 'ifakara'),
('51bac443c4f0d', '51babfafe53d8', 'ilala'),
('51bac443c7f12', '51babfb002277', 'igunga'),
('51bac443ca47c', '51babfafe4ef9', 'ileje'),
('51bac443ccbda', '51babfafd249b', 'kahama'),
('51bac443ccbf1', '51babfb008b17', 'iringa'),
('51bac443cd7c9', '51babfafd2956', 'karagwe'),
('51bac443d293e', '51babfafa6e7f', 'karatu'),
('51bac443d59e6', '51babfb0139f9', 'kasulu'),
('51bac443d7bff', '51babfafcf586', 'kibaha'),
('51bac443d97aa', '51babfafe98b3', 'kibaigwa'),
('51bac443d99e7', '51babfb0139f9', 'kibondo'),
('51bac443da612', '51babfb0139f9', 'kigoma'),
('51bac443dec17', '51babfb008b17', 'kilolo'),
('51bac443e3a5a', '51babfaff3473', 'kilosa'),
('51bac443e3a88', '51babfb023a04', 'kilwa'),
('51bac443e8b73', '51babfb0272cf', 'kiomboi'),
('51bac443ea90d', '51babfafcf586', 'kisarawe'),
('51bac443ea998', '51babfafd249b', 'kishapu'),
('51bac443eaa36', '51babfafa9c2f', 'kiteto'),
('51bac44413709', '51babfafe98b3', 'kondoa'),
('51bac44413f2e', '51babfafe98b3', 'kongwa'),
('51bac444160d2', '51babfaff2b23', 'korogwe'),
('51bac44417a0f', '51babfafea0d3', 'kwimba'),
('51bac44417ab5', '51babfafe4ef9', 'kyela'),
('51bac44419f65', '51babfb023a04', 'lindi'),
('51bac4441c53c', '51babfb023a04', 'liwale'),
('51bac4441c53d', '51babfafa6e7f', 'longido'),
('51bac4441ea33', '51babfb008b17', 'ludewa'),
('51bac4441efa3', '51babfaff2b23', 'lushoto'),
('51bac4441f3a3', '51babfafcf586', 'mafia'),
('51bac44421a6b', '51babfafea0d3', 'magu'),
('51bac44427753', '51babfb008b17', 'makete'),
('51bac4442980f', '51babfb0272cf', 'manyoni'),
('51bac44429827', '51babfafa9c2f', 'manyara'),
('51bac44429b4e', '51babfb0442ac', 'masasi'),
('51bac4442de0b', '51babfafd249b', 'maswa'),
('51bac4442df13', '51babfafe4ef9', 'mbalali'),
('51bac44431cc0', '51babfafe4ef9', 'mbeya'),
('51bac44432081', '51babfafe4ef9', 'mbeya rural'),
('51bac44432fd1', '51babfb04bf2e', 'mbinga'),
('51bac44433468', '51babfafe4ef9', 'mbozi');

-- --------------------------------------------------------

--
-- Table structure for table `m_buyers`
--

CREATE TABLE IF NOT EXISTS `m_buyers` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `m_famers`
--

CREATE TABLE IF NOT EXISTS `m_famers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `add_data` datetime NOT NULL,
  `location` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `m_famers`
--

INSERT INTO `m_famers` (`id`, `name`, `phone`, `add_data`, `location`) VALUES
(1, 'anania', '+255713780009', '0000-00-00 00:00:00', '51bb56708e191');

-- --------------------------------------------------------

--
-- Table structure for table `m_sms`
--

CREATE TABLE IF NOT EXISTS `m_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL,
  `sms` text NOT NULL,
  `time` datetime NOT NULL,
  `direction` tinyint(1) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=165 ;

--
-- Dumping data for table `m_sms`
--

INSERT INTO `m_sms` (`id`, `phone`, `sms`, `time`, `direction`, `type`) VALUES
(1, '+255714593659', 'Bei ya mchele ya Tanzania kwa kipimo cha 100kg gunia inauzwa kwa kiasi cha shilingi 100000 hadi 160000,  kwa 1kg inauzwa kwa kiasi cha shilingi 800 hadi 2200.', '2013-07-14 17:19:14', 1, 1),
(2, '+255654752521', 'bei mchele', '2013-07-14 19:16:07', 0, 1),
(3, '+255654752521', 'Bei ya mchele ya Tanzania kwa kipimo cha 100kg gunia inauzwa kwa kiasi cha shilingi 100000 hadi 160000,  kwa 1kg inauzwa kwa kiasi cha shilingi 800 hadi 2200.', '2013-07-14 19:16:07', 1, 1),
(4, '+255787393462', 'bei mchela dar', '2013-07-14 20:08:57', 0, 1),
(5, '+255714950044', 'Bei ya mchele ya Tanzania kwa kipimo cha 100kg gunia inauzwa kwa kiasi cha shilingi 100000 hadi 160000,  kwa 1kg inauzwa kwa kiasi cha shilingi 800 hadi 2200.', '2013-07-14 20:21:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `price_history`
--

CREATE TABLE IF NOT EXISTS `price_history` (
  `id` varchar(50) NOT NULL,
  `crop_id` int(50) NOT NULL,
  `location_id` varchar(50) NOT NULL,
  `higher` double NOT NULL,
  `lower` double NOT NULL,
  `wholesale` tinyint(1) NOT NULL,
  `add_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `register` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crop` (`crop_id`,`location_id`,`wholesale`,`register`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_history`
--

INSERT INTO `price_history` (`id`, `crop_id`, `location_id`, `higher`, `lower`, `wholesale`, `add_date`, `status`, `register`) VALUES
('51bc2fef4e057', 41, '51bb56708e191', 2000, 1000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fef54da7', 37, '51bb56708e191', 1350, 1300, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fef6e956', 3, '51bb56708e191', 1400, 1000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fef7559f', 3, '51bb56708eeb7', 1800, 1300, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fef81f49', 9, '51bb56708e191', 1100, 1000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fef86b39', 10, '51bb56708e191', 1500, 1450, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fef95118', 13, '51bb56713cc22', 30, 20, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fefa1f3d', 1, '51bb56713cc22', 1000, 300, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fefaaf3c', 3, '51bb567139f71', 140000, 120000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2fefaaf3d', 9, '51bb567139f71', 120000, 110000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2fefabf6c', 36, '51bb567139f71', 120000, 75000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2fefbb9b6', 10, '51bb567139f71', 70000, 65000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2fefc8c51', 41, '51bb56713cc22', 700, 600, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fefce1d2', 10, '51bb567144136', 135000, 120000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2fefd04e3', 9, '51bb567144136', 90000, 80000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2fefd0d80', 3, '51bb567144136', 160000, 120000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2fefe0f50', 5, '51bb56713cc22', 1600, 1600, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fefe11f0', 15, '51bb56713cc22', 1200, 1000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2fefe9041', 37, '51bb56713cc22', 1500, 1200, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff001cb4', 38, '51bb56713cc22', 5500, 5000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0026e9', 39, '51bb56713cc22', 6000, 6000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff014661', 33, '51bb56713cc22', 28000, 28000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff016810', 34, '51bb56713cc22', 17000, 17000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff018adc', 32, '51bb56713cc22', 15000, 15000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff02f8ed', 3, '51bb56713cc22', 2200, 2000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff03b9fe', 42, '51bb56713cc22', 65000, 65000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff05418f', 3, '51bb56708eeb7', 1800, 1300, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff059141', 7, '51bb56708e191', 1000, 900, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff06277f', 3, '51bb56708eeb7', 1800, 1200, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff06559e', 10, '51bb56708e191', 1600, 1600, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff067d1a', 9, '51bb56708e191', 1200, 1000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff077214', 3, '51bb56708e191', 1500, 1000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff080565', 37, '51bb56713cc22', 1500, 1200, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0830fc', 15, '51bb56713cc22', 1200, 1000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff094169', 41, '51bb56713cc22', 700, 600, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff09bd56', 5, '51bb56713cc22', 1600, 1600, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0a2aef', 41, '51bb56708e191', 2000, 1000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0aa523', 3, '51bb567139f71', 140000, 125000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0aad33', 9, '51bb567139f71', 120000, 115000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0af945', 37, '51bb56708e191', 1350, 1300, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0b42d8', 36, '51bb567139f71', 135000, 85000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0baf0a', 39, '51bb56713cc22', 6000, 6000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0bb7e1', 38, '51bb56713cc22', 5500, 5000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0c8ea5', 33, '51bb56713cc22', 28000, 28000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0cac37', 34, '51bb56713cc22', 17000, 17000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0cca31', 32, '51bb56713cc22', 15000, 15000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0e024b', 3, '51bb56713cc22', 2200, 2000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0e42e5', 1, '51bb56713cc22', 1000, 500, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff0eacf1', 13, '51bb56713cc22', 30, 20, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff1004ae', 42, '51bb56713cc22', 65000, 65000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff10a5da', 10, '51bb567139f71', 65000, 60000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff112dc9', 40, '51bb56726290d', 140000, 140000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff119ac4', 37, '51bb56713cc22', 1500, 1300, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff11b803', 3, '51bb56713cc22', 2000, 1600, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff11d737', 9, '51bb567139f71', 120000, 110000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff11e06c', 3, '51bb567139f71', 140000, 125000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff11f730', 7, '51bb56726290d', 160000, 140000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff12003b', 10, '51bb56726290d', 140000, 130000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff122074', 36, '51bb567144136', 140000, 90000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff1237fb', 10, '51bb567144136', 105000, 100000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff1246a4', 9, '51bb567144136', 90000, 80000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff12506a', 3, '51bb567144136', 160000, 120000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff12d3a6', 3, '51bb56708eeb7', 1800, 1200, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff130a28', 3, '51bb56726290d', 110000, 100000, 1, '2013-07-14 00:00:00', 1, ''),
('51bc2ff13b3a4', 36, '51bb5672007d9', 1650, 1400, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff13c2cd', 3, '51bb5672007d9', 1400, 800, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff13f67d', 41, '51bb56713cc22', 65000, 65000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff154947', 15, '51bb56713cc22', 1200, 1000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff15630f', 5, '51bb56713cc22', 1600, 1600, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff15aa2f', 41, '51bb56713cc22', 700, 600, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff16105b', 13, '51bb56713cc22', 30, 20, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff1623f4', 1, '51bb56713cc22', 1000, 500, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff165e75', 33, '51bb56713cc22', 28000, 28000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff1667af', 39, '51bb56713cc22', 6000, 6000, 0, '2013-07-14 00:00:00', 1, ''),
('51bc2ff16fa03', 32, '51bb56713cc22', 15000, 15000, 0, '2013-07-14 00:00:00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
('51bb54c5583f2', 'arusha'),
('51bb54c4b7027', 'dar-es-salaam'),
('51bb54c5506dd', 'mbeya'),
('51bb54c662d75', 'mwanza'),
('51bb54c602168', 'shinyanga'),
('51bb54c4b9e9d', 'tanga');

-- --------------------------------------------------------

--
-- Table structure for table `region_alt`
--

CREATE TABLE IF NOT EXISTS `region_alt` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  UNIQUE KEY `name` (`name`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region_alt`
--

INSERT INTO `region_alt` (`id`, `name`) VALUES
('51bb54c4b7027', 'dar');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `name`) VALUES
(3, 'debe'),
(1, 'gunia'),
(4, 'haijulikani'),
(5, 'mkungu'),
(2, 'tenga'),
(6, 'trei');

-- --------------------------------------------------------

--
-- Structure for view `crops`
--
DROP TABLE IF EXISTS `crops`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crops` AS select `crop`.`id` AS `id`,`crop`.`name` AS `name`,`crop`.`wholesale` AS `wholesale`,`crop`.`retail` AS `retail`,`crop_cat`.`name` AS `category`,`unit`.`name` AS `unit` from ((`crop` join `crop_cat` on((`crop`.`category` = `crop_cat`.`id`))) join `unit` on((`unit`.`id` = `crop`.`unit`)));

-- --------------------------------------------------------

--
-- Structure for view `crop_level1`
--
DROP TABLE IF EXISTS `crop_level1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crop_level1` AS select `crop_whole1`.`year` AS `year`,`crop_whole1`.`month` AS `month`,`crop_whole1`.`day` AS `day`,`crop_whole1`.`higher` AS `higher`,`crop_whole1`.`lower` AS `lower`,`crop_whole1`.`crop_id` AS `crop_id`,`crop_whole1`.`id` AS `id`,`crop_whole1`.`status` AS `status`,`crop_whole1`.`wholesale` AS `wholesale`,`crop_whole1`.`category` AS `category`,`crop_whole1`.`unit` AS `unit`,`crop_whole1`.`crop` AS `crop`,1 AS `whole` from `crop_whole1` union select `crop_retail1`.`year` AS `year`,`crop_retail1`.`month` AS `month`,`crop_retail1`.`day` AS `day`,`crop_retail1`.`higher` AS `higher`,`crop_retail1`.`lower` AS `lower`,`crop_retail1`.`crop_id` AS `crop_id`,`crop_retail1`.`id` AS `id`,`crop_retail1`.`status` AS `status`,`crop_retail1`.`retail` AS `retail`,`crop_retail1`.`category` AS `category`,`crop_retail1`.`unit` AS `unit`,`crop_retail1`.`crop` AS `crop`,0 AS `whole` from `crop_retail1`;

-- --------------------------------------------------------

--
-- Structure for view `crop_level2`
--
DROP TABLE IF EXISTS `crop_level2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crop_level2` AS select `crop_whole2`.`year` AS `year`,`crop_whole2`.`month` AS `month`,`crop_whole2`.`day` AS `day`,`crop_whole2`.`higher` AS `higher`,`crop_whole2`.`lower` AS `lower`,`crop_whole2`.`crop_id` AS `crop_id`,`crop_whole2`.`id` AS `id`,`crop_whole2`.`status` AS `status`,`crop_whole2`.`wholesale` AS `wholesale`,`crop_whole2`.`category` AS `category`,`crop_whole2`.`unit` AS `unit`,`crop_whole2`.`location_id` AS `location_id`,`crop_whole2`.`region_id` AS `region_id`,`crop_whole2`.`region` AS `region`,`crop_whole2`.`location` AS `location`,`crop_whole2`.`crop` AS `crop`,1 AS `whole` from `crop_whole2` union select `crop_retail2`.`year` AS `year`,`crop_retail2`.`month` AS `month`,`crop_retail2`.`day` AS `day`,`crop_retail2`.`higher` AS `higher`,`crop_retail2`.`lower` AS `lower`,`crop_retail2`.`crop_id` AS `crop_id`,`crop_retail2`.`id` AS `id`,`crop_retail2`.`status` AS `status`,`crop_retail2`.`retail` AS `retail`,`crop_retail2`.`category` AS `category`,`crop_retail2`.`unit` AS `unit`,`crop_retail2`.`location_id` AS `location_id`,`crop_retail2`.`region_id` AS `region_id`,`crop_retail2`.`region` AS `region`,`crop_retail2`.`location` AS `location`,`crop_retail2`.`crop` AS `crop`,0 AS `whole` from `crop_retail2`;

-- --------------------------------------------------------

--
-- Structure for view `crop_level3`
--
DROP TABLE IF EXISTS `crop_level3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crop_level3` AS select `crop_whole3`.`year` AS `year`,`crop_whole3`.`month` AS `month`,`crop_whole3`.`day` AS `day`,`crop_whole3`.`higher` AS `higher`,`crop_whole3`.`lower` AS `lower`,`crop_whole3`.`crop_id` AS `crop_id`,`crop_whole3`.`id` AS `id`,`crop_whole3`.`status` AS `status`,`crop_whole3`.`wholesale` AS `wholesale`,`crop_whole3`.`category` AS `category`,`crop_whole3`.`unit` AS `unit`,`crop_whole3`.`location_id` AS `location_id`,`crop_whole3`.`region_id` AS `region_id`,`crop_whole3`.`region` AS `region`,`crop_whole3`.`location` AS `location`,`crop_whole3`.`crop` AS `crop`,1 AS `whole` from `crop_whole3` union select `crop_retail3`.`year` AS `year`,`crop_retail3`.`month` AS `month`,`crop_retail3`.`day` AS `day`,`crop_retail3`.`higher` AS `higher`,`crop_retail3`.`lower` AS `lower`,`crop_retail3`.`crop_id` AS `crop_id`,`crop_retail3`.`id` AS `id`,`crop_retail3`.`status` AS `status`,`crop_retail3`.`retail` AS `retail`,`crop_retail3`.`category` AS `category`,`crop_retail3`.`unit` AS `unit`,`crop_retail3`.`location_id` AS `location_id`,`crop_retail3`.`region_id` AS `region_id`,`crop_retail3`.`region` AS `region`,`crop_retail3`.`location` AS `location`,`crop_retail3`.`crop` AS `crop`,0 AS `whole` from `crop_retail3`;

-- --------------------------------------------------------

--
-- Structure for view `crop_prices`
--
DROP TABLE IF EXISTS `crop_prices`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crop_prices` AS select `price_history`.`id` AS `id`,`price_history`.`crop_id` AS `crop_id`,`price_history`.`location_id` AS `location_id`,`price_history`.`higher` AS `higher`,`price_history`.`lower` AS `lower`,`price_history`.`wholesale` AS `wholesale`,`price_history`.`add_date` AS `add_date`,`price_history`.`status` AS `status`,`price_history`.`register` AS `register`,`crops`.`name` AS `crop`,`location`.`name` AS `location` from ((`price_history` join `location` on((`location`.`id` = `price_history`.`location_id`))) join `crops` on((`crops`.`id` = `price_history`.`crop_id`)));

-- --------------------------------------------------------

--
-- Structure for view `crop_retail1`
--
DROP TABLE IF EXISTS `crop_retail1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crop_retail1` AS select max(year(`price_history`.`add_date`)) AS `year`,max(month(`price_history`.`add_date`)) AS `month`,max(dayofmonth(`price_history`.`add_date`)) AS `day`,max(`price_history`.`higher`) AS `higher`,min(`price_history`.`lower`) AS `lower`,`price_history`.`crop_id` AS `crop_id`,`price_history`.`id` AS `id`,`price_history`.`status` AS `status`,`crops`.`retail` AS `retail`,`crops`.`category` AS `category`,`crops`.`unit` AS `unit`,`crops`.`name` AS `crop` from ((`price_history` join `location` on(((`location`.`id` = `price_history`.`location_id`) and (`price_history`.`wholesale` = 0)))) join `crops` on((`crops`.`id` = `price_history`.`crop_id`))) group by `price_history`.`crop_id`;

-- --------------------------------------------------------

--
-- Structure for view `crop_retail2`
--
DROP TABLE IF EXISTS `crop_retail2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crop_retail2` AS select max(year(`price_history`.`add_date`)) AS `year`,max(month(`price_history`.`add_date`)) AS `month`,max(dayofmonth(`price_history`.`add_date`)) AS `day`,max(`price_history`.`higher`) AS `higher`,min(`price_history`.`lower`) AS `lower`,`price_history`.`crop_id` AS `crop_id`,`price_history`.`id` AS `id`,`price_history`.`status` AS `status`,`crops`.`retail` AS `retail`,`crops`.`category` AS `category`,`crops`.`unit` AS `unit`,`location`.`id` AS `location_id`,`district`.`region_id` AS `region_id`,`region`.`name` AS `region`,`location`.`name` AS `location`,`crops`.`name` AS `crop` from ((((`price_history` join `location` on(((`location`.`id` = `price_history`.`location_id`) and (`price_history`.`wholesale` = 0)))) join `crops` on((`crops`.`id` = `price_history`.`crop_id`))) join `district` on((`location`.`id` = `district`.`id`))) join `region` on((`region`.`id` = `district`.`region_id`))) group by `district`.`region_id`,`price_history`.`crop_id`;

-- --------------------------------------------------------

--
-- Structure for view `crop_retail3`
--
DROP TABLE IF EXISTS `crop_retail3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crop_retail3` AS select max(year(`price_history`.`add_date`)) AS `year`,max(month(`price_history`.`add_date`)) AS `month`,max(dayofmonth(`price_history`.`add_date`)) AS `day`,max(`price_history`.`higher`) AS `higher`,min(`price_history`.`lower`) AS `lower`,`price_history`.`crop_id` AS `crop_id`,`price_history`.`id` AS `id`,`price_history`.`status` AS `status`,`crops`.`retail` AS `retail`,`crops`.`category` AS `category`,`crops`.`unit` AS `unit`,`location`.`id` AS `location_id`,`district`.`region_id` AS `region_id`,`region`.`name` AS `region`,`location`.`name` AS `location`,`crops`.`name` AS `crop` from ((((`price_history` join `location` on(((`location`.`id` = `price_history`.`location_id`) and (`price_history`.`wholesale` = 0)))) join `crops` on((`crops`.`id` = `price_history`.`crop_id`))) join `district` on((`location`.`id` = `district`.`id`))) join `region` on((`region`.`id` = `district`.`region_id`))) group by `price_history`.`crop_id`,`location`.`id`;

-- --------------------------------------------------------

--
-- Structure for view `crop_whole1`
--
DROP TABLE IF EXISTS `crop_whole1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crop_whole1` AS select max(year(`price_history`.`add_date`)) AS `year`,max(month(`price_history`.`add_date`)) AS `month`,max(dayofmonth(`price_history`.`add_date`)) AS `day`,max(`price_history`.`higher`) AS `higher`,min(`price_history`.`lower`) AS `lower`,`price_history`.`crop_id` AS `crop_id`,`price_history`.`id` AS `id`,`price_history`.`status` AS `status`,`crops`.`wholesale` AS `wholesale`,`crops`.`category` AS `category`,`crops`.`unit` AS `unit`,`crops`.`name` AS `crop` from ((`price_history` join `location` on(((`location`.`id` = `price_history`.`location_id`) and (`price_history`.`wholesale` = 1)))) join `crops` on((`crops`.`id` = `price_history`.`crop_id`))) group by `price_history`.`crop_id`;

-- --------------------------------------------------------

--
-- Structure for view `crop_whole2`
--
DROP TABLE IF EXISTS `crop_whole2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crop_whole2` AS select max(year(`price_history`.`add_date`)) AS `year`,max(month(`price_history`.`add_date`)) AS `month`,max(dayofmonth(`price_history`.`add_date`)) AS `day`,max(`price_history`.`higher`) AS `higher`,min(`price_history`.`lower`) AS `lower`,`price_history`.`crop_id` AS `crop_id`,`price_history`.`id` AS `id`,`price_history`.`status` AS `status`,`crops`.`wholesale` AS `wholesale`,`crops`.`category` AS `category`,`crops`.`unit` AS `unit`,`location`.`id` AS `location_id`,`district`.`region_id` AS `region_id`,`region`.`name` AS `region`,`location`.`name` AS `location`,`crops`.`name` AS `crop` from ((((`price_history` join `location` on(((`location`.`id` = `price_history`.`location_id`) and (`price_history`.`wholesale` = 1)))) join `crops` on((`crops`.`id` = `price_history`.`crop_id`))) join `district` on((`location`.`id` = `district`.`id`))) join `region` on((`region`.`id` = `district`.`region_id`))) group by `district`.`region_id`,`price_history`.`crop_id`;

-- --------------------------------------------------------

--
-- Structure for view `crop_whole3`
--
DROP TABLE IF EXISTS `crop_whole3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `crop_whole3` AS select max(year(`price_history`.`add_date`)) AS `year`,max(month(`price_history`.`add_date`)) AS `month`,max(dayofmonth(`price_history`.`add_date`)) AS `day`,max(`price_history`.`higher`) AS `higher`,min(`price_history`.`lower`) AS `lower`,`price_history`.`crop_id` AS `crop_id`,`price_history`.`id` AS `id`,`price_history`.`status` AS `status`,`crops`.`wholesale` AS `wholesale`,`crops`.`category` AS `category`,`crops`.`unit` AS `unit`,`location`.`id` AS `location_id`,`district`.`region_id` AS `region_id`,`region`.`name` AS `region`,`location`.`name` AS `location`,`crops`.`name` AS `crop` from ((((`price_history` join `location` on(((`location`.`id` = `price_history`.`location_id`) and (`price_history`.`wholesale` = 1)))) join `crops` on((`crops`.`id` = `price_history`.`crop_id`))) join `district` on((`location`.`id` = `district`.`id`))) join `region` on((`region`.`id` = `district`.`region_id`))) group by `price_history`.`crop_id`,`location`.`id`;

-- --------------------------------------------------------

--
-- Structure for view `location`
--
DROP TABLE IF EXISTS `location`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `location` AS select `district`.`id` AS `id`,`district`.`name` AS `name` from `district` union select `region`.`id` AS `id`,`region`.`name` AS `name` from `region` union select `region_alt`.`id` AS `id`,`region_alt`.`name` AS `name` from `region_alt`;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crop`
--
ALTER TABLE `crop`
  ADD CONSTRAINT `crop_ibfk_1` FOREIGN KEY (`category`) REFERENCES `crop_cat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crop_ibfk_2` FOREIGN KEY (`unit`) REFERENCES `unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `district_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `famers_crops`
--
ALTER TABLE `famers_crops`
  ADD CONSTRAINT `famers_crops_ibfk_1` FOREIGN KEY (`famer_id`) REFERENCES `m_famers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `famers_crops_ibfk_2` FOREIGN KEY (`crop_id`) REFERENCES `crop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `price_history`
--
ALTER TABLE `price_history`
  ADD CONSTRAINT `price_history_ibfk_1` FOREIGN KEY (`crop_id`) REFERENCES `crop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;