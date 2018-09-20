-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306

-- Generation Time: Nov 24, 2015 at 04:05 PM
-- Server version: 5.5.33
-- PHP Version: 5.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `complain_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complains`
--

CREATE TABLE `tbl_complains` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `cust_id` int(10) NOT NULL,
  `cust_name` varchar(40) NOT NULL,
  `comp_type` varchar(40) NOT NULL,
  `comp_title` varchar(200) NOT NULL,
  `comp_desc` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `eng_id` int(10) NOT NULL,
  `eng_name` varchar(40) NOT NULL,
  `eng_comment` varchar(240) NOT NULL,
  `create_date` datetime NOT NULL,
  `close_date` datetime NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_complains`
--

INSERT INTO `tbl_complains` (`cid`, `cust_id`, `cust_name`, `comp_type`, `comp_title`, `comp_desc`, `status`, `eng_id`, `eng_name`, `eng_comment`, `create_date`, `close_date`) VALUES
(12, 7, 'A', 'printer', 'Paper has stuck inside', 'a paper has stuck inside the printer of room r0209. it has stop working.', 'working', 7, 'EA', 'Working on it', '2015-11-24 20:06:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `cname` varchar(40) NOT NULL,
  `cpass` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `c_mobile` varchar(15) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cid`, `cname`, `cpass`, `address`, `email`, `c_mobile`, `date_time`) VALUES
(10, 'D', 'd123', 'Farm Gate', 'd@complain.ac.bd', '54761235894', '2015-11-24 20:17:05'),
(8, 'B', 'b123', 'mohakhali', 'b@complain.ac.bd', '45621478546', '2015-11-24 20:15:10'),
(9, 'C', 'c123', 'Gulshan', 'c@complain.ac.bd', '47854697543', '2015-11-24 20:15:59'),
(7, 'A', 'a123', 'a to z', 'a@complain.ac.bd', '01122334574', '2015-11-24 19:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_engineer`
--

CREATE TABLE `tbl_engineer` (
  `eid` int(10) NOT NULL AUTO_INCREMENT,
  `ename` varchar(40) NOT NULL,
  `epass` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(40) NOT NULL,
  `e_mobile` varchar(20) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_engineer`
--

INSERT INTO `tbl_engineer` (`eid`, `ename`, `epass`, `address`, `email`, `e_mobile`, `date_time`) VALUES
(7, 'EA', 'ea123', 'Mohakhali', 'ea@complain.ac.bd', '02456789654', '2015-11-24 20:01:10'),
(8, 'EB', 'eb123', 'Banani', 'eb@complain.ac.bd', '54698721578', '2015-11-24 20:08:20'),
(9, 'EC', 'ec123', 'Mogbazar', 'ec@complain.ac.bd', '52134685726', '2015-11-24 20:18:12'),
(10, 'ED', 'ed123', 'Khilkhet', 'ed@complain.ac.bd', '46257316482', '2015-11-24 20:19:21');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
