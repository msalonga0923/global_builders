-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 16, 2019 at 04:57 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pqf_global_builders`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_type`
--

DROP TABLE IF EXISTS `client_type`;
CREATE TABLE IF NOT EXISTS `client_type` (
  `clientId` int(11) NOT NULL,
  `ref_num` int(11) DEFAULT NULL,
  `stastus` varchar(100) NOT NULL,
  PRIMARY KEY (`clientId`),
  KEY `ref_num` (`ref_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `com_assess`
--

DROP TABLE IF EXISTS `com_assess`;
CREATE TABLE IF NOT EXISTS `com_assess` (
  `com_id` int(11) NOT NULL,
  `ref_num` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `q_lvl` varchar(100) NOT NULL,
  `in_sec` varchar(100) NOT NULL,
  `cert_num` int(11) NOT NULL,
  `date_issue` varchar(100) NOT NULL,
  `ex_date` varchar(100) NOT NULL,
  PRIMARY KEY (`com_id`),
  KEY `ref_num` (`ref_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `db_person`
--

DROP TABLE IF EXISTS `db_person`;
CREATE TABLE IF NOT EXISTS `db_person` (
  `ref_num` int(50) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `middleName` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `brgy` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `zip code` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `contact_num` varchar(50) NOT NULL,
  `educ_attain` varchar(50) NOT NULL,
  `employment_status` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `license_exam` varchar(100) NOT NULL,
  `uli` int(11) DEFAULT NULL,
  PRIMARY KEY (`ref_num`),
  UNIQUE KEY `uli` (`uli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `li_passed`
--

DROP TABLE IF EXISTS `li_passed`;
CREATE TABLE IF NOT EXISTS `li_passed` (
  `li_id` int(11) NOT NULL,
  `ref_num` int(11) DEFAULT NULL,
  `yr_taken` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `rating` float NOT NULL,
  `conducted_by` varchar(100) NOT NULL,
  `ex_date` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`li_id`),
  KEY `ref_num` (`ref_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_quali`
--

DROP TABLE IF EXISTS `p_quali`;
CREATE TABLE IF NOT EXISTS `p_quali` (
  `quali_id` int(11) NOT NULL,
  `ref_num` int(11) DEFAULT NULL,
  `company` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `inclusion_dates` varchar(100) NOT NULL,
  `salary` int(11) NOT NULL,
  `ex_status` varchar(100) NOT NULL,
  `num_ex` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`quali_id`),
  KEY `ref_num` (`ref_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_attend`
--

DROP TABLE IF EXISTS `sem_attend`;
CREATE TABLE IF NOT EXISTS `sem_attend` (
  `sem_id` int(11) NOT NULL,
  `ref_num` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `inclusion_dates` varchar(100) NOT NULL,
  `num_hours` int(11) NOT NULL,
  `conducted_by` varchar(100) NOT NULL,
  PRIMARY KEY (`sem_id`),
  KEY `ref_num` (`ref_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
