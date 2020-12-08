-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Des 2020 pada 21.27
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
(24, 'Manfaat Pohon untuk Manusia dan Lingkungan ', '<p><a href=\"https://www.kompasiana.com/tag/gerakan-bumi-hijau\">Gerakan Bumi Hijau</a> ,- ada banyak manfaat Pohon untuk kehidupan Manusia dan Lingkungan .</p>\r\n\r\n<p>Beberapa Maanfaat itu adalah Membuat udara jadi lebih segar, Menjaga kesehatan mental , Mengurangi paparan sinar UV ke kulit , Mengurangi dampak Perubahan iklim , Mencegah Polusi Air , Menambah cadangan air tanah , Menjaga populasi makhluk hidup ,Tembat Habitat Satwa , Mencegah Banjir dan Erosi Tanah .</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=\"teads_outstream\">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>KEKERINGAN/BANJIR dan LONGSOR</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"flying_desktop text-center\">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kerusakan <a href=\"https://www.kompasiana.com/tag/hutan\">Hutan</a> dan Lingkungan adalah sumber masalah awal dari bencana alam seperti Banjir Bandang , Tanah Longsor , Kekeringan , dan Lain nya .</p>\r\n\r\n<p>Terkadang banyak yg peduli dengan musibah nya ketika sudah terjadi , tapi kurang nya kepedulian dalam hal antisipasi pencegahan nya .</p>\r\n\r\n<p>Perusakan semakin hari semakin sering terjadi , yg semesti nya harus kita jaga bersama untuk keseimbangan . Banyak yg menjadikan Alam sebagai Alat untuk meraup keuntungan pribadi tetapi tak memikirkan dampak besar bagi kehidupan makhluk hidup . Yg juga suatu hari dampak nya pasti akan dirasakan pada generasi mereka .</p>\r\n\r\n<p>Jadikan pohon untuk keseimbangan makhluk hidup dan lingkungan . Kita jaga bersama kelestarian nya , kita Tanam kembali jikalau di lingkungan kita ada kawasan&quot; krisis dari pohon yg rawan banjir , longsor ataupun kekeringan . Kita jaga bersama hutan atau alam yg ada di lingkungan kita , krna itu paruparu bumi kita . klu mereka rusak dan tercemar itu akan menjadi dampak buruk yg sangat besar bagi kita , bagi lingkungan kita dan bagi habitat para satwa .</p>\r\n\r\n<p>Satu pohon sangat berarti bagi Bumi, Save Forest , Save The Earth&nbsp;</p>\r\n', '2020-12-08 20:16:41', 'admin@gmail.com', 'JurnalJisoo', '11b835f5648104edb1ea1052dd670fa7.jpg');

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
  `kode_donasi` int(20) NOT NULL,
  `judul_donasi` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `tanggal_donasi` date NOT NULL,
  `kode_koin` varchar(20) NOT NULL,
  `jumlah_donasi` bigint(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gambar` varchar(40) NOT NULL,
  `nilai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`kode_donasi`, `judul_donasi`, `deskripsi`, `tanggal_donasi`, `kode_koin`, `jumlah_donasi`, `email`, `gambar`, `nilai`) VALUES
(1, 'Lebak Diterjang Banjir Dan Longsor, Bantu Segera!', '<p>Banjir yang melanda Lebak, Banten telah menelan korban jiwa. Sejak Sabtu 5/12/2020 kemarin hujan dengan intensitas tinggi meluapkan sungai-sungai yang mengalir di 14 kecamatan Lebak. Sekitar 1.200 rumah terendam dan puluhan rumah rusak berat.&nbsp;</p>\r\n\r\n<p><img class=\"img-fluid img-responsive\" src=\"https://img.kitabisa.cc/size/1000/ba460b3d-bf62-44f2-81e7-cad9127457ae.jpg\" style=\"border:0px none; box-sizing:inherit; display:block; height:auto !important; max-width:100%; outline:currentcolor', '2020-12-18', '', 200000000, 'admin@gmail.com', '5f165bc26f938dc7629514e1262184d3.jpg', 1),
(2, 'Banjir Bandang Medan Ketinggian Air 2 Meter ', '<h3>Sumatera Utara kembali mengalami bencana alam banjir! Ketinggian air mencapai 2 meter membuat 2773 rumah terendam dan 5965 jiwa terdampak sehingga harus mengungsi ke tempat yang lebih aman.&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class=\"img-fluid img-responsive\" src=\"https://img.kitabisa.cc/size/1000/070dd578-f6cc-4f64-baae-9c8848388164.jpg\" title=\"\" /></p>\r\n\r\n<p>Hujan deras pada malam hari (3/12) hingga dini hari (4/12) membuat banjir setinggi 2 meter menimpa beberapa titik di Sumatera Utara', '2020-12-25', '', 30000000, 'admin@gmail.com', 'b80726a03b25e28757098bec5f64a1af.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `email` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `nomortelepon` varchar(15) NOT NULL,
  `fotoktp` varchar(255) NOT NULL,
  `NIK` varchar(30) NOT NULL,
  `password` varchar(70) NOT NULL,
  `tanggallahir` date NOT NULL,
  `admin` int(5) NOT NULL,
  `validasi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`email`, `nama`, `jenis_kelamin`, `nomortelepon`, `fotoktp`, `NIK`, `password`, `tanggallahir`, `admin`, `validasi`) VALUES
('admin@gmail.com', 'admin', 'pria', '08238585855', '', '10235629847', '$2y$10$gWFPHJD4bwkUCwzvrhgdCOEjNvMrqh4kJqsL10SfO02H/bJL1Bt36', '2020-11-01', 1, 1),
('member@gmail.com', 'Member', 'pria', '084679846587', 'c63f845e5df59dc116c4ecce1c045e50.jpg', '4568791340598756', '$2y$10$j0zI.p1CjnP8P7rVDMgMtezV7s426Gou1X1ToTsi9t.E3f3v8O/mC', '2020-12-01', 0, 1);

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
(15, 'Bantu Selamatkan Habitat Satwa dengan Menanam Pohon', '<p><em>Gerakan Bumi Hijau</em> , - <strong><a href=\"https://www.kompasiana.com/tag/satwa\">Satwa</a>&quot; <a href=\"https://www.kompasiana.com/tag/hutan\">Hutan</a> seperti Monyet dan Sejenis nya semakin hari semakin sering kita lihat keluar hutan untuk mencari makanan , dari mulai ke jalanan hingga sampai masuk ke laham dan permukiman masyarakat .</strong><br />\r\n<br />\r\nBegitu juga dengan jenis satwa&quot; liar lain nya seperti Burung&quot; hingga satwa buas. Salah satu faktor penyebab mungkin k', '2020-12-18', '', 'member@gmail.com', 'df924363b7438b141a572ccb91879cb7.jpg', 1, 'Lowangoalski');

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
  MODIFY `kode_artikel` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `donasi`
--
ALTER TABLE `donasi`
  MODIFY `kode_donasi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kampanye`
--
ALTER TABLE `kampanye`
  MODIFY `kode_kampanye` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
