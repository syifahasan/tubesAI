-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2023 pada 04.08
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubesai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ciri`
--

CREATE TABLE `tb_ciri` (
  `id` int(11) NOT NULL,
  `C001` tinyint(1) DEFAULT NULL,
  `C002` tinyint(1) DEFAULT NULL,
  `C003` tinyint(1) DEFAULT NULL,
  `C004` tinyint(1) DEFAULT NULL,
  `C005` tinyint(1) DEFAULT NULL,
  `C006` tinyint(1) DEFAULT NULL,
  `C007` tinyint(1) DEFAULT NULL,
  `C008` tinyint(1) DEFAULT NULL,
  `C009` tinyint(1) DEFAULT NULL,
  `C010` tinyint(1) DEFAULT NULL,
  `C011` tinyint(1) DEFAULT NULL,
  `C012` tinyint(1) DEFAULT NULL,
  `C013` tinyint(1) DEFAULT NULL,
  `C014` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_ciri`
--

INSERT INTO `tb_ciri` (`id`, `C001`, `C002`, `C003`, `C004`, `C005`, `C006`, `C007`, `C008`, `C009`, `C010`, `C011`, `C012`, `C013`, `C014`) VALUES
(1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0),
(2, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0),
(5, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ciri_1`
--

CREATE TABLE `tb_ciri_1` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `ciri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_ciri_1`
--

INSERT INTO `tb_ciri_1` (`id`, `kode`, `ciri`) VALUES
(1, 'C001', 'Lahan yang subur'),
(2, 'C002', 'Iklim yang cocok'),
(3, 'C003', 'Akses air yang baik'),
(4, 'C004', 'Pengetahuan dan keterampilan masyarakat'),
(5, 'C005', 'Luas lahan yang memadai'),
(6, 'C006', 'Ketersediaan pakan'),
(7, 'C007', 'Keindahan alam'),
(8, 'C008', 'Warisan budaya dan sejarah'),
(9, 'C009', 'Keramahan penduduk lokal'),
(10, 'C010', 'Kuliner lokal'),
(11, 'C011', 'Kerajinan tangan dan produk lokal'),
(12, 'C012', 'Keterampilan dan keahlian lokal'),
(13, 'C013', 'Sumber daya alam dan bahan baku'),
(14, 'C014', 'Jenis tanah yang cocok dan bagus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_klasifikasi`
--

CREATE TABLE `tb_klasifikasi` (
  `id` int(5) NOT NULL,
  `klasifikasi` varchar(50) NOT NULL,
  `info` longtext NOT NULL,
  `saran_pelatihan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_klasifikasi`
--

INSERT INTO `tb_klasifikasi` (`id`, `klasifikasi`, `info`, `saran_pelatihan`) VALUES
(1, 'Desa Wisata', 'Desa wisata adalah suatu konsep pengembangan pariwisata di daerah pedesaan dengan tujuan untuk mengembangkan potensi wisata yang dimiliki oleh desa tersebut. Desa wisata mengusung konsep pariwisata yang berkelanjutan, yang berfokus pada pemanfaatan sumber daya alam, budaya, dan sosial ekonomi yang ada di desa tersebut.', 'Mengikuti beberapa pelatihan terkait dengan promosi, dan cara mengidentifikasi keunikan lokal yang dimiliki desa, dan cara menjalin relasi dengan pihak terkait kewisataan.'),
(2, 'Desa Pertanian', 'Desa pertanian adalah suatu desa atau pemukiman yang memiliki fokus utama pada kegiatan pertanian sebagai sumber utama mata pencaharian dan kegiatan ekonominya. Di desa pertanian, mayoritas penduduknya terlibat dalam kegiatan pertanian, baik sebagai petani, peternak, atau pekerja terkait sektor pertanian lainnya.', 'Mengikuti pelatihan terkait mengenai cara mengembangkan SDM dan Teknologi untuk mengembangkan hasil tani yang lebih maksimal.'),
(3, 'Desa Peternakan', 'Desa peternakan adalah suatu desa atau pemukiman yang memiliki fokus utama pada kegiatan peternakan sebagai sumber utama mata pencaharian dan kegiatan ekonominya. Di desa peternakan, mayoritas penduduknya terlibat dalam kegiatan peternakan, baik sebagai peternak mandiri, pekerja di peternakan, atau pekerja terkait sektor peternakan lainnya.', 'Mengikuti pelatihan untuk meningkatkan kualitas dari hewan ternak, cara merawat hewan ternak dengan baik, dan cara berinovasi dengan hasil ternak.'),
(4, 'Desa UMKM', 'Desa UMKM adalah suatu desa atau pemukiman yang memiliki fokus pada pengembangan dan pemberdayaan Usaha Mikro, Kecil, dan Menengah (UMKM) sebagai sumber utama mata pencaharian dan kegiatan ekonominya. Di desa UMKM, mayoritas penduduknya terlibat dalam kegiatan UMKM atau sebagai pekerja terkait sektor tersebut.', 'Mengikuti pelatihan cara meningkatkan SDM dan meningkatkan ekonomi di desa tersebut'),
(5, 'Desa Perkebunan', 'Desa perkebunan adalah suatu desa atau pemukiman yang memiliki fokus utama pada kegiatan pertanian perkebunan sebagai sumber utama mata pencaharian dan kegiatan ekonominya. Di desa perkebunan, mayoritas penduduknya terlibat dalam kegiatan perkebunan, baik sebagai petani, pekerja perkebunan, atau pekerja terkait sektor perkebunan lainnya.', 'Mengikuti pelatihan cara meningkatkan hasil kebun, dan mengikuti inovasi teknologi guna meningkatkan kualitas hasil kebun.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_ciri`
--
ALTER TABLE `tb_ciri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_ciri_1`
--
ALTER TABLE `tb_ciri_1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_klasifikasi`
--
ALTER TABLE `tb_klasifikasi`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_ciri`
--
ALTER TABLE `tb_ciri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_ciri_1`
--
ALTER TABLE `tb_ciri_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_klasifikasi`
--
ALTER TABLE `tb_klasifikasi`
  ADD CONSTRAINT `tb_klasifikasi_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_ciri` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
