-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2017 at 05:02 PM
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
  `tarikh` varchar(40) NOT NULL,
  `huraian` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `aktiviti`
--

INSERT INTO `aktiviti` (`id`, `aktivitinama`, `tarikh`, `huraian`) VALUES
(1, 'rotong royong', '12/12/2017', 'melibatkan kesemua pelajar dan kaki tangan sekolah'),
(2, 'rotong royong', '12/12/2017', 'melibatkan kesemua pelajar dan kaki tangan sekolah'),
(3, 'Sukaneka', '9/09/2009', 'koko');

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
  `no_ic` varchar(20) NOT NULL,
  `subjek_id` varchar(200) NOT NULL,
  `kelas_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `gurunama`, `no_ic`, `subjek_id`, `kelas_id`) VALUES
(3, 'ooooo', '0', 'Subject3', '1'),
(4, 'Razak', '90000', 'Subject4', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `kelasnama` varchar(20) NOT NULL,
  `guru_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelasnama`, `guru_id`) VALUES
(1, 'Arif', 1),
(2, 'Bistari', 2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_ic` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `nama` varchar(200) NOT NULL,
  `guru` varchar(200) NOT NULL,
  `penyelia` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `number_ic`, `password`, `status`, `nama`, `guru`, `penyelia`) VALUES
(1, '920319035066', 'farehan', 'Penyelia', 'Farah Wahida Binti Muhammad Fakihi', '', 'penyelia'),
(2, '950529035333', '950529035333', 'pelajar', 'Muhammad Muaz Hafifi Bin Muhammad Fakihi', '', ''),
(12, '0', '0', 'Guru', 'ooooo', 'guru', ''),
(13, '90000', '90000', 'Guru', 'Razak', 'guru', ''),
(14, '930317035924', '930317035924', 'Pelajar', 'Anis Farehan Binti Muhammad Fakihi', '', 'pelajar'),
(15, '987654321', '987654321', 'Pelajar', 'alon', '', 'pelajar'),
(16, '987654321', '987654321', 'Pelajar', 'alon', '', 'pelajar'),
(17, '1234567890', '1234567890', 'Pelajar', 'qwertyuiop', '', 'pelajar');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`id`, `pelajarnama`, `no_ic`, `namaibu`, `namabapa`, `agama`, `warganegara`, `kelas_id`, `alamat`, `poskod`, `negeri`) VALUES
(1, 'Muhammad Muaz Hafifi Bin Muhammad Fakihi', '950529035333', 'Che Siti Aminah Binti Che Hussain', 'Muhammad Fakihi Bin Muhammad Fakihi', 'Islam', 'Malaysia', '', 'Lot 2864, Kg Bechah Hilir Tendong, 17030 Pasir Mas', '17030', 'Kelantan'),
(2, 'Anis Farehan Binti Muhammad Fakihi', '930317035924', 'Che Siti Aminah Binti Che Hussin', 'Muhammad Fakihi Bin Yusof', '', '', '', 'lot 25jdgnfdjn', '17030', 'kelantan'),
(3, 'alon', '987654321', 'bj', 'bn', '', '', '', 'jhgfdgh', '199', 'hjh'),
(4, 'alon', '987654321', 'bj', 'bn', '', '', '', 'jhgfdgh', '199', 'hjh'),
(5, 'hhhj', 'gfgh', 'hbhj', 'hu', '', '', '', 'ghj', 'jhhj', 'jj'),
(6, 'qwertyuiop', '1234567890', 'qwertyuiopo', 'asdfghjkl', '', '', '', 'qwertyjnyuu', '12345678', 'sdfghjk'),
(7, 'qwertyuiop', '1234567890', 'qwertyuiopo', 'asdfghjkl', '', '', '', 'qwertyjnyuu', '12345678', 'sdfghjk');

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
