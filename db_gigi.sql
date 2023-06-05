-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2021 pada 14.42
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18057415_db_gigi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `analisa_hasil`
--

CREATE TABLE `analisa_hasil` (
  `noip` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` varchar(30) NOT NULL,
  `umur` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kd_penyakit` varchar(30) NOT NULL,
  `tanggal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot`
--

CREATE TABLE `bobot` (
  `id_bobot` int(11) NOT NULL,
  `kd_gejala` varchar(30) NOT NULL,
  `kd_penyakit` varchar(30) NOT NULL,
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bobot`
--

INSERT INTO `bobot` (`id_bobot`, `kd_gejala`, `kd_penyakit`, `bobot`) VALUES
(7, 'G1', 'P1', 1),
(8, 'G2', 'P1', 0.3),
(9, 'G3', 'P1', 0.3),
(10, 'G4', 'P1', 1),
(11, 'G5', 'P1', 1),
(12, 'G6', 'P1', 0.8),
(13, 'G1', 'P2', 1),
(14, 'G7', 'P2', 1),
(15, 'G8', 'P2', 1),
(16, 'G9', 'P3', 0.8),
(18, 'G11', 'P3', 1),
(19, 'G12', 'P3', 0.5),
(20, 'G13', 'P3', 0.3),
(21, 'G14', 'P3', 0.8),
(22, 'G15', 'P3', 1),
(23, 'G6', 'P3', 0.8),
(28, 'G10', 'P3', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kd_gejala` varchar(30) NOT NULL,
  `gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kd_gejala`, `gejala`) VALUES
('G1', 'Ngilu Pada Saat Makan / Minum '),
('G10', 'Gusi Bengkak'),
('G11', 'Terasa Nyeri'),
('G12', 'Gigi Goyang'),
('G13', 'Radang Sekitar Gigi'),
('G14', 'Jika Ditekan Adanya Pus Yang Keluar Dari Sulkus Gingivi Gigi'),
('G15', 'Demam'),
('G2', 'Terasa Ada Makanan Nyangkut Dipermukaan Gigi'),
('G3', 'Adanya 2 White Spot Dipermukaan Gigi'),
('G4', 'Kecoklatan Pada Permukaan Gigi'),
('G5', 'Rasa Tidak Nyaman Pada Saat Makan'),
('G6', 'Bau Mulut'),
('G7', 'Ngilu Pada Saat Berbicara'),
('G8', 'Terlihat Seperti Irisan Pisau Pada Daerah Cervical Gigi'),
('G9', 'Adanya Pembengkakan Pada Kelenjar Getah Bening');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_pasien` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` varchar(10) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kd_penyakit` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_pasien`, `nama`, `kelamin`, `umur`, `alamat`, `email`, `kd_penyakit`, `tanggal`) VALUES
(20, '9', 'Judha Maygustya', 'Pria', '12', 'Pandaan', 'judha@gmail', 'P1', '2021-12-17 19:07:43'),
(21, '10', 'Mahisa Aghisni Fadhli', 'Pria', '21', 'Mojokerto', 'mahisa@gmail.com', 'P1', '2021-12-17 19:09:46'),
(22, '10', 'Mahisa Aghisni Fadhli', 'Pria', '21', 'Mojokerto', 'mahisa@gmail.com', 'P1', '2021-12-17 19:09:46'),
(23, '10', 'Mahisa Aghisni Fadhli', 'Pria', '21', 'Mojokerto', 'mahisa@gmail.com', 'P2', '2021-12-17 19:09:46'),
(24, '10', 'Mahisa Aghisni Fadhli', 'Pria', '21', 'Mojokerto', 'mahisa@gmail.com', 'P2', '2021-12-17 19:09:46'),
(25, '10', 'Mahisa Aghisni Fadhli', 'Pria', '21', 'Mojokerto', 'mahisa@gmail.com', 'P2', '2021-12-17 19:09:46'),
(26, '10', 'Mahisa Aghisni Fadhli', 'Pria', '21', 'Mojokerto', 'mahisa@gmail.com', 'P2', '2021-12-17 19:09:46'),
(27, '10', 'Mahisa Aghisni Fadhli', 'Pria', '21', 'Mojokerto', 'mahisa@gmail.com', 'P2', '2021-12-17 19:09:46'),
(28, '10', 'Mahisa Aghisni Fadhli', 'Pria', '21', 'Mojokerto', 'mahisa@gmail.com', 'P2', '2021-12-17 19:09:46'),
(29, '11', 'Gilang', 'Pria', '20', 'malang', 'gilang', 'P1', '2021-12-17 20:04:15'),
(30, '11', 'Gilang', 'Pria', '20', 'malang', 'gilang', 'P1', '2021-12-17 20:04:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `indikator`
--

CREATE TABLE `indikator` (
  `id_indikator` int(11) NOT NULL,
  `nama_indikator` varchar(30) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `indikator`
--

INSERT INTO `indikator` (`id_indikator`, `nama_indikator`, `nilai`) VALUES
(3, '1', 1),
(4, '0.3', 0.3),
(5, '0.8', 0.8),
(6, '0.5', 0.5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id_info` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(20) NOT NULL,
  `posting` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_info`, `judul`, `isi`, `gambar`, `posting`) VALUES
('INF1785684', 'Kerak Gigi', 'Karang gigi atau dental calculus adalah deposit plak atau sisa makanan yang mengandung mikroorganisme/bakteri yang menempel pada gigi dalam jangka waktu lama yang mengalami pengerasan/terkalsifikasi. Mikroorganisme tersebut yang mengolah sisa makanan/plak yang menempel di permukaan gigi, dengan bantuan saliva/air liur, mengubah konsistensi lapisan ‘lembut’ plak menjadi keras. Berdasarkan lokasinya, karang gigi dibagi menjadi 2 macam yaitu karang gigi supragingival dan karang gigi subgingival.', 'INF1785684.jpg', '2021-12-17 13:25:59'),
('INF6461552', 'Tumor Gigi', 'Tahukah kamu bahwa tumor juga bisa tumbuh pada gigi? Seperti tumor pada bagian tubuh lainnya, tumor gigi juga merupakan kondisi yang cukup berbahaya, bahkan dapat menyebabkan kematian jika tidak ditangani segera. Ketika mengalami tumor gigi, terdapat pertumbuhan daging yang seperti parasit dan bisa membuat jaringan hidup area gigi dan mulut menjadi rusak.', 'INF6461552.jpg', '2021-12-17 13:28:34'),
('INF7329421', 'Gigi Hipersensitif', 'bisa saja muncul pada bagian gigi dan biasanya hal ini akan ditandai dengan ngilu pada gigi. Kondisi yang bisa disebut juga dengan istilah hipersensitivitas dentin ini juga bisa dialami oleh para orang tua secara alamiah dikarenakan memang resesi gingiva atau penurunan gusi. Tentu kondisi gusi yang demikian juga didukung oleh adanya faktor pertambahan usia.', 'INF7329421.jpg', '2021-12-17 13:27:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`) VALUES
(3, 'judha', 'anVkaGE='),
(4, 'mahisa', 'bWFoaXNh'),
(5, 'admin', 'YWRtaW4=');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` varchar(10) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `kelamin`, `umur`, `alamat`, `tanggal`, `email`) VALUES
(9, 'Judha Maygustya', 'Pria', '12', 'Pandaan', '2021-12-17 19:07:43', 'judha@gmail'),
(10, 'Mahisa Aghisni Fadhli', 'Pria', '21', 'Mojokerto', '2021-12-17 19:09:46', 'mahisa@gmail.com'),
(11, 'Gilang', 'Pria', '20', 'malang', '2021-12-17 20:04:15', 'gilang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kd_penyakit` varchar(30) NOT NULL,
  `nama_penyakit` varchar(30) NOT NULL,
  `definisi` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kd_penyakit`, `nama_penyakit`, `definisi`, `solusi`) VALUES
('P1', 'Karies Gigi', 'Karies gigi adalah sebuah penyakit infeksi yang merusak struktur jaringan keras gigi. Penyakit ini ditandai dengan gigi berlubang. Jika tidak ditangani, penyakit ini dapat menyebabkan nyeri, kematian saraf gigi (nekrose) dan infeksi periapikal dan infeksi sistemik yang bisa membahayakan penderita, dan bahkan bisa berakibat kematian. Penyakit ini telah dikenal sejak masa lalu, berbagai bukti telah menunjukkan bahwa penyakit ini telah dikenal sejak zaman perunggu, zaman besi, dan zaman pertengahan. Peningkatan prevalensi karies banyak dipengaruhi perubahan dari pola makan. Kini, karies gigi telah menjadi penyakit yang tersebar di seluruh dunia.', 'Penambahan Gigi Dengan GI dan Penambalan Gigi Dengan Komposit'),
('P2', 'Erosi Gigi', 'Erosi gigi adalah kondisi terkikisnya lapisan terluar gigi yang dikenal sebagai enamel. Enamel merupakan lapisan keras transparan yang berfungsi melindungi gigi dari kerusakan. Ketika enamel mengalami erosi atau terkikis, lapisan gigi di bawah enamel yang bernama dentin akan terekspos tanpa lapisan pelindung. Hal ini dapat menyebabkan nyeri gigi karena sifat dentin yang sensitif.', 'Penambahan Gigi Dengan GI dan Penambalan Gigi Dengan Komposit'),
('P3', 'Abses Gigi', 'Abses gigi merupakan penyakit yang terjadi karena infeksi bakteri dan sering menyerang orang yang tidak menjaga kebersihan gigi dengan baik. Kondisi ini memicu terbentuknya kantung atau benjolan berisi nanah pada gigi. Abses gigi umumnya muncul di ujung akar gigi dan menyebabkan rasa nyeri tak tertahankan. Nyeri yang muncul sebagai gejala penyakit ini disebabkan oleh nanah yang berkumpul pada benjolan di seputar gigi dan mulut.', 'Perawatan Saluran Akan Jika Mahkota Gigi Masih Ada, Premedikasi dan Pencabutan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_analisa`
--

CREATE TABLE `tmp_analisa` (
  `noip` varchar(30) NOT NULL,
  `kd_gejala` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `kd_gejala` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`kd_gejala`) VALUES
('G6'),
('G2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_pasien`
--

CREATE TABLE `tmp_pasien` (
  `noip` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `noip` varchar(30) NOT NULL,
  `kd_penyakit` varchar(30) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
  ADD PRIMARY KEY (`noip`);

--
-- Indeks untuk tabel `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indeks untuk tabel `indikator`
--
ALTER TABLE `indikator`
  ADD PRIMARY KEY (`id_indikator`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id_bobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `indikator`
--
ALTER TABLE `indikator`
  MODIFY `id_indikator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
