-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2017 at 03:12 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayerputeh`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktiviti`
--

CREATE TABLE `aktiviti` (
  `id` int(12) NOT NULL,
  `aktivitinama` varchar(200) NOT NULL,
  `tarikh` date NOT NULL,
  `huraian` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `final`
--

CREATE TABLE `final` (
  `id` int(20) NOT NULL,
  `subjek_id` int(20) NOT NULL,
  `jumlah` decimal(50,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(200) NOT NULL,
  `gurunama` varchar(100) NOT NULL,
  `no_ic` int(12) NOT NULL,
  `subjek_id` int(200) NOT NULL,
  `kelas_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `gurunama`, `no_ic`, `subjek_id`, `kelas_id`) VALUES
(1, 'Faridah', 902222, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(12) NOT NULL,
  `kelasnama` varchar(20) NOT NULL,
  `guru_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelasnama`, `guru_id`) VALUES
(1, 'Arif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `number_ic` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `number_ic`, `password`, `status`) VALUES
(1, '9303', 'anis', 'guru');

-- --------------------------------------------------------

--
-- Table structure for table `pelajar`
--

CREATE TABLE `pelajar` (
  `id` int(11) NOT NULL,
  `pelajarnama` varchar(200) NOT NULL,
  `no_ic` varchar(12) NOT NULL,
  `namaibu` varchar(200) NOT NULL,
  `namabapa` varchar(200) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `warganegara` varchar(20) NOT NULL,
  `kelas_id` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `poskod` varchar(10) NOT NULL,
  `negeri` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `penggal1` (
  `id` int(20) NOT NULL,
  `subjek_id` int(20) NOT NULL,
  `jumlah1` decimal(50,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penggal2`
--

CREATE TABLE `penggal2` (
  `id` int(20) NOT NULL,
  `subjek_id` int(20) NOT NULL,
  `jumlah2` decimal(50,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjek`
--

CREATE TABLE `subjek` (
  `id` int(12) NOT NULL,
  `subjeknama` varchar(200) NOT NULL,
  `kelas_id` int(10) NOT NULL,
  `guru_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjek`
--

INSERT INTO `subjek` (`id`, `subjeknama`, `kelas_id`, `guru_id`) VALUES
(1, 'Bahasa Melayu', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktiviti`
--
ALTER TABLE `aktiviti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final`
--
ALTER TABLE `final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelajar`
--
ALTER TABLE `pelajar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `penggal1`
--
ALTER TABLE `penggal1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penggal2`
--
ALTER TABLE `penggal2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjek`
--
ALTER TABLE `subjek`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktiviti`
--
ALTER TABLE `aktiviti`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `final`
--
ALTER TABLE `final`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pelajar`
--
ALTER TABLE `pelajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `penggal1`
--
ALTER TABLE `penggal1`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `penggal2`
--
ALTER TABLE `penggal2`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjek`
--
ALTER TABLE `subjek`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
