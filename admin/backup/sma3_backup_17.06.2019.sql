

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO absen VALUES("1","Drs. Suhirno. MBA","Matematika"," , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , ","17-06-2019","XI IPA 3","4*","ABHISTA FARREL RAMADHIANO,ADITYA AHMAD RAFI,ALFIAN ARBIANTA,ALYA RAMADIANISA,ANNISA ARNI DEWI,ANNISA GISSENA,ANRI PUTRI MALAFATI,ARVIN HASANI RAHARJO,BENING PAKERTI PUTIH SUCI,BHRE PADANTYA NOOR PUTRANDA,BRYAN AMIRUL HUSNA,EMBUN KINANTHI BESTARIE,FAIZ RAFLI RAMDHANI,FAZADIARA DEIGRATIE SOPHIA,FINESSA MEUTIA KAMILA,HAFIDA DWI NURAINI,HERINA AZIZAH THAWAFIA,INDRA AQIL ADELIO,KADEK DHEA AMANDA,MUHAMMAD RAYNOR SINATRYA SATWIKA,MUHAMMAD WIDYA HUDIYA WIJAYA,NADYA KHAILIFA,NAZIL NASRUDDIN ASSHIDDQI,PUTRI AZZAHRA RAHMATULLAH,RADEN RARA ROSITA NURUL ARYANI,RAFLY YOGANATHA,RAIHAN PUTRI IMANDA,RAMADHAN TRI NURCAHYO,RATU AQILAH INTAN CARISSA,RIF AT ZUHRAH HANIFAH HANUUN,SALSA BILA DIVA MUTIARA,SEFRINA ASKHANISSA PRAMESTI,VINKA PUTRI CARISSA,ZABINA ASFAHANI","13912,13913,13914,13915,13916,13917,13918,13919,13920,13921,13922,13923,13924,13925,13926,13927,13928,13929,13930,13931,13932,13934,13935,13936,13937,13938,13939,13940,13941,13942,13943,13944,13945,13946","Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir",",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");



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
  `foto` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_alumni`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;

INSERT INTO alumni VALUES("1","AMILNA ULINNUHA HIDAYAT","13619","2019","Perempuan","on","0000-00-00","","Islam","","","","5d004f453bb41.jpg","");
INSERT INTO alumni VALUES("2","ANGELITA DHIYANDRA PERMATTA HATTI","13620","2019","Perempuan","on","0000-00-00","","","","","","5d004fa5f0f24.jpg","");
INSERT INTO alumni VALUES("3","AQIELA MAHANNADA","13621","2019","Perempuan","on","0000-00-00","","","","","","5d004fbc0d260.jpg","");
INSERT INTO alumni VALUES("4","ARDA KHOIRA SYAHRANI SABRINA","13622","2019","Perempuan","on","0000-00-00","","Islam","","","","5d004fe05d002.jpg","");
INSERT INTO alumni VALUES("5","AVIA RAHMA TAHARA","13623","2019","Perempuan","on","0000-00-00","","","","","","5d004ff47e581.jpg","");
INSERT INTO alumni VALUES("6","DYAH PRADJNA PARAMITHA","13625","2019","Perempuan","on","0000-00-00","","","","","","5d00500d31d2d.jpg","");
INSERT INTO alumni VALUES("7","NABILA RAMIZA PUTERI","13628","2019","Perempuan","on","0000-00-00","","","","","","5d0050287b5b8.jpg","");
INSERT INTO alumni VALUES("8","NADYA SASMITHA HARYANTO","13629","2019","Perempuan","on","0000-00-00","","","","","","5d00504cc3f98.jpg","");
INSERT INTO alumni VALUES("9","NAFISA AZ ZAHRA","13630","2019","Perempuan","on","0000-00-00","","","","","","5d0050915be6c.jpg","");
INSERT INTO alumni VALUES("10","NARANATHADEWI NITISARA","13631","2019","Perempuan","on","0000-00-00","","","","","","5d0050ba0a8b1.jpg","");
INSERT INTO alumni VALUES("11","NOVIANA DWI MURTIASTUTI","13632","2019","Perempuan","on","0000-00-00","","","","","","5d0050dab488e.jpg","");
INSERT INTO alumni VALUES("12","NUR AINI SYIFA","13633","2019","Perempuan","on","0000-00-00","","","","","","5d0050f31bbb6.jpg","");
INSERT INTO alumni VALUES("13","PUTRI ANGGRAINI BUDIANTO","13634","2019","Perempuan","on","0000-00-00","","","","","","5d005110d561f.jpg","");
INSERT INTO alumni VALUES("14","SEKAR PAWESTRI GITA RAMADHANI","13636","2019","Perempuan","on","0000-00-00","","","","","","5d00512e944c3.jpg","");
INSERT INTO alumni VALUES("15","WASHFY MAHARANI ARIFAH","13637","2019","Perempuan","on","0000-00-00","","","","","","5d005147b6f24.jpg","");
INSERT INTO alumni VALUES("16","ZITA FINNESHA KINAYANG","13638","2019","Perempuan","on","0000-00-00","","","","","","5d00515a15a42.jpg","");
INSERT INTO alumni VALUES("17","ADISTARA RIZKY RAMADHAN","13639","2019","Laki-laki","on","0000-00-00","","","","","","5d0051718feb0.jpg","");
INSERT INTO alumni VALUES("18","ADITYA ANANTA PUTRA","13640","2019","Laki-laki","on","0000-00-00","","","","","","5d00518311902.jpg","");
INSERT INTO alumni VALUES("19","ANDIHAN LUKAS ARGADHIKA","13641","2019","Laki-laki","on","0000-00-00","","Islam","","","","5d00519d4b419.jpg","");
INSERT INTO alumni VALUES("20","BENEDICTUS VALERIAN PRADIPTA","13643","2019","Laki-laki","on","0000-00-00","","","","","","5d0051b232c10.jpg","");
INSERT INTO alumni VALUES("21","GREGORIUS PETRA TANJUNG NUR ANGGORO","13645","2019","Laki-laki","on","0000-00-00","","","","","","5d0051c5cb828.jpg","");
INSERT INTO alumni VALUES("22","MICHAEL ALFARINO BELLA PHUNGPUTRA","13646","2019","Laki-laki","on","0000-00-00","","","","","","5d0051dab0238.jpg","");
INSERT INTO alumni VALUES("23","THARIQ FAROS MANUMONO","13651","2019","Laki-laki","on","0000-00-00","","","","","","5d0051f31478f.jpg","");
INSERT INTO alumni VALUES("24","VINCENTIUS TRIADMA DENNI SETIAWAN","13652","2019","Laki-laki","on","0000-00-00","","","","","","5d00520993a12.jpg","");
INSERT INTO alumni VALUES("25","ZULFARA DISNATYA ANGGITA PUTRI","13675","2019","Perempuan","on","0000-00-00","","","","","","5d005219567f3.jpg","");
INSERT INTO alumni VALUES("26","ANGGITA LARAS PUSPITA","13656","2019","Perempuan","on","0000-00-00","","","","","","5d00524292994.jpg","");
INSERT INTO alumni VALUES("27","ANNISA SILVIANTI","13657","2019","Perempuan","on","0000-00-00","","","","","","5d00526352bbd.jpg","");
INSERT INTO alumni VALUES("28","FATIHAH JIHAR AULIA","13663","2019","Perempuan","on","0000-00-00","","Islam","","","","5d00528847f2b.jpg","");
INSERT INTO alumni VALUES("29","ABIYOGA SIDHI WIYANTO","13676","2019","Laki-laki","on","0000-00-00","","Islam","","","","5d005297c52fc.jpg","");
INSERT INTO alumni VALUES("30","DITO AULIA ROHMAN","13682","2019","Laki-laki","on","0000-00-00","","Islam","","","","5d0052b8c09aa.jpg","");
INSERT INTO alumni VALUES("31","FADHLAN RIZQY FIRROHMAN","13684","2019","Laki-laki","on","0000-00-00","","","","","","5d0052ca56567.jpg","");
INSERT INTO alumni VALUES("32","RAKKA SYAAKIRAL NUIR","13689","2019","Laki-laki","on","0000-00-00","","","","","","5d0052e3d6942.jpg","");
INSERT INTO alumni VALUES("33","AURELIA TITA KUSUMAJATI","13730","2019","Perempuan","on","0000-00-00","","","","","","5d005309d6086.jpg","");
INSERT INTO alumni VALUES("34","SATRIA FARQI KILALI","13827","2019","Laki-laki","on","0000-00-00","","","","","","5d005322b853e.jpg","");
INSERT INTO alumni VALUES("35","ADELIA RACHMA INDRIASWARI SUSANTO","13830","2019","Perempuan","on","0000-00-00","","","","","","5d00533174bc3.jpg","");
INSERT INTO alumni VALUES("36","AISYAH MARISA DONABELA WARDANI POROSI","13831","2019","Perempuan","on","0000-00-00","","","","","","5d005349a6f9f.jpg","");
INSERT INTO alumni VALUES("37","ANNISA ANGGRAENI","13832","2019","Perempuan","on","0000-00-00","","","","","","5d005361301e9.jpg","");
INSERT INTO alumni VALUES("38","DEFA AZZURRI HAFARA EKA PUTRI","13833","2019","Perempuan","on","0000-00-00","","","","","","5d005377998a7.jpg","");
INSERT INTO alumni VALUES("39","ELISABETH TABERNAKEL","13834","2019","Perempuan","on","0000-00-00","","","","","","5d0053918b48f.jpg","");
INSERT INTO alumni VALUES("40","FATHIMAH NUR SALMA ABADIYA","13835","2019","Perempuan","on","0000-00-00","","","","","","5d0053b3ac931.jpg","");
INSERT INTO alumni VALUES("41","MARIA IMMACULATA HILDA PUSPA VERENA","13836","2019","Perempuan","on","0000-00-00","","","","","","5d0053cf7d05e.jpg","");
INSERT INTO alumni VALUES("42","NANDARIZA YOGA PERTIWI","13837","2019","Perempuan","on","0000-00-00","","","","","","5d0053ea1dbd6.jpg","");
INSERT INTO alumni VALUES("43","RISSE DWI AMANDARI","13838","2019","Perempuan","on","0000-00-00","","","","","","5d005401b43a1.jpg","");
INSERT INTO alumni VALUES("44","RUT PUTRI NUGRAHENI","13839","2019","Perempuan","on","0000-00-00","","","","","","5d00542478af6.jpg","");
INSERT INTO alumni VALUES("45","ALEXANDER FARREL RASENDRIYA HARYONO","13840","2019","Laki-laki","on","0000-00-00","","","","","","5d005439bef4f.jpg","");
INSERT INTO alumni VALUES("46","FEBRILIAN DAME NURALDI","13841","2019","Laki-laki","on","0000-00-00","","","","","","5d005452d9cd8.jpg","");
INSERT INTO alumni VALUES("47","NURUL CHAIRUNISA","13668","2019","Perempuan","on","0000-00-00","","","","","","5d005465ca366.png","");
INSERT INTO alumni VALUES("48","UNAISA RAHMAWATI","13673","2019","Perempuan","on","0000-00-00","","","","","","5d005482a76f8.png","");
INSERT INTO alumni VALUES("49","ADNA JOVITA VANIA RAHMA","13654","2019","Perempuan","on","0000-00-00","","Islam","","","","5d005492e7820.jpg","");
INSERT INTO alumni VALUES("50","AINA NURARIFA","13618","2019","Perempuan","on","0000-00-00","","","","","","5d0054a39a395.jpg","<p>cantik sekali</p>
");
INSERT INTO alumni VALUES("51","AISYA ZALFATURRAHMA","13726","2019","Perempuan","on","0000-00-00","","","","","","5d0054b314546.jpg","");
INSERT INTO alumni VALUES("52","ALEXANDRO RAKKA SADEWA","13677","2019","Laki-laki","on","0000-00-00","","","","","","5d0054c2caec8.jpg","");
INSERT INTO alumni VALUES("53","ALFINE KRISTIANTO","13678","2019","Laki-laki","on","0000-00-00","","","","","","5d0054dc8fc0a.jpg","");
INSERT INTO alumni VALUES("54","ALFRYDA NABILA PERMATASARI","13728","2019","Perempuan","on","0000-00-00","","","","","","5d0054feb2b97.jpg","");
INSERT INTO alumni VALUES("55","ANGGIA SOMYA SITA","13655","2019","Perempuan","on","0000-00-00","","","","","","5d00550e1743d.jpg","");
INSERT INTO alumni VALUES("56","ARANDA YOGI NUGROHO","13679","2019","Laki-laki","on","0000-00-00","","","","","","5d00551e430ce.jpg","");
INSERT INTO alumni VALUES("57","AULIA AZKA ALFAFA","13680","2019","Laki-laki","on","0000-00-00","","","","","","5d00552f92f01.jpg","");
INSERT INTO alumni VALUES("58","AZIS SOFYAN PRASETYO","13642","2019","Laki-laki","on","0000-00-00","","","","","","5d00554046013.jpg","");
INSERT INTO alumni VALUES("59","DHEA RIZKY RAMADHANI","13731","2019","Perempuan","on","0000-00-00","","","","","","5d0055665320c.jpg","");
INSERT INTO alumni VALUES("60","DINDA TIARA DENDIKA","13660","2019","Perempuan","on","0000-00-00","","","","","","5d00557ceeb10.jpg","");
INSERT INTO alumni VALUES("61","DISYA ANGGER WENING PUTRI","13661","2019","Perempuan","on","0000-00-00","","","","","","5d0055a61148d.jpg","");
INSERT INTO alumni VALUES("62","DIVITA HAYYU KINANTI","13624","2019","Perempuan","on","0000-00-00","","","","","","5d0055b6e99b2.jpg","");
INSERT INTO alumni VALUES("63","EASTER CHRISTALENTA PUTRI","13662","2019","Perempuan","on","0000-00-00","","","","","","5d0055c8032d4.jpg","");
INSERT INTO alumni VALUES("64","ENGGAR DWIARTA PRASETYO","13683","2019","Laki-laki","on","0000-00-00","","","","","","5d0055de63ca2.jpg","");
INSERT INTO alumni VALUES("65","FAKIH JERIAN RAMADHANI","13644","2019","Laki-laki","on","0000-00-00","","","","","","5d0055f44278b.jpg","");
INSERT INTO alumni VALUES("66","FAUZIAH RAMADHANI","13626","2019","Perempuan","on","0000-00-00","","","","","","5d0056086a169.jpg","");
INSERT INTO alumni VALUES("67","FREISIANE RACHMALIA SADONO","13733","2019","Perempuan","on","0000-00-00","","","","","","5d00563473990.jpg","");
INSERT INTO alumni VALUES("68","GABRIELLA CHRISTIE PURNAMA","13664","2019","Perempuan","on","0000-00-00","","","","","","5d0056485d035.jpg","");
INSERT INTO alumni VALUES("69","HIMARASMI JYESTHAPUTRI AJI","13665","2019","Perempuan","on","0000-00-00","","","","","","5d00626faf574.jpg","");
INSERT INTO alumni VALUES("70","KADEK EGADIA CALISTO","13686","2019","Laki-laki","on","0000-00-00","","","","","","5d006288c1f16.jpg","");
INSERT INTO alumni VALUES("71","KHAYRA GINAN IZZATI","13627","2019","Perempuan","on","0000-00-00","","","","","","5d0062b2aa3d9.jpg","");
INSERT INTO alumni VALUES("72","NADIA RUSTIANA DEVI","13666","2019","Perempuan","on","0000-00-00","","","","","","5d0062ce2f4cc.jpg","");
INSERT INTO alumni VALUES("73","NI PUTU ARYA PUTRI SATYAWATI","13667","2019","Perempuan","on","0000-00-00","","","","","","5d0062e936856.jpg","");
INSERT INTO alumni VALUES("74","ORLEN FA IQ TSAQIFYAN","13687","2019","Laki-laki","on","0000-00-00","","","","","","5d00631fae571.jpg","");
INSERT INTO alumni VALUES("75","PRIMAVERA NABILA SHAFA","13669","2019","Perempuan","on","0000-00-00","","","","","","5d00633665d34.jpg","");
INSERT INTO alumni VALUES("76","PUAN NUR RIZQIA","13670","2019","Perempuan","on","0000-00-00","","","","","","5d006353af49c.jpg","");
INSERT INTO alumni VALUES("77","RIFKY DWI RAMADHAN","13649","2019","Laki-laki","on","0000-00-00","","","","","","5d0063742f2ff.jpg","");
INSERT INTO alumni VALUES("78","RIZKA AMARYLIS SHIFANY","13671","2019","Perempuan","on","0000-00-00","","","","","","5d006396511c0.jpg","");
INSERT INTO alumni VALUES("79","RUSWAN SYARIF THALIBA PUTRA","13650","2019","Laki-laki","on","0000-00-00","","","","","","5d0063b1ac387.jpg","");
INSERT INTO alumni VALUES("80","SABILA ROSYIDAH","13738","2019","Perempuan","on","0000-00-00","","","","","","5d0063c4d6622.jpg","");
INSERT INTO alumni VALUES("81","WAHYU SEKAR WIJAYANINGTYAS","13674","2019","Perempuan","on","0000-00-00","","","","","","5d0063dd218e6.jpg","");
INSERT INTO alumni VALUES("82","YUDHISTIRA HAMID","13653","2019","Laki-laki","on","0000-00-00","","","","","","5d0063edc6efa.jpg","");
INSERT INTO alumni VALUES("83","AILSA SARASWATI SAMODRA","13794","2019","Perempuan","on","0000-00-00","","","","","","5d006400ebe43.jpg","");
INSERT INTO alumni VALUES("84","ALIFAH RAHMATIKA BASYASYA","13795","2019","Perempuan","on","0000-00-00","","","","","","5d00641f41090.jpg","");
INSERT INTO alumni VALUES("85","AROZZA TABINA SAHLAN","13658","2019","Perempuan","on","0000-00-00","","","","","","5d00643aa67f6.png","");
INSERT INTO alumni VALUES("86","BERNADETA EVA EFRATA","13796","2019","Perempuan","on","0000-00-00","","","","","","5d0064540c555.png","");
INSERT INTO alumni VALUES("87","BIANCA NIRVANA SANTOSO","13659","2019","Perempuan","on","0000-00-00","","","","","","5d0064c1eb259.jpg","");
INSERT INTO alumni VALUES("88","CHOIRUNNISA RAHMA NADYA","13797","2019","Perempuan","on","0000-00-00","","","","","","5d0064d72ab39.jpg","");
INSERT INTO alumni VALUES("89","DAFFA ATHALLAH PANGESTU","13681","2019","Laki-laki","on","0000-00-00","","","","","","5d0064f3348f6.jpg","");
INSERT INTO alumni VALUES("90","DAMAR ABHINAWA","13815","2019","Laki-laki","on","0000-00-00","","","","","","5d006504cc1da.jpg","");
INSERT INTO alumni VALUES("91","FAZABELLA WIJAYA SANTOSO","13799","2019","Perempuan","on","0000-00-00","","","","","","5d00651d13d0a.jpg","");
INSERT INTO alumni VALUES("92","FERNANDO LAVENTUS KEVIN AMARTA","13817","2019","Laki-laki","on","0000-00-00","","Islam","","","","5d006555dce16.png","");
INSERT INTO alumni VALUES("93","HANA MALIHA RUHAINI","13800","2019","Perempuan","on","0000-00-00","","Islam","","","","5d00871eb815b.jpg","");
INSERT INTO alumni VALUES("94","IHSAN SADDAN RIVALDI","13820","2019","Laki-laki","on","0000-00-00","","","","","","5d0087398627a.jpg","");
INSERT INTO alumni VALUES("95","ILHAM SATRIYO PINANDITO","13685","2019","Laki-laki","on","0000-00-00","","","","","","5d008755f1290.jpg","");
INSERT INTO alumni VALUES("96","JAUHAR WIBISONO","13821","2019","Laki-laki","on","0000-00-00","","","","","","5d008773c7bd0.png","");
INSERT INTO alumni VALUES("97","JOSEPHINE MARIA CRISTISSA WINDANTI","13734","2019","Perempuan","on","0000-00-00","","","","","","5d0087806386c.jpg","");
INSERT INTO alumni VALUES("98","KEISHA AMADEA","13802","2019","Perempuan","on","0000-00-00","","","","","","5d008869a2f1f.jpg","");
INSERT INTO alumni VALUES("99","LARAS CIPTA NING BUDI NARISWARI","13803","2019","Perempuan","on","0000-00-00","","","","","","5d00887839026.jpg","");
INSERT INTO alumni VALUES("100","MIRA MAHA DEVANI","13805","2019","Perempuan","on","0000-00-00","","","","","","5d0088b45b51b.jpg","");
INSERT INTO alumni VALUES("101","MUHAMMAD AULIA IRSYAD","13822","2019","Laki-laki","on","0000-00-00","","","","","","5d0088ca1bf3e.jpg","");
INSERT INTO alumni VALUES("102","MUHAMMAD FAKHRIZAL GHANI","13647","2019","Laki-laki","on","0000-00-00","","","","","","5d0088dfd2c39.jpg","");
INSERT INTO alumni VALUES("103","MUHAMMAD HAIDAR LAZUARDI","13823","2019","Laki-laki","on","0000-00-00","","","","","","5d0088ef88a69.jpg","");
INSERT INTO alumni VALUES("104","MUHAMMAD IHSAN ABDURRAHMAN","13752","2019","Laki-laki","on","0000-00-00","","","","","","5d0088ff9f24d.jpg","");
INSERT INTO alumni VALUES("105","PALUPI AZZAHRA","13806","2019","Perempuan","on","0000-00-00","","","","","","5d0089254dca9.jpg","");
INSERT INTO alumni VALUES("106","PATRICIA GRACIELLA AUDREY PRAJANINGTYAS","13736","2019","Perempuan","on","0000-00-00","","","","","","5d008947f0a88.jpg","");
INSERT INTO alumni VALUES("107","RAHADIAN AHMAD","13688","2019","Laki-laki","on","0000-00-00","","","","","","5d0089598691f.jpg","");
INSERT INTO alumni VALUES("108","RICKY HASSAN AHMADAN","13648","2019","Laki-laki","on","0000-00-00","","","","","","5d0089718b301.jpg","");
INSERT INTO alumni VALUES("109","RONA ANDINI PUTRI","13807","2019","Perempuan","on","0000-00-00","","","","","","5d00897f029c8.jpg","");
INSERT INTO alumni VALUES("110","RR. ANDHINI YUDHANI PUTRI","13737","2019","Perempuan","on","0000-00-00","","","","","","5d00899406471.jpg","");
INSERT INTO alumni VALUES("111","SABILA CAHYANINGRUM","13808","2019","Perempuan","on","0000-00-00","","","","","","5d0089aed2118.jpg","");
INSERT INTO alumni VALUES("112","SALMA ZULFA","13707","2019","Perempuan","on","0000-00-00","","","","","","5d0089d45f2fe.jpg","");
INSERT INTO alumni VALUES("113","SALSABIILA AULIA RAMADHANI","13635","2019","Perempuan","on","0000-00-00","","","","","","5d0089ea91a3d.jpg","");
INSERT INTO alumni VALUES("114","SALSABILA ZAHRA PUTRI","13809","2019","Perempuan","on","0000-00-00","","","","","","5d008a0750c02.jpg","");
INSERT INTO alumni VALUES("115","SULTAN ISKANDAR ZAKARIYA","13828","2019","Laki-laki","on","0000-00-00","","","","","","5d008a1bce0fd.png","");
INSERT INTO alumni VALUES("116","SULVINA MARA DEWI","13810","2019","Perempuan","on","0000-00-00","","","","","","5d008a3922b49.jpg","");
INSERT INTO alumni VALUES("117","TIARA RAMADHANI TRISNAWATI","13812","2019","Perempuan","on","0000-00-00","","","","","","5d008a4a35043.jpg","");
INSERT INTO alumni VALUES("118","YOSEFIN CINTANTYA CAHAYA SAFIRA","13741","2019","Perempuan","on","0000-00-00","","","","","","5d008a59aa8ba.jpg","");
INSERT INTO alumni VALUES("119","ADITYA PRATAMA","13743","2019","Laki-laki","on","0000-00-00","","","","","","5d008a6a5215d.jpg","");
INSERT INTO alumni VALUES("120","ADRIANUS CHARLIE HADIRRIA AGEL SADEWA","13744","2019","Laki-laki","on","0000-00-00","","","","","","5d008a72c56e8.jpg","");
INSERT INTO alumni VALUES("121","AGATHA FABYAN","13725","2019","Perempuan","on","0000-00-00","","","","","","5d008a7e614d6.jpg","");
INSERT INTO alumni VALUES("122","AKHDAN HALOMOAN HARAHAP","13710","2019","Laki-laki","on","0000-00-00","","","","","","5d008a87492a6.jpg","");
INSERT INTO alumni VALUES("123","ALBERTINE ZEIN SYAFRIZAL","13758","2019","Laki-laki","on","0000-00-00","","","","","","5d008a942100e.png","");
INSERT INTO alumni VALUES("124","ALIFIA DIFA AZZAHRA","13690","2019","Perempuan","on","0000-00-00","","","","","","5d008a9cddb72.jpg","");
INSERT INTO alumni VALUES("125","AMMALYA DARAYATULHUSNA","13691","2019","Perempuan","on","0000-00-00","","","","","","5d008ab85ac9f.jpg","");
INSERT INTO alumni VALUES("126","ANANDA QORRY AINA","13692","2019","Perempuan","on","0000-00-00","","","","","","5d008ac70e0ef.jpg","");
INSERT INTO alumni VALUES("127","ANDREAS YOZI ADHYAKSA","13745","2019","Laki-laki","on","0000-00-00","","","","","","5d008ad8322a4.jpg","");
INSERT INTO alumni VALUES("128","ANGELICA ANDREA CRYSANTIA TANGKILISAN","13729","2019","Perempuan","on","0000-00-00","","","","","","5d008b041bbf2.jpg","");
INSERT INTO alumni VALUES("129","ARIGA NUR HIDAYAT","13712","2019","Laki-laki","on","0000-00-00","","","","","","5d008b21ef8d9.jpg","");
INSERT INTO alumni VALUES("130","ASYIFAH DICHA FIRANI","13693","2019","Perempuan","on","0000-00-00","","","","","","5d008b2c72b33.jpg","");
INSERT INTO alumni VALUES("131","AURELIA PRISCILLA REGITA PUTRI","13694","2019","Perempuan","on","0000-00-00","","","","","","5d008b3702aa8.jpg","");
INSERT INTO alumni VALUES("132","BONAVENTURA BAGAS SUKARNO","13746","2019","Laki-laki","on","0000-00-00","","","","","","5d008b4606479.jpg","");
INSERT INTO alumni VALUES("133","CHAIRUNNISA YULIA WIDYARATRI","13695","2019","Perempuan","on","0000-00-00","","","","","","5d008b551e05b.jpg","");
INSERT INTO alumni VALUES("134","DAFFA ANANDA","13762","2019","Perempuan","on","0000-00-00","","","","","","5d008b6434bff.jpg","");
INSERT INTO alumni VALUES("135","DAVA ADITYA JAUHAR","13747","2019","Laki-laki","on","0000-00-00","","","","","","5d008b77d3618.jpg","");
INSERT INTO alumni VALUES("136","ERLINDA QUINTA PRAMUDYANTINI","13765","2019","Perempuan","on","0000-00-00","","","","","","5d008ba0ba1af.jpg","");
INSERT INTO alumni VALUES("137","FAISADHANI ASHARI","13716","2019","Laki-laki","on","0000-00-00","","","","","","5d008ba93697e.jpg","");
INSERT INTO alumni VALUES("138","FARAH NABILA KHOIRUNISA","13698","2019","Perempuan","on","0000-00-00","","","","","","5d008bb5a16c1.jpg","");
INSERT INTO alumni VALUES("139","FITRAH RAMADHANI NUGROHO","13719","2019","Laki-laki","on","0000-00-00","","","","","","5d008bc5417f9.jpg","");
INSERT INTO alumni VALUES("140","KANINDA KHAIRUNNISA","13702","2019","Perempuan","on","0000-00-00","","","","","","5d008bf8b342f.jpg","");
INSERT INTO alumni VALUES("141","MARIA CYNTHIA HARIJANTO","13735","2019","Perempuan","on","0000-00-00","","","","","","5d008c0c6e8be.jpg","");
INSERT INTO alumni VALUES("142","MAXIMILIANUS PRASTOWO HERNAWAN","13750","2019","Laki-laki","on","0000-00-00","","Islam","","","","5d008c1ac89d7.jpg","");
INSERT INTO alumni VALUES("143","MUHAMMAD FARREL RAVIDINATA MASOGA BINTANG","13751","2019","Laki-laki","on","0000-00-00","","","","","","5d008c288e0c7.jpg","");
INSERT INTO alumni VALUES("144","MUHAMMAD IQBAL FAUZI","13753","2019","Laki-laki","on","0000-00-00","","","","","","5d008c381988a.jpg","");
INSERT INTO alumni VALUES("145","MUHAMMAD RAIHAN HILMY","13790","2019","Laki-laki","on","0000-00-00","","","","","","5d008c5ecb384.jpg","");
INSERT INTO alumni VALUES("146","NAJLA MUMTAZA","13771","2019","Perempuan","on","0000-00-00","","","","","","5d008c6c4edce.jpg","");
INSERT INTO alumni VALUES("147","RAFIF AMIRULHAQ SANTOSA","13723","2019","Laki-laki","on","0000-00-00","","","","","","5d008c792570d.jpg","");
INSERT INTO alumni VALUES("148","RATNA DUHITA AYU NINGRUM","13775","2019","Perempuan","on","0000-00-00","","Islam","","","","5d008c889936f.jpg","");
INSERT INTO alumni VALUES("149","SALSABILA SALWA","13776","2019","Perempuan","on","0000-00-00","","","","","","5d008cad57fbd.jpg","");
INSERT INTO alumni VALUES("150","SHOFIE NURUL AZMI","13709","2019","Perempuan","on","0000-00-00","","","","","","5d008ccb70c37.jpg","");
INSERT INTO alumni VALUES("151","WILLIAM","13756","2019","Laki-laki","on","0000-00-00","","","","","","5d008cd7cc54d.jpg","");
INSERT INTO alumni VALUES("152","WISHNU SATRIA ARIMURTI","13757","2019","Laki-laki","on","0000-00-00","","","","","","5d008ce502f39.jpg","");
INSERT INTO alumni VALUES("153","ZADA NI AM MUSTHOFA","13793","2019","Laki-laki","on","0000-00-00","","","","","","5d008cee59eb8.jpg","");
INSERT INTO alumni VALUES("154","AL AMEER MUHAMMAD RUSEL AKBAR","13782","2019","Laki-laki","on","0000-00-00","","","","","","5d008cf76c7b0.jpg","");
INSERT INTO alumni VALUES("155","ALIF RAVI RAMADHAN","13814","2019","Laki-laki","on","0000-00-00","","","","","","5d008d0f52556.jpg","");
INSERT INTO alumni VALUES("156","AURA NISA ALFIRA","13759","2019","Perempuan","on","0000-00-00","","","","","","5d008d5979205.jpg","");
INSERT INTO alumni VALUES("157","AYUNDA MITHAVIANIE","13760","2019","Perempuan","on","0000-00-00","","","","","","5d008d631c39c.jpg","");
INSERT INTO alumni VALUES("158","DATIYA AFIFAH MIFTAAHUR RAHMAH","13696","2019","Perempuan","on","0000-00-00","","","","","","5d008d7809cc2.jpg","");
INSERT INTO alumni VALUES("159","DAVID ANGGARA AMBROSIUS","13816","2019","Laki-laki","on","0000-00-00","","","","","","5d008d868aacc.png","");
INSERT INTO alumni VALUES("160","DHENOVITA SALSABILA","13764","2019","Perempuan","on","0000-00-00","","","","","","5d008d9386c9d.jpg","");
INSERT INTO alumni VALUES("161","DIMAS FERNANDO PUTRA","13784","2019","Laki-laki","on","0000-00-00","","","","","","5d008dd2b3298.jpg","");
INSERT INTO alumni VALUES("162","EFRAIM WIJANARKO","13785","2019","Laki-laki","on","0000-00-00","","","","","","5d008de50b1d7.jpg","");
INSERT INTO alumni VALUES("163","FADHL MUHAMMAD FIRDAUS","13715","2019","Laki-laki","on","0000-00-00","","","","","","5d008e0212958.jpg","");
INSERT INTO alumni VALUES("164","FAIZA SALSABILA NURHIDAYATI","13697","2019","Perempuan","on","0000-00-00","","","","","","5d008e125218c.jpg","");
INSERT INTO alumni VALUES("165","FARREL ABIEL PRAZOV","13717","2019","Laki-laki","on","0000-00-00","","","","","","5d008e1b10db4.jpg","");
INSERT INTO alumni VALUES("166","FARRIH FUADY AKHMAD","13786","2019","Laki-laki","on","0000-00-00","","","","","","5d008e2f7c88a.jpg","");
INSERT INTO alumni VALUES("167","HAFSHOH AZKIA HAYUNINGTYAS","13767","2019","Perempuan","on","0000-00-00","","","","","","5d008e3d6eac9.jpg","");
INSERT INTO alumni VALUES("168","HAIKAL ARDIANSYAH","13720","2019","Laki-laki","on","0000-00-00","","","","","","5d008e4dc6fa1.png","");
INSERT INTO alumni VALUES("169","HANIF ADINAYA PAWESTRI","13699","2019","Perempuan","on","0000-00-00","","","","","","5d008e5e0fb47.jpg","");
INSERT INTO alumni VALUES("170","HANIFAH NABILA WISMADI","13700","2019","Perempuan","on","0000-00-00","","","","","","5d008e6f9d418.jpg","");
INSERT INTO alumni VALUES("171","HERDIN ADE SURYA","13819","2019","Laki-laki","on","0000-00-00","","","","","","<br />
<b>Notice</b>:  Undefined variable: sq in ","");
INSERT INTO alumni VALUES("172","IRHAMI AL ADABY","13788","2019","Laki-laki","on","0000-00-00","","","","","","5d008ea79c2ba.jpg","");
INSERT INTO alumni VALUES("173","LISE PUTRI SESOTYANINGATI","13703","2019","Perempuan","on","0000-00-00","","","","","","5d008ee51fc73.jpg","");
INSERT INTO alumni VALUES("174","MAULUNA SALSABILA","13768","2019","Perempuan","on","0000-00-00","","","","","","5d008ef288ceb.jpg","");
INSERT INTO alumni VALUES("175","MUHAMMAD FAKHRI TAUFIK GHIFFARI","13789","2019","Laki-laki","on","0000-00-00","","","","","","5d008efbb8560.jpg","");
INSERT INTO alumni VALUES("176","MUHAMMAD NANDANA DAMAR ANINDYO","13824","2019","Laki-laki","on","0000-00-00","","","","","","5d008f063182a.jpg","");
INSERT INTO alumni VALUES("177","MUHAMMAD WILDAN ANIS RAHMANI","13722","2019","Laki-laki","on","0000-00-00","","","","","","5d008f123d847.jpg","");
INSERT INTO alumni VALUES("178","NABIYYA PERENNIA","13769","2019","Perempuan","on","0000-00-00","","","","","","5d008f53213be.jpg","");
INSERT INTO alumni VALUES("179","NOVIANDINI DIAH AFIYATI","13704","2019","Perempuan","on","0000-00-00","","","","","","5d008f64dc0fe.jpg","");
INSERT INTO alumni VALUES("180","PUTRI RAHMADYANI CONDROASIH","13705","2019","Perempuan","on","0000-00-00","","","","","","5d008f7d87eb7.jpg","");
INSERT INTO alumni VALUES("181","REZA ULFAN KAMAL","13724","2019","Laki-laki","on","0000-00-00","","","","","","5d008f926dc9e.jpg","");
INSERT INTO alumni VALUES("182","ROMI PUTRA RADIANSYAH","13754","2019","Laki-laki","on","0000-00-00","","","","","","5d008fa0d995e.jpg","");
INSERT INTO alumni VALUES("183","SAFIQA NOOR RAHMA","13706","2019","Perempuan","on","0000-00-00","","","","","","5d008fb07d73d.jpg","");
INSERT INTO alumni VALUES("184","SAFIRA ULINUHA","13672","2019","Perempuan","on","0000-00-00","","","","","","5d008fc244b4d.jpg","");
INSERT INTO alumni VALUES("185","SERAFIM NOVEN TIARA VASYA","13778","2019","Perempuan","on","0000-00-00","","","","","","5d008ff932065.jpg","");
INSERT INTO alumni VALUES("186","SHAFFA APRILIA AMANDA PUTRI","13708","2019","Perempuan","on","0000-00-00","","","","","","5d009034d492a.jpg","");
INSERT INTO alumni VALUES("187","WINA FAURIZA SYAFNI","13779","2019","Perempuan","on","0000-00-00","","","","","","5d00904884dd1.jpg","");
INSERT INTO alumni VALUES("188","YAHYA MUSHAFFA","13829","2019","Laki-laki","on","0000-00-00","","","","","","5d009054c1a58.jpg","");
INSERT INTO alumni VALUES("189","ADE FIRMANSYAH","13780","2019","Laki-laki","on","0000-00-00","","","","","","5d00906190483.jpg","");
INSERT INTO alumni VALUES("190","AGNUR HAFNAN SHULTHONI","13781","2019","Laki-laki","on","0000-00-00","","","","","","5d00906bbaa96.jpg","");
INSERT INTO alumni VALUES("191","AJENG HARDIYANTI","13727","2019","Perempuan","on","0000-00-00","","","","","","5d0090795b64c.jpg","");
INSERT INTO alumni VALUES("192","ALBAB PURWOKO","13813","2019","Laki-laki","on","0000-00-00","","","","","","5d00908450d32.jpg","");
INSERT INTO alumni VALUES("193","ANAK AGUNG NGURAH ARYA RAMA WIJAYA","13711","2019","Laki-laki","on","0000-00-00","","","","","","5d0090966c1b6.jpg","");
INSERT INTO alumni VALUES("194","AZZAHRA KHAVISTA IMANI","13761","2019","Perempuan","on","0000-00-00","","","","","","5d0090df4989a.jpg","");
INSERT INTO alumni VALUES("195","BAGAS ADHI PUTRA","13783","2019","Laki-laki","on","0000-00-00","","","","","","5d00917661338.jpg","");
INSERT INTO alumni VALUES("196","BAGUS BIROWO ANURAGA","13713","2019","Laki-laki","on","0000-00-00","","","","","","5d009197a97fb.jpg","");
INSERT INTO alumni VALUES("197","CHRISENTIANA TALITHAPURWA JASINDATAMA","13798","2019","Perempuan","on","0000-00-00","","","","","","5d0091a5ec0e4.jpg","");
INSERT INTO alumni VALUES("198","DARAVITA ANGGOROWATI","13763","2019","Perempuan","on","0000-00-00","","","","","","5d0091b30329b.jpg","");
INSERT INTO alumni VALUES("199","DHEYANTI WAHYU UTAMI","13732","2019","Perempuan","on","0000-00-00","","","","","","5d0091c25444d.jpg","");
INSERT INTO alumni VALUES("200","DHIYA CALYA ALAUDDIN","13714","2019","Laki-laki","on","0000-00-00","","","","","","5d0091e373cfc.jpg","");
INSERT INTO alumni VALUES("201","FARAND ARDHANA","13748","2019","Laki-laki","on","0000-00-00","","Islam","","","","5d0091f4ba7dc.png","");
INSERT INTO alumni VALUES("202","FARRADILA WULANDARI","13766","2019","Perempuan","on","0000-00-00","","","","","","5d0092064078e.jpg","");
INSERT INTO alumni VALUES("203","FAWWAZ DANISWARA","13718","2019","Laki-laki","on","0000-00-00","","","","","","5d0092128ff8d.jpg","");
INSERT INTO alumni VALUES("204","FRANCISCUS XAVERIUS YOGA ARI PRATAMA","13749","2019","Laki-laki","on","0000-00-00","","","","","","5d0092203a3ce.jpg","");
INSERT INTO alumni VALUES("205","GARDA KALARI YUSTISIANSYAH","13818","2019","Laki-laki","on","0000-00-00","","","","","","5d0092386eb8d.jpg","");
INSERT INTO alumni VALUES("206","HANIF AKMAL ADIB","13787","2019","Laki-laki","on","0000-00-00","","","","","","5d00923fee4b4.jpg","");
INSERT INTO alumni VALUES("207","JENNIFER SOERJANTO","13801","2019","Perempuan","on","0000-00-00","","","","","","5d00924dbee65.jpg","");
INSERT INTO alumni VALUES("208","KADEK AYU DEA AMELIA PUTRI","13701","2019","Perempuan","on","0000-00-00","","","","","","5d009258c14c0.jpg","");
INSERT INTO alumni VALUES("209","MEURAH INTAN SHAFIA","13804","2019","Perempuan","on","0000-00-00","","","","","","5d00926418f94.jpg","");
INSERT INTO alumni VALUES("210","MUHAMMAD RIDWAN ANGGITA","13721","2019","Laki-laki","on","0000-00-00","","Islam","","","","5d009278d3401.jpg","");
INSERT INTO alumni VALUES("211","NADHIFA ALMYRAHANNA INDARYA PUTRI","13770","2019","Perempuan","on","0000-00-00","","","","","","5d00928b9009e.jpg","");
INSERT INTO alumni VALUES("212","NANDO RIFKI UTAMA PUTRA","13825","2019","Laki-laki","on","0000-00-00","","","","","","5d009330f395b.jpg","");
INSERT INTO alumni VALUES("213","NAUFAL SAKA GINANG PRASIDINA","13826","2019","Laki-laki","on","0000-00-00","","","","","","5d009343984a9.jpg","");
INSERT INTO alumni VALUES("214","NISRIINAA SAARAH NUUR NABIILAH","13772","2019","Perempuan","on","0000-00-00","","","","","","5d00934eab74e.jpg","");
INSERT INTO alumni VALUES("215","RACHMIANI APRILLIANA DEWI","13773","2019","Perempuan","on","0000-00-00","","","","","","5d00935d00ca3.jpg","");
INSERT INTO alumni VALUES("216","RAFIDA  ALAIYYA HAYYIN","13774","2019","Perempuan","on","0000-00-00","","","","","","5d00936c4286f.jpg","");
INSERT INTO alumni VALUES("217","RAFIF FAZA PRADANA","13791","2019","Laki-laki","on","0000-00-00","","","","","","5d00937a0da1d.png","");
INSERT INTO alumni VALUES("218","SARAH ZAHWA CHUSNULITA","13777","2019","Perempuan","on","0000-00-00","","Islam","","","","5d00938531b47.jpg","");
INSERT INTO alumni VALUES("219","SINTO WIDYO HARYONO","13755","2019","Laki-laki","on","0000-00-00","","","","","","5d0093902606d.jpg","");
INSERT INTO alumni VALUES("220","SOFYAN HIDAYAT BUDIYONO","13792","2019","Laki-laki","on","0000-00-00","","","","","","5d009399daafb.jpg","");
INSERT INTO alumni VALUES("221","THERESIA AMANDA PUTRI HERYANTO","13811","2019","Perempuan","on","0000-00-00","","","","","","5d0093a2f02e7.png","");
INSERT INTO alumni VALUES("222","WINA MUFTISARI","13740","2019","Perempuan","on","0000-00-00","","","","","","5d0093ac9cc8d.jpg","");
INSERT INTO alumni VALUES("223","ZHAFIRA AZ ZAHRA","13742","2019","Perempuan","on","0000-00-00","","","","","","5d0093b758098.jpg","");



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
  `code` varchar(10) NOT NULL,
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
  `abs` varchar(20) NOT NULL,
  `nilai` varchar(20) NOT NULL,
  `ujian` varchar(20) NOT NULL,
  `tugas` varchar(20) NOT NULL,
  `switch` varchar(3) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

INSERT INTO guru VALUES("5","Drs. H. Maman Surachman, M.PdI","g5","196006071981031008"," 2939738639200012","Islam","Laki-laki","Cilacap","1960-06-07","Nogotito V, Jln Arwana 67, Gamping, Sleman","08121572208","maman_math@yahoo.com","-","Kepala Sekolah","Matematika","5cfdf07424dcd.jpg","Aktif","success","outline-success","","","","","on","");
INSERT INTO guru VALUES("6","Dra. Sujiyati","g6","195812211981032008","2553736637300013","Islam","Perempuan","Sleman","","-","-","-","-","Guru","Matematika","5cfdf08ab0d94.jpg","Pasif","success","warning","","","","","off","<p>Purna tugas</p>
");
INSERT INTO guru VALUES("7","Dra. Lestari Nur Yuniati ","g7","195906171987032002","8949737638300012","Islam","Perempuan","Bandung","1959-06-17","-","-","-","-","Guru","Matematika","5cfdf09a38ff4.jpg","Aktif","success","info","","","","","on","");
INSERT INTO guru VALUES("8","Drs. Untung","g8"," 195909091986031029","7241737638200003","Islam","Laki-laki","Gunung Kidul","1959-09-09","-","081228537730","untung9959@gmail.com","-","Bimbingan Konseling","","5cfdf0ab9f983.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("9","Dra. Susilowati","g9","195910271988032001","0359737638300023","Islam","Perempuan","Yogyakarta","1959-10-27","-","-","","-","Guru","","5cfdf0c25ec78.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("10","Dra. Marcella Rien Hartati, M.A.","g10"," 131 290 036","8448738639300002","Kristen","Perempuan","Yogyakarta","1960-01-16","","08122620049","cella3brien@gmai.com","","Bimbingan Konseling","","5cfdf0d34b8fc.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("11","Dra. Hj. Isti Dwi Narmiyati ","g11","196003071985032005","3639738638300002","Islam","Perempuan","Bantul","1960-03-07","","082227707300","ist3byk@gmail.com","","Bimbingan Konseling","","5cfdf0e8cb913.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("12","Drs. Agus Santosa","g12","196004221987101001","196004221987101001","Islam","Laki-laki","Sleman","1960-04-22","","08122720327","agsa@sman3-yog.sch.id","","WaKa Humas","","5cfdf0fc42470.jpg","Aktif","outline-success","outline-primary","","outline-success","outline-success","outline-success","on","");
INSERT INTO guru VALUES("13","Dra. Anna Woro Ciptaningrum","g13","196005141986032004"," 6846738640300002","Islam","Perempuan","Yogyakarta","1960-05-14","","","","","Guru","Bahasa Jerman","5cfdf1559a5af.jpg","Aktif","outline-info","outline-info","","","outline-success","","on","<p>Purna tugas 2019</p>
");
INSERT INTO guru VALUES("14","Drs. Wahid Sumanto","g14","196107091987031006","20417396392","Islam","Laki-laki","Cilacap","1961-07-09","","08156805377","wahidsm@yahoo.co.id","","WaKa SarPras","","5cfdf1668a43f.jpg","Aktif","success","info","","","","","on","");
INSERT INTO guru VALUES("16","Hj. Nanik Rahayu, S.Pd. M.Pd.","g16","197402051998022002","0536752653300012","Islam","Perempuan","Yogyakarta","1974-02-05","","082133591147","nanikrahayudiro@gmail.com","","Wali Kelas XII IPA 6","","5cfdf17d02b38.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("17","Drs. Padmana","g17","196310202007011005","3352741642200003","Islam","Laki-laki","Sleman","1963-07-10","","085799161344","padmana3bhe@gmail.com","","Guru","Sejarah International","5cfdf18e8fa61.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("18","Paijan, S.Pd","g18","196405072007011015","0839742644200022","Islam","Laki-laki","Sleman","1964-05-07","","085292847737","paijan.sma3@gmail.com","","Wali Kelas XI IPA 6","","5cfdf1a21ca02.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("19","Raden Heru Adi Prasetyanta, S.Pd.","g19"," 196507021989031007"," 1034743646200023R","Islam","Laki-laki","Sleman","1965-07-02","","081903749665","heru3b@gmail.com","","Wali Kelas X IPA 5","","5cfdf1b63e483.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("20","Rudy Hartanto, S.Kom.","g20","198504212010011024","3853763664200012","Islam","Laki-laki","Jember","1985-04-21","","","","","Guru","TIK","5cfdf1cc3f1e9.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("21","Soemaryoto, S.Pd., M.Pd.","g21","132232398","9533750652200002","Islam","Laki-laki","Grobogan","1972-02-01","","081328782172","mario_sma3yk@yahoo.com","","WaKa Kesiswaan","","5cfdf1e1d3353.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("22","Sri Wulan Dianingtias, S.S.","g22","201010242010012001","6356758660300023","Islam","Perempuan","Yogyakarta","1980-10-24","","","","","Guru","","5cfdf2245faa2.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("23","Subagya Danang Wahyana W, M.Pd.Si","g23","196211231989031006","7455740642200003","Islam","Laki-laki","Sleman","1962-11-23","","081325678677","sdanangwahyana@gmail.com","","Wali Kelas XII IPA 2","","5cfdf4273b238.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("24","Drs. Suhirno. MBA","g24","196707141994121002","1046745644200003","Islam","Laki-laki","Blora","1967-07-14","","082138119695","hirno.fit@gmail.com","","Wali Kelas XI IPA 3","Bahasa Jerman","5cfdf7b2e00e3.jpg","Aktif","outline-info","outline-info","outline-success","outline-success","outline-success","outline-success","on","");
INSERT INTO guru VALUES("25","Ahmad Ahyas, S.Pd.","g25","196912032006041011"," 2644747649200062","Islam","Laki-laki","Brebes","1969-12-03","","081328052402","aahyas@yahoo.co.id","","Wali Kelas XI IPA 2","","5cfdf4574f4a0.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("26","Harry Andiyanto Nugroho, S.Pd., Amd Arch","g26","197406012006041011","0438752653200022","Islam","Laki-laki","Yogyakarta","1974-06-01","","08122715589","harryandiyanto@gmail.com","","Wali Kelas X IPA 6","Matematika","5cfdf47c7611e.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("27","Noer Indahyati, S.Pd, M.Pd, B.I.","g27","197012272007012008","3559748650300013","Islam","Perempuan","Cilacap","1970-12-27","","081225615404","Indah3byk@gmail.com","","Wali Kelas X IPA 2","","5cfdf493d8c5e.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("28","Hj. Muslimah, S.Pd.","g28","196608261988112001","9158744646300003","Islam","Perempuan","Bantul","1966-08-26","","081568300533","muslimah@sman3-yog.sch.id","","Wali Kelas XII IPA 4","","5cfdf4ae7cc77.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("29","Suhan Ranta, S.Pd, M.Pd.","g29","196605031989031010","9835744646200002","Islam","Laki-laki","Sleman","1966-07-03","","081226875275","pakhan3b@sman3-yog.sch.id","","Wali Kelas X IPA 4","","5cfdf4c156f52.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("30","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","g30"," 197804062005012003","9738756657300002","Islam","Perempuan","Yogyakarta","1978-04-06","","082265997899","trikhotimah_64@yahoo.com","","Wali Kelas XII IPA 3","","5cfdf4cea2377.jpg","Aktif","success","warning","","","outline-success","","on","");
INSERT INTO guru VALUES("31","B Teguh Sarwono S.Pd.","g31","197402272005011004"," 6559752653200002","Islam","Laki-laki","Kendal","1974-02-27","","","","","Guru","Agama","5cfdf4dcb95c1.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("32","Drs. Agung Prasaja","g32","131908812 ","4353741643200003","Islam","Laki-laki","Yogyakarta","1963-10-21","","","","","Guru","Olah Raga","5cfdf4e7c21e4.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("33","Bakhtiar Fahmi, S.Sn","g33","","7852760663110022","Islam","Laki-laki","Jepara","1979-06-07","","","","","Guru","","5cfdf4f3ebc36.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("34","Devy Estu Anna Putri, ST, M.Pd.","g34","198101092006042008","7441759660300012","Islam","Perempuan","Sragen","1981-01-09","","","","","Guru","TIK","5cfdf5015d5a2.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("35","Didik Purwaka, S.Pd, M.Pd.","g35","197406302006041008","5962752653200002","Islam","Laki-laki","Karanganyar","1974-06-30","","08112596977","didik3b@gmail.com","","Wali Kelas XI IPA 4","Biologi","5cfdf50bc0ccd.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("37","Dra. Hj. Rr. Dwi Puji Lestari","g37","196202032000122001","4535740640300002","Islam","Perempuan","Kulon progo","1962-02-03","","085868403342","puji@sman3-yog.sch.id","","Wali Kelas X IPA 1","","5cfdf51b94f74.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("38","Dra. Eko Sulistyowati, M.Pd.","g38","196706101998022001","9942745647200022","Islam","Perempuan","Surakarta","1967-06-10","","08156856164","ekosulistyowati86@gmail.com","","Wali Kelas XI IPA 1","","5cfdf5286b516.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("39","Ernaningsih, S.S.","g39","","5858753654210082","Islam","Perempuan","Gunungkidul","1975-05-26","","","","","Guru","Bahasa Jawa","5cfdf5394d559.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("40","I Ketut Tada","g40","","","Hindu","Laki-laki","Singaraja","1955-12-31","","","","","Guru","","5cfdf546478be.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("41","Drs. I Wayan Suarsana","g41","","9253735637200013","Hindu","Laki-laki","Bali ??","1997-09-21","","","","","Guru","Agama Hindu","5cfdf5542e4df.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("42","Ichwan Aryono, S.Pd, M.Pd, Si.","g42"," 196704151997021003"," 0747745646200012","Islam","Laki-laki","Semarang","1967-04-15","","085879879890","aryono67@gmail.com","","WaKa Kurikulum","Fisika","5cfdf56621703.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("43","Drs. Isdiyono","g43","196303131989031003","1645741642200072","Islam","Laki-laki","Bantul","1963-05-13","","081327327364","nikipakis@gmail.com","","Wali Kelas X IPS 1","","5cfdf5720d6b1.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("44","Ismail Gani, S.Pd.Jas","g44","","1752766666110012","Islam","Laki-laki","Kudus","1988-04-20","","","","","Guru","Olah Raga","5cfdf57edb42e.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("45","Levi Mendrova, S.Th.","g45","","7562730632200023","Kristen","Laki-laki","Nias","1952-12-30","","","","","Guru","Agama Kristen","5cfdf58adc9d6.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("46","Dra. Lilik Agustin Magdalena","g46","196108061987032005","4138739640300033","Katolik","Perempuan","Yogyakarta","1961-08-06","","085726070725","lilikmagdalena61@gmail.com","","Wali Kelas XII IPA 1","","5cfdf5a9d1e82.jpg","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("47","Drs. Supriyana. M.M, M.Pd.Si.","g47","","","Islam","Laki-laki","","","","08122955124","nana@sman3-yog.sch.id","","Wali Kelas XII IPA 5","","5cfdf5ce095c8.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("48","Pratiwi Sutarni, S.Pd., M.Pd.","g48","","","Islam","Perempuan","","","","08122961164","pratiwisutarni@gmail.com","","Wali Kelas XI IPS .","","5cfdf5e97c2d6.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("50","Khotim H.N.S.Pd.I. M.Pd.","g50","","","Islam","Perempuan","","","","","","","Guru","Agama","5cfdf60f18b1c.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("51","Kinanti K, S.Pd.","g51","","","","Perempuan","","","","","","","Guru","Bahasa Jawa","5cfdf629009c6.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("52","Dra. Lies Indriya H.","g52","","","Islam","Perempuan","","","","087845672159","liessaridjo@yahoo.co.id","","Wali Kelas XI IPA 5","Kimia","5cfdf648ea492.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("53","Putri Isnaini K. M.Pd.","g53","","","","Perempuan","","","","","","","Guru","Seni Tari","5cfdf6564e4a4.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("54","Sugeng Riyanto, S.Pd.","g54","","","","Laki-laki","","","","","","","Guru","Prakarya","5cfdf66df1236.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("55","Nur Asih Himawati, S.Pd.","g55","","","Islam","Perempuan","","","","","","","Guru","Kimia","5cfdf6844af08.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("56","Winan, S.S.","g56","","","Islam","","","","","","","","Guru","Seni","5cfdf6961e5fd.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("57","Cindy Trisnawati, S.Pd.","g57","","","Islam","Perempuan","","","","","","","Guru","Seni","5cfdf6a3582a4.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("58","Akademik","g58","","","Islam","Laki-laki","","","","","","","Guru","","5cfdf6af644e2.png","","success","warning","","","","","on","");
INSERT INTO guru VALUES("59","Sadono, S.Pd, M.Pd","g59","","","Islam","Laki-laki","","","","081328004667","donmat@sman33-yog.sch.id","","Wali Kelas X IPA 3","Matematika Minat","5cfdf6cbc9d8c.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("60","Rohmatul Ummah, S.Pd","g60","","","Islam","Perempuan","","","","","","","Guru","","5cfdf6eb8972e.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("61","Luthvi Arini. S.Pd.I M.Pd.","g61","","","Islam","Perempuan","","","","","","","Guru","","5cfdf6fab7c14.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("62","R. Slamet, S.Sn.","g62","","","","Laki-laki","","","","","","","Guru","","5cfdf70bbac42.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("63","Fahmi Ardi Pamungkas, S.Pd.","g63","","","","Laki-laki","","","","","","","Guru","","5cfdf7253bb54.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("64","Dra. Setyorini Hidayati","g64","","","Islam","Perempuan","","","","","","","Guru","Bahasa Indonesia","5cfdf73f09183.png","Aktif","success","warning","","","","","on","");
INSERT INTO guru VALUES("65","H. Ngadimun","99","","","Islam","Laki-laki","","","","08157937561","","","Ka Bag TU","","5b9b5cfe49ffa.png","","success","warning","","","","","","");



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO info VALUES("2","09-06-2019","guru","karyawan","siswa","ortu","Raport","<p>dibagikan hari Jumat</p>
");



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
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=latin1;

INSERT INTO jadwal VALUES("1","XI IPA 3","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("2","XI IPA 3","Senin","2","08.00 - 08.45","PKWU","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("3","XI IPA 3","Senin","3","08.45 - 09.30","PKWU","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("4","XI IPA 3","Senin","4","09.45 - 10.30","Matematika","Ahmad Ahyas, S.Pd.","","","","17-06-2019","done","13912,13913,13914,13915,13916,13917,13918,13919,13920,13921,13922,13923,13924,13925,13926,13927,13928,13929,13930,13931,13932,13934,13935,13936,13937,13938,13939,13940,13941,13942,13943,13944,13945,13946","Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir,Hadir",",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
INSERT INTO jadwal VALUES("5","XI IPA 3","Senin","5","10.30 - 11.15","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("6","XI IPA 3","Senin","6","11.15 - 12.00","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("7","XI IPA 3","Senin","7","12.30 - 13.15","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("8","XI IPA 3","Senin","8","13.15 - 14.00","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("9","XI IPA 3","Senin","9","14.15 - 15.00","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("10","XI IPA 3","Selasa","1","07.15 - 08.00","Agama","Khotim H.N.S.Pd.I. M.Pd.","Drs. I Wayan Suarsana","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("11","XI IPA 3","Selasa","2","08.00 - 08.45","Agama","Zainal Muttaqin","Drs. I Wayan Suarsana","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("12","XI IPA 3","Selasa","3","08.45 - 09.30","Agama","Zainal Muttaqin","Drs. I Wayan Suarsana","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("13","XI IPA 3","Selasa","4","09.45 - 10.30","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("14","XI IPA 3","Selasa","5","10.30 - 11.15","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("15","XI IPA 3","Selasa","6","11.15 - 12.00","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("16","XI IPA 3","Selasa","7","12.30 - 13.15","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("17","XI IPA 3","Selasa","8","13.15 - 14.00","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("18","XI IPA 3","Selasa","9","14.15 - 15.00","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("19","XI IPA 3","Selasa","10","15.00 - 15.45","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("20","XI IPA 3","Rabu","1","07.15 - 08.00","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("21","XI IPA 3","Rabu","2","08.00 - 08.45","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("22","XI IPA 3","Rabu","3","08.45 - 09.30","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("23","XI IPA 3","Rabu","4","09.45 - 10.30","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("24","XI IPA 3","Rabu","5","10.30 - 11.15","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("25","XI IPA 3","Rabu","6","11.15 - 12.00","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("26","XI IPA 3","Rabu","7","12.30 - 13.15","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("27","XI IPA 3","Rabu","8","13.15 - 14.00","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("28","XI IPA 3","Rabu","9","14.15 - 15.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("29","XI IPA 3","Rabu","10","15.00 - 15.45","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("30","XI IPA 3","Kamis","1","07.15 - 08.00","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("31","XI IPA 3","Kamis","2","08.00 - 08.45","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("32","XI IPA 3","Kamis","3","08.45 - 09.30","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("33","XI IPA 3","Kamis","4","09.45 - 10.30","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("34","XI IPA 3","Kamis","5","10.30 - 11.15","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("35","XI IPA 3","Kamis","6","11.15 - 12.00","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("36","XI IPA 3","Kamis","7","12.30 - 13.15","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("37","XI IPA 3","Kamis","8","13.15 - 14.00","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("38","XI IPA 3","Kamis","9","14.15 - 15.00","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("39","XI IPA 3","Kamis","10","15.00 - 15.45","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("40","XI IPA 3","Jumat","1","07.15 - 08.00","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("41","XI IPA 3","Jumat","2","08.00 - 08.45","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("42","XI IPA 3","Jumat","3","08.45 - 09.30","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("43","XI IPA 3","Jumat","4","09.45 - 10.30","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("44","XI IPA 3","Jumat","5","10.30 - 11.15","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("45","XI IPA 3","Jumat","6","13.00 - 13.45","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("46","XI IPA 3","Jumat","7","13.45 - 14.30","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("47","XI IPA 3","Jumat","8","14.30 - 15.15","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("48","XI IPA 1","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("49","XI IPA 1","Senin","2","08.00 - 08.45","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("50","XI IPA 1","Senin","3","08.45 - 09.30","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("51","XI IPA 1","Senin","4","09.45 - 10.30","PKWU","Rohmatul Ummah, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("52","XI IPA 1","Senin","5","10.30 - 11.15","PKWU","Rohmatul Ummah, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("53","XI IPA 1","Senin","6","11.15 - 12.00","Agama","Zainal Muttaqin","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("54","XI IPA 1","Senin","7","12.30 - 13.15","Agama","Zainal Muttaqin","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("55","XI IPA 1","Senin","8","13.15 - 14.00","Bahasa Inggris","Raden Heru Adi Prasetyanta, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("56","XI IPA 1","Senin","9","14.15 - 15.00","Bahasa Inggris","Raden Heru Adi Prasetyanta, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("57","XI IPA 1","Selasa","1","07.15 - 08.00","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("58","XI IPA 1","Selasa","2","08.00 - 08.45","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("59","XI IPA 1","Selasa","3","08.45 - 09.30","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("60","XI IPA 1","Selasa","4","09.45 - 10.30","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("61","XI IPA 1","Selasa","5","10.30 - 11.15","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("62","XI IPA 1","Selasa","6","11.15 - 12.00","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("63","XI IPA 1","Selasa","7","12.30 - 13.15","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("64","XI IPA 1","Selasa","8","13.15 - 14.00","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("65","XI IPA 1","Selasa","9","14.15 - 15.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("66","XI IPA 1","Selasa","10","15.00 - 15.45","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("67","XI IPA 1","Rabu","1","07.15 - 08.00","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("68","XI IPA 1","Rabu","2","08.00 - 08.45","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("69","XI IPA 1","Rabu","3","08.45 - 09.30","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("70","XI IPA 1","Rabu","4","09.45 - 10.30","Agama","Zainal Muttaqin","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("71","XI IPA 1","Rabu","5","10.30 - 11.15","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("72","XI IPA 1","Rabu","6","11.15 - 12.00","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("73","XI IPA 1","Rabu","7","12.30 - 13.15","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("74","XI IPA 1","Rabu","8","13.15 - 14.00","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("75","XI IPA 1","Rabu","9","14.15 - 15.00","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("76","XI IPA 1","Rabu","10","15.00 - 15.45","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("77","XI IPA 1","Kamis","1","07.15 - 08.00","Seni","Bakhtiar Fahmi, S.Sn","Putri Isnaini K. M.Pd.","Fahmi Ardi Pamungkas, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("78","XI IPA 1","Kamis","2","08.00 - 08.45","Seni","Bakhtiar Fahmi, S.Sn","Putri Isnaini K. M.Pd.","Fahmi Ardi Pamungkas, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("79","XI IPA 1","Kamis","3","08.45 - 09.30","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("80","XI IPA 1","Kamis","4","09.45 - 10.30","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("81","XI IPA 1","Kamis","5","10.30 - 11.15","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("82","XI IPA 1","Kamis","6","11.15 - 12.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("83","XI IPA 1","Kamis","7","12.30 - 13.15","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("84","XI IPA 1","Kamis","8","13.15 - 14.00","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("85","XI IPA 1","Kamis","9","14.15 - 15.00","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("86","XI IPA 1","Kamis","10","15.00 - 15.45","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("87","XI IPA 1","Jumat","1","07.15 - 08.00","Matematika Minat","Dra. Eko Sulistyowati, M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("88","XI IPA 1","Jumat","2","08.00 - 08.45","Matematika Minat","Dra. Eko Sulistyowati, M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("89","XI IPA 1","Jumat","3","08.45 - 09.30","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("90","XI IPA 1","Jumat","4","09.45 - 10.30","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("91","XI IPA 1","Jumat","5","10.30 - 11.15","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("92","XI IPA 1","Jumat","6","13.00 - 13.45","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("93","XI IPA 1","Jumat","7","13.45 - 14.30","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("94","XI IPA 1","Jumat","8","14.30 - 15.15","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("95","XI IPA 2","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("96","XI IPA 2","Senin","2","08.00 - 08.45","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("97","XI IPA 2","Senin","3","08.45 - 09.30","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("98","XI IPA 2","Senin","4","09.45 - 10.30","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("99","XI IPA 2","Senin","5","10.30 - 11.15","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("100","XI IPA 2","Senin","6","11.15 - 12.00","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("101","XI IPA 2","Senin","7","12.30 - 13.15","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("102","XI IPA 2","Senin","8","13.15 - 14.00","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("103","XI IPA 2","Senin","9","14.15 - 15.00","Agama","Zainal Muttaqin","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("104","XI IPA 2","Selasa","1","07.15 - 08.00","PKWU","Rohmatul Ummah, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("105","XI IPA 2","Selasa","2","08.00 - 08.45","PKWU","Rohmatul Ummah, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("106","XI IPA 2","Selasa","3","08.45 - 09.30","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("107","XI IPA 2","Selasa","4","09.45 - 10.30","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("108","XI IPA 2","Selasa","5","10.30 - 11.15","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("109","XI IPA 2","Selasa","6","11.15 - 12.00","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("110","XI IPA 2","Selasa","7","12.30 - 13.15","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("111","XI IPA 2","Selasa","8","13.15 - 14.00","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("112","XI IPA 2","Selasa","9","14.15 - 15.00","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("113","XI IPA 2","Selasa","10","15.00 - 15.45","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("114","XI IPA 2","Rabu","1","07.15 - 08.00","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("115","XI IPA 2","Rabu","2","08.00 - 08.45","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("116","XI IPA 2","Rabu","3","08.45 - 09.30","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("117","XI IPA 2","Rabu","4","09.45 - 10.30","Fisika","Ichwan Aryono, S.Pd, M.Pd, Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("118","XI IPA 2","Rabu","5","10.30 - 11.15","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("119","XI IPA 2","Rabu","6","11.15 - 12.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("120","XI IPA 2","Rabu","7","12.30 - 13.15","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("121","XI IPA 2","Rabu","8","13.15 - 14.00","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("122","XI IPA 2","Rabu","9","14.15 - 15.00","Matematika Minat"," Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("123","XI IPA 2","Rabu","10","15.00 - 15.45","Matematika Minat"," Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("124","XI IPA 2","Kamis","1","07.15 - 08.00","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("125","XI IPA 2","Kamis","2","08.00 - 08.45","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("126","XI IPA 2","Kamis","3","08.45 - 09.30","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("127","XI IPA 2","Kamis","4","09.45 - 10.30","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("128","XI IPA 2","Kamis","5","10.30 - 11.15","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("129","XI IPA 2","Kamis","6","11.15 - 12.00","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("130","XI IPA 2","Kamis","7","12.30 - 13.15","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("131","XI IPA 2","Kamis","8","13.15 - 14.00","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("132","XI IPA 2","Kamis","9","14.15 - 15.00","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("133","XI IPA 2","Kamis","10","15.00 - 15.45","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("134","XI IPA 2","Jumat","1","07.15 - 08.00","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("135","XI IPA 2","Jumat","2","08.00 - 08.45","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("136","XI IPA 2","Jumat","3","08.45 - 09.30","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("137","XI IPA 2","Jumat","4","09.45 - 10.30","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("138","XI IPA 2","Jumat","5","10.30 - 11.15","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("139","XI IPA 2","Jumat","6","13.00 - 13.45","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("140","XI IPA 2","Jumat","7","13.45 - 14.30","Seni","Bakhtiar Fahmi, S.Sn","Putri Isnaini K. M.Pd","Fahmi Ardi Pamungkas, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("141","XI IPA 2","Jumat","8","14.30 - 15.15","Seni","Bakhtiar Fahmi, S.Sn","Putri Isnaini K. M.Pd.","Fahmi Ardi Pamungkas, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("142","XI IPA 4","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("143","XI IPA 4","Senin","2","08.00 - 08.45","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("144","XI IPA 4","Senin","3","08.45 - 09.30","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("145","XI IPA 4","Senin","4","09.45 - 10.30","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("146","XI IPA 4","Senin","5","10.30 - 11.15","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("147","XI IPA 4","Senin","9","14.15 - 15.00","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("148","XI IPA 4","Senin","8","13.15 - 14.00","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("149","XI IPA 4","Senin","6","11.15 - 12.00","PKWU","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("150","XI IPA 4","Senin","7","12.30 - 13.15","PKWU","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("151","XI IPA 4","Selasa","1","07.15 - 08.00","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("152","XI IPA 4","Selasa","2","08.00 - 08.45","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("153","XI IPA 4","Selasa","3","08.45 - 09.30","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("154","XI IPA 4","Selasa","4","09.45 - 10.30","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("155","XI IPA 4","Selasa","5","10.30 - 11.15","Agama","Zainal Muttaqin","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("156","XI IPA 4","Selasa","6","11.15 - 12.00","Agama","Zainal Muttaqin","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("157","XI IPA 4","Selasa","7","12.30 - 13.15","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("158","XI IPA 4","Selasa","8","13.15 - 14.00","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("159","XI IPA 4","Selasa","9","14.15 - 15.00","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("160","XI IPA 4","Selasa","10","15.00 - 15.45","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("161","XI IPA 4","Rabu","1","07.15 - 08.00","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("162","XI IPA 4","Rabu","2","08.00 - 08.45","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("163","XI IPA 4","Rabu","3","08.45 - 09.30","Agama","Zainal Muttaqin","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("164","XI IPA 4","Rabu","4","09.45 - 10.30","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("165","XI IPA 4","Rabu","5","10.30 - 11.15","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("166","XI IPA 4","Rabu","6","11.15 - 12.00","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("167","XI IPA 4","Rabu","7","12.30 - 13.15","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("168","XI IPA 4","Rabu","8","13.15 - 14.00","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("169","XI IPA 4","Rabu","9","14.15 - 15.00","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("170","XI IPA 4","Rabu","10","15.00 - 15.45","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("171","XI IPA 4","Kamis","1","07.15 - 08.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("172","XI IPA 4","Kamis","2","08.00 - 08.45","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("173","XI IPA 4","Kamis","3","08.45 - 09.30","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("174","XI IPA 4","Kamis","4","09.45 - 10.30","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("175","XI IPA 4","Kamis","5","10.30 - 11.15","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("176","XI IPA 4","Kamis","6","11.15 - 12.00","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("177","XI IPA 4","Kamis","7","12.30 - 13.15","PKWU","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("178","XI IPA 4","Kamis","8","13.15 - 14.00","PKWU","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("179","XI IPA 4","Kamis","9","14.15 - 15.00","Biologi","Didik Purwaka, S.Pd, M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("180","XI IPA 4","Kamis","10","15.00 - 15.45","Biologi","Didik Purwaka, S.Pd, M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("181","XI IPA 4","Jumat","1","07.15 - 08.00","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("182","XI IPA 4","Jumat","2","08.00 - 08.45","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("183","XI IPA 4","Jumat","3","08.45 - 09.30","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("184","XI IPA 4","Jumat","4","13.00 - 13.45","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("185","XI IPA 4","Jumat","5","10.30 - 11.15","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("186","XI IPA 4","Jumat","6","09.45 - 10.30","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("187","XI IPA 4","Jumat","7","13.45 - 14.30","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("188","XI IPA 4","Jumat","8","14.30 - 15.15","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("189","XI IPA 5","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("190","XI IPA 5","Senin","2","08.00 - 08.45","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("191","XI IPA 5","Senin","3","08.45 - 09.30","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("192","XI IPA 5","Senin","4","09.45 - 10.30","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("193","XI IPA 5","Senin","5","10.30 - 11.15","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("194","XI IPA 5","Senin","5","10.30 - 11.15","Biologi","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("195","XI IPA 5","Senin","6","11.15 - 12.00","Biologi","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("196","XI IPA 5","Senin","8","13.15 - 14.00","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("197","XI IPA 5","Senin","9","14.15 - 15.00","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("198","XI IPA 5","Selasa","1","07.15 - 08.00","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("199","XI IPA 5","Selasa","2","08.00 - 08.45","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("200","XI IPA 5","Selasa","3","08.45 - 09.30","Olah Raga","Ismail Gani, S.Pd.Jas","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("201","XI IPA 5","Selasa","4","09.45 - 10.30","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("202","XI IPA 5","Selasa","5","10.30 - 11.15","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("203","XI IPA 5","Selasa","6","11.15 - 12.00","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("204","XI IPA 5","Selasa","7","12.30 - 13.15","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("205","XI IPA 5","Selasa","8","13.15 - 14.00","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","Drs. I Wayan Suarsana",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("206","XI IPA 5","Selasa","9","14.15 - 15.00","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","Drs. I Wayan Suarsana",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("207","XI IPA 5","Selasa","10","15.00 - 15.45","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","Drs. I Wayan Suarsana",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("208","XI IPA 5","Rabu","1","07.15 - 08.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("209","XI IPA 5","Rabu","2","08.00 - 08.45","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("210","XI IPA 5","Rabu","3","08.45 - 09.30","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("211","XI IPA 5","Rabu","4","09.45 - 10.30","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("212","XI IPA 5","Rabu","5","10.30 - 11.15","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("213","XI IPA 5","Rabu","6","11.15 - 12.00","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("214","XI IPA 5","Rabu","7","12.30 - 13.15","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("215","XI IPA 5","Rabu","8","13.15 - 14.00","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("216","XI IPA 5","Rabu","9","14.15 - 15.00","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("217","XI IPA 5","Rabu","10","15.00 - 15.45","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("218","XI IPA 5","Kamis","1","07.15 - 08.00","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("219","XI IPA 5","Kamis","2","08.00 - 08.45","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("220","XI IPA 5","Kamis","3","08.45 - 09.30","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("221","XI IPA 5","Kamis","4","09.45 - 10.30","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("222","XI IPA 5","Kamis","5","10.30 - 11.15","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("223","XI IPA 5","Kamis","6","11.15 - 12.00","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("224","XI IPA 5","Kamis","7","12.30 - 13.15","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("225","XI IPA 5","Kamis","8","13.15 - 14.00","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("226","XI IPA 5","Kamis","9","14.15 - 15.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("227","XI IPA 5","Kamis","10","15.00 - 15.45","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("228","XI IPA 5","Jumat","1","07.15 - 08.00","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("229","XI IPA 5","Jumat","2","08.00 - 08.45","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("230","XI IPA 5","Jumat","3","08.45 - 09.30","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("231","XI IPA 5","Jumat","4","09.45 - 10.30","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("232","XI IPA 5","Jumat","5","10.30 - 11.15","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("233","XI IPA 5","Jumat","6","13.00 - 13.45","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("234","XI IPA 5","Jumat","7","13.45 - 14.30","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("235","XI IPA 5","Jumat","8","14.30 - 15.15","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("236","XI IPA 6","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("237","XI IPA 6","Senin","2","08.00 - 08.45","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("238","XI IPA 6","Senin","3","08.45 - 09.30","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("239","XI IPA 6","Senin","4","09.45 - 10.30","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("240","XI IPA 6","Senin","5","10.30 - 11.15","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","B Teguh Sarwono S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("241","XI IPA 6","Senin","6","11.15 - 12.00","Bahasa Jepang","Sri Wulan Dianingtias, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("242","XI IPA 6","Senin","7","12.30 - 13.15","Bahasa Jepang","Sri Wulan Dianingtias, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("243","XI IPA 6","Senin","8","13.15 - 14.00","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("244","XI IPA 6","Senin","9","14.15 - 15.00","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("245","XI IPA 6","Selasa","1","07.15 - 08.00","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("246","XI IPA 6","Selasa","2","08.00 - 08.45","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("247","XI IPA 6","Selasa","3","08.45 - 09.30","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("248","XI IPA 6","Selasa","4","09.45 - 10.30","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("249","XI IPA 6","Selasa","5","10.30 - 11.15","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("250","XI IPA 6","Selasa","6","11.15 - 12.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("251","XI IPA 6","Selasa","7","12.30 - 13.15","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("252","XI IPA 6","Selasa","8","13.15 - 14.00","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("253","XI IPA 6","Selasa","9","14.15 - 15.00","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("254","XI IPA 6","Selasa","10","15.00 - 15.45","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("255","XI IPA 6","Rabu","1","07.15 - 08.00","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("256","XI IPA 6","Rabu","2","08.00 - 08.45","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("257","XI IPA 6","Rabu","3","08.45 - 09.30","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("258","XI IPA 6","Rabu","4","09.45 - 10.30","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("259","XI IPA 6","Rabu","5","10.30 - 11.15","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("260","XI IPA 6","Rabu","6","11.15 - 12.00","Kimia","Dra. Lies Indriya H.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("261","XI IPA 6","Rabu","7","12.30 - 13.15","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","B Teguh Sarwono S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("262","XI IPA 6","Rabu","8","13.15 - 14.00","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","B Teguh Sarwono S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("263","XI IPA 6","Rabu","9","14.15 - 15.00","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("264","XI IPA 6","Rabu","10","15.00 - 15.45","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("265","XI IPA 6","Kamis","1","07.15 - 08.00","Bahasa Jepang","Sri Wulan Dianingtias, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("266","XI IPA 6","Kamis","2","08.00 - 08.45","Bahasa Jepang","Sri Wulan Dianingtias, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("267","XI IPA 6","Kamis","3","08.45 - 09.30","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("268","XI IPA 6","Kamis","4","09.45 - 10.30","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("269","XI IPA 6","Kamis","5","10.30 - 11.15","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("270","XI IPA 6","Kamis","6","11.15 - 12.00","Biologi","Didik Purwaka, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("271","XI IPA 6","Kamis","7","12.30 - 13.15","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("272","XI IPA 6","Kamis","8","13.15 - 14.00","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("273","XI IPA 6","Kamis","9","14.15 - 15.00","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("274","XI IPA 6","Kamis","10","15.00 - 15.45","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("275","XI IPA 6","Jumat","1","07.15 - 08.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("276","XI IPA 6","Jumat","2","08.00 - 08.45","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("277","XI IPA 6","Jumat","3","08.45 - 09.30","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("278","XI IPA 6","Jumat","4","09.45 - 10.30","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("279","XI IPA 6","Jumat","5","10.30 - 11.15","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("280","XI IPA 6","Jumat","6","13.00 - 13.45","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("281","XI IPA 6","Jumat","7","13.45 - 14.30","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("282","XI IPA 6","Jumat","8","14.30 - 15.15","Matematika Minat","Dra. Eko Sulistyowati, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("283","XI IPS 1","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("284","XI IPS 1","Senin","2","08.00 - 08.45","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","B Teguh Sarwono S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("285","XI IPS 1","Senin","3","08.45 - 09.30","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","B Teguh Sarwono S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("286","XI IPS 1","Senin","4","09.45 - 10.30","Akademik","Drs. Agus Santosa","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("287","XI IPS 1","Senin","5","10.30 - 11.15","Akademik","Drs. Agus Santosa","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("288","XI IPS 1","Senin","6","11.15 - 12.00","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("289","XI IPS 1","Senin","7","12.30 - 13.15","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("290","XI IPS 1","Senin","8","13.15 - 14.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("291","XI IPS 1","Senin","9","14.15 - 15.00","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("292","XI IPS 1","Selasa","1","07.15 - 08.00","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("293","XI IPS 1","Selasa","2","08.00 - 08.45","Bahasa Jawa","Ernaningsih, S.S.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("294","XI IPS 1","Selasa","3","08.45 - 09.30","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("295","XI IPS 1","Selasa","4","09.45 - 10.30","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("296","XI IPS 1","Selasa","5","10.30 - 11.15","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("297","XI IPS 1","Selasa","6","11.15 - 12.00","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("298","XI IPS 1","Selasa","7","12.30 - 13.15","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("299","XI IPS 1","Selasa","8","13.15 - 14.00","PKN","Paijan, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("300","XI IPS 1","Selasa","9","14.15 - 15.00","Akademik","Drs. Subandriyo","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("301","XI IPS 1","Selasa","10","15.00 - 15.45","Akademik","Drs. Subandriyo","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("302","XI IPS 1","Rabu","1","07.15 - 08.00","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("303","XI IPS 1","Rabu","2","08.00 - 08.45","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("304","XI IPS 1","Rabu","3","08.45 - 09.30","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("305","XI IPS 1","Rabu","4","09.45 - 10.30","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("306","XI IPS 1","Rabu","5","10.30 - 11.15","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("307","XI IPS 1","Rabu","6","11.15 - 12.00","Agama","Zainal Muttaqin","Levi Mendrova, S.Th.","B Teguh Sarwono S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("308","XI IPS 1","Rabu","7","12.30 - 13.15","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("309","XI IPS 1","Rabu","8","13.15 - 14.00","Bahasa Indonesia","Dra. Setyorini Hidayati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("310","XI IPS 1","Rabu","9","14.15 - 15.00","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("311","XI IPS 1","Rabu","10","15.00 - 15.45","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("312","XI IPS 1","Kamis","1","07.15 - 08.00","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("313","XI IPS 1","Kamis","2","08.00 - 08.45","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("314","XI IPS 1","Kamis","3","08.45 - 09.30","Akademik","Drs. Subandriyo","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("315","XI IPS 1","Kamis","4","09.45 - 10.30","Akademik","Drs. Subandriyo","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("316","XI IPS 1","Kamis","5","10.30 - 11.15","","Drs. Agus Santosa","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("317","XI IPS 1","Kamis","6","11.15 - 12.00","Akademik","Drs. Agus Santosa","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("318","XI IPS 1","Kamis","7","12.30 - 13.15","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("319","XI IPS 1","Kamis","8","13.15 - 14.00","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("320","XI IPS 1","Kamis","9","14.15 - 15.00","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("321","XI IPS 1","Kamis","10","15.00 - 15.45","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("322","XI IPS 1","Jumat","1","07.15 - 08.00","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("323","XI IPS 1","Jumat","2","08.00 - 08.45","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("324","XI IPS 1","Jumat","3","08.45 - 09.30","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("325","XI IPS 1","Jumat","4","09.45 - 10.30","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("326","XI IPS 1","Jumat","5","10.30 - 11.15","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("327","XI IPS 1","Jumat","6","13.00 - 13.45","Matematika","Ahmad Ahyas, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("328","XI IPS 1","Jumat","7","13.45 - 14.30","Bahasa Inggris Minat","Noer Indahyati, S.Pd, M.Pd, B.I.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("329","XI IPS 1","Jumat","8","14.30 - 15.15","Bahasa Inggris Minat","Noer Indahyati, S.Pd, M.Pd, B.I.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("330","XII IPA 1","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("331","XII IPA 1","Senin","2","08.00 - 08.45","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("332","XII IPA 1","Senin","3","08.45 - 09.30","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("333","XII IPA 1","Senin","4","09.45 - 10.30","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("334","XII IPA 1","Senin","5","10.30 - 11.15","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("335","XII IPA 1","Senin","6","11.15 - 12.00","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("336","XII IPA 1","Senin","7","12.30 - 13.15","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("337","XII IPA 1","Senin","8","13.15 - 14.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("338","XII IPA 1","Senin","9","14.15 - 15.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("339","XII IPA 1","Selasa","1","07.15 - 08.00","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("340","XII IPA 1","Selasa","2","08.00 - 08.45","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("341","XII IPA 1","Selasa","3","08.45 - 09.30","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("342","XII IPA 1","Selasa","4","09.45 - 10.30","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("343","XII IPA 1","Selasa","5","10.30 - 11.15","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("344","XII IPA 1","Selasa","6","11.15 - 12.00","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("345","XII IPA 1","Selasa","7","12.30 - 13.15","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("346","XII IPA 1","Selasa","8","13.15 - 14.00","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("347","XII IPA 1","Selasa","9","14.15 - 15.00","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("348","XII IPA 1","Selasa","10","15.00 - 15.45","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("349","XII IPA 1","Rabu","1","07.15 - 08.00","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("350","XII IPA 1","Rabu","2","08.00 - 08.45","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("351","XII IPA 1","Rabu","3","08.45 - 09.30","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("352","XII IPA 1","Rabu","4","09.45 - 10.30","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("353","XII IPA 1","Rabu","5","10.30 - 11.15","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("354","XII IPA 1","Rabu","6","11.15 - 12.00","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("355","XII IPA 1","Rabu","7","12.30 - 13.15","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("356","XII IPA 1","Rabu","8","13.15 - 14.00","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("357","XII IPA 1","Rabu","9","14.15 - 15.00","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("358","XII IPA 1","Rabu","10","15.00 - 15.45","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("359","XII IPA 1","Kamis","1","07.15 - 08.00","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("360","XII IPA 1","Kamis","2","08.00 - 08.45","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("361","XII IPA 1","Kamis","3","08.45 - 09.30","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("362","XII IPA 1","Kamis","4","09.45 - 10.30","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("363","XII IPA 1","Kamis","5","10.30 - 11.15","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("364","XII IPA 1","Kamis","6","11.15 - 12.00","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("365","XII IPA 1","Kamis","7","12.30 - 13.15","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("366","XII IPA 1","Kamis","8","13.15 - 14.00","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("367","XII IPA 1","Kamis","9","14.15 - 15.00","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("368","XII IPA 1","Kamis","10","15.00 - 15.45","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("369","XII IPA 1","Jumat","1","07.15 - 08.00","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("370","XII IPA 1","Jumat","2","08.00 - 08.45","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("371","XII IPA 1","Jumat","3","08.45 - 09.30","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("372","XII IPA 1","Jumat","4","09.45 - 10.30","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("373","XII IPA 1","Jumat","5","10.30 - 11.15","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("374","XII IPA 1","Jumat","6","13.00 - 13.45","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("375","XII IPA 1","Jumat","7","13.45 - 14.30","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("376","XII IPA 1","Jumat","8","14.30 - 15.15","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("377","XII IPA 2","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("378","XII IPA 2","Senin","2","08.00 - 08.45","Akademik"," Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("379","XII IPA 2","Senin","3","08.45 - 09.30","Akademik"," Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("380","XII IPA 2","Senin","4","09.45 - 10.30","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("381","XII IPA 2","Senin","5","10.30 - 11.15","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("382","XII IPA 2","Senin","6","11.15 - 12.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("383","XII IPA 2","Senin","7","12.30 - 13.15","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("384","XII IPA 2","Senin","8","13.15 - 14.00","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("385","XII IPA 2","Senin","9","14.15 - 15.00","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("386","XII IPA 2","Selasa","1","07.15 - 08.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("387","XII IPA 2","Selasa","2","08.00 - 08.45","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("388","XII IPA 2","Selasa","3","08.45 - 09.30","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("389","XII IPA 2","Selasa","4","09.45 - 10.30","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("390","XII IPA 2","Selasa","5","10.30 - 11.15","Agama","Drs. I Wayan Suarsana","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","Levi Mendrova, S.Th.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("391","XII IPA 2","Selasa","6","11.15 - 12.00","Agama","Drs. I Wayan Suarsana","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","Levi Mendrova, S.Th.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("392","XII IPA 2","Selasa","7","12.30 - 13.15","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("393","XII IPA 2","Selasa","8","13.15 - 14.00","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("394","XII IPA 2","Selasa","9","14.15 - 15.00","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("395","XII IPA 2","Selasa","10","15.00 - 15.45","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("396","XII IPA 2","Rabu","1","07.15 - 08.00","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("397","XII IPA 2","Rabu","2","08.00 - 08.45","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("398","XII IPA 2","Rabu","3","08.45 - 09.30","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("399","XII IPA 2","Rabu","4","09.45 - 10.30","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("400","XII IPA 2","Rabu","5","10.30 - 11.15","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("401","XII IPA 2","Rabu","6","11.15 - 12.00","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("402","XII IPA 2","Rabu","7","12.30 - 13.15","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("403","XII IPA 2","Rabu","8","13.15 - 14.00","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("404","XII IPA 2","Rabu","9","14.15 - 15.00","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("405","XII IPA 2","Rabu","10","15.00 - 15.45","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("406","XII IPA 2","Kamis","1","07.15 - 08.00","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("407","XII IPA 2","Kamis","2","08.00 - 08.45","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("408","XII IPA 2","Kamis","3","08.45 - 09.30","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("409","XII IPA 2","Kamis","4","09.45 - 10.30","Agama","Drs. I Wayan Suarsana","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","Levi Mendrova, S.Th.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("410","XII IPA 2","Kamis","5","10.30 - 11.15","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("411","XII IPA 2","Kamis","6","11.15 - 12.00","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("412","XII IPA 2","Kamis","7","12.30 - 13.15","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("413","XII IPA 2","Kamis","8","13.15 - 14.00","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("414","XII IPA 2","Kamis","9","14.15 - 15.00","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("415","XII IPA 2","Kamis","10","15.00 - 15.45","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("416","XII IPA 2","Jumat","1","07.15 - 08.00","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("417","XII IPA 2","Jumat","2","08.00 - 08.45","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("418","XII IPA 2","Jumat","3","08.45 - 09.30","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("419","XII IPA 2","Jumat","4","09.45 - 10.30","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("420","XII IPA 2","Jumat","5","10.30 - 11.15","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("421","XII IPA 2","Jumat","6","13.00 - 13.45","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("422","XII IPA 2","Jumat","7","13.45 - 14.30","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("423","XII IPA 2","Jumat","8","14.30 - 15.15","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("424","XII IPA 3","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("425","XII IPA 3","Senin","2","08.00 - 08.45","Akademik","Sri Wulan Dianingtias, S.S.","Dra. Anna Woro Ciptaningrum","Pratiwi Sutarni, S.Pd., M.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("426","XII IPA 3","Senin","3","08.45 - 09.30","Akademik","Sri Wulan Dianingtias, S.S.","Dra. Anna Woro Ciptaningrum","Pratiwi Sutarni, S.Pd., M.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("427","XII IPA 3","Senin","4","09.45 - 10.30","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("428","XII IPA 3","Senin","5","10.30 - 11.15","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("429","XII IPA 3","Senin","6","11.15 - 12.00","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("430","XII IPA 3","Senin","7","12.30 - 13.15","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("431","XII IPA 3","Senin","8","13.15 - 14.00","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("432","XII IPA 3","Senin","9","14.15 - 15.00","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("433","XII IPA 3","Selasa","1","07.15 - 08.00","Akademik","Sri Wulan Dianingtias, S.S.","Dra. Anna Woro Ciptaningrum","Pratiwi Sutarni, S.Pd., M.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("434","XII IPA 3","Selasa","2","08.00 - 08.45","Akademik","Sri Wulan Dianingtias, S.S.","Dra. Anna Woro Ciptaningrum","Pratiwi Sutarni, S.Pd., M.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("435","XII IPA 3","Selasa","3","08.45 - 09.30","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("436","XII IPA 3","Selasa","4","09.45 - 10.30","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("437","XII IPA 3","Selasa","5","10.30 - 11.15","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("438","XII IPA 3","Selasa","6","11.15 - 12.00","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("439","XII IPA 3","Selasa","7","12.30 - 13.15","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("440","XII IPA 3","Selasa","8","13.15 - 14.00","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("441","XII IPA 3","Selasa","9","14.15 - 15.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("442","XII IPA 3","Selasa","10","15.00 - 15.45","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("443","XII IPA 3","Rabu","1","07.15 - 08.00","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("444","XII IPA 3","Rabu","2","08.00 - 08.45","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("445","XII IPA 3","Rabu","3","08.45 - 09.30","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("446","XII IPA 3","Rabu","4","09.45 - 10.30","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("447","XII IPA 3","Rabu","5","10.30 - 11.15","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("448","XII IPA 3","Rabu","6","11.15 - 12.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("449","XII IPA 3","Rabu","7","12.30 - 13.15","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("450","XII IPA 3","Rabu","8","13.15 - 14.00","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("451","XII IPA 3","Rabu","9","14.15 - 15.00","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("452","XII IPA 3","Rabu","10","15.00 - 15.45","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("453","XII IPA 3","Kamis","1","07.15 - 08.00","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("454","XII IPA 3","Kamis","2","08.00 - 08.45","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("455","XII IPA 3","Kamis","3","08.45 - 09.30","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("456","XII IPA 3","Kamis","4","09.45 - 10.30","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("457","XII IPA 3","Kamis","5","10.30 - 11.15","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("458","XII IPA 3","Kamis","6","11.15 - 12.00","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("459","XII IPA 3","Kamis","7","12.30 - 13.15","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("460","XII IPA 3","Kamis","8","13.15 - 14.00","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("461","XII IPA 3","Kamis","9","14.15 - 15.00","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("462","XII IPA 3","Kamis","10","15.00 - 15.45","Fisika","Subagya Danang Wahyana W, M.Pd.Si","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("463","XII IPA 3","Jumat","1","07.15 - 08.00","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("464","XII IPA 3","Jumat","2","08.00 - 08.45","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("465","XII IPA 3","Jumat","3","08.45 - 09.30","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("466","XII IPA 3","Jumat","4","09.45 - 10.30","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("467","XII IPA 3","Jumat","5","10.30 - 11.15","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("468","XII IPA 3","Jumat","6","13.00 - 13.45","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("469","XII IPA 3","Jumat","7","13.45 - 14.30","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("470","XII IPA 3","Jumat","8","14.30 - 15.15","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("471","XII IPA 4","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("472","XII IPA 4","Senin","2","08.00 - 08.45","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("473","XII IPA 4","Senin","3","08.45 - 09.30","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("474","XII IPA 4","Senin","4","09.45 - 10.30","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("475","XII IPA 4","Senin","5","10.30 - 11.15","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("476","XII IPA 4","Senin","6","11.15 - 12.00","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("477","XII IPA 4","Senin","7","12.30 - 13.15","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("478","XII IPA 4","Senin","8","13.15 - 14.00","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("479","XII IPA 4","Senin","9","14.15 - 15.00","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("480","XII IPA 4","Selasa","1","07.15 - 08.00","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("481","XII IPA 4","Selasa","2","08.00 - 08.45","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("482","XII IPA 4","Selasa","3","08.45 - 09.30","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("483","XII IPA 4","Selasa","4","09.45 - 10.30","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("484","XII IPA 4","Selasa","5","10.30 - 11.15","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("485","XII IPA 4","Selasa","6","11.15 - 12.00","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("486","XII IPA 4","Selasa","7","12.30 - 13.15","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("487","XII IPA 4","Selasa","8","13.15 - 14.00","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("488","XII IPA 4","Selasa","9","14.15 - 15.00","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("489","XII IPA 4","Selasa","10","15.00 - 15.45","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("490","XII IPA 4","Rabu","1","07.15 - 08.00","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("491","XII IPA 4","Rabu","2","08.00 - 08.45","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("492","XII IPA 4","Rabu","3","08.45 - 09.30","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("493","XII IPA 4","Rabu","4","09.45 - 10.30","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("494","XII IPA 4","Rabu","5","10.30 - 11.15","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("495","XII IPA 4","Rabu","6","11.15 - 12.00","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("496","XII IPA 4","Rabu","7","12.30 - 13.15","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("497","XII IPA 4","Rabu","8","13.15 - 14.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("498","XII IPA 4","Rabu","9","14.15 - 15.00","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("499","XII IPA 4","Rabu","10","15.00 - 15.45","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("500","XII IPA 4","Kamis","1","07.15 - 08.00","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("501","XII IPA 4","Kamis","2","08.00 - 08.45","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("502","XII IPA 4","Kamis","3","08.45 - 09.30","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("503","XII IPA 4","Kamis","4","09.45 - 10.30","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("504","XII IPA 4","Kamis","5","10.30 - 11.15","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("505","XII IPA 4","Kamis","6","11.15 - 12.00","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("506","XII IPA 4","Kamis","7","12.30 - 13.15","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("507","XII IPA 4","Kamis","8","13.15 - 14.00","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("508","XII IPA 4","Kamis","9","14.15 - 15.00","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("509","XII IPA 4","Kamis","10","15.00 - 15.45","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("510","XII IPA 4","Jumat","1","07.15 - 08.00","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("511","XII IPA 4","Jumat","2","08.00 - 08.45","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("512","XII IPA 4","Jumat","3","08.45 - 09.30","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("513","XII IPA 4","Jumat","4","09.45 - 10.30","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("514","XII IPA 4","Jumat","5","10.30 - 11.15","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("515","XII IPA 4","Jumat","6","13.00 - 13.45","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("516","XII IPA 4","Jumat","7","13.45 - 14.30","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("517","XII IPA 4","Jumat","8","14.30 - 15.15","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("518","XII IPA 5","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("519","XII IPA 5","Senin","2","08.00 - 08.45","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("520","XII IPA 5","Senin","3","08.45 - 09.30","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("521","XII IPA 5","Senin","4","09.45 - 10.30","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("522","XII IPA 5","Senin","5","10.30 - 11.15","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("523","XII IPA 5","Senin","6","11.15 - 12.00","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("524","XII IPA 5","Senin","7","12.30 - 13.15","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("525","XII IPA 5","Senin","8","13.15 - 14.00","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("526","XII IPA 5","Senin","9","14.15 - 15.00","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("527","XII IPA 5","Selasa","1","07.15 - 08.00","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","Levi Mendrova, S.Th.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("528","XII IPA 5","Selasa","2","08.00 - 08.45","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("529","XII IPA 5","Selasa","3","08.45 - 09.30","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("530","XII IPA 5","Selasa","4","09.45 - 10.30","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("531","XII IPA 5","Selasa","5","10.30 - 11.15","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("532","XII IPA 5","Selasa","6","11.15 - 12.00","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("533","XII IPA 5","Selasa","7","12.30 - 13.15","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("534","XII IPA 5","Selasa","8","13.15 - 14.00","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("535","XII IPA 5","Selasa","9","14.15 - 15.00","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("536","XII IPA 5","Selasa","10","15.00 - 15.45","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("537","XII IPA 5","Rabu","1","07.15 - 08.00","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("538","XII IPA 5","Rabu","2","08.00 - 08.45","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("539","XII IPA 5","Rabu","3","08.45 - 09.30","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("540","XII IPA 5","Rabu","4","09.45 - 10.30","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("541","XII IPA 5","Rabu","5","10.30 - 11.15","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("542","XII IPA 5","Rabu","6","11.15 - 12.00","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("543","XII IPA 5","Rabu","7","12.30 - 13.15","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("544","XII IPA 5","Rabu","8","13.15 - 14.00","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("545","XII IPA 5","Rabu","9","14.15 - 15.00","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("546","XII IPA 5","Rabu","10","15.00 - 15.45","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("547","XII IPA 5","Kamis","1","07.15 - 08.00","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("548","XII IPA 5","Kamis","2","08.00 - 08.45","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("549","XII IPA 5","Kamis","3","08.45 - 09.30","Akademik","Raden Heru Adi Prasetyanta, S.Pd.","Drs. Suhirno. MBA","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("550","XII IPA 5","Kamis","4","09.45 - 10.30","Akademik","Raden Heru Adi Prasetyanta, S.Pd.","Drs. Suhirno. MBA","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("551","XII IPA 5","Kamis","5","10.30 - 11.15","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("552","XII IPA 5","Kamis","6","11.15 - 12.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("553","XII IPA 5","Kamis","7","12.30 - 13.15","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("554","XII IPA 5","Kamis","8","13.15 - 14.00","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("555","XII IPA 5","Kamis","9","14.15 - 15.00","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("556","XII IPA 5","Kamis","10","15.00 - 15.45","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("557","XII IPA 5","Jumat","1","07.15 - 08.00","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("558","XII IPA 5","Jumat","2","08.00 - 08.45","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("559","XII IPA 5","Jumat","3","08.45 - 09.30","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("560","XII IPA 5","Jumat","4","09.45 - 10.30","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("561","XII IPA 5","Jumat","5","10.30 - 11.15","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("562","XII IPA 5","Jumat","6","13.00 - 13.45","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("563","XII IPA 5","Jumat","7","13.45 - 14.30","Akademik","Raden Heru Adi Prasetyanta, S.Pd.","Drs. Suhirno. MBA","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("564","XII IPA 5","Jumat","8","14.30 - 15.15","Akademik","Raden Heru Adi Prasetyanta, S.Pd.","Drs. Suhirno. MBA","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("565","XII IPA 6","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("566","XII IPA 6","Senin","2","08.00 - 08.45","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("567","XII IPA 6","Senin","3","08.45 - 09.30","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("568","XII IPA 6","Senin","4","09.45 - 10.30","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("569","XII IPA 6","Senin","5","10.30 - 11.15","Akademik","Dra. Lestari Nur Yuniati .","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("570","XII IPA 6","Senin","6","11.15 - 12.00","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("571","XII IPA 6","Senin","7","12.30 - 13.15","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("572","XII IPA 6","Senin","8","13.15 - 14.00","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("573","XII IPA 6","Senin","9","14.15 - 15.00","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("574","XII IPA 6","Selasa","1","07.15 - 08.00","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("575","XII IPA 6","Selasa","2","08.00 - 08.45","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("576","XII IPA 6","Selasa","3","08.45 - 09.30","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("577","XII IPA 6","Selasa","4","09.45 - 10.30","Agama","Drs. I Wayan Suarsana","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("578","XII IPA 6","Selasa","5","10.30 - 11.15","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("579","XII IPA 6","Selasa","6","11.15 - 12.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("580","XII IPA 6","Selasa","7","12.30 - 13.15","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("581","XII IPA 6","Selasa","8","13.15 - 14.00","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("582","XII IPA 6","Selasa","9","14.15 - 15.00","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("583","XII IPA 6","Selasa","10","15.00 - 15.45","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("584","XII IPA 6","Rabu","1","07.15 - 08.00","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("585","XII IPA 6","Rabu","2","08.00 - 08.45","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("586","XII IPA 6","Rabu","3","08.45 - 09.30","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("587","XII IPA 6","Rabu","4","09.45 - 10.30","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("588","XII IPA 6","Rabu","5","10.30 - 11.15","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("589","XII IPA 6","Rabu","6","11.15 - 12.00","Seni","Cindy Trisnawati, S.Pd.","Bakhtiar Fahmi, S.Sn","Winan, S.S.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("590","XII IPA 6","Rabu","7","12.30 - 13.15","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("591","XII IPA 6","Rabu","8","13.15 - 14.00","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("592","XII IPA 6","Rabu","9","14.15 - 15.00","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("593","XII IPA 6","Rabu","10","15.00 - 15.45","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("594","XII IPA 6","Kamis","1","07.15 - 08.00","Agama","Drs. I Wayan Suarsana","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("595","XII IPA 6","Kamis","2","08.00 - 08.45","Agama","Drs. I Wayan Suarsana","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","B Teguh Sarwono S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("596","XII IPA 6","Kamis","3","08.45 - 09.30","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("597","XII IPA 6","Kamis","4","09.45 - 10.30","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("598","XII IPA 6","Kamis","5","10.30 - 11.15","Bahasa Inggris","Raden Heru Adi Prasetyanta, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("599","XII IPA 6","Kamis","6","11.15 - 12.00","Bahasa Inggris","Raden Heru Adi Prasetyanta, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("600","XII IPA 6","Kamis","7","12.30 - 13.15","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("601","XII IPA 6","Kamis","8","13.15 - 14.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("602","XII IPA 6","Kamis","9","14.15 - 15.00","Akademik","Dra. Lestari Nur Yuniati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("603","XII IPA 6","Kamis","10","15.00 - 15.45","Akademik","Dra. Lestari Nur Yuniati ","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("604","XII IPA 6","Jumat","1","07.15 - 08.00","Bahasa Inggris","Raden Heru Adi Prasetyanta, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("605","XII IPA 6","Jumat","2","08.00 - 08.45","Bahasa Inggris","Raden Heru Adi Prasetyanta, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("606","XII IPA 6","Jumat","3","08.45 - 09.30","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("607","XII IPA 6","Jumat","4","09.45 - 10.30","Akademik","Hj. Nanik Rahayu, S.Pd. M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("608","XII IPA 6","Jumat","5","10.30 - 11.15","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("609","XII IPA 6","Jumat","6","13.00 - 13.45","Kimia","Hj. Muslimah, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("610","XII IPA 6","Jumat","7","13.45 - 14.30","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("611","XII IPA 6","Jumat","8","14.30 - 15.15","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("612","XII IPS 1","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("613","XII IPS 1","Senin","2","08.00 - 08.45","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("614","XII IPS 1","Senin","3","08.45 - 09.30","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("615","XII IPS 1","Senin","4","09.45 - 10.30","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("616","XII IPS 1","Senin","5","10.30 - 11.15","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("617","XII IPS 1","Senin","6","11.15 - 12.00","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("618","XII IPS 1","Senin","7","12.30 - 13.15","Bahasa Inggris","Drs. Wahid Sumanto","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("619","XII IPS 1","Senin","8","13.15 - 14.00","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("620","XII IPS 1","Senin","9","14.15 - 15.00","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("621","XII IPS 1","Selasa","1","07.15 - 08.00","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("622","XII IPS 1","Selasa","2","08.00 - 08.45","Prakarya","Sugeng Riyanto, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("623","XII IPS 1","Selasa","3","08.45 - 09.30","Akademik","Drs. Agus Santosa","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("624","XII IPS 1","Selasa","4","09.45 - 10.30","Akademik","Drs. Agus Santosa","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("625","XII IPS 1","Selasa","5","10.30 - 11.15","Akademik","Drs. Subandriyo","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("626","XII IPS 1","Selasa","6","11.15 - 12.00","Akademik","Drs. Subandriyo","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("627","XII IPS 1","Selasa","7","12.30 - 13.15","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("628","XII IPS 1","Selasa","8","13.15 - 14.00","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("629","XII IPS 1","Selasa","9","14.15 - 15.00","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("630","XII IPS 1","Selasa","10","15.00 - 15.45","Ekonomi","Pratiwi Sutarni, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("631","XII IPS 1","Rabu","1","07.15 - 08.00","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("632","XII IPS 1","Rabu","2","08.00 - 08.45","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("633","XII IPS 1","Rabu","3","08.45 - 09.30","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("634","XII IPS 1","Rabu","4","09.45 - 10.30","Seni","Bakhtiar Fahmi, S.Sn","Winan, S.S.","Cindy Trisnawati, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("635","XII IPS 1","Rabu","5","10.30 - 11.15","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("636","XII IPS 1","Rabu","6","11.15 - 12.00","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("637","XII IPS 1","Rabu","7","12.30 - 13.15","Akademik","Drs. Agus Santosa","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("638","XII IPS 1","Rabu","8","13.15 - 14.00","Akademik","Drs. Agus Santosa","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("639","XII IPS 1","Rabu","9","14.15 - 15.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("640","XII IPS 1","Rabu","10","15.00 - 15.45","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("641","XII IPS 1","Kamis","1","07.15 - 08.00","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("642","XII IPS 1","Kamis","2","08.00 - 08.45","Matematika","Dra. Lilik Agustin Magdalena","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("643","XII IPS 1","Kamis","3","08.45 - 09.30","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","Levi Mendrova, S.Th.","Drs. I Wayan Suarsana","B Teguh Sarwono S.Pd."," "," "," "," "," ");
INSERT INTO jadwal VALUES("644","XII IPS 1","Kamis","4","09.45 - 10.30","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("645","XII IPS 1","Kamis","5","10.30 - 11.15","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("646","XII IPS 1","Kamis","6","11.15 - 12.00","Akademik","Drs. Agung Prasaja","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("647","XII IPS 1","Kamis","7","12.30 - 13.15","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("648","XII IPS 1","Kamis","8","13.15 - 14.00","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("649","XII IPS 1","Kamis","9","14.15 - 15.00","Akademik","Drs. Subandriyo","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("650","XII IPS 1","Kamis","10","15.00 - 15.45","Akademik","Drs. Subandriyo","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("651","XII IPS 1","Jumat","1","07.15 - 08.00","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("652","XII IPS 1","Jumat","2","08.00 - 08.45","Matematika","Dra. Sujiyati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("653","XII IPS 1","Jumat","3","08.45 - 09.30","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("654","XII IPS 1","Jumat","4","09.45 - 10.30","Akademik","Drs. Padmana","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("655","XII IPS 1","Jumat","5","10.30 - 11.15","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("656","XII IPS 1","Jumat","6","13.00 - 13.45","Bahasa Jerman","Drs. Suhirno. MBA","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("657","XII IPS 1","Jumat","7","13.45 - 14.30","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","Levi Mendrova, S.Th.","Drs. I Wayan Suarsana","B Teguh Sarwono S.Pd."," "," "," "," "," ");
INSERT INTO jadwal VALUES("658","XII IPS 1","Jumat","8","14.30 - 15.15","Agama","Tri Khotimah Sholikhah, S.Ag.,M.Pd.I.","Levi Mendrova, S.Th.","Drs. I Wayan Suarsana","B Teguh Sarwono S.Pd."," "," "," "," "," ");
INSERT INTO jadwal VALUES("659","X IPA 1","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("660","X IPA 1","Senin","2","08.00 - 08.45","Seni","Bakhtiar Fahmi, S.Sn","Putri Isnaini K. M.Pd.","Fahmi Ardi Pamungkas, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("661","X IPA 1","Senin","3","08.45 - 09.30","Seni","Bakhtiar Fahmi, S.Sn","Putri Isnaini K. M.Pd.","Fahmi Ardi Pamungkas, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("662","X IPA 1","Senin","4","09.45 - 10.30","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("663","X IPA 1","Senin","5","10.30 - 11.15","Agama","R. Slamet, S.Sn.","Luthvi Arini. S.Pd.I M.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("664","X IPA 1","Senin","6","11.15 - 12.00","Akademik","Harry Andiyanto Nugroho, S.Pd., Amd Arch","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("665","X IPA 1","Senin","7","12.30 - 13.15","Akademik","Harry Andiyanto Nugroho, S.Pd., Amd Arch","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("666","X IPA 1","Senin","8","13.15 - 14.00","Akademik","Sadono, S.Pd, M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("667","X IPA 1","Senin","9","14.15 - 15.00","Akademik","Sadono, S.Pd, M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("668","X IPA 1","Selasa","1","07.15 - 08.00","Bahasa Indonesia","Dra. Hj. Rr. Dwi Puji Lestari","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("669","X IPA 1","Selasa","2","08.00 - 08.45","Bahasa Indonesia","Dra. Hj. Rr. Dwi Puji Lestari","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("670","X IPA 1","Selasa","3","08.45 - 09.30","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("671","X IPA 1","Selasa","4","09.45 - 10.30","Akademik","Sadono, S.Pd, M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("672","X IPA 1","Selasa","5","10.30 - 11.15","PKWU","Rohmatul Ummah, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("673","X IPA 1","Selasa","6","11.15 - 12.00","PKWU","Rohmatul Ummah, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("674","X IPA 1","Selasa","7","12.30 - 13.15","Bahasa Inggris Minat","Noer Indahyati, S.Pd, M.Pd, B.I.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("675","X IPA 1","Selasa","8","13.15 - 14.00","Akademik","Harry Andiyanto Nugroho, S.Pd., Amd Arch","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("676","X IPA 1","Selasa","9","14.15 - 15.00","Akademik","Harry Andiyanto Nugroho, S.Pd., Amd Arch","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("677","X IPA 1","Selasa","10","15.00 - 15.45","Kimia","Nur Asih Himawati, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("678","X IPA 1","Rabu","1","07.15 - 08.00","Kimia","Nur Asih Himawati, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("679","X IPA 1","Rabu","2","08.00 - 08.45","Kimia","Nur Asih Himawati, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("680","X IPA 1","Rabu","3","08.45 - 09.30","Bahasa Inggris Minat","Noer Indahyati, S.Pd, M.Pd, B.I.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("681","X IPA 1","Rabu","4","09.45 - 10.30","Bahasa Inggris Minat","Noer Indahyati, S.Pd, M.Pd, B.I.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("682","X IPA 1","Rabu","5","10.30 - 11.15","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("683","X IPA 1","Rabu","6","11.15 - 12.00","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("684","X IPA 1","Rabu","7","12.30 - 13.15","Agama","R. Slamet, S.Sn.","Luthvi Arini. S.Pd.I M.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("685","X IPA 1","Rabu","8","13.15 - 14.00","Agama","R. Slamet, S.Sn.","Luthvi Arini. S.Pd.I M.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("686","X IPA 1","Rabu","9","14.15 - 15.00","Biologi","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("687","X IPA 1","Rabu","10","15.00 - 15.45","Biologi","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("688","X IPA 1","Kamis","1","07.15 - 08.00","Bahasa Inggris","Raden Heru Adi Prasetyanta, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("689","X IPA 1","Kamis","2","08.00 - 08.45","Bahasa Inggris","Raden Heru Adi Prasetyanta, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("690","X IPA 1","Kamis","3","08.45 - 09.30","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("691","X IPA 1","Kamis","4","09.45 - 10.30","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("692","X IPA 1","Kamis","5","10.30 - 11.15","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("693","X IPA 1","Kamis","6","11.15 - 12.00","PKN","Dra. Susilowati","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("694","X IPA 1","Kamis","7","12.30 - 13.15","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("695","X IPA 1","Kamis","8","13.15 - 14.00","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("696","X IPA 1","Kamis","9","14.15 - 15.00","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("697","X IPA 1","Kamis","10","15.00 - 15.45","Fisika","Drs. Supriyana. M.M, M.Pd.Si.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("698","X IPA 1","Jumat","1","07.15 - 08.00","Olah Raga","Soemaryoto, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("699","X IPA 1","Jumat","2","08.00 - 08.45","Olah Raga","Soemaryoto, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("700","X IPA 1","Jumat","3","08.45 - 09.30","Olah Raga","Soemaryoto, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("701","X IPA 1","Jumat","4","09.45 - 10.30","Biologi","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("702","X IPA 1","Jumat","5","10.30 - 11.15","Bahasa Indonesia","Dra. Hj. Rr. Dwi Puji Lestari","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("703","X IPA 1","Jumat","6","13.00 - 13.45","Bahasa Indonesia","Dra. Hj. Rr. Dwi Puji Lestari","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("704","X IPA 2","Senin","1","07.15 - 08.00","Akademik","Akademik","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("705","X IPA 2","Senin","2","08.00 - 08.45","Akademik","Harry Andiyanto Nugroho, S.Pd., Amd Arch","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("706","X IPA 2","Senin","3","08.45 - 09.30","Akademik","Harry Andiyanto Nugroho, S.Pd., Amd Arch","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("707","X IPA 2","Senin","4","09.45 - 10.30","Akademik","Sadono, S.Pd, M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("708","X IPA 2","Senin","5","10.30 - 11.15","Akademik","Sadono, S.Pd, M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("709","X IPA 2","Senin","6","11.15 - 12.00","Agama","Sadono, S.Pd, M.Pd","Luthvi Arini. S.Pd.I M.Pd.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("710","X IPA 2","Senin","7","12.30 - 13.15","Agama","Luthvi Arini. S.Pd.I M.Pd.","Levi Mendrova, S.Th.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("711","X IPA 2","Senin","8","13.15 - 14.00","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("712","X IPA 2","Senin","9","14.15 - 15.00","Sejarah Indonesia","Drs. Isdiyono","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("713","X IPA 2","Selasa","1","07.15 - 08.00","Biologi","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("714","X IPA 2","Selasa","2","08.00 - 08.45","Akademik","Sadono, S.Pd, M.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("715","X IPA 2","Selasa","3","08.45 - 09.30","Seni","Bakhtiar Fahmi, S.Sn","Putri Isnaini K. M.Pd.","Fahmi Ardi Pamungkas, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("716","X IPA 2","Selasa","4","09.45 - 10.30","Seni","Bakhtiar Fahmi, S.Sn","Putri Isnaini K. M.Pd.","Fahmi Ardi Pamungkas, S.Pd.",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("717","X IPA 2","Selasa","5","10.30 - 11.15","Kimia","Nur Asih Himawati, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("718","X IPA 2","Selasa","6","11.15 - 12.00","Kimia","Nur Asih Himawati, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("719","X IPA 2","Selasa","7","12.30 - 13.15","Bahasa Jawa","Kinanti K, S.Pd","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("720","X IPA 2","Selasa","8","13.15 - 14.00","Bahasa Jawa","Kinanti K, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("721","X IPA 2","Selasa","9","14.15 - 15.00","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("722","X IPA 2","Selasa","10","15.00 - 15.45","Bahasa Jerman","Dra. Anna Woro Ciptaningrum","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("723","X IPA 2","Rabu","1","07.15 - 08.00","Olah Raga","Soemaryoto, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("724","X IPA 2","Rabu","2","08.00 - 08.45","Olah Raga","Soemaryoto, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("725","X IPA 2","Rabu","3","08.45 - 09.30","Olah Raga","Soemaryoto, S.Pd., M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("726","X IPA 2","Rabu","4","09.45 - 10.30","Kimia","Nur Asih Himawati, S.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("727","X IPA 2","Rabu","5","10.30 - 11.15","Agama","Luthvi Arini. S.Pd.I M.Pd.","Levi Mendrova, S.Th.","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("728","X IPA 2","Rabu","6","11.15 - 12.00","Bahasa Inggris Minat","Noer Indahyati, S.Pd, M.Pd, B.I.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("729","X IPA 2","Rabu","7","12.30 - 13.15","Biologi","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");
INSERT INTO jadwal VALUES("730","X IPA 2","Rabu","8","13.15 - 14.00","Biologi","Suhan Ranta, S.Pd, M.Pd.","","",""," "," "," "," "," ");



CREATE TABLE `kalender` (
  `id_kalender` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `kls` varchar(9) NOT NULL,
  `user` varchar(100) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  PRIMARY KEY (`id_kalender`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO kalender VALUES("3","2019-06-14 00:00:00","Padmanaba","<p>Pembagian Raport 2018-2019</p>
","","Drs. Agus Santosa","");
INSERT INTO kalender VALUES("4","2019-06-14 00:00:00","Padmanaba","<p>Masuk ..</p>
","","Drs. Agus Santosa","");
INSERT INTO kalender VALUES("5","2019-06-17 00:00:00","","Ujian 1","XI IPS 1","Drs. Agus Santosa","<p>Bab 5 - 6</p>
");
INSERT INTO kalender VALUES("6","2019-06-18 00:00:00","Bahasa Jerman","Ujian terakhir","XII IPA 3","Dra. Anna Woro Ciptaningrum","<p>Dikirim pada saat mau ujian</p>
");



CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL AUTO_INCREMENT,
  `karyawan` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
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
  `foto` varchar(50) NOT NULL,
  `status` varchar(6) NOT NULL,
  `kal` varchar(20) NOT NULL,
  `info` varchar(20) NOT NULL,
  `abs` varchar(20) NOT NULL,
  `switch` varchar(3) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO karyawan VALUES("1","Tony Stark","k1","","","Laki-laki","","","","","","","Keamanan","5d02ebc7bd8f7.jpg","Pasif","","","","on","<p>satu</p>
");



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
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=latin1;

INSERT INTO pass VALUES("1","5","0","0","0","0","maman","$2y$10$OS0NihxzBdIcZn9BFE0EOelp5yOIYDttTfxTH9jaUq2zsdJUcWyrO","9");
INSERT INTO pass VALUES("2","6","0","0","0","0","g6","$2y$10$D6o260weEjnu8IDL/jCUtepru1/OnkPYas8uE6ErgZAK7OdTvU52C","0");
INSERT INTO pass VALUES("3","7","0","0","0","0","g7","$2y$10$clbUszMQn/l25N5EohLqS.HazC/sUEdKS7ajslIGKHCiatalBvnVa","0");
INSERT INTO pass VALUES("4","8","0","0","0","0","untung","$2y$10$XJ6gg4uMbGRI0SO1zja8W.T7co5MYbrr5UhcmD49Oze06CU6RWA1G","6");
INSERT INTO pass VALUES("5","9","0","0","0","0","g9","$2y$10$FIFnpYCw92P77pjpFRVu/OXKL029ogJRW97moGgZ2vYpcWfgXofXq","0");
INSERT INTO pass VALUES("6","10","0","0","0","0","g10","$2y$10$v5/74gUrlZymEo0POV9yCOaregIjVZa5LAJ3QrGF1m3ee1iQjmKNW","0");
INSERT INTO pass VALUES("7","11","0","0","0","0","g11","$2y$10$WdAou9sLFGOxuKqDGjKOIOyJBYxDkXBi84Av41q6TPHiKNK6X3FLm","0");
INSERT INTO pass VALUES("8","12","0","0","0","0","agus","$2y$10$mFjg7PCFSX6xyisazerD5.cQDszVErGrCXVekc0drtpVsdME5ZZk.","8");
INSERT INTO pass VALUES("9","13","0","0","0","0","woro","$2y$10$LIGdCzLvmhy7CEVrZLVz4udZgn4VXiyT4TeP221pIpw4D5IrKBPLy","5");
INSERT INTO pass VALUES("10","14","0","0","0","0","g14","$2y$10$/bPmAoUQqVhlFlKX36IReOb1smNcz.thyKyDxKAUhvMRlNvuYVcoO","0");
INSERT INTO pass VALUES("11","16","0","0","0","0","g16","$2y$10$o36YJVw451JnAxtS6qjtyeDNre3gq/mSb1.Tc5ACL4fShCghJ5nSe","0");
INSERT INTO pass VALUES("12","17","0","0","0","0","g17","$2y$10$XIs0Nw.92Bzo9LTJusNoM.qhEQ7K5RZjrrVyihrN0lVB6obFkrffm","0");
INSERT INTO pass VALUES("13","18","0","0","0","0","g18","$2y$10$S6pAQcRxDsXR/DmSN9nFIeoaIVtY/Sf9nAVy.xem.sJjtgeK4B1GO","0");
INSERT INTO pass VALUES("14","19","0","0","0","0","g19","$2y$10$b/4hurNcNBlD2K9U109RQeoVDrlMtVlJr.r4NfqIGGBP8Q2gVDqni","7");
INSERT INTO pass VALUES("15","20","0","0","0","0","g20","$2y$10$xE.uD.JM.eGtcUd2dcn0I.CtsjooQcdbh2Z/kSHghd/aDWgSCL7uC","0");
INSERT INTO pass VALUES("16","21","0","0","0","0","g21","$2y$10$gFS4cBBzp9rk7gBtEnOjQOfcvD1YVsgyf58iRDrpiDBTjELK.9fKO","0");
INSERT INTO pass VALUES("17","22","0","0","0","0","g22","$2y$10$51/hlkw3.hEC9jIHTZ7XRe5LA91EfPGy52rznqP4aKHsP99qbFfMy","0");
INSERT INTO pass VALUES("18","23","0","0","0","0","g23","$2y$10$XvMCZEzGicmavMd1rYlPjegoeDN6HlMLAXhzL5u/PWqxLZdor3foW","0");
INSERT INTO pass VALUES("19","24","0","0","0","0","suhirno","$2y$10$x4vXdY8jiDjQZWT1X67fjuQvoLHTK5tVYDpFOkneHLVKSy4w/9OWK","7");
INSERT INTO pass VALUES("20","25","0","0","0","0","g25","$2y$10$VQH3ckmTNhgYifQXbm0EyeconysAPqRVcYHdQfKead.CF2bPwMWPi","0");
INSERT INTO pass VALUES("21","26","0","0","0","0","g26","$2y$10$8pYouEJLiVoWKYksbU0kNuqb38ViOCIQPy98cWRXeob3gsPu1QS3a","7");
INSERT INTO pass VALUES("22","27","0","0","0","0","g27","$2y$10$niqBy.UP2VX3oAJXB1mafusf58QzH5adePjHUDeKSP236p1QkPnS6","7");
INSERT INTO pass VALUES("23","28","0","0","0","0","g28","$2y$10$cUTR0/3ul0oHJM6NHzOicu6XZxybns4CWfryV92wM1q.DZTyJTb.K","0");
INSERT INTO pass VALUES("24","29","0","0","0","0","g29","$2y$10$ovOIPDWB5QeEyu22jfBxK.bdfONBeIsnv6PtN4qdK6rSx6/wqRMHm","7");
INSERT INTO pass VALUES("25","30","0","0","0","0","g30","$2y$10$sK4QjMVOQFN2VcAG7z19LuQZKJnMPH3ebBlMBUFtvfj7Yd2fr1P7O","7");
INSERT INTO pass VALUES("26","31","0","0","0","0","g31","$2y$10$mn62P2PSr0dPwhl/a0CECOo0UZIX7BAYpBOXsoIca69byA2Wvgn7a","0");
INSERT INTO pass VALUES("27","32","0","0","0","0","g32","$2y$10$PxZOIazZP.eUhybxD4tZA.5FGhyDMMk32ZAjy4ibSAg9UDFePG2Ly","0");
INSERT INTO pass VALUES("28","33","0","0","0","0","g33","$2y$10$AYC4wQkgWLOYXyIOPNGPze4ogUbbxeEmk39BxVXaKEuBiE7jECeBm","0");
INSERT INTO pass VALUES("29","34","0","0","0","0","g34","$2y$10$KhW3FuXzBBsMPs8Dd3rk8.6HBzI0Xq0uf5RC391okgpjfm/lTQTfG","0");
INSERT INTO pass VALUES("30","35","0","0","0","0","g35","$2y$10$2VrpZWurrZXhiTfmYbJq9uyq1EMAyqyCadVp.MoZgnoqaQoeUEf8i","0");
INSERT INTO pass VALUES("31","37","0","0","0","0","g37","$2y$10$fXmsJhPsY7/8ojrabGH.v.wYJCRg2q1uBJjtvCvHmMPIaqyHb0/iG","7");
INSERT INTO pass VALUES("32","38","0","0","0","0","g38","$2y$10$w3PINHbj/WrBiUeYdx4ps.P12Y.5NgSQudgAS6RL1F80TaH9cLDq2","7");
INSERT INTO pass VALUES("33","39","0","0","0","0","g39","$2y$10$RyGIXemAMWSLPvGtiB4lt.3.7UUufUS6n5SWK/tVQ.P2ikvpdXFqK","0");
INSERT INTO pass VALUES("34","40","0","0","0","0","g40","$2y$10$T00f45a0eRnwiBRKNinhX.I2609aNjlGIYUE1ELa52/tfHdLnCcR.","0");
INSERT INTO pass VALUES("35","41","0","0","0","0","g41","$2y$10$4tMjqbRdqWU4e.ELOGuvb.OcCUZ3tk7sPwQZnWqPnbnt8w5/ziGp.","0");
INSERT INTO pass VALUES("36","42","0","0","0","0","g42","$2y$10$59mnEiGIYlmNedqqXPFWPulsomBYr9N/fXoBiYCimSLZTKdVE9K.O","0");
INSERT INTO pass VALUES("37","43","0","0","0","0","g43","$2y$10$hKyHCiOrxsOFy8vYfwWO8OTsq1hsLicjgbbLNYux1uaDcTqgdMUGu","7");
INSERT INTO pass VALUES("38","44","0","0","0","0","g44","$2y$10$Jz1kfIROH06VUq.CCj.oE.7Hgv2pyoGOqFMn7Lg95HSMxT684IrYe","0");
INSERT INTO pass VALUES("39","45","0","0","0","0","g45","$2y$10$EU/RkggVT.cbqpd6sjdfe.KWSfoqr5x20izC1FeYrYoYY2GP/IzUi","0");
INSERT INTO pass VALUES("40","46","0","0","0","0","g46","$2y$10$lz7Fn/zZy23tMSgbT6A0YeIw8Rb7DojM4QacL7hYcXfq/Slo9UELe","0");
INSERT INTO pass VALUES("41","47","0","0","0","0","g47","$2y$10$5/XaQavrXYr2sOFHqJ4THegYeH5.hjSJ0JKEBFkci52fmCZiDaBoW","0");
INSERT INTO pass VALUES("42","48","0","0","0","0","g48","$2y$10$wCTagkhBwQpR.Tal9XjMF.cOZEpnRRLRTFNes1H/3y9PTE6V8lzDm","0");
INSERT INTO pass VALUES("43","50","0","0","0","0","g50","$2y$10$odR1vz6ea8BxnLXN0g2NOOP1OVleifjbc.nDmvS/1p/0Wr5PPe2Gu","0");
INSERT INTO pass VALUES("44","51","0","0","0","0","g51","$2y$10$WcRs56Mfw3Kup..W/nVY3u9SJ.92kZdlM5ulNIbFGDP3.PUDU4Ld6","0");
INSERT INTO pass VALUES("45","52","0","0","0","0","g52","$2y$10$0dqxcZFP.5HIcHBLUWzk8uUZRYkMvA/Zo/QDvQM6UNeSmvbR9VO8C","0");
INSERT INTO pass VALUES("46","53","0","0","0","0","g53","$2y$10$lCgBvN726FqWABvu3wUAqe0H.qis9TRZ4BJCzPOPMBFh0C2re03WO","0");
INSERT INTO pass VALUES("47","54","0","0","0","0","g54","$2y$10$t0v5lYklPPVuKYfBZoABoOC13/6lAixMaSjcaAhtuIUSf8aOj9a4C","0");
INSERT INTO pass VALUES("48","55","0","0","0","0","g55","$2y$10$df0amDPqTpcNwvVgRNRESO2znDT8A/WCehil5sQmlxsIQD2oMjUMC","0");
INSERT INTO pass VALUES("49","56","0","0","0","0","g56","$2y$10$kCVzuvDIZPlarrLObgTMNejQbM0HWwKjbT6HIPAXEEE9m90gdMIdy","0");
INSERT INTO pass VALUES("50","57","0","0","0","0","g57","$2y$10$csyNpQLQ9DiarV6N8mhJeOT710OqR7JJbFPYeStRNwb4burM/qj5y","0");
INSERT INTO pass VALUES("51","58","0","0","0","0","g58","$2y$10$y76k/NLL4CXKIglN2/0ZkOGf3AuaqRcDFeqJJSGJG1OUGNXAW/W8u","0");
INSERT INTO pass VALUES("52","59","0","0","0","0","g59","$2y$10$gQ4AWDnB75FRGeELKwKLIuMgT/nyVmtB3onWnvpbBGh..MfRfBepa","7");
INSERT INTO pass VALUES("53","60","0","0","0","0","g60","$2y$10$J8TjeqsTGpYxL5Qp7L2o4eH1uJT.nSkV0vAryE1Z6T0llBo8q6hiG","0");
INSERT INTO pass VALUES("54","61","0","0","0","0","g61","$2y$10$yyEuM1NDZID3bn2EtWeKZ.p5g2ZwEYBUBMrPe1h7ObTlHNiL8/cXy","0");
INSERT INTO pass VALUES("55","62","0","0","0","0","g62","$2y$10$LHa1ktc7Pdi4I94I3KnCRu4PIxdsVHyxxYV4eQ6KoyfaIJkmxSyKq","0");
INSERT INTO pass VALUES("56","63","0","0","0","0","g63","$2y$10$Xveo4UOwOO9TvTtspQy06OXeOGdWInLU2ttlkj.ZGaMDajHh6heT.","0");
INSERT INTO pass VALUES("57","64","0","0","0","0","g64","$2y$10$8GrI2xFNKO3ddgxjRJs/gegZEspZIJP62kxu9nY.ziXosTPMBx/JG","0");
INSERT INTO pass VALUES("58","0","0","3","0","0","s3","$2y$10$Qg/OKphLcpNzCM7hDTg1FuLObUQtpUA7MWZ0PZ6KHVRFCSfj03STS","3");
INSERT INTO pass VALUES("59","0","0","4","0","0","s4","$2y$10$uqDhatKqZoXOLpBgWqRml.X9OLmPPVQIFJ4QPak6hSS.1AG1154G.","3");
INSERT INTO pass VALUES("60","0","0","6","0","0","s6","$2y$10$PDjL.ybt1yhzcZWjoF/cOewrgB4IxsPbv71vFgJ2dZKNODWb2mr7O","3");
INSERT INTO pass VALUES("61","0","0","8","0","0","s8","$2y$10$3iifylldi8ML3hxc27pQ9eXbqdOHizmpKYOrVGO/B.oFTLjTMr7xi","3");
INSERT INTO pass VALUES("62","0","0","9","0","0","s9","$2y$10$EB9fYFZWIk09JFo0grHgEeWiLkZqXX6klJhhPUkeC5PVF4aBp9Wzm","3");
INSERT INTO pass VALUES("63","0","0","10","0","0","s10","$2y$10$moVr.jc6kxhyXJnEVnFvKuWJw.zMTyMRrIBI4qiYwFuedlmuSK812","3");
INSERT INTO pass VALUES("64","0","0","12","0","0","s12","$2y$10$07Hb95Ql1.90IebzQpTZZOWuK9LICG1T6wTgXZTIDHYOMGEK/WQQG","3");
INSERT INTO pass VALUES("65","0","0","13","0","0","s13","$2y$10$Vgsmdg03ZnRZiMs9oFn2z.QcR0Nsqk8QyKOxBphkwtU2PryyWSGV6","3");
INSERT INTO pass VALUES("66","0","0","14","0","0","s14","$2y$10$EKPHlKp8ZINYomyVqJyZMOz6tXeXbOd9zjWaHf4nAWEbysTSJYZcK","3");
INSERT INTO pass VALUES("67","0","0","15","0","0","s15","$2y$10$/hb97psyM3FCOO4RO7LBuumHprvQW31c1Mz/R7RCET7qAxJt3hbFG","3");
INSERT INTO pass VALUES("68","0","0","16","0","0","s16","$2y$10$rdVtZOt5Q80f.htS6RMx.ue2RT5C6sv7R1i0FdIgf4RCkxkGbqQ8.","3");
INSERT INTO pass VALUES("69","0","0","17","0","0","s17","$2y$10$nyJ.lMabjs68Nz4g0OYlvOIgDBpFIzIRmkFqcLZB77xsvK8EVhRC2","3");
INSERT INTO pass VALUES("70","0","0","18","0","0","s18","$2y$10$gcNAXl3BmqrU6oq4to8Xy.dNTcXZ5GLMVChxQzjwqUXZdJ12XttBS","3");
INSERT INTO pass VALUES("71","0","0","19","0","0","s19","$2y$10$jK1/FJ6ZLive0WFB0ofp9uXaUS14EJ6knF1h2qoLyyDaOsbpZ9Nwy","3");
INSERT INTO pass VALUES("72","0","0","20","0","0","s20","$2y$10$ffpR7qxz.YDaCyWc/I3lZu/vLpHcyIXQZmuFjn/QeCCr0vUb1q0sC","3");
INSERT INTO pass VALUES("73","0","0","21","0","0","s21","$2y$10$MJJV.kS7Jg8KjkulH8AycuHSXvisqSN7o1jiELZo3eZk62u0m.oB2","3");
INSERT INTO pass VALUES("74","0","0","22","0","0","s22","$2y$10$/ZzvZIb1jykGAV.T6nR/ju8n36YSlk3rDLASW9BXksiV9bJBGdktC","3");
INSERT INTO pass VALUES("75","0","0","23","0","0","s23","$2y$10$pVIS2XKPVPEGEgIWSc/cpenLHRQk1GBbd6aj/Bv0/hoerozZQFDaC","3");
INSERT INTO pass VALUES("76","0","0","24","0","0","s24","$2y$10$uR59p2DdBnz1rPuGNL2U2eIK35kejJuPNZ9DTiyHpscaVuTqu.AHu","3");
INSERT INTO pass VALUES("77","0","0","25","0","0","s25","$2y$10$eBWPcRWdpZhhfH50/yn3oem7W1n9qMIVsVQbdfVxEHQdV/Yrm6/bK","3");
INSERT INTO pass VALUES("78","0","0","27","0","0","s27","$2y$10$9e8ky6fQuRrW1LXCiROqveYhi1CNs43QyzkPHUcTMgLiyUh1rGB6u","3");
INSERT INTO pass VALUES("79","0","0","28","0","0","s28","$2y$10$LuJ4qp3jTYR2P6WDXKJLa.xHQ5xikNq..KaXpHcR3EQgmtRgX9pzG","3");
INSERT INTO pass VALUES("80","0","0","29","0","0","s29","$2y$10$AvFo99KehlQqMtOTWvPzy.6KLXSYgLxIP7YfjrHWnN/eRChYBYEhi","3");
INSERT INTO pass VALUES("81","0","0","31","0","0","s31","$2y$10$JT8YHwly7ZPRQdnbb1HZyeV88ctRB/yxPt15YOwritBsoL3ky/Ska","3");
INSERT INTO pass VALUES("82","0","0","32","0","0","s32","$2y$10$.F5FH82VhNRJvPx.ZmopOO7/ugiNN8jhtOVGeficEuepVm7h9ccAq","3");
INSERT INTO pass VALUES("83","0","0","33","0","0","s33","$2y$10$4qTqqAkS/inB6BEQBGZzHeKbFZUTli17vxjO3x28HvD/slyGTiooa","3");
INSERT INTO pass VALUES("84","0","0","34","0","0","s34","$2y$10$lxt4f76dUyGN/M7x9oYPVuDs1m0w1dbRJL5RG6oG69.wEVI.Iowge","3");
INSERT INTO pass VALUES("85","0","0","35","0","0","s35","$2y$10$TYqFAnUnDC.Od6ToFFsiguAp6RPRo.Vn2bmAZDzpORqKXVFOXWAoK","3");
INSERT INTO pass VALUES("86","0","0","36","0","0","s36","$2y$10$JycOle5s.NQophtONYqIpeSf10s14TJbByFk8/zpblE8bFiDNadKS","3");
INSERT INTO pass VALUES("87","0","0","37","0","0","s37","$2y$10$rgmA7K1wPcC7gLh5nUN/b.lJ8lNVAvn9aRDGlhkBTT8UsIPl6G85K","3");
INSERT INTO pass VALUES("88","0","0","40","0","0","s40","$2y$10$ySwm5P4tpuylkaZC95OSDeeDWEJLiDsIUGZESqzo/If/RVDUKGiaO","3");
INSERT INTO pass VALUES("89","0","0","70","0","0","s70","$2y$10$QW71gst0tTy5Z1Lsf2ERuehXeDppc7C0DZRzHWQqcOgGPKUszB9be","3");
INSERT INTO pass VALUES("90","0","0","72","0","0","s72","$2y$10$Qwmf04qVzOniRs/hEImTBe2Z4f2yX/VMoYeq0XyBhv1sX1nlqND4e","3");
INSERT INTO pass VALUES("91","0","0","73","0","0","s73","$2y$10$YGqdqR/jUIhW5Ud33jb/Gej27SYMJnaIof83WY5bRFo0OGB4SyyqS","3");
INSERT INTO pass VALUES("92","0","0","74","0","0","s74","$2y$10$w0vUf7jefMPhujXNdPDCVu9.WBO83KoQr6IvQ2zAUCMWAfIsEnrr.","3");
INSERT INTO pass VALUES("93","0","0","75","0","0","s75","$2y$10$b6V9styJstJKffoqJhE3WekfSUayfcV8.znHIXda2qU8ysgtdgO1W","3");
INSERT INTO pass VALUES("94","0","0","76","0","0","s76","$2y$10$m3hAjCEdCVL8q9m1o7D7FuX9aV3iSQBW.uPnGuk0enc3pSy3QRBa6","3");
INSERT INTO pass VALUES("95","0","0","77","0","0","s77","$2y$10$JdCXzZ6QhpDmkfv.544Ywu5lkHiys4QIKWJONAP95/x2x9O3h8HCS","3");
INSERT INTO pass VALUES("96","0","0","78","0","0","s78","$2y$10$jqqGGfVNkKsV7WaEMCZsfeGn5A6sSrSMlpuZAR4YLFpcD//MfJbDW","3");
INSERT INTO pass VALUES("97","0","0","79","0","0","s79","$2y$10$jdbOLO5khIsIuLzSOecNKOC.MSxWzP4hc3PzYfAekNiyVb3zzljpq","3");
INSERT INTO pass VALUES("98","0","0","80","0","0","s80","$2y$10$kzytMdoD5mXufiWnfpACtecg6b9PxIivp/2VQc6vgfaydtXhrxS96","3");
INSERT INTO pass VALUES("99","0","0","81","0","0","s81","$2y$10$L8/ChFhOyku.f8jCa0W6UeIYL9B1hWsXpNSC3WOcMpSRfttetz99i","3");
INSERT INTO pass VALUES("100","0","0","82","0","0","s82","$2y$10$jhWpUIakroXqGKwf8ZlZCOlRhVf9rItESVpQoWmq.HP0pCdSZ.TJ2","3");
INSERT INTO pass VALUES("101","0","0","83","0","0","s83","$2y$10$kfwTyJvtTRF9L.1pPaXLG.6.q3UMYWbKZwcL0.GsGN9MV8/yu5z5K","3");
INSERT INTO pass VALUES("102","0","0","84","0","0","s84","$2y$10$q.onEpS/qT0PhuqQNN/KiuDGX9dX9q.4YiRT/Iwj47ZOy5A5PoNSS","3");
INSERT INTO pass VALUES("103","0","0","85","0","0","s85","$2y$10$7Fak6MnxC.CIRSVSV6vVOe10d8Vw91PgLoDznnhccnnOejBCZGyWW","3");
INSERT INTO pass VALUES("104","0","0","86","0","0","s86","$2y$10$H9pU9jQJ9vCXonBCvUAg9u1l/NnIYAO3TFhK3XxF1XJqUJaafcepm","3");
INSERT INTO pass VALUES("105","0","0","87","0","0","s87","$2y$10$Nc/CRfYaIU4BL1qw8pgjlOMrPrntiotLYOYNQAaqiW3F2HCD0s0zm","3");
INSERT INTO pass VALUES("106","0","0","88","0","0","s88","$2y$10$ztfi/caZ90V76QnU9VuPVuTrJ6QnI7/rf.pq9bWgPJ5TZW4a2Rhfe","3");
INSERT INTO pass VALUES("107","0","0","89","0","0","s89","$2y$10$WjXALBuf7NIUwUd1WCYpiOkWZVlymVtmXlJTmRafFE3kqARuKbUn2","3");
INSERT INTO pass VALUES("108","0","0","90","0","0","s90","$2y$10$7ht1gku5raaB3n6aOhhxx.xjWF8JMHjFTAViDoo5X6nLL3IE8PH7e","3");
INSERT INTO pass VALUES("109","0","0","91","0","0","s91","$2y$10$LuuqnaAfKgyQEbp7L0cEyeMJQo.5mlx6IiutN08JoEtRIdYw12FAG","3");
INSERT INTO pass VALUES("110","0","0","92","0","0","s92","$2y$10$qoi5e92kpEAX7KYwOz.rq.c.iCuqdwIRlFhp4qUIrfkL5pes11wsm","3");
INSERT INTO pass VALUES("111","0","0","93","0","0","s93","$2y$10$yKSIzTWzVapHpISba/mXaOHvhKGa0W778qUNL64pX7S4fCy1Un9v2","3");
INSERT INTO pass VALUES("112","0","0","94","0","0","s94","$2y$10$IjpJzMW79m3RmA9DUx3wou8/JcWkM6uaYvGEzQq.EWvFFYGhu/tK6","3");
INSERT INTO pass VALUES("113","0","0","95","0","0","s95","$2y$10$1OCAy5tR8qGT9PRIJGbqueqyvibLWsOEhAxDhcryQTHrFv/ScSuIa","3");
INSERT INTO pass VALUES("114","0","0","96","0","0","s96","$2y$10$Zv3oxJUqEakQkl03YVtt3u2AlVL9J/Ln2e2AKFsVjdBbn2eB9q8/e","3");
INSERT INTO pass VALUES("115","0","0","97","0","0","s97","$2y$10$uXxlMDklH8Mo9W0tJi1iousZiVUs60.SO8HyBeIcPtUECbBPfggKa","3");
INSERT INTO pass VALUES("116","0","0","98","0","0","s98","$2y$10$GxoXG/iS9TEJgVUMvXXqs.gGhcPM2EyPP9GzZUa7OfqNObkfiWdIq","3");
INSERT INTO pass VALUES("117","0","0","99","0","0","s99","$2y$10$Fyp5V97kUcLJKy0NOBnDfu0jAjanBWH3vzNjEXEJGmEsHeb1y1z1y","3");
INSERT INTO pass VALUES("118","0","0","100","0","0","s100","$2y$10$tlxyO.nEp8/SYxEmdLgskunT/rmFM9mRdlvEwWq2bn90t/56DgyqG","3");
INSERT INTO pass VALUES("119","0","0","101","0","0","s101","$2y$10$ZGDYgI.gAjpXJaMDJJI5gueYcCzEe1zsHx0CcaGuNqePFToWc0pVa","3");
INSERT INTO pass VALUES("120","0","0","102","0","0","s102","$2y$10$1i5H/VWVxezCzoSno6WJt.HcsHwR1p2ttb1FxwSAq1B.KhHfeZZ3G","3");
INSERT INTO pass VALUES("121","0","0","103","0","0","s103","$2y$10$JJERi/VpLbBRDSumMMfbZuD5ITTChCJArrqIHaKX7/gNMDZirn7fO","3");
INSERT INTO pass VALUES("122","0","0","104","0","0","s104","$2y$10$BHiUdqIaDpIBCjFhClnk1u71Y3qLVJBbzSoY0OlNGt9wq0Ljd2OH.","3");
INSERT INTO pass VALUES("123","0","0","105","0","0","s105","$2y$10$PsKmrejfj9Sk8f9gQZUWduelDHnNtYu1x1st/4Dabf.FCuRj4fHZK","3");
INSERT INTO pass VALUES("124","0","0","106","0","0","s106","$2y$10$TmsvFofAEAMoQLa4l9fBNuWwHxCDl66ecxre.BVSY5QZIOmiZrOay","3");
INSERT INTO pass VALUES("125","0","0","107","0","0","s107","$2y$10$nij.6I1g4VMQZ8EDwhTIDOWoIU4h2f6rYfWV1m5a7DweRcjAW658a","3");
INSERT INTO pass VALUES("126","0","0","108","0","0","s108","$2y$10$e1Te3jx4mUOoBSURMiZzM.3iYnxmM1Sfoia45o.nhN.TI4j0Vqczm","3");
INSERT INTO pass VALUES("127","0","0","109","0","0","s109","$2y$10$IePwdANruC7hIogIE3.Iz.AXfIRz/RrVCRxOIxcCNyjfbcKCTe076","3");
INSERT INTO pass VALUES("128","0","0","110","0","0","s110","$2y$10$izPy2I9BwdngINtXgFVHmu4kL9w8nTo3N3GI3Jbx0FzHhX7x3hKCu","3");
INSERT INTO pass VALUES("129","0","0","111","0","0","s111","$2y$10$W4zDq4CO2I9vnzWwT2Xzb.D.YSiHCLBbnmCxQyrLthliiNKjBHqfO","3");
INSERT INTO pass VALUES("130","0","0","112","0","0","s112","$2y$10$0l6hA/dvG1qIfAUIEPhpte5m3bofkWcCdEaoUqIh.5ZvGw/EayGPK","3");
INSERT INTO pass VALUES("131","0","0","113","0","0","s113","$2y$10$GNOKfPnVIh0CwJygDa09TeRZEs2EfxmD1Q6W1Y70HEx4/ZnNEOV4W","3");
INSERT INTO pass VALUES("132","0","0","114","0","0","s114","$2y$10$Yk/x0L9yRgjuk6GZTF8wqe3/i2wLmp9UXN1581GYaw5XmisU7LzZi","3");
INSERT INTO pass VALUES("133","0","0","115","0","0","s115","$2y$10$hDNAh14YzHkldm4MjAzkxeqGF3yeM4TlsPGMR6CNnkJlREMKTckue","3");
INSERT INTO pass VALUES("134","0","0","39","0","0","raihan","$2y$10$QjY48loWhpyfgcRNfn7MlOfs5rFrvVKtp7VzfBVtUeWRU/Ai2b4Fy","3");
INSERT INTO pass VALUES("135","0","0","42","0","0","s42","$2y$10$2j9BjizRpYWp.g2uf/miz.VlW5.TFq3W4f5cfwBuCaEAc/mMv1.hS","3");
INSERT INTO pass VALUES("136","0","0","43","0","0","s43","$2y$10$/16vkcOZSWrO.anPQnhqMOgP5NQUkpLNtVBppnRvfUaQd/OTyUJ0q","3");
INSERT INTO pass VALUES("137","0","0","44","0","0","s44","$2y$10$fBmA7haqDJiv0lcdUfD9UOatgWZhaZGeONez5nNwaaRGOT3no0FdG","3");
INSERT INTO pass VALUES("138","0","0","45","0","0","s45","$2y$10$lnkHUSttK/VfU2RCalKFC.vKdUHLlvd3LOinO/bZPLkwnJXjnLzc.","3");
INSERT INTO pass VALUES("139","0","0","46","0","0","s46","$2y$10$S5HrfCBn7utSYRYkM01UHOcAQ1zjyuCRLawcqtLPNOotpyzyUY132","3");
INSERT INTO pass VALUES("140","0","0","47","0","0","s47","$2y$10$tCM9djCxTUOqitOky4/Mz.ZKwmysTT7Zx99FsGn12kAJzDhImd9B2","3");
INSERT INTO pass VALUES("141","0","0","48","0","0","s48","$2y$10$8S52YHPkL3ha3wMLBIFaC./fI36/KZhaNQxfc2SHBE1EHY9VM7zra","3");
INSERT INTO pass VALUES("142","0","0","49","0","0","s49","$2y$10$/pUsi.W7x9N2lyWQf2zT0ev/PiTCVM/Lp6ANs8ZPzWN2C1nn3cOxq","3");
INSERT INTO pass VALUES("143","0","0","50","0","0","s50","$2y$10$zHxANZd8yB2KFzstBP00jOCmIm5oA7Wv6TPYZw0JQtrjdaYxWpoJK","3");
INSERT INTO pass VALUES("144","0","0","51","0","0","s51","$2y$10$.R1SjwlvR8Z0xwPpRkogyOwcYBMpfKw5Dql9lLKKlAFc3Yfy3o.ji","3");
INSERT INTO pass VALUES("145","0","0","52","0","0","s52","$2y$10$zLXNFOtxh3XbKCUenGYweuJohgITpJo/RpMqxKSg.qZuDfAGTIlRO","3");
INSERT INTO pass VALUES("146","0","0","53","0","0","s53","$2y$10$O01xtvqSHqtBQsvY9.AEsugyk9AhjSRRhr6zWW/2EV2kH5EeFTQ46","3");
INSERT INTO pass VALUES("147","0","0","54","0","0","s54","$2y$10$uY/Smk4G2YZGC04cIVjW4.dkLvd1W5qPqYJ.MjdMY1E8Ou5Gs9eaG","3");
INSERT INTO pass VALUES("148","0","0","55","0","0","s55","$2y$10$aUDew2NGR7ea320dzJ/Ng.cx7bp3QNntl4vZMRBjeEoMQ8SqcRhny","3");
INSERT INTO pass VALUES("149","0","0","56","0","0","s56","$2y$10$8NjgIFGkK2WkQ8xcYjNYLeV9A0qvaYy/P4HSJqDMUM1JAq9aCN0x2","3");
INSERT INTO pass VALUES("150","0","0","57","0","0","s57","$2y$10$H.HNRP9ATEaX4wqekpat5ecvcdvgSgSGwi1E0OeN72Xu9IY4ZJDhO","3");
INSERT INTO pass VALUES("151","0","0","59","0","0","s59","$2y$10$di4wr4PxjXe2/cN/eIz86u3crf0XWb3kXfGyJZWC9nJ.nu6.PAMO6","3");
INSERT INTO pass VALUES("152","0","0","60","0","0","s60","$2y$10$IHgSmPQFg4Ux/yRcEBdkwuNexisGXL7KVvJmkEetQnKGZ92/U35gq","3");
INSERT INTO pass VALUES("153","0","0","61","0","0","s61","$2y$10$z3vLwwPjwhDRpsewT9WKaOlyQwrpaAlv8CV0uovk.fTule.URDXMu","3");
INSERT INTO pass VALUES("154","0","0","62","0","0","s62","$2y$10$p2oWvEaZSqU0nyzDsqa.feI/h6gAdMJgqy.AvMQhElu3K.OEwxrpS","3");
INSERT INTO pass VALUES("155","0","0","63","0","0","s63","$2y$10$3GeHwYa2TjdguH9ai5bQbuvW3BQnq8ce3ZtIQJ94Va0M/aPA9xZZe","3");
INSERT INTO pass VALUES("156","0","0","64","0","0","s64","$2y$10$t1XbS2Sc4Hf7PdbDF6L/6..HnaVHRgrxiiHh6LAc6QvIvdpEN359a","3");
INSERT INTO pass VALUES("157","0","0","65","0","0","s65","$2y$10$BTqR/XWoW0517iZSQ9vjxelutYorVkrQf7W4Mp6Q/6XgJO1238TMO","3");
INSERT INTO pass VALUES("158","0","0","66","0","0","s66","$2y$10$1YS9oBUQg75dZdlTz/5uNOe/f4IqYe6HPbwe5jeoPZA5XWWHFl/SW","3");
INSERT INTO pass VALUES("159","0","0","67","0","0","s67","$2y$10$GjPacFbvmLp74oghBLhpwO7p3CcpbeZrWvXE70aQvjmnKz9BPsEEa","3");
INSERT INTO pass VALUES("160","0","0","68","0","0","s68","$2y$10$YACl2Go3rUwCfqlPvzEfruEDjKo07YomvFIFmOaO0sbI0264nt0ty","3");
INSERT INTO pass VALUES("161","0","0","69","0","0","s69","$2y$10$2i3VeXadYZ9wJMfVnkJ5.eIR8L8my0o.NKVF5Unj357igdeyBv9Ci","3");
INSERT INTO pass VALUES("162","0","0","71","0","0","s71","$2y$10$dQ5OC46263WoeTjTi3VI..eOrnTywWbRT94Irxto7FxZF.VpCR.PC","3");
INSERT INTO pass VALUES("163","0","0","116","0","0","s116","$2y$10$BL.6JlsdY93Bi3b0NBP4fu7Ean6oMOYWyvhgStxYe47dsp1DdM5Ee","3");
INSERT INTO pass VALUES("164","0","0","117","0","0","s117","$2y$10$/ZRvP1BqRPDPsDf9pz05t.pclWzP7mb5rBv/t8iV.mMI6nwtZ7Ex2","3");
INSERT INTO pass VALUES("165","0","0","118","0","0","s118","$2y$10$LsDmt4p.YR1OOucQTChp1.4k.LHHiJW7M5SaO9RvydS8csRPRDwmu","3");
INSERT INTO pass VALUES("166","0","0","119","0","0","s119","$2y$10$Fndtt5w9g4xGd2K8l5hlFeADRahK/zP1x5WpkxEaAbWtUZIpcV8WC","3");
INSERT INTO pass VALUES("167","0","0","120","0","0","s120","$2y$10$ZD0T/RWCD1sszt1o5WQAr.sJHfsRoIaDPC7estHRyKMC9h5vE6Y..","3");
INSERT INTO pass VALUES("168","0","0","121","0","0","s121","$2y$10$sO/HLyNcXAu0bVCsAft5mutcYAKjRjAUWzxV4aZit2Hs23QL1A29W","3");
INSERT INTO pass VALUES("169","0","0","122","0","0","s122","$2y$10$RC5NMg2LcDmLFQ1XNGdmpO8IT4.nGdfubPWPnx8IZUwqwA2R7WSfq","3");
INSERT INTO pass VALUES("170","0","0","123","0","0","s123","$2y$10$YeGRus8Tad5fPMWi4.TczuZO9UWkOOfi3RubNF0mHhpwvGyQzs7oe","3");
INSERT INTO pass VALUES("171","0","0","124","0","0","s124","$2y$10$bCR6WeH7vJzgT5hmV62YqeTu7Y035WJieZ1NNlTHlarXDbE9Q5/ju","3");
INSERT INTO pass VALUES("172","0","0","125","0","0","s125","$2y$10$QEPtOW/qDqR/kHkV/fl4L.XpLqstDYJnGvHh1Q0jPXO84bU6Bi/Om","3");
INSERT INTO pass VALUES("173","0","0","126","0","0","s126","$2y$10$fHab9zAUBEMu6LBAIvNYE.bKfbWCJWCNbazrcz/4ZGiOxyqspXUPy","3");
INSERT INTO pass VALUES("174","0","0","127","0","0","s127","$2y$10$ryxRXjZuzoh01xUBH.7Bz.HXXrBRiO9Mz.kRg4s48Gq6OiL3GUaVe","3");
INSERT INTO pass VALUES("175","0","0","128","0","0","s128","$2y$10$lc5e.ztN46QFR.57HtyoC.yxR01TsBOLIO61bpg4CAlvoKypNFa3u","3");
INSERT INTO pass VALUES("176","0","0","129","0","0","s129","$2y$10$OMEQG5bgmq7Dcvp509B7wOyvLtkGD0fj984ZeyNuLfAAcrZBXbCTy","3");
INSERT INTO pass VALUES("177","0","0","130","0","0","s130","$2y$10$wSIjx6ECmwR.peXNXi3OweI9voVBz/INrFt5Q.jTCPGRC/zGDf9Bi","3");
INSERT INTO pass VALUES("178","0","0","131","0","0","s131","$2y$10$.9vrB8mEhirIUtYWlbFHluzzLCSgGEVr/8Msi/U4yl/bJycFel2MS","3");
INSERT INTO pass VALUES("179","0","0","132","0","0","s132","$2y$10$.fpYn0a1EuYWyfu1CkF6vuzYgjt/OhqfJgo8jFWvKLPlqnNG15DiO","3");
INSERT INTO pass VALUES("180","0","0","133","0","0","s133","$2y$10$FwnuHXOtB.dt9VX2qehvvuGhmxnp1b2q6pFUZB/eDyr/WZFtM7pbG","3");
INSERT INTO pass VALUES("181","0","0","134","0","0","s134","$2y$10$Ak1IZunP4xdQAY7uWNUg/uxjAN.GmfrYzFjT2Ei21MVtNRJhB2K2i","3");
INSERT INTO pass VALUES("182","0","0","135","0","0","s135","$2y$10$XVoSmMrajXr8D47j/x28cuzvpylaHxclIWIlYOIQUI52fZaV1giQ6","3");
INSERT INTO pass VALUES("183","0","0","136","0","0","s136","$2y$10$jPZJN2MZNIQIVLulEoTxIO0dL5x2FiY1ZupNaV.nkuNubzV2OsP16","3");
INSERT INTO pass VALUES("184","0","0","137","0","0","s137","$2y$10$wY2ipJYGg5lBvf3WS/V3J.LngvQlf56xBqufG7ukyt2VdzSDOhTRO","3");
INSERT INTO pass VALUES("185","0","0","138","0","0","s138","$2y$10$nhzWPQZeKh6Cwv8hoYNmlek79Ov4NlSCEen7TS9ALzjbIPUhiTdFi","3");
INSERT INTO pass VALUES("186","0","0","139","0","0","s139","$2y$10$H91oPZoIgdKAvSLOip3wZ.kDidc8DceQXJ8ra8DSuX/9UrJ6wTvhS","3");
INSERT INTO pass VALUES("187","0","0","140","0","0","s140","$2y$10$VRnzisS80iLFScKjbBob.u8VH.I1gzZNXPV7mrzmAYoai2EfNcNqi","3");
INSERT INTO pass VALUES("188","0","0","141","0","0","s141","$2y$10$eQ3ElnOQ3vF8eGJjmcc3I.uP.lQ/.hOc.NYrjWQhXQrhVaktmR3zm","3");
INSERT INTO pass VALUES("189","0","0","142","0","0","s142","$2y$10$/52lM2j5yMGGm1139p/RXOpTMovRnSCz/KjIfz6sO5fBhU0Za0sBe","3");
INSERT INTO pass VALUES("190","0","0","143","0","0","s143","$2y$10$A1845Yvv086SUgj8zhQNDeQ5S494PJhvJamxoI1OhmsnXg/ivA/om","3");
INSERT INTO pass VALUES("191","0","0","144","0","0","s144","$2y$10$xZzUIrZOgkzO6NFFsWa4PeasmSp27GZwfj2etPCUAqEa1tKGXmSpG","3");
INSERT INTO pass VALUES("192","0","0","145","0","0","s145","$2y$10$VpuQ71wO.6noEzl3ZeVlseTsaNIAEUBW3RDO0oiMB7zKkGWyMGCsO","3");
INSERT INTO pass VALUES("193","0","0","146","0","0","s146","$2y$10$jzQ4vM3t.wgUVJ85LiO23u8iR24/PFraLonxjWr6eFBT5ZQR/YAse","3");
INSERT INTO pass VALUES("194","0","0","147","0","0","s147","$2y$10$t1IGvFt8D1ONDl1wo/pa5O53NFE0NPwPeBUdKJVt0d3SgJVCPjoA.","3");
INSERT INTO pass VALUES("195","0","0","148","0","0","s148","$2y$10$48686/6dwJQmj1OBm9wluehr0ILQkcTNN6CXWI45XIfjocRBOIiwq","3");
INSERT INTO pass VALUES("196","0","0","149","0","0","s149","$2y$10$RFFC./WZKNXF3wu5EuTf/.ZxAf0YbjMQChYBBAOErmMYbR2P4mbXu","3");
INSERT INTO pass VALUES("197","0","0","150","0","0","s150","$2y$10$kyB08Z0P3f8hg5oL9IcEoOVSKA0kLRjePw1pXhk6jaMfigTUiQ1Py","3");
INSERT INTO pass VALUES("198","0","0","151","0","0","s151","$2y$10$nbU7gCHCu82zYznjMX1QH.ybnx9Z2a60edd.upLsAY4tTeLriHfuq","3");
INSERT INTO pass VALUES("199","0","0","152","0","0","s152","$2y$10$94jgLmDeDmPdSgHkWDFFHubcZ9ZOCRWDYVEillyJwaYlQwNnaxBxC","3");
INSERT INTO pass VALUES("200","0","0","153","0","0","s153","$2y$10$O6mPExJyDMyA71IxbmqWW.9dcBaUpzI5uTvWUnYjGkY2aNmXZxiJ.","3");
INSERT INTO pass VALUES("201","0","0","154","0","0","s154","$2y$10$9iP2cfbVFiouG5/gxe8Rjuxim2QPGRChMeBFvv5pOowOPepMcc3NW","3");
INSERT INTO pass VALUES("202","0","0","155","0","0","s155","$2y$10$1yj1HNX3oV5yRXfGx9mbauBNfxZpmdcmMfYjC4.xsz8.Jk0UPS8hW","3");
INSERT INTO pass VALUES("203","0","0","156","0","0","s156","$2y$10$u2G0k0qtVm6sOYc47vmt6uYj30z1j2L0L1cLIh8fAjoa76SP9WTOq","3");
INSERT INTO pass VALUES("204","0","0","157","0","0","s157","$2y$10$w8D91VvklbB6WNymXhdnMej/9xdHcVjFQ14F/8/TMFr.xNoGv.hLe","3");
INSERT INTO pass VALUES("205","0","0","158","0","0","s158","$2y$10$kFvDaSdf4hQ/I8SQj9vaYuT2v4ijHEqjezsOlMz2.N9uTW/q9yHIe","3");
INSERT INTO pass VALUES("206","0","0","159","0","0","s159","$2y$10$Sl4t1IYE/sl0/TThNRQL5e1Z3U3Gxs49ummGBKvl0ARPYO3SYY712","3");
INSERT INTO pass VALUES("207","0","0","160","0","0","s160","$2y$10$FT6slNaVzo/cuiCH44DUG.xhrixzkIE5YUc4tpd4Gt81nIcU1FAoq","3");
INSERT INTO pass VALUES("208","0","0","161","0","0","s161","$2y$10$9HxEZ5vuIzoSBbCLr5u/quwIJ0pHROuWnQazUCaTseHfjxVntXNGW","3");
INSERT INTO pass VALUES("209","0","0","162","0","0","s162","$2y$10$3YGONtuZR1xxomb9C6tpq.T3naMyamJK1FqTLqKIRwRERwRSkBhVu","3");
INSERT INTO pass VALUES("210","0","0","163","0","0","s163","$2y$10$XEUWiEdiOciEccA933Il5O3lB.an4otUkPUCPa5thV1VAD2AgeNFq","3");
INSERT INTO pass VALUES("211","0","0","164","0","0","s164","$2y$10$FMp7QRdP729q3PLAgFIM3OpEhngh6PSRzhJkQGWQUi11UAWWfGEFC","3");
INSERT INTO pass VALUES("212","0","0","165","0","0","s165","$2y$10$jQ1UpE6OWo4.8MCo6IBy.eohkrayawMWL9jtsyJbX8FxfuQJTNsoa","3");
INSERT INTO pass VALUES("213","0","0","166","0","0","s166","$2y$10$1FnV/NGXBPsF95ojqgAkCONKI39dt49yfhyMPzG3.xzbHVD0FwjLq","3");
INSERT INTO pass VALUES("214","0","0","167","0","0","s167","$2y$10$NO1HSbzCDzAys/eitSIKIunvoYNwRR1HIeT8rwqxldkC.TH3TbICS","3");
INSERT INTO pass VALUES("215","0","0","168","0","0","s168","$2y$10$Gs0NN85zuh/aM4HxhirrXeI/gCnsJTef5/JVW1rXbAgze1oquOcSy","3");
INSERT INTO pass VALUES("216","0","0","169","0","0","s169","$2y$10$rIAwxLjy2zr4UBKWOEcihusjJxWy.gQYEaHLerIoq9ddgpG1Iwy1G","3");
INSERT INTO pass VALUES("217","0","0","170","0","0","s170","$2y$10$Jij8Kw9ilP/47AWKHstsNOltyGIMZXXtAT87oAL.NIH4ZezKlKAZW","3");
INSERT INTO pass VALUES("218","0","0","171","0","0","s171","$2y$10$U9Mb7ma.jm5HR27pR1QIKeXADPu1Z4rVp0X5vYaT93py5Fa/p9vUy","3");
INSERT INTO pass VALUES("219","0","0","172","0","0","s172","$2y$10$9wMZOzFy9wd9PAvQGfL.a.pK0DxxhTox5PMY5hRaylOihMfZOONcW","3");
INSERT INTO pass VALUES("220","0","0","173","0","0","s173","$2y$10$o92W7lblQ03Q2yiNcTStnOHfVo6i35B8D3DFN3FB/SLcHiqHobxy2","3");
INSERT INTO pass VALUES("221","0","0","174","0","0","s174","$2y$10$KY2pk4RNhIKFCzFiuA9/4ea8bvPD7GtNz1Kp8563eoQRaHX9/M6HS","3");
INSERT INTO pass VALUES("222","0","0","176","0","0","s176","$2y$10$.EPJyQ05.3OcASknlAMTRuuwJ8wmMhuRN1GRxGr248BajEUEsfQVa","3");
INSERT INTO pass VALUES("223","0","0","177","0","0","s177","$2y$10$RA.R80TqkQNNzlvLOntOp.RhhC1aAcRhYxTvY4Gqh4CB0xiL3g72i","3");
INSERT INTO pass VALUES("224","0","0","178","0","0","s178","$2y$10$2CafOiKseVeq3kx5nSZydehNB8NPxJfbWuIz3hWYMAKlNkwURZS6y","3");
INSERT INTO pass VALUES("225","0","0","179","0","0","s179","$2y$10$3VL/Go6oJMrgQyorY5xqD.pNcBlgj8U2xPiudrxbwlSUVgjxms9Ay","3");
INSERT INTO pass VALUES("226","0","0","180","0","0","s180","$2y$10$sqq368ilMfCmtggP6B/1Gu6/ABA.Gr.odFCCKiwJXGC.EVWBc4mae","3");
INSERT INTO pass VALUES("227","0","0","181","0","0","s181","$2y$10$bK/QvDx/OXeoZ44j5sYVo.a7J663iKtnGEy8Z2P0Tb2YcyCBKPiam","3");
INSERT INTO pass VALUES("228","0","0","182","0","0","s182","$2y$10$Jrgry2PEpDshbfFhiTUS0u07MIk37BxXpSb07HwxDS3KICV/uae5K","3");
INSERT INTO pass VALUES("229","0","0","183","0","0","s183","$2y$10$KiXgZfWssj2q5avY.3lFpO8vMF76SsOMvZ1b0E38GcUawoGqV.AnC","3");
INSERT INTO pass VALUES("230","0","0","184","0","0","s184","$2y$10$fpe/FrgxTtADQbJ8cZa2feJs2zwhrsd0pS60EG0dytwPhh0WtscEO","3");
INSERT INTO pass VALUES("231","0","0","185","0","0","s185","$2y$10$p7ODZ4mM53DJXeUKXD9tVO9dkw2fYDWt7ygg6CRlPiGPg2niGMw7u","3");
INSERT INTO pass VALUES("232","0","0","186","0","0","s186","$2y$10$yRj1ggIoKoWJzzD5XvBN8.5N2D.fi08w22sRGxSYRW9wJtDH/FuWC","3");
INSERT INTO pass VALUES("233","0","0","187","0","0","s187","$2y$10$6aFF3nb2Z/MZMZU7C2mVyOqnMRYh4GXF452kMlu.xv.rkIbJ4m6Tq","3");
INSERT INTO pass VALUES("234","0","0","188","0","0","s188","$2y$10$.qV2k8OmVEXS5NtET56HPOhOKM6usNYmEsX2GQQy20zQlX5n5lFlO","3");
INSERT INTO pass VALUES("235","0","0","189","0","0","s189","$2y$10$okiqfrlN9Rx/4Ea5QO19C.2fiwVcskJ6LCiYpmI.KYfXwJvXJePUa","3");
INSERT INTO pass VALUES("236","0","0","190","0","0","s190","$2y$10$oTVMigFvmfkVd04u6wvmfuNteKT5OfcXfCKDM6HyIeJ3Fi7Qo/Qvy","3");
INSERT INTO pass VALUES("237","0","0","191","0","0","s191","$2y$10$hpT6OSqeo6YfUx2YxvH70eidWc9YZ5SV.NTCM5K.Lm74/JExrhD4S","3");
INSERT INTO pass VALUES("238","0","0","192","0","0","s192","$2y$10$ntYL6Ps4vDz.hY6NlM8IBe1BUDbaYe8SdAF2t5nBuUZ9gwf0ZKvZe","3");
INSERT INTO pass VALUES("239","0","0","193","0","0","s193","$2y$10$DLaD4JPuQuy/Ya08IPrY1uxoOfOy7w2ex/OxqPWigAaExKp1Vs5Ui","3");
INSERT INTO pass VALUES("240","0","0","194","0","0","s194","$2y$10$fMZUXIO/veLeNbHEyKPwde6u0k28o/eYoevAWbb81r1SempJGA1e.","3");
INSERT INTO pass VALUES("241","0","0","195","0","0","s195","$2y$10$d5APswi.K60JZ5o7Tzfzgu3DFFOvagOjQGnKkg7ii5uZJAs/uDzOG","3");
INSERT INTO pass VALUES("242","0","0","196","0","0","s196","$2y$10$aUWlpLtLk81zecQ1xOWPBe8dj7KsASw4fdEaNkblKfUE8Ra3Sx2TC","3");
INSERT INTO pass VALUES("243","0","0","197","0","0","s197","$2y$10$/ba7xLhftDngNTxrPqThYeBXNJWWzDhLvNElYVgB6wIUR.rq6Rf9i","3");
INSERT INTO pass VALUES("244","0","0","198","0","0","s198","$2y$10$CwoumvNpnve3MVVLxP6tgudpXrKhk8PniJ7gmSV5e86fpM.7RlmJy","3");
INSERT INTO pass VALUES("245","0","0","199","0","0","s199","$2y$10$707URZwRyR1.Cxro70h5ROvgAl/QgNrhkZFuptWCFPvdtYUTIlTo2","3");
INSERT INTO pass VALUES("246","0","0","200","0","0","s200","$2y$10$5PwbKgAX1N.Krq1Sb0zztejESU10qWldUc7kKkDVaILztG1jhBegW","3");
INSERT INTO pass VALUES("247","0","0","201","0","0","s201","$2y$10$44WpLTphTdi/fhduuUhA9eEeMzCo7zxlhom13vDkH/Xs6m7r0LtdC","3");
INSERT INTO pass VALUES("248","0","0","202","0","0","s202","$2y$10$SNTm1crQl0GRl79kYZM4le0jdTx0l/ri/gIg2HKbAK8BiQDjsn/Eq","3");
INSERT INTO pass VALUES("249","0","0","203","0","0","s203","$2y$10$L17Qft65H9qAwZgi1ERZeeDdOzUmFYmfWcxzTJUx3fGkKLSt9DJOW","3");
INSERT INTO pass VALUES("250","0","0","204","0","0","s204","$2y$10$brLqqT.VCYds/kmin2K//eu8pWRe3ziJQkYmNnVX3c4xI59.sx10a","3");
INSERT INTO pass VALUES("251","0","0","207","0","0","s207","$2y$10$XOTfdstznEIGufXz9fb/DOl1.BNMnuPs0khSiPL.oDwTWVfTncVfG","3");
INSERT INTO pass VALUES("252","0","0","208","0","0","s208","$2y$10$Md4wDv8WhF3snEPx3.0ugeShNh9Nw71Ih4KUGooqiFvvko3BrARuO","3");
INSERT INTO pass VALUES("253","0","0","209","0","0","s209","$2y$10$rY3VbViXZZCjkkPrz9qoBuM0ehemqoVaT/mwUEJNyyGMFXaZnT9zq","3");
INSERT INTO pass VALUES("254","0","0","210","0","0","s210","$2y$10$CoH0v.Q19H.lpgNUJ7TpkeIWXC1UN9EWpjtS/Bzfp66phPEQGlS/a","3");
INSERT INTO pass VALUES("255","0","0","211","0","0","s211","$2y$10$Hz6IzgalmMObQDQ726EpueLYRFvV72NE4RE6KrXYC2IHqZqTseLOi","3");
INSERT INTO pass VALUES("256","0","0","212","0","0","s212","$2y$10$yUDstj8k0fSz6BnALelIBO/HiehLtqqoO/BoH4msF0OXZsOE/ktv2","3");
INSERT INTO pass VALUES("257","0","0","213","0","0","s213","$2y$10$ucBU7Yb0n/EbqExrZHvYU.Mgz22ub06IxpYxMTi2ept4Q6HkOE2SG","3");
INSERT INTO pass VALUES("258","0","0","214","0","0","s214","$2y$10$VgGCjD5Ey1PWmhpHgqK6Zuc9MMkUJ9iCt7v7uWxAxZjDTfDlPPVYa","3");
INSERT INTO pass VALUES("259","0","0","215","0","0","s215","$2y$10$quAxbXVTzeiEcK7VHexJjOYJRfuOe8lz8gEIslqWLGJ2QIcvowcNq","3");
INSERT INTO pass VALUES("260","0","0","216","0","0","s216","$2y$10$Q8Q337INw8lNsRsgtpWoR.0xqF3HQseccoEdAVcFFu4rhjPdbpht.","3");
INSERT INTO pass VALUES("261","0","0","217","0","0","s217","$2y$10$mDR4.bMD5A6YSgh3o1RCL.kdcJmGWLkGiyFy7q4V20L6VYNy9HAB2","3");
INSERT INTO pass VALUES("262","0","0","218","0","0","s218","$2y$10$X4PGJ4SVN/vj21nLQsBk.e96wSckrVKwKYLlyC5EH4pTmqPHhA3Nm","3");
INSERT INTO pass VALUES("263","0","0","219","0","0","s219","$2y$10$yNBgFrLc0zqUUBBsiA6saer0IRM1xBVZ/7sKCv/biadQ2/MWu4M0S","3");
INSERT INTO pass VALUES("264","0","0","220","0","0","s220","$2y$10$oqDbQjTXMdGr6Q4OgZdJx.dGcXvaOpuXJkKRs5HJUDNJ.2TxqkRea","3");
INSERT INTO pass VALUES("265","0","0","221","0","0","s221","$2y$10$GAUm7dkE/mkZtcHZXWVXau4snZ99iUONhfeXPpKP3Vr54Ti6wQtQ6","3");
INSERT INTO pass VALUES("266","0","0","222","0","0","s222","$2y$10$5rNl0tIwyvjmyCK1wrtJjO.MvmvZpjhPRRo.une1ePAyuJdaGVVwq","3");
INSERT INTO pass VALUES("267","0","0","223","0","0","s223","$2y$10$4BCgy.USbW27e5.MdbVFsOUEWOg7YAKhAxtQsutC.yThsw2vtiA1W","3");
INSERT INTO pass VALUES("268","0","0","224","0","0","s224","$2y$10$DU3CQ7ELApc6Fooa.h270OPcDSzMTAPot.lb3dVuIgUWgO7HwmnO2","3");
INSERT INTO pass VALUES("269","0","0","225","0","0","s225","$2y$10$Zg1ajAFLf2icrZ5.kyOrzuCLpZFYZd4XLdX/IhKps0HoulwA/PAe.","3");
INSERT INTO pass VALUES("270","0","0","226","0","0","s226","$2y$10$qvBCugRa7LG5EOI5Kem0Y.gt04H.pMEXLTJmmeqEL7CItc8peTlk.","3");
INSERT INTO pass VALUES("271","0","0","227","0","0","s227","$2y$10$JbXFrW2sI9q7olIrwDShxOVDK2PPW6MyJTaL9DgEzIDjBfN6gvcUK","3");
INSERT INTO pass VALUES("272","0","0","228","0","0","s228","$2y$10$OVIa76JyVgvm/s1oc7io2OeVDZrJHOKawOD1UUMhIj07xso8Brpyu","3");
INSERT INTO pass VALUES("273","0","0","229","0","0","s229","$2y$10$nhqtR8Mvl1KQhkCApgTsn.jS1Ch4PpcKqAHLublZFHpdJM2ndQZwe","3");
INSERT INTO pass VALUES("274","0","0","230","0","0","s230","$2y$10$J2Vjj88uDMg1pYLUS9wt0.yQl2grkrv1p6QJVykO60iYCvuFgnk12","3");
INSERT INTO pass VALUES("275","0","0","231","0","0","s231","$2y$10$xxX.Km7j/T7nXXJpv5b1xekx/mJQBj/iMfa/TC8QS1vqWIKWconyK","3");
INSERT INTO pass VALUES("276","0","0","232","0","0","s232","$2y$10$YnzGPN68c/uvV5/pH2Ezpu2ElsSA67cUAv41sb0.kJ0BmbxMSqnJ2","3");
INSERT INTO pass VALUES("277","0","0","233","0","0","s233","$2y$10$X0.NwMlUVY3GmnfRJ8gkreFiZ/J46Ys1Jn9Whaa6YxdSDAOSgIV8C","3");
INSERT INTO pass VALUES("278","0","1","0","0","0","k1","$2y$10$LOaFE3kzOTBQ63yPHRFeD.fAADQdmXvC1Ks6QauYHvRiQ.pUveMCG","0");



CREATE TABLE `pelajaran` (
  `id_pelajaran` int(11) NOT NULL AUTO_INCREMENT,
  `pelajaran` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pelajaran`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

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
INSERT INTO pelajaran VALUES("33","Sejarah International");
INSERT INTO pelajaran VALUES("34","TIK");



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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO piket VALUES("1","Senin","Dra. Marcella Rien Hartati, M.A","Paijan, S.Pd","Dra. Anna Woro Ciptaningrum","Drs. Suhirno. MBA");
INSERT INTO piket VALUES("2","Selasa","Dra. Hj. Isti Dwi Narmiyati ","Hj. Muslimah, S.Pd.","Nur Asih Himawati, S.Pd.","Drs. Suhirno. MBA");
INSERT INTO piket VALUES("3","Jumat","Devy Estu Anna Putri, ST, M.Pd.","Drs. Padmana","Dra. Lestari Nur Yuniati ","Drs. Suhirno. MBA");
INSERT INTO piket VALUES("4","Rabu","Hj. Nanik Rahayu, S.Pd. M.Pd.","Didik Purwaka, S.Pd, M.Pd.","Drs. Untung","Drs. Suhirno. MBA");
INSERT INTO piket VALUES("5","Kamis","Dra. Susilowati","Noer Indahyati, S.Pd, M.Pd, B.I.","Dra. Eko Sulistyowati, M.Pd.","Drs. Suhirno. MBA");



CREATE TABLE `pilihan` (
  `id_pilihan` int(11) NOT NULL AUTO_INCREMENT,
  `nis` int(11) NOT NULL,
  `pilih` longtext NOT NULL,
  PRIMARY KEY (`id_pilihan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `nis` varchar(5) NOT NULL,
  `jk` varchar(9) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` text NOT NULL,
  `agama` varchar(20) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `line` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` varchar(5) NOT NULL,
  `kal` varchar(20) NOT NULL,
  `info` varchar(20) NOT NULL,
  `kls` varchar(20) NOT NULL,
  `klsb` varchar(20) NOT NULL,
  `klsc` varchar(20) NOT NULL,
  `klsd` varchar(20) NOT NULL,
  `klsx` varchar(20) NOT NULL,
  `klsn` varchar(5) NOT NULL,
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
  `switch` varchar(3) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;

INSERT INTO siswa VALUES("3","AMBROCIUS JOSE VISTO KRISTUPA","s3","13843","Laki-laki","","0000-00-00","","Islam","","","","5cfe30f0b7247.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("4","ANASTASIA LAURNT","s4","13844","Perempuan","","0000-00-00","","Islam","","","","5cfe32cae44a6.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("6","ANDREAS KURNIA WIRA WASKITA","s6","13846","Laki-laki","","0000-00-00","","","","","","5cfe33d41227e.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("8","ANDREAS RYAN CAHYO KARTIKO","s8","13847","Laki-laki","","0000-00-00","","","","","","5cfe3500ab81c.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("9","BAGUS RIZKY RAHARTANTYO","s9","13848","Laki-laki","","0000-00-00","","","","","","5cfe569c81f3b.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("10","BONAVENTURA RIKO KUMARA DATTA","s10","13849","Laki-laki","","0000-00-00","","","","","","5cfe56b694a78.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("12","CALLISTA MEDINA","s12","13850","Perempuan","","0000-00-00","","","","","","5cfe56cdbd5fc.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("13","CHYNTYA NUR PUTRI JASMINE","s13","13851","Perempuan","","0000-00-00","","","","","","5cfe56e449fe4.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("14","ADDIEN MUTIARA AGMA","s14","13878","Perempuan","","0000-00-00","","","","","","5cfe5718230f1.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("15"," ADELLA SAHDASALMA ALMIRA","s15","13879","Perempuan","","0000-00-00","","","","","","5cfe572980c37.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("16"," ADINDA WHENY KUMALASARI","s16","13880","Perempuan","","0000-00-00","","","","","","5cfe573bd338e.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("17","ADRIAN SYAH ABIDIN","s17","13881","Laki-laki","","0000-00-00","","","","","","5cfe5752e33c4.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("18","AINAYYA NUR AZZAHRA","s18","13882","Perempuan","","0000-00-00","","","","","","5cfe5767a328c.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("19","AJENG ANINDITA MULIAPRASANTI","s19","13883","Perempuan","","0000-00-00","","","","","","5cfe577d9a4f9.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("20","AKILA KIRANA RATRI","s20","13884","Perempuan","","0000-00-00","","","","","","5cfe57974f448.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("21","ANANG KURNIA HIDAYAT","s21","13885","Laki-laki","","0000-00-00","","","","","","5cfe57acf22e7.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("22","ANASHATIERRA MARITZAIVA","s22","13886","Perempuan","","0000-00-00","","","","","","5cfe57c579700.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("23","ANNISA PRAJNA FAIRYANTO","s23","13887","Perempuan","","0000-00-00","","","","","","5cfe57dc9204d.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("24","ABHISTA FARREL RAMADHIANO","s24","13912","Laki-laki","","0000-00-00","","","","","","5cfe599c2854b.jpg","Aktif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("25","ADITYA AHMAD RAFI","s25","13913","Laki-laki","","0000-00-00","","Islam","","","","5cfe59b5ebf11.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("27","ALFIAN ARBIANTA","s27","13914","Laki-laki","","0000-00-00","","","","","","5cfe59c755275.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("28","ALYA RAMADIANISA","s28","13915","Perempuan","","0000-00-00","","Islam","","","","5cfe59de8a32e.jpg","Aktif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("29","ANNISA ARNI DEWI","s29","13916","Perempuan","","0000-00-00","","","","","","5cfe59f23b85d.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("31","AGNES ANGELINA PARAMITA","s31","13947","Perempuan","","0000-00-00","","","","","","5cfe5a15edd0a.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("32","ALIFFA VIDYA SYAHFITRI","s32","13948","Perempuan","","0000-00-00","","Islam","","","","5cfe5a28c0691.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("33","CRISPINUS DEVICO PAKSI MANTARA","s33","13852","Laki-laki","","0000-00-00","","","","","","5cfe5afb3aea0.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("34","ELFIRA ROSA ADINDA","s34","13853","","","0000-00-00","","","","","","5cfe5b0d1e2c6.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("35","EMMANUELLE ADELIA MAHARANI","s35","13854","Laki-laki","","0000-00-00","","","","","","5cfe5b2a08eb8.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("36","FAUSTINA DIAN CAHYANINGRUM","s36","13855","Perempuan","","0000-00-00","","","","","","5cfe5b3db61d7.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("37","GREGORIUS PURUSATAMA RITANG PINANDHITO","s37","13856","Laki-laki","","0000-00-00","","","","","","5cfe5b52eef33.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("39","RAIHAN PUTRI IMANDA","s39","13939","Perempuan","Banyuwangi","2002-09-28","-","Islam","-","-","-","5cfe61e355fab.jpg","Aktif","outline-success","outline-success","XI IPA 3/01-06-2018","X IPA 3",""," ","","done","outline-success","outline-success","outline-success","outline-success","outline-success","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("40","ALOYSIA WANDA CINTYA PRAMUSITA","s40","13842","Perempuan","","0000-00-00","","Kristen","","","","5cfe5b64df07c.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","<p>naik</p>
");
INSERT INTO siswa VALUES("42","ANNISA GISSENA","s42","13917","Perempuan","-","2018-09-03","-","Islam","-","-","-","5cfe61f41b78f.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("43","ANRI PUTRI MALAFATI","s43","13918","Perempuan","-","2018-09-03","-","Islam","-","-","-","5cfe6203159d5.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("44","ARVIN HASANI RAHARJO","s44","13919","Laki-laki","-","2018-09-05","-","Islam","-","-","-","5cfe62148ae70.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("45","BENING PAKERTI PUTIH SUCI","s45","13920","Perempuan","=","2018-09-01","=","Islam","=","=","=","5cfe622c05e2c.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("46","BHRE PADANTYA NOOR PUTRANDA","s46","13921","Laki-laki","-","2018-09-01","-","Islam","-","-","-","5cfe623cd3441.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("47","BRYAN AMIRUL HUSNA","s47","13922","Laki-laki","-","2018-09-01","-","Islam","-","-","-","5cfe624b54473.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("48","EMBUN KINANTHI BESTARIE","s48","13923","Perempuan","-","2018-09-01","-","Islam","-","-","-","5cfe625d6cb50.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("49","FAIZ RAFLI RAMDHANI","s49","13924","Laki-laki","-","2018-09-01","-","Islam","-","-","-","5cfe62879ecee.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("50","FAZADIARA DEIGRATIE SOPHIA","s50","13925","Perempuan","","0000-00-00","","Islam","","","","5cfe629cba1b4.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("51","FINESSA MEUTIA KAMILA","s51","13926","Perempuan","","0000-00-00","","Islam","","","","5cfe62af8555f.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("52","HAFIDA DWI NURAINI","s52","13927","Perempuan","","0000-00-00","","Islam","","","","5cfe62c1b7d5a.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("53","HERINA AZIZAH THAWAFIA","s53","13928","Perempuan","","0000-00-00","","Islam","","","","5cfe62d2916a7.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("54","INDRA AQIL ADELIO","s54","13929","Laki-laki","","0000-00-00","","Islam","","","","5cfe62e53f4ca.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("55","KADEK DHEA AMANDA","s55","13930","Perempuan","","0000-00-00","","","","","","5cfe6305217e0.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("56","MUHAMMAD RAYNOR SINATRYA SATWIKA","s56","13931","Laki-laki","","0000-00-00","","Islam","","","","5cfe633348ddd.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("57","MUHAMMAD WIDYA HUDIYA WIJAYA","s57","13932","Laki-laki","","0000-00-00","","Islam","","","","5cfe6345c913d.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("59","NADYA KHAILIFA","s59","13934","Perempuan","","0000-00-00","","","","","","5cfe6359de7ce.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("60","NAZIL NASRUDDIN ASSHIDDQI","s60","13935","Laki-laki","","0000-00-00","","","","","","5cfe63701fd47.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("61","PUTRI AZZAHRA RAHMATULLAH","s61","13936","Perempuan","","0000-00-00","","","","","","5cfe6389c461d.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("62","RADEN RARA ROSITA NURUL ARYANI","s62","13937","Perempuan","","0000-00-00","","","","","","5cfe639de131a.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("63","RAFLY YOGANATHA","s63","13938","Laki-laki","","0000-00-00","","","","","","5cfe63b234743.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("64","RAMADHAN TRI NURCAHYO","s64","13940","Laki-laki","","0000-00-00","","Islam","","","","5cfe63c4d2dde.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("65","RATU AQILAH INTAN CARISSA","s65","13941","Perempuan","","0000-00-00","","","","","","5cfe63da8a9e8.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("66","SALSA BILA DIVA MUTIARA","s66","13943","Perempuan","","0000-00-00","","Islam","","","","5cfe63ea6f3fc.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("67","SEFRINA ASKHANISSA PRAMESTI","s67","13944","Perempuan","","0000-00-00","","Islam","","","","5cfe64001b591.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("68","VINKA PUTRI CARISSA","s68","13945","Perempuan","","0000-00-00","","Islam","","","","5cfe64156b99e.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("69","ZABINA ASFAHANI","s69","13946","Perempuan","","0000-00-00","","Islam","","","","5cfe64398c0d0.jpg","Aktif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("70","IRENE WIDYANINGRUM","s70","13857","Perempuan","","0000-00-00","","","","","","5cfe5b84d3c36.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("71","RIF AT ZUHRAH HANIFAH HANUUN","s71","13942","Perempuan","","0000-00-00","","Islam","","","","5cfe646275db8.jpg","Pasif","","","XI IPA 3/01-06-2018","X IPA 3","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("72","MAHARANI ANINDIRA PUTRI","s72","13858","Perempuan","","0000-00-00","","","","","","5cfe5b9c882c8.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("73","MARCEL","s73","13859","Laki-laki","","0000-00-00","","","","","","5cfe5bb1f23bb.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("74","MARCELLINUS DAVINCI PRAMAVINTO","s74","13860","Laki-laki","","0000-00-00","","","","","","5cfe5bc942aed.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("75","MARIA BONITA CEREBRINA HUMANI","s75","13861","Perempuan","","0000-00-00","","","","","","5cfe5be2db494.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("76","MIKHAEL HEDY PRASETYA GURITNO","s76","13862","Laki-laki","","0000-00-00","","","","","","5cfe5bf923e86.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("77","NAOMI LARASATI","s77","13863","Perempuan","","0000-00-00","","","","","","5cfe5c0d97ba7.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("78","NISMARA CHANDRA HERDIPUTRA","s78","13864","Laki-laki","","0000-00-00","","","","","","5cfe5c24ebbd0.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("79","NUR WULAN FEBRIANI","s79","13865","Perempuan","","0000-00-00","","","","","","5cfe5c368e6eb.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("80","PARAFOILA CLEMENTINE ELITANINGRUM","s80","13866","Perempuan","","0000-00-00","","","","","","5cfe5cdf2f866.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("81","QATRUNNADA SALSABILA","s81","13867","Perempuan","","0000-00-00","","","","","","5cfe5d2884eb5.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("82","RAFAELA SURYADIVA INDIRA MAHARANI","s82","13868","Perempuan","","0000-00-00","","Islam","","","","5cfe5d418252a.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("83","RANEGESWA RYSZARDIN RAYA RASYADAN","s83","13869","Perempuan","","0000-00-00","","","","","","5cfe5d81e6c8e.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("84","REGINA ADNYANA NARESWARI","s84","13870","Perempuan","","0000-00-00","","","","","","5cfe5da60f38b.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("85","RENATA ANINDYA EKAPUTRI KURNIAWAN","s85","13871","Perempuan","","0000-00-00","","","","","","5cfe5dbdcf999.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("86","REVANA SHEBA PAVITA","s86","13872","Perempuan","","0000-00-00","","","","","","5cfe5dd86b1ff.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("87","SOPHIE ROMZIA LATIFI","s87","13873","Perempuan","","0000-00-00","","","","","","5cfe5deb7c24f.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("88","TIARA AGMA VANYA","s88","13874","Perempuan","","0000-00-00","","","","","","5cfe5dfe027c6.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("89","VINCENTIA DYAH SEKAR M","s89","13875","Perempuan","","0000-00-00","","","","","","5cfe5e1110aec.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("90","VIVIAN YANG","s90","13876","Perempuan","","0000-00-00","","","","","","5cfe5e242bf92.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("91","YOHANA BUNGA CAHYANINGTYAS","s91","13877","Perempuan","","0000-00-00","","Islam","","","","5cfe5e409278a.jpg","Pasif","","","XI IPA 1/01-06-2018","X IPA 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("92","AXEL XAVERIUS TAMTAMA NAPITUPULU","s92","13888","Laki-laki","","0000-00-00","","","","","","5cfe5f86a9b25.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("93","BHAGAVAT BAHISTHADATTA","s93","13889","Laki-laki","","0000-00-00","","","","","","5cfe5f95a0f15.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("94","BIRRUL QISTY MUTMAINNAH NAZARA","s94","13890","Perempuan","","0000-00-00","","","","","","5cfe5fb0ea190.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("95","DAFFA MUHAMMAD ROMERO","s95","13891","Laki-laki","","0000-00-00","","","","","","5cfe5fd722a64.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("96","DHIAKSA ADHI ANANDA","s96","13892","Laki-laki","","0000-00-00","","","","","","5cfe5fe81566e.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("97","FITRIANA AULIA SABILA EKA PUTRI","s97","13893","Perempuan","","0000-00-00","","","","","","5cfe5fff51cb7.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("98","HAMMAAM MUHAMMAD IHSAN","s98","13894","Laki-laki","","0000-00-00","","","","","","5cfe6015ccf2f.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("99","MAXIMOS ANTARES GODELIVA","s99","13895","Laki-laki","","0000-00-00","","","","","","5cfe602736b2a.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("100","MELISA CHRISTINE PRAYOGO","s100","13896","Perempuan","","0000-00-00","","","","","","5cfe603e2728f.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("101","MICHAEL WIJAYA SUTOWO","s101","13897","Laki-laki","","0000-00-00","","","","","","5cfe6050d7c5b.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("102","MOCHAMMAD NOVALDY PRATAMA HAKIM","s102","13898","Laki-laki","","0000-00-00","","","","","","5cfe607ce248e.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("103","NAILY NUJKHA","s103","13899","Perempuan","","0000-00-00","","","","","","5cfe60a209051.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("104","NISRINA NURHAMIDA","s104","13900","Perempuan","","0000-00-00","","","","","","5cfe60bfbdc14.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("105","OKI AFANA ASHARI","s105","13901","Perempuan","","0000-00-00","","","","","","5cfe60ddb57de.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("106","RABILA NURSANI","s106","13902","Perempuan","","0000-00-00","","","","","","5cfe60f1cfcc9.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("107","RADEN RARA NATASYA NURPUTRI ADIYANA","s107","13903","Perempuan","","0000-00-00","","","","","","5cfe610c8ebc0.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("108","RAFI AKBAR KHARISMA","s108","13904","Laki-laki","","0000-00-00","","","","","","5cfe612a30f2c.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("109","RAKHA HADRIAN","s109","13905","Laki-laki","","0000-00-00","","","","","","5cfe613e5f341.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("110","REGITA DESTYA PUTRI","s110","13906","Perempuan","","0000-00-00","","","","","","5cfe6152893fa.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("111","REINHART TIMOTHY ANTONIO SIREGAR","s111","13907","Laki-laki","","0000-00-00","","","","","","5cfe6161dd05b.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("112","SADHAM DUTA PAMUNGKAS","s112","13908","Laki-laki","","0000-00-00","","","","","","5cfe617376a98.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("113","SYAFIRA FITRI ANNISA","s113","13909","Perempuan","","0000-00-00","","","","","","5cfe6183991d4.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("114","WAHYU SETYANINGSIH","s114","13910","Perempuan","","0000-00-00","","Islam","","","","5cfe6193d5a8f.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("115","WIMALA AZ-ZAHRA WIJAYADI","s115","13911","Perempuan","","0000-00-00","","","","","","5cfe61a85b9a8.jpg","Pasif","","","XI IPA 2/01-06-2018","X IPA 2","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("116","ALYA TARA ANJANI","s116","13949","Perempuan","","0000-00-00","","","13949","","","5cfedc14393d6.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("117","ARINA DINAR NURFADILLA SASTRANEGARA","s117","13950","Perempuan","","0000-00-00","","","","","","5cfedc964641c.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("118","ARLEN PAMUDYA ARUNATA","s118","13951","Laki-laki","","0000-00-00","","","","","","5cfedca6c2f28.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("119","AYLLA INDRARANI RAMADHANTI","s119","13952","Perempuan","","0000-00-00","","","","","","5cfedccb70939.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("120","AZIIZAH SYAFIRA ARKANI","s120","13953","Perempuan","","0000-00-00","","","","","","5cfedcddef2f2.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("121","AZIZUL HAKIM","s121","13954","Laki-laki","","0000-00-00","","","","","","5cfedcf17cb15.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("122","DANDY KUNCORO MUKTI","s122","13955","Laki-laki","","0000-00-00","","","","","","5cfedd046adc2.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("123","DANENDRA GILANG RAHARJO","s123","13956","Laki-laki","","0000-00-00","","","","","","5cfedd1780cd7.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("124","DESTITA DANIVENA","s124","13957","Perempuan","","0000-00-00","","","","","","5cfedd29bcc5b.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("125","FAKIH SASMITO","s125","13958","Laki-laki","","0000-00-00","","","","","","5cfedd3ed57a7.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("126","IRA MEIDIANA PUTRI","s126","13959","Perempuan","","0000-00-00","","","","","","5cfedd510dc7b.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("127","JOHANITA SARI DEWI","s127","13960","Perempuan","","0000-00-00","","","","","","5cfedd60aba2e.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("128","JOYVANKA DEWA SAPUTRA","s128","13961","Laki-laki","","0000-00-00","","","","","","5cfedd72ef6f9.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("129","LARASGUNITA","s129","13962","Perempuan","","0000-00-00","","","","","","5cfedd8f6a634.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("130","LAYUNG REZY PRAMESTI","s130","13963","Perempuan","","0000-00-00","","Islam","","","","5cfeddb6710c1.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("131","LUISA ZIESTA DIAN APSARI","s131","13964","Perempuan","","0000-00-00","","","","","","5cfeddc7d5fc5.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("132","MARTINUS ADITYA NUSA GUMILANG","s132","13965","Laki-laki","","0000-00-00","","","","","","5cfedde2d95a6.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("133","MUTHIA RAIHANA PRASETYO","s133","13966","Perempuan","","0000-00-00","","","","","","5cfeddf4e6949.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("134","NABILA YASMIN","s134","13967","Perempuan","","0000-00-00","","","","","","5cfede02c59fc.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("135","NAURA HIDAYAT","s135","13968","Perempuan","","0000-00-00","","","","","","5cfede1473e17.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("136","NICHOLAS ALDEN ARDIANTO","s136","13969","Laki-laki","","0000-00-00","","","","","","5cfede231ef54.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("137","NICOLAS HARIO CHRISETYAWAN","s137","13970","Laki-laki","","0000-00-00","","","","","","5cfede3188233.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("138","RAHIMIMA DYAH NUR AISYAH","s138","13971","Perempuan","","0000-00-00","","","","","","5cfede40d1e50.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("139","RAIHANNISA RAFAIDA ARIEF","s139","13972","Perempuan","","0000-00-00","","","","","","5cfede533cff4.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("140","RIZKY INTAN NURLITA","s140","13973","Perempuan","","0000-00-00","","Islam","","","","5cfede641ee4a.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("141","SATRIA HANDAR PRATISTA","s141","13974","Laki-laki","","0000-00-00","","","","","","5cfede765ec06.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("142","STEVANUS RICHARD WICAKSONO HARJANTO","s142","13975","Laki-laki","","0000-00-00","","","","","","5cfede92da41c.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("143","TRESSYA SHAFA AMARA AHADI","s143","13976","Perempuan","","0000-00-00","","","","","","5cfedea5b1d20.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("144","VALERIANUS SAMBA SEPTYADI","s144","13977","Laki-laki","","0000-00-00","","","","","","5cfedeb64a95a.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("145","VINCENTIA INEZ NATHANIA","s145","13978","Perempuan","","0000-00-00","","","","","","5cfedec587331.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("146","YOSEF ADI SULISTYO","s146","13979","Laki-laki","","0000-00-00","","","","","","5cfeded4b4e6d.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("147","YUMNA NUR AINI","s147","13980","Perempuan","","0000-00-00","","","","","","5cfedee3d129a.jpg","Pasif","","","XI IPA 4/01-06-2018","X IPA 4","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("148","ABRIELE BROMOZENTIA QUDSI","s148","13981","Laki-laki","","0000-00-00","","","","","","5cfedf5556455.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("149","AKBAR SIGIT PUTRA","s149","13982","Laki-laki","","0000-00-00","","","","","","5cfedf64de8ee.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("150","AMARAPALLEVI","s150","13983","Perempuan","","0000-00-00","","","","","","5cfedf7446a8e.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("151","ARMEL NOVELIA PRADIPTA","s151","13984","Perempuan","","0000-00-00","","","","","","5cfedf97a714e.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("152","ATHALLAH NAUFAL HADI","s152","13985","Laki-laki","","0000-00-00","","","","","","5cfedfa8276cb.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("153","BERNICA ARIELA JASMINE","s153","13986","Perempuan","","0000-00-00","","","","","","5cfedfbed9da3.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("154","CALISTA SUCI NUGRAHANI","s154","13987","Perempuan","","0000-00-00","","","","","","5cfedfce61a80.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("155","DEVA SETYA AJENG KARTIKA","s155","13988","Perempuan","","0000-00-00","","","","","","5cfedfdf8f471.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("156","ERISA PUTRI CAHYANI","s156","13989","Perempuan","","0000-00-00","","","","","","5cfedfee94ec0.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("157","FAKHRI AQIL HUSAIN","s157","13990","Laki-laki","","0000-00-00","","","","","","5cfedfffca117.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("158","FARREL EDGARRAFI PRIADY","s158","13991","Laki-laki","","0000-00-00","","","","","","5cfee011cf847.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("159","FIKRI MUHAMMAD AKBAR","s159","13992","Laki-laki","","0000-00-00","","","","","","5cfee025bd9d8.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("160","GALIH DZAKY FADHLURROHMAN","s160","13993","Laki-laki","","0000-00-00","","","","","","5cfee039a952d.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("161","GRACIELLA AMARILIZA STEFANI YOPI","s161","13994","Perempuan","","0000-00-00","","","","","","5cfee04db5294.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("162","JOVAN PRASETYA AJI","s162","13995","Laki-laki","","0000-00-00","","","","","","5cfee05c14b76.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("163","KHANSA SHAFHAH RAMADHANI","s163","13996","Perempuan","","0000-00-00","","","","","","5cfee06b03e9a.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("164","KURNIAWAN NUR FAISA","s164","13997","Laki-laki","","0000-00-00","","","","","","5cfee078b8493.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("165","MAHARANI ARIELA PUTRI","s165","13998","Perempuan","","0000-00-00","","","","","","5cfee08c12799.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("166","MANDA SHAKIRA PARAMASTRI","s166","13999","Perempuan","","0000-00-00","","","","","","5cfee0a230d09.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("167","MUHAMMAD AQSHAL HIMAM","s167","14000","Laki-laki","","0000-00-00","","","","","","5cfee0b360ae1.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("168","MUHAMMAD RAVIKASYAH SETIAWAN","s168","14002","Laki-laki","","0000-00-00","","","","","","5cfee0cd3f99c.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("169","NAFISA ANDREINA PUSPA","s169","14003","Perempuan","","0000-00-00","","","","","","5cfee0df36eb7.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("170","RADEN RARA NABILA RAHMA SETIAWATI","s170","14004","Perempuan","","0000-00-00","","","","","","5cfee0f08258a.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("171","RANIA BALQIS ILYASA","s171","14005","Perempuan","","0000-00-00","","","","","","5cfee106312ce.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("172","RASENDRIYO SOTYA WISESO","s172","14006","Laki-laki","","0000-00-00","","","","","","5cfee11bc3cb9.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("173","MUHAMMAD FU AD DHIYA  ULHAQ","s173","14001","Laki-laki","","0000-00-00","","","","","","5cfee12cd81d1.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("174","REYNARD HANIF GHUFRON","s174","14007","Laki-laki","","0000-00-00","","","","","","5cfee14c46218.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("176","SYIFA ANNISA FATONI","s176","14009","Perempuan","","0000-00-00","","","","","","5cfee15b933f6.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("177","SYIFA ANNISA FITRI","s177","14010","Perempuan","","0000-00-00","","","","","","5cfee17290f83.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("178","TARIMA RADHIYA IBRAHIM","s178","14011","Perempuan","","0000-00-00","","","","","","5cfee1877da50.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("179","WANDA ODELYA KUSUMA ATHA","s179","14012","Perempuan","","0000-00-00","","","","","","5cfee19670b69.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("180","WIWEKA YOGA SADEWA","s180","14013","Laki-laki","","0000-00-00","","","","","","5cfee1afbc8fb.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("181","YOHANA MAURENNETA","s181","14014","Perempuan","","0000-00-00","","","","","","5cfee1c47a14c.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("182","ZULKHY ERYANZA","s182","14015","Laki-laki","","0000-00-00","","","","","","5cfee1d490781.jpg","Pasif","","","XI IPA 5/01-06-2018","X IPA 5","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("183","ADAM YOGISYAH PUTRA","s183","14016","Laki-laki","","0000-00-00","","","","","","5cfee20db2546.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("184","AIDA PUTRI KARIMA","s184","14017","Perempuan","","0000-00-00","","","","","","5cfee21ae19aa.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("185","ALIFAH DINDA RETHYANO PUTRI","s185","14018","Perempuan","","0000-00-00","","","","","","5cfee22b19473.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("186","ALYAA PRAMESTI SUWARNO","s186","14019","Perempuan","","0000-00-00","","","","","","5cfee236e121e.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("187","ANGGITO SATYA RAHARJO","s187","14020","Laki-laki","","0000-00-00","","","","","","5cfee24854518.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("188","ANNISA RAIHANA CAHYA PUTRI","s188","14021","Perempuan","","0000-00-00","","","","","","5cfee255b4b0e.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("189","ARKA LILANG WIRATMA","s189","14022","Laki-laki","","0000-00-00","","","","","","5cfee26333a36.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("190","BTARI FATMA ROSA","s190","14023","Perempuan","","0000-00-00","","","","","","5cfee2712c4f3.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("191","COSTANZO FERRO CHRISTYUDHANA","s191","14024","Laki-laki","","0000-00-00","","","","","","5cfee27e3cdec.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("192","DANIELLA AKIRA NOVENA ADI","s192","14025","Perempuan","","0000-00-00","","","","","","5cfee28c91fdb.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("193","DARIN ZAHRA SALSABILA","s193","14026","Perempuan","","0000-00-00","","","","","","5cfee29cc498e.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("194","DISMA RAHADATUL A ISY","s194","14027","Perempuan","","0000-00-00","","","","","","5cfee2aabaad3.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("195","FAKHRISHA AULIYA PUTRI","s195","14028","Perempuan","","0000-00-00","","","","","","5cfee2b919002.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("196","GABRIEL SIMON VITO PRIYANANDAIVA","s196","14029","Laki-laki","","0000-00-00","","","","","","5cfee2ca1876b.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("197","IRENE MAURA CARMELIA","s197","14030","Perempuan","","0000-00-00","","","","","","5cfee2da1148f.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("198","KARLINA NUSAWANINDYA","s198","14031","Perempuan","","0000-00-00","","","","","","5cfee2eedb725.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("199","KHANSA MAHARANI","s199","14032","Perempuan","","0000-00-00","","","","","","5cfee2fd8a870.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("200","LATIFA SALSABILA","s200","14033","Perempuan","","0000-00-00","","","","","","5cfee30fee5d0.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("201","LAYLA SHANDRINA UTAMI","s201","14034","Perempuan","","0000-00-00","","","","","","5cfee320f1a33.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("202","MUHAMMAD DAFFA DANISWARA","s202","14035","Laki-laki","","0000-00-00","","","","","","5cfee332bd0a5.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("203","MUHAMMAD DZAKI DWI PUTRANTO","s203","14036","Laki-laki","","0000-00-00","","","","","","5cfee34645771.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("204","MUHAMMAD RIFAT BAGUS ADIKUSUMA","s204","14037","Laki-laki","","0000-00-00","","","","","","5cfee35b1ff59.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("205","RADEN IMAM BUDI PRASETYA","","14038","Laki-laki","","0000-00-00","","","","","","5bfa29ef8ce41.jpg","Pasif","","","X IPA 4",""," "," ",""," ","","outline-success","","","","0","0","0","0","0","","");
INSERT INTO siswa VALUES("207","SABILA NAFISAH AMALLIA","s207","14040","Perempuan","","0000-00-00","","","","","","5cfee3721bafd.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("208","SAFIRA DYAH KHAIRUNISA","s208","14041","Perempuan","","0000-00-00","","","","","","5cfee3886c757.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("209","SAHNA NATANIA ZAHWA","s209","14042","Perempuan","","0000-00-00","","","","","","5cfee39f90c87.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("210","SOFIA MAHARANI","s210","14043","Perempuan","","0000-00-00","","","","","","5cfee3b0d9b20.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("211","TIARA MAHARANI HAMI SENO","s211","14044","Perempuan","","0000-00-00","","","","","","5cfee3c1b9934.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("212","TSANIYA TAS A SALSABILA","s212","14045","Perempuan","","0000-00-00","","","","","","5cfee3d14e673.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("213","VANIA ADRISTI WIDYARUKMIYANTI","s213","14046","Perempuan","","0000-00-00","","","","","","5cfee3e1be3ac.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("214","VENANTIA VERREN VERIANA","s214","14047","Perempuan","","0000-00-00","","","","","","5cfee3f117be8.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("215","WISNU ARYO JATMIKO","s215","14048","Laki-laki","","0000-00-00","","","","","","5cfee3ffbc089.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("216","RAHMA ZAHRA KAMILA","s216","14039","Perempuan","","0000-00-00","","","","","","5cfee42aef184.jpg","Pasif","","","XI IPA 6/01-06-2018","X IPA 6","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("217","AJI PRAKOSO","s217","14049","Laki-laki","","0000-00-00","","","","","","5cfee47e02526.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("218","ALEKSANDRA MAURISKA MAHARANI PUTRI","s218","14050","Perempuan","","0000-00-00","","","","","","5cfee4984467c.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("219","AMANDA AULITA PUTRI","s219","14051","Perempuan","","0000-00-00","","","","","","5cfee4a660976.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("220","ARGYA ZAHRA RAPUL HANISI","s220","14052","Perempuan","","0000-00-00","","","","","","5cfee4c410b71.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("221","ARKAN DAFFA LAZUARDI","s221","14053","Laki-laki","","0000-00-00","","","","","","5cfee4f4462e7.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("222","DIAS LINTANG KASSAYA","s222","14054","Perempuan","","0000-00-00","","","","","","5cfee50a73ff8.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("223","DONI DZAKI TAUFIQURRAHMAN","s223","14055","Laki-laki","","0000-00-00","","Islam","","","","5cfee524495ae.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("224","FAYZA ARDIARIZKY KAMILA PUTRI","s224","14056","Perempuan","","0000-00-00","","","","","","5cfee531c8ca3.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("225","GARUDA ERA RUHPINESTHI","s225","14057","Laki-laki","","0000-00-00","","","","","","5cfee53ec3a0c.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("226","JESSICA GUNAWAN","s226","14058","Perempuan","","0000-00-00","","","","","","5cfee54c4b6e5.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("227","KHOSY EVANI INDRASTATA","s227","14059","Perempuan","","0000-00-00","","","","","","5cfee55daca6f.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("228","LINTANG AMARTYA PADMARINI","s228","14060","Perempuan","","0000-00-00","","","","","","5cfee571701e9.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("229","RATUMAS AMARADUHITA RENGGANINGTYAS ARHAM","s229","14061","Perempuan","","0000-00-00","","","","","","5cfee57f130d4.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("230","SEKAR ARVINDA MAHESWARI","s230","14062","Perempuan","","0000-00-00","","","","","","5cfee58ee70b7.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("231","SEKARINI WUKIRASIH","s231","14063","Perempuan","","0000-00-00","","","","","","5cfee59f028c9.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("232","SYAKIRA DIVANY WIJAYA","s232","14064","Perempuan","","0000-00-00","","","","","","5cfee5ab06471.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");
INSERT INTO siswa VALUES("233","WIDI ALFIANTININGTIAS","s233","14065","Perempuan","","0000-00-00","","","","","","5cfee5b840a39.jpg","Pasif","","","XI IPS 1/01-06-2018","X IPS 1","","",""," ","","outline-success","","","","0","0","0","0","0","on","");



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tugas VALUES("1","Drs. Agus Santosa","","2019-06-17","XII IPS 1","PR","<p>Dikerjakan kelompok</p>
");



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

INSERT INTO web VALUES("1","5ced21ea2b7a6.jpg","5ced25d55fe2d.jpg","5ced283f013bd.jpg","5ced3eafec98c.jpg","5d073c33b882d.jpg","5ced43233a793.jpg","5ced47a3da67b.jpg","<iframe width="560" height="315" src="https://www.youtube.com/embed/NZ9fcd5fuqg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>","<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/ByCD4kQA5o-/" data-instgrm-version="12" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/ByCD4kQA5o-/" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;"> Lihat postingan ini di Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div></a> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/ByCD4kQA5o-/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">Ini nih beberapa opini pelajar DIY tentang salah satu SMA di DIY yaitu SMA N 3 Yogyakarta! #Repost ðŸ‘‰ @festpel_jogjaâœ¨âœ¨</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">Sebuah kiriman dibagikan oleh <a href="https://www.instagram.com/sma3padmanaba/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px;" target="_blank"> Official Account Padmanaba</a> (@sma3padmanaba) pada <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2019-05-29T03:59:51+00:00">28 Mei 2019 jam 8:59 PDT</time></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>","<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/BvRDOukBB-O/" data-instgrm-version="12" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/BvRDOukBB-O/" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;"> Lihat postingan ini di Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div></a> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/BvRDOukBB-O/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">The Imperishable &#34;Even the sun is surrounded by darkness&#34; 03. 05. 2019 Concert Hall Taman Budaya Yogyakarta</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">Sebuah kiriman dibagikan oleh <a href="https://www.instagram.com/jubahmacan/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px;" target="_blank"> Teater Jubah Macan Padmanaba</a> (@jubahmacan) pada <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2019-03-21T10:09:07+00:00">21 Mar 2019 jam 3:09 PDT</time></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>","<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/Bwjy0QZhITb/" data-instgrm-version="12" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/Bwjy0QZhITb/" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;"> Lihat postingan ini di Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div></a> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/Bwjy0QZhITb/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">&#34;sebentar lagi kita akan datang, tapi ingat jangan ditunggu aku bukan pacarmu..&#34;</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">Sebuah kiriman dibagikan oleh <a href="https://www.instagram.com/dedicart2019/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px;" target="_blank"> Dedic Art 2019 ðŸŽ¨</a> (@dedicart2019) pada <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2019-04-22T13:21:18+00:00">22 Apr 2019 jam 6:21 PDT</time></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>","","<iframe src="https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2FGorgeousBeautyDaily%2Fvideos%2F306983339992137%2F&show_text=0&width=267" width="267" height="476" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allowFullScreen="true"></iframe>","<p>&ldquo;Imagination is more important than knowledge. For knowledge is limited, whereas imaginatio","Albert Einstein","Ilmuwan");

