-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2020 pada 10.48
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `kode_artikel` int(50) NOT NULL,
  `judul_artikel` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) DEFAULT NULL,
  `penulis` varchar(50) DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`kode_artikel`, `judul_artikel`, `deskripsi`, `tanggal`, `email`, `penulis`, `gambar`) VALUES
(22, 'Artikel 1', '<p>Test 1</p>\r\n', '2020-12-01 09:35:02', 'admin@gmail.com', 'Jongkook', 'aeb76f0fe38266e150cc32fd1ea863b9.jpg'),
(23, 'Artikel 2', '', '2020-12-01 09:36:11', 'admin@gmail.com', 'Jusoo', '05316d8535d8ba10c1392c9b2b122240.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_koin`
--

CREATE TABLE `data_koin` (
  `kode_koin` varchar(20) NOT NULL,
  `nominal` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `kode_donasi` varchar(20) NOT NULL,
  `judul_donasi` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `tanggal_donasi` date NOT NULL,
  `kode_koin` varchar(20) NOT NULL,
  `jumlah_donasi` bigint(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`kode_donasi`, `judul_donasi`, `deskripsi`, `tanggal_donasi`, `kode_koin`, `jumlah_donasi`, `email`) VALUES
('', 'dana sosial', '<p>aku sang pejuang</p>', '2020-11-21', '', 0, 'admin@gmail.com'),
('1', 'Pelestarian Hutan sebagai Pencegahan Tanah Longsor', 'Pelestarian Hutan sebagai Pencegahan Tanah Longsor di Indonesia', '2020-11-22', '1', 100000000, 'naufalariful16@gmail.com'),
('2', 'Pelestarian Hutan sebagai Pencegahan Banjir', 'Pelestarian Hutan sebagai Pencegahan Banjir di Indonesia', '2020-11-21', '2', 200000000, 'naufalariful16@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
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
  `admin` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`email`, `nama`, `jenis_kelamin`, `nomortelepon`, `fotoprofil`, `NIK`, `password`, `tanggallahir`, `admin`) VALUES
('admin@gmail.com', 'admin', 'pria', '08238585855', '', '10235629847', '$2y$10$gWFPHJD4bwkUCwzvrhgdCOEjNvMrqh4kJqsL10SfO02H/bJL1Bt36', '2020-11-01', 1),
('naufal.ariful.amri@gmail.com', 'naufal ariful', 'pria', '08238585855', '', '10235629847', '$2y$10$uRuga4qthZOOZ/HZRMmEn.mWYjsrpxETcrdJVfsKR6oOi1w9.hMc2', '2020-11-02', 0),
('naufalariful16@gmail.com', 'naufal ariful', 'pria', '08238585855', '', '10235629847', '$2y$10$uRuga4qthZOOZ/HZRMmEn.mWYjsrpxETcrdJVfsKR6oOi1w9.hMc2', '2020-11-02', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kampanye`
--

CREATE TABLE `kampanye` (
  `kode_konten` varchar(20) NOT NULL,
  `judul_konten` varchar(150) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `tanggal_konten` date NOT NULL,
  `kode_koin` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `verifikasi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kampanye`
--

INSERT INTO `kampanye` (`kode_konten`, `judul_konten`, `deskripsi`, `tanggal_konten`, `kode_koin`, `email`, `verifikasi`) VALUES
('', 'hutan', '<p>Merupakan jagat raya</p>', '2020-11-02', '', 'naufal.ariful.amri@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`kode_artikel`),
  ADD KEY `emailll` (`email`);

--
-- Indeks untuk tabel `data_koin`
--
ALTER TABLE `data_koin`
  ADD PRIMARY KEY (`kode_koin`);

--
-- Indeks untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`kode_donasi`),
  ADD KEY `emaill` (`email`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `kampanye`
--
ALTER TABLE `kampanye`
  ADD PRIMARY KEY (`kode_konten`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `kode_artikel` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `emailll` FOREIGN KEY (`email`) REFERENCES `identitas` (`email`);

--
-- Ketidakleluasaan untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD CONSTRAINT `emaill` FOREIGN KEY (`email`) REFERENCES `identitas` (`email`);

--
-- Ketidakleluasaan untuk tabel `kampanye`
--
ALTER TABLE `kampanye`
  ADD CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `identitas` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
