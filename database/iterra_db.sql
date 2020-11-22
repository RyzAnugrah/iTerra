-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 04:42 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iterra_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_koin`
--

CREATE TABLE `data_koin` (
  `kode_koin` varchar(20) NOT NULL,
  `nominal` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donasi`
--

CREATE TABLE `donasi` (
  `kode_donasi` varchar(20) NOT NULL,
  `judul_donasi` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `tanggal_donasi` date NOT NULL,
  `kode_koin` varchar(20) NOT NULL,
  `jumlah_donasi` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donasi`
--

INSERT INTO `donasi` (`kode_donasi`, `judul_donasi`, `deskripsi`, `tanggal_donasi`, `kode_koin`, `jumlah_donasi`) VALUES
('1', 'Pelestarian Hutan sebagai Pencegahan Tanah Longsor', 'Pelestarian Hutan sebagai Pencegahan Tanah Longsor di Indonesia', '2020-11-22', '1', 100000000),
('2', 'Pelestarian Hutan sebagai Pencegahan Banjir', 'Pelestarian Hutan sebagai Pencegahan Banjir di Indonesia', '2020-11-21', '2', 200000000);

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `email` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `nomortelepon` varchar(15) NOT NULL,
  `fotoprofil` blob NOT NULL,
  `NIK` varchar(30) NOT NULL,
  `password` varchar(70) NOT NULL,
  `tanggallahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`email`, `nama`, `jenis_kelamin`, `nomortelepon`, `fotoprofil`, `NIK`, `password`, `tanggallahir`) VALUES
('naufalariful16@gmail.com', 'naufal ariful', 'pria', '12313', '', '1231234', '$2y$10$Ws8ihJiYxpXBazsB8.kJE.QPRJCrsyQnNS9Vuypd7eqCxZoWPYhuW', '2020-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `kampanye`
--

CREATE TABLE `kampanye` (
  `kode_konten` varchar(20) NOT NULL,
  `judul_konten` varchar(150) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `tanggal_konten` date NOT NULL,
  `kode_koin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kampanye`
--

INSERT INTO `kampanye` (`kode_konten`, `judul_konten`, `deskripsi`, `tanggal_konten`, `kode_koin`) VALUES
('1', 'Pelestarian Hutan untuk Pencegahan Tanah Longsor', 'Pelestarian Hutan untuk Pencegahan Tanah Longsor di Indonesia', '2020-11-22', '1'),
('2', 'Pelestarian Hutan untuk Pencegahan Banjir', 'Pelestarian Hutan untuk Pencegahan Banjir di Indonesia', '2020-11-21', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_koin`
--
ALTER TABLE `data_koin`
  ADD PRIMARY KEY (`kode_koin`);

--
-- Indexes for table `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`kode_donasi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `kampanye`
--
ALTER TABLE `kampanye`
  ADD PRIMARY KEY (`kode_konten`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
