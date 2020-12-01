-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2020 at 07:27 PM
-- Server version: 10.3.25-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bangryan_carirumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id`, `nama`) VALUES
(1, 'Banyusari'),
(2, 'Batujaya'),
(3, 'Ciampel'),
(4, 'Cibuaya'),
(5, 'Cikampek'),
(6, 'Cilamaya Kulon'),
(7, 'Cilamaya Wetan'),
(8, 'Cilebar'),
(9, 'Jatisari'),
(10, 'Jayakerta'),
(11, 'Karawang Barat'),
(12, 'Karawang Timur'),
(13, 'Klari'),
(14, 'Kotabaru'),
(15, 'Kutawaluya'),
(16, 'Lemahabang'),
(17, 'Majalaya'),
(18, 'Pakisjaya'),
(19, 'Pangkalan'),
(20, 'Pedes'),
(21, 'Purwasari'),
(22, 'Rawamerta'),
(23, 'Rengasdengklok'),
(24, 'Talagasari'),
(25, 'Tegalwaru'),
(26, 'Telukjambe'),
(27, 'Telukjambe Barat'),
(28, 'Telukjambe Timur'),
(29, 'Tempuran'),
(30, 'Tirtajaya'),
(31, 'Tirtamulya');

-- --------------------------------------------------------

--
-- Table structure for table `rumah_sakit`
--

CREATE TABLE `rumah_sakit` (
  `id` int(11) NOT NULL,
  `bagian` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rumah_sakit`
--

INSERT INTO `rumah_sakit` (`id`, `bagian`, `nama`, `alamat`, `telp`, `lat`, `lng`) VALUES
(1, 28, 'RSUD KARAWANG', 'Jl. Galuh Mas Raya No.1 Sukaharja Telukjambe Timur - Karawang', '+62267640444', '-6.319347441016146', '107.29266018386328'),
(2, 11, 'RS Dewi Sri Karawang', 'Jl. Arief Rahman Hakim No. 1A, Nagasari, Kec. Karawang Barat, Kabupaten Karawang, Jawa Barat 41312', '+62267402855', '-6.304112812793716', '107.29783765436817'),
(3, 11, 'RS Islam Karawang', 'Jl. Pangkal Perjuangan, By Pass No.KM 2, Tanjungpura, Kec. Karawang Bar., Kabupaten Karawang, Jawa Barat 41316', '+62267414520', '-6.281572335884499', '107.28324853902801'),
(4, 11, 'RS Bayukarta', 'Jl. Kertabumi No.44, Karawang Kulon, Kec. Karawang Bar., Kabupaten Karawang, Jawa Barat 41311', '+62267401818', '-6.303090984196395', '107.2921741966982'),
(5, 28, 'Primaya Hospital Karawang', 'Puseurjaya, Kec. Telukjambe Tim., Kabupaten Karawang, Jawa Barat 41361', '+622678417000', '-6.330092026972676', '107.29715838135847'),
(6, 28, 'RS Mandaya', 'Jl. Arteri Tol Karawang Barat, Teluk Jambe, Sukamakmur, Telukjambe Timur, Sukamakmur, Kec. Telukjambe Tim., Kabupaten Karawang, Jawa Barat 41361', '+622678643000', '-6.304679724689274', '107.27797036970806'),
(7, 12, 'RS Lira Medika', 'Jl. Raya Syeh Quro No.14, Palumbonsari, Kec. Karawang Tim., Kabupaten Karawang, Jawa Barat 41314', '+622678452555', '-6.302546807488656', '107.32631610038797'),
(8, 12, 'Rumah Sakit Ibu dan Anak Dr. Djoko Pramono', 'Jl. Tuparev Blok Sukasari No.386A, RT.3/RW.4, Karawang Wetan, Kec. Karawang Tim., Kabupaten Karawang, Jawa Barat 41314', '+62267418818', '-6.30501191979071', '107.3020250805658'),
(9, 12, 'RS Hermina Karawang', 'Jl. Tuparev Blok Sukasari No.386A, RT.3/RW.4, Karawang Wetan, Kec. Karawang Tim., Kabupaten Karawang, Jawa Barat 41314', '+622678412525', '-6.307923352777184', '107.31164804054085'),
(10, 12, 'Rumah Sakit Delima Asih Sisma Medika', 'Jl. Wirasaba No.54, Adiarsa Tim., Kec. Karawang Tim., Kabupaten Karawang, Jawa Barat 41313', '+62267403073', '-6.314980253296512', '107.31644324180526'),
(11, 13, 'Citra Sari Husada Hospital', 'Jl. Raya Telagasari - Kosambi No.3, Cibalongsari, Kec. Klari, Kabupaten Karawang, Jawa Barat 41371', '+62267437507', '-6.349795752082589', '107.37760661201526'),
(12, 5, 'RS Helsa Cikampek', 'Jl. Ir. Haji Juanda No.123, Cikampek Tim., Kec. Cikampek, Kabupaten Karawang, Jawa Barat 41373', '+622648385999', '-6.413267448489316', '107.4646190568903'),
(13, 5, 'Rumah Sakit Karya Husada', 'Jl. Jend. Ahmad Yani No.98, Dawuan Tengah, Kec. Cikampek, Kabupaten Karawang, Jawa Barat 41373', '+62264316188', '-6.401048879345845', '107.44370629877527'),
(14, 28, 'Rumah Sakit Rosela', 'Jalan Interchang Karawang Barat No.3, Wadas, Kec. Telukjambe Tim., Kabupaten Karawang, Jawa Barat 41361', '+622678637208', '-6.3345200385785745', '107.2733281753605'),
(15, 23, 'Rumah Sakit Umum Proklamasi', 'R.Dengklok Sel., Kec. R.Dengklok, Kabupaten Karawang, Jawa Barat 41352', '-', '-6.170308928614827', '107.29725749669686'),
(16, 14, 'Rumah Sakit Izza', 'Jl. Sukamanah Timur, Cikampek, Cikampek Utara, Kec. Kotabaru, Kabupaten Karawang, Jawa Barat 41374', '+622648386830', '-6.3899032084967535', '107.46661583719641'),
(17, 5, 'RS Saraswati', 'Jl. Jend. Ahmad Yani No.27, RT.002/RW.9, Dawuan Tengah, Cikampek Selatan, Kabupaten Karawang, Jawa Barat 41373', '+62264316101', '-6.403768825776085', '107.45010231226082'),
(18, 11, 'Klinik Jantung & Spesialis Hermantoni', 'Jl. Tarumanagara No.3, Tanjungpura, Kec. Karawang Bar., Kabupaten Karawang, Jawa Barat 41316', '+62267410170', '-6.297803497175751', '107.28971068368017'),
(19, 13, 'RSU FIKRI MEDIKA', 'Jl. Raya Kosambi KM.3, Belendung, Klari, Belendung, Kec. Klari, Kabupaten Karawang, Jawa Barat 41371', '+622678615555', '-6.351534770054473', '107.37782091504884'),
(20, 28, 'RS MITRA FAMILY', 'Sukaharja, Kec. Telukjambe Tim., Kabupaten Karawang, Jawa Barat 41361', '+622678458327', '-6.315653076088373', '107.29423095966172');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
