-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 01:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` int(50) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_hp` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `alamat`, `no_hp`, `email`) VALUES
(90001, 'Dani', 'lampung', '0812345', 'nanang@gmail.com'),
(90002, 'Dino', 'Tangerang', '0856543', 'ridwan@gmail.com'),
(90003, 'Dono', 'Tangerang', '0812345', 'adam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_mk` varchar(20) NOT NULL,
  `nidn` int(20) NOT NULL,
  `nim` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_mk`, `nidn`, `nim`) VALUES
('mk001', 90001, 12345),
('mk002', 90002, 12345),
('mk002', 90003, 54321),
('mk003', 90002, 54321);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(10) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `jurusan`, `no_hp`, `email`) VALUES
(12345, 'Adam musyafa adipratama', 'Tangerang', '2004-06-28', 'Graha Mitra citra Blok H14/06 Rt.13 Rw.02 Panongan Tangerang Bnaten', 'Teknik Komputer dan jaringan', '081296714711', 'adammusyafa009@gmail.com'),
(54321, 'Nanang', 'lampung', '2022-09-20', 'ahhfahf', 'TKJ', '0816666', 'nanang@gmail.com'),
(67890, 'Aswin', 'Bandung', '2022-03-15', 'bogor', 'tkj', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_mk`, `nama_mk`, `semester`, `sks`) VALUES
('mk001', 'Komputer', 1, 2),
('mk002', 'Statistik', 1, 3),
('mk003', 'Web Programing', 2, 3),
('mk004', 'Elektronika Dasar', 2, 2),
('mk005', 'Dasar PHP', 3, 3),
('mk006', 'Bootstrap', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nim` int(50) NOT NULL,
  `id_mk` varchar(50) NOT NULL,
  `nilai_mutu` varchar(50) NOT NULL,
  `angka_mutu` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nim`, `id_mk`, `nilai_mutu`, `angka_mutu`) VALUES
(12345, 'mk001', 'B', 2),
(12345, 'mk002', 'C', 2),
(54321, 'mk002', 'A', 4),
(54321, 'mk003', 'B', 3),
(54321, 'mk001', 'B', 3),
(67890, 'mk001', 'A', 4),
(67890, 'mk003', 'B', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
