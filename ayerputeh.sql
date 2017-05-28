-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2017 at 10:35 AM
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
  `tarikh` varchar(40) NOT NULL,
  `huraian` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aktiviti`
--

INSERT INTO `aktiviti` (`id`, `aktivitinama`, `tarikh`, `huraian`) VALUES
(1, 'rotong royong', '12/12/2017', 'melibatkan kesemua pelajar dan kaki tangan sekolah'),
(2, 'rotong royong', '12/12/2017', 'melibatkan kesemua pelajar dan kaki tangan sekolah'),
(3, 'Sukaneka', '9/09/2009', 'koko'),
(4, '', '', ''),
(5, 'Pertandingan Menyanyi', '12/13/2017', 'Peserta yang terlibat sahaja....'),
(6, 'Pertandingan Menyanyi', '12/13/2017', 'Peserta yang terlibat sahaja....'),
(7, '', '', ''),
(8, 'goton', '09/12/2009', ''),
(9, 'goton', '09/12/2009', ''),
(10, 'subuh', '9/12/2019', ''),
(11, 'kem bistar', '9/12/2019', 'jhjh'),
(12, 'rotoyong', '12/12/2017', 'Melibatkan kesemua guru staff dan pelajar'),
(13, 'seminar', '12/12/2016', 'fsktm');

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
  `no_ic` varchar(20) NOT NULL,
  `subjek_id` varchar(200) NOT NULL,
  `kelas_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `gurunama`, `no_ic`, `subjek_id`, `kelas_id`) VALUES
(3, 'ooooo', '0', 'Subject3', '1'),
(4, 'Razak', '90000', 'Subject4', '1'),
(5, 'farehan', '9000', 'Subject9', '1'),
(6, 'huhuu', 'bhjbh', 'Subject10', '1'),
(7, 'siti', '92022', 'bahasame', '3'),
(8, 'muhammad fakihi', '60080903500', 'Kimia', '2'),
(9, '', '', '', '1'),
(10, '', '', '', '1'),
(11, '', '', '', '1'),
(12, '', '', '', '1'),
(13, '', '', '', '1'),
(14, 'sayuti', '930303', 'bahasa inggeris', '2'),
(15, 'ahmad amril', '9000888', 'sains', 'cerdik'),
(16, 'muhammad zakaria', '0233342211', 'matematik', 'bistari'),
(17, 'zain zaidin', '8900098', 'bahasa inggeris', 'arif'),
(18, 'zain zaidin', '8900098', 'bahasa inggeris', 'arif'),
(19, 'syasya sazali', '95067780', 'bahasa melayu', 'arif'),
(20, 'amira', '9999', 'bm', 'bistari'),
(21, 'amira', '9999', 'bm', 'bistari'),
(22, 'amira', '9999', 'bm', 'bistari'),
(23, 'aqilah', '00990', 'matematik', 'bistari'),
(24, 'aq', '1234567890', 'azxftynmkk', 'bistari'),
(25, 'alisas', '877777777777', 'bi', 'bistari'),
(26, 'muazzz', '99567766', 'matematik', 'bistari'),
(27, 'yhis ijii', '000', 'm', 'bistari'),
(28, 'amri yahya', '870009', 'mathe', 'arif'),
(29, 'qwertyuioinjbhgfvcd1234567', '123456789', 'dfcgvbhjn', 'arif'),
(30, 'zalali', '90', 'bahasa inggeris', 'cerdik'),
(31, 'melakasana', '900', 'matematik', 'cerdik'),
(32, 'fadhilah', '93042806499', 'bahasa melayu', 'cerdik'),
(33, 'zainal abidin', '678999900', 'matematik', 'arif'),
(34, 'zainuri', '9000', 'bip', 'arif');

-- --------------------------------------------------------

--
-- Table structure for table `guru_subjek`
--

CREATE TABLE `guru_subjek` (
  `guru_id` int(11) DEFAULT NULL,
  `subjek_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_subjek`
--

INSERT INTO `guru_subjek` (`guru_id`, `subjek_id`) VALUES
(1, 1),
(1, 2),
(5, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(12) NOT NULL,
  `kelasnama` varchar(20) NOT NULL,
  `guru_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelasnama`, `guru_id`) VALUES
(1, 'Arif', '1'),
(2, 'Bistari', '2'),
(3, '2', '930303'),
(4, 'cerdik', '9000888'),
(5, 'bistari', '0233342211'),
(6, 'arif', '8900098'),
(7, 'arif', '8900098'),
(8, 'arif', '95067780'),
(9, 'bistari', '9999'),
(10, 'bistari', '9999'),
(11, 'bistari', '9999'),
(12, 'bistari', '00990'),
(13, 'bistari', '1234567890'),
(14, 'bistari', '877777777777'),
(15, 'bistari', '99567766'),
(16, 'bistari', '000'),
(17, 'arif', '870009'),
(18, 'arif', '123456789'),
(19, 'cerdik', '90'),
(20, 'cerdik', '900'),
(21, 'cerdik', '93042806499');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `number_ic` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gcm_registration_id` text COMMENT 'Device token',
  `status` varchar(255) DEFAULT NULL,
  `nama` varchar(200) NOT NULL,
  `guru` varchar(200) NOT NULL,
  `penyelia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `number_ic`, `password`, `gcm_registration_id`, `status`, `nama`, `guru`, `penyelia`) VALUES
(1, '920319035066', 'fakihi', NULL, 'Penyelia', 'Farah Wahida Binti Muhammad Fakihi', '', 'penyelia'),
(2, '950529035333', '950529035333', NULL, 'pelajar', 'Muhammad Muaz Hafifi Bin Muhammad Fakihi', '', ''),
(12, '0', 'syayasya', NULL, 'Guru', 'ooooo', 'guru', ''),
(13, '90000', '90000', NULL, 'Guru', 'Razak', 'guru', ''),
(14, '930317035924', '930317035924', 'daA5GYJIXpU:APA91bGDybtoj6BwWlABDu5P7bQzKKaFfFIFGioHWXDYokAqHDjuxA2W2xyimnPT09ANa9j4fN5PgW4nUdkF2cu-xKrS5YtJKkbP2uiaRb02oPoZ4Dx53OIoV51OMb21fn81QTVnjR11', 'Pelajar', 'Anis Farehan Binti Muhammad Fakihi', '', ''),
(15, '987654321', '12345', NULL, 'Pelajar', 'alon', '', ''),
(16, '9876543211', '9876543211', NULL, 'Pelajar', 'alon', '', ''),
(17, '1234567890', '1234567890', NULL, 'Pelajar', 'qwertyuiop', '', ''),
(18, '9000', '9000', NULL, 'Guru', 'farehan', 'guru', ''),
(19, 'bhjbh', 'awak', NULL, 'Guru', 'huhuu', 'guru', ''),
(20, '19999', '19999', NULL, 'pelajar', 'lengkap', '', ''),
(21, '91000', '91000', NULL, 'pelajar', 'anis', '', ''),
(22, '92022', '92022', NULL, 'Guru', 'siti', 'guru', ''),
(23, '99333', '99333', NULL, 'pelajar', 'farehaun', '', ''),
(24, '961211111', '961211111', NULL, 'pelajar', 'Wan Nur Aqmar Syaira', '', ''),
(25, '60080903500', '60080903500', NULL, 'Guru', 'muhammad fakihi', 'guru', ''),
(26, '', '', NULL, 'Guru', '', 'guru', ''),
(27, '', '', NULL, 'Guru', '', 'guru', ''),
(28, '', '', NULL, 'Guru', '', 'guru', ''),
(29, '', '', NULL, 'Guru', '', 'guru', ''),
(30, '', '', NULL, 'Guru', '', 'guru', ''),
(31, '234567890', '234567890', NULL, 'pelajar', 'qwertyuiolmncgh', '', ''),
(32, '930303', '930303', NULL, 'Guru', 'sayuti', 'guru', ''),
(33, '9000888', '9000888', NULL, 'Guru', 'ahmad amril', 'guru', ''),
(34, '0233342211', '0233342211', NULL, 'Guru', 'muhammad zakaria', 'guru', ''),
(35, '8900098', '8900098', NULL, 'Guru', 'zain zaidin', 'guru', ''),
(36, '8900098', '8900098', NULL, 'Guru', 'zain zaidin', 'guru', ''),
(37, '95067780', '95067780', NULL, 'Guru', 'syasya sazali', 'guru', ''),
(38, '9999', '9999', NULL, 'Guru', 'amira', 'guru', ''),
(39, '9999', '9999', NULL, 'Guru', 'amira', 'guru', ''),
(40, '9999', '9999', NULL, 'Guru', 'amira', 'guru', ''),
(41, '00990', '00990', NULL, 'Guru', 'aqilah', 'guru', ''),
(42, '1234567890', '1234567890', NULL, 'Guru', 'aq', 'guru', ''),
(43, '877777777777', '877777777777', NULL, 'Guru', 'alisas', 'guru', ''),
(44, '99567766', '99567766', NULL, 'Guru', 'muazzz', 'guru', ''),
(45, '000', '000', NULL, 'Guru', 'yhis ijii', 'guru', ''),
(46, '870009', '870009', NULL, 'Guru', 'amri yahya', 'guru', ''),
(47, '123456789', '123456789', NULL, 'Guru', 'qwertyuioinjbhgfvcd1234567', 'guru', ''),
(48, '90', '90', NULL, 'Guru', 'zalali', 'guru', ''),
(49, '900', '900', NULL, 'Guru', 'melakasana', 'guru', ''),
(50, '93042806499', '93042806499', NULL, 'Guru', 'fadhilah', 'guru', ''),
(51, '60999999', '60999999', NULL, 'pelajar', 'siti aminah ', '', ''),
(52, '09999', '09999', NULL, 'pelajar', 'zul yahya', '', ''),
(53, '92044443', '92044443', NULL, 'pelajar', 'Zaidatul ain', '', ''),
(54, '090005677', '090005677', NULL, 'pelajar', 'NUR ZULI BINTI AMRI', '', ''),
(55, '010456065667', '010456065667', NULL, 'pelajar', 'aqwa hazri', '', ''),
(56, '010456065667', '010456065667', NULL, 'pelajar', 'aqwa hazri', '', ''),
(57, '010456065667', '010456065667', NULL, 'pelajar', 'aqwa hazri', '', ''),
(58, '678999900', '678999900', NULL, 'Guru', 'zainal abidin', 'guru', ''),
(59, '090', '090', NULL, 'pelajar', 'muhammad muaz hafifi', '', ''),
(60, '9000', '9000', NULL, 'Guru', 'zainuri', 'guru', '');

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
(1, 'Muhammad Muaz Hafifi Bin Muhammad Fakihi', '950529035333', 'Che Siti Aminah Binti Che Hussain', 'Muhammad Fakihi Bin Muhammad Fakihi', 'Islam', 'Malaysia', 'arif', 'pangsapuri', '17030', 'Kelantan'),
(2, 'Anis Farehan Binti Muhammad Fakihi', '930317035924', 'Che Siti Aminah Binti Che Hussin', 'Muhammad Fakihi Bin Yusof', 'Islam', 'Malaysia', 'arif', 'lot 25 uthm', '17030', 'kelantan'),
(4, 'alon', '987654321', 'bj', 'bn', '', '', '', 'jhgfdgh', '199', 'hjh'),
(5, 'hhhj', 'gfgh', 'hbhj', 'hu', '', '', '', 'ghj', 'jhhj', 'jj'),
(6, 'qwertyuiop', '1234567890', 'qwertyuiopo', 'asdfghjkl', 'buddha', 'kristian', '', 'qwertyjnyuu', '12345678', 'sdfghjk'),
(7, 'qwertyuiop', '1234567890', 'qwertyuiopo', 'asdfghjkl', '', '', '', 'qwertyjnyuu', '12345678', 'sdfghjk'),
(9, 'anis', '930317035924', 'che', 'muhammad', 'islam', 'melayu', 'arif', 'lot', 'ee', 'eee'),
(10, 'farae', '888', 'kiki', 'koko', 'islam', 'melayu', 'arif', '99', 'bjj', 'jhj'),
(14, 'nur syaya', '999', 'kikoko', 'lololo', 'islam', 'melayu', '', '', '', ''),
(15, 'anis', '91000', 'kiko', 'fakihi', 'kristian', 'india', 'arif', 'lit', '900', 'hu'),
(16, 'lengkap', '19999', 'diri', 'tak akan', 'islam', 'melayu', '', '', '', ''),
(17, 'anis', '91000', 'kiko', 'fakihi', 'kristian', 'india', 'arif', 'lit', '900', 'hu'),
(18, 'farehaun', '99333', 'kije', 'what', 'buddha', 'india', 'arif', 'koko', '', ''),
(19, 'Wan Nur Aqmar Syaira', '961211111', 'faezah', 'hazri', 'islam', 'melayu', 'arif', 'ko', '1879', 'KELANTAN'),
(20, 'qwertyuiolmncgh', '234567890', 'dfghjnm', 'vhb', 'islam', 'melayu', '', '', '', ''),
(21, 'siti aminah ', '60999999', 'fatimah', 'hussain', 'islam', 'melayu', 'arif', 'bechah', '170', 'KELANTAN'),
(22, 'zul yahya', '09999', 'fatiha', 'amri', 'buddha', 'india', 'arif', '', '', ''),
(23, 'Zaidatul ain', '92044443', 'fakri', 'fikri', 'islam', 'india', 'arif', '', '', ''),
(24, 'NUR ZULI BINTI AMRI', '090005677', 'ZULAIKHA', 'KHAIRI', 'lain-lain', 'india', 'bistari', 'FAMINA', '899', 'JOHOR'),
(25, 'aqwa hazri', '010456065667', 'faezah', 'hazri', 'islam', 'india', 'arif', '', '', ''),
(26, 'aqwa hazri', '010456065667', 'faezah', 'hazri', 'islam', 'india', 'arif', '', '', ''),
(27, 'aqwa hazri', '010456065667', 'faezah', 'hazri', 'islam', 'india', 'arif', '', '', ''),
(28, 'muhammad muaz hafifi', '090', 'k', 'jkjk', 'islam', 'melayu', 'bistari', 'mk', 'mk', '');

-- --------------------------------------------------------

--
-- Table structure for table `penggal1`
--

CREATE TABLE `penggal1` (
  `id` int(20) NOT NULL,
  `subjek_id` varchar(20) NOT NULL,
  `jumlah1` varchar(200) NOT NULL,
  `no_ic` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penggal1`
--

INSERT INTO `penggal1` (`id`, `subjek_id`, `jumlah1`, `no_ic`) VALUES
(1, '1', '100', '950529035333'),
(2, '1', '34', '930317035924'),
(9, '1', '55', '930317035924'),
(10, '1', '90', '888'),
(15, '1', '99', '91000'),
(17, '1', '91', '91000'),
(18, '1', '92', '99333'),
(19, '1', '11', '961211111'),
(21, '1', '23', '60999999'),
(22, '1', '34', '09999'),
(23, '1', '89', '92044443'),
(24, '2', '0', '090005677');

-- --------------------------------------------------------

--
-- Table structure for table `penggal2`
--

CREATE TABLE `penggal2` (
  `id` int(20) NOT NULL,
  `subjek_id` varchar(20) NOT NULL,
  `jumlah2` varchar(100) NOT NULL,
  `no_ic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjek`
--

CREATE TABLE `subjek` (
  `id` int(12) NOT NULL,
  `subjeknama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjek`
--

INSERT INTO `subjek` (`id`, `subjeknama`) VALUES
(1, 'Bahasa Melayu'),
(2, 'Matematik'),
(3, 'Sains'),
(4, 'Inggeris'),
(5, 'Bahasa Melayu 2');

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
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `final`
--
ALTER TABLE `final`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `pelajar`
--
ALTER TABLE `pelajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `penggal2`
--
ALTER TABLE `penggal2`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjek`
--
ALTER TABLE `subjek`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
