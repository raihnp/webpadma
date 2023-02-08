

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL AUTO_INCREMENT,
  `guru` varchar(50) NOT NULL,
  `pelajaran` varchar(20) NOT NULL,
  `kosong` varchar(100) NOT NULL,
  `tanggal` varchar(12) NOT NULL,
  `kelas` varchar(9) NOT NULL,
  `t` varchar(4) NOT NULL,
  `siswa` varchar(5000) NOT NULL,
  `nis` varchar(300) NOT NULL,
  `absensi` varchar(300) NOT NULL,
  `keterangan` varchar(5000) NOT NULL,
  PRIMARY KEY (`id_absen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `agama` (
  `id_agama` int(11) NOT NULL AUTO_INCREMENT,
  `agama` varchar(20) NOT NULL,
  PRIMARY KEY (`id_agama`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO agama VALUES("1","Islam");
INSERT INTO agama VALUES("2","Kristen Protestan");
INSERT INTO agama VALUES("3","Kristen Katolik");
INSERT INTO agama VALUES("4","Hindu");
INSERT INTO agama VALUES("5","Budha");
INSERT INTO agama VALUES("6","Kong Hu Chu");
INSERT INTO agama VALUES("7","Kepercayaan");
INSERT INTO agama VALUES("8","lainnya");



CREATE TABLE `alumni` (
  `id_alumni` int(11) NOT NULL AUTO_INCREMENT,
  `alumni` varchar(100) NOT NULL,
  `nis` varchar(5) NOT NULL,
  `lulus` varchar(11) NOT NULL,
  `jk` varchar(9) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` text NOT NULL,
  `agama` varchar(20) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `line` varchar(50) NOT NULL,
  `status` varchar(5) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_alumni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `alumni_n` (
  `id_alumni_n` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` varchar(10) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `kpd` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_alumni_n`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `exstra` (
  `id_exstra` int(11) NOT NULL AUTO_INCREMENT,
  `exs` varchar(50) NOT NULL,
  `pembimbing` varchar(50) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `tempat` longtext NOT NULL,
  PRIMARY KEY (`id_exstra`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

INSERT INTO exstra VALUES("1","Pramuka Wajib","Drs. Agus Santosa","Minggu","14.30 - 16.30","Khusus kelas x","<p>Lapangan tengah</p>
");
INSERT INTO exstra VALUES("2","Pramuka Reguler","Suhirno","Jumat","14.30 - 16.30","minggu ke 2 dan ke  4","<p>lapangan tengah</p>
");
INSERT INTO exstra VALUES("3","Ketaqwaan","","","","","");
INSERT INTO exstra VALUES("4","Padmanaba Junior Rescue Club","","","","","");
INSERT INTO exstra VALUES("5","Kelompok ilmiah Remaja","","","","","");
INSERT INTO exstra VALUES("6","Majalah Progrsif","","","","","");
INSERT INTO exstra VALUES("7","Debat Bahasa Inggris","","","","","");
INSERT INTO exstra VALUES("8","English Conversation","","","","","");
INSERT INTO exstra VALUES("9","Bahasa Jerman","","","","","");
INSERT INTO exstra VALUES("10","Bahasa Jepang","","","","","");
INSERT INTO exstra VALUES("11","Robotik","","","","","");
INSERT INTO exstra VALUES("12","Aero Modeling","","","","","");
INSERT INTO exstra VALUES("13","Seni Tari","","","","","");
INSERT INTO exstra VALUES("14","Teater Jubah Macan","","Senin","","","");
INSERT INTO exstra VALUES("15","Karawitan","","","","","");
INSERT INTO exstra VALUES("16","Paduan Suara Padmanaba","","","","","");
INSERT INTO exstra VALUES("17","Pencak Silat","","","","","");
INSERT INTO exstra VALUES("18","Padmanaba Hiking Club","","","","","");
INSERT INTO exstra VALUES("19","Futsal","","","","","");
INSERT INTO exstra VALUES("20","Basket","","","","","");
INSERT INTO exstra VALUES("21","Bulu tangkis","","","","","");
INSERT INTO exstra VALUES("22","Bhayangkara Padmanba","","","","","");
INSERT INTO exstra VALUES("23","d All Star Padmanaba","","","","","");
INSERT INTO exstra VALUES("24","Tenis Meja ","","","","","");
INSERT INTO exstra VALUES("25","Padmanaba Orchestra","","","","","");



CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL AUTO_INCREMENT,
  `guru` varchar(100) NOT NULL,
  `code` int(5) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nuptk` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `jk` varchar(9) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telpon` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `line` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `pelajaran` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` varchar(6) NOT NULL,
  `kal` varchar(20) NOT NULL,
  `info` varchar(20) NOT NULL,
  `guru_n` varchar(20) NOT NULL,
  `karyawan_n` varchar(20) NOT NULL,
  `siswa_n` varchar(20) NOT NULL,
  `ortu_n` varchar(20) NOT NULL,
  `abs` varchar(20) NOT NULL,
  `nilai` varchar(20) NOT NULL,
  `ujian` varchar(20) NOT NULL,
  `tugas` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO guru VALUES("1","Drs. H. Maman Surachman, M.PdI","1","","","","Laki-laki","","","Yogyakarta","","","","Kepala Sekolah","","5cf79b6ef0cbb.jpg","Aktif","","","","","","","","","","","");
INSERT INTO guru VALUES("2","Drs. Agus Santosa","8","","","","Laki-laki","","","Yogya","","","","Waka Sarpras","Akademik","5cfa1c57baa98.jpg","Aktif"," "," "," "," "," "," "," "," "," "," ","<p>1. Bergabung 20 Februari 1978 ..SK.1234567890</p>
");
INSERT INTO guru VALUES("4","Meong","10","","","","","","","","","","","","Akademik","5cfb175f0e4e6.jpg","Pasif"," "," "," "," "," "," "," "," "," "," ","");



CREATE TABLE `guru_i` (
  `id_guru_i` int(11) NOT NULL AUTO_INCREMENT,
  `guru` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nuptk` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `jk` varchar(9) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telpon` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `line` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `pelajaran` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` varchar(5) NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `oleh` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_guru_i`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `guru_n` (
  `id_guru_n` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` varchar(10) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `kpd` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_guru_n`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `info` (
  `id_info` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(11) NOT NULL,
  `guru` varchar(5) NOT NULL,
  `karyawan` varchar(8) NOT NULL,
  `siswa` varchar(5) NOT NULL,
  `ortu` varchar(4) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `keterangan` longtext NOT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

INSERT INTO jabatan VALUES("1","Kepala Sekolah");
INSERT INTO jabatan VALUES("2","Waka Kesiswaan");
INSERT INTO jabatan VALUES("3","Waka Sarpras");
INSERT INTO jabatan VALUES("4","Waka Kurikulum");
INSERT INTO jabatan VALUES("5","Waka Humas");
INSERT INTO jabatan VALUES("6","Ka Bag Tu");
INSERT INTO jabatan VALUES("7","Bimbingan Konseling");
INSERT INTO jabatan VALUES("8","Wali Kelas X IPA 1");
INSERT INTO jabatan VALUES("9","Wali Kelas X IPA 2");
INSERT INTO jabatan VALUES("10","Wali Kelas X IPA 3");
INSERT INTO jabatan VALUES("11","Wali Kelas X IPA 4");
INSERT INTO jabatan VALUES("12","Wali Kelas X IPA 5");
INSERT INTO jabatan VALUES("13","Wali Kelas X IPA 6");
INSERT INTO jabatan VALUES("14","Wali Kelas X IPS 1");
INSERT INTO jabatan VALUES("15","Wali Kelas XI IPA 1");
INSERT INTO jabatan VALUES("16","Wali Kelas XI IPA 2");
INSERT INTO jabatan VALUES("17","Wali Kelas XI IPA 3");
INSERT INTO jabatan VALUES("18","Wali Kelas XI IPA 4");
INSERT INTO jabatan VALUES("19","Wali Kelas XI IPA 5");
INSERT INTO jabatan VALUES("20","Wali Kelas XI IPA 6");
INSERT INTO jabatan VALUES("21","Wali Kelas XI IPS 1");
INSERT INTO jabatan VALUES("22","Wali Kelas XII IPA 1");
INSERT INTO jabatan VALUES("23","Wali Kelas XII IPA 2");
INSERT INTO jabatan VALUES("24","Wali Kelas XII IPA 3");
INSERT INTO jabatan VALUES("25","Wali Kelas XII IPA 4");
INSERT INTO jabatan VALUES("26","Wali Kelas XII IPA 5");
INSERT INTO jabatan VALUES("27","Wali Kelas XII IPA 6");
INSERT INTO jabatan VALUES("28","Wali Kelas XII IPS 1");
INSERT INTO jabatan VALUES("29","Guru Mapel");
INSERT INTO jabatan VALUES("30","Guru Tamu");



CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `kls` varchar(9) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `periode` varchar(7) NOT NULL,
  `jam` varchar(13) NOT NULL,
  `pelajaran` varchar(50) NOT NULL,
  `guru1` varchar(50) NOT NULL,
  `guru2` varchar(50) NOT NULL,
  `guru3` varchar(50) NOT NULL,
  `guru4` varchar(50) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `gly` varchar(6) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `absensi` varchar(255) NOT NULL,
  `keterangan` longtext NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `kalender` (
  `id_kalender` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `kls` varchar(9) NOT NULL,
  `user` varchar(100) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  PRIMARY KEY (`id_kalender`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;




CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL AUTO_INCREMENT,
  `karyawan` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `jk` varchar(9) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telpon` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `line` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `kal` varchar(20) NOT NULL,
  `info` varchar(20) NOT NULL,
  `abs` varchar(20) NOT NULL,
  `status` varchar(6) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO karyawan VALUES("1","Captain-Marvel","1","","","Perempuan","","","Yogyakarta","","","","Bos"," "," "," ","Pasif","5cfa5420c0cc7.jpg");



CREATE TABLE `karyawan_i` (
  `id_karyawan_i` int(11) NOT NULL AUTO_INCREMENT,
  `karyawan` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `jk` varchar(9) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telpon` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `line` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `status` varchar(6) NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `oleh` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id_karyawan_i`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO karyawan_i VALUES("1","Captain-America","2","","","Laki-laki","","","","","","","TU","Pasif","07-06-2019","Drs. Agus Santosa","5cfaf568013f5.png","");



CREATE TABLE `karyawan_n` (
  `id_karyawan_n` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` varchar(10) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `kpd` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_karyawan_n`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(9) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO kelas VALUES("2","X IPA 1");
INSERT INTO kelas VALUES("3","X IPA 2");
INSERT INTO kelas VALUES("4","X IPA 3");
INSERT INTO kelas VALUES("5","X IPA 4");
INSERT INTO kelas VALUES("6","X IPA 5");
INSERT INTO kelas VALUES("7","X IPA 6");
INSERT INTO kelas VALUES("8","X IPS 1");
INSERT INTO kelas VALUES("9","XI IPA 1");
INSERT INTO kelas VALUES("10","XI IPA 2");
INSERT INTO kelas VALUES("11","XI IPA 3");
INSERT INTO kelas VALUES("12","XI IPA 4");
INSERT INTO kelas VALUES("13","XI IPA 5");
INSERT INTO kelas VALUES("14","XI IPA 6");
INSERT INTO kelas VALUES("15","XI IPS 1");
INSERT INTO kelas VALUES("16","XII IPA 1");
INSERT INTO kelas VALUES("17","XII IPA 2");
INSERT INTO kelas VALUES("18","XII IPA 3");
INSERT INTO kelas VALUES("19","XII IPA 4");
INSERT INTO kelas VALUES("20","XII IPA 5");
INSERT INTO kelas VALUES("21","XII IPA 6");
INSERT INTO kelas VALUES("22","XII IPS 1");



CREATE TABLE `kelompok` (
  `id_kelompok` int(11) NOT NULL AUTO_INCREMENT,
  `kelompok` varchar(6) NOT NULL,
  PRIMARY KEY (`id_kelompok`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO kelompok VALUES("1","IPA 1");
INSERT INTO kelompok VALUES("2","IPA 2");
INSERT INTO kelompok VALUES("3","IPA 3");
INSERT INTO kelompok VALUES("4","IPA 4");
INSERT INTO kelompok VALUES("5","IPA 5");
INSERT INTO kelompok VALUES("6","IPA 6");
INSERT INTO kelompok VALUES("7","IPS 1");



CREATE TABLE `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `kelompok` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `mulai` varchar(20) NOT NULL,
  `keluar` varchar(20) NOT NULL,
  `jab` varchar(20) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

INSERT INTO login VALUES("1","guru","Drs. H. Maman Surachman, M.PdI","9","05-06-2019 17:40:57","","");
INSERT INTO login VALUES("2","guru","Drs. H. Maman Surachman, M.PdI","9","06-06-2019 06:35:39","06-06-2019 06:52:41","");
INSERT INTO login VALUES("3","guru","Drs. H. Maman Surachman, M.PdI","9","06-06-2019 06:52:54","06-06-2019 06:53:11","Kepala Sekolah");
INSERT INTO login VALUES("4","guru","Drs. H. Maman Surachman, M.PdI","9","06-06-2019 06:53:41","06-06-2019 06:54:06","Kepala Sekolah");
INSERT INTO login VALUES("5","guru","Drs. Agus Santosa","8","06-06-2019 06:54:12","","");
INSERT INTO login VALUES("6","guru","Drs. Agus Santosa","8","06-06-2019 07:14:31","06-06-2019 07:17:44","Waka Sarpras");
INSERT INTO login VALUES("7","guru","Drs. H. Maman Surachman, M.PdI","9","06-06-2019 07:17:50","06-06-2019 07:19:01","Kepala Sekolah");
INSERT INTO login VALUES("8","guru","Dra. Sujiyati","5","06-06-2019 07:19:07","06-06-2019 07:19:51","");
INSERT INTO login VALUES("9","guru","Drs. Agus Santosa","8","06-06-2019 07:19:56","06-06-2019 07:20:30","Waka Sarpras");
INSERT INTO login VALUES("10","guru","Dra. Sujiyati","5","06-06-2019 07:20:36","06-06-2019 07:22:04","Guru Mapel");
INSERT INTO login VALUES("11","guru","Dra. Sujiyati","5","06-06-2019 07:22:22","06-06-2019 07:22:32","Guru Mapel");
INSERT INTO login VALUES("12","guru","Drs. H. Maman Surachman, M.PdI","9","06-06-2019 07:22:55","06-06-2019 07:23:27","Kepala Sekolah");
INSERT INTO login VALUES("13","guru","Dra. Sujiyati","5","06-06-2019 07:23:32","","Guru Mapel");
INSERT INTO login VALUES("14","guru","Drs. Agus Santosa","8","06-06-2019 07:24:44","","Waka Sarpras");
INSERT INTO login VALUES("15","guru","Drs. Agus Santosa","8","06-06-2019 15:15:41","","Waka Sarpras");
INSERT INTO login VALUES("16","guru","Drs. Agus Santosa","8","07-06-2019 05:31:54","","Waka Sarpras");
INSERT INTO login VALUES("17","guru","Drs. Agus Santosa","8","07-06-2019 08:38:20","","Waka Sarpras");
INSERT INTO login VALUES("18","guru","Drs. Agus Santosa","8","07-06-2019 15:10:19","07-06-2019 15:12:26","Waka Sarpras");
INSERT INTO login VALUES("19","guru","Drs. H. Maman Surachman, M.PdI","9","07-06-2019 15:12:33","07-06-2019 15:12:38","Kepala Sekolah");
INSERT INTO login VALUES("20","guru","Drs. Agus Santosa","8","07-06-2019 15:12:44","","Waka Sarpras");
INSERT INTO login VALUES("21","guru","Drs. Agus Santosa","8","07-06-2019 19:01:43","","Waka Sarpras");
INSERT INTO login VALUES("22","guru","Drs. Agus Santosa","8","08-06-2019 06:13:46","","Waka Sarpras");
INSERT INTO login VALUES("23","guru","Drs. Agus Santosa","8","08-06-2019 06:58:53","","Waka Sarpras");
INSERT INTO login VALUES("24","guru","Drs. Agus Santosa","8","08-06-2019 06:59:28","","Waka Sarpras");
INSERT INTO login VALUES("25","guru","Drs. Agus Santosa","8","08-06-2019 07:03:10","","Waka Sarpras");
INSERT INTO login VALUES("26","guru","Drs. Agus Santosa","8","08-06-2019 07:04:47","","Waka Sarpras");
INSERT INTO login VALUES("27","guru","Drs. Agus Santosa","8","08-06-2019 07:09:52","","Waka Sarpras");
INSERT INTO login VALUES("28","guru","Drs. Agus Santosa","8","08-06-2019 09:01:09","","Waka Sarpras");



CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_jadwal` int(11) NOT NULL,
  `guru` varchar(50) NOT NULL,
  `pelajaran` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `kls` varchar(9) NOT NULL,
  `siswa` text NOT NULL,
  `nilai` text NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `pass` (
  `id_pass` int(11) NOT NULL AUTO_INCREMENT,
  `id_guru` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_alumni` int(11) NOT NULL,
  `id_ortu` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` int(3) NOT NULL,
  PRIMARY KEY (`id_pass`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `pelajaran` (
  `id_pelajaran` int(11) NOT NULL AUTO_INCREMENT,
  `pelajaran` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pelajaran`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO pelajaran VALUES("2","Akademik");
INSERT INTO pelajaran VALUES("3","Agama");
INSERT INTO pelajaran VALUES("4","Agama Islam");
INSERT INTO pelajaran VALUES("5","Agama Kristen Katolik");
INSERT INTO pelajaran VALUES("7","Agama Kristen Protestan");
INSERT INTO pelajaran VALUES("8","Agama Hindu");
INSERT INTO pelajaran VALUES("9","Agama Budha");
INSERT INTO pelajaran VALUES("10","Agama Kong Hu Chu");
INSERT INTO pelajaran VALUES("11","Bahasa Indonesia");
INSERT INTO pelajaran VALUES("12","Bahasa Inggris");
INSERT INTO pelajaran VALUES("13","Bahasa Jawa");
INSERT INTO pelajaran VALUES("14","Bahasa Jerman");
INSERT INTO pelajaran VALUES("15","Bahasa Jepang");
INSERT INTO pelajaran VALUES("16","Matematika");
INSERT INTO pelajaran VALUES("17","Matematika Minat");
INSERT INTO pelajaran VALUES("18","Bahasa Inggris Minat");
INSERT INTO pelajaran VALUES("19","Seni");
INSERT INTO pelajaran VALUES("20","Seni Rupa");
INSERT INTO pelajaran VALUES("21","Seni Tari");
INSERT INTO pelajaran VALUES("22","Olah Raga");
INSERT INTO pelajaran VALUES("23","Fisika");
INSERT INTO pelajaran VALUES("24","Kimia");
INSERT INTO pelajaran VALUES("25","Biologi");
INSERT INTO pelajaran VALUES("26","PKN");
INSERT INTO pelajaran VALUES("27","PKWU");
INSERT INTO pelajaran VALUES("28","Sejarah");
INSERT INTO pelajaran VALUES("29","Sejarah Indonesia");
INSERT INTO pelajaran VALUES("30","Ekonomi");
INSERT INTO pelajaran VALUES("31","Konseling");
INSERT INTO pelajaran VALUES("32","");



CREATE TABLE `periode` (
  `id_periode` int(11) NOT NULL AUTO_INCREMENT,
  `periode` varchar(6) NOT NULL,
  `jam` varchar(15) NOT NULL,
  PRIMARY KEY (`id_periode`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO periode VALUES("1","1","07.15 - 08.00");
INSERT INTO periode VALUES("2","2","08.00 - 08.45");
INSERT INTO periode VALUES("3","3","08.45 - 09.30");
INSERT INTO periode VALUES("4","4","09.45 - 10.30");
INSERT INTO periode VALUES("5","5","10.30 - 11.15");
INSERT INTO periode VALUES("6","6","11.15 - 12.00");
INSERT INTO periode VALUES("7","7","12.30 - 13.15");
INSERT INTO periode VALUES("8","8","13.15 - 14.00");
INSERT INTO periode VALUES("9","9","14.15 - 15.00");
INSERT INTO periode VALUES("10","10","15.00 - 15.45");
INSERT INTO periode VALUES("11","Jumat","Jumat");



CREATE TABLE `perpus` (
  `id_perpus` int(11) NOT NULL AUTO_INCREMENT,
  `nis` int(5) NOT NULL,
  `kirim` varchar(11) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`id_perpus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `piket` (
  `id_piket` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(6) NOT NULL,
  `guru1` varchar(50) NOT NULL,
  `guru2` varchar(50) NOT NULL,
  `guru3` varchar(50) NOT NULL,
  `guru4` varchar(50) NOT NULL,
  PRIMARY KEY (`id_piket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `pilihan` (
  `id_pilihan` int(11) NOT NULL AUTO_INCREMENT,
  `nis` int(11) NOT NULL,
  `pilih` longtext NOT NULL,
  PRIMARY KEY (`id_pilihan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `record` (
  `id_record` int(11) NOT NULL AUTO_INCREMENT,
  `kls` varchar(9) NOT NULL,
  `tanggal` varchar(11) NOT NULL,
  `rec` longtext NOT NULL,
  PRIMARY KEY (`id_record`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` varchar(100) NOT NULL,
  `nis` varchar(5) NOT NULL,
  `jk` varchar(9) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` text NOT NULL,
  `agama` varchar(20) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `line` varchar(50) NOT NULL,
  `kls` varchar(20) NOT NULL,
  `klsb` varchar(20) NOT NULL,
  `klsc` varchar(20) NOT NULL,
  `klsd` varchar(20) NOT NULL,
  `klsx` varchar(20) NOT NULL,
  `klsn` varchar(5) NOT NULL,
  `kal` varchar(20) NOT NULL,
  `info` varchar(20) NOT NULL,
  `ujian` varchar(20) NOT NULL,
  `tugas` varchar(20) NOT NULL,
  `nilai` varchar(20) NOT NULL,
  `tu` varchar(20) NOT NULL,
  `perpus` varchar(20) NOT NULL,
  `j_hari` int(5) NOT NULL,
  `hadir` int(5) NOT NULL,
  `sakit` int(5) NOT NULL,
  `ijin` int(5) NOT NULL,
  `xxx` int(5) NOT NULL,
  `status` varchar(5) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `siswa_i` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` varchar(100) NOT NULL,
  `nis` varchar(5) NOT NULL,
  `jk` varchar(9) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` text NOT NULL,
  `agama` varchar(20) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `line` varchar(50) NOT NULL,
  `kls` varchar(20) NOT NULL,
  `klsb` varchar(20) NOT NULL,
  `klsc` varchar(20) NOT NULL,
  `klsd` varchar(20) NOT NULL,
  `klsx` varchar(20) NOT NULL,
  `status` varchar(5) NOT NULL,
  `foto` varchar(20) NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `oleh` varchar(50) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `siswa_n` (
  `id_siswa_n` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` varchar(10) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `kpd` varchar(50) NOT NULL,
  `kls` varchar(10) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_siswa_n`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tu` (
  `id_tu` int(11) NOT NULL AUTO_INCREMENT,
  `nis` int(5) NOT NULL,
  `kirim` varchar(11) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`id_tu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tugas` (
  `id_tugas` int(11) NOT NULL AUTO_INCREMENT,
  `guru` varchar(50) NOT NULL,
  `pelajaran` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `kls` varchar(9) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `keterangan` longtext NOT NULL,
  PRIMARY KEY (`id_tugas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `web` (
  `id_web` int(11) NOT NULL AUTO_INCREMENT,
  `img1` varchar(50) NOT NULL,
  `img3` varchar(50) NOT NULL,
  `img4` varchar(50) NOT NULL,
  `img5` varchar(50) NOT NULL,
  `img6` varchar(50) NOT NULL,
  `img7` varchar(50) NOT NULL,
  `img8` varchar(50) NOT NULL,
  `story` text NOT NULL,
  `vid3` text NOT NULL,
  `vid4` text NOT NULL,
  `vid5` text NOT NULL,
  `vid6` text NOT NULL,
  `vid7` text NOT NULL,
  `quote` varchar(100) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kap` varchar(15) NOT NULL,
  PRIMARY KEY (`id_web`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO web VALUES("1","5ced21ea2b7a6.jpg","5ced25d55fe2d.jpg","5ced283f013bd.jpg","5ced3eafec98c.jpg","5ced40245008f.jpg","5ced43233a793.jpg","5ced47a3da67b.jpg","<iframe width="560" height="315" src="https://www.youtube.com/embed/NZ9fcd5fuqg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>","","<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/BvRDOukBB-O/" data-instgrm-version="12" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/BvRDOukBB-O/" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;"> Lihat postingan ini di Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div></a> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/BvRDOukBB-O/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">The Imperishable &#34;Even the sun is surrounded by darkness&#34; 03. 05. 2019 Concert Hall Taman Budaya Yogyakarta</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">Sebuah kiriman dibagikan oleh <a href="https://www.instagram.com/jubahmacan/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px;" target="_blank"> Teater Jubah Macan Padmanaba</a> (@jubahmacan) pada <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2019-03-21T10:09:07+00:00">21 Mar 2019 jam 3:09 PDT</time></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>","<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/Bwjy0QZhITb/" data-instgrm-version="12" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/Bwjy0QZhITb/" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;"> Lihat postingan ini di Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div></a> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/Bwjy0QZhITb/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">&#34;sebentar lagi kita akan datang, tapi ingat jangan ditunggu aku bukan pacarmu..&#34;</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">Sebuah kiriman dibagikan oleh <a href="https://www.instagram.com/dedicart2019/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px;" target="_blank"> Dedic Art 2019 ðŸŽ¨</a> (@dedicart2019) pada <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2019-04-22T13:21:18+00:00">22 Apr 2019 jam 6:21 PDT</time></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>","","<iframe src="https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2FGorgeousBeautyDaily%2Fvideos%2F306983339992137%2F&show_text=0&width=267" width="267" height="476" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allowFullScreen="true"></iframe>","<p>&ldquo;Imagination is more important than knowledge. For knowledge is limited, whereas imaginatio","Albert Einstein","Ilmuwan");

