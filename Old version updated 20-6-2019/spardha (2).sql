-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2018 at 06:17 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spardha`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE IF NOT EXISTS `dept` (
  `id` varchar(1) NOT NULL,
  `dept_name` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`id`, `dept_name`) VALUES
('1', 'ECE'),
('2', 'CSE'),
('3', 'IT'),
('4', 'CIV'),
('5', 'MEC'),
('6', 'EEE');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `name1` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `que` varchar(100) NOT NULL,
  `ans` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`name1`, `email`, `que`, `ans`) VALUES
('Anudeep', 'javvajikavyasri@gmail.com', 'ewrtyhefgdn', ''),
('', '', '', ''),
('kavya', 'javvajikavyasri@gmail.com', 'how are you\r\n', ''),
('', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `staff_id` varchar(5) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `code` varchar(8) NOT NULL,
  `staff_status` int(10) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`staff_id`, `first_name`, `last_name`, `phone_no`, `email_id`, `password`, `code`, `staff_status`) VALUES
('0000', 'admin', 'admin', '8179793084', 'kavyajavvaji@gmail.com', 'admin@123', '', 2),
('1111', 'apssdc', 'ap', '7013551442', 'kaki.adharsh362@gmail.com', 'Aa1@', 'asdfghjk', 1),
('1234', 'anudeep', 'dumpala', '9492863910', 'anudeepdumpala@gmail.com', 'Aa1@', 'abcdefgh', 1),
('5070', 'Adharsh', 'Kaki', '7036885116', 'kaki.adharsh15@gmail.com', 'Aa1@', 'abcdefgh', 0),
('5353', 'Ramya', 'gamini', '8500296348', 'ramyagamini3@gmail.com', 'Ra1@', 'asdfghjk', 1),
('6060', 'RaviTeja', 'Gullapudi', '9290063164', 'ravitejagullapudi@gmail.com', 'Rt1@', 'apssdcap', 0),
('7412', 'sri', 'javvaji', '7895821456', 'javvajikavyasri@gmail.com', 'Ks1@', 'himkavya', 0),
('8179', 'hasitha', 'javvaji1', '9248597312', 'kavyasri@gmail.com', 'Ha1@', 'asdfuiop', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sample_att`
--

CREATE TABLE IF NOT EXISTS `sample_att` (
  `roll` varchar(9) NOT NULL,
  `date` date DEFAULT NULL,
  `p1` varchar(3) DEFAULT NULL,
  `p2` varchar(3) DEFAULT NULL,
  `p3` varchar(3) DEFAULT NULL,
  `p4` varchar(3) DEFAULT NULL,
  `p5` varchar(3) DEFAULT NULL,
  `p6` varchar(3) DEFAULT NULL,
  `p7` varchar(3) DEFAULT NULL,
  `p8` varchar(3) DEFAULT NULL,
  `temp1` varchar(10) DEFAULT NULL,
  `temp2` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_att`
--

INSERT INTO `sample_att` (`roll`, `date`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `temp1`, `temp2`) VALUES
('160105001', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105002', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105003', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105004', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105005', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105006', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105007', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105008', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105009', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105010', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105011', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105012', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105013', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105014', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105015', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105016', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105017', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105018', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105019', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105020', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105021', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105022', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105023', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105024', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105025', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105026', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105027', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105028', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105029', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105030', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105031', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105032', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105033', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105034', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105035', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105036', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105037', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105038', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105039', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105040', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105041', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105042', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105043', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105044', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105045', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105046', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105047', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105048', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105049', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105050', '2018-12-14', 'abs', 'abs', 'abs', 'abs', NULL, NULL, NULL, NULL, NULL, NULL),
('160105051', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105052', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105053', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105054', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105055', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105056', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105057', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105059', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105060', '2018-12-14', 'pre', 'pre', 'pre', 'pre', NULL, NULL, NULL, NULL, NULL, NULL),
('160105001', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105002', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105003', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105004', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105005', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105006', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105007', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105008', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105009', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105010', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105011', '2018-12-15', 'abs', 'abs', 'abs', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105012', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105013', '2018-12-15', 'abs', 'abs', 'abs', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105014', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105015', '2018-12-15', 'abs', 'abs', 'abs', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105016', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105017', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105018', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105019', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105020', '2018-12-15', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105021', '2018-12-15', 'abs', 'abs', 'abs', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105022', '2018-12-15', 'abs', 'abs', 'abs', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105023', '2018-12-15', 'abs', 'abs', 'abs', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105024', '2018-12-15', 'abs', 'abs', 'abs', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105025', '2018-12-15', 'abs', 'abs', 'abs', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105026', '2018-12-15', 'abs', 'abs', 'abs', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105027', '2018-12-15', 'abs', 'abs', 'abs', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105028', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105029', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105030', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105031', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105032', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105033', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105034', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105035', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105036', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105037', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105038', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105039', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105040', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105041', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105042', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105043', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105044', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105045', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105046', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105047', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105048', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105049', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105050', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105051', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105052', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105053', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105054', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105055', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105056', '2018-12-15', 'pre', 'pre', 'pre', 'abs', 'abs', 'abs', 'abs', 'abs', NULL, NULL),
('160105057', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105059', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105060', '2018-12-15', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', 'pre', NULL, NULL),
('160105121', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105122', '2018-12-15', 'abs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105123', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105124', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105125', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105126', '2018-12-15', 'abs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105127', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105128', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105129', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105130', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105131', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105133', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105134', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105135', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105136', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105137', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105138', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105139', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105140', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105141', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105142', '2018-12-15', 'abs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105143', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105144', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105145', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105146', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105147', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105148', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105149', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105151', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105152', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105153', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105154', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105155', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105156', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105157', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105158', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105159', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105160', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105161', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105162', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105163', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105164', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105165', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105166', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105167', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105168', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105169', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105171', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105172', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105173', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105174', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105175', '2018-12-15', 'abs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105176', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105177', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105178', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('160105179', '2018-12-15', 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_profile`
--

CREATE TABLE IF NOT EXISTS `student_profile` (
  `Reg_no` varchar(63) NOT NULL,
  `Email` varchar(34) DEFAULT NULL,
  `First_Name` varchar(36) DEFAULT NULL,
  `Last_Name` varchar(16) DEFAULT NULL,
  `Branch` varchar(1) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Mobile_Number` varchar(13) DEFAULT NULL,
  `Date_Of_Birth` varchar(76) DEFAULT NULL,
  `College` varchar(42) DEFAULT NULL,
  `section` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_profile`
--

INSERT INTO `student_profile` (`Reg_no`, `Email`, `First_Name`, `Last_Name`, `Branch`, `Gender`, `Mobile_Number`, `Date_Of_Birth`, `College`, `section`) VALUES
('160105001', 'abburuvedasri@gmail.com', 'VENKATA VEDA SRI', 'ABBURU', '3', 'Female', '9110545162', '08/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105002', 'chandana.nani999@gmail.com', 'DEVI CHANDANA', 'ADABALA', '3', 'Female', '7997760577', '05/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105003', 'sreeadabala999saa@gmail.com', ' SREE', 'ADABALA', '3', 'Female', '9494317539', '11/09/1997', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105004', 'vamsiaddala009@gmail.com', 'VAMSI MANICKYA RATNA SURYA PHANINDRA', 'ADDALA', '3', 'Male', '9492546466', '09/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105005', 'sushmavarma333@gmail.com', 'SUSHMA', 'ADDEPALLI', '3', 'Female', '9494687537', '07/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105006', 'saikiranatr@gmail.com', 'TARAKA RAMA SAIKIRAN', 'ADURI', '3', 'Male', '9666557514', '31/07/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105007', 'pavankumarpolumati279@gmail.com', 'SAI SURYA TEJA', 'AKASAM', '3', 'Male', '9705238659', '08/04/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105008', 'alluri.sowmya@yahoo.com', 'JAYA SOUMYA BHARATHI', 'ALLURI', '3', 'Female', '9963966667', '03/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105009', 'allurianvitha@gmail.com', 'LAKSHMI ANVITHA', 'ALLURI', '3', 'Female', '9912928222', '20/03/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105010', 'aneelasrijahna@gmail.com', 'JAHNA SRI ANEELA', 'ANKAM', '3', 'Female', '8106326004', '21/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105011', 'navyasriasapu@gmail.com', 'NAVYASRI MARUTI RAJESWARI', 'ASAPU', '3', 'Female', '7337283253', '25/05/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105012', 'suryathejaavidi@gmail.com', 'SURYA TEJA', 'AVIDI', '3', 'Male', '9642075189', '12/01/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105013', 'badirammohan129@gmail.com', ' RAMMOHAN NAIDU', 'BADI', '3', 'Male', '9640505114', '12/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105014', 'revanthbale144@gmail.com', 'REVANTH', 'BALE', '3', 'Male', '9553747037', '20/12/2017', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105015', 'sunnybale22@gmail.com', ' SUNNY', 'BALE', '3', 'Male', '9553023777', '29/06/1997', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105016', 'tejabsr225@gmail.com', 'SEETHA RAM TEJA', 'BALLA', '3', 'Male', '9010756129', '19/05/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105017', 'nagarajuballa017@gmail.com', 'SRI NAGA MANIKANTESWARA RAO', 'BALLA', '3', 'Male', '9705453621', '27/04/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105018', 'Praveenbantupalli9@gmail.com', 'PRAVEEN BABU', 'BANTUPALLi', '3', 'Male', '7997272761', '06/03/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105019', 'jonathan.bathula12@gmail.com', 'JONATHAN', 'BATHULA', '3', 'Male', '9618680820', '01/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105020', 'bhjahnavi555@gmail.com', 'Lakshmi jahnavi', 'Bhupathiraju', '3', 'Female', '9704946611', '21/09/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105021', 'sravani.bhupathiraju19@gmail.com', 'SRAVANI', 'BHUPATHIRAJU ', '3', 'Female', '9948971777', '19/02/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105022', 'vijithabobba@gmail.com', 'VIJITA SAGARI', 'BOBBA', '3', 'Female', '9573666559', '24/08/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105023', 'satyavanibobbadi@gmail.com', 'SATYAVANI', 'BOBBADI', '3', 'Female', '7997906430', '14-10-1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105024', 'krishanbodepu@gmail.com', 'LEELA VYSHNAV KRISHNA', 'BODEPU', '3', 'Male', '8919389434', '14/08/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105025', 'hemalathabokka99@gmail.com', 'HEMALATHA', 'BOKKA', '3', 'Female', '8897614196', '26/09/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105026', 'shashankbonam@gmail.com', 'BONAM', 'SHASHANK', '3', 'Male', '9666466541', '19/02/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105027', 'royr74344@gmail.com', 'RAHUL', 'BUNGA', '3', 'Male', '7285984925', '07/01/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105028', 'charanchandu6876@gmail.com', 'SRI CHARAN', 'CHEEPULLA', '3', 'Male', '9848566772', '10/02/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105029', 'Varmagayathri8@gmail.com', 'GAYATHRI ', 'CHEKURU', '3', 'Female', '7989131587', '26/11/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105030', 'chetterahul77@gmail.com', 'RAHUL TEJA', 'CHETTE', '3', 'Male', '9949794970', '06/09/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105031', 'chillamadhulika@gmail.com', 'MADHULIKA', 'CHILLA', '3', 'Female', '8125833480', '14/11/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105032', 'pavankumar55550@gmail.com', 'PAVAN KUMAR', 'CHINAMANAGONDA', '3', 'Male', '9492634351', '26/07/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105033', 'mounikachintalapati@gmail.com', 'MOUNIKA SRI', 'CHINTALAPATI', '3', 'Female', '7989683842', '22/10/1997', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105034', 'harshinivarma963@gmail.com', 'VENKATA RAMYA HARSHINI', 'CHINTALAPATI', '3', 'Female', '9701664772', '10/11/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105035', 'jhanuchintalapudi@gmail.com', 'JHANSI SIMHA KRISHNA SIRISHA', 'CHINTALAPUDI', '3', 'Female', '9494436939', '02/08/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105036', 'lavanyachintalapudi1@gmail.com', 'LAVANYA ', 'CHINTALAPUDI', '3', 'Female', '8185053532', '08/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105037', 'desarajurajeshanand@gmail.com', 'RAJESH ANAND', 'DESARAJU', '3', 'Male', '8500139919', '22/09/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105038', 'bhanu.madhuri1314667@gmail.com', 'BHANU', 'DANTHULURI', '3', 'Female', '9866655554', '13/11/2017', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105039', 'ananyavarma29@gmail.com', 'ANANYA VARMA ', 'DANTULURI ', '3', 'Female', '9866643996', '29/06/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105040', 'harivarma900@gmail.com', 'DANTULURI HARI KRISHNA', 'VARMA', '3', 'Male', '9676770974', '19/08/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105041', 'akhilhenry1@gmail.com', 'AKHIL', 'DASARI', '3', 'Male', '7793988043', '27/04/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105042', 'sailesh1438@gmail.com', 'OMSAILESH', 'DASARI', '3', 'Male', '7286964289', '02/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105043', 'dkkv0000@gmail.com', 'KARUN KUMAR VARMA', 'DATLA', '3', 'Male', '9492742927', '12/01/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105044', 'bhavanadesu10@gmail.com', 'BHAVANA', 'DESU', '3', 'Female', '9290114117', '07/10/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105045', 'vasavi0999@email.com', 'VASAVI ', 'DEVARA', '3', 'Female', '9394665999', '28/12/1997', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105046', 'saijagannadh99@gmail.com', 'SAI SATYA JAGANNADH', 'DODDIPATLA ', '3', 'Male', '9063861019', '25/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105047', 'chaitucheguvera@gmail.com', 'CHAITANYA', 'DOSAPATI', '3', 'Male', '8919712331', '20/02/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105048', 'venkatabramarambikadude@gmail.com', 'VENKATA BRAMARAMBA', 'DUDE', '3', 'Female', '9505549746', '17/12/1997', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105049', 'anudeepdumpala@gmail.com', 'VENKATA ANUDEEP', 'DUMPALA', '3', 'Male', '9492863910', '16/09/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105050', 'sruthiedha@gmail.com', 'SRUTHI', 'EDA', '3', 'Female', '7993392258', '28/02/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105051', 'chandueeli143@gmail.com', 'CHANDU', 'EELI', '3', 'Male', '9908844961', '23/10/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105052', 'lalithagadiraju9999@gmail.com', 'LALITHA MAHALAKSHMI', 'GADIRAJU', '3', 'Female', '9550723289', '29/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105053', 'ramyagamini3@gmail.com', 'SRI RAMYA', 'GAMINI', '3', 'Female', '9059445298', '28/08/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105054', 'krishnavenigandham54@gmail.com', 'KRISHNA VENI', 'GANDHAM', '3', 'Female', '9948934177', '07/12/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105055', 'praseedadevi.gandi688@gmail.com', 'PRASEEDA DEVI', 'GANDI', '3', 'Female', '8886321688', '05/07/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105056', 'gdevisrujanammd57@gmail.com', 'DEVI SRUJANA', 'GANJA', '3', 'Female', '8186981334', '11/08/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105057', 'gashokteja1998@gmail.com', 'ASHOK', 'GORRELA', '3', 'Male', '9573193558', '01/07/1997', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105059', 'gssiswarya9@gmail.com', 'SAI SREE ISWARYA ', 'GOTTUMUKKULA ', '3', 'Female', '9542335594', '27/08/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105060', 'ravitejagullapudi@gmail.com', 'VENKATA RAVITEJA', 'GULLAPUDI', '3', 'Male', '7997272762', '11/07/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'A'),
('160105061', 'samyu2951@gmail.com', 'SAMYUKTHA', 'GUMMALLA', '3', 'Female', '7095773229', '09/07/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105063', 'vyshnavi.gurram11@gmail.com', 'VAISHNAVI', 'GURRAM', '3', 'Female', '9912649004', '06/11/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105066', 'javvajikavyasri@gmail.com', 'KAVYA SRI LALITHA', 'JAVVAJI', '3', 'Female', '8179793084', '02/10/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105067', 'anushajonnakuti77@gmail.com', 'ANUSHA ', 'JONNAKUTI ', '3', 'Female', '9059383749', '25/05/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105068', 'harikajujjavarapu@gmail.com', 'NIHARIKA', 'JUJJAVARAPU', '3', 'Female', '9133468339', '10/11/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105070', 'kaki.adharsh362@gmail.com', 'ADHARSH', 'KAKI', '3', 'Male', '7036885116', '15/08/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105071', 'Sivaphaneendrakalidindi@gmail.com', 'Sivaphaneendra ', 'Kalidindi ', '3', 'Male', '9949624821', '19/05/2017', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105072', 'vijayarenuka179@gmail.com', 'VIJAYA RENUKA', 'KALIDINDI ', '3', 'Female', '9951701597', '19/04/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105073', 'kscuben@gmail.com', 'SATYASAI NAGA SANTOSH SRINIVAS', 'KAMBHMAPATI', '3', 'Male', '9133489975', '16/02/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105076', 'harikanumurisrh@gmail.com', 'HARI BABU', 'KANUMURI', '3', 'Male', '7893059395', '07/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105077', 'hemanthsmarty143123@gmail.com', 'HEMANTH BABU', 'KARNIYANA', '3', 'Male', '9440779012', '03/01/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105079', 'kvsaikrishna1234@gmail.com', 'Venkata Sai Krishna', 'Karumuri', '3', 'Male', '7013322021', '23/12/2017', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105080', 'katikireddybhargavi1999@gmail.com', 'KATIKIREDDY SAI BHARGAVI', 'BHARGAVI', '3', 'Female', '8497937788', '12/11/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105081', 'rockyblaze10@gmail.com', 'KRISHNA CHAITANYA', 'KATTA', '3', 'Male', '9502540264', '25/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105082', 'saikirankatta10@gmail.com', 'SAI KIRAN', 'KATTA', '3', 'Male', '9666421477', '10/04/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105086', 'satya99888@gmail.com', 'MOHANA LAKSHMI DURGA', 'KOPPINEEDI', '3', 'Female', '9515831399', '10/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105087', 'chandukothapalli009@gmail.com', 'CHANDU', 'KOTHAPALLI', '3', 'Male', '8499081564', '09/05/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105088', 'priyanka.kotla999@gmail.com', 'PRIYANKA', 'KOTLA', '3', 'Female', '8184888942', '23/07/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105089', 'vinaytoney6@gmail.com', 'VINAY KUMAR', 'KOURU', '3', 'Male', '9603259665', '28/04/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105090', 'seshukovvuri123@gmail.com', 'SESHU', 'KOVVURI', '3', 'Female', '7731036226', '10/08/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105092', 'sarikakuraganti5@gmail.com', 'SARIKA', 'KURAGANTI', '3', 'Female', '9951899477', '03/01/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105094', 'deepikamaddu1999@gmail.com', 'DEEPIKA ', 'MADDU ', '3', 'Female', '8106450653', '01/04/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105095', 'sugnanimaddukuri@gmail.com', 'SUGNANI', 'MADDUKURI', '3', 'Female', '9133408489', '05/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105096', 'renurenuka413@gmail.com', 'RENUKA', 'MADETI', '3', 'Female', '9533881118', '13/04/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105097', 'navyasrimandavilli333@gmail.com', 'RATNA NAVYA SRI ', 'MANDAVILLI ', '3', 'Female', '9912263988', '01/09/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105098', 'manneswapna02@gmail.com', 'SWAPNA', 'MANNE', '3', 'Female', '9666712350', '15/06/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105100', 'mkavyavarma@gmail.com', 'SRI KAVYA', 'MANTENA', '3', 'Female', '8639031349', '05/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105101', 'miriyala123krishna@gmail.com', 'SRI KRISHNA CHAITANYA', 'MIRIYALA', '3', 'Male', '9133707095', '31/10/2017', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105102', 'sharmilabegummohammad786@gmail.com', 'SHARMILA BEGUM', 'MOHAMMAD', '3', 'Female', '8897693833', '27/07/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105104', 'chandinimudunuri3520@gamil.com', 'CHANDINI', 'MUDUNURI', '3', 'Female', '7981455114', '27/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105105', 'gnanadeepika98@gmail.com', 'JNANA DEEPIKA', 'MUKKU', '3', 'Female', '8466895639', '12/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105106', 'pradeepthimusinada@gmail.com', 'PRADEEPTHI', 'MUSINADA', '3', 'Female', '9515904338', '25/05/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105107', 'nadipalli.ramadevi@gmail.com', 'NADIPALLI', 'RAMADEVI', '3', 'Female', '7989384682', '06/02/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105109', 'rajinichowdary109@gmail.com', 'RAJANI', 'NALLA', '3', 'Female', '7995613213', '18/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105110', 'layanallaparaju3@gmail.com', 'LAYA SAI', 'NALLAPARAJU', '3', 'Female', '8143745818', '28/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105111', 'sirisha.nalli99@gmail.com', 'SIRISHA', 'NALLI ', '3', 'Female', '7093017758', '22/08/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105112', 'ravikiran.nandula@gmail.com', 'RAVI KIRAN', 'NANDULA', '3', 'Male', '9030459679', '26/09/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105113', 'roshinivijaykumar1999@gmail.com', 'ROSHINI', 'NARAHARISETTI', '3', 'Female', '9010338885', '31/07/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105114', 'saibhavana.narsipalli@gmail.com', 'SAI BHAVANA', 'NARSIPALLI', '3', 'Female', '9959963091', '01/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105115', 'nagasree.nasika@gmail.com', 'NAGASREE ', 'NASIKA', '3', 'Female', '7337037824', '26/09/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105116', 'chandini.neredumalli@gmail.com', 'CHANDINI', 'NEREDIMELLI', '3', 'Female', '8500117665', '28/06/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105117', 'renuka.nukala1@gmail.com', 'RENUKA', 'NUKALA', '3', 'Female', '8985986582', '07/02/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105118', 'niharikasrinivas1998@gmail.com', 'VENKATA SIVA TANUJA NIHARIKA', 'PACHIPULUSU', '3', 'Female', '9951492945', '16/09/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105119', 'savyasachi999@gmail.com', 'SREE SAVYASACHI', 'PADALA', '3', 'Male', '9177634326', '05/07/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'B'),
('160105120', 'harshapriya3339866@gmail.com', 'HARSHA PRIYA', 'PALA', '3', 'Female', '9866106599', '08/02/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', ''),
('160105121', 'lawrencepalle@gmail.com', 'LAWRENCE', 'PALLE', '3', 'Male', '9573896318', '15/10/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105122', 'pavani91007@gmail.com', 'PAVANI', 'PANDI', '3', 'Female', '9100751899', '04/01/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105123', 'ravisankarparuchuri@gmail.Com', 'PARUCHURI', 'RAJA RAVI SANKAR', '3', 'Male', '9959646341', '14/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105124', 'madhuripasumarthi311@gmail.com', 'NAGA MADHURI ', 'PASUMARTHI ', '3', 'Female', '9491202935', '11/03/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105125', 'divyapatchala@gmail.com', 'DIVYASRI', 'PATCHALA', '3', 'Female', '8096935165', '07/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105126', 'lalitha.varma600@gmail.com', 'LALITHA', 'PATCHAMATLA', '3', 'Female', '8688844667', '31/08/2017', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105127', 'sundeeppedapati@gmail.com', 'SANDEEP', 'PEDAPATI', '3', 'Male', '8790394241', '21/01/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105128', 'gayatrip9599@gmail.com', 'GAYATRI', 'PENMETSA', '3', 'Female', '9010419453', '09/05/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105129', 'jahnavivarma33339@gmail.com', 'JAHNAVI', 'PENMETSA', '3', 'Female', '9391933339', '14/03/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105130', 'perisettijayavani369@gmail.com', 'RAMYA KUSUMA KUMARI', 'PERISETTI', '3', 'Female', '9966067199', '22/09/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105131', 'sravaniperumalla27@gmail.com', 'MADHU SRAVANI', 'PERUMALLA', '3', 'Female', '8186079477', '27/07/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105133', 'lakshmipinnika99@gmail.com', 'LAKSHMI', 'PINNIKA', '3', 'Female', '7981916311', '28/01/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105134', 'ponna.pooja@gmail.com', 'POOJA', 'PONNA', '3', 'Female', '7095071249', '13/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105135', 'posetty.prudvisai@gmail.com', 'PRUDVI SAI', 'POSETTY', '3', 'Male', '8985248737', '04/06/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105136', 'ananthapothuraju1999@gmail.com', 'ANANTHA LAKSHMI', 'POTHURAJU', '3', 'Female', '8464080218', '08/03/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105137', 'dileeppotnuri666@gmail.com', 'DILEEP CHAKRAVARTHI', 'POTNURI', '3', 'Male', '9866523429', '13/12/2017', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105138', 'lalithaapuppala@gmail.com', 'LALITHA', 'PUPPALA', '3', 'Female', '9100662306', '03/02/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105139', 'rakeshpuppala2591@gmail.com', 'RAKESH', 'PUPPALA', '3', 'Male', '9160771714', '30/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105140', 'sureshkumarpsk123@gmail.com', 'SURESH KUMAR ', 'PUPPALA', '3', 'Male', '7093666939', '16/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105141', 'lalithapusarla98@gmail.com', 'LALITHA', 'PUSARLA', '3', 'Female', '7569201982', '07/08/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105142', 'shanmukhravilisetty35@gmail.com', 'R SAI VENKATA', 'SHANMUKH', '3', 'Male', '9505165621', '15/11/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105143', 'lovarajurongala07@gmail.com', 'LOVARAJU', 'RONGALA', '3', 'Male', '7893867087', '08/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105144', 'vrowthu@gmail.com', 'VAMSI', 'ROWTHU ', '3', 'Male', '7287874997', '21/12/2017', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105145', 'sravanisagi123@gmail.com', 'SRAVANA MAHALAKSHMI', 'SAGI', '3', 'Female', '9348113399', '04/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105146', 'sagideepak0@gmail.com', 'SRI.SAI.DEEPAK', 'SAGI', '3', 'Male', '9618382829', '29/05/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105147', 'sagirajusahithi@gmail.com', 'LAKSHMI SAHITHI', 'SAGIRAJU', '3', 'Female', '8185004995', '23/09/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105148', 'sravyasagiraju279@gmail.com', 'THANUJA VENAKATA SRAVYA', 'SAGIRAJU ', '3', 'Female', '7286971795', '02/05/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105149', 'jyothirmai.sanam@gmail.com', 'SANAM S L P SAI JYOTHIRMAI', 'SANAM ', '3', 'Female', '9515317995', '22/09/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105151', 'shaikrashid676@gmail.com', 'RASHEED', 'SHAIK', '3', 'Male', '9989919665', '22/05/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105152', 'farishaik555@gmail.com', 'FARZANA', 'SHAIK', '3', 'Female', '9550791069', '06/08/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105153', 'rafisalmashaik21@gmail.com', 'RAFISALMA', 'SHAIK', '3', 'Female', '9133777979', '21/06/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105154', 'rroshanshaik59@gmail.com', 'ROSHAN JAMEER', 'SHAIK', '3', 'Male', '9494022969', '29/07/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105155', 'likithasurapaneni00@gmail.com', 'LIKITHA', 'SURAPANI', '3', 'Female', '7995966122', '09/09/2017', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105156', 'suvvari.teja999@gmail.com', 'TEJA', 'SUVVARI', '3', 'Male', '9581191329', '08/03/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105157', 'raghunaveen59@gmail.com', 'Raghu', 'Naveeen', '3', 'Male', '9966642515', '21/08/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105158', 'priyatelugu11@gmail.com', 'HIMABINDU', 'TELUGU', '3', 'Female', '7075003730', '09/11/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105159', 'gayatrivarma6666@gmail.com', 'GAYATRI', 'THOTAKURA', '3', 'Female', '9912636666', '30/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105160', 'thumpatijahnavi@gmail.com', 'JAHNAVI', 'THUMPATI', '3', 'Female', '7981042344', '18/08/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105161', 'trirumalasubhashini@gmail.com', 'SUBHASHINI', 'TIRUMALA', '3', 'Female', '9908155424', '13/04/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105162', 'kowshikth12@gmail.com', 'SAI BALAJI KOWSHIK', 'TUMMALAPALLI', '3', 'Male', '7013133645', '12/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105163', 'gowthamsunny2@gmail.com', 'Gowtham', 'Tummalapenta', '3', 'Male', '9393855567', '16/02/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105164', 'vakalapudilakshman1@gmail.com', 'LAKSHMAN', 'VAKALAPUDI', '3', 'Male', '9963401001', '23/01/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105165', 'krupavardhanapu165@gmail.com', 'KRUPA MANI', 'VARDHANAPU', '3', 'Female', '7995976678', '10/02/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105166', 'bhargavisaivatsavai3@gmail.com', 'BHARGAVI SAI', 'VATSAVAI', '3', 'Female', '9666756722', '23/11/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105167', 'amaresh.vattikuti@gmail.com', 'AMARESH', 'VATTIKUTI', '3', 'Male', '8143233481', '11/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105168', 'rupaveeragummula7@gmail.com', 'RUPA', 'VEERAGUMMULA', '3', 'Female', '9908004016', '28/10/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105169', 'ushasreev03@gmail.com', 'USHASRI', 'VEERAMASU', '3', 'Female', '9492713258', '03/12/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105171', 'neelima.vegesna03@gmail.com', 'NEELIMA', 'VEGESNA', '3', 'Female', '8247467662', '02/04/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105172', 'tejaswini.vegesna1928@gmail.com', 'Tejaswini Venkata Phani ', 'VEGESNA', '3', 'Female', '9912722224', '28/05/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105173', 'venuvarma.v007@gmail.com', 'VENU GOPAL HANUMANTH VARMA', 'VEGESNA', '3', 'Male', '9542899997', '28/08/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105174', 'milin9398@gmail.com', 'MILIN', 'VELEPARAMPIL', '3', 'Female', '8096975783', '09/03/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105175', 'iamkiranvinnakota@gmail.com', 'SAI VENKAT KIRAN BABU ', 'VINNAKOTA ', '3', 'Male', '8309497124', '24/07/1998', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105176', 'sreelekhayaga99@gmail.com', 'SREELEKHA', 'YAGA', '3', 'Female', '9100885867', '22/01/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105177', 'mohidhar1999@gmail.com', 'Mohidhar', 'Yalavarthi', '3', 'Male', '8185036467', '06/01/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105178', 'yshyamchowdhary96@gmail.com', 'Shyam', 'Prasad', '3', 'Male', '7036019239', '06/07/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105179', 'chowdaryeswar.999@gmail.com', 'ESWAR SRI SAI NAGENDRA CHOWDARY', 'YELLINA', '3', 'Male', '8125252561', '09/07/2017', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', 'C'),
('160105180', 'satyayenumula534@gmail.com', 'SATYA GRUHALAKSHMI', 'YENUMULA', '3', 'Female', '9515784987', '18/06/1999', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', ''),
('160105181', 'nireekshan1@yahoo.in', 'NIREEKSHANA RAO', 'TADEPALLI', '3', 'Male', '8125030719', '11/03/1997', 'SAGI RAMAKRISHNAM RAJU ENGINEERING COLLEGE', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
