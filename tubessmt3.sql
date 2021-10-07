-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Nov 2020 pada 03.45
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubessmt3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE `disposisi` (
  `id` int(11) NOT NULL,
  `sm_id` int(11) NOT NULL,
  `jabatan_id` int(11) DEFAULT NULL,
  `isi` text NOT NULL,
  `batas_waktu` date NOT NULL,
  `sifat_id` int(11) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) DEFAULT NULL COMMENT 'opsional',
  `jabatan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sifat`
--

CREATE TABLE `sifat` (
  `id` int(11) NOT NULL,
  `sifat` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sifat`
--

INSERT INTO `sifat` (`id`, `sifat`) VALUES
(1, 'Segera'),
(2, 'Sangat Segera'),
(3, 'Rahasia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id` int(11) NOT NULL,
  `no_agenda` int(11) NOT NULL,
  `pengirim` varchar(128) NOT NULL,
  `no_surat` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `file` varchar(128) DEFAULT NULL,
  `created_at` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id` int(11) NOT NULL,
  `no_agenda` int(11) DEFAULT NULL,
  `pengirim` varchar(128) DEFAULT NULL,
  `no_surat` varchar(128) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `tgl_diterima` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `file` varchar(128) DEFAULT NULL,
  `created_at` date NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`id`, `no_agenda`, `pengirim`, `no_surat`, `isi`, `tgl_surat`, `tgl_diterima`, `keterangan`, `file`, `created_at`, `user_id`) VALUES
(14, 223, 'asd', 'asd', 'sad', '2020-11-18', '2020-11-19', '', 'G1A019033_MUHAMMAD_DAFFA_ALFAJRI_(3)_(1).pdf', '2020-11-16', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `date_created` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `image`, `role_id`, `date_created`) VALUES
(7, 'dda', 'admin1', 'dfajri856@gmail.com', '$2y$10$EeG/zY6jnheP9thro83VVubJ5FOtgoqSDQtuS2mmxAUJ1KnW0SE9u', 'default.svg', 2, '1605240939'),
(11, 'sd', 'sd123', 'sd123@gmail.com', '$2y$10$OWzIrDViDfn9gC2aPXVVuOYZ26.KpnnZJf7MnPTRh1NcKVtCxufYW', 'default.svg', 2, '1605249406'),
(15, 'daffaalfajri', 'daffaalfajri123', 'ddaffal123@gmail.com', '$2y$10$8AGCjisjdPcXemXQxxviDu6vu6.a/BGZikm.Pr6Rnr6gLql60YLzG', 'default.svg', 1, '1605284625'),
(16, 'daffaalfajri', 'adimn12345', 'daffaalfajri1234@gmail.com', '$2y$10$gGSjCjmz4/Pw70ERt3f17O9UeU1I5b/xolRgtlhcG/8JxGQABRj6i', 'default.svg', 1, '1605493277'),
(17, 'ssda', 'asdad112', 'asdad112@gmail.com', '$2y$10$7DEnjl.OcjYeNZcpyiV6ye6uwy1MLqtPvuxhVwTpxRtl95zjYZ2x2', 'default.svg', 2, '1605493420'),
(18, 'firstieliora', 'firstiadmin1', 'firsti@gmail.com', '$2y$10$Xrdlg7.yqfJFFtfCrZkhgeIzczE357v1JRg7wVK7h3nCLb5O0dWSq', 'default.svg', 1, '1605493492'),
(19, 'ahmadfaris', 'ahmadfaris1', 'ahmadfaris@gmail.com', '$2y$10$c2nlugicNzipxNWULbW49.zJsZJ6hIFAjzNYShcD2txGVR/QSSXDK', 'default.svg', 1, '1605494562'),
(20, 'ahmad faris', 'ahmadfaris12', 'mikaeldemon@gmail.com', '$2y$10$aKraZyJLdRdj7kfaBy3nQ.Bt9IKpmbx.oXlqSNGsm/qEl9nXC0KBS', 'default.svg', 1, '1605494630'),
(21, 'adha dont', 'adha123', 'adha12@gmail.com', '$2y$10$R1lMYYHWKPkxLoihEf1Y0.ddm.ip/0Gno86YbAuYgkXcZ1Xr0Y/7O', 'default.svg', 2, '1605494685');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'ggl@gmail.com', '7mrmfi2wevTUH00kHb3Q6rLly4OhbiweRaKiIEl9Lz0=', '1605240598'),
(2, 'daffa1122@gmail.com', 'PRB8EGsnedbZW9f8RBheB5i9GKwY36XX7hb6SlIIrMU=', '1605249558');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sifat_id` (`sifat_id`),
  ADD KEY `jabatan_id` (`jabatan_id`),
  ADD KEY `disposisi_ibfk_1` (`sm_id`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sifat`
--
ALTER TABLE `sifat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `sifat`
--
ALTER TABLE `sifat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD CONSTRAINT `disposisi_ibfk_1` FOREIGN KEY (`sm_id`) REFERENCES `surat_masuk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `disposisi_ibfk_2` FOREIGN KEY (`sifat_id`) REFERENCES `sifat` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `disposisi_ibfk_3` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
