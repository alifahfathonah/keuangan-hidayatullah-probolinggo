-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Bulan Mei 2020 pada 01.10
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_pengairan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cth_hari`
--

CREATE TABLE `cth_hari` (
  `id_hari` int(25) NOT NULL,
  `hitungan_hari` int(30) DEFAULT NULL,
  `periode` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cth_hari`
--

INSERT INTO `cth_hari` (`id_hari`, `hitungan_hari`, `periode`) VALUES
(1, 1, 'Periode 1'),
(2, 2, 'Periode 1'),
(3, 3, 'Periode 1'),
(4, 4, 'Periode 1'),
(5, 5, 'Periode 1'),
(6, 6, 'Periode 1'),
(7, 7, 'Periode 1'),
(8, 8, 'Periode 1'),
(9, 9, 'Periode 1'),
(10, 10, 'Periode 1'),
(11, 11, 'Periode 2'),
(12, 12, 'Periode 2'),
(13, 13, 'Periode 2'),
(14, 14, 'Periode 2'),
(15, 15, 'Periode 2'),
(16, 16, 'Periode 2'),
(17, 17, 'Periode 2'),
(18, 18, 'Periode 2'),
(19, 19, 'Periode 2'),
(20, 20, 'Periode 2'),
(21, 21, 'Periode 3'),
(22, 22, 'Periode 3'),
(23, 23, 'Periode 3'),
(24, 24, 'Periode 3'),
(25, 25, 'Periode 3'),
(26, 26, 'Periode 3'),
(27, 27, 'Periode 3'),
(28, 28, 'Periode 3'),
(29, 29, 'Periode 3'),
(30, 30, 'Periode 3'),
(31, 31, 'Periode 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cth_laporan`
--

CREATE TABLE `cth_laporan` (
  `id_laporan` int(25) NOT NULL,
  `id_user` varchar(25) DEFAULT NULL,
  `id_daerah` varchar(25) DEFAULT NULL,
  `id_hari` int(25) DEFAULT NULL,
  `nama_sungai` varchar(250) DEFAULT NULL,
  `nama_bendungan` varchar(250) DEFAULT NULL,
  `intake_kanan` int(30) DEFAULT NULL,
  `intake_kiri` int(30) DEFAULT NULL,
  `jumlah_debit` int(30) DEFAULT NULL,
  `l_total` int(30) DEFAULT NULL,
  `l_eff` int(30) DEFAULT NULL,
  `date_laporan` date NOT NULL,
  `jam_laporan` time DEFAULT NULL,
  `foto_laporan` varchar(250) DEFAULT NULL,
  `lokasi_laporan` text,
  `status_laporan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cth_laporan`
--

INSERT INTO `cth_laporan` (`id_laporan`, `id_user`, `id_daerah`, `id_hari`, `nama_sungai`, `nama_bendungan`, `intake_kanan`, `intake_kiri`, `jumlah_debit`, `l_total`, `l_eff`, `date_laporan`, `jam_laporan`, `foto_laporan`, `lokasi_laporan`, `status_laporan`) VALUES
(10, 'RAP008', 'DT002', 3, 'PESISIR', 'PESISIR 116Ha', 12, 12, 12, 13, 15, '2020-03-09', '16:49:24', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(11, 'RAP008', 'DT002', 4, 'PESISIR', 'PESISIR 116Ha', 12, 12, 12, 13, 15, '2020-03-11', '22:45:23', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(12, 'RAP008', 'DT002', 5, 'PESISIR', 'PESISIR 116Ha', 12, 12, 12, 13, 15, '2020-03-11', '22:45:39', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(13, 'RAP008', 'DT002', 6, 'PESISIR', 'PESISIR 116Ha', 12, 12, 144, 7, 9, '2020-03-11', '22:45:53', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(17, 'RAP008', 'DT002', 7, 'PESISIR', 'PESISIR 116Ha', 15, 11, 121, 9, 4, '2020-03-11', '22:49:37', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(18, 'RAP008', 'DT002', 8, 'PESISIR', 'PESISIR 116Ha', 11, 11, 121, 5, 4, '2020-03-11', '22:49:42', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(19, 'RAP008', 'DT002', 9, 'PESISIR', 'PESISIR 116Ha', 11, 11, 121, 5, 3, '2020-03-11', '22:49:46', 'testlagi.jpg', 'Sini saja', 'Dikonfirmasi'),
(20, 'RAP008', 'DT002', 10, 'PESISIR', 'PESISIR 116Ha', 11, 11, 121, 5, 6, '2020-03-11', '22:49:51', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(22, 'RAP008', 'DT002', 2, 'PESISIR', 'PESISIR 116Ha', 11, 11, 121, 5, 6, '2020-03-22', '15:52:20', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(25, 'RAP008', 'DT002', 21, 'PESISIR', 'PESISIR 116Ha', 12, 12, 24, 5, 6, '2020-04-06', '09:24:54', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(26, 'RAP008', 'DT002', 22, 'PESISIR', 'PESISIR 116Ha', 12, 12, 24, 5, 6, '2020-04-06', '09:25:10', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(27, 'RAP008', 'DT002', 23, 'PESISIR', 'PESISIR 116Ha', 12, 12, 24, 5, 6, '2020-04-06', '09:25:15', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(28, 'RAP008', 'DT002', 24, 'PESISIR', 'PESISIR 116Ha', 12, 12, 24, 5, 6, '2020-04-06', '09:25:20', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(29, 'RAP008', 'DT002', 25, 'PESISIR', 'PESISIR 116Ha', 12, 12, 24, 5, 6, '2020-04-06', '09:25:24', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(30, 'RAP008', 'DT002', 26, 'PESISIR', 'PESISIR 116Ha', 12, 12, 24, 5, 6, '2020-04-06', '09:25:28', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(31, 'RAP008', 'DT002', 27, 'PESISIR', 'PESISIR 116Ha', 12, 12, 24, 5, 6, '2020-04-06', '09:25:32', 'testlagi.jpg', 'sini aja', 'Dikonfirmasi'),
(38, 'RAP008', 'DT002', 2, 'Patalan', 'Patalan 12Ha', 1, 1, 2, 2, 2, '2020-05-17', '06:00:31', '1589670032268_image.jpeg', '-7.7799721, 113.4054808', 'Belum dikonfirmasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daerah_tugas`
--

CREATE TABLE `daerah_tugas` (
  `id_daerah` varchar(25) NOT NULL,
  `daerah_tugas` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daerah_tugas`
--

INSERT INTO `daerah_tugas` (`id_daerah`, `daerah_tugas`) VALUES
('DT001', 'Paiton'),
('DT002', 'Besuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_akses`
--

CREATE TABLE `db_akses` (
  `id_akses` varchar(25) NOT NULL,
  `nama_akses` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_akses`
--

INSERT INTO `db_akses` (`id_akses`, `nama_akses`) VALUES
('1', 'Dinas PUPR'),
('2', 'Kordinator Wilayah'),
('3', 'Pengawas Lapangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_pengaduan`
--

CREATE TABLE `db_pengaduan` (
  `id_pengaduan` int(25) NOT NULL,
  `id_user` varchar(25) DEFAULT NULL,
  `id_daerah` varchar(25) DEFAULT NULL,
  `nama_sungaiPeng` varchar(250) NOT NULL,
  `nama_bendungPeng` varchar(250) NOT NULL,
  `pengaduan` text,
  `foto_pengaduan` varchar(250) DEFAULT NULL,
  `respon_pengaduan` text,
  `date_pengaduan` date DEFAULT NULL,
  `waktu_pengaduan` time DEFAULT NULL,
  `lokasi_pengaduan` text NOT NULL,
  `status_pengaduan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_pengaduan`
--

INSERT INTO `db_pengaduan` (`id_pengaduan`, `id_user`, `id_daerah`, `nama_sungaiPeng`, `nama_bendungPeng`, `pengaduan`, `foto_pengaduan`, `respon_pengaduan`, `date_pengaduan`, `waktu_pengaduan`, `lokasi_pengaduan`, `status_pengaduan`) VALUES
(1, 'RAP008', 'DT002', 'Patalan ', 'Patalan 12Ha', 'Terjadi masalah', '1589864122103_image.jpeg', 'oke', '2020-05-19', '11:55:21', '-7.7799886, 113.4054589', 'Belum Direspon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_user`
--

CREATE TABLE `db_user` (
  `id_user` varchar(25) NOT NULL,
  `nip_user` varchar(30) DEFAULT NULL,
  `nama_user` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `tgl_lahir_user` date DEFAULT NULL,
  `alamat_user` varchar(30) DEFAULT NULL,
  `id_akses` varchar(25) DEFAULT NULL,
  `id_daerah` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_user`
--

INSERT INTO `db_user` (`id_user`, `nip_user`, `nama_user`, `username`, `password`, `tgl_lahir_user`, `alamat_user`, `id_akses`, `id_daerah`) VALUES
('RAD001', '1731710001', 'Admin Dinas PUPR', 'adminpupr', '$2y$10$2ws4eAZxhU59gWTHKEdobear/l72CJ9dbGxi6wiq7dUfaBeKa.hNW', '1998-07-15', 'JL Kyai Mugi no 99', '1', NULL),
('RAD002', '1731710002', 'Admin 1', 'admin1', '$2y$10$lT9ftvWxsYc1/ewEqBeyy.URQMgelW8wvsBH4Jd8L61/ln.8Dse1S', '1998-07-15', 'JL Kyai Mugi no 99', '1', NULL),
('RAK003', '1731710003', 'Admin Kordinator Wilayah', 'adminkorwil', '$2y$10$U2vZzL/hv7wp8llCHeUEdusm5N1CbYBaZTwZT/dUnaggUUeK9SqQq', '1998-07-15', 'JL Kyai Mugi no 99', '2', 'DT002'),
('RAK004', '1731710004', 'Dimas Bagus WS', 'dimas', '$2y$10$vxLkhXiA31G/fKZudNlAzO.npfbrz988rpXFGkA821AEOo9/uqk8y', '1998-07-15', 'JL Kyai Mugi no 99', '2', 'DT002'),
('RAP008', '1731710001', 'coba', 'coba', '$2y$10$n8Wh4p7A/UiK3hLdWLm.X.r2CVdwG429luK8fC4nXmO45.ZuOJT6q', '1998-07-15', 'JL Kyai Mugi no 99', '3', 'DT002');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cth_hari`
--
ALTER TABLE `cth_hari`
  ADD PRIMARY KEY (`id_hari`);

--
-- Indeks untuk tabel `cth_laporan`
--
ALTER TABLE `cth_laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_hari_laporan` (`id_hari`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `daerah_tugas`
--
ALTER TABLE `daerah_tugas`
  ADD PRIMARY KEY (`id_daerah`);

--
-- Indeks untuk tabel `db_akses`
--
ALTER TABLE `db_akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indeks untuk tabel `db_pengaduan`
--
ALTER TABLE `db_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `id_user_pengaduan` (`id_user`),
  ADD KEY `id_daerah_pengaduan` (`id_daerah`);

--
-- Indeks untuk tabel `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_akses` (`id_akses`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cth_hari`
--
ALTER TABLE `cth_hari`
  MODIFY `id_hari` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `cth_laporan`
--
ALTER TABLE `cth_laporan`
  MODIFY `id_laporan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `db_pengaduan`
--
ALTER TABLE `db_pengaduan`
  MODIFY `id_pengaduan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cth_laporan`
--
ALTER TABLE `cth_laporan`
  ADD CONSTRAINT `id_hari_laporan` FOREIGN KEY (`id_hari`) REFERENCES `cth_hari` (`id_hari`),
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `db_user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `db_pengaduan`
--
ALTER TABLE `db_pengaduan`
  ADD CONSTRAINT `id_daerah_pengaduan` FOREIGN KEY (`id_daerah`) REFERENCES `daerah_tugas` (`id_daerah`),
  ADD CONSTRAINT `id_user_pengaduan` FOREIGN KEY (`id_user`) REFERENCES `db_user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `id_akses` FOREIGN KEY (`id_akses`) REFERENCES `db_akses` (`id_akses`),
  ADD CONSTRAINT `id_daerah` FOREIGN KEY (`id_daerah`) REFERENCES `daerah_tugas` (`id_daerah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
