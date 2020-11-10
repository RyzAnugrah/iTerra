-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 04:29 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `informaticcenter_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(20) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kontak` varchar(14) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip`, `nama_dosen`, `jenis_kelamin`, `kontak`, `alamat`) VALUES
('195412171986011001', 'Prof. Dr. Atje Setiawan Abdullah MS. M. Kom.', 'L', '080000000001', 'Bandung'),
('196001151987011002', 'Ino Suryana Drs. M.Kom.', 'L', '080000000002', 'Bogor'),
('196002121987011001', 'R. Sudrajat Drs. M.Si', 'L', '080000000003', 'Cirebon'),
('196110181986031002', 'Akik Hidayat Drs. M.Kom', 'L', '080000000004', 'Depok'),
('196207011993021001', 'Dr. Setiawan Hadi M.Sc CS', 'L', '080000000005', 'Garut'),
('196704031993031002', 'Dr. Asep Sholahuddin MT', 'L', '080000000006', 'Jakarta'),
('196807171993031003', 'Dr. Juli Rejito M.Kom', 'L', '080000000007', 'Kuningan'),
('197006151998031003', 'Akmal S.Si MT.', 'L', '080000000008', 'Semarang'),
('197309252003121003', 'Deni Setiana S.Si M.Cs', 'L', '080000000009', 'Sukabumi'),
('197607232008121001', 'Rudi Rosadi S.Si M.Kom', 'L', '080000000010', 'Surabaya'),
('198203182006041001', 'Erick Paulus S.Si M.Kom', 'L', '080000000011', 'Bandung'),
('198412112015041002', 'Aditya Pradana S.T M.Eng', 'L', '080000000012', 'Cirebon'),
('198507042015042003', 'Dr. Intan Nurma Yulita M.T', 'P', '080000000013', 'Depok'),
('198912302015042001', 'Mira Suryani S.Pd M.Kom', 'P', '080000000014', 'Garut'),
('198912312015042002', 'Dr. Afrida Helen MT', 'P', '080000000015', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_matkul` varchar(14) NOT NULL,
  `nama_matkul` varchar(100) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `sks` enum('2','3') NOT NULL,
  `kurikulum` enum('2016','2017') NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `nip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_matkul`, `nama_matkul`, `hari`, `waktu`, `sks`, `kurikulum`, `semester`, `nip`) VALUES
('D10A1201', 'Kalkulus I', 'Senin', '13.00', '3', '2016', '1', '196704031993031002'),
('D10A2201', 'Kalkulus II', 'Senin', '09.00', '3', '2016', '2', '198203182006041001'),
('D10A3201', 'Aljabar Linier', 'Selasa', '09.00', '2', '2016', '3', '196001151987011002'),
('D10A3202', 'Metode Numerik', 'Rabu', '10.00', '2', '2016', '3', '196001151987011002'),
('D10A3203', 'Matematika Diskrit', 'Kamis', '11.00', '3', '2016', '3', '196110181986031002'),
('D10A4201', 'Operasional Riset', 'Jumat', '08.00', '2', '2016', '4', '198203182006041001'),
('D10E2201', 'Statistika', 'Rabu', '11.00', '2', '2016', '2', '198507042015042003'),
('D10G1201', 'Logika Informatika', 'Selasa', '14.00', '3', '2016', '2', '196807171993031003'),
('D10G1202', 'Algoritma dan Pemrograman', 'Rabu', '15.00', '3', '2016', '1', '198912302015042001'),
('D10G1203', 'Pengantar Teknologi Komputer dan Informatika', 'Jumat', '12.00', '3', '2016', '1', '196807171993031003'),
('D10G2201', 'Struktur Data', 'Kamis', '12.00', '3', '2016', '2', '198912302015042001'),
('D10G2202', 'Arsitektur dan Organisasi Komputer', 'Jumat', '13.00', '2', '2016', '2', '198912312015042002'),
('D10G2203', 'Sistem Database I', 'Senin', '08.00', '2', '2016', '2', '196807171993031003'),
('D10G3201', 'Sistem Operasi', 'Jumat', '12.00', '3', '2016', '3', '197607232008121001'),
('D10G3202', 'Pemrograman Web', 'Senin', '13.00', '3', '2016', '3', '197607232008121001'),
('D10G3203', 'Pemrograman Berorientasi Objek', 'Selasa', '14.00', '3', '2016', '3', '198203182006041001'),
('D10G3204', 'Sistem Database II', 'Rabu', '15.00', '3', '2016', '3', '196807171993031003'),
('D10G32B1', 'Decision Support Systems', 'Senin', '13.00', '3', '2017', '4', '197006151998031003'),
('D10G4201', 'Artificial Intelligence', 'Senin', '09.00', '3', '2016', '4', '198412112015041002'),
('D10G4202', 'Jaringan Komputer', 'Selasa', '10.00', '3', '2016', '4', '198507042015042003'),
('D10G4203', 'Sistem Informasi', 'Rabu', '11.00', '2', '2016', '4', '198912302015042001'),
('D10G4204', 'Kecakapan Antar Personal', 'Kamis', '12.00', '3', '2016', '4', '198912312015042002'),
('D10G4205', 'Analisis Algoritma', 'Jumat', '13.00', '3', '2016', '5', '198912312015042002'),
('D10G4206', 'Etika Profesi', 'Senin', '08.00', '2', '2017', '5', '195412171986011001'),
('D10G5201', 'Telematika', 'Selasa', '09.00', '2', '2017', '5', '196001151987011002'),
('D10G5202', 'Enterpreneurship', 'Rabu', '10.00', '2', '2017', '3', '196002121987011001'),
('D10G5204', 'Rekayasa Perangkat Lunak', 'Kamis', '11.00', '3', '2017', '5', '196110181986031002'),
('D10G52A1', 'Pemodelan dan Simulasi', 'Jumat', '13.00', '3', '2017', '5', '198912312015042002'),
('D10G52A2', 'Analisis Numerik', 'Senin', '08.00', '2', '2017', '6', '195412171986011001'),
('D10G52B2', 'Kriptografi', 'Selasa', '14.00', '3', '2017', '6', '197309252003121003'),
('D10G52C1', 'Grafika Komputer', 'Selasa', '10.00', '3', '2017', '6', '198507042015042003'),
('D10G52C2', 'Robotika', 'Rabu', '11.00', '2', '2017', '6', '198912302015042001'),
('D10G52D1', 'Sistem Keamanan Jaringan', 'Rabu', '10.00', '2', '2017', '6', '196002121987011001'),
('D10G52D2', 'Sistem Terdistribusi', 'Kamis', '11.00', '3', '2017', '6', '196110181986031002'),
('D10G6201', 'Interaksi Manusia dan Komputer', 'Jumat', '12.00', '3', '2017', '6', '196807171993031003'),
('D10G6202', 'Teori Bahasa dan Automata', 'Senin', '13.00.00', '3', '2017', '6', '197006151998031003'),
('D10G6203', 'Project Perangkat Lunak I', 'Selasa', '14.00', '3', '2017', '6', '197309252003121003'),
('D10G6204', 'Data Warehouse', 'Rabu', '15.00', '3', '2017', '6', '197607232008121001'),
('D10G62A1', 'Persamaan Diferrensial', 'Selasa', '09.00', '2', '2017', '6', '196001151987011002'),
('D10G62A2', 'Optimization Problems', 'Rabu', '10.00', '2', '2017', '6', '196002121987011001'),
('D10G62B1', 'Sistem Informasi Multimedia', 'Rabu', '15.00', '3', '2017', '6', '197607232008121001'),
('D10G62B2', 'Semantik Web', 'Kamis', '16.00', '2', '2017', '6', '196807171993031003'),
('D10G62C1', 'Pengolahan dan Analisis Citra Digital', 'Kamis', '12.00', '3', '2017', '6', '198912312015042002'),
('D10G62C2', 'Soft Computing', 'Jumat', '13.00', '3', '2017', '7', '198912312015042002'),
('D10G62D1', 'Manajemen Jaringan', 'Jumat', '12.00', '3', '2017', '7', '196807171993031003'),
('D10G62D2', 'Mobile Computing', 'Senin', '13.00.00', '3', '2017', '7', '197006151998031003'),
('D10G7201', 'Data Mining', 'Kamis', '16.00', '2', '2017', '7', '196807171993031003'),
('D10G7202', 'Proyek Perangkat Lunak II', 'Jumat', '08.00', '2', '2017', '7', '198203182006041001'),
('D10G7203', 'Manajemen Proyek', 'Senin', '09.00', '3', '2017', '7', '198412112015041002'),
('D10G72A1', 'Kapita Selekta IKMN', 'Kamis', '11.00', '3', '2017', '6', '196110181986031002'),
('D10G72A2', 'High Performance Computing', 'Jumat', '12.00', '3', '2017', '7', '196807171993031003'),
('D10G72B1', 'Kapita Selekta SISM', 'Jumat', '08.00', '2', '2017', '6', '198203182006041001'),
('D10G72B2', 'Sistem Informasi Geografi', 'Senin', '09.00', '3', '2017', '7', '198412112015041002'),
('D10G72C1', 'Kapita Selekta SCSG', 'Senin', '08.00', '2', '2017', '6', '195412171986011001'),
('D10G72C2', 'Machine Learning', 'Selasa', '09.00', '2', '2017', '7', '196001151987011002'),
('D10G72D1', 'Kapita Selekta JKKD', 'Selasa', '14.00', '3', '2017', '7', '197309252003121003'),
('D10G72D2', 'Jaringan Komputer Lanjut', 'Rabu', '15.00', '3', '2017', '6', '197607232008121001'),
('D10H2201', 'Fisika Informatika', 'Selasa', '10.00', '3', '2016', '2', '198412112015041002'),
('UNX101001', 'Agama', 'Senin', '08.00', '2', '2016', '1', '195412171986011001'),
('UNX101002', 'Pancasila', 'Selasa', '09.00', '2', '2016', '1', '196001151987011002'),
('UNX101004', 'Bahasa Indonesia', 'Rabu', '10.00', '2', '2016', '1', '196002121987011001'),
('UNX101007', 'Olah Raga Kebugaran dan Kreativitas', 'Kamis', '11.00', '3', '2016', '1', '196110181986031002'),
('UNX102001', 'Bahasa Inggris I', 'Kamis', '16.00', '2', '2016', '1', '197309252003121003'),
('UNX102002', 'Kewarganegaraan', 'Jumat', '08.00', '2', '2016', '1', '197607232008121001'),
('UNX104001', 'Bahasa Inggris II', 'Kamis', '16.00', '2', '2016', '1', '196807171993031003'),
('UNX107001', 'KKN – Magang', 'Selasa', '10.00', '3', '2017', '8', '198507042015042003'),
('UNX108001', 'Seminar', 'Rabu', '11.00', '2', '2017', '8', '198912302015042001'),
('UNX108002', 'Tugas Akhir', 'Kamis', '12.00', '3', '2017', '8', '198912312015042002');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(14) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kontak` varchar(14) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `id_matkul` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama_mahasiswa`, `semester`, `jenis_kelamin`, `kontak`, `alamat`, `id_matkul`) VALUES
('140810160001', 'Angga Kresnabayu', '7', 'L', '081111111301', 'Bandung', 'D10G62C2'),
('140810160003', 'Tasya Amanda Adinegara', '7', 'P', '081111111303', 'Cirebon', 'D10G62C2'),
('140810160004', 'Muhammad Ahsan Nurrijal', '7', 'L', '081111111304', 'Depok', 'D10G62C2'),
('140810160006', 'Fajar Adiyansyah Rahiq', '7', 'L', '081111111306', 'Jakarta', 'D10G62C2'),
('140810160007', 'Fauzi Faruq Nabbani', '7', 'L', '081111111307', 'Kuningan', 'D10G62C2'),
('140810160008', 'Afifah Khoeriah', '7', 'P', '081111111308', 'Semarang', 'D10G62C2'),
('140810160009', 'Raditya Prirahmadian', '7', 'L', '081111111309', 'Sukabumi', 'D10G62C2'),
('140810160010', 'Reynaldi Noer Rizki', '7', 'L', '081111111310', 'Surabaya', 'D10G62C2'),
('140810160011', 'Muhammad Fariz', '7', 'L', '081111111311', 'Bandung', 'D10G62D1'),
('140810160012', 'Kevin A.A.J Waworuntu', '7', 'L', '081111111312', 'Bogor', 'D10G62D1'),
('140810160013', 'Muhammad Raihan Akbar', '7', 'L', '081111111313', 'Cirebon', 'D10G62D1'),
('140810160014', 'Sachi Hongo', '7', 'L', '081111111314', 'Depok', 'D10G62D1'),
('140810160015', 'Dzakia Rayhana', '7', 'P', '081111111315', 'Garut', 'D10G62D1'),
('140810160016', 'Fikri Ikhsan', '7', 'L', '081111111316', 'Jakarta', 'D10G62D1'),
('140810160017', 'Muhammad Yusuf Alfianto', '7', 'L', '081111111317', 'Kuningan', 'D10G62D1'),
('140810160018', 'Erlangga Riyyan Nugraha', '7', 'L', '081111111318', 'Semarang', 'D10G62D1'),
('140810160019', 'Herizal Kurniawan', '7', 'L', '081111111319', 'Sukabumi', 'D10G62D1'),
('140810160020', 'Hasna Karimah', '7', 'P', '081111111320', 'Surabaya', 'D10G62D1'),
('140810160021', 'Ilham Kusuma Aji', '7', 'L', '081111111321', 'Bandung', 'D10G62D2'),
('140810160022', 'Intan Pratiwi', '7', 'P', '081111111322', 'Bogor', 'D10G62D2'),
('140810160023', 'Shaleh Husen Attamimi', '7', 'L', '081111111323', 'Cirebon', 'D10G62D2'),
('140810160024', 'Paquita Putri Ramadhani', '7', 'P', '081111111314', 'Depok', 'D10G62D2'),
('140810160025', 'Teguh Riandi Pratama', '7', 'L', '081111111325', 'Garut', 'D10G62D2'),
('140810160026', 'Syifa Fauziyah Nurul Islam', '7', 'P', '081111111326', 'Jakarta', 'D10G62D2'),
('140810160027', 'Muhammad Viqri Febryan', '7', 'L', '081111111327', 'Kuningan', 'D10G62D2'),
('140810160028', 'Muhammad Fahmi Irfananda', '7', 'L', '081111111328', 'Semarang', 'D10G62D2'),
('140810160029', 'Alif Naufal Hakim', '7', 'L', '081111111329', 'Sukabumi', 'D10G62D2'),
('140810160030', 'Adnan Januar Yunaz', '7', 'L', '081111111330', 'Surabaya', 'D10G62D2'),
('140810160031', 'Muhammad Nur Anbiya Pohan', '7', 'L', '081111111331', 'Bandung', 'D10G7201'),
('140810160032', 'Mochamad Faizin Ahsan', '7', 'L', '081111111332', 'Bogor', 'D10G7201'),
('140810160033', 'Muhammad Naufal Monoarfa', '7', 'L', '081111111333', 'Cirebon', 'D10G7201'),
('140810160035', 'Santo Joosten Malau', '7', 'L', '081111111335', 'Garut', 'D10G7201'),
('140810160036', 'Malik Zulfikar Gantina', '7', 'L', '081111111336', 'Jakarta', 'D10G7202'),
('140810160037', 'Rafidghadah Damarta', '7', 'L', '081111111337', 'Kuningan', 'D10G7202'),
('140810160038', 'Satrio Sadrakh Allesandro', '7', 'L', '081111111338', 'Semarang', 'D10G7202'),
('140810160039', 'Yaumi Hadi Maulana', '7', 'L', '081111111339', 'Sukabumi', 'D10G7202'),
('140810160040', 'Muhammad Jordiansyah', '7', 'L', '081111111340', 'Surabaya', 'D10G7202'),
('140810160042', 'Aditya Rizky Fadillah', '7', 'L', '081111111342', 'Bogor', 'D10G7203'),
('140810160043', 'Fidriyanto Rizkillah', '7', 'L', '081111111343', 'Cirebon', 'D10G7203'),
('140810160044', 'Bening Kusumahati', '7', 'P', '081111111344', 'Depok', 'D10G7203'),
('140810160045', 'Januar Lazuardi', '7', 'L', '081111111345', 'Garut', 'D10G7203'),
('140810160046', 'Hilya Tsaniya', '7', 'P', '081111111346', 'Jakarta', 'D10G72A2'),
('140810160047', 'Syafira Fitra Annisa', '7', 'L', '081111111347', 'Kuningan', 'D10G72A2'),
('140810160048', 'Baby Cattleya Gustina Permatagama', '7', 'P', '081111111348', 'Semarang', 'D10G72A2'),
('140810160049', 'Adryan Luthfi Faiz', '7', 'L', '081111111349', 'Sukabumi', 'D10G72A2'),
('140810160050', 'Balar Nyalasivaa', '7', 'L', '081111111350', 'Surabaya', 'D10G72A2'),
('140810160051', 'Zaenal Muttaqien', '7', 'L', '081111111351', 'Bandung', 'D10G72B2'),
('140810160053', 'Vega Savera Yuana', '7', 'P', '081111111353', 'Cirebon', 'D10G72B2'),
('140810160054', 'Ibnu Ahsani', '7', 'L', '081111111354', 'Depok', 'D10G72B2'),
('140810160055', 'Muhammad Rifqy Aulia Akbar', '7', 'L', '081111111355', 'Garut', 'D10G72B2'),
('140810160056', 'Muhammad Ihza Triyanto', '7', 'L', '081111111356', 'Jakarta', 'D10G72B2'),
('140810160057', 'Shofiyyah Nadhiroh', '7', 'L', '081111111357', 'Kuningan', 'D10G72B2'),
('140810160058', 'Daffa Alief Rana', '7', 'L', '081111111358', 'Semarang', 'D10G72C2'),
('140810160060', 'Beryl Cleary Hermanto', '7', 'L', '081111111360', 'Surabaya', 'D10G72C2'),
('140810160061', 'Eko Fajar Putra', '7', 'L', '081111111361', 'Bandung', 'D10G72C2'),
('140810160062', 'Muhammad Islam Taufikurahman', '7', 'L', '081111111362', 'Bogor', 'D10G72B2'),
('140810160063', 'Gitra Elang Khanti', '7', 'L', '081111111363', 'Cirebon', 'D10G72C2'),
('140810160064', 'Bariq Mbani', '7', 'L', '081111111364', 'Depok', 'D10G72C2'),
('140810160065', 'Patricia Joanne', '7', 'P', '081111111365', 'Garut', 'D10G72D1'),
('140810160067', 'Muhammad Rafif Abieza Pradhana', '7', 'L', '081111111367', 'Kuningan', 'D10G72D1'),
('140810160068', 'Melati S Abisay', '7', 'P', '081111111368', 'Semarang', 'D10G72D1'),
('140810170001', 'Faradilla Azranur', '5', 'P', '081111111201', 'Bandung', 'D10G4205'),
('140810170002', 'Mutia Karimah', '5', 'P', '081111111202', 'Bogor', 'D10G4205'),
('140810170003', 'Risyad Pangestu', '5', 'L', '081111111203', 'Cirebon', 'D10G4205'),
('140810170004', 'Azka Kasyfi Zulkifli', '5', 'L', '081111111204', 'Depok', 'D10G4205'),
('140810170005', 'Muhammad Fadillah Arsa', '5', 'L', '081111111205', 'Garut', 'D10G4205'),
('140810170006', 'Muhammad Fadli Muflih', '5', 'L', '081111111206', 'Jakarta', 'D10G4205'),
('140810170007', 'Dimas Satria Prakoso', '5', 'L', '081111111207', 'Kuningan', 'D10G4205'),
('140810170008', 'Alaa Illiyya', '5', 'P', '081111111208', 'Semarang', 'D10G4205'),
('140810170009', 'Rizal Fathur Rahman', '5', 'L', '081111111209', 'Sukabumi', 'D10G4205'),
('140810170010', 'Sarah Hasna Azzahra', '5', 'P', '081111111210', 'Surabaya', 'D10G4205'),
('140810170011', 'Agnes Hata', '5', 'P', '081111111211', 'Bandung', 'D10G4205'),
('140810170013', 'Diemas Aksya Fachriza', '5', 'L', '081111111213', 'Cirebon', 'D10G4205'),
('140810170014', 'Tivani Shakilla Ervi', '5', 'P', '081111111214', 'Depok', 'D10G4205'),
('140810170015', 'Junia Adhani Juzar', '5', 'P', '081111111215', 'Garut', 'D10G4205'),
('140810170016', 'Benedict Juan Carlo Pratana Pakpahan', '5', 'L', '081111111216', 'Jakarta', 'D10G4205'),
('140810170018', 'Felia Sri Indriyani', '5', 'P', '081111111218', 'Semarang', 'D10G4205'),
('140810170019', 'Fadhli Hibatul Haqqi', '5', 'L', '081111111219', 'Sukabumi', 'D10G4205'),
('140810170020', 'Mohamad Achun Armando', '5', 'L', '081111111220', 'Surabaya', 'D10G4205'),
('140810170021', 'Muhammad Siradj Al Fauzi', '5', 'L', '081111111221', 'Bandung', 'D10G4206'),
('140810170022', 'Muhammad Hafidz Alfarizi', '5', 'L', '081111111222', 'Bogor', 'D10G4206'),
('140810170023', 'Muhammad Luthfiansyah', '5', 'L', '081111111223', 'Cirebon', 'D10G4206'),
('140810170025', 'Syaina Nur Fauziyah', '5', 'P', '081111111225', 'Garut', 'D10G4206'),
('140810170026', 'Muhammad Fakhri Rahman', '5', 'L', '081111111226', 'Jakarta', 'D10G4206'),
('140810170027', 'Karimah Azzuhdu Toriqoh Mahmudah', '5', 'P', '081111111227', 'Kuningan', 'D10G4206'),
('140810170029', 'Raihan Luthfiandi Muhammad', '5', 'L', '081111111229', 'Sukabumi', 'D10G4206'),
('140810170030', 'Arif Rhizky Gilang Purnama', '5', 'L', '081111111230', 'Surabaya', 'D10G4206'),
('140810170031', 'Rifaa Zalfaa Fakhriyyah', '5', 'P', '081111111231', 'Bandung', 'D10G4206'),
('140810170032', 'Raihan Muhammad Aditia', '5', 'L', '081111111232', 'Bogor', 'D10G4206'),
('140810170033', 'Muhammad Hanif', '5', 'L', '081111111233', 'Cirebon', 'D10G4206'),
('140810170034', 'Marcell Antonius Dermawan', '5', 'L', '081111111234', 'Depok', 'D10G4206'),
('140810170035', 'Husein Irfan', '5', 'L', '081111111235', 'Garut', 'D10G4206'),
('140810170036', 'Arief Ramadhan', '5', 'L', '081111111236', 'Jakarta', 'D10G4206'),
('140810170037', 'Rafi Chandra', '5', 'L', '081111111237', 'Kuningan', 'D10G4206'),
('140810170038', 'Yosua Prima Gultom', '5', 'L', '081111111238', 'Semarang', 'D10G4206'),
('140810170039', 'David Ferdinand Imanuel Manurung', '5', 'L', '081111111239', 'Sukabumi', 'D10G4206'),
('140810170040', 'Afie Syahrulloh Arridlo', '5', 'L', '081111111240', 'Surabaya', 'D10G4206'),
('140810170041', 'Fahmi Auliya', '5', 'L', '081111111241', 'Bandung', 'D10G5201'),
('140810170042', 'Benhard David Hamonangan Tampubolon', '5', 'L', '081111111242', 'Bogor', 'D10G5201'),
('140810170043', 'Johannes Lumbantoruan', '5', 'L', '081111111243', 'Cirebon', 'D10G5201'),
('140810170044', 'Natillah Faalih Nanda Mustika Nasution', '5', 'L', '081111111244', 'Depok', 'D10G5201'),
('140810170045', 'Muhammad Afif', '5', 'L', '081111111245', 'Garut', 'D10G5201'),
('140810170046', 'Ilham Muharam', '5', 'L', '081111111246', 'Jakarta', 'D10G5201'),
('140810170047', 'Rividya Permata Aluna', '5', 'P', '081111111247', 'Kuningan', 'D10G5201'),
('140810170048', 'Ghema Allan Ferdiansyah', '5', 'L', '081111111248', 'Semarang', 'D10G5201'),
('140810170049', 'Muhammad Fadhiillah', '5', 'L', '081111111249', 'Sukabumi', 'D10G5201'),
('140810170050', 'Hafizh Adwinsyah', '5', 'L', '081111111250', 'Surabaya', 'D10G5201'),
('140810170051', 'Firmansyah Yanuar', '5', 'L', '081111111251', 'Bandung', 'D10G5204'),
('140810170052', 'Muhammad Fahmi Alwan', '5', 'L', '081111111252', 'Bogor', 'D10G5204'),
('140810170053', 'Muhammad Ariq Farhansyah Mutyara', '5', 'L', '081111111253', 'Cirebon', 'D10G5204'),
('140810170054', 'Ikbal Antoni', '5', 'L', '081111111254', 'Depok', 'D10G5204'),
('140810170055', 'Kevin Akbar Adhiguna', '5', 'L', '081111111255', 'Garut', 'D10G5204'),
('140810170056', 'Muhammad Rais Sabilullah', '5', 'L', '081111111256', 'Jakarta', 'D10G5204'),
('140810170057', 'Victor Wijaya', '5', 'L', '081111111257', 'Kuningan', 'D10G5204'),
('140810170058', 'Muhammad Naufal Bimantara', '5', 'L', '081111111258', 'Semarang', 'D10G5204'),
('140810170059', 'Haris Putratama', '5', 'L', '081111111259', 'Sukabumi', 'D10G5204'),
('140810170060', 'Refa Annisatul Ilma', '5', 'P', '081111111260', 'Surabaya', 'D10G5204'),
('140810170061', 'Imron Madani', '5', 'L', '081111111261', 'Bandung', 'D10G52A1'),
('140810170062', 'Fahmi Izzuddin Abdurrahman', '5', 'L', '081111111262', 'Bogor', 'D10G52A1'),
('140810170063', 'Cryssa Aprilia Ermiyanda Piter', '5', 'P', '081111111263', 'Cirebon', 'D10G52A1'),
('140810170064', 'Giovanni Alfadiansyah', '5', 'L', '081111111264', 'Depok', 'D10G52A1'),
('140810170065', 'Yoga Prambudi Sunaryudanto Putro', '5', 'L', '081111111265', 'Garut', 'D10G52A1'),
('140810180001', 'Sheila Azhar Almufarida', '3', 'P', '081111111101', 'Kuningan', 'D10A3201'),
('140810180002', 'Sitti Ufairoh Azzahra', '3', 'P', '081111111102', 'Cirebon', 'D10A3201'),
('140810180003', 'Irfan Satrio Nugroho', '3', 'L', '081111111103', 'Depok', 'D10A3201'),
('140810180004', 'Natasya Rizky Maharani', '3', 'P', '081111111104', 'Bekasi', 'D10A3201'),
('140810180005', 'Fauzan Akmal Hariz', '3', 'L', '081111111105', 'Bogor', 'D10A3201'),
('140810180006', 'Anugerah Prima Bagaskara', '3', 'L', '081111111106', 'Sukabumi', 'D10A3201'),
('140810180007', 'Putri Nabila', '3', 'P', '081111111107', 'Aceh', 'D10A3201'),
('140810180008', 'Prayudha Adhitia Libramawan', '3', 'L', '081111111108', 'Bandung', 'D10A3201'),
('140810180009', 'Naufal Ariful Amri', '3', 'L', '081111111109', 'Padang', 'D10A3201'),
('140810180010', 'Alvina Vania Kirana', '3', 'L', '081111111110', 'Jakarta', 'D10A3202'),
('140810180011', 'Alfari Sidnan Ghilmana', '3', 'L', '081111111111', 'Bekasi', 'D10A3202'),
('140810180012', 'Hana Meilina Fauziah', '3', 'P', '081111111112', 'Jakarta', 'D10A3202'),
('140810180013', 'Alvin', '3', 'L', '081111111113', 'Cirebon', 'D10A3202'),
('140810180014', 'Shania Salsabila', '3', 'P', '081111111114', 'Padang', 'D10A3202'),
('140810180015', 'Meira Dwiana Anjani', '3', 'P', '081111111115', 'Cimahi', 'D10A3202'),
('140810180016', 'Bunga Azizha Nurhaliza', '3', 'P', '081111111116', 'Jakarta', 'D10A3202'),
('140810180017', 'Sina Mustopa', '3', 'L', '081111111117', 'Bogor', 'D10A3202'),
('140810180018', 'Muhamad Ilham Habib', '3', 'L', '081111111118', 'Bandung', 'D10A3202'),
('140810180020', 'Muhammad Iqbal Alif Fadilla', '3', 'L', '081111111120', 'Jakarta', 'D10A3202'),
('140810180021', 'Sarah Navianti', '3', 'P', '081111111121', 'Bekasi', 'D10A3203'),
('140810180022', 'Sharashena Chairani', '3', 'P', '081111111122', 'Jakarta', 'D10G3203'),
('140810180023', 'Ahmad Faaiz Al-Auzai', '3', 'L', '081111111123', 'Cimahi', 'D10A3203'),
('140810180024', 'Muhammad Razzaaq Fadilah', '3', 'L', '081111111124', 'Pekanbaru', 'D10A3203'),
('140810180025', 'Bandana Irmal Abdillah', '3', 'L', '081111111125', 'Cimahi', 'D10A3203'),
('140810180026', 'Delanika Olympiani Trieswari Caesarini', '3', 'P', '081111111126', 'Jakarta', 'D10A3203'),
('140810180027', 'Muhamad Fahrul Azimi', '3', 'L', '081111111127', 'Bandung', 'D10A3203'),
('140810180028', 'Kefilino Khalifa Filardi', '3', 'L', '081111111128', 'Bandung', 'D10G4203'),
('140810180029', 'Asep Budiyana Muharam', '3', 'L', '081111111129', 'Garut', 'D10A3203'),
('140810180030', 'Rio Sapta Samudera', '3', 'L', '081111111130', 'Bogor', 'D10G3201'),
('140810180031', 'Tyko Zidane Badhawi', '3', 'L', '081111111131', 'Bogor', 'D10G3201'),
('140810180032', 'Okka Riswana', '3', 'L', '081111111132', 'Bandung', 'D10G3201'),
('140810180033', 'Muhamad Farid Ridho Rambe', '3', 'L', '081111111133', 'Jambi', 'D10G3201'),
('140810180034', 'Ahmad Irfan Fadholi', '', 'L', '081111111134', 'Jakarta', 'D10G3201'),
('140810180035', 'Hanif Dwi Prasetiyo', '3', 'L', '081111111135', 'Bontang', 'D10G3201'),
('140810180037', 'Nazmi Muhammad Abkary', '3', 'L', '081111111137', 'Bandung', 'D10G3201'),
('140810180038', 'Suriadi Vajrakaruna', '3', 'L', '081111111138', 'Jakarta', 'D10G3201'),
('140810180039', 'Muhammad Daffa Alfarizqi', '3', 'L', '081111111139', 'Jakarta', 'D10G3201'),
('140810180040', 'Nurul Ma Arif', '3', 'L', '081111111140', 'Bekasi', 'D10G3201'),
('140810180041', 'Fadlan Mulya Priatna', '3', 'L', '081111111141', 'Banjar', 'D10G3202'),
('140810180042', 'Hadiza Cahya Firdaus', '3', 'L', '081111111142', 'Cirebon', 'D10G3202'),
('140810180043', 'Ahmad Egy Aranda', '3', 'L', '081111111143', 'Bekasi', 'D10G3202'),
('140810180044', 'Fauzan Naufal Taufiqulhakim', '3', 'L', '081111111144', 'Depok', 'D10G3202'),
('140810180045', 'Daniel Rama Hiskia', '3', 'L', '081111111145', 'Bandung', 'D10G3202'),
('140810180046', 'Kevin Dyandradiva', '3', 'L', '081111111146', 'Jakarta', 'D10G3202'),
('140810180048', 'Nadhifal Abdurrahman Rendusara', '3', 'L', '081111111148', 'Jakarta', 'D10G3202'),
('140810180049', 'Rizky Anugerah', '3', 'L', '081111111149', 'Kuningan', 'D10G3202'),
('140810180050', 'Archi Cantona Rusanggara', '3', 'L', '081111111150', 'Bengkulu', 'D10G3202'),
('140810180051', 'Rahma Batari', '3', 'P', '081111111151', 'Bandung', 'D10G3202'),
('140810180052', 'Shalvina Zahwa Aulia', '3', 'P', '081111111152', 'Bandung', 'D10G3203'),
('140810180053', 'Dzikri Algiffari', '3', 'L', '081111111153', 'Depok', 'D10G3203'),
('140810180054', 'Aithra Junia Bouty', '3', 'P', '081111111154', 'Jakarta', 'D10G3203'),
('140810180055', 'Alfian Fadhil Labib', '3', 'L', '081111111155', 'Cimahi', 'D10G3203'),
('140810180056', 'Jonathan Rafma Nanda', '3', 'L', '081111111156', 'Depok', 'D10G3203'),
('140810180057', 'Difa Bagasputra Maulana', '3', 'L', '081111111157', 'Bandung', 'D10G3203'),
('140810180058', 'Salma Alifia Shafira', '3', 'P', '081111111158', 'Semarang', 'D10G3203'),
('140810180059', 'Anne Audistya Fernanda', '3', 'P', '081111111159', 'Bogor', 'D10G3203'),
('140810180060', 'Muhammad Reza Atthariq Kori', '3', 'L', '081111111160', 'Bengkulu', 'D10G3204'),
('140810180061', 'Hafidh Akhdan Najib', '3', 'L', '081111111161', 'Bogor', 'D10G3204'),
('140810180062', 'Muhammad Faisal Putra Safrizal', '3', 'L', '081111111162', 'Bandung', 'D10G3204'),
('140810180063', 'Aprischa Nauva Miliantari', '3', 'P', '081111111163', 'Jakarta', 'D10G3204'),
('140810180064', 'Muhammad Zulfikar Ali', '3', 'L', '081111111164', 'Bandung', 'D10G3204'),
('140810180065', 'Delvian Ikhsan Maulana', '3', 'L', '081111111165', 'Pekanbaru', 'D10G3204'),
('140810180066', 'Muhammad Risqullah Sudanta Gorau', '3', 'L', '081111111166', 'Bandung', 'D10G3204'),
('140810180068', 'Gede Bagus Darmagita', '3', 'L', '081111111168', 'Bekasi', 'D10G5202'),
('140810180069', 'Falah Rizqi Abdullah Fairuz', '3', 'L', '081111111169', 'Sumedang', 'D10G5202'),
('140810180072', 'Dimas Ramadhan Pradipta Bagaskara', '3', 'L', '081111111172', 'Jakarta', 'D10G5202'),
('140810180073', 'Raissa Amini', '3', 'P', '081111111173', 'Cirebon', 'D10G5202'),
('140810180074', 'Naufal Aulia Kamal Nugraha', '3', 'L', '081111111174', 'Cirebon', 'D10G5202'),
('140810180075', 'Mohammad Dhikri', '3', 'L', '081111111175', 'Bandung', 'D10G5202'),
('140810190001', 'Dicky Rahma Hermawan', '1', 'L', '081111111001', 'Bandung', 'D10A1201'),
('140810190002', 'Rizal Herliansyah Hidayat', '1', 'L', '081111111002', 'Bogor', 'D10A1201'),
('140810190003', 'Muhammad Galang Satria', '1', 'L', '081111111003', 'Cirebon', 'D10A1201'),
('140810190004', 'Nadine Annisa Heartman', '1', 'P', '081111111004', 'Depok', 'D10A1201'),
('140810190005', 'Mohamad Fahrio Ghanial Fatihah', '1', 'L', '081111111005', 'Garut', 'D10A1201'),
('140810190006', 'Muhammad Fadlan Fasya', '1', 'L', '081111111006', 'Jakarta', 'D10A1201'),
('140810190007', 'Sephia Afifah', '1', 'P', '081111111007', 'Kuningan', 'D10A1201'),
('140810190008', 'Daffa Anov Arkan Javier', '1', 'L', '081111111008', 'Semarang', 'D10A1201'),
('140810190009', 'Farhan Gunadi', '1', 'L', '081111111009', 'Sukabumi', 'D10A1201'),
('140810190010', 'Cut Fazira Zuhra', '1', 'P', '081111111010', 'Surabaya', 'D10A1201'),
('140810190011', 'Muhammad Rafiq Abdillah', '1', 'L', '081111111011', 'Bandung', 'D10G1202'),
('140810190012', 'Muhammad Faiq Al Murtadha Abdur Rahman Arif', '1', 'L', '081111111012', 'Bogor', 'D10G1202'),
('140810190013', 'Syakira Rahma Fauziyah', '1', 'P', '081111111013', 'Cirebon', 'D10G1202'),
('140810190014', 'Indra Kurniawan', '1', 'L', '081111111014', 'Depok', 'D10G1202'),
('140810190015', 'Salsabila Karin', '1', 'P', '081111111015', 'Garut', 'D10G1202'),
('140810190016', 'Muhammad Faishal Dienul Haq', '1', 'L', '081111111016', 'Jakarta', 'D10G1202'),
('140810190017', 'Saddam Habibi Utomo', '1', 'L', '081111111017', 'Kuningan', 'D10G1202'),
('140810190018', 'Alifa Hafida Anwar', '1', 'P', '081111111018', 'Semarang', 'D10G12021'),
('140810190019', 'Devara Hifzhurrahman', '1', 'L', '081111111019', 'Sukabumi', 'D10G1202'),
('140810190020', 'Join Valentino Tampubolon', '1', 'L', '081111111020', 'Surabaya', 'D10G1202'),
('140810190021', 'Mochammad Ghifari Eka Narayana', '1', 'L', '081111111021', 'Bandung', 'D10G1203'),
('140810190022', 'Muhammad Diva Eka Andriana', '1', 'L', '081111111022', 'Bogor', 'D10G1203'),
('140810190023', 'Roisyal Bariz', '1', 'L', '081111111023', 'Cirebon', 'D10G1203'),
('140810190024', 'Birgitta Laura Tjoa', '1', 'P', '081111111024', 'Depok', 'D10G1203'),
('140810190025', 'Aghniya Abdurrahman Mannan', '1', 'L', '081111111025', 'Garut', 'D10G1203'),
('140810190026', 'Rian Febriansyah', '1', 'L', '081111111026', 'Jakarta', 'D10G1203'),
('140810190027', 'Zahra Claura Hermawan', '1', '', '081111111027', 'Kuningan', 'D10G1203'),
('140810190028', 'Robby Sobari', '1', 'L', '081111111028', 'Semarang', 'D10G1203'),
('140810190029', 'Rellisa Puspa Kusuma', '1', 'P', '081111111029', 'Sukabumi', 'D10G1203'),
('140810190030', 'Azhar Jauharul Umam', '1', 'L', '081111111030', 'Surabaya', 'D10G1203'),
('140810190031', 'Mochamad Arya Bima Agfian', '1', 'L', '081111111031', 'Bandung', 'UNX101001'),
('140810190032', 'Akirareka Kinantan Jiraiya', '1', 'L', '081111111032', 'Bogor', 'UNX101001'),
('140810190033', 'Chandra Wijaya', '1', 'L', '081111111033', 'Cirebon', 'UNX101001'),
('140810190034', 'Milyanda Vania', '1', 'P', '081111111034', 'Depok', 'UNX101001'),
('140810190036', 'Muhammad Luthfi Taufiqurrahman', '1', 'L', '081111111036', 'Jakarta', 'UNX101001'),
('140810190037', 'Bagas Adi Firdaus', '1', 'L', '081111111037', 'Kuningan', 'UNX101001'),
('140810190038', 'Leonardo Septian Dwigantoro', '1', 'L', '081111111038', 'Semarang', 'UNX101001'),
('140810190039', 'Muhammad Raihan Fatoni', '1', 'L', '081111111039', 'Sukabumi', 'UNX101001'),
('140810190040', 'Gregorius Evangelist Wijayanto', '1', 'L', '081111111040', 'Surabaya', 'UNX101001'),
('140810190041', 'Windu Nursetyadi', '1', 'L', '081111111041', 'Bandung', 'UNX101002'),
('140810190042', 'Diandha Carnatia Rizsyifaa', '1', 'L', '081111111042', 'Bogor', 'UNX101002'),
('140810190043', 'Marvin Luckianto', '1', 'L', '081111111043', 'Cirebon', 'UNX101002'),
('140810190044', 'Ridho Emir Fajar Alam', '1', 'L', '081111111044', 'Depok', 'UNX101002'),
('140810190045', 'Adam Din Naufan', '1', 'L', '081111111045', 'Garut', 'UNX101002'),
('140810190046', 'Akmal Syawqi Albar', '1', 'L', '081111111046', 'Jakarta', 'UNX101002'),
('140810190047', 'Matthew Felix Ristanto', '1', 'L', '081111111047', 'Kuningan', 'UNX101002'),
('140810190048', 'Ihsanuddin Dwi Prasetyo', '1', 'L', '081111111048', 'Semarang', 'UNX101002'),
('140810190049', 'Anastasia Victoria Yuarsa', '1', 'P', '081111111049', 'Sukabumi', 'UNX101002'),
('140810190050', 'Elshandi Septiawan', '1', 'L', '081111111050', 'Surabaya', 'UNX101002'),
('140810190051', 'Salma Tri Audryani', '1', 'P', '081111111051', 'Bandung', 'UNX101004'),
('140810190052', 'Putri Ainur Fitri', '1', 'P', '081111111052', 'Bogor', 'UNX101004'),
('140810190053', 'Aidil Fitra', '1', 'L', '081111111053', 'Cirebon', 'UNX101004'),
('140810190054', 'Ruth Rebecca Ovelin', '1', 'P', '081111111054', 'Depok', 'UNX101004'),
('140810190055', 'Anki Prawira Hidayat', '1', 'L', '081111111055', 'Garut', 'UNX101004'),
('140810190056', 'Mohammad Faris Arie Prasetyo', '1', 'L', '081111111056', 'Jakarta', 'UNX101004'),
('140810190057', 'Muhamad Fachri Maulana', '1', 'L', '081111111057', 'Kuningan', 'UNX101004'),
('140810190058', 'Alfathar Yusvi Habibillah', '1', 'L', '081111111058', 'Semarang', 'UNX101004'),
('140810190059', 'Andre Luckyta Firdaus', '1', 'L', '081111111059', 'Sukabumi', 'UNX101004'),
('140810190060', 'Alif Fachrel Anargya', '1', 'L', '081111111060', 'Surabaya', 'UNX101004'),
('140810190062', 'Muhammad Hilmi Aufarahman', '1', 'L', '081111111062', 'Bogor', 'UNX101007'),
('140810190063', 'Ananda Sapta Awedhana', '1', 'L', '081111111063', 'Cirebon', 'UNX101007'),
('140810190064', 'Yuela Thahira', '1', 'P', '081111111064', 'Depok', 'UNX101007'),
('140810190065', 'Prianggara Hadyan Almer', '1', 'L', '081111111065', 'Garut', 'UNX101007'),
('140810190066', 'Johannes Gavin Genesius Nugroho', '1', 'L', '081111111066', 'Jakarta', 'UNX102001'),
('140810190067', 'David Aditya Susanto', '1', 'L', '081111111067', 'Kuningan', 'UNX102001'),
('140810190068', 'Fadhillah Akbar Indrawan', '1', 'L', '081111111068', 'Semarang', 'UNX102001'),
('140810190069', 'Mohamad Alghaz Hernanda', '1', 'L', '081111111069', 'Sukabumi', 'UNX102001'),
('140810190070', 'Theodorik Marcus Fritz Lopak', '1', 'L', '081111111070', 'Surabaya', 'UNX102001'),
('140810190071', 'Ananda Miftakhul Syifa', '1', 'L', '081111111061', 'Bandung', 'UNX102002'),
('140810190072', 'Gilang Anugerah Hade', '1', 'L', '081111111062', 'Bogor', 'UNX102002'),
('140810190073', 'Farhan Maulana Alief', '1', 'L', '081111111063', 'Cirebon', 'UNX102002'),
('140810190074', 'Fahrul Thariq Fadillah', '1', 'L', '081111111064', 'Depok', 'UNX102002'),
('140810190075', 'Rofif Fairuz Hawary', '1', 'L', '081111111065', 'Garut', 'UNX104001'),
('140810190076', 'Dimas Rahadian Nugraha', '1', 'L', '081111111066', 'Jakarta', 'UNX104001'),
('140810190077', 'Muhammad Alwan Fauzi', '1', 'L', '081111111067', 'Kuningan', 'UNX104001');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`) VALUES
(1, 'Admin', 'admin18001@mail.unpad.ac.id', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Fauzan Akmal Hariz', 'fauzan18001@mail.unpad.ac.id', 'fauzan', 'eacaf53cb2b533a68baa765faedf7e59'),
(3, 'Alvin', 'alvin18001@mail.unpad.ac.id', 'alvin', '9573534ee6a886f4831ac5bcdfe85565'),
(4, 'Rizky Anugerah', 'rizky18001@mail.unpad.ac.id', 'anu', '89a4b5bd7d02ad1e342c960e6a98365c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_matkul`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
