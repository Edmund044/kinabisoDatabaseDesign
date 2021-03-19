-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 08:27 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinabiso`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ask`
--

CREATE TABLE `ask` (
  `ASK_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PHOTO` varchar(225) NOT NULL,
  `CATEGORY` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PRICE` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `biz`
--

CREATE TABLE `biz` (
  `id` int(11) NOT NULL,
  `bname` varchar(50) NOT NULL,
  `psname` varchar(50) NOT NULL,
  `bpics` varchar(225) NOT NULL,
  `blocation` varchar(255) NOT NULL,
  `bphone` int(255) NOT NULL,
  `bprice` int(11) NOT NULL,
  `offer` varchar(50) NOT NULL,
  `shout` varchar(225) NOT NULL,
  `pic` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand_followers`
--

CREATE TABLE `brand_followers` (
  `id` int(255) NOT NULL,
  `user` int(255) NOT NULL,
  `brand` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `FAQ_ID` int(11) NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  `BODY` varchar(3025) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `DATEPOSTED` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `financial_transactions`
--

CREATE TABLE `financial_transactions` (
  `id` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `signatory` varchar(255) NOT NULL,
  `signatory_id` int(255) NOT NULL,
  `fromm` int(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `recipient_id` int(255) NOT NULL,
  `finacial_evidence` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myusers`
--

CREATE TABLE `myusers` (
  `USER_ID` int(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PHOTO` varchar(225) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `LOCATION` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paying_clinets`
--

CREATE TABLE `paying_clinets` (
  `id` int(255) NOT NULL,
  `b_id` int(255) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `placed_orders`
--

CREATE TABLE `placed_orders` (
  `id` int(255) NOT NULL,
  `productId` int(255) NOT NULL,
  `kinabiso_user` varchar(255) NOT NULL,
  `kinabiso_user_phone` varchar(255) NOT NULL,
  `kinabiso_user_email` varchar(255) NOT NULL,
  `influencerName` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `colors` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `day` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `LIST_ID` int(255) NOT NULL,
  `BNAME` varchar(100) NOT NULL,
  `BPIC` varchar(225) NOT NULL,
  `BLOCATION` varchar(1000) NOT NULL,
  `VIEWS` varchar(225) NOT NULL,
  `USER_ID` int(255) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `CAT` varchar(255) NOT NULL,
  `DATE` varchar(255) NOT NULL,
  `BCONTACTS` varchar(255) NOT NULL,
  `BPRICE` varchar(255) NOT NULL,
  `BDES` varchar(1000) NOT NULL,
  `PNAME` varchar(255) NOT NULL,
  `DAY` varchar(255) NOT NULL,
  `MONTH` varchar(255) NOT NULL,
  `YEAR` varchar(255) NOT NULL,
  `B_ID` int(255) NOT NULL,
  `TYPE` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_interests`
--

CREATE TABLE `user_interests` (
  `id` int(255) NOT NULL,
  `USER_ID` int(255) NOT NULL,
  `PLACE` varchar(255) NOT NULL,
  `PRODUCT_CATEGORY` varchar(255) NOT NULL,
  `PRODUCT_ID` int(255) NOT NULL,
  `WAS` int(11) NOT NULL,
  `NOW` int(11) NOT NULL,
  `SAVE` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
