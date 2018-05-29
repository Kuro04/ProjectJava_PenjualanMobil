-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25 Mei 2018 pada 04.19
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `kode_mobil` varchar(4) NOT NULL,
  `nama_mobil` varchar(100) DEFAULT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`kode_mobil`, `nama_mobil`, `merk`, `warna`, `harga`) VALUES
('B001', 'Veyron', 'Bugati', 'Hitam', 200000000),
('B002', 'Galardo', 'MClaren', 'Hijau', 200000000),
('B003', 'Ferrari', 'Sport', 'Biru', 300000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login_admin`
--

CREATE TABLE `tb_login_admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_login_admin`
--

INSERT INTO `tb_login_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login_pengunjung`
--

CREATE TABLE `tb_login_pengunjung` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_login_pengunjung`
--

INSERT INTO `tb_login_pengunjung` (`username`, `password`) VALUES
('aldwin', 'aldwin'),
('kuro', 'shiro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(3) NOT NULL,
  `kode_mobil` varchar(4) NOT NULL,
  `nama_mobil` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlahbeli` int(10) NOT NULL,
  `diskon` int(20) NOT NULL,
  `hargatotal` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `inputuang` int(20) NOT NULL,
  `kembalian` int(50) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `waktu` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_mobil`, `nama_mobil`, `merk`, `warna`, `harga`, `jumlahbeli`, `diskon`, `hargatotal`, `nama`, `inputuang`, `kembalian`, `tanggal`, `waktu`) VALUES
(1, 'B001', 'Veyron', 'Bugati', 'Hitam', 200000000, 1, 100000, 199900000, 'Sukma', 200000000, 100000, '10/05/2018', '09:26:17'),
(2, 'B002', 'galardo', 'bugati', 'Hijau', 20000000, 1, 100000, 19900000, 'aditya', 20000000, 100000, '22/05/2018', '15:52:36'),
(3, 'B001', 'Veyron', 'Bugati', 'Hitam', 200000000, 3, 500000, 599500000, 'Dilong', 600000000, 500000, '23/05/2018', '15:44:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`kode_mobil`);

--
-- Indexes for table `tb_login_admin`
--
ALTER TABLE `tb_login_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_login_pengunjung`
--
ALTER TABLE `tb_login_pengunjung`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
