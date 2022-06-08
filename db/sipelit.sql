-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Apr 2022 pada 16.37
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipelit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('pakar', '202cb962ac59075b964b07152d234b70', 'dr. Fadli');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `id` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`id`, `kode_gejala`, `kode_penyakit`, `bobot`) VALUES
(293, 1, 1, 3),
(294, 2, 1, 1),
(295, 3, 1, 3),
(296, 4, 1, 1),
(297, 5, 1, 5),
(298, 6, 1, 1),
(299, 3, 2, 3),
(300, 7, 2, 1),
(301, 8, 2, 1),
(302, 9, 2, 1),
(303, 10, 2, 3),
(306, 5, 3, 5),
(307, 63, 3, 1),
(308, 9, 3, 1),
(309, 10, 3, 3),
(310, 11, 3, 3),
(311, 12, 3, 1),
(312, 4, 4, 1),
(313, 13, 4, 1),
(314, 14, 4, 1),
(315, 5, 4, 5),
(316, 1, 4, 3),
(317, 3, 4, 3),
(318, 10, 4, 3),
(321, 15, 5, 3),
(326, 12, 6, 1),
(327, 13, 6, 1),
(328, 5, 6, 5),
(329, 14, 6, 1),
(330, 17, 6, 1),
(331, 12, 7, 1),
(332, 5, 7, 5),
(333, 14, 7, 1),
(334, 17, 7, 3),
(335, 64, 7, 3),
(337, 65, 8, 3),
(338, 66, 8, 1),
(339, 15, 8, 3),
(340, 67, 8, 1),
(341, 68, 8, 1),
(342, 69, 8, 1),
(343, 70, 8, 1),
(344, 71, 9, 3),
(345, 18, 9, 1),
(346, 5, 9, 5),
(347, 5, 52, 5),
(348, 19, 52, 1),
(349, 72, 52, 3),
(350, 16, 52, 3),
(351, 18, 52, 1),
(352, 14, 52, 1),
(353, 20, 10, 3),
(355, 16, 10, 3),
(356, 5, 10, 5),
(357, 21, 10, 1),
(358, 15, 10, 3),
(359, 1, 11, 3),
(360, 3, 11, 3),
(361, 5, 11, 5),
(362, 19, 11, 1),
(363, 73, 11, 1),
(364, 14, 12, 1),
(365, 18, 12, 1),
(366, 74, 12, 3),
(367, 11, 12, 3),
(368, 22, 12, 3),
(369, 23, 12, 1),
(370, 24, 12, 1),
(371, 9, 12, 1),
(372, 99, 12, 1),
(373, 25, 12, 1),
(374, 26, 12, 3),
(375, 75, 13, 3),
(376, 14, 13, 1),
(377, 64, 13, 3),
(378, 72, 13, 3),
(379, 76, 13, 1),
(380, 5, 13, 5),
(381, 13, 13, 1),
(382, 73, 53, 1),
(383, 12, 53, 1),
(384, 27, 53, 1),
(385, 28, 53, 1),
(386, 11, 14, 3),
(387, 29, 14, 1),
(388, 10, 14, 3),
(389, 9, 14, 1),
(390, 14, 14, 1),
(391, 10, 15, 3),
(392, 77, 15, 3),
(393, 15, 15, 3),
(394, 15, 16, 3),
(395, 30, 16, 5),
(396, 31, 16, 5),
(397, 32, 16, 3),
(398, 78, 16, 3),
(399, 79, 16, 1),
(400, 33, 16, 1),
(401, 80, 16, 3),
(402, 34, 17, 3),
(403, 81, 17, 3),
(404, 82, 17, 3),
(405, 15, 18, 3),
(406, 2, 18, 1),
(407, 31, 18, 5),
(408, 35, 18, 1),
(409, 3, 18, 3),
(410, 15, 19, 3),
(411, 9, 19, 1),
(412, 3, 19, 3),
(413, 83, 20, 1),
(414, 36, 20, 1),
(415, 84, 20, 3),
(416, 85, 21, 3),
(417, 37, 21, 3),
(418, 86, 22, 5),
(419, 38, 22, 3),
(420, 64, 23, 3),
(421, 72, 23, 3),
(422, 15, 23, 3),
(423, 87, 23, 5),
(424, 15, 24, 3),
(425, 5, 24, 5),
(426, 76, 24, 1),
(427, 77, 24, 3),
(428, 81, 24, 3),
(430, 39, 24, 1),
(431, 89, 24, 1),
(432, 14, 25, 1),
(433, 5, 25, 5),
(434, 88, 25, 1),
(435, 76, 25, 1),
(436, 13, 25, 1),
(437, 11, 26, 3),
(438, 22, 26, 3),
(439, 24, 26, 1),
(440, 99, 26, 1),
(441, 5, 27, 5),
(442, 89, 27, 1),
(443, 88, 27, 1),
(444, 11, 27, 3),
(445, 40, 27, 1),
(446, 41, 27, 1),
(447, 9, 27, 1),
(448, 14, 28, 1),
(449, 31, 28, 5),
(450, 5, 28, 5),
(451, 81, 28, 3),
(452, 13, 29, 1),
(453, 2, 29, 1),
(454, 12, 29, 1),
(455, 15, 29, 3),
(456, 5, 29, 5),
(457, 44, 30, 3),
(458, 5, 30, 5),
(459, 42, 30, 1),
(460, 64, 30, 3),
(461, 72, 30, 3),
(462, 81, 30, 3),
(463, 90, 30, 1),
(464, 11, 31, 3),
(465, 43, 31, 5),
(466, 31, 31, 5),
(467, 2, 31, 1),
(468, 10, 31, 3),
(470, 5, 32, 5),
(471, 91, 32, 3),
(472, 13, 33, 1),
(473, 15, 33, 3),
(474, 90, 33, 1),
(475, 92, 33, 3),
(476, 10, 34, 3),
(477, 5, 34, 5),
(478, 2, 34, 1),
(479, 13, 34, 1),
(480, 45, 34, 1),
(481, 9, 34, 1),
(482, 11, 34, 3),
(483, 26, 34, 3),
(484, 40, 34, 1),
(485, 46, 34, 1),
(486, 47, 34, 1),
(487, 48, 34, 1),
(488, 49, 34, 3),
(489, 1, 35, 3),
(490, 5, 35, 5),
(491, 10, 35, 3),
(492, 15, 35, 3),
(493, 2, 35, 1),
(496, 13, 35, 1),
(497, 5, 36, 5),
(498, 42, 36, 1),
(499, 50, 36, 1),
(500, 12, 36, 1),
(501, 10, 36, 3),
(502, 2, 37, 1),
(503, 13, 37, 1),
(504, 5, 37, 5),
(505, 14, 37, 1),
(506, 27, 37, 1),
(507, 10, 37, 3),
(508, 51, 37, 1),
(509, 52, 37, 1),
(510, 2, 38, 1),
(511, 13, 38, 1),
(512, 5, 38, 5),
(513, 93, 38, 3),
(514, 15, 39, 3),
(515, 10, 39, 3),
(516, 14, 39, 1),
(517, 17, 39, 1),
(518, 19, 39, 1),
(519, 5, 39, 5),
(520, 2, 39, 1),
(521, 2, 40, 1),
(522, 15, 40, 3),
(523, 14, 40, 1),
(524, 17, 40, 1),
(525, 13, 40, 1),
(526, 53, 40, 1),
(527, 12, 40, 1),
(528, 5, 40, 5),
(529, 2, 41, 1),
(530, 5, 41, 5),
(531, 12, 41, 1),
(532, 54, 41, 1),
(533, 13, 41, 1),
(534, 2, 42, 1),
(535, 13, 42, 1),
(536, 15, 42, 3),
(537, 6, 42, 1),
(538, 82, 42, 3),
(539, 18, 42, 1),
(540, 19, 42, 1),
(541, 17, 43, 1),
(542, 3, 43, 3),
(543, 82, 43, 3),
(544, 81, 43, 3),
(545, 94, 43, 5),
(546, 5, 44, 5),
(547, 13, 44, 1),
(548, 6, 44, 1),
(549, 2, 45, 1),
(550, 13, 45, 1),
(551, 15, 45, 3),
(552, 76, 45, 1),
(553, 95, 45, 3),
(554, 11, 45, 3),
(555, 10, 45, 3),
(556, 5, 45, 5),
(557, 23, 45, 1),
(558, 99, 45, 1),
(559, 9, 45, 1),
(560, 5, 46, 5),
(561, 1, 46, 3),
(562, 2, 46, 1),
(563, 56, 46, 1),
(564, 10, 46, 3),
(565, 6, 46, 1),
(566, 2, 47, 1),
(567, 16, 47, 3),
(568, 31, 47, 5),
(569, 58, 47, 3),
(570, 2, 48, 1),
(571, 57, 48, 1),
(572, 14, 48, 1),
(573, 10, 48, 3),
(574, 31, 48, 5),
(575, 59, 48, 3),
(576, 60, 49, 3),
(577, 61, 49, 5),
(578, 30, 49, 5),
(579, 96, 49, 3),
(580, 59, 49, 3),
(581, 18, 50, 1),
(582, 97, 50, 5),
(583, 9, 51, 1),
(584, 62, 51, 5),
(585, 98, 51, 5),
(586, 5, 33, 5),
(604, 16, 5, 3),
(605, 12, 5, 1),
(606, 10, 5, 1),
(607, 72, 5, 3),
(608, 70, 5, 3),
(609, 2, 5, 3),
(610, 1, 32, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(1, 'Benjolan kecil dan bulat'),
(2, 'Berwarna merah / kekuningan / ungu / kecoklatan / hitam'),
(3, 'Memiliki nanah'),
(4, 'Berada diarea tubuh yang ditumbuhi rambut'),
(5, 'Gatal'),
(6, 'Perih'),
(7, 'Berwarna merah dengan kepala putih'),
(8, 'Sensitif'),
(9, 'Terasa nyeri'),
(10, 'Terjadi pembengkakan'),
(80, 'Hilangnya jari-jemari'),
(79, 'Terjadi perubahan bentuk wajah'),
(78, 'Terjadi pada siku dan lutut'),
(77, 'Terjadi pada leher dan ketiak'),
(76, 'Terjadi pada area wajah'),
(75, 'Terjadi pada bayi dan anak-anak'),
(74, 'Menyerupai luka bakar'),
(72, 'Terjadi di area kaki'),
(70, 'Timbul bau tidak sedap pada kuku'),
(69, 'Kuku terpisah dengan kulit jari tempatnya menempel'),
(68, 'Kuku menjadi kasar dan rapuh'),
(67, 'Kuku berubah warna menjadi putih, kuning atau kehitaman'),
(66, 'Kuku menebal'),
(65, 'Terjadi di area kuku'),
(64, 'Terjadi di area tangan'),
(63, 'Kulit kepala memerah dan botak'),
(62, 'Spasme otot'),
(61, 'Terlihat hangus'),
(60, 'Tampak putih dan kasar'),
(59, 'Terbakar karena api'),
(58, 'Terbakar akibat sinar matahari'),
(57, 'Kulit lecet'),
(56, 'Bisa membesar hingga 10 cm'),
(55, 'Berbentuk bulat atau bujur'),
(54, 'Timbul ketombe akibat kulit yang terkelupas'),
(53, 'Kulit menebal'),
(52, 'Luka terbuka yang berkerak'),
(51, 'Mengalami sariawan'),
(50, 'Terjadi perubahan pada warna kulit'),
(49, 'Sesak nafas'),
(47, 'Jantung berdebar'),
(48, 'Sulit menelan dan berbicara'),
(45, 'Kulit terasa kaku dan kesemutan'),
(42, 'Sensasi tertusuk'),
(43, 'Pembengkakan limfa atau kelenjar getah bening'),
(40, 'Terasa pusing'),
(39, 'Awalnya keras bila diraba, kemudia melunak seiring waktu'),
(38, 'Infeksi sudah meluas'),
(37, 'Mengalami pendarahan'),
(36, 'Luka tidak teratur'),
(34, 'Munculnya luka yang tidak terasa sakit'),
(33, 'Sering mengalami mimisan'),
(31, 'Terasa sakit pada kulit'),
(32, 'Terjadi pembesaran pembuluh darah'),
(30, 'Mati rasa, seperti kehilangan sensi sentuhan'),
(27, 'Kulit pecah-pecah'),
(26, 'Mual dan muntah'),
(25, 'Nafsu makan menurun'),
(24, 'Pilek dan batuk'),
(22, 'Kelelahan'),
(23, 'Sakit tenggorokan'),
(21, 'Terlihat mengkilap'),
(20, 'Bercak putih terang'),
(19, 'Kulit terasa terbakar/panas'),
(18, 'Mengelupas'),
(17, 'Mengeluarkan cairan'),
(16, 'Kulit terasa kering'),
(15, 'Kulit bentol-bentol/bintik-bintik'),
(12, 'Bersisik di area yang terkena penyakit'),
(13, 'Terdapat ruam atau kerak melingkar di area kulit'),
(11, 'Demam'),
(73, 'Terjadi pada lipatan kulit'),
(71, 'Terjadi pada area selangkangan'),
(46, 'Pingsan'),
(44, 'Tonjolan kemerahan di kulit yang berkelok-kelok seperti ular'),
(41, 'Terasa lemas'),
(35, 'Bertekstur keras berupa benjolan yang terbentuk di bawah permukaan kulit'),
(29, 'Menggigil'),
(28, 'Kulit terlihat keriput'),
(14, 'Kulit melepuh'),
(81, 'Terjadi di area kelamin'),
(82, 'Terjadi di area mulut'),
(83, 'Robekan pada kulit akibat benda tumpul'),
(84, 'Tampak jembatan jaringan kedua tepi luka'),
(85, 'Luka tusuk pada kulit akibat benda tajam'),
(86, 'Luka tembus yang merobek dua sisi tubuh karena senjata tajam'),
(87, 'Kutil pada tangan sering terlihat lebih besar'),
(88, 'Terjadi pada punggung'),
(89, 'Terjadi pada perut'),
(90, 'Terjadi pada bokong'),
(91, 'Terjadi pada kepala yang memiliki rambut'),
(92, 'Terjadi pada bagian sela-sela jari, area pinggul dan sekitar payudara'),
(93, 'Terjadi pada kulit wajah simetris dikedua pipi, dahi dan kepala'),
(94, 'Kelainan diselaput lendir mata'),
(95, 'Berada di tubuh hingga telapak tangan dan kaki'),
(96, 'Luka bakar memiliki lebar 5-7 cm'),
(97, 'Diakibatkan bahan kimia seperti alkali dan asam'),
(98, 'Karena sengatan listrik'),
(99, 'Mata merah dan perih');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_konsultasi`
--

CREATE TABLE `hasil_konsultasi` (
  `id_konsultasi` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `konsultasi` int(10) NOT NULL,
  `kode_gejala` int(3) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_konsultasi`
--

INSERT INTO `hasil_konsultasi` (`id_konsultasi`, `id_user`, `konsultasi`, `kode_gejala`, `waktu`) VALUES
(346, 65, 7, 2, '2022-04-18 21:45:39'),
(345, 65, 7, 1, '2022-04-18 21:45:39'),
(344, 63, 6, 2, '2022-04-18 21:44:47'),
(343, 63, 6, 1, '2022-04-18 21:44:47'),
(342, 62, 5, 72, '2022-04-18 13:56:14'),
(341, 62, 5, 70, '2022-04-18 13:56:14'),
(340, 62, 5, 16, '2022-04-18 13:56:14'),
(339, 62, 5, 2, '2022-04-18 13:56:14'),
(338, 61, 4, 14, '2022-04-14 06:36:12'),
(337, 61, 4, 13, '2022-04-14 06:36:12'),
(336, 61, 4, 12, '2022-04-14 06:36:12'),
(335, 61, 4, 11, '2022-04-14 06:36:12'),
(334, 61, 4, 10, '2022-04-14 06:36:12'),
(333, 61, 4, 8, '2022-04-14 06:36:12'),
(332, 61, 4, 7, '2022-04-14 06:36:12'),
(331, 61, 4, 4, '2022-04-14 06:36:12'),
(330, 61, 4, 3, '2022-04-14 06:36:12'),
(329, 61, 4, 2, '2022-04-14 06:36:12'),
(328, 61, 4, 1, '2022-04-14 06:36:12'),
(327, 60, 3, 5, '2022-04-14 06:02:55'),
(326, 60, 3, 4, '2022-04-14 06:02:55'),
(325, 60, 3, 3, '2022-04-14 06:02:55'),
(324, 60, 3, 2, '2022-04-14 06:02:55'),
(323, 60, 3, 1, '2022-04-14 06:02:55'),
(322, 59, 2, 72, '2022-04-14 05:53:52'),
(321, 59, 2, 70, '2022-04-14 05:53:52'),
(320, 59, 2, 16, '2022-04-14 05:53:52'),
(319, 59, 2, 2, '2022-04-14 05:53:52'),
(318, 58, 1, 72, '2022-04-14 05:49:37'),
(317, 58, 1, 70, '2022-04-14 05:49:37'),
(316, 58, 1, 16, '2022-04-14 05:49:37'),
(315, 58, 1, 2, '2022-04-14 05:49:37'),
(347, 65, 7, 3, '2022-04-18 21:45:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keterangan`
--

CREATE TABLE `keterangan` (
  `id_keterangan` int(10) NOT NULL,
  `id_konsultasi` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nilai` double NOT NULL,
  `kode_penyakit` varchar(3) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keterangan`
--

INSERT INTO `keterangan` (`id_keterangan`, `id_konsultasi`, `nama`, `nilai`, `kode_penyakit`, `tgl_konsultasi`) VALUES
(1, 1, 'Asdar', 42.85, '52', '2022-04-14 05:49:38'),
(2, 2, 'Coba', 70.58, '5', '2022-04-14 05:53:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(4) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `definisi` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `definisi`, `solusi`) VALUES
(1, 'Folikulitis', 'FolikulitisÂ adalah peradangan pada folikel rambut. Folikel rambut ini merupakan lubang kecil yang terdapat di kulit dan merupakan tempat rambut tumbuh. Peradangan pada folikel ini merupakan salah satu jenis penyakit kulit yang umum ditemukan. Folikulitis tampak mirip dengan jerawat, yaitu adanya benjolan kecil, bulat, berwarna merah atau kekuningan karena adanya nanah. Peradangan ini hanya ditemukan pada area tubuh yang ditumbuhi rambut. Bagian yang umum terkena adalah lengan, kaki, bokong, dan ketiak (Klikdokter, 2021).\r\n', 'Cucilah area yang terinfeksi folikulitis secara berkala dengan sabun antibakteri, Rendam area yang terinfeksi dengan air hangat dan aluminium asetat, Obati dengan oatmeal, dan Cobalah kompres sederhana dengan air garam. '),
(2, 'Furunkel/Karbunkel', 'Penyakit Furunkel atau bisul adalah abses kulit yang mempengaruhi folikel rambut dan jaringan sekitarnya. Karbunkel adalah kelompok furunkel yang bergabung bersama di bawah kulit. Mereka mempengaruhi lapisan yang lebih dalam, dan dapat menyebabkan jaringan parut. Gejala dari penyakit ini seperti ilustrasi atau bentuk bisul dengan kepala putih, tonjolan bengkak bulat yang mungkin berisi nanah berwarna terang, benjolan bulat, merah, bengkak yang tumbuh secara bertahap, lembut dan sensitive, mengeluarkan nanah berwarna keputihan yang terbuat dari jaringan mati dan sel darah, bisul yang membentuk kelompok, bisul dapat muncul dimana saja pada tubuh, termasuk paha bagian dalam, dan kulit di sekitarnya meradang dan lembut (Klinikpandawa, 2021).\r\n', 'Cegah infeksi dengan membersihkan luka secara menyeluruh, Hilangkan kotoran dan bakteri di area sekitar luka dengan sabun dan waslap yang bersih, lembut, dan basah, Oleskan salep antibiotik atau larutan antiseptik pada luka sesuai petunjuk pemakaian yang tercantum di kemasan produk, Balut luka dengan perban bersih dan ganti perban dengan yang baru secara rutin dan Cucilah tangan dengan menyeluruh sebelum maupun sesudah menangani luka dan buang perban serta kasa bekas dengan benar.'),
(3, 'Tinea Kapitis', 'Bercak yang terasa gatal di kepala, serta kulit kepala memerah, botak dan bersisik di area yang terkena kurap. Gejala lain yang mungkin timbul adalah nyeri di kulit kepala, pembengkakan kelenjar getah bening di kepala, dan demam ringan (Willy, 2018).\r\n', 'Pengobatan menggunakan sampo antijamur bisa dengan sampo yang mengandung selenium sulphide povidone-iodine atau ketoconazole. '),
(4, 'Tinea Barbe', 'Tinea barbae adalah infeksi jamur pada kulit yang berambut di wajah dan leher, tepatnya area kumis dan janggut. Kondisi ini hanya menyerang pria dewasa dan biasanya berawal dari kontak dengan binatang ternak. Tinea barbae dapat berupa infeksi ringan di lapisan terluar kulit. Meski demikian, infeksi yang lebih dalam dengan peradangan yang berat lebih sering terjadi. Tinea barbae yang ringan biasanya ditandai dengan kerak melingkar kemerahan (ringwon) yang melepuh dan terasa gatal di permukaan kulit. Namun, tinea barbae ringan juga terkadang tidak menimbulkan gejala apa pun. Pada infeksi yang lebih dalam, tinea barbae ditandai dengan kemunculan benjolan merah, bengkak, bernanah, dan berkerak. Benjolan tersebut tidak menimbulkan rasa gatal atau sakit yang terlalu berat, tetapi dapat menyebabkan rambut di area yang terinfeksi mudah rontok (Nareza, 2021).\r\n', 'Kalau kasusnya ringan, penggunaan obat krim, salep atau bedak antijamur bisa menjadi pilihan. Namun, selalu ingat bahwa dosis dan aturan pakainya harus sesuai dengan anjuran dokter. Apabila infeksi sudah hilang, pengobatan harus tetap dilakukan hingga tujuh hari ke depan supaya kontaminasi jamur benar-benar hilang.'),
(5, 'Tinea Fasialis', 'Tinea fasialis merupakan penyakit kulit pada wajah yang tampak sebagai bercak kemerahan dan bersisik disertai rasa gatal. Kondisi ini tidak hanya dapat menganggu penampilan, namun juga bisa semakin parah dan menular ke orang lain bila tidak segera ditangani. Tinea fasialis atau kurapÂ pada wajah disebabkan oleh jamur yang juga dapat menyebabkan infeksi kulit di bagian tubuh lain, seperti tangan, kaki, dan badan. Tinea fasialis dapat menimbulkan beberapa gejala seperti wajah terasa gatal dan tampak muncul bercak kemerahan, gatal di wajah semakin parah jika terkena sinar matahari atau berkeringat, bentol atau bisul di sekitar bercak pada wajah dan kulit wajah menjadi kering dan bersisik (Adrian, 2020).\r\n', 'Gunakan Obat antijamur topikal, Obat antijamur oles atau topikal biasanya tersedia dalam bentuk krim atau salep. Dokter umumnya akan meresepkan salep antijamur, seperti ketoconazole, miconazole,  atau imidazole, untuk mengatasi infeksi jamur pada wajah. Salep antijamur tersebut biasanya digunakan 2 kali sehari. Obat antijamur oral\r\nUntuk mengatasi tinea fasialis yang parah atau tidak membaik dengan penggunaan obat antijamur oles, dokter mungkin akan meresepkan obat antijamur tablet yang diminum, seperti terbinafine dan itraconazole.'),
(6, 'Tinea Korporis', 'Ruam kemerahan dengan bagian tepi yang menyerupai cincin. Selain memiliki tekstur bersisik, ruam juga terasa gatal, serta bisa melepuh dan mengeluarkan cairan (Willy, 2018)\r\n', 'Obat Antijamur, Penggunaan obat krim antijamur yang berbentuk krim atau sabun mandi dapat mengobati kurap. Biasanya dengan rutin mengoleskan krim antijamur perlahan penyakit kurap akan menghilang dan membaik.'),
(7, 'Tinea Manum', 'Tinea manum merupakan infeksi jamur di tangan. Seseorang bisa terkena infeksi jamur di tangannya jika bersentuhan dengan penderita tinea manum. Selain itu, tinea manum juga dapat menular melalui kontak fisik dengan hewan atau tanah yang terkontaminasi jamur. Infeksi jamur pada tangan bisa dikenali dari beberapa gejala seperti muncul bercak berbentuk lingkaran kemerahan dan bersisik, terutama di telapak tangan dan sela-sela jari. Kulit tangan terasa gatal dan kering. Terjadi penebalan kulit (hiperkeratosis)Â pada tangan yang terinfeksi jamur. Muncul lepuhan atau bentol berisi cairan bening pada tangan (Adrian, 2020).\r\n', 'Obat antijamur oles (topikal) Obat antijamur topikal, seperti clotrimazole, ketoconazole, dan miconazole, tersedia dalam bentuk krim atau salep. Obat antijamur topikal digunakan dengan cara dioleskan pada kulit yang terinfeksi jamur, umumnya sebanyak 2 kali sehari.\r\n'),
(8, 'Tinea Unguium', 'Jamur kuku adalah infeksi jamur yang terjadi pada kukuÂ tangan maupunÂ kuku kaki.Â Kondisi yang juga dikenal dengan namaÂ tinea unguiumÂ atauÂ onkomikosis ini dapat dialami oleh siapa saja, terutama lansia. Umumnya, jamur kuku bukanlah kondisi yang berbahaya.Â Jamur kuku atau tinea unguium dapat menyerang kuku tangan, namun kondisi ini lebih sering muncul pada kuku kaki. Beberapa kelainan pada kuku bisa menandakan adanya jamur kuku seperti kuku menebal, muncul bintik-bintik putih pada kuku, kuku berubah warna menjadi putih, kuning kecoklatan, atau kehitaman, kuku menjadi kasar dan rapuh, kuku terpisah dengan kulit jari tempatnya menempel, dan timbul bau yang tidak sedap pada kuku (Willy, 2019).\r\n', 'Obat antijamur yang diminum dapat menyembuhkan infeksi lebih cepat daripada obat oles. Contoh obat ini adalah terbinafine dan itraconazole. Obat antijamur diminum selama 6-12 minggu, namun dibutuhkan waktu lebih dari 4 bulan hingga kondisi kuku kembali normal.'),
(9, 'Tinea Kruris', 'Kulit di sekitar selangkangan memerah, mengelupas, dan terasa gatal atau seperti terbakar (Willy, 2018)\r\n', 'Membersihkan kulit selangkangan dengan sabun dan air hangat, lalu mengeringkannya.\r\nMenggunakan krim antijamur yang dijual bebas, seperti krim berisi clotrimazole atau miconazole.\r\nSelain mengobati kulit selangkangan, obati juga kulit di area lain yang mengalami infeksi jamur, misalnya kutu air.'),
(10, 'Pityriasis Versikolor', 'Pityriasis versikolor atau Penyakit panu atau tinea versikolor adalah infeksi jamur malasezia furfur yang ditemukan di kulit dengan tanda bercak putih hipopigmentasi. Pada dasarnya infeksi ini tidak memiliki makna klinis, tetapi secara tampakan akan merubah warna kulit. Sebenarnya banyak mikroba dan mikroorganisme tinggal di kulit (termasuk malasezia), untuk membantu kulit melindungi dari infeksi dan patogen lain yang menjadi penyebab penyakit. Gejala utama dari penyakit ini adalah adanya patch diskolorisasi pada kulit yang muncul di tangan, dada, leher dan punggung. Patch ini dapat berupa putih terang (bentuk paling sering), atau gelap mengelilingi kulit, berwarna pink, kemerahan dan kecoklatan. Patch biasanya kering, gatal dan mengkilap dan sedikit menonjol (Santiko, 2017).\r\n', 'Gunakan obat antijamur yang sering digunakan adalah kotrimazol, mikonazol, selenium sulfida dan terbinafin.'),
(11, 'Kandidosis Mukokutan', 'Jenis infeksi ini umumnya terjadi di lipatan kulit, dengan gejala seperti benjolan berisi nanah, serta ruam yang disertai gatal dan rasa terbakar. (Willy, 2018).\r\n', 'Untuk kandidiasis yang terjadi di area mulut, gunakan obat antijamur berbentuk obat kumur, tablet, atau kapsul. Sedangkan untuk infeksi yang terjadi di area kelamin, pengobatan dapat dilakukan dengan obat antijamur berbentuk krim atau tablet. Sementara itu, pengobatan kandidiasis pada kulit disarankan untuk menggunakan salep, krim, atau bedak antijamur.'),
(12, 'Necrolysis Epidermal Toxic', 'Nekrolysis Epidermal Toxic (NET) adalah reaksi hipersensitivitas pada kulit yang umumnya dipicu oleh pemakaian obat. Nekrolisis epidermal toxic dapat ditandai denganÂ kulitÂ yang melepuh dan mengelupas, menyerupai luka bakar. Gejala nekrolisis epidermal toxic umumnya diawali dengan gejala yang menyerupai infeksi saluran pernapasanÂ bagian atas atau flu. Gejala ini bisa bertahan selama 1 hari hingga 3 minggu. Beberapa gejala tersebut adalah demam melebihi 38 derajat Celcius, kelelahan, sakit tenggorokan, pilek dan batuk, nyeri ototÂ dan sendi, mata merah dan perih (konjungtivitis), nafsu makan menurun, mual dan muntah (Nareza, 2021).\r\n', 'Perlu penanganan dokter.'),
(13, 'Impetigo', 'Impetigo adalah infeksi kulit menular yang banyak dialami oleh bayi dan anak-anak. Infeksi ini ditandai dengan kemunculan bercak merah dan lepuhan pada kulit, terutama di bagian wajah, tangan, dan kaki. Bercak kemerahan yang terasa gatal di sekitar mulut dan hidung, namun tidak menimbulkan nyeri. Bercak tersebut dapat menjadi luka jika digaruk. Beberapa gejalanya seperti kulit di sekitar luka mengalami iritasi, terbentuknya koreng berwarna kuning kecokelatan di sekitar luka, koreng akan meninggalkan bekas kemerahan pada kulit dan dapat hilang tanpa bekas dalam jangka waktu beberapa hari atau minggu (Willy, 2019).\r\n', 'Salep atau krim antibiotik, seperti mupirocin digunakan jika infeksi yang terjadi tergolong ringan, hanya menyerang satu area tubuh, dan belum menyebar terlalu luas. Sebelum mengoleskan krim atau salep antIbiotik, dianjurkan untuk merendam luka dengan air hangat atau menggunakan kompres hangat untuk melunakkan koreng.'),
(14, 'Erisipelas', 'Erisipelas adalah infeksi bakteri di lapisan atas kulit. Infeksi ini mirip dengan infeksi kulit lain, yakni selulitis, dimana selulitis terjadi infeksi di lapisan bawah kulit. Keduanya memiliki tampakan yang hampir sama dan diterapi dengan hampir sama pula. Gejala dari infeksi ini meliputi gejala khas, meliputi demam, menggigil, merasa tidak enak badan, terdapat kemerahan di kulit, dengan membengkak, nyeri dan peninggian di area lesi kulit, terdapat blister di area yang terinfeksi, dan pembengkakan kelenjar, ketika erisipelas ini mengenai wajah, pembengkakan meliputi daerah hidung dan kedua pipi (Santiko, 2021).\r\n', 'Pengobatan erisipelas yang utama adalah dengan pemberian antibiotik karena merupakan infeksi bakteri. Golongan penisilin, seperti dikloksasilin.'),
(15, 'Skrofuloderma', 'SkrofulodermaÂ merupakan salah satu jenis tuberkulosis kulit yang ditandai dengan adanya nodul atau bintil pada kulit yang terletak di atas kelenjar getah bening, tulang, atau persendian yang terinfeksi. Skrofuloderma sering kali diawali dengan adanya pembesaran pada kelenjar getah bening. Umumnya, benjolan yang timbul tidak disertai rasa nyeri. Ukuran skrofuloderma juga dapat bervariasi dari kecil hingga besar. Seiring dengan berjalannya waktu, ukuran dapat semakin besar. dan jumlah pembesaran dapat semakin banyak, yang kemudian dapat pecah dan menjadi ulkus. Bagian tubuh yang paling sering mengalami skrofuloderma adalah leher dan ketiak (Klikdokter, 2021).\r\n', 'Serupa dengan penanganan tuberkulosis, penanganan pada pasien dengan skrofuloderma umumnya dilakukan dengan obat antituberkulosis. Pengobatan tersebut melibatkan kombinasi beberapa antibiotik. Obat-obatan tersebut harus diminum dengan aturan yang ketat, selama periode waktu yang lama, yakni enam bulan hingga satu tahun.'),
(16, 'Lepra', 'Penyakit lepra, yang juga dikenal dengan sebutan penyakit kustaÂ atau Morbus Hansen, adalah penyakit infeksi kronis yang disebabkan oleh Mycobakterium Leprae. Penyakit ini menyerang saraf tepi (primer), kulit, dan jaringan tubuh lainnya kecuali susunan saraf pusat. Serangan pada sistem saraf akan menyebabkan penderitanya mati rasa. Gejala penyakit lepra yang dapat dikenali seperti bentol kemerahan. mati rasa, seperti kehilangan sensasi sentuhan dan rasa sakit pada kulit. Terjadi pembesaran pembuluh darah, biasanya di sekitar lutut dan siku. Terjadi perubahan bentuk wajah. Sering mengalami mimisan dan hilangnya jari jemari (Klikdokter, 2021)\r\n', 'Pengobatan penyakit lepra, dokter akan memberikan obat-obatan antibiotik sesuai dengan jenis lepra yang diderita. Pengobatan diberikan secara teratur selama 6 bulan dan diselesaikan dalam waktu maksimal 19 bulan.'),
(17, 'Sifilis', 'Raja singa atau sifilis adalah penyakit menular seksual yang disebabkan oleh bakteri. Gejala sifilis diawali dengan munculnya luka yang tidak terasa sakit di area kelamin, mulut, atau dubur. Gejala muncul antara 10 hingga 90 hari setelah terpapar bakteri penyebab sifilis. Awalnya, gejala yang muncul berupa luka kecil pada kulit (chancre) yang tidak terasaÂ sakit. Luka ini timbul pada lokasi bakteri masuk ke dalam tubuh, biasanya di area sekitar kelamin. Selain di area kelamin, luka juga dapat muncul di area mulut atau dubur. Tidak hanya muncul di bagian luar, luka akibat sifilis ini, juga bisa muncul di bagian dalamÂ vagina, dubur, atau mulut sehingga tidak terlihat. Karena luka tersebut bisa tidak menimbulkan rasa sakit, penderita bisa tidak menyadari terkena sifilis (Willy, 2019).\r\n', 'Pengobatan utama sifilis atau raja singa adalah dengan suntikan antibiotik penisilin. Dosis penisilin berbeda-beda tiap penderita, tergantung kondisinya. Untuk mengatasi sifilis yang masih di tahap awal, penyuntikan penisilin cukup satu kali (dosis tunggal). Sedangkan pada sifilis tahap lanjut, diperlukan dosis tambahan sesuai petunjuk dokter.'),
(18, 'Acne Vulgaris', 'Jerawat atau acne vulgaris merupakan masalah kulit yang sering dialami hampir semua orang. Apalagi pada saat puber atau hormon seseorang sedang naik-naiknya. Tak hanya dialami oleh remaja saja tapi orang dewasa pun masih bisa mengalami masalah kulit ini. Begitu juga dengan jenis kelamin, baik wanita maupun pria bisa mendapati jerawat ini. Gejalanya seperti bintik kecil yang di ujungnya terdapatÂ nanah. Bintik kecil ini bewarna kemerahan dan biasanya terasa menyakitkan bila disentuh. Cenderung bertekstur keras berupa benjolan yang terbentuk di bawah permukaan kulit, dan kadang terasa menyakitkan. Benjolan besar berisi nanah yang terasa menyakitkan. Hampir sama dengan nodul, kista ini pun terbentuk di bawah permukaan kulit, bila tersentuh agak terasa nyeri (Klinikpandawa, 2021).\r\n', 'Mencuci wajah dengan air. Gunakan cendana dan air mawar. Dan Makanan bernutrisi'),
(19, 'Hidradenitis Suppurativa', 'HidradenitisÂ suppurativaÂ adalah penyakit yang ditandai dengan timbulnya benjolan kecil sebesar kacang di bawah kulit. Benjolan dapat terasa nyeri dan berisi nanah. Kondisi ini sering disebut juga denganÂ acne inversa. Gejala diawali dengan munculnya benjolan seperti jerawat atau lepuhan yang terasa keras dan meradang, serta dapat menimbulkan rasa sakit. Benjolan dapat hilang dalam 10â€“30 hari, tetapi juga bisa bertambah parah dan menjadi absesÂ yang terasa nyeri dan mengeluarkan nanah yang bau ketika pecah. Pada kondisi yang lebih serius, gejala dapat disertai dengan timbulnya benjolan berwarna hitam yang terlihat seperti komedo. Meski sudah ditangani dan telah hilang, benjolan dapat timbul kembali dan meninggalkan bekas luka atau jaringan parut permanen (Tamin, 2020).\r\n', 'Pemakaian antiseptik yang memiliki kandungan chlorhexidine juga disarankan untuk digunakan setiap hari pada area yang sakit. '),
(20, 'Vulnus Laseratum', 'Vulnus laceratum adalah jenis luka forensik yang ditimbulkan dari trauma benda tumpul yang memicu teregangnya kulit ke satu arah dan bila batas elastisitas kulit terlampaui, maka memicu robekan pada kulit. Gejalanya seperti bentuk luka tidak teratur, tampak jembatan jaringan kedua tepi luka dan bentuk dasar luka tidak beraturan (Santiko, 2021)\r\n', 'Segera hentikan perdarahan, Tentukan plester di titik yang tepat, dan Jaga kebersihan luka dan bagian tubuh di sekitarnya.'),
(21, 'Vulnus Punctum', 'Vulnus punctum atau biasa juga dikenal dengan luka tusuk merupakan bentuk khusus dari trauma yang tembus ke kulit. Hal ini disebabkan oleh pisau atau benda runcing lainnya. Perawatan dari luka tusuk sangat banyak dan tergantung dengan tingkat keparahan cedera. Ciri-cirinya terdapat bekas luka tusuk dan mengalami pendarahan (Chatdokter, 2021).\r\n', 'Hal pertama ketika melihat pasien luka tusuk adalah jangan asal menarik benda yang menusuk, karena bisa mengakibatkan perlukaan tempat lain ataupun mengenai pembuluh darah. Bila benda yang menusuk sudah dicabut, maka yang harus kita lakukan adalah membersihkan luka dengan cara menggunakan H2O2, kemudian didesinfktan. Lubang luka ditutup menggunakan kasa, namun dimodifikasi sehingga ada aliran udara yang terjadi.'),
(22, 'Vulnus Perforatum/Penetratum', 'Vulnus perforatum/penetratum adalah jenis vulnus berupa luka tembus yang merobek dua sisi tubuh karena senjata tajam atau proses infeksi yang sudah meluas (Subarkah, 2020)\r\n', 'Hal pertama ketika melihat pasien luka tusuk adalah jangan asal menarik benda yang menusuk, karena bisa mengakibatkan perlukaan tempat lain ataupun mengenai pembuluh darah. Bila benda yang menusuk sudah dicabut, maka yang harus kita lakukan adalah membersihkan luka dengan cara menggunakan H2O2, kemudian didesinfktan. Lubang luka ditutup menggunakan kasa, namun dimodifikasi sehingga ada aliran udara yang terjadi.'),
(23, 'Veruka Vulgaris', 'Veruka vulgaris adalah benjolan kutil tersering yang tumbuh jinak dan disebabkan infeksi virus HPV (Human Papiloma virus tipe 2 dan tipe 4). Karateristik dari kutil veruka vulgaris adalah benjolan dengan permukaan kasar, dan terlihat pada tangan dan kaki. Kutil ini dapat terjadi pada permukaan jari belakang, tumit dan lutut. Benjolan juga dapat muncul berupa blister kecil, yang terlihat di tangan dan permukaan lain kaki. Biasanya benjolan sedikit meninggi, tepi keras dan halus pada permukaan tengah. Terdapat gradasi warna lebih terang atau lebih gelap di sekitar kulit. Untuk ukuran, biasanya kutil pada tangan sering terlihat lebih besar, dan seperti bunga kol tipis (Santiko, 2017).\r\n', 'Perlu penanganan khusus dokter.\r\n'),
(24, 'Molluscum Contagiosum', 'PenyakitÂ molluscum contagiosumÂ adalah infeksi virus yang menyebabkan tumbuhnya bintil di kulit. Bintil biasanya tidak terasa nyeri, namun menimbulkan rasa gatal. Molluscum contagiosum dapat dikenali dengan melihat bintil pada permukaan kulit. Bintil-bintil tersebut bisa berkumpul di satu area atau tersebar di beberapa bagian tubuh, dengan karakteristik seperti berukuran kecil, seperti biji kacang hijau atau kacang tanah. Muncul di wajah, leher, ketiak, perut, kelamin, dan tungkai. Berwarna seperti warna kulit, putih, atau merah muda. Ada titik kecil berwarna putih kekuningan di tengah bintil. Jumlah bintil yang tumbuh biasanya sekitar 20-30, tapi pada orang dengan kekebalan tubuh rendah, jumlahnya bisa lebih banyak. Awalnya keras bila diraba, kemudian melunak seiring waktu. Dan tidak menimbulkan nyeri, namun terasa gatal (Willy, 2019).\r\n', 'Moluskum kontagiosum akan sembuh dengan sendirinya tanpa pengobatan dalam 6-12 bulan, terutama jika penderita memiliki sistem imun yang baik. Pada beberapa kasus, penyakit ini dapat berlangsung selama lebih dari 5 tahun. Namun, orang yang sudah pernah menderita moluskum kontagiosum tidak akan tertular lagi.'),
(25, 'Herpes Zoster', 'Herspes zoster merupakan penyakit kulit akibat virus dari jenis yang sama dengan cacar airÂ dan herpes simpleks yaitu HSV. Penyakit ini ditandai dengan munculnya ruam kemerahan disertai lepuhan yang gatal pada sebagian sisi tubuh terutama di punggung, leher atau wajah (Team, 2020).\r\n', 'Gunakan Antivirus herpes zoster yang dapat digunakan antara lain : Acyclovir, Valacyclovir, dan Famciclovir.'),
(26, 'Morbili (Campak)', 'MorbiliÂ adalah suatu penyakit yang disebabkan oleh virusÂ Measles. Nama lain dari penyakit ini adalahÂ rubeolaÂ atauÂ campak. Morbili merupakan penyakit yang sangat infeksius dan menular lewat udara melalui aktivitas bernafas, batuk, atau bersin. Pada bayi dan balita, morbili dapat menimbulkan komplikasi yang fatal, seperti pneumonia dan ensefalitis. Gejala prodromal berupa demam, malaise, gejala respirasi atas (pilek, batuk), dan konjungtivitis. Pada demam hari keempat, biasanya muncul lesi makula dan papula eritem, yang dimulai pada kepala daerah perbatasan dahi rambut, di belakang telinga, dan menyebar secara sentrifugal ke bawah hingga muka, badan, ekstremitas, dan mencapai kaki pada hari ketiga. Masa inkubasi 10-15 hari. Dan belum mendapat imunisasi campak (Madolan, 2018).\r\n', 'Basuhlah tubuh anda dengan air hangat agar tubuhnya tetap bersih. Setelah selesai mandi tubuh di taburkan bedak bedak salisil atou bedak anti gatal lainnya.\r\nkemudian oleskan saja lotion atou krim pelembap pada kulit setiap habis mandi. Lakukan terus menerus hingga sisiknya menghilang.\r\n'),
(27, 'Varicella (Cacar)', 'Penyakit cacar airÂ atau dalam istilahÂ medis disebutÂ varicellaÂ adalah infeksi yang disebabkan virusÂ Varicella zoster. Penderita yang terinfeksi virus ini ditandai dengan munculnya ruam kemerahan berisi cairan yang sangat gatal di seluruh tubuh. Gejala cacar air adalah ruam merah di perut atau punggung. Selain itu, cacar air juga ditandai dengan beberapa gejala lain seperti demam, pusing, lemas dan nyeri tenggorokan (Willy, 2018).\r\n', 'Pengobatan cacar air bertujuan untuk mengurangi keparahan gejala, dengan atau tanpa bantuan obat. Ada beberapa upaya yang bisa dilakukan untuk meringankan gejala, yaitu mengenakan pakaian yang longgar dan berbahan lembut, serta tidak menggaruk ruam atau luka cacar air.'),
(28, 'Herpes Simpleks', 'Herpes simpleks adalah penyakit yang disebabkan oleh virus simpleks.\r\n', 'Perlu penanganan khusus dokter.'),
(29, 'Pityriasis Rosea', 'Pityriasis roseaÂ adalah penyakit kulit yang ditandai dengan ruam merah atau merah muda,Â yang bersisik, dan sedikit menonjol. RuamÂ yang timbul dapat disertai rasa gatal atau pun tidak terasa gatal. Gejala utama pytriasis rosea adalah munculnya ruam kulitÂ yang bisa terjadi di semua area tubuh. Terkadang, ruam yang muncul mirip dengan ruam yang muncul pada saat seseorang menderita sifilis atau kurapÂ (tinea). Pada beberapa orang, bisa muncul pola penyebaran ruam yang terlihat seperti â€œpohon natalâ€. Beberapa karakteristik ruamÂ pada pityriasis rosea seperti berbentuk oval dengan ukuran 2â€“10 cm, berwarna kemerahan atau merah muda, bersisik dan sedikit menonjol (Pane, 2020).\r\n', 'Gunakan Obat Salep atau Krim Misalnya emolien untuk menghaluskan kulit, salep atau krim kortikosteroid untuk mengurangi peradangan dan tablet antihistamin untuk meredakan rasa gatal. Obat antivirus juga bisa diberikan untuk mempercepat waktu penyembuhan.'),
(30, 'Cutaneus Larva Migran', 'Cutaneus Larva Migran (CLM) adalah infeksi kulit yang disebabkan oleh larva cacing. Infeksi ini ditandai dengan tonjolan kemerahan di kulit yang berkelok-kelok seperti ular. CLM sering kali menimbulkan gejala berupa sensasi gatal atau seperti ditusuk selama 30 menit saat larva cacing memasuki kulit. Larva bisa berdiam sampai beberapa bulan, atau menjalar secara perlahan dan membentuk tonjolan kemerahan. Tonjolan dan ruam yang disebabkan oleh menjalarnya cacing tambang ini memiliki karakteristik berkelok-kelok seperti ular, dengan lebar 2-3 mm dan memanjang 3-4 cm dari tempat awal masuknya larva. Beberapa area tubuh yang paling sering terinfeksi cacing ini adalah tangan, kaki, bokong, dan area kelamin (Pane, 2019).\r\n', 'CLM dapat sembuh dengan sendirinya dalam 1 sampai 2 bulan. Meski demikian, anda dapat menggunakan obat anticacing, seperti albendazole atau ivermectin, guna menyembuhkan infeksi.'),
(31, 'Filariasis', 'Filariasis adalah sejumlah infeksi yang disebabkan oleh cacing filaria dan dapat menyerang hewan maupun manusia. Ada banyak jenis parasit filaria memiliki ratusan jenis, tapi hanya delapan spesies yang dapat menyebabkan infeksi pada manusia. Gejala yang muncul adalah demam, pembengkakan limfa atau kelenjar getah bening (limfadenopati), serta bagian tubuh yang terinfeksi akan terasa sakit, memerah, dan membengkak (Halodoc, 2019).\r\n', 'Tujuan utama pengobatan filariasis adalah untuk membunuh parasit yang berkembang dalam tubuh penderitanya. Untuk itu, anda bisa menggunakan obat-obatan antifilaria, seperti diethylcarbamazine (DEC). '),
(32, 'Pedikulosis Kapitis', 'Salah satu jenis infeksi kulit yang disebabkan oleh parasit adalah pedikulosis atau kutu rambut. Kutu ini adalah serangga kecil, tidak bersayap, dan pengisap darah. Hewan ini hidup di rambut pada kepala seseorang dan memakan darah dari kulit kepala. Saat mengalaminya, penderita akan merasakan rasa gatal yang tidak tertahankan. Penyakit ini sangat mudah menular dan setiap orang dapat terinfeksi, ketika menyentuh kepala atau menggunakan barang seseorang yang mengidapnya (Fadli, 2020).\r\n', 'Pengobatannya dapat dengan malathion 0,5 % - 1 % bentuk lasio atau spray, dapat diulang selama 1 minggu kemudian jika masih terdapat kutu atau telur.'),
(33, 'Scabies', 'Scabies merupakan penyakit kulit menular yang disebabkan tungau mikroskopis Sarcoptes scabiei. Ciri scabies ini sulit dikenali karena berlangsung di dalam kulit. Sementara untuk gejala kudis di permukaan kulit biasanya ditandai dengan ruam berupa bintik-bintik merahÂ yang menonjol (bintil) yang kerap di temukan pada bagian sela-sela jari, di bawah ketiak, area pinggul, sekitar pergelangan tangan, bagian dalam siku, telapak kaki, sekitar payudara,sekitar organ kelamin laki-laki, bokong dan siku (Kemala, 2020).\r\n', 'Saat mengalami scabies, cobalah untuk berendam di air dingin, atau tempelkan kain basah pada area kulit yang terserang kutu. Mengatasi gatal kudis juga bisa dilakukan dengan penggunaan losion kalamin. Gangguan kulit yang satu ini juga bisa diatasi dengan memanfaatkan bahan alami yang mudah didapat, yaitu lidah buaya. '),
(34, 'Reaksi Gigitan Serangga', 'Gigitan serangga adalah kondisi ketika seseorang mengalami gejala akibat digigit oleh serangga. Pada umumnya, gigitan atau sengatan serangga hanya menimbulkan gejala ringan pada area yang digigit, seperti bengkak, gatal-gatal, ruam dan kemerahan, panas, kaku atau kesemutan dan nyeri pada area yang digigit. Dalam kondisi lain, gigitan atau sengatan serangga dapat menimbulkan reaksi parah yang harus segera mendapatkan pertolongan medis, seperti demam, mual dan muntah, pusing, pingsan, jantung berdebar, bengkak di wajah, bibir, atau tenggorokan, sulit menelan dan bicara serta sesak napas (Willy, 2018).', 'Bersihkan Gigitan atau Sengatan dan Kompres dengan Es.'),
(35, 'Miliaria', 'Ruam Panas memiliki beberapa nama sebutan lain termasuk miliaria, ekrin miliaria atau biang keringat. Ruam Panas merupakan penyakit kulit yang dipicu oleh penyumbatan pada kelenjar dan saluran keringat ekrin. Ruam Panas ini cenderung lebih banyak dijumpai pada iklim yang hangat dan lembab khususnya selama musim panas. Gejalanya seperti muncul benjolan kecil atau bintik-bintik (papula), kulit terasa gatal, terjadi pembengkakan yang ringan, bintik-bintik berwarna merah (pada seseorang dengan kulit putih), dan bintik-bintik putih di bawah (pada seseorang dengan kulit yang lebih gelap) (IDNmedis, 2021).\r\n', 'Menghindari aktivitas yang membuat tubuh banyak berkeringat dan menghindari udara panas hingga miliaria sembuh.'),
(36, 'Creeping Eruption', 'Creeping eruption merupakan kondisi infeksi akibat masuknya larva cacing tambang ke kulit manusia yang umumnya terjadi pada wilayah tropis. Beberapa gejala yang perlu diperhatikan selain rasa gatal dan sensasi tertusuk adalah ruam kemerahan timbul pada permukaan kulit, terjadi perubahan warna pada kulit, kulit berubah menjadi lebih kasar dan cenderung bersisik dan papula atau benjolan dengan isi yang padat timbul pada permukaan kulit (IDNmedis, 2021).\r\n', 'Penyakit cutaneous larva migrans umumnya dapat sembuh sendiri, namun membutuhkan waktu 5-6 minggu. Penderitanya sebaiknya diberikan penanganan simtomatis untuk mengatasi gejala gatal yang terjadi. Dan\r\nKonsumsi obat cacing bisa saja dilakukan sesuai dengan rekomendasi dokter.'),
(37, 'Dermatitis Kontak Iritan', 'Dermatitis kontak adalah peradangan kulit yang ditandai dengan ruam gatal kemerahan, yang timbul akibat iritasi setelah kontak langsung dengan zat tertentu, atau akibat reaksi alergi terhadap zat tertentu.Â Gejala pada dermatitis kontak iritan seperti kulit melepuh, kulit pecah-pecah., bengkak, kulit terasa kencang, sariawan, dan luka terbuka yang berkerak (Halodoc, 2019).\r\n', 'Sebagian besar dermatitis kontak akan hilang dengan sendirinya, begitu tidak terjadi lagi kontak antara kulit dengan zat penyebabnya. Dan anda bisa menggunakan salep/krim.'),
(38, 'Dermatitis Atopik', 'Dermatitis atopik merupakan alergi pada kulit yang bersifat kronis dan berulang yang ditandai dengan reaksi kulit berupa bercak kemerahan dengan rasa gatal. Alergi kulit ini mempunyai hubungan yang erat dengan riwayat atopi di dalam keluarga seperti alergi makananÂ dan asma. Dermatitis atopik terjadi lebih sering pada masa kanak - kanak dan merupakan alergi kulit pada bayiÂ Â tersering dengan gejala klinis alergi kulit wajah simetris di kedua pipi, dahi dan kepala (Team, 2020).\r\n', 'Gunakan pelembap dengan kandungan zat antiradang yang baik untuk mengatasi gejala dermatitis atopik, seperti glycyrrhetinic acid, palmitoylethanolamine, telmesteine, ekstrak anggur, niacinamide atau vitamin B3, dan pyrrolidone carboxylic acid yang dikombinasi dengan shea butter dan hyaluronic acid.'),
(39, 'Dermatitis Numularis', 'Dermatitis numularis adalah kelainan kulit kronis yang menyebabkan munculnya bercak-bercak lingkaran seperti koin. Bercak ini terasa gatal dan memiliki permukaan kasar, namun tidak menular. Gejala utama dermatitis numularis adalah bercak yang timbul (patches) di permukaan kulit. Bercak ini berbentuk seperti koin dengan tekstur kasar berwana kecokelatan atau kemerahan. Pada sebagian kasus, bagian tengah bercak dapat terlihat bersih sehingga membuatnya tampak seperti kurap. Dermatitis numularis diawali dengan munculnya bintik-bintik kecil kemerahan pada kulit. Bercak ini dapat membengkak, melepuh, dan mengeluarkan cairan. Bercak dermatitis numularis akan terasa menyengat seperti terbakar dan sangat gatal, terutama pada malam hari. Sebagian besar penderita merasakan kemunculan beberapa bercak dan hanya sebagian kecil yang menemukan satu bercak (Willy, 2019a).\r\n', 'Gunakan Kortikosteroid topikal (oles) adalah obat paling umum untuk mengatasi dermatitis numularis. Obat ini berfungsi meredakan peradangan dan mengurangi iritasi pada area bercak. Obat kortikosteroid dalam bentuk tablet atau suntikan juga dapat diberikan pada kasus yang lebih berat.'),
(40, 'Napkin Eczema', 'Penyakit kulitÂ ekzema (Eczema)Â adalah sejenis keadaan kulit yang menyebabkan gatal dan peradangan kulit. Gejala penyakit kulit ekzema adalah seperti benjolan merah atau coklat-kelabu, lepuh kecil yang mengandung cairan jernih dan akan mengalir keluar, kulit menjadi berkerak apabila digaruk, kulit tebal, bersisik, gatal dan ruam kulit (Masdar, 2020).\r\n', 'Tidak ada obat yang dapat menyembuhkan eksim/eczema dan ruam tidak akan hilang begitu saja jika tidak ditangani. Bagi kebanyakan orang, eksim merupakan kondisi kronis yang membutuhkan penghindaran pemicu untuk membantu mencegah kambuh.\r\nseperti menjaga kelembapan dan menghindari makanan penyebab alergi.'),
(41, 'Dermatitis Seboroik', 'Dermatitis seboroik adalah gangguan kulit yang menyebabkan kulit bersisik, berketombe, dan berwarna kemerahan. Peradangan ini biasanya terjadi di kulit kepala. Dermatitis seboroik sering ditandai dengan gejala berupa kulit kemerahan dan gatal, kulit bersisik, timbul ketombe akibat kulit yang terkelupas, baik di kulit kepala atau daerah kumis, jenggot, dada, serta alis dan timbul ruam yang berbentuk bulat atau oval (Willy, 2019b).\r\n', 'Salah satu pengobatan dermatitis seboroik yang bisa dilakukan adalah penggunaan krim atau gel yang direkomendasikan dokter, tujuannya untuk melawan bakteri penyebab dermatitis. Ikuti petunjuk produk atau saran dari dokter agar gejala segera mereda.'),
(42, 'Dermatitis Perioral', 'Dermatitis perioral adalah dermatitisÂ yang menimbulkan gejala di sekitar mulut. Penyakit ini merupakan bentuk ringan dari erupsi, yakni masalah kulit yang biasanya muncul secara cepat dan mendadak. Secara keseluruhan, dermatitis perioral membuat bagian kulit di sekitar mulut tampak memerah. Kemunculan gejala penyakit ini juga kerap disertai ruam kemerahan dan bintil-bintil kecil di sekitar mulut. Ruam kemerahan dan bintil di sekitar mulut kadang tidak disertai gatal, tapi umumnya terasa perih. Pada beberapa kasus, kulit di sekitar mulut mungkin akan mengering, mengeras, atau terkelupas. Rasa terbakar juga bisa muncul sesekali (Kemala, 2020a)\r\n', 'Oleskan krim antimikrob topikal sesuai anjuran dokter. Beberapa contoh antibiotik topikal adalah erythromycin, clindamycin, metronidazole, pimecrolimus, dan asam azelat.'),
(43, 'Sindrom Stevens-Johnson', 'Sindrom Stevens-Johnson merupakan kelainan serius dan langka yang menyerang kulit, selaput lendir, dan mata. Hingga saat ini, belum ditemukan cara untuk mencegah terjadinya sindrom ini. Sebab kemunculannya pun tidak dapat diperkirakan. Awalnya gejala sindrom Stevens-Johnson menyerupai infeksi saluran napas, seperti muntah dan diare selama 1-14 hari. Kondisi ini kemudian diikuti oleh munculnya kelainan kulit berupa merah-merah, bintik-bintik, kulit melepuh. Gejala di kulit dapat juga berupa timbulnya gelembung berisi air dan nanah di mulut dan kelamin, serta kelainan di selaput lendir mata. Gejala bisa saja hanya berbentuk reaksi kulit ringan hingga melibatkan kegagalan fungsi beberapa organ yang dapat mengancam nyawa (Klikdokter, 2021).\r\n', 'Steroid Digunakan untuk menekan peradangan atau reaksi dari alergi yang terjadi.\r\nAntibiotik Digunakan karena penderita sindrom Stevens-Johnson mudah terkena infeksi. Diet protein tinggi bagus untuk menunjang penyembuhan. Sementara itu, pemberian cairan perlu diperhatikan untuk mencegah dehidrasi.'),
(44, 'Urtikaria Akut', 'Urtikaria akut adalah urtikaria yang terjadi selama kurang dari 6 minggu, ciri-ciri dan gejala yang disebabkan hampir sama hanya saja perbedaannya ada pada lamanya urtikaria terjadi.Angioedema. Gejalanya berupa kulit terasa gatal, kulit memerah, terdapat ruam pada kulit dan terasa perih dan menyengat (Halosehat, 2021).\r\n', 'Gunakan obat kortikosteroid yang digunakan untuk mengurangi gejala penyakit urtikaria Yang parah.'),
(45, 'Exanthematous Drug Eruption', 'Exanthematous drug eruptionÂ merupakan bentuk dari erupsi obat yang paling sering dijumpai. Kondisi ini terjadi akibat dari reaksi alergi terhadap obat-obatan tertentu.Â Kondisi yang muncul di tubuh dapat berupa ruam merah atau bentol-bentol yang tersebar di wajah, tubuh, hingga telapak tangan dan kaki. Dan kondisi ini juga dapat diikuti dengan munculnya demam, bengkak pada wajah atau kelopak mata, gatal-gatal, sakit tenggorokan, konjungtivitis, hingga nyeri sendi (Chatdokter, 2021).\r\n', 'Perlu penanganan khusus oleh dokter.'),
(46, 'Fixed Drug Eruption', 'Fixed Drug EruptionÂ (FDE) adalah suatu jenis kesalahan terhadap obat.Â  Kebiasaannya ia akan timbul dengan cepat (akut) dalam waktu 30 menit hingga 8 jam setelah pengambilan obat tertentu. Gejalanya seperti terasa gatal atau pedih. Berbentuk bulat atau bujur, dan berwarna merah atau ungu. Bisa membesar sehingga 10 cm dan membengkak dengan gelembung air (Johar, 2019).\r\n', 'Perlu penanganan khusus oleh dokter.'),
(47, 'Luka Bakar Derajat 1', 'Tingkat luka bakar yang hanya memengaruhi epidermis atau lapisan kulit luarÂ saja. Secara klinis, tandanya berupa kulit yang tampak merah, kering, dan terasa sakit. Contohnya, luka bakar yang disebabkan oleh sinar matahari. Luka bakar tingkat satu ini tidak terlalu mengkhawatirkan dan bisa sembuh dengan sendirinya (Adrian, 2020b).\r\n', 'Aliri luka dengan air, oleskan madu dan gunakan perban jika diperlukan'),
(48, 'Luka Bakar Derajat 2', 'Derajat luka bakar ini dapat dikatakan luka bakar tingkat sedang. Luka bakar tingkat 2 ini terjadi pada epidermis dan sebagian lapisan dermis kulit (lapisan kulit yang lebih dalam). Ketika mengalami luka bakar tingkat 2, Â kulit akan tampak merah, lecet, melepuh, bengkak, dan terasa sakit. Luka bakar tingkat dua ini bisa ditangani dengan beberapa metode pengobatan tanpa operasi atau bedah (Adrian, 2020).\r\n', 'Mendinginkan luka bakar dengan air mengalir selama 15 menit atau lebih lama. Jangan gunakan es atau air dingin. Dan Mengonsumsi paracetamol untuk meredakan rasa nyeri.'),
(49, 'Luka Bakar Derajat 3 & 4', 'Kerusakan jaringan mengenai seluruh lapisan epidermis dan dermis, atau lebih dalam lagi. Secara klinis, kulit yang terbakar akan tampak putih dan kasar, namun juga dapat terlihat hangus dan mati rasa. Operasi atau bedah menjadi pilihan utama untuk menangani luka bakar pada tingkat ini. Penentuan tingkat keparahan luka bakar juga dapat digolongkan menjadi dua kelompok, yaitu: Luka bakar minor yang terdiri dari luka bakar tingkat 1 di bagian tubuh mana saja, termasuk luka bakar tingkat dua yang lebarnya 5â€“7,5 cm. Luka bakar mayor yang terdiri dari luka bakar tingkat 2 pada tangan, kaki, wajah, alat kelamin, dan bagian tubuh lainnya dengan lebar luka lebih dari 5â€“7,5 cm. Derajat luka bakar tingkat 3 dan 4 juga termasuk kelompok luka bakar mayor.(Adrian, 2020).\r\n', 'Perlu penanganan khusus oleh dokter.'),
(50, 'Luka Akibat Bahan Kimia', 'Luka bakar akibat bahan kimia merupakan luka yang diakibatkan oleh zat kimia seperti alkali, asam, atau bahan kimia yang merusak jaringan kulit lainnya jika terkena kulit. Sebagian besar kecelakaan ini hanya menyebabkan luka bakar tingkat pertama, yang mungkin dapat mengelupas seperti jika kulit terbakar sinar matahari, selama seminggu berikut berikutnya. Iritasi ringan dan kulit terbakar di bagian kepala dapat disebabkan oleh beberapa jenis obat rambut. Beberapa bahan kimia yang terlalu kuat bahkan dapat menyebabkan luka bakar dalam (Samiadi, 2021).\r\n', 'Perlu penanganan khusus oleh dokter.'),
(51, 'Luka Akibat Sengatan Listrik', 'Sengatan listrik adalah suatu reaksi fisiologis yang ditandai dengan adanya nyeri dan spasme otot, akibat adanya kontak dengan sumber listrik dan penjalaran arus listrik ke seluruh tubuh. Tubuh manusia merupakan konduktor (perantara) yang baik bagi listrik. Luka bakar, kerusakan organ dalam, gangguan irama jantung, dan bahkan kematian dapat di sebabkan oleh sengatan listrik ini. Pasien yang mengalami luka bakar akibat voltase listrik yang tinggi akan menunjukkan adanya luka bakar yang hebat dan memerlukan perawatan rumah sakit yang cukup lama dengan berbagai macam komplikasi. Pasien yang mengalami luka akibat petir dan listrik tegangan rendah tidak mengalami luka yang terlalu berat seperti diatas, tetapi pernah dilaporkan juga adanya henti jantung paru. Pasien-pasien ini memiliki angka kematian yang cukup tinggi akibat sindrom nyeri atau kerusakan otak yang serupa dengan trauma tumpul kepala (Medicine, 2016).\r\n', 'Perlu penanganan khusus oleh dokter.'),
(52, 'Tinea Pedis', 'Gejala yang muncul saat seseorang mengalami tinea pedis, yaitu gatal disertai sensasi panas dan menyengat di antara jari kaki atau di telapak kaki. Selain itu, kulit di telapak kaki akan terasa kering, mengelupas, atau melepuh.\r\n', 'Kamu bisa gunakan krim antijamur yang mengandung clotrimazole dan miconazole dengan rutin agar kutu air segera hilang.'),
(53, 'Eritrasma', 'Eritrasma adalah infeksi bakteri yang menimbulkan bercak kemerahanÂ atau kecokelatan di kulit. Biasanya, infeksi kulit ini muncul di bagian-bagian lipatan kulit, seperti di bawah lengan, selangkangan, serta di antara jari-jari kaki. Secara garis besarnya, gejala eritrasma adalah seperti muncul bercak berwarna merah muda atau kecokelatan. Kulit yang mengalami infeksi ini tampak bersisik. Kulit pecah-pecah, terutama bila muncul di kaki. Dan kulit terlihat keriputÂ (Ariani, 2021)\r\n', 'Pengobatan utama eritrasma biasanya melibatkan penggunaan sabun antibakteri untuk mengatasi infeksi ringan yang diaplikasikan dengan cara berikut: Menggosok dengan lembut area ruam, menggunakan sabun antibakteri, menjaga area ruam tetap kering, Perawatan eritrasma umumnya memakan waktu 2-4 minggu.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(14, 'Folikulitis', '<p><em>Folikulitis&nbsp;</em>adalah peradangan pada <em>folikel</em> rambut. <em>Folikel</em> rambut ini merupakan lubang kecil yang terdapat di kulit dan merupakan tempat rambut tumbuh. Peradangan pada <em>folikel</em> ini merupakan salah satu jenis penyakit kulit yang umum ditemukan. <em>Folikulitis</em> tampak mirip dengan jerawat, yaitu adanya benjolan kecil, bulat, berwarna merah atau kekuningan karena adanya nanah. Peradangan ini hanya ditemukan pada area tubuh yang ditumbuhi rambut. Bagian yang umum terkena adalah lengan, kaki, bokong, dan ketiak (Klikdokter, 2021).</p>\r\n', '<p><strong>Pencegahan: </strong></p>\r\n\r\n<p><strong>Pengendalian :</strong></p>\r\n\r\n<p><strong>Tindakan: </strong></p>\r\n', '01.jpg'),
(27, 'Furunkel/Karbunkel', '<p>Penyakit <em>Furunkel</em> atau bisul adalah abses kulit yang mempengaruhi <em>folikel</em> rambut dan jaringan sekitarnya. <em>Karbunkel</em> adalah kelompok <em>furunkel</em> yang bergabung bersama di bawah kulit. Mereka mempengaruhi lapisan yang lebih dalam, dan dapat menyebabkan jaringan parut. Gejala dari penyakit ini seperti ilustrasi atau bentuk bisul dengan kepala putih, tonjolan bengkak bulat yang mungkin berisi nanah berwarna terang, benjolan bulat, merah, bengkak yang tumbuh secara bertahap, lembut dan <em>sensitive</em>, mengeluarkan nanah berwarna keputihan yang terbuat dari jaringan mati dan sel darah, bisul yang membentuk kelompok, bisul dapat muncul dimana saja pada tubuh, termasuk paha bagian dalam, dan kulit di sekitarnya meradang dan lembut (Klinikpandawa, 2021).</p>\r\n', '', '02.jpg'),
(29, 'Tinea Kapitis', '<p>Bercak yang terasa gatal di kepala, serta kulit kepala memerah, botak dan bersisik di area yang terkena kurap. Gejala lain yang mungkin timbul adalah nyeri di kulit kepala, pembengkakan kelenjar getah bening di kepala, dan demam ringan (Willy, 2018).</p>\r\n', '', '03.jpg'),
(30, 'Tinea Barbe', '<p><strong><em>Tinea barbae</em></strong><strong> adalah infeksi jamur pada kulit yang berambut di wajah dan leher, tepatnya area kumis dan janggut. Kondisi ini hanya menyerang pria dewasa dan biasanya berawal dari kontak dengan binatang ternak. </strong><em>Tinea barbae</em> dapat berupa infeksi ringan di lapisan terluar kulit. Meski demikian, infeksi yang lebih dalam dengan peradangan yang berat lebih sering terjadi. <em>Tinea barbae</em> yang ringan biasanya ditandai dengan kerak melingkar kemerahan (<em>ringwon</em>) yang melepuh dan terasa gatal di permukaan kulit. Namun, <em>tinea barbae</em> ringan juga terkadang tidak menimbulkan gejala apa pun. Pada infeksi yang lebih dalam, <em>tinea barbae</em> ditandai dengan kemunculan benjolan merah, bengkak, bernanah, dan berkerak. Benjolan tersebut tidak menimbulkan rasa gatal atau sakit yang terlalu berat, tetapi dapat menyebabkan rambut di area yang terinfeksi mudah rontok (Nareza, 2021).</p>\r\n', '', '04.jpg'),
(31, 'Tinea Fasialis', '<p><strong><em>Tinea fasialis</em></strong><strong> merupakan penyakit kulit pada wajah yang tampak sebagai bercak kemerahan dan bersisik disertai rasa gatal. Kondisi ini tidak hanya dapat menganggu penampilan, namun juga bisa semakin parah dan menular ke orang lain bila tidak segera ditangani.</strong> <em>Tinea fasialis</em> atau kurap&nbsp;pada wajah disebabkan oleh jamur yang juga dapat menyebabkan infeksi kulit di bagian tubuh lain, seperti tangan, kaki, dan badan. <em>Tinea fasialis</em> dapat menimbulkan beberapa gejala seperti wajah terasa gatal dan tampak muncul bercak kemerahan, gatal di wajah semakin parah jika terkena sinar matahari atau berkeringat, bentol atau bisul di sekitar bercak pada wajah dan kulit wajah menjadi kering dan bersisik (Adrian, 2020).</p>\r\n', '', '05.jpg'),
(32, 'Tinea Korporis', '<p>Ruam kemerahan dengan bagian tepi yang menyerupai cincin. Selain memiliki tekstur bersisik, ruam juga terasa gatal, serta bisa melepuh dan mengeluarkan cairan (Willy, 2018)</p>\r\n', '', '06.jpg'),
(33, 'Tinea Manum', '<p><strong><em>Tinea manum</em></strong><strong> merupakan infeksi jamur di tangan. Seseorang bisa terkena infeksi jamur di tangannya jika bersentuhan dengan penderita <em>tinea manum</em>. Selain itu, <em>tinea manum</em> juga dapat menular melalui kontak fisik dengan hewan atau tanah yang terkontaminasi jamur.</strong> Infeksi jamur pada tangan bisa dikenali dari beberapa gejala seperti muncul bercak berbentuk lingkaran kemerahan dan bersisik, terutama di telapak tangan dan sela-sela jari. Kulit tangan terasa gatal dan kering. Terjadi penebalan kulit (hiperkeratosis)&nbsp;pada tangan yang terinfeksi jamur. Muncul lepuhan atau bentol berisi cairan bening pada tangan (Adrian, 2020).</p>\r\n', '', '07.jpg'),
(34, 'Tinea Unguium', '<p><strong>Jamur kuku adalah infeksi jamur yang terjadi pada kuku&nbsp;tangan maupun&nbsp;kuku kaki.&nbsp;Kondisi yang juga dikenal dengan nama&nbsp;<em>tinea unguium</em>&nbsp;atau&nbsp;<em>onkomikosis</em> ini dapat dialami oleh siapa saja, terutama lansia. Umumnya, jamur kuku bukanlah kondisi yang berbahaya.</strong>&nbsp;Jamur kuku atau <em>tinea unguium</em> dapat menyerang kuku tangan, namun kondisi ini lebih sering muncul pada kuku kaki. Beberapa kelainan pada kuku bisa menandakan adanya jamur kuku seperti kuku menebal, muncul bintik-bintik putih pada kuku, kuku berubah warna menjadi putih, kuning kecoklatan, atau kehitaman, kuku menjadi kasar dan rapuh, kuku terpisah dengan kulit jari tempatnya menempel, dan timbul bau yang tidak sedap pada kuku (Willy, 2019).</p>\r\n', '', '08.jpg'),
(35, 'Tinea Kruris', '<p>Kulit di sekitar selangkangan memerah, mengelupas, dan terasa gatal atau seperti terbakar (Willy, 2018)</p>\r\n', '', '09.jpg'),
(36, 'Tinea Pedis', '<p>Gejala yang muncul saat seseorang mengalami <em>tinea pedis</em>, yaitu gatal disertai sensasi panas dan menyengat di antara jari kaki atau di telapak kaki. Selain itu, kulit di telapak kaki akan terasa kering, mengelupas, atau melepuh.</p>\r\n', '', '10.jpg'),
(37, 'Pityriasis Versikolor', '<p>Pityriasis versikolor atau Penyakit panu atau tinea versikolor adalah infeksi jamur malasezia furfur yang ditemukan di kulit dengan tanda bercak putih hipopigmentasi. Pada dasarnya infeksi ini tidak memiliki makna klinis, tetapi secara tampakan akan merubah warna kulit. Sebenarnya banyak mikroba dan mikroorganisme tinggal di kulit (termasuk malasezia), untuk membantu kulit melindungi dari infeksi dan patogen lain yang menjadi penyebab penyakit. Gejala utama dari penyakit ini adalah adanya patch diskolorisasi pada kulit yang muncul di tangan, dada, leher dan punggung. Patch ini dapat berupa putih terang (bentuk paling sering), atau gelap mengelilingi kulit, berwarna pink, kemerahan dan kecoklatan. Patch biasanya kering, gatal dan mengkilap dan sedikit menonjol (Santiko, 2017).</p>\r\n', '', '11.jpg'),
(38, 'Kandidosis Mukokutan', '<p>Jenis infeksi ini umumnya terjadi di lipatan kulit, dengan gejala seperti benjolan berisi nanah, serta ruam yang disertai gatal dan rasa terbakar. (Willy, 2018).</p>\r\n', '', '12.jpg'),
(39, 'Nekrolysis Epidermal Toxic', '<p><strong><em>Nekrolysis Epidermal Toxic</em></strong><strong> (NET) adalah reaksi hipersensitivitas pada kulit yang umumnya dipicu oleh pemakaian obat. <em>Nekrolisis epidermal toxic</em> dapat ditandai dengan&nbsp;kulit&nbsp;yang melepuh dan mengelupas, menyerupai luka bakar. </strong>Gejala <em>nekrolisis epidermal toxic</em> umumnya diawali dengan gejala yang menyerupai infeksi saluran pernapasan&nbsp;bagian atas atau flu. Gejala ini bisa bertahan selama 1 hari hingga 3 minggu. Beberapa gejala tersebut adalah demam melebihi 38 derajat <em>Celcius</em>, kelelahan, sakit tenggorokan, pilek dan batuk, nyeri otot&nbsp;dan sendi, mata merah dan perih (<em>konjungtivitis</em>), nafsu makan menurun, mual dan muntah (Nareza, 2021).</p>\r\n', '', '13.jpg'),
(40, 'Impetigo ', '<p><strong><em>Impetigo</em></strong><strong> adalah infeksi kulit menular yang banyak dialami oleh bayi dan anak-anak. Infeksi ini ditandai dengan kemunculan bercak merah dan lepuhan pada kulit, terutama di bagian wajah, tangan, dan kaki. </strong>Bercak kemerahan yang terasa gatal di sekitar mulut dan hidung, namun tidak menimbulkan nyeri. Bercak tersebut dapat menjadi luka jika digaruk. Beberapa gejalanya seperti kulit di sekitar luka mengalami iritasi, terbentuknya koreng berwarna kuning kecokelatan di sekitar luka, koreng akan meninggalkan bekas kemerahan pada kulit dan dapat hilang tanpa bekas dalam jangka waktu beberapa hari atau minggu (Willy, 2019).</p>\r\n', '', '14.jpg'),
(41, 'Eritrasma', '<p><em>Eritrasma</em> adalah infeksi bakteri yang menimbulkan bercak kemerahan&nbsp;atau kecokelatan di kulit. Biasanya, infeksi kulit ini muncul di bagian-bagian lipatan kulit, seperti di bawah lengan, selangkangan, serta di antara jari-jari kaki. Secara garis besarnya, gejala <em>eritrasma</em> adalah seperti muncul bercak berwarna merah muda atau kecokelatan. Kulit yang mengalami infeksi ini tampak bersisik. Kulit pecah-pecah, terutama bila muncul di kaki. Dan kulit terlihat keriput&nbsp;(Ariani, 2021)</p>\r\n', '', '15.jpg'),
(42, 'Erisipelas', '<p><em>Erisipelas</em> adalah infeksi bakteri di lapisan atas kulit. Infeksi ini mirip dengan infeksi kulit lain, yakni <em>selulitis</em>, dimana <em>selulitis</em> terjadi infeksi di lapisan bawah kulit. Keduanya memiliki tampakan yang hampir sama dan diterapi dengan hampir sama pula. Gejala dari infeksi ini meliputi gejala khas, meliputi demam, menggigil, merasa tidak enak badan, terdapat kemerahan di kulit, dengan membengkak, nyeri dan peninggian di area lesi kulit, terdapat blister di area yang terinfeksi, dan pembengkakan kelenjar, ketika <em>erisipelas </em>ini mengenai wajah, pembengkakan meliputi daerah hidung dan kedua pipi (Santiko, 2021).</p>\r\n', '', '16.jpg'),
(43, 'Skrofuloderma', '<p>Skrofuloderma&nbsp;merupakan salah satu jenis <em>tuberkulosis</em> kulit yang ditandai dengan adanya nodul atau bintil pada kulit yang terletak di atas kelenjar getah bening, tulang, atau persendian yang terinfeksi. <em>Skrofuloderma</em> sering kali diawali dengan adanya pembesaran pada kelenjar getah bening. Umumnya, benjolan yang timbul tidak disertai rasa nyeri. Ukuran <em>skrofuloderma</em> juga dapat bervariasi dari kecil hingga besar. Seiring dengan berjalannya waktu, ukuran dapat semakin besar. dan jumlah pembesaran dapat semakin banyak, yang kemudian dapat pecah dan menjadi <em>ulkus</em>. Bagian tubuh yang paling sering mengalami <em>skrofuloderma</em> adalah leher dan ketiak (Klikdokter, 2021).</p>\r\n', '', '17.jpg'),
(44, 'Lepra', '<p>Penyakit <em>lepra</em>, yang juga dikenal dengan sebutan penyakit kusta&nbsp;atau <em>Morbus Hansen</em>, adalah penyakit infeksi kronis yang disebabkan oleh <em>Mycobakterium Leprae</em>. Penyakit ini menyerang saraf tepi (<em>primer</em>), kulit, dan jaringan tubuh lainnya kecuali susunan saraf pusat. Serangan pada sistem saraf akan menyebabkan penderitanya mati rasa. Gejala penyakit lepra yang dapat dikenali seperti bentol kemerahan. mati rasa, seperti kehilangan sensasi sentuhan dan rasa sakit pada kulit. Terjadi pembesaran pembuluh darah, biasanya di sekitar lutut dan siku. Terjadi perubahan bentuk wajah. Sering mengalami mimisan dan hilangnya jari jemari (Klikdokter, 2021)</p>\r\n', '', '18.jpg'),
(45, 'Sifilis', '<p><strong>Raja singa atau <em>sifilis</em> adalah penyakit menular seksual yang disebabkan oleh bakteri. Gejala <em>sifilis</em> diawali dengan munculnya luka yang tidak terasa sakit di area kelamin, mulut, atau dubur.</strong> Gejala muncul antara 10 hingga 90 hari setelah terpapar bakteri penyebab <em>sifilis</em>. Awalnya, gejala yang muncul berupa luka kecil pada kulit (<em>chancre</em>) yang tidak terasa&nbsp;sakit. Luka ini timbul pada lokasi bakteri masuk ke dalam tubuh, biasanya di area sekitar kelamin. Selain di area kelamin, luka juga dapat muncul di area mulut atau dubur. Tidak hanya muncul di bagian luar, luka akibat <em>sifilis</em> ini, juga bisa muncul di bagian dalam&nbsp;vagina, dubur, atau mulut sehingga tidak terlihat. Karena luka tersebut bisa tidak menimbulkan rasa sakit, penderita bisa tidak menyadari terkena <em>sifilis</em> (Willy, 2019).</p>\r\n', '', '19.jpg'),
(46, 'Acne Vulgaris', '<p>Jerawat atau <em>acne vulgaris</em> merupakan masalah kulit yang sering dialami hampir semua orang. Apalagi pada saat puber atau hormon seseorang sedang naik-naiknya. Tak hanya dialami oleh remaja saja tapi orang dewasa pun masih bisa mengalami masalah kulit ini. Begitu juga dengan jenis kelamin, baik wanita maupun pria bisa mendapati jerawat ini.<strong> </strong>Gejalanya seperti bintik kecil yang di ujungnya terdapat&nbsp;nanah. Bintik kecil ini bewarna kemerahan dan biasanya terasa menyakitkan bila disentuh. Cenderung bertekstur keras berupa benjolan yang terbentuk di bawah permukaan kulit, dan kadang terasa menyakitkan. Benjolan besar berisi nanah yang terasa menyakitkan. Hampir sama dengan nodul, kista ini pun terbentuk di bawah permukaan kulit, bila tersentuh agak terasa nyeri (Klinikpandawa, 2021).</p>\r\n', '', '20.jpg'),
(47, 'HidradenitisÂ Suppurativa', '<p><strong><em>Hidradenitis&nbsp;suppurativa</em></strong><strong>&nbsp;adalah penyakit yang ditandai dengan timbulnya benjolan kecil sebesar kacang di bawah kulit. Benjolan dapat terasa nyeri dan berisi nanah. Kondisi ini sering disebut juga dengan&nbsp;</strong><em>acne inversa</em><strong>.</strong> Gejala diawali dengan munculnya benjolan seperti jerawat atau lepuhan yang terasa keras dan meradang, serta dapat menimbulkan rasa sakit. Benjolan dapat hilang dalam 10&ndash;30 hari, tetapi juga bisa bertambah parah dan menjadi abses&nbsp;yang terasa nyeri dan mengeluarkan nanah yang bau ketika pecah. Pada kondisi yang lebih serius, gejala dapat disertai dengan timbulnya benjolan berwarna hitam yang terlihat seperti komedo. Meski sudah ditangani dan telah hilang, benjolan dapat timbul kembali dan meninggalkan bekas luka atau jaringan parut permanen (Tamin, 2020).</p>\r\n', '', '21.jpg'),
(48, 'Vulnus Laceratum ', '<p>Vulnus laceratum adalah jenis luka forensik yang ditimbulkan dari trauma benda tumpul yang memicu teregangnya kulit ke satu arah dan bila batas elastisitas kulit terlampaui, maka memicu robekan pada kulit. Gejalanya seperti bentuk luka tidak teratur, tampak jembatan jaringan kedua tepi luka dan bentuk dasar luka tidak beraturan (Santiko, 2021)</p>\r\n', '', '22.jpg'),
(49, 'Vulnus Punctum', '<p><em>Vulnus punctum</em>&nbsp;atau biasa juga dikenal dengan luka tusuk merupakan bentuk khusus dari trauma yang tembus ke kulit. Hal ini disebabkan oleh pisau atau benda runcing lainnya. Perawatan dari luka tusuk sangat banyak dan tergantung dengan tingkat keparahan cedera. Ciri-cirinya terdapat bekas luka tusuk dan mengalami pendarahan (Chatdokter, 2021).</p>\r\n', '', '23.jpg'),
(50, 'Vulnus Perforatum/Penetratum', '<p><em>Vulnus perforatum/penetratum </em>adalah jenis vulnus berupa luka tembus yang merobek dua sisi tubuh karena senjata tajam atau proses infeksi yang sudah meluas (Subarkah, 2020)</p>\r\n', '', '24.jpg'),
(51, 'Veruka Vulgaris', '<p><em>Veruka vulgaris</em> adalah benjolan kutil tersering yang tumbuh jinak dan disebabkan infeksi virus HPV (<em>Human Papiloma virus</em> tipe 2 dan tipe 4). Karateristik dari kutil <em>veruka vulgaris</em> adalah benjolan dengan permukaan kasar, dan terlihat pada tangan dan kaki. Kutil ini dapat terjadi pada permukaan jari belakang, tumit dan lutut. Benjolan juga dapat muncul berupa <em>blister</em> kecil, yang terlihat di tangan dan permukaan lain kaki. Biasanya benjolan sedikit meninggi, tepi keras dan halus pada permukaan tengah. Terdapat gradasi warna lebih terang atau lebih gelap di sekitar kulit. Untuk ukuran, biasanya kutil pada tangan sering terlihat lebih besar, dan seperti bunga kol tipis (Santiko, 2017).</p>\r\n', '', '255.jpg'),
(52, 'Molluscum Contagiosum', '<p><strong>Penyakit&nbsp;</strong><em>molluscum contagiosum</em><strong>&nbsp;adalah infeksi virus yang menyebabkan tumbuhnya bintil di kulit. Bintil biasanya tidak terasa nyeri, namun menimbulkan rasa gatal.</strong> <em>Molluscum contagiosum</em> dapat dikenali dengan melihat bintil pada permukaan kulit. Bintil-bintil tersebut bisa berkumpul di satu area atau tersebar di beberapa bagian tubuh, dengan karakteristik seperti berukuran kecil, seperti biji kacang hijau atau kacang tanah. Muncul di wajah, leher, ketiak, perut, kelamin, dan tungkai. Berwarna seperti warna kulit, putih, atau merah muda. Ada titik kecil berwarna putih kekuningan di tengah bintil. Jumlah bintil yang tumbuh biasanya sekitar 20-30, tapi pada orang dengan kekebalan tubuh rendah, jumlahnya bisa lebih banyak. Awalnya keras bila diraba, kemudian melunak seiring waktu. Dan tidak menimbulkan nyeri, namun terasa gatal (Willy, 2019).</p>\r\n', '', '266.jpg'),
(53, 'Herspes Zoster', '<p><em>Herspes zoster</em> merupakan penyakit kulit akibat virus dari jenis yang sama dengan cacar air&nbsp;dan <em>herpes simpleks</em> yaitu HSV. Penyakit ini ditandai dengan munculnya ruam kemerahan disertai lepuhan yang gatal pada sebagian sisi tubuh terutama di punggung, leher atau wajah (Team, 2020).</p>\r\n', '', '277.jpg'),
(54, 'Morbili', '<p><em>Morbili&nbsp;</em>adalah suatu penyakit yang disebabkan oleh virus&nbsp;<em>Measles</em>. Nama lain dari penyakit ini adalah&nbsp;<em>rubeola&nbsp;</em>atau&nbsp;<em>campak</em>. Morbili merupakan penyakit yang sangat <em>infeks</em><em>ius</em> dan menular lewat udara melalui aktivitas bernafas, batuk, atau bersin. Pada bayi dan balita, morbili dapat menimbulkan komplikasi yang fatal, seperti <em>pneumonia</em> dan <em>ensefalitis</em>. Gejala <em>prodromal</em> berupa demam, <em>malaise</em>, gejala respirasi atas (pilek, batuk), dan <em>konjungtivitis</em>. Pada demam hari keempat, biasanya muncul lesi <em>makula</em> dan <em>papula eritem,</em> yang dimulai pada kepala daerah perbatasan dahi rambut, di belakang telinga, dan menyebar secara <em>sentrifugal</em> ke bawah hingga muka, badan, ekstremitas, dan mencapai kaki pada hari ketiga. Masa inkubasi 10-15 hari. Dan belum mendapat imunisasi campak (Madolan, 2018).</p>\r\n', '', '288.jpg'),
(55, 'Varicella', '<p><strong>Penyakit cacar air&nbsp;atau dalam istilah&nbsp;medis disebut&nbsp;<em>varicella&nbsp;</em>adalah infeksi yang disebabkan virus&nbsp;<em>Varicella zoster</em>. Penderita yang terinfeksi virus ini ditandai dengan munculnya ruam kemerahan berisi cairan yang sangat gatal di seluruh tubuh.</strong><strong><em> </em></strong>Gejala cacar air adalah ruam merah di perut atau punggung. Selain itu, cacar air juga ditandai dengan beberapa gejala lain seperti demam, pusing, lemas dan nyeri tenggorokan (Willy, 2018).</p>\r\n', '', '29.jpg'),
(56, 'Herpes Simpleks', '<p><strong><em>Herpes</em></strong><strong>&nbsp;simpleks adalah penyakit yang disebabkan oleh virus simpleks</strong>.</p>\r\n', '', '300.jpg'),
(57, 'Pityriasis Rosea', '<p><strong><em>Pityriasis rosea</em></strong><strong>&nbsp;adalah penyakit kulit yang ditandai dengan ruam merah atau merah muda,&nbsp;yang bersisik, dan sedikit menonjol. Ruam&nbsp;yang timbul dapat disertai rasa gatal atau pun tidak terasa gatal.</strong> Gejala utama <em>pytriasis rosea</em> adalah munculnya ruam kulit&nbsp;yang bisa terjadi di semua area tubuh. Terkadang, ruam yang muncul mirip dengan ruam yang muncul pada saat seseorang menderita <em>sifilis</em> atau kurap&nbsp;(<em>tinea</em>). Pada beberapa orang, bisa muncul pola penyebaran ruam yang terlihat seperti &ldquo;pohon natal&rdquo;. Beberapa karakteristik ruam&nbsp;pada <em>pityriasis rosea</em> seperti berbentuk oval dengan ukuran 2&ndash;10 cm, berwarna kemerahan atau merah muda, bersisik dan sedikit menonjol (Pane, 2020).</p>\r\n', '', '311.jpg'),
(59, 'Cutaneus Larva Migran', '<p><strong><em>Cutaneus Larva Migran</em></strong><strong> (CLM) adalah infeksi kulit yang disebabkan oleh larva cacing. Infeksi ini ditandai dengan tonjolan kemerahan di kulit yang berkelok-kelok seperti ular.</strong> CLM sering kali menimbulkan gejala berupa sensasi gatal atau seperti ditusuk selama 30 menit saat larva cacing memasuki kulit. Larva bisa berdiam sampai beberapa bulan, atau menjalar secara perlahan dan membentuk tonjolan kemerahan. Tonjolan dan ruam yang disebabkan oleh menjalarnya cacing tambang ini memiliki karakteristik berkelok-kelok seperti ular, dengan lebar 2-3 mm dan memanjang 3-4 cm dari tempat awal masuknya larva. Beberapa area tubuh yang paling sering terinfeksi cacing ini adalah tangan, kaki, bokong, dan area kelamin (Pane, 2019).</p>\r\n', '', '322.jpg'),
(60, 'Filariasis', '<p><em>Filariasis</em> adalah sejumlah infeksi yang disebabkan oleh cacing <em>filaria</em> dan dapat menyerang hewan maupun manusia. Ada banyak jenis parasit <em>filaria</em> memiliki ratusan jenis, tapi hanya delapan spesies yang dapat menyebabkan infeksi pada manusia. Gejala yang muncul adalah demam, pembengkakan limfa atau kelenjar getah bening (<em>limfadenopati</em>), serta bagian tubuh yang terinfeksi akan terasa sakit, memerah, dan membengkak (Halodoc, 2019).</p>\r\n', '', '333.jpg'),
(61, 'Pedikulosis Kapitis', '<p>Salah satu jenis infeksi kulit yang disebabkan oleh parasit adalah <em>pedikulosis</em> atau kutu rambut. Kutu ini adalah serangga kecil, tidak bersayap, dan pengisap darah. Hewan ini hidup di rambut pada kepala seseorang dan memakan darah dari kulit kepala. Saat mengalaminya, penderita akan merasakan rasa gatal yang tidak tertahankan. Penyakit ini sangat mudah menular dan setiap orang dapat terinfeksi, ketika menyentuh kepala atau menggunakan barang seseorang yang mengidapnya (Fadli, 2020).</p>\r\n', '', '344.jpg'),
(62, 'Scabies', '<p><em>Scabies</em> merupakan penyakit kulit menular yang disebabkan tungau mikroskopis <em>Sarcoptes scabiei</em>. Ciri scabies ini sulit dikenali karena berlangsung di dalam kulit. Sementara untuk gejala kudis di permukaan kulit biasanya ditandai dengan ruam berupa bintik-bintik merah&nbsp;yang menonjol (bintil) yang kerap di temukan pada bagian sela-sela jari, di bawah ketiak, area pinggul, sekitar pergelangan tangan, bagian dalam siku, telapak kaki, sekitar payudara,sekitar organ kelamin laki-laki, bokong dan siku (Kemala, 2020).</p>\r\n', '', '355.jpg'),
(63, 'Reaksi Gigitan Serangga', '<p>Gigitan serangga adalah kondisi ketika seseorang mengalami gejala akibat digigit oleh serangga. Pada umumnya, gigitan atau sengatan serangga hanya menimbulkan gejala ringan pada area yang digigit, seperti bengkak, gatal-gatal, ruam dan kemerahan, panas, kaku atau kesemutan dan nyeri pada area yang digigit. Dalam kondisi lain, gigitan atau sengatan serangga dapat menimbulkan reaksi parah yang harus segera mendapatkan pertolongan medis, seperti demam, mual dan muntah, pusing, pingsan, <a href="https://www.alodokter.com/jantung-berdebar">j</a>antung berdebar, bengkak di wajah, bibir, atau tenggorokan, sulit menelan dan bicara serta sesak napas (Willy, 2018).</p>\r\n', '', '366.jpg'),
(64, 'Miliaria', '<p>Ruam Panas memiliki beberapa nama sebutan lain termasuk <em>miliaria</em>, <em>ekrin miliaria</em> atau biang keringat. Ruam Panas merupakan penyakit kulit yang dipicu oleh penyumbatan pada kelenjar dan saluran keringat <em>ekrin</em>. Ruam Panas ini cenderung lebih banyak dijumpai pada iklim yang hangat dan lembab khususnya selama musim panas. Gejalanya seperti muncul benjolan kecil atau bintik-bintik (<em>papula</em>), kulit terasa gatal, terjadi pembengkakan yang ringan, bintik-bintik berwarna merah (pada seseorang dengan kulit putih), dan bintik-bintik putih di bawah (pada seseorang dengan kulit yang lebih gelap) (IDNmedis, 2021).</p>\r\n', '', '377.jpg'),
(65, 'Creeping Eruption', '<p><em>Creeping eruption</em> merupakan kondisi infeksi akibat masuknya larva cacing tambang ke kulit manusia yang umumnya terjadi pada wilayah tropis. Beberapa gejala yang perlu diperhatikan selain rasa gatal dan sensasi tertusuk adalah ruam kemerahan timbul pada permukaan kulit, terjadi perubahan warna pada kulit, kulit berubah menjadi lebih kasar dan cenderung bersisik dan papula atau benjolan dengan isi yang padat timbul pada permukaan kulit (IDNmedis, 2021).</p>\r\n', '', '388.jpg'),
(66, 'Dermatitis Kontak Iritan', '<p><em>Dermatitis kontak</em> adalah peradangan kulit yang ditandai dengan ruam gatal kemerahan, yang timbul akibat iritasi setelah kontak langsung dengan zat tertentu, atau akibat reaksi alergi terhadap zat tertentu.&nbsp;Gejala pada <em>dermatitis</em> kontak <em>iritan</em> seperti kulit melepuh, kulit pecah-pecah., bengkak, kulit terasa kencang, sariawan, dan luka terbuka yang berkerak (Halodoc, 2019).</p>\r\n', '', '399.jpg'),
(67, 'Dermatitis Atopik', '<p><em>Dermatitis atopik</em> merupakan alergi pada kulit yang bersifat kronis dan berulang yang ditandai dengan reaksi kulit berupa bercak kemerahan dengan rasa gatal. Alergi kulit ini mempunyai hubungan yang erat dengan riwayat atopi di dalam keluarga seperti alergi makanan&nbsp;dan asma. <em>Dermatitis atopik</em> terjadi lebih sering pada masa kanak - kanak dan merupakan alergi kulit pada bayi&nbsp;&nbsp;tersering dengan gejala klinis alergi kulit wajah simetris di kedua pipi, dahi dan kepala (Team, 2020).</p>\r\n', '', '400.jpg'),
(68, 'Dermatitis Numularis', '<p><em>Discoid eczema</em><strong>&nbsp;atau <em>dermatitis numularis</em> adalah kelainan kulit kronis yang menyebabkan munculnya bercak-bercak lingkaran seperti koin. Bercak ini terasa gatal dan memiliki permukaan kasar, namun tidak menular.</strong> Gejala utama <em>dermatitis numularis</em> adalah bercak yang timbul (<em>patches</em>) di permukaan kulit. Bercak ini berbentuk seperti koin dengan tekstur kasar berwana kecokelatan atau kemerahan. Pada sebagian kasus, bagian tengah bercak dapat terlihat bersih sehingga membuatnya tampak seperti kurap. <em>D</em><em>ermatitis numularis</em> diawali dengan munculnya bintik-bintik kecil kemerahan pada kulit. Bercak ini dapat membengkak, melepuh, dan mengeluarkan cairan. Bercak <em>dermatitis numularis</em> akan terasa menyengat seperti terbakar dan sangat gatal, terutama pada malam hari. Sebagian besar penderita merasakan kemunculan beberapa bercak dan hanya sebagian kecil yang menemukan satu bercak (Willy, 2019a).</p>\r\n', '', '411.jpg'),
(69, 'Napkin Eczema', '<p>Penyakit kulit&nbsp;ekzema (<em>Eczema</em>)&nbsp;adalah sejenis keadaan kulit yang menyebabkan gatal dan peradangan kulit. Gejala penyakit kulit ekzema adalah seperti benjolan merah atau coklat-kelabu, lepuh kecil yang mengandung cairan jernih dan akan mengalir keluar, kulit menjadi berkerak apabila digaruk, kulit tebal, bersisik, gatal dan ruam kulit (Masdar, 2020).</p>\r\n', '', '422.jpg'),
(70, 'Demartitis Seboroik', '<p>Dermatitis seboroik adalah gangguan kulit yang menyebabkan kulit bersisik, berketombe, dan berwarna kemerahan. Peradangan ini biasanya terjadi di kulit kepala. Dermatitis seboroik sering ditandai dengan gejala berupa kulit kemerahan dan gatal, kulit bersisik, timbul ketombe akibat kulit yang terkelupas, baik di kulit kepala atau daerah kumis, jenggot, dada, serta alis dan timbul ruam yang berbentuk bulat atau oval (Willy, 2019b).</p>\r\n', '', '433.jpg'),
(71, 'Dermatitis Perioral', '<p><em>Dermatitis perioral</em> adalah dermatitis<em>&nbsp;</em>yang menimbulkan gejala di sekitar mulut. Penyakit ini merupakan bentuk ringan dari erupsi, yakni masalah kulit yang biasanya muncul secara cepat dan mendadak. Secara keseluruhan, <em>dermatitis perioral</em> membuat bagian kulit di sekitar mulut tampak memerah. Kemunculan gejala penyakit ini juga kerap disertai ruam kemerahan dan bintil-bintil kecil di sekitar mulut. Ruam kemerahan dan bintil di sekitar mulut kadang tidak disertai gatal, tapi umumnya terasa perih. Pada beberapa kasus, kulit di sekitar mulut mungkin akan mengering, mengeras, atau terkelupas. Rasa terbakar juga bisa muncul sesekali (Kemala, 2020a)</p>\r\n', '', '444.jpg'),
(72, 'Sindrom Stevens-Johnson', '<p>Sindrom<em> Stevens-Johnson</em> merupakan kelainan serius dan langka yang menyerang kulit, selaput lendir, dan mata. Hingga saat ini, belum ditemukan cara untuk mencegah terjadinya sindrom ini. Sebab kemunculannya pun tidak dapat diperkirakan. Awalnya gejala sindrom <em>Stevens-Johnson</em> menyerupai infeksi saluran napas, seperti muntah dan diare selama 1-14 hari. Kondisi ini kemudian diikuti oleh munculnya kelainan kulit berupa merah-merah, bintik-bintik, kulit melepuh. Gejala di kulit dapat juga berupa timbulnya gelembung berisi air dan nanah di mulut dan kelamin, serta kelainan di selaput lendir mata. Gejala bisa saja hanya berbentuk reaksi kulit ringan hingga melibatkan kegagalan fungsi beberapa organ yang dapat mengancam nyawa (Klikdokter, 2021).</p>\r\n', '', '455.jpg'),
(73, 'Urtikaria Akut', '<p><em>Urtikaria </em>akut adalah <em>urtikaria</em> yang terjadi selama kurang dari 6 minggu, ciri-ciri dan gejala yang disebabkan hampir sama hanya saja perbedaannya ada pada lamanya <em>urtikaria </em>terjadi.<em>Angioedema. </em>Gejalanya berupa kulit terasa gatal, kulit memerah, terdapat ruam pada kulit dan terasa perih dan menyengat (Halosehat, 2021).</p>\r\n', '', '466.jpg'),
(74, 'Exanthematous Drug Eruption', '<p><em>Exanthematous drug eruption&nbsp;</em>merupakan bentuk dari erupsi obat yang paling sering dijumpai. Kondisi ini terjadi akibat dari reaksi alergi terhadap obat-obatan tertentu.&nbsp;Kondisi yang muncul di tubuh dapat berupa ruam merah atau bentol-bentol yang tersebar di wajah, tubuh, hingga telapak tangan dan kaki. Dan kondisi ini juga dapat diikuti dengan munculnya demam, bengkak pada wajah atau kelopak mata, gatal-gatal, sakit tenggorokan, <em>konjungtivitis</em>, hingga nyeri sendi (Chatdokter, 2021).</p>\r\n', '', '477.jpg'),
(75, 'Fixed Drug Eruption', '<p><em>Fixed Drug Eruption</em>&nbsp;(FDE) adalah suatu jenis kesalahan terhadap obat.&nbsp; Kebiasaannya ia akan timbul dengan cepat (akut) dalam waktu 30 menit hingga 8 jam setelah pengambilan obat tertentu. Gejalanya seperti terasa gatal atau pedih. Berbentuk bulat atau bujur, dan berwarna merah atau ungu. Bisa membesar sehingga 10 cm dan membengkak dengan gelembung air (Johar, 2019).</p>\r\n', '', '488.jpg'),
(76, 'Luka Bakar Derajat 1', '<p>Tingkat luka bakar yang hanya memengaruhi epidermis atau lapisan kulit luar&nbsp;saja. Secara klinis, tandanya berupa kulit yang tampak merah, kering, dan terasa sakit. Contohnya, luka bakar yang disebabkan oleh sinar matahari. Luka bakar tingkat satu ini tidak terlalu mengkhawatirkan dan bisa sembuh dengan sendirinya (Adrian, 2020b).</p>\r\n', '', '499.jpg'),
(77, 'Luka Bakar Derajat 2', '<p>Derajat luka bakar ini dapat dikatakan luka bakar tingkat sedang. Luka bakar tingkat 2 ini terjadi pada <em>epidermis</em> dan sebagian lapisan <em>dermis </em>kulit (lapisan kulit yang lebih dalam). Ketika mengalami luka bakar tingkat 2, &nbsp;kulit akan tampak merah, lecet, melepuh, bengkak, dan terasa sakit. Luka bakar tingkat dua ini bisa ditangani dengan beberapa metode pengobatan tanpa operasi atau bedah (Adrian, 2020).</p>\r\n', '', '500.jpg'),
(78, 'Luka Bakar Derajat 3 & 4', '<p>Kerusakan jaringan mengenai seluruh lapisan <em>epidermis</em> dan <em>dermis</em>, atau lebih dalam lagi. Secara klinis, kulit yang terbakar akan tampak putih dan kasar, namun juga dapat terlihat hangus dan mati rasa. Operasi atau bedah menjadi pilihan utama untuk menangani luka bakar pada tingkat ini. Penentuan tingkat keparahan luka bakar juga dapat digolongkan menjadi dua kelompok, yaitu: Luka bakar minor yang terdiri dari luka bakar tingkat 1 di bagian tubuh mana saja, termasuk luka bakar tingkat dua yang lebarnya 5&ndash;7,5 cm. Luka bakar mayor yang terdiri dari luka bakar tingkat 2 pada tangan, kaki, wajah, alat kelamin, dan bagian tubuh lainnya dengan lebar luka lebih dari 5&ndash;7,5 cm. Derajat luka bakar tingkat 3 dan 4 juga termasuk kelompok luka bakar mayor.(Adrian, 2020).</p>\r\n', '', '511.jpg'),
(79, 'Luka Bakar Akibat Bahan Kimia', '<p>Luka bakar akibat bahan kimia merupakan luka yang diakibatkan oleh zat kimia seperti alkali, asam, atau bahan kimia yang merusak jaringan kulit lainnya jika terkena kulit. Sebagian besar kecelakaan ini hanya menyebabkan luka bakar tingkat pertama, yang mungkin dapat mengelupas seperti jika kulit terbakar sinar matahari, selama seminggu berikut berikutnya. Iritasi ringan dan kulit terbakar di bagian kepala dapat disebabkan oleh beberapa jenis obat rambut. Beberapa bahan kimia yang terlalu kuat bahkan dapat menyebabkan luka bakar dalam (Samiadi, 2021).</p>\r\n', '', '522.jpg'),
(80, 'Luka Bakar Akibat Sengatan Listrik', '<p>Sengatan listrik adalah suatu reaksi fisiologis yang ditandai dengan adanya nyeri dan spasme otot, akibat adanya kontak dengan sumber listrik dan penjalaran arus listrik ke seluruh tubuh. Tubuh manusia merupakan konduktor (perantara) yang baik bagi listrik. Luka bakar, kerusakan organ dalam, gangguan irama jantung, dan bahkan kematian dapat di sebabkan oleh sengatan listrik ini. Pasien yang mengalami luka bakar akibat voltase listrik yang tinggi akan menunjukkan adanya luka bakar yang hebat dan memerlukan perawatan rumah sakit yang cukup lama dengan berbagai macam komplikasi. Pasien yang mengalami luka akibat petir dan listrik tegangan rendah tidak mengalami luka yang terlalu berat seperti diatas, tetapi pernah dilaporkan juga adanya henti jantung paru. Pasien-pasien ini memiliki angka kematian yang cukup tinggi akibat sindrom nyeri atau kerusakan otak yang serupa dengan trauma tumpul kepala (Medicine, 2016).</p>\r\n', '', '533.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `noip` int(3) NOT NULL,
  `kode_gejala` char(4) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`noip`, `kode_gejala`, `bobot`) VALUES
(4416, '1', 0),
(4417, '2', 0),
(4418, '3', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_pasien`
--

CREATE TABLE `tmp_pasien` (
  `id` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelamin` char(10) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `noip` varchar(30) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_pasien`
--

INSERT INTO `tmp_pasien` (`id`, `nama`, `kelamin`, `umur`, `noip`, `tanggal`) VALUES
(284, 'aa', 'Laki-laki', 'aa', '::1', '2022-04-19 05:45:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `noip` varchar(30) NOT NULL,
  `kode_penyakit` char(4) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_penyakit`
--

INSERT INTO `tmp_penyakit` (`noip`, `kode_penyakit`, `nilai`) VALUES
('', '1', 0.5),
('', '2', 0.33333333333333),
('', '3', 0),
('', '4', 0.35294117647059),
('', '5', 0.17647058823529),
('', '6', 0),
('', '7', 0),
('', '8', 0),
('', '9', 0),
('', '10', 0),
('', '11', 0.46153846153846),
('', '12', 0),
('', '13', 0),
('', '14', 0),
('', '15', 0),
('', '16', 0),
('', '17', 0),
('', '18', 0.30769230769231),
('', '19', 0.42857142857143),
('', '20', 0),
('', '21', 0),
('', '22', 0),
('', '23', 0),
('', '24', 0),
('', '25', 0),
('', '26', 0),
('', '27', 0),
('', '28', 0),
('', '29', 0.090909090909091),
('', '30', 0),
('', '31', 0.058823529411765),
('', '32', 0.27272727272727),
('', '33', 0),
('', '34', 0.04),
('', '35', 0.25),
('', '36', 0),
('', '37', 0.071428571428571),
('', '38', 0.1),
('', '39', 0.066666666666667),
('', '40', 0.071428571428571),
('', '41', 0.11111111111111),
('', '42', 0.090909090909091),
('', '43', 0.2),
('', '44', 0),
('', '45', 0.043478260869565),
('', '46', 0.28571428571429),
('', '47', 0.083333333333333),
('', '48', 0.071428571428571),
('', '49', 0),
('', '50', 0),
('', '51', 0),
('', '52', 0),
('', '53', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelamin` char(150) NOT NULL,
  `umur` varchar(25) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `kelamin`, `umur`, `tgl_konsultasi`) VALUES
(61, 'A', 'Laki-laki', 'A', '2022-04-14 06:35:54'),
(60, 'A', 'Laki-laki', 'A', '2022-04-14 06:01:58'),
(59, 'Coba', 'Wanita', '22', '2022-04-14 05:53:34'),
(58, 'Asdar', 'Laki-laki', '21', '2022-04-14 05:48:17'),
(62, 'x', 'Laki-laki', 'x', '2022-04-18 13:55:39'),
(63, 'a', 'Laki-laki', 'a', '2022-04-18 21:44:32'),
(64, 'a', 'Laki-laki', 'a', '2022-04-18 21:45:19'),
(65, 'aa', 'Laki-laki', 'aa', '2022-04-18 21:45:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `hasil_konsultasi`
--
ALTER TABLE `hasil_konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indexes for table `keterangan`
--
ALTER TABLE `keterangan`
  ADD PRIMARY KEY (`id_keterangan`),
  ADD UNIQUE KEY `id_konsultasi` (`id_konsultasi`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- Indexes for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD PRIMARY KEY (`noip`);

--
-- Indexes for table `tmp_pasien`
--
ALTER TABLE `tmp_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=611;
--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `hasil_konsultasi`
--
ALTER TABLE `hasil_konsultasi`
  MODIFY `id_konsultasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;
--
-- AUTO_INCREMENT for table `keterangan`
--
ALTER TABLE `keterangan`
  MODIFY `id_keterangan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  MODIFY `noip` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4419;
--
-- AUTO_INCREMENT for table `tmp_pasien`
--
ALTER TABLE `tmp_pasien`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
