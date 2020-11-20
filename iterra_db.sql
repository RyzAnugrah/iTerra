-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 04:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `kode_admin` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kode_kampanye` varchar(20) NOT NULL,
  `kode_donasi` varchar(20) NOT NULL,
  `kode_artikel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `kode_artikel` varchar(10) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `penulis_artikel` varchar(100) NOT NULL,
  `tanggal_artikel` date NOT NULL,
  `isi_artikel` varchar(500) NOT NULL,
  `gambar_artikel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `deskripsi_donasi` varchar(500) NOT NULL,
  `tanggal_donasi` date NOT NULL,
  `kode_koin` varchar(20) NOT NULL,
  `jumlah_donasi` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `tanggallahir` date NOT NULL,
  `verifikasi` varchar(255) NOT NULL DEFAULT 'Bukti tidak ada'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`email`, `nama`, `jenis_kelamin`, `nomortelepon`, `fotoprofil`, `NIK`, `password`, `tanggallahir`, `verifikasi`) VALUES
('naufalariful16@gmail.com', 'naufal ariful', 'pria', '12313', '', '1231234', '$2y$10$Ws8ihJiYxpXBazsB8.kJE.QPRJCrsyQnNS9Vuypd7eqCxZoWPYhuW', '2020-11-02', '');

-- --------------------------------------------------------

--
-- Table structure for table `kampanye`
--

CREATE TABLE `kampanye` (
  `kode_kampanye` varchar(20) NOT NULL,
  `judul_kampanye` varchar(150) NOT NULL,
  `deskripsi_kampanye` varchar(500) NOT NULL,
  `tanggal_kampanye` date NOT NULL,
  `kode_koin` varchar(20) NOT NULL,
  `pelaksana_kampanye` varchar(50) NOT NULL,
  `gambar_kampanye` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kode_admin`),
  ADD KEY `email` (`email`),
  ADD KEY `kode_kampanye` (`kode_kampanye`),
  ADD KEY `kode_donasi` (`kode_donasi`),
  ADD KEY `kode_artikel` (`kode_artikel`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`kode_artikel`);

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
  ADD PRIMARY KEY (`kode_kampanye`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`email`) REFERENCES `identitas` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`kode_artikel`) REFERENCES `artikel` (`kode_artikel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_ibfk_3` FOREIGN KEY (`kode_donasi`) REFERENCES `donasi` (`kode_donasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_ibfk_4` FOREIGN KEY (`kode_kampanye`) REFERENCES `kampanye` (`kode_kampanye`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
