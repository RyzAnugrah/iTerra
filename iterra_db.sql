-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2020 pada 21.16
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
(22, 'Artikel 1', '<p>Test 1</p>\r\n', '2020-12-01 09:35:02', 'admin@gmail.com', 'Jongkook', 'aeb76f0fe38266e150cc32fd1ea863b9.jpg');

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
  `email` varchar(50) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`kode_donasi`, `judul_donasi`, `deskripsi`, `tanggal_donasi`, `kode_koin`, `jumlah_donasi`, `email`, `gambar`) VALUES
('', 'dana sosial', '<p>aku sang pejuang</p>', '2020-11-21', '', 0, 'admin@gmail.com', ''),
('1', 'Pelestarian Hutan sebagai Pencegahan Tanah Longsor', 'Pelestarian Hutan sebagai Pencegahan Tanah Longsor di Indonesia', '2020-11-22', '1', 100000000, 'naufalariful16@gmail.com', ''),
('2', 'Pelestarian Hutan sebagai Pencegahan Banjir', 'Pelestarian Hutan sebagai Pencegahan Banjir di Indonesia', '2020-11-21', '2', 200000000, 'naufalariful16@gmail.com', ''),
('3', 'hai', '<p>conoth lagiii</p>\r\n', '2020-12-02', '', 120, 'admin@gmail.com', 'ac1e5edcc269fa8929930943058798af.png'),
('4', 'contoh lagiii', '<p>ini contoh saja</p>\r\n', '2020-12-03', '', 1000000000, 'admin@gmail.com', '91e5213662926f7a95ade0d3f8526b62.png'),
('5', 'conoth lagiiiii dong', '<p>banyak amat contohnya</p>\r\n', '2020-12-05', '', 1000000, 'admin@gmail.com', '57edd14b73cd55ff000a27a259734693.png'),
('6', '1', '<p>1</p>\r\n', '2020-12-12', '', 1, 'admin@gmail.com', 'e1ade9a57685301aa9e192c09a9d9f7d.jpg');

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
  `admin` int(5) NOT NULL,
  `validasi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`email`, `nama`, `jenis_kelamin`, `nomortelepon`, `fotoprofil`, `NIK`, `password`, `tanggallahir`, `admin`, `validasi`) VALUES
('admin@gmail.com', 'admin', 'pria', '08238585855', '', '10235629847', '$2y$10$gWFPHJD4bwkUCwzvrhgdCOEjNvMrqh4kJqsL10SfO02H/bJL1Bt36', '2020-11-01', 1, 1),
('alvin18001@mail.unpad.ac.id', 'Alvin', 'pria', '089698916727', '', '123', '$2y$10$D93NOX4zz2hdK8kNSLA4xuOmvnXuvRjMJK5qzBaanEqi5O9UB5uJy', '2020-12-10', 0, 1),
('naufal.ariful.amri@gmail.com', 'naufal ariful', 'pria', '08238585855', '', '10235629847', '$2y$10$uRuga4qthZOOZ/HZRMmEn.mWYjsrpxETcrdJVfsKR6oOi1w9.hMc2', '2020-11-02', 0, 0),
('naufalariful16@gmail.com', 'naufal ariful', 'pria', '08238585855', '', '10235629847', '$2y$10$uRuga4qthZOOZ/HZRMmEn.mWYjsrpxETcrdJVfsKR6oOi1w9.hMc2', '2020-11-02', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kampanye`
--

CREATE TABLE `kampanye` (
  `kode_kampanye` int(20) NOT NULL,
  `judul_kampanye` varchar(150) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_koin` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gambar` varchar(40) NOT NULL,
  `verifikasi` int(5) NOT NULL,
  `penulis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kampanye`
--

INSERT INTO `kampanye` (`kode_kampanye`, `judul_kampanye`, `deskripsi`, `tanggal`, `kode_koin`, `email`, `gambar`, `verifikasi`, `penulis`) VALUES
(3, '1', '<p>1</p>\r\n', '2020-12-11', '', 'naufal.ariful.amri@gmail.com', 'e6515aa4d4e7e0211f6c736fc53c6b9a.jpg', 1, '1'),
(4, '2', '<p>2</p>\r\n', '2020-12-17', '', 'naufal.ariful.amri@gmail.com', 'd18ec6ad0c473108ce82dd012c457965.jpg', 1, '2'),
(5, '3', '<p>3</p>\r\n', '2020-12-18', '', 'naufal.ariful.amri@gmail.com', '3037bbf3640c4df7bdd9eb9ba9bfdde7.jpg', 1, '3'),
(6, '4', '<p>4</p>\r\n', '2020-12-19', '', 'naufal.ariful.amri@gmail.com', 'c5498e83608adb28b18067ffa3a92872.jpg', 1, '4'),
(7, '5', '<p>5</p>\r\n', '2020-12-02', '', 'naufal.ariful.amri@gmail.com', 'ffb94d1ca3b441bfae76dfa66246898e.jpg', 1, '5'),
(8, '6', '<p>6</p>\r\n', '2020-12-03', '', 'naufal.ariful.amri@gmail.com', 'b6779fcfb63f3a66157015f59d857b58.jpg', 1, '6'),
(9, '7', '<p>7</p>\r\n', '2020-12-10', '', 'naufal.ariful.amri@gmail.com', '31262f84ad6c0a25203d81e7ad6d2916.jpg', 1, '7'),
(10, '8', '<p>8</p>\r\n', '2020-12-16', '', 'naufal.ariful.amri@gmail.com', 'c1bee5689aee280f377e8d54a1dff767.jpg', 1, '8'),
(11, '9', '<p>9</p>\r\n', '2020-12-03', '', 'naufal.ariful.amri@gmail.com', '6d8f436841a271536d5c216178fee303.jpg', 1, '9'),
(12, '10', '<p>10</p>\r\n', '2020-12-02', '', 'naufal.ariful.amri@gmail.com', '894e86e79fc8ad5b16ab39c9fa45a387.jpg', 1, '10'),
(13, '11', '<p>11</p>\r\n', '2020-12-09', '', 'naufal.ariful.amri@gmail.com', '105e38e297f18ba225d569744cb05037.jpg', 1, '11'),
(14, 'tes', '<p>aa</p>\r\n', '2020-12-18', '', 'admin@gmail.com', '4a59e056abdd1120bc7da7b16aed5a3d.jpg', 1, 'ea');

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
  ADD PRIMARY KEY (`kode_kampanye`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `kode_artikel` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `kampanye`
--
ALTER TABLE `kampanye`
  MODIFY `kode_kampanye` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
