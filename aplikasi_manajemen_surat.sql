-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 12:24 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_manajemen_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_instansi`
--

CREATE TABLE `data_instansi` (
  `id_instansi` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_instansi`
--

INSERT INTO `data_instansi` (`id_instansi`, `nama`, `alamat`, `logo`) VALUES
(1, 'PT PAMA SANGATTA', 'JL. Poros Kabo-Sangatta, Sangatta Selatan, Sangatta, Margo Mulyo, Rantau Pulung, Kabupaten Kutai Timur, Kalimantan Timur 75683, Indonesia', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_kategori`
--

CREATE TABLE `data_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kategori`
--

INSERT INTO `data_kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Biasa'),
(2, 'Penting');

-- --------------------------------------------------------

--
-- Table structure for table `data_suratkeluar`
--

CREATE TABLE `data_suratkeluar` (
  `id_surat` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `penerima` varchar(100) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `file` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_suratkeluar`
--

INSERT INTO `data_suratkeluar` (`id_surat`, `no_surat`, `perihal`, `tgl_surat`, `penerima`, `tgl_kirim`, `file`, `id_kategori`, `username`) VALUES
(10, '01/01/Baru', 'Beasiswa', '2021-02-17', 'PT Suka Maju', '2021-02-18', 'file024985.pdf', 2, 'admin'),
(11, '01/02/Baru', 'Nikahan', '2021-02-01', 'PT Suka Mundur', '2021-02-06', 'file394187.pdf', 2, 'admin'),
(12, '01/03/Baru', 'Tagihan', '2021-02-25', 'PT Suka Maju', '2021-02-28', 'file083475.pdf', 1, 'admin'),
(13, '01/04/Baru', 'Balasan Olahraga', '2021-03-05', 'PT Suka Maju', '2021-03-06', 'file932401.pdf', 1, 'admin'),
(14, '01/02 HAPHAPCICAK', 'SURAT AJA', '2022-04-01', 'Haphap Cicak', '2022-04-02', 'file153427.pdf', 2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `data_suratmasuk`
--

CREATE TABLE `data_suratmasuk` (
  `id_surat` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `tgl_terima` date NOT NULL,
  `file` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_suratmasuk`
--

INSERT INTO `data_suratmasuk` (`id_surat`, `no_surat`, `perihal`, `tgl_surat`, `pengirim`, `tgl_terima`, `file`, `id_kategori`, `username`) VALUES
(27, '01/02/Baru', 'Undangan', '2021-02-01', 'PT GGA', '2021-02-03', 'file146537.pdf', 1, 'admin'),
(28, '01/01/Baru', 'Perlombaan', '2021-02-01', 'PT GGA', '2021-02-13', 'file408235.pdf', 2, 'admin'),
(29, '01/03/Baru', 'Sekolah', '2021-02-25', 'PT NAS', '2021-02-28', 'file972384.pdf', 2, 'admin'),
(30, '01/04/Baru', 'Olahraga', '2021-03-01', 'PT AGRO INDO RAYA', '2021-03-03', 'file345296.pdf', 2, 'admin'),
(32, '01/01/BARU', 'SURAT KEBIJAKAN', '2022-04-24', 'Anonymous', '2022-04-26', 'file892076.pdf', 2, 'admin'),
(33, '01/01/BARU AJA KELUAR', 'SURAT KEBIJAKAN KELUAR PENJARA', '2022-04-24', 'Narapidana', '2022-04-26', 'file723146.pdf', 2, 'admin'),
(35, '01/02 HAPHAP', 'SURAT AJA', '2022-04-21', 'Anonymous', '2022-04-28', 'file364281.pdf', 1, 'admin'),
(36, '01/02/BARUAJAKELUAR', 'SURAT AJA', '2022-04-27', 'Anonymous', '2022-04-30', 'file479650.pdf', 1, 'admin'),
(37, '01/01/BARU JUGA SAVE', 'SURAT AJA', '2022-04-29', 'Anonymous', '2022-04-30', 'file604793.pdf', 1, 'admin'),
(38, '01/01/BARU AJA KELUARIYAKANN', 'SURAT AJA', '2022-04-29', 'Anonymous', '2022-04-19', 'file873601.pdf', 1, 'admin'),
(39, '01/01/BARUAJAKELUARDARIPENJARA', 'SURAT KELUAR PENJARA', '2022-04-15', 'Narapidana', '2022-04-30', 'file431802.pdf', 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_telp` varchar(45) NOT NULL,
  `level` enum('admin','operator') NOT NULL,
  `s_aktif` enum('Aktif','Non-Aktif') NOT NULL,
  `foto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`username`, `password`, `nama`, `no_telp`, `level`, `s_aktif`, `foto`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin Kangmust', '082252708185', 'admin', 'Aktif', 'foto714962.jpg'),
('ceknama', 'f4981b7eba3dd66edec84fca35ffd33f', 'Cek Nama Aja', '', 'operator', 'Aktif', 'foto562147.jpg'),
('kangmust', 'c397444940d8bfb40c596e9f172ed34e', 'Kangmust', '', 'admin', 'Aktif', 'foto217380.jpg'),
('namesurename1', 'ee3e39ea2a55601b22b0fdc8f3762125', 'namesurename1', '', 'operator', 'Non-Aktif', 'foto321750.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_instansi`
--
ALTER TABLE `data_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `data_kategori`
--
ALTER TABLE `data_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `data_suratkeluar`
--
ALTER TABLE `data_suratkeluar`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `username` (`username`),
  ADD KEY `idkategori` (`id_kategori`);

--
-- Indexes for table `data_suratmasuk`
--
ALTER TABLE `data_suratmasuk`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `username` (`username`),
  ADD KEY `idkategori` (`id_kategori`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_kategori`
--
ALTER TABLE `data_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_suratkeluar`
--
ALTER TABLE `data_suratkeluar`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `data_suratmasuk`
--
ALTER TABLE `data_suratmasuk`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_suratkeluar`
--
ALTER TABLE `data_suratkeluar`
  ADD CONSTRAINT `data_suratkeluar_ibfk_2` FOREIGN KEY (`username`) REFERENCES `data_user` (`username`),
  ADD CONSTRAINT `data_suratkeluar_ibfk_3` FOREIGN KEY (`id_kategori`) REFERENCES `data_kategori` (`id_kategori`);

--
-- Constraints for table `data_suratmasuk`
--
ALTER TABLE `data_suratmasuk`
  ADD CONSTRAINT `data_suratmasuk_ibfk_2` FOREIGN KEY (`username`) REFERENCES `data_user` (`username`),
  ADD CONSTRAINT `data_suratmasuk_ibfk_3` FOREIGN KEY (`id_kategori`) REFERENCES `data_kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
