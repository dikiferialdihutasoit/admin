-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Des 2023 pada 13.51
-- Versi server: 10.6.16-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rsjkoehd_rsuduban`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `idartikel` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `waktu` datetime NOT NULL,
  `jam` time NOT NULL,
  `isiartikel` text NOT NULL,
  `authors` varchar(50) DEFAULT NULL,
  `filefoto` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`idartikel`, `judul`, `waktu`, `jam`, `isiartikel`, `authors`, `filefoto`) VALUES
(4, 'BAHAYA PENULARAN INFEKSI HEPATITIS B', '2020-01-13 11:28:51', '00:00:00', 'Hepatitis B merupakan masalah kesehatan dunia, termasuk Indonesia. Organisasi Kesehatan Dunia (WHO) memperkirakan bahwa hepatitis B merupakan penyebab lebih dari 780.000 kematian tiap tahun di dunia. Di Indonesia sendiri, hasil Riset Kesehatan Dasar pada tahun 2007 menunjukkan bahwa prevalensi hepatitis B sebesar 9,4%. Hal ini berarti satu dari 10 penduduk Indonesia terinfeksi Hepatitis B. Sayangnya, hanya satu dari lima penderita hepatitis B di Indonesia yang sadar bahwa mereka mengidap penyakit ini.\r\nHepatitis B dapat menular melalui darah dan cairan tubuh, misalnya sperma dan cairan vagina. Virus penyakit ini jauh lebih mudah ditularkan dibandingkan HIV. Beberapa cara penularannya adalah:\r\n•	Kontak seksual, misalnya berganti-ganti pasangan dan berhubungan seks tanpa alat pengaman.\r\n•	Berbagi jarum suntik. Misalnya menggunakan alat suntik yang sudah terkontaminasi darah penderita hepatitis B.\r\n•	Kontak dengan jarum suntik secara tidak disengaja. Misalnya petugas kesehatan (paramedis) yang sering berurusan dengan darah manusia.\r\n•	Ibu dan bayi. Ibu yang sedang hamil dapat menularkan penyakit ini pada bayinya saat persalinan.\r\nBeberapa gejala hepatitis B antara lain: \r\n•	Kehilangan nafsu makan.\r\n•	Mual dan muntah.\r\n•	Sakit kuning (dilihat dari kulit dan bagian putih mata yang menguning).\r\n•	Gejala yang mirip pilek, misalnya lelah, nyeri pada tubuh, dan sakit kepala.\r\nTetapi gejala-gejala tersebut tidak langsung terasa dan bahkan ada yang sama sekali tidak muncul. Karena itulah banyak orang yang tidak menyadari bahwa dirinya telah terinfeksi. Inkubasi adalah jarak waktu antara virus pertama masuk ke dalam tubuh hingga munculnya gejala pertama infeksi tersebut. Masa inkubasi hepatitis B biasanya berkisar antara 1-5 bulan sejak terjadi pajanan terhadap virus. Penderita hepatitis B kronis bisa menularkan virus meski tanpa menunjukkan gejala apa pun. Langkah pengobatan memang dapat menghambat penyebaran hepatitis B kronis dan mencegah komplikasi, tetapi tidak bisa menyembuhkan infeksi. Penderita hepatitis B kronis tetap dapat menularkannya pada orang lain. \r\n\r\nDiagnosis hepatitis B dilakukan melalui pemeriksaan darah. Yang perlu diperhatikan adalah pendeteksian HBsAg (hepatitis B surface antigen). HbsAg adalah lapisan luar virus hepatitis B yang memicu reaksi dari sistem kekebalan tubuh Anda. Munculnya hasil positif menunjukkan bahwa hati Anda melepaskan protein hepatitis B ke dalam darah. Hal ini mengindikasikan adanya infeksi.\r\nSelain tes HBsAg, dokter mungkin akan menganjurkan Anda untuk menjalani pemeriksaan yang lebih spesifik, yaitu evaluasi fungsi hati. Pemeriksaan ini juga dilakukan melalui tes darah untuk mengetahui adanya kerusakan hati atau tidak. \r\nVaksin dan Langkah Pencegahan Terpapar Virus Hepatitis B\r\nLangkah efektif dalam pencegahan hepatitis B adalah dengan vaksin. Di Indonesia sendiri, vaksin hepatitis B termasuk vaksin wajib dalam imunisasi. Proses pemberian vaksin dilakukan sebanyak tiga kali, yaitu saat anak lahir, saat anak berusia satu bulan, dan saat anak berusia 3-6 bulan. Tetapi orang dewasa dari segala umur dianjurkan untuk menerima vaksin hepatitis B. Pemberian vaksin ini juga dianjurkan untuk mereka yang berisiko tinggi tertular hepatitis B, seperti: \r\n•	Orang yang memiliki lebih dari satu pasangan seksual.\r\n•	Orang yang menggunakan obat suntik atau berhubungan seks dengan pengguna obat suntik.\r\n•	Petugas kesehatan (paramedis) yang berisiko terpapar virus hepatitis B. Orang yang tinggal serumah dengan penderita hepatitis B.\r\n•	Penderita penyakit hati kronis.\r\n•	Penderita penyakit ginjal.\r\nPemeriksaan hepatitis B juga diterapkan bagi ibu hamil. Jika sang ibu mengidap penyakit ini, bayinya dapat menerima vaksin pada saat lahir (12 jam setelah persalinan) untuk mencegah penularan dari ibu ke bayi. \r\n\r\nCreated by : dr. Cahaya Cinta', 'http://www.who.int/mediacentre/factsheets/fs204/en', 'resources/file_artikel/hepatitis_b_press_release1.jpg'),
(5, 'Rokok Elektrik (VAPE), Amankah Bagi Kesehatan ?', '2020-01-13 11:38:15', '00:00:00', 'Jaman sekarang siapa yang tidak mengenal rokok ? Sepertinya setiap kalangan tanpa melihat usia dan pekerjaan pasti mengenal apa itu rokok. Bahkan tidak jarang saat ini kita lihat di televisi melalui berita bahwa ada anak dibawah umur juga sudah berani untuk mencoba merokok  dan bahkan mengalami candu berat tanpa mengetahui apa dampak yang akan terjadi kedepannya nanti bagi kesehatan. Sungguh sangat miris sekali.\r\nBanyak sekali sekarang kita ketahui bahayanya merokok, selain kita membakar uang, kita juga dapat merugikan diri sendiri, mungkin tidak sekarang dampak yang terlihat, pasti masa yang akan datang akan sangat terlihat dampak dari merokok itu sendiri, contoh yang sering kita temui di masyarakat atau lingkungan sekitar , yaitu karang gigi yang akan menguning, bahkan aroma mulut yang tidak sedap dihirup atau yang paling terparah adalah gangguan jantung, kanker paru dan impotensi pada pria. Namun begitu, sepertinya masyarakat sudah tidak peduli dengan dampak buruk merokok akibat kecanduaan yang berat padahal saat ini hampir di semua kemasan rokok sudah disertai dengan foto-foto yang cukup mengerikan dari dampak merokok.\r\nBahkan sekarang ini seiring dengan berkembangnya jaman, selain merokok dengan menggunakan tembakau, saat ini sedang marak di kalangan anak muda merokok dengan menggunakan vape (rokok elektrik). Banyak orang menganggap ringan bahaya menghisap vape atau rokok elektrik ini dibandingkan dengan rokok tembakau biasa. Hal itulah yang membuat trend rokok elektrik di Indonesia semakin populer. \r\nBeberapa orang mengatakan bahwa penggunaan rokok elektrik lebih aman daripada rokok tembakau. Hal inilah yang menyebabkan banyak orang beralih ke rokok elektrik karena percaya dapat menghindari dari risiko penyakit jantung, paru-paru dan kanker, ataupun dari penyakit yang berhubungan dengan penggunaan rokok tembakau. Namun, apakah benar demikian ?\r\n	Vape adalah rokok elektrik yang tidak melibatkan tembakau, asap atau pembakaran. Vape memang tidak menghasilkan asap seperti hasil pembakaran pada rokok tembakau, melainkan uap. Namun efek samping vape ini tetap ada saat menghembuskan uap vape di ruangan tertutup. Tidak hanya itu, vape juga memiliki efek samping bagi orang lain yang menghirupnya, karena rokok elektrik atau vape menghasilkan partikel halus nikotin dan zat-zat berbahaya lain ke udara di ruangan tertutup. Hal ini disebabkan karena vape mengandung nikotin, propylene glycol. Komponen lainnya yang juga berbahaya yaitu tobacco-specific nitrosamine (TSNA). TSNA merupakan senyawa karsinogen yang ditemukan dalam tembakau dan rokok tembakau. Nitrosamin dalam jumlah sedikit ditemukan dalam cairan rokok elektrik. Semakin tinggi kadar nikotin, semakin tinggi juga kadar TSNA. Selain TSNA, juga ditemukan kandungan senyawa logam, seperti kromium, nikel, dan timah.\r\n	Hasil riset atau penelitian yang mendalam mengenai penggunaan vapor ini belum ada. Yang dibahas adalah tentang nikotin yang digunakan di dalam vaping, akan tetapi tidak semua liquid berbahan nikotin cair. Vapor baru mulai dikembangkan pada tahun 2003. Tetapi, para pengguna vapor atau rokok elektrik tetap harus wapada. Rokok ini sudah diteliti Asosiasi paru-paru di Amerika yang hasilnya belum dinyatakan 100% aman. Sebab, masih bisa berpotensi menyebabkan penyakit kanker, asma, radang paru-paru dan penyakit jantung sebagai akibat dari zat kimia yang dikandungnya. Oleh sebab itu, WHO dan BPOM masih menunggu penelitian lanjutan untuk menyatakan keamanan penggunaan rokok elektrik jangka panjang.\r\n	WHO Selaku Badan Kesehatan di dunia menyarankan agar tidak menghisap rokok elektronik atau vape di dalam ruangan. Karena walaupun tidak mngeluarkan asap layaknya rokok normal namun rokok elektronik ini mengeluarkan uap yang jauh berbahaya bagi kesehatan perokok aktif dan para perokok pasif. BPOM memperingatkan kepada masyarakat bahwa rokok elektronik yang beredar di pasaran saat ini masih bersifat ilegal dan belum bisa dipertanggungjawabkan kandungan zat berbahayanya. Kebanyakan rokok ini mengandung zat propilen glikol, dieter glikol, nikotin dan gliserin pada pelarutnya, sehingga rokok elekronik ini dikatakan berbahaya bagi kesehatan.\r\n\r\n	Apa saja bahaya merokok dengan menggunakan Vape ???\r\n\r\n1.	Vape beresiko terbakar\r\nTak jarang kita sering melihat di televisi sering kali vape tiba-tiba terbakar pada saat digunakan oleh penggunanya atau bahkan terbakar pada saat vape tersebut sedang diletakkan di dalam saku celana pengunanya. Mengapa hal tersebut bisa terjadi ? Hal ini dikarenakan vape (rokok elektrik) ini dapat bekerja dan membakar dengan adanya bantuan sebuah baterai yang berguna untuk memanaskan liquid menjadi sebuah uap atau asap yang di hasilkannya, dan apabila ada terjadi suatu konsletting atau masalah pada pemanas, maka akan beresiko pemanas menjadi terbakar, karena sekecil apapun arus listrik atau kapasitas baterai jika meledak maka bisa saja akan sangat membahayakan keselamatan pemakainya.\r\n\r\n\r\n\r\n\r\n\r\n2.	Keracunan\r\nBerpotensi terjadi keracunan bagi pemakainya, apalagi jika vaping dilakukan di ruangan yang tertutup. Namun, bukan saja beresiko untuk perokok aktif, perokok pasif pun dapat mengalami hal yang sama.\r\n\r\n3.	Kecanduaan\r\nVaping merupakan cara baru dalam memasukkan nikotin ke dalam tubuh. Nikotin merupakan zat berbahaya yang dapat mematikan apabila kadarnya terlalu tinggi. Nikotin mengakibatkan efek buruk terhadap tubuh yaitu adrenalin meningkat, tekanan darah meningkat dan juga mengakibatkan ketagihan. Selain itu, di dalam cairan liquid vape sering diberikan penambah rasa, seperti rasa cokelat, vanila, mint, serta buah-buahan, dan lainnya, sehingga perokok elektrik dapat menikmati sensasi rasa tertentu dalam setiap hisapannya.\r\n\r\n4.	Mengganggu Sistem Pernafasan\r\nUap yang dihasilkan rokok elektronik dapat menimbulkan serangan asma, sesak napas, dan batuk. Asap yang dihasilkan dari rokok elektrik ini berasal dari liquid yang dihasilkan dari campuran zat-zat seperti propilen glikol, gliserin, nikotin dan perasa. Asap akan masuk kedalam tubuh dan menyebabkan iritasi pada paru paru manusia, bahkan pada penggunaan jangka panjang bisa menyebabkan kanker bagi pengisapnya.\r\n\r\nPada awalnya sebenarnya penggunaan vape ini bertujuan untuk dapat mengurangi penggunaan rokok tembakau, atau bahkan untuk membuat perokok berhenti merokok. Namun, hal ini sepertinya justru menambah masalah baru karena kebanyakan pengguna rokok vape justru menjadi semakin candu untuk merokok dan merasa lebih aman dengan menggunakan rokok ini. Selain itu penulis juga melihat bahwa adanya faktor gengsi atau gaya hidup (life style) di sesama remaja atau bisa dikatakan ikut-ikutan ingin menggunakan rokok vape juga merupakan salah satu faktor yang membuat semakin berkembangnya pengggunaan rokok vape saat ini, khususnya di Indonesia. \r\nItulah beberapa efek bahaya yang disebabkan oleh rokok vape. Pada dasarnya yang sangat perlu diketahui bahwa rokok elektrik vape dan rokok tembakau sama-sama berbahaya untuk kesehatan tubuh manusia, maka dari itu, jika ingin gaya hidup yang sehat, maka lebih baik berhenti merokok mulai dari saat ini. Beberapa hal yang perlu diingat bagi mereka yang tidak merokok agar dianjurkan untuk tidak mulai mencoba menggunakan rokok konvensional dengan tembakau maupun dengan menggunan rokok elektrik vape dan sebisa mungkin jauh dari paparan asap rokok. Dan, bagi mereka yang merupakan perokok disarankan agar segera berhenti merokok sebelum terlambat.\r\n\r\nHingga saat ini penelitian pun masih terus berlanjut mengenai efek samping jangka panjang dari vape. Mari mulai sekarang agar hidup sehat tanpa merokok.Sayangi diri Anda,keluarga dan uang Anda yang sebenarnya bisa Anda tabung.\r\n\r\nBy 	:  dr. Yudhi Eka Ramadhan Sembiring ', '', 'resources/file_artikel/benarkah-vape-lebih-sehat-pendapat-dokter-ini-buktikan-sebaliknya-zlwBFatcmH.jpg'),
(6, 'Artikel Kesehatan Wanita: Keputihan Pada Organ Intim', '2020-01-13 11:42:15', '00:00:00', 'Keputihan pada permukaan kulitnya, akan membuat seorang wanita menjadi primadona dan menarik perhatian semua orang yang melihat. Namun keputihan pada daerah V, tidak hanya menyebabkan rasa gatal dan tidak percaya diri. Malahan jika tidak ditangani dengan serius dan konsisten, keputihan tersebut dapat berakibat kemandulan, hamil di luar kandungan, kanker rahim dan kematian.\r\nTerdapat 2 jenis keputihan:\r\n1.	Keputihan Fisiologis \r\nKeputihan seringnya terjadi pada masa subur, serta sesudah dan sebelum menstruasi dimana terdapat lendir berlebih yang tidak terasa gatal dan tidak berbau. Pada wanita hamil, keputihan tidak berpengaruh langsung kepada janin karena ada selaput ketuban yang melindungi janin. Keputihan fisiologis atau yang disebut juga keputihan normal ini, memiliki tanda-tanda antara lain keputihannya encer dan tidak terlalu banyak, berwarna krem atau bening, tidak berbau, tidak menyebabkan gatal.\r\n\r\n2.	Keputihan Patologi\r\nKeputihan patologis yang disebut juga keputihan tidak normal dapat digolongkan sebagai penyakit karena keberadaannya dapat mengganggu kondisi kesehatan maupun organ kewanitaan.\r\nAkibat keputihan patologis, jika terjadi pada wanita hamil:\r\n•	Resiko bayi lahir prematur.\r\n•	Bayi yang terkena infeksi virus beresiko mengalami gangguan pencernaan, gangguan pernafasan hingga bisa menyebabkan bayi mengalami kematian.\r\n•	Bayi yang mengalami infeksi akibat bakteri menyebabkan kebutaan pada bayi.\r\nCiri-ciri keputihan patologis:\r\n?	Cairannya bersifat kental, berwarna putih seperti susu, atau berwarna kuning atau juga hijau.\r\n?	Menyebabkan rasa gatal dan memiliki bau yang tidak sedap.\r\n?	Menyisakan bercak-bercak pada celana dalam wanita.\r\n?	Cairan yang keluar sangat banyak.\r\nApa faktor yang menyebabkan munculnya keputihan?\r\n1. Faktor kebersihan yang kurang baik. Kelembapan vagina membuat penyebab infeksi berupa bakteri patogen akan sangat mudah untuk menyebar.\r\n2. Stres. Semua organ tubuh kinerjanya dipengaruhi dan dikontrol oleh otak. Ketika reseptor otak mengalami kondisi stres, dapat menyebabkan perubahan keseimbangan hormon -hormon.\r\n3. Penggunaan antibiotik dalam jangka waktu yang lama bisa menyebabkan sistem imunitas pada tubuh wanita.\r\n4. Keputihan yang disebabkan oleh jamur, parasit, bakteri dan virus memiliki warna putih seperti susu, cairannya sangat kentar, sangat berbau tidak sedap dan menimbulkan rasa gatal pada sekitar daerah vagina. Vagina mengalami radang dan kemerahan. Biasanya dipicu juga oleh adanya penyakit kencing manis, penggunaan pil KB, serta tubuh yang memiliki daya tahan rendah.\r\nBagaimana cara mencegah terjadinya keputihan?\r\n1. Bersihkan selalu organ intim Anda.\r\nBersihkan vagina dengan menggunakan pembersih yang tidak menyebabkan gangguan kestabilan pH (terbuat dari bahan susu). Hindari penggunaan sabun antiseptik dalam jangka panjang.\r\n2. Jangan menggunakan bedak atau bubuk yang bertujuan membuat vagina harum atau kering. Bedak yang sangat kecil dan halus, mudah terselip dan tidak dapat terbersihkan, sehingga mengundang datangnya jamur.\r\n3. Keringkan selalu vagina setelah mandi, cebok atau setiap kali vagina basah.\r\n4. Pakailah selalu pakaian dalam yang kering (bawa cadangan guna berjaga-jaga jika celana dalam perlu diganti).\r\n5. Gunakan celana luar yang memiliki pori-pori cukup, jangan terlalu sering menggunakan celana luar yang ketat, karena dapat menyebabkan sirkulasi daerah kewanitaan terganggu.\r\n6. Gunakan celana dalam dari bahan katun yang mampu menyerap keringat.\r\n7. Saat periode menstruasi, seringlah mengganti pembalut.\r\n8. Gunakan panty liner di saat perlu saja, jangan gunakan terlalu lama.\r\n9. Ketika stres, ambil waktu libur atau cuti Anda.\r\n10. Kurangi kegiatan yang membuat Anda sangat letih, kepanasan dan banyak mengeluarkan keringat (segera mandi dan bersihkan tubuh Anda, khususnya daerah kemaluan). \r\n\r\nBy: dr. Aldilla Dwi Wulandari ', '', 'resources/file_artikel/rahim.jpg'),
(7, 'Pentingnya Menjaga Kebersihan Alat Reproduksi', '2020-01-13 11:49:13', '00:00:00', 'Kesehatan reproduksi remaja merupakan kondisi kesehatan yang menyangkut masalah kesehatan organ reproduksi, yang kesiapannya dimulai sejak usia remaja ditandai oleh haid pertama kali pada remaja perempuan atau mimpi basah bagi remaja laki-laki. Kesehatan reproduksi remaja meliputi fungsi, proses, dan sistem reproduksi remaja. Sehat yang dimaksudkan tidak hanya semata-mata bebas dari penyakit atau dari cacat saja, tetapi juga sehat baik fisik, mental maupun sosial.\r\nPengetahuan Dasar Kesehatan Reproduksi Pada Remaja\r\n\r\nUsia remaja adalah masa transisi yang ditandai dengan berbagai perubahan emosi, psikis, dan fisik dengan ciri khas yang unik. Penting bagi remaja untuk mendapatkan informasi yang tepat tentang kesehatan reproduksi dan berbagai faktor yang berpengaruh terhadap kesehatan reproduksi.\r\n\r\nSebagai pengenalan terhadap kesehatan reproduksi dasar, remaja harus mengetahui beberapa hal di bawah ini:\r\n\r\n    Pengenalan tentang proses, fungsi, dan sistem alat reproduksi\r\n    Mengetahui penyakit HIV/AIDS dan penyakit menular seksual lainnya, serta dampaknya pada kondisi kesehatan organ reproduksi\r\n    Mengetahui dan menghindari kekerasan seksual\r\n    Mengetahui pengaruh media dan sosial terhadap aktivitas seksual\r\n    Mengembangkan kemampuan dalam berkomunikasi, terutama membentuk kepercayaan diri dengan tujuan untuk menghindari perilaku berisiko.\r\n\r\nCara menjaga organ reproduksi, diantaranya:\r\n\r\n    Pakai handuk yang lembut, kering, bersih, dan tidak berbau atau lembab.\r\n    Memakai celana dalam dengan bahan yang mudah menyerap keringat\r\n    Pakaian dalam diganti minimal 2 kali dalam sehari\r\n    Bagi perempuan, sesudah buang air kecil, membersihkan alat kelamin sebaiknya dilakukan dari arah depan menuju belakang agar kuman yang terdapat pada anus tidakmasuk ke dalam organ reproduksi.\r\n    Bagi laki-laki, dianjurkan untuk dikhitan atau disunat agarmencegah terjadinya penularan penyakit menular seksual serta menurunkan risiko kanker penis.\r\n\r\nPerubahan fisik, psikis, dan emosi remaja pada masa pubertas dapat membuat remaja lebih ekspresif dalam mengeksplorasi organ kelamin dan perilaku seksualnya. Sementara itu, pengetahuan dan persepsi yang salah tentang seksualitas dan kesehatan reproduksi dapat menyebabkan remaja berperilaku berisiko terhadap kesehatan reproduksinya. Oleh karena itu, peran orang tua dan guru menjadi penting dalam mendampingi remaja mencari dan menemukan informasi kesehatan reproduksi yang tepat.\r\n\r\nsumber : http://promkes.kemkes.go.id/pentingnya-menjaga-kebersihan-alat-reproduksi', 'http://promkes.kemkes.go.id/pentingnya-menjaga-keb', 'resources/file_artikel/22564ee7kespro.png'),
(8, 'Manfaat Air Bersih dan Menjaga Kualitasnya', '2020-01-13 11:51:40', '00:00:00', 'Air adalah salah satu elemen utama di Bumi yang menjadi bagian tidak terpisahkan bagi seluruh manusia. Makhluk hidup tidak dapat hidup jika tidak ada air, sehingga air sangat dibutuhkan untuk menjaga kelangsungan makhluk hidup.\r\n\r\nAir dalam tubuh manusia sangat berfungsi untuk mengisi cairan dalam tubuh dengan meminum air. Selain untuk penghilang rasa haus dan manfaat utama lainnya air untuk tubuh, air juga memiliki manfaat lain yang sangat dibutuhkan untuk menunjang kehidupan.\r\n\r\nSalah satu bentuk Perilaku Hidup Bersih dan Sehat atau PHBS adalah dengan menggunakan air bersih sehari-hari. Karena kualitas air dapat mempengaruhi kesehatan dan kehidupan sehari-hari.\r\n\r\nAir yang kita gunakan sehari-hari seperti minum, memasak, mandi dan lainnya harus dalam keadaan bersih sehingga kita dapat terhindar dari penyakit yang disebabkan karena kualitas air buruk.\r\n\r\nDengan menggunakan air bersih kita dapat terhindar dari penyakit seperti diare, kolera, disentri, tipes, cacingan, penyakit kulit hingga keracunan. Untuk itu wajib bagi seluruh anggota keluarga dalam menggunakan air bersih setiap hari dan menjaga kualitas air tetap bersih di lingkungannya.\r\n\r\nBerikut ada beberapa tips dalam menjaga kualitas air bersih di lingkungan.\r\n\r\n    Pisahkan jarak antara sumber air dengan jamban dan tempat pembuangan sampah minimal 10 meter\r\n    Sumber mata air harus dilindungi dari bahan pencemar\r\n    Sumur gali, sumur pompa, kran umum dan mata air harus dijaga bangunannya gar tidak rusak\r\n    Lantai sumur sebaiknya kedap air (diplester) dan tidak retak, bibir sumur dan dinding sumur harus diplester dan sumur ditutup;\r\n    Ember penampung air dilengkapi denga penutup dan gayung bertangkai, dijaga kebersihannya.\r\n    Air harus dihaga kebersihannya dengan tidak ada genangan air di sekitar sumber air, dan dilengkapi dengan saluran pembuangan air, tidak ada kotoran, tidak ada lumut, pada lantai/dinding sumur.\r\n', 'http://promkes.kemkes.go.id/manfaat-air-bersih-dan', 'resources/file_artikel/9fffd94bairbersih.png'),
(9, 'Kenali Bahaya Leptospirosis dan Pencegahannya', '2020-01-13 11:53:51', '00:00:00', 'Di kala musim hujan tiba, hal yang paling tidak diinginkan adalah banjir. Banjir dapat terjadi salah satunya apabila masyarakat kurang peduli kebersihan lingkungan sekitar seperti kegiatan membuang sampah sembarangan yang mengakibatkan selokan tersumbat dengan sampah.\r\n\r\nSelain itu banjir juga kerap mengundang penyakit yang dapat menyerang warga seperti salah satunya adalah Leptospirosis. Penyakit ini dapat ditularkan melalui urin tikus, genangan air yang masuk ke area rumah dapat mengakibatkan aliran air kencing tikus dapat masuk ke dalam tubuh manusia.\r\n\r\nMenteri Kesehatan RI Dr. dr. Terawan Agus Putranto mengatakan “Warga terdampak banjir harus terhindari dari leptospirosis, beberapa caranya dapat dengan melakukan hal dasar dalam pola hidup sehat seperti cuci tangan pakai sabun sebelum makan. Hal ini sangat mendasar tetapi sangat berefek tinggi terhadap kesehatan karena tangan adalah media langsung antara makanan dengan mulut\".\r\n\r\nSelain itu anda juga perlu mengetahui ciri-ciri orang yang terkena Leptospirosis dimana penderita akan merasa menggiil, batuk, diare, sakit kepala tiba-tiba, demam tinggi, nyeri oto, hilang nafsu makan, mata merah, dan menderita iritasi.\r\nCara Mencegah Penyakit Leptospirosis\r\n\r\nAdapun cara untuk mencegah diri dari bahaya Leptospirosis adalah sebagai berikut:\r\n\r\n    Berperilaku hidup bersih dan sehat, yaitu dengan cara menjaga kebersihan diri dan lingkungan\r\n    Menyimpan makanan dan minuman dengan baik\r\n    Mencuci tangan dan kaki serta sebagian tubuh lainnya dengan sabun\r\n    Memakai sepatu dari karet dengan ukuran tinggi, dan sarung tangan karet bagi kelompok kerja yang berisiko tinggi tertular leptospirosis\r\n    Membasmi tikus di rumah atau di kantor\r\n    Membersihkan dengan desinfektan pada bagian-bagian rumah, kantor, atau gedung.\r\n\r\nItulah beberapa cara untuk mencegah bahaya Leptospirosis yang mengintai di kala banjir, berperilaku hidup bersih dan sehat tidak hanya perlu dilakukan saat terkena banjir tetapi juga dalam kegiatan sehari-hari agar tubuh tidak mudah terserang penyakit.', 'http://promkes.kemkes.go.id/kenali-bahaya-leptospi', 'resources/file_artikel/26e787fdleptos.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `idberita` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `waktu` datetime NOT NULL,
  `jam` time NOT NULL,
  `isiberita` text NOT NULL,
  `authors` varchar(50) DEFAULT NULL,
  `filefoto` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`idberita`, `judul`, `waktu`, `jam`, `isiberita`, `authors`, `filefoto`) VALUES
(21, 'Mencegah dan Menangani Stigma Sosial Seputar COVID-19', '2020-03-22 22:12:26', '00:00:00', 'Di tengah wabah COVID-19, muncul satu fenomena sosial yang berpotensi memperparah situasi, yakni stigma sosial atau asosiasi negatif terhadap seseorang atau sekelompok orang yang mengalami gejala atau menyandang penyakit tertentu. Mereka diberikan label, stereotip, didiskriminasi, diperlakukan berbeda, dan/atau mengalami pelecehan status karena terasosiasi dengan sebuah penyakit.\r\n\r\nSebagai penyakit baru, banyak yang belum diketahui tentang pandemi COVID19. Terlebih manusia cenderung takut pada sesuatu yang belum diketahui dan lebih mudah menghubungkan rasa takut pada “kelompok yang berbeda/lain”. Inilah yang menyebabkan munculnya stigma sosial dan diskriminasi terhadap etnis tertentu dan juga orang yang dianggap mempunyai hubungan dengan virus ini.\r\n\r\nPerasaan bingung, cemas, dan takut yang kita rasakan dapat dipahami, tapi bukan berarti kita boleh berprasangka buruk pada penderita, perawat, keluarga, ataupun mereka yang tidak sakit tapi memiliki gejala yang mirip dengan COVID-19. Jika terus terpelihara di masyarakat, stigma sosial dapat membuat orang-orang menyembunyikan sakitnya supaya tidak didiskriminasi, mencegah mereka mencari bantuan kesehatan dengan segera, dan membuat mereka tidak menjalankan perilaku hidup yang sehat.\r\n\r\nDaripada menunjukkan stigma sosial, alangkah lebih bijak jika kita berkontribusi secara sosial, yaitu dengan: 1) membangun rasa percaya pada layanan dan saran kesehatan yang bisa diandalkan; 2) menunjukkan empati terhadap mereka yang terdampak; 3) memahami wabah itu sendiri; dan, 4) melakukan upaya yang praktis dan efektif sehingga orang bisa menjaga keselamatan diri dan orang yang mereka cintai.\r\n\r\nPemerintah, warga negara, media, influencer, dan komunitas memiliki peran penting dalam mencegah dan menghentikan stigma di sekitar kita, khususnya yang diasosiasikan dengan orang-orang dari Tiongkok dan Asia pada umumnya. Kita semua harus berhati-hati dan bijaksana ketika berkomunikasi di media sosial dan wadah komunikasi lainnya.\r\n\r\nMisalnya, para influencer, pemimpin agama, pejabat publik, selebriti, dan tokoh masyarakat dapat memperkuat pesan yang mengurangi stigma, mengundang khalayak untuk merenung dan berempati pada orang-orang yang terstigma, dan mengumpulkan gagasan untuk mendukung mereka. \r\n\r\nRumah sakit, lembaga penelitian, universitas, dan institusi lainnya dapat meluruskan hoaks dengan fakta-fakta. Stigma sosial bisa terjadi akibat kurangnya pengetahuan tentang COVID-19 (bagaimana penyakit ditularkan dan diobati, dan cara mencegah infeksi). Yang paling penting untuk dilakukan adalah penyebaran informasi yang akurat dan sesuai dengan komunitas tentang daerah yang terkena, kerentanan individu dan kelompok terhadap COVID-19, opsi perawatan, dan di mana masyarakat dapat mengakses perawatan dan informasi kesehatan. Gunakan bahasa sederhana dan hindari istilah klinis.\r\n\r\nPara jurnalis hendaknya menerapkan jurnalisme beretika. Pelaporan jurnalistik yang terlalu fokus pada tanggung jawab pasien karena mengidap dan “menyebarkan COVID-19” dapat memperburuk stigma. Sebagai gantinya, media massa bisa mempromosikan konten seputar praktik pencegahan infeksi dasar, gejala COVID-19, dan kapan harus mencari perawatan kesehatan. Hal ini penting untuk meningkatkan kewaspadaan dan bukannya menebar kepanikan yang tidak perlu. Selain itu, untuk meredam kegelisahan sosial, jurnalis juga dapat meliput orang-orang yang telah pulih dari COVID-19 serta para “pahlawan” untuk menghormati tenaga kesehatan dan komunitas relawan yang berperan baik.\r\n', 'https://kawalcovid19.id/content/698/mencegah-dan-m', 'resources/file_berita/Copy-of-IMG_2339.jpg'),
(23, 'Bagaimana Virus Corona Menyerang Tubuh?', '2020-03-22 22:41:49', '00:00:00', 'Disadur dari artikel di New York Times: “What Does the Coronavirus Do to the Body?”\r\n\r\nIni adalah apa yang terbaru ditemukan oleh ilmuwan terkait bagaimana koronavirus, yakni SARS-CoV-2 menginfeksi dan menyerang tubuh, dan apa dampaknya pada tubuh selain paru-paru.\r\n\r\nGejala virus ini, yakni demam, batuk, sesak nafas, bisa merupakan tanda dari berbagai penyakit, mulai dari flu, infeksi tenggorokan sampai dengan selesma. Namun ahli dan periset telah mendapatkan lebih banyak informasi tentang bagaimana infeksi virus ini berkembang, selain daripada hal-hal yang masih harus diteliti lebih lanjut.\r\n\r\nBagaimana virus ini menginfeksi orang?\r\nVirus menyebar melalui tetesan air liur yang muncrat dari mulut orang akibat batuk atau bersin, yang kemudian masuk ke tubuh orang yang berada di dekatnya melalui mulut, hidung dan mata.  Virus kemudian masuk ke jalur pernafasan dan membran mukus di bagian belakang tenggorokan, menempel pada sebuah reseptor di dalam sel, dan mulai berkembang di sana. \r\n\r\nVirus ini mempunyai protein dengan ujung tajam yang membuat virus bisa menempel ke membran sel, dan dari situ, materi genetis virus masuk ke sel tubuh manusia. Materi genetis tersebut kemudian membajak metabolisme sel dan membuat sel tidak lagi berkembang untuk kesehatan tubuh melainkan untuk memperbanyak virusnya.\r\n\r\nBagaimana proses ini menyebabkan masalah pernafasan?\r\nSaat virus ini berkembang, mereka mulai menginfeksi sel-sel di sekitarnya. Gejalanya biasanya mulai terasa di belakang tenggorokan, berupa rasa nyeri tenggorokan dan batuk kering. Lalu virus dengan cepat merambat masuk ke saluran pangkal paru-paru, hingga masuk ke paru-paru. Proses ini merusak jaringan pada paru-paru, membuat jaringan ini membengkak, sehingga lebih sulit bagi paru-paru untuk memasok oksigen dan menyalurkan keluar karbondioksida. Pembengkakan pada jaringan paru dan kurangnya oksigen dalam darah membuat jaringan tersebut terisi dengan cairan, nanah dan sel yang mati. Pneumonia, radang paru-paru, bisa muncul. Ini bisa membuat pasien mengalami kesulitan bernafas sehingga butuh alat bantu pernafasan (ventilator). Dalam beberapa kasus, terjadi yang disebut Sindrom Kesulitan Pernafasan Akut (Acute Respiratory Distress Syndrome), sehingga bahkan dengan ventilator pun, pasien bisa meninggal karena kesulitan pernafasan.\r\n\r\nBagaimana pergerakan virus di paru-paru?\r\nVirus sepertinya mulai bergerak dari wilayah pinggiran kedua belah paru-paru, dan mungkin butuh waktu untuk naik ke saluran pernafasan atas, trakea dan pusat pernafasan lainnya.  Pola ini membantu menjelaskan kenapa di Wuhan, banyak kasus yang tidak bisa diidentifikasi pada awalnya.\r\n\r\nProses pengetesan awal di berbagai RS di Tiongkok tidak selalu bisa mendeteksi infeksi di sisi luar paru-paru, sehingga biasanya orang yang menunjukan gejala disuruh pulang tanpa diberikan perawatan. Dan terkadang, mereka tidak merasa cukup sakit untuk mencari perawatan, dan tetap tinggal di rumah. Mereka inilah yang kemudian menulari anggota keluarganya. Ini salah satu alasan kenapa penyebarannya menjadi luas. \r\n\r\nSebuah studi menemukan bahwa lebih dari 50% pasien yang diteliti, yakni 121 pasien, di Tiongkok, mempunyai hasil CT Scan yang normal pada awal mereka sakit.  Begitu sakitnya mulai parah, CT Scan mulai menunjukan gambar seperti “pecahan kaca buram”, semacam selaput asap yang menutupi beberapa bagian paru-paru. Ini merupakan tanda-tanda infeksi. Selaput ini bisa tersebar di berbagai wilayah paru-paru, dan menebal di wilayah yang parah, sehingga muncul pola “tempelan acak” dalam hasil pemindaian.\r\n\r\n\r\nHasil CT scan pasien koronavirus ;searah jarum jam dari kiri atas, wanita usia 56 tahun, pria usia 44 tahun, pria usia 42 tahun dan seorang wanita usia 65 tahun.\r\nApakah hanya paru-paru yang terdampak?\r\nTidak juga. Infeksi bisa menyebar melalui membran mukus, dari hidung sampai ke anus. Jadi, walaupun sepertinya virus menyerang paru-paru, tetapi virus juga bisa menginfeksi saluran pencernaan. Inilah kenapa beberapa pasien menunjukan gejala pencernaan seperti diare atau sembelit. Virus ini juga bisa masuk ke dalam darah. Akan tetapi, walaupun ditemukan RNA dari virus ini dalam darah dan kotoran, belum dapat dijelaskan apakah virus akan dapat bertahan lama dalam darah ataupun kotoran.\r\n\r\nSum-sum tulang belakang dan organ tubuh lain, seperti hati bisa membengkak juga. Selain itu, bisa terjadi pembengkakan di pembuluh darah kapiler, seperti yang terjadi pada penyakit SARS di tahun 2002 dan 2003. \r\n\r\nPada akhirnya, virus akan masuk ke organ tubuh seperti jantung, ginjal, hati dan bisa menyebabkan kerusakan langsung pada organ tubuh tersebut. Dan saat sistem imunitas tubuh tengah berperang keras melawan virus, organ-organ tubuh ini dapat mengalami kegagalan fungsi.\r\n\r\nHasilnya, pasien bisa mengalami kerusakan organ tubuh tidak hanya karena virus, tetapi juga karena sistem imunitas badan mereka menyerang sel-sel tubuh yang sehat saat peperangan berlangsung.\r\n\r\nAhli masih belum mendokumentasikan apakah virus juga menyerang otak. Tetapi ahli yang mempelajari SARS telah melaporkan beberapa bukti bahwa virus SARS bisa menginfeksi otak pada beberapa pasien. Melihat kesamaan antara SARS dan SARS-CoV-2, ada sebuah jurnal di Jurnal Kedokteran Virologi yang mengatakan bahwa virus baru ini mungkin bisa menyerang sistem syaraf.\r\n\r\nMengapa beberapa orang bisa sangat parah, tetapi kebanyakan yang lainnya tidak?\r\n\r\nSekitar 80% orang yang terinfeksi mengalami gejala yang cukup ringan. Tetapi 20% mengalami gejala yang serius, dan sekitar 2% psien di Tiongkok, meninggal dunia. Ini sepertinya tergantung seberapa kuatnya sistem imunitas orang yang terinfeksi tersebut. Lansia atau orang yang punya masalah kesehatan seperti diabetes atau penyakit kronis lainnya, kemungkinan besar akan mengalami gejala yang lebih berat.\r\n\r\nSebuah pengujian patologi dilakukan pada dua orang yang masuk RS di Wuhan pada bulan Januari untuk operasi kanker paru-paru mereka namun meninggal dunia. Saat dilakukan otopsi, ternyata mereka terinfeksi koronavirusi, karena kanker paru-paru yang mereka idap masih terlalu dini untuk berakibat fatal. Salah satu pasien adalah perempuan berusia 84 tahun yang mengidap diabetes, meninggal karena pnemonia yang disebabkan oleh virus ini. Pasien lainnya, laki-laki usia 73 tahun yang kelihatannya sehat, dengan kondisi darah tinggi, menjalani operasi pembuangan kankernya dengan sukses dan selesai berobat dari RS, namun 9 hari kemudian kembali karena demam dan batuk. Pasien ini kelihatannya terinfeksi koronavirus di rumah sakit, karena setelah itu ditemukan bahwa pasien lain yang ditaruh di ruang pemulihan operasi yang sama ternyata terinfeksi juga.. \r\n\r\nPasien dengan kondisi parah seperti ini dapat sembuh hanya dengan perawatan dan dukungan yang intensif – cairan infus, dukungan alat pernafasan, dan perawatan lainnya, sehingga mereka bisa bertahan melalui gejala berat yang dialami saat imunitas tubuh berperang melawan koronavirus.\r\n\r\nApa yang masih belum diketahui oleh ilmuwan mengenai pasien terjangkit koronavirus?\r\nAda banyak! Walaupun penyakitnya mirip SARS dan memiliki elemen yang sama dengan influenza dan pneumonia, masih belum jelas bagaimana pola perkembangan penyakitnya.  Beberapa pasien bisa stabil selama seminggu, lalu tiba-tiba menjadi parah. Beberapa pasien terlihat sembuh, namun kemudian gejalanya muncul lagi. Biasanya yang mengalami kekambuhan ini adalah pasien yang jaringan paru-parunya rusak dan rentan akibat virus, lalu terkena bakteri di dalam badannya sendiri. Mereka biasanya meninggal karena infeksi bakteri, bukan virusnya. \r\nAda beberapa kasus masih tetap menjadi misteri. Ada dua kasus di mana mereka terinfeksi, lalu membaik, namun tiba-tiba memburuk saat dirawat. Satu orang pasien malah terlihat membaik saat menerima perawatan oksigen di pagi hari, namun sorenya meninggal.', 'https://kawalcovid19.id/content/650/bagaimana-viru', 'resources/file_berita/image1.png'),
(15, 'Rumah Sakit Umum Daerah (RSUD) Engku Haji Daud Tanjunguban, meraih predikat Paripurna dari Komisi Akreditasi ', '2020-01-07 10:21:47', '00:00:00', 'Senin (6/1/2020 ),  Direktur RSUD Engku Haji Daud, dr. Kurniakin W.S Girsang Sp.PD menyampaikan sertifikat tersebut langsung diserahkan oleh ketua Komisi Akreditasi RS yaitu Sutoto kepada Plt Gubernur Kepri Isdianto.\r\n\r\nSertifikat akreditasi RS yang diterima Plt Gubernur Kepri selain RSUD Engku Haji Daud, juga RSUD Raja Ahmad Tabib Tanjungpinang, yang sama-sama mendapatkan sertifikat paripurna.\r\n\r\nRSUD Engku Haji Daud Tanjung uban melakukan Survei Akreditasi Rumah Sakit (SNARS) edisi 1 pada tanggal 20 -23 Oktober 2019 dan remedial yang dilakukan pada tanggal 16 Desember 2019 lalu. Dilaksanakan sekitar 2 minggu hingga keluar hasil yang sangat memuaskan atau Paripurna.\r\n\r\nTahun 2019 ini adalah untuk kedua kalinya, RSUD Engku Haji Daud menerima predikat Paripurna, sebelumnya dilaksanakan pada tahun 2016.\r\n\r\nDengan meraih predikat Paripurna atau memuaskan tersebut menjadi tanggung jawab bersama stackholder RS, untuk terus meningkatkan pelayanan dan mengutamakan keselamatan pasien.', '', 'resources/file_berita/snars.jpg'),
(18, 'Doa Bersama Menkes dan Pegawai terhadap Bencana Banjir Jabotabek', '2020-01-13 11:46:56', '00:00:00', 'Bencana banjir yang terjadi di Jabotabek tentu menimbulkan duka mendalam terutama seluruh warga terdampak. Kementerian Kesehatan juga turut berduka atas kejadian ini, Menkes Letjen (Purn) Dr. dr. Terawan Agus Putranto, Sp. Rad(K) berdoa bersama dengan seluruh pegawai Kemenkes di lapangan upacara gedung Kementerian Kesehatan pada hari Jumat, 3 Januari 2020.\r\n\r\nKegiatan doa bersama ini dipanjatkan oleh lima pemangku agama yaitu Islam, Kristen Protestan, Kristen Katolik, Hindu, dan Budha. Dalam kesempatan ini Menkes Terawan turut prihatin pada awal tahun baru ini justru terdapat musibah yang dialami di beberapa daerah di kawasan Jabotabek. Tantangan yang dihadapi ini menurutnya tidaklah mudah sehingga sebagai manusia agar memohon bantuan Sang Kuasa agar meringankan beban akibat musibah banjir terutama untuk para korban.\r\n\r\nKementerian Kesehatan juga sudah bergerak dalam mengerahkan bantuan penuh kepada warga terdampak baik di pos kesehatan atau di fasilitas kesehatan seperti rumah sakit. Selama masih dibutuhkan masyarakat, posko kesehatan yang ada akan tetap berdiri untuk melayani kebutuhan masyarakat.\r\n\r\nMenkes Terawan juga meminta kepada masyarakat agar mewaspadai penyakit yang biasanya muncul pasca banjir seperti diare, leptospirosis, dan penyakit kulit. Menurutnya, masyarakat perlu menerapkan pola hidup bersih dan sehat atau PHBS serta rajin cuci tangan pakai sabun sebelum melakukan aktivitas sehari-hari.', 'http://promkes.kemkes.go.id/doa-bersama-menkes-dan', 'resources/file_berita/e5eef9a9doa.jpg'),
(19, 'Penandatanganan Pakta Integritas Anti Narkoba', '2020-01-20 11:20:48', '00:00:00', 'Senin, 20 Januari 2019 Pimpinan serta staf RSUD Engku Haji Daud menandatangani Pakta Integeritas Anti Narkoba dilingkungan Pemerintah Provinsi Kepulauan Riau, dimana isi dari Pakta Integeritas ini ialah :\r\n1. Tidak akan melibatkan diri baik secara langsung maupun tidak langsung terhadap penyalahgunaan narkotika dan barang terlarang sejenis lainnya,\r\n2. Berperan aktif dalam upaya  pencegahan, pemberantasan dan penyalahgunaan narkotika lingkungan kerja maupun diluar lingkungan kerja,\r\n3. Mematuhi terhadap segala peraturan perundang-undangan yang mengatur tentang Narkoba Psikotropika dan Zat Adiktif lainnya (NAPZA)\r\n4. Bersedia dijathui hukuman disiplin tingkat berat berupa pemberhentian tidak dengan hormat sebagai Aparatur Sipil Negara, apabila melakukan perbuatan penyalahgunaan NAPZA.', '', 'resources/file_berita/_MG_9537.JPG'),
(24, 'Polemik penggunaan Ibuprofen', '2020-03-22 22:56:01', '00:00:00', 'Oleh: Franky, apoteker senior di Singapura\r\n\r\n\r\n– Apakah ibuprofen memperburuk infeksi COVID-19?\r\n– Bagaimana dengan obat penawar rasa sakit yang lainnya?\r\n\r\nIsu:\r\n\r\nBerita dan laporan media sosial baru-baru ini menunjukkan bahwa penggunaan obat antiinflamasi nonsteroid (OAINS), termasuk ibuprofen, dapat meningkatkan resiko terkena infeksi COVID-19 dan berpotensi memperburuk komplikasi.\r\n\r\nFakta:\r\n\r\nOrganisasi Kesehatan Dunia (WHO) baru saja mengeluarkan pernyataan klarifikasi resmi bahwa mereka tidak melarang penggunaan ibuprofen, seperti yang dilansir dari akun Facebook resmi WHO pada tanggal 19 Maret 2020, pukul 07.00 WIB.\r\n\r\nJika Anda sudah mengonsumsi ibuprofen atau OAINS lainnya berdasarkan resep atau saran dari dokter, jangan berhenti tanpa terlebih dahulu memeriksa dengan dokter Anda. Saat ini tidak ada bukti ilmiah yang kuat untuk menyarankan orang untuk berhenti menggunakan OAINS, terutama jika Anda menggunakannya untuk kondisi kronis seperti radang sendi atau artritis reumatoid.\r\n\r\nNamun, perlu dicatat bahwa pengobatan sendiri atau swamedikasi dengan parasetamol dan OAINS dapat menutupi gejala demam yang terkait dengan infeksi COVID-19, sehingga menunda perawatan medis jika memang diperlukan.\r\n\r\nJika Anda berniat mengobati diri sendiri untuk demam atau rasa sakit atau memiliki pertanyaan, bicarakanlah dengan apoteker atau dokter Anda untuk mendapatkan saran dan evaluasi. Jika Anda mengalami batuk, kesulitan bernapas, demam, atau gejala COVID-19 lainnya, segeralah mencari pertolongan medis\r\n\r\nSumber: Akun Facebook resmi WHO ', 'https://kawalcovid19.id/content/639/polemik-penggu', 'resources/file_berita/e877b477-f21c-48cd-90d7-50fc6906ce6b_169.jpeg'),
(25, 'Lembaga Amil Zakat Nasional YAKESMA KEPULAUAN RIAU, memberi bantuan berupa suplement kesehatan ke RSUD Engku Haji Daud', '2020-03-27 21:49:47', '00:00:00', 'Jumat, 27 Maret 2020.\r\nRSUD EHD menerima bantuan berupa suplement kesehatan dari Lembaga Amil Zakat Nasional\r\nYAKESMA KEPULAUAN RIAU yang diterima langsung oleh Bpk.Kasdan, AKS,M.Si mewakili\r\nmanajemen RSUD EHD.\r\nManajemen dan seluruh pegawai RSUD EHD mengucapkan terimakasih yang sebesar2 nya\r\nkepada YAKESMA atas bantuannya yang akan memberi semangat kepada petugas medis garda\r\nterdepan dalam melayani masyarakat khususnya menghadapi perkembangan virus CORONA\r\nyang sedang mewabah.Marilah kita doakan bersama agar wabah ini akan segera berakhir.\r\nSaat ini RSUD EHD masih sangat memerlukan bantuan APD seperti :masker bedah, masker N95,\r\nhand sanitizer, kacamata, dll.', '', 'resources/file_berita/IMG-20200327-WA0056.jpg'),
(26, 'RSUD Engku Haji Daud menerima bantuan berupa suplement kesehatan dari YAKESMA Kepulauan Riau', '2020-03-27 21:59:24', '00:00:00', 'Jumat,27 Maret 2020 RSUD EHD menerima bantuan berupa suplement kesehatan dari\r\nYAKESMA Kepulauan Riau, dalam hal ini penerimaan dilakukan oleh Bpk Kasdan , AKS, M.Si\r\nselaku Kepala Bagian Tata Usaha.\r\nSelanjutnya bantuan suplement tersebut langsung diserahkan kepada unit2 yng merupakan\r\ngarda terdepan dalam penerimaan kasus pasien Terjangkit virus Corona. Sebenarnya seluruh\r\nunit di Rumah Sakit ini merupakan garda terdepan karena kita semua memiliki tanggung jawab\r\nbersama dalam masalah penerimaan dan perawatan pasien, tetapi dalam penanganan pasien\r\nCovid-19 ini ada beberapa bagian yang terkait langsung yaitu : Bagian Pendaftaran, Instalasi\r\nGawat Darurat (IGD), Instalasi Rawat Jalan (Poliklinik), Ruang Rawat Isolasi dan ICU.\r\nKami harapkan unit unit terdepan ini melakukan tugasnya dengan profesional dan sepenuh hati\r\nsehingga masyarakat terlayani dengan sempurna.\r\nJuga ditambahkan bahwa saat ini RSUD EHD masih kekurangan masker bedah, masker N95,\r\nkacamata.Besar harapan kami masyarakat dapat membantu kami.Terimakasih\r\n#sehatdimulaidarisendiri #dirumahaja#promkes.id#pkrs', '', 'resources/file_berita/IMG-20200327-WA0061.jpg'),
(27, 'DDD', '2020-09-10 10:23:23', '00:00:00', '', '<iframe width=\"560\" height=\"315\" src=\"https://www.', '-'),
(28, 'Edukasi, skrining jiwa, dan pemeriksaan HIV AIDS terintegrasi dalam layanan kesehatan bagi karyawan ANMON Ressort Lagoi.', '2023-11-25 13:14:02', '00:00:00', 'RSJKO ENGKU HAJI DAUD melakukan kegiatan Edukasi dan Skrining Jiwa terintegrasi dengan Layanan Pemeriksaan HIV AIDS bagi karyawan ANMON Ressort Lagoy pada hari Kamis, 19 Oktober 2023. Kegiatan ini dilakukan dua sesi, sesi 1 : PKL .11.00 wib smd PKL 12.30, sedangkan sesi 2 dilakukakan pada PKL 14.00 wib -15.30 wib\r\nAdapun tujuan kegiatan ini adalah mengajak para karyawan ANMON untuk Membuang Stigma terhadap Orang dengan Gangguan Jiwa dan Orang dengan HIV AIDS. Edukasi diberikan oleh Ns.Yanti Girsang, M.Kep SpJiwa dan Ns.Erion S.Kep (Nakesdan 2023)\r\nTim Promosi Kesehatan RSJKO EHD memiliki Program SEJATI (Assesment dan Edukasi Jiwa Terintegrasi)\r\nDan untuk kali ini  Program Jiwa Berintegrasi dengan Program HIV AIDS, yang bertujuan untuk mengajak karyawan ANMON untuk menjadi motivator bagi diri sendiri, keluarga dan orang sekitar agar membuang stigma terhadap orang dengan HIV AIDS dan orang dengan masalah kejiwaan. \r\nPada paparan dijelaskan tentang apa, cara penularan, cara pencegahan dan  apa yang harus dilakukan. Dan materi jiwa yang diberikan adalah tentang Penanganan Anxiety (Kecemasan). Kegiatan ini akan terus dilakukan secara berkala dilakukan tim RSJKO EHD kepada semua kelompok masyarakat lainnya.', 'Dicky', 'resources/file_berita/skrining2.jpg'),
(29, 'Daftar Jadwal Dokter RSJKO Engku Haji Daud', '2023-11-25 19:13:26', '00:00:00', '', 'Dicky', 'resources/file_berita/Jadwal_okter.jpg'),
(30, 'RSJKU EHD Resmikan MCU One Day Service, Asessment Terintegrasi, Poliklinik Sub Spesialis Jiwa Anak & Remaja, serta Telekonsultasi Jiwa Online.', '2023-11-25 20:42:08', '00:00:00', 'RSJKO EHD RESMIKAN LAYANAN MCU ONE DAY SERVICE, ASESSMENT TERINTEGRASI, POLIKLINIK SUB SPESIALIS JIWA ANAK Gubernur Kepri, Ansar Ahmad meresmikan layanan Medical Check Up (MCU) One Day Service, Asessment Terintegrasi, Poliklinik Sub Spesialis Jiwa Anak dan Remaja dan Telekonsultasi Jiwa Online (Tejo) di Rumah Sakit Jiwa dan Ketergantungan Obat (RSJKO) Engku Haji Daud (EHD) Tanjunguban pada Kamis (2/11/2023). \r\nDalam peresmian itu, juga dilakukan penandatanganan komitmen bersama tentang dukungan layanan kesehatan jiwa berbasis masyarakat. Dalam sambutannya, Direktur RSJKO EHD Tanjunguban, dr Asep Guntur Sapari, MARS menyampaikan, RSJKO EHD Tanjunguban meresmikan layanan & REMAJA DAN TELEKONSULTASI JIWA ONLINE MCU One Day Service yang merupakan salah satu terobosan dari RSJKO EHD Tanjunguban untuk memenuhi kebutuhan pelayanan kesehatan bagi masyarakat khususnya karyawan perusahaan di kawasan industri Lobam maupun kawasan pariwisata Lagoi. \r\nTidak hanya layanan MCU One Day Service, RSJKO EHD Tanjunguban juga meresmikan layanan asessment terintegrasi, poliklinik sub spesialis jiwa anak dan remaja dan telekonsultasi jiwa online (Tejo). Sedangkan layanan telekonsultasi jiwa online, kata dia, bagi masyarakat yang tidak bisa datang ke poli rumah sakit namun ingin konsultasi masalah kejiwaan maka bisa dilakukan secara online.\r\n \"Tidak hanya sebatas penandatanganan komitmen bersama tapi diimplementasikan dengan pelayanan kesehatan terhadap masyarakat,\" kata dia. Gubernur juga menandatangani komitmen bersama tentang dukungan layanan kesehatan jiwa berbasis masyarakat bersama berbagai pihak mulai perwakilan sekolah, pemerintah kecamatan, perwakilan perusahaan di kawasan industri Lobam dan kawasan industri Lagoi, tenaga kesehatan hingga awak media. \r\nSelanjutnya, Gubernur Kepri, Ansar Ahmad memukul gong sebagai tanda diresmikannya layanan MCU One Day Service, Asessment Terintegrasi, Poliklinik Sub Spesialis Jiwa Anak dan Remaja dan Telekonsultasi Jiwa Online di RSJKO EHD Tanjunguban. Dalam kesempatan itu Gubernur Kepri, Ansar Ahmad juga meninjau ruang layanan MCU One Day Service dan menyempatkan untuk memeriksakan Kesehatan.\r\n', 'Dicky', 'resources/file_berita/MCU.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `iddokter` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `filefoto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`iddokter`, `nama`, `idkategori`, `filefoto`) VALUES
(1, 'DR. KURNIAKIN WALRISMAN SAHATA GIRSANG, SP. PD', 1, 'resources/file_dokter/dokter3.jpg'),
(2, 'DR. LENNY LASMARIA TAMBUNAN, SP. A', 2, 'resources/file_dokter/dokter4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `idgallery` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `filefoto` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`idgallery`, `idkategori`, `judul`, `filefoto`, `waktu`) VALUES
(1, 0, 'LEAFLET PENGGUNAAN ALAT KESEHATAN', 'resources/file_gallery/DEPAN.jpg', '2019-10-05 22:01:53'),
(3, 1, 'Leaflet Hipertensi', 'resources/file_gallery/1.jpg', '2019-10-08 09:15:35'),
(4, 1, 'Leaflet Hipertensi', 'resources/file_gallery/2.jpg', '2019-10-08 09:22:22'),
(5, 3, 'Pelayanan RSUD Engku Haji Daud', 'resources/file_gallery/FASILITAS.jpg', '2019-10-08 09:27:21'),
(6, 1, 'Penyerahan Sertifikat Paripurna Akreditasi SNARS Edisi 1 oleh KARS ', 'resources/file_gallery/snars.jpg', '2020-01-13 09:53:22'),
(7, 1, 'CORONA', 'resources/file_gallery/up.jpg', '2020-03-17 13:37:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `waktu`) VALUES
(1, 'Kesehatan', '2019-09-17 11:29:27'),
(2, 'Dokter', '2023-11-25 12:08:47'),
(3, 'Jenis Pelayanan ', '2019-10-12 16:09:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_dokter`
--

CREATE TABLE `kategori_dokter` (
  `id_kategori_dokter` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `namakategori_dokter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_dokter`
--

INSERT INTO `kategori_dokter` (`id_kategori_dokter`, `nama_kategori`, `waktu`, `kategori`, `namakategori_dokter`) VALUES
(1, 'Cardiology', '0000-00-00 00:00:00', '', ''),
(2, 'Spesialis Anak', '0000-00-00 00:00:00', '', ''),
(3, 'Spesialis Kandungan', '2019-10-06 22:53:16', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `name`, `password`) VALUES
(1, 'admin', 'Administrator', '7c222fb2927d828af22f592134e8932480637c0d');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`idartikel`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idberita`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`iddokter`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`idgallery`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `kategori_dokter`
--
ALTER TABLE `kategori_dokter`
  ADD PRIMARY KEY (`id_kategori_dokter`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `idartikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `iddokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `idgallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori_dokter`
--
ALTER TABLE `kategori_dokter`
  MODIFY `id_kategori_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
