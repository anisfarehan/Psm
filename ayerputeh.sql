-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2017 at 09:40 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ayerputeh`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktiviti`
--

CREATE TABLE IF NOT EXISTS `aktiviti` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `aktivitinama` varchar(200) NOT NULL,
  `tarikh` date NOT NULL,
  `huraian` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `final`
--

CREATE TABLE IF NOT EXISTS `final` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `subjek_id` int(20) NOT NULL,
  `jumlah` decimal(50,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `gurunama` varchar(100) NOT NULL,
  `no_ic` int(12) NOT NULL,
  `subjek_id` int(200) NOT NULL,
  `kelas_id` int(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `gurunama`, `no_ic`, `subjek_id`, `kelas_id`) VALUES
(1, 'Faridah', 902222, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `kelasnama` varchar(20) NOT NULL,
  `guru_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelasnama`, `guru_id`) VALUES
(1, 'Arif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_ic` int(12) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `number_ic`, `password`, `status`) VALUES
(1, 9303, 'anis', 'guru');

-- --------------------------------------------------------

--
-- Table structure for table `pelajar`
--

CREATE TABLE IF NOT EXISTS `pelajar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pelajarnama` varchar(200) NOT NULL,
  `no_ic` varchar(12) NOT NULL,
  `namaibu` varchar(200) NOT NULL,
  `namabapa` varchar(200) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `warganegara` varchar(20) NOT NULL,
  `kelas_id` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `poskod` varchar(10) NOT NULL,
  `negeri` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`id`, `pelajarnama`, `no_ic`, `namaibu`, `namabapa`, `agama`, `warganegara`, `kelas_id`, `alamat`, `poskod`, `negeri`) VALUES
(1, 'Muhammad muaz hafifi', '950511223', 'che siti aminah', 'fakihi', 'illass', 'malsia', 'arif', 'machang', '1700', 'kelantan'),
(2, 'Anis Farehan', '93031798', 'che siti', 'njnj', '', '', 'Bistari', 'jnkj', '998', 'nnj'),
(3, 'anis farehan', '8787', 'gvgb', 'ghvgv', '', '', '', 'bhb', 'hbhj', 'jnhj'),
(4, 'muhammad muaz hafifi', '930317035924', 'che siti aminah', 'muhammad fakihi', '', '', '', 'lot machang', '3555', 'Kelantan'),
(5, 'anis farehan', '9999999', 'siti', 'fakihi', '', '', '', 'lot ', '455559', '4433'),
(6, 'anis farehan', '9999999', 'siti', 'fakihi', '', '', '', 'lot ', '455559', '4433'),
(7, 'wan muhammad aqwa haziq bin mohd hazri', '00041204567', 'faezah binti che hussain', 'mohd hazri bin ', '', '', '', 'kg bechsh', '999', 'kl'),
(8, 'ANIS FAREHAN', '900', 'jiji', 'FAKIHI', '', '', '', 'Lot 2864 kampung bechah hilir tendong', '17030', 'Kelantan'),
(9, 'ANIS FAREHAN', '999', 'hihi', 'gh', '', '', '', 'Lot 2864 kampung bechah hilir tendong', '17030', 'Kelantan'),
(10, 'ANIS FAREHAN', '97777', '888', 'FAKIHI', '', '', '', 'Lot 2864 kampung bechah hilir tendong', '17030', 'Kelantan'),
(11, 'muhammad hazim bin alias', '93089888787', 'mazehah', 'alias bin mamat', '', '', '', 'hjuhjuh', 'hhg', 'bhjbj'),
(12, 'ANIS FAREHAN', '9888', 'huhu', 'kjkjk', '', '', '', 'Lot 2864 kampung bechah hilir tendong', '17030', 'Kelantan'),
(13, 'jiwa', '99', 'bhbhj', 'hbh', '', '', '', 'jhj', 'jjhj', 'nn'),
(14, 'jiwa', '99', 'bhbhj', 'hbh', '', '', '', 'jhj', 'jjhj', 'nn');

-- --------------------------------------------------------

--
-- Table structure for table `penggal1`
--

CREATE TABLE IF NOT EXISTS `penggal1` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `subjek_id` int(20) NOT NULL,
  `jumlah1` decimal(50,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `penggal2`
--

CREATE TABLE IF NOT EXISTS `penggal2` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `subjek_id` int(20) NOT NULL,
  `jumlah2` decimal(50,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subjek`
--

CREATE TABLE IF NOT EXISTS `subjek` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `subjeknama` varchar(200) NOT NULL,
  `kelas_id` int(10) NOT NULL,
  `guru_id` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `subjek`
--

INSERT INTO `subjek` (`id`, `subjeknama`, `kelas_id`, `guru_id`) VALUES
(1, 'Bahasa Melayu', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
