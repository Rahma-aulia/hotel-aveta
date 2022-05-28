-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 10:56 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aveta`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fasilitas`
--

CREATE TABLE `tbl_fasilitas` (
  `idfasilitas` int(20) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_fasilitas`
--

INSERT INTO `tbl_fasilitas` (`idfasilitas`, `jenis`, `deskripsi`, `gambar`) VALUES
(2, 'Restoran', 'Dengan pemandangan kolam renang dan laut yang indah, Atlantis menyajikan sarapan, makan siang, makan malam dan cemilan lezat menggunakan bahan paling segar untuk pengalaman bersantap yang paling orisinil dan menyenangkan.', '886.jpg'),
(3, 'Gym', 'Bagi anda yang suka berolahraga, Kami manajemen Hotel Aveta juga Menyediakan fasilitas olahraga dan gym, sehingga client juga bisa berolahraga di hotel tanpa harus capek pergi keluar sekedar mencari tempat GYM, dan juga berolahraga di GYM hotel aveta juga sangat menyenangkan karena sambil berolahraga juga bisa sambil menikmati sunset di Penghujung senja.', 'fitness-studio.webp'),
(4, 'Ruang Temu Bisnis', 'Menyediakan Ruang temu yang sangat mewah, dan bisa di desain juga, ruang ini berguna sebagai tampat mengadakan acara rapat bisnis yang di lakukan oleh pengusaha - pengusaha besar, dan sebagai acara lainnya juga. sehingga tidak rugi deh bagi para pebisnis atau pengusaha melakukan rapat penting mereka di Hotel Aveta.', 'R (1).jpg'),
(5, 'Spa', 'Hotel AVETA Menyediakan fasilitas SPA bagi para perempuan yang ingin tampil lebih cantik dan memanjakan diri mereka, selain itu petugas SPA juga sangat ramah serta produk yang pakai di SPA Hotel Mercuredi bawah perlindungan dokter kecantikan, jadi di jamin aman untuk kulit client.', 'spa hotel.jpeg'),
(8, 'Karaoke', 'Menyediakan beberapa ruang karaoke mewah dilengkapi dengan sistem suara berteknologi  tinggi dan ruang karaoke dengan sistem komputerisasi, outlet ini akan menjadi tempat utama untuk hiburan', 'SidsGold_016_F.0.jpg'),
(9, 'kolam renang', 'Hotel berbintang yang berada di Jakarta. Selain menawarkan berbagai fasilitas bagi yang akan menginap. Hotel Aveta membuka fasilitas kolam renangnya untuk umum juga atau untuk pengunjung yang tidak menginap. Kolam renang di sini memiliki pemandangan yang sangat indah. Letaknya di lantai 1 hotel tersebut.', 'kolam.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fasilitas_kamar`
--

CREATE TABLE `tbl_fasilitas_kamar` (
  `id_fasilitas` int(10) NOT NULL,
  `tipe_kamar` varchar(20) NOT NULL,
  `fasilitas` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_fasilitas_kamar`
--

INSERT INTO `tbl_fasilitas_kamar` (`id_fasilitas`, `tipe_kamar`, `fasilitas`) VALUES
(1, 'Super Presidents', 'kamar super president nan mewah yang memiliki sebuah kamar tidur utama dengan kamar mandi en-suite yang mewah, sofa, bak mandi, mantel mandi dan sebuah lemari pakaian. Kamar ini juga memiliki ruang tamu yang dilengkapi dengan fasilitas home theater, TV LCD dengan mini HiFi, ruang makan, dapur, dan kamar mandi tambahan.'),
(2, 'VIP', 'kamar VIP mewah yang memiliki sebuah kamar tidur utama dengan kamar mandi yang mewah, bak mandi, mantel mandi dan sebuah lemari pakaian. Kamar ini juga memiliki ruang tamu yang dilengkapi dengan fasilitas  TV LCD.'),
(3, 'Super VIP', 'Kamar super VIP memiliki dua tempat tidur berukuran Queen atau satu tempat tidur berukuran King dengan dua sofa permanen yang ideal digunakan untuk bersantai, atau bisa berfungsi sebagai tempat tidur tambahan untuk anak-anak.'),
(4, 'Deluxe VIP', 'Kamar Deluxe VIP memiliki tempat tidur berukuran Queen atau satu tempat tidur berukuran King dengan satu sofa permanen yang ideal digunakan untuk bersantai, atau bisa berfungsi sebagai tempat tidur bagi anak-anak.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kamar`
--

CREATE TABLE `tbl_kamar` (
  `id_kamar` int(10) NOT NULL,
  `id_fasilitas` int(10) NOT NULL,
  `no_kamar` char(11) NOT NULL,
  `tarif` double NOT NULL,
  `foto` varchar(50) NOT NULL,
  `jumlah_kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kamar`
--

INSERT INTO `tbl_kamar` (`id_kamar`, `id_fasilitas`, `no_kamar`, `tarif`, `foto`, `jumlah_kamar`) VALUES
(4, 1, 'A', 2500000, 'p_2.jpg', 5),
(5, 2, 'B', 2000000, 'c_3.jpg', 10),
(6, 3, 'C', 1500000, 't_1.jpg', 10),
(7, 4, 'D', 1000000, 's.jpeg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemesan`
--

CREATE TABLE `tbl_pemesan` (
  `nik` char(20) NOT NULL,
  `nama_pemesan` varchar(30) NOT NULL,
  `email_pemesan` varchar(32) NOT NULL,
  `nama_tamu` varchar(30) NOT NULL,
  `alamat_pemesan` text NOT NULL,
  `no_telp_pemesan` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_petugas`
--

CREATE TABLE `tbl_petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `level` enum('admin','resepsionis') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_petugas`
--

INSERT INTO `tbl_petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'admin', '698d51a19d8a121ce581499d7b701668', 'rahma aulia', 'admin'),
(2, 'petugas', '698d51a19d8a121ce581499d7b701668', 'resepsionis', 'resepsionis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservasi`
--

CREATE TABLE `tbl_reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `nama_pemesan` varchar(30) NOT NULL,
  `email_pemesan` varchar(32) NOT NULL,
  `nama_tamu` varchar(30) NOT NULL,
  `no_telp` char(13) NOT NULL,
  `tgl_cek_in` date NOT NULL,
  `tgl_cek_out` date NOT NULL,
  `jumlah_kamar_dipensan` int(11) NOT NULL,
  `status` enum('cek in','cek out') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_fasilitas`
--
ALTER TABLE `tbl_fasilitas`
  ADD PRIMARY KEY (`idfasilitas`);

--
-- Indexes for table `tbl_fasilitas_kamar`
--
ALTER TABLE `tbl_fasilitas_kamar`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  ADD PRIMARY KEY (`id_reservasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_fasilitas`
--
ALTER TABLE `tbl_fasilitas`
  MODIFY `idfasilitas` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_fasilitas_kamar`
--
ALTER TABLE `tbl_fasilitas_kamar`
  MODIFY `id_fasilitas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  MODIFY `id_kamar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
