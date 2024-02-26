-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2024 at 06:39 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(2, 'Bintang Naufal', 'yami', 'e7e23670481ac78b3c4122a99ba60573', '+6285172121040', 'bintangnaufal2104@gmail.com', 'Blk. B, Meunasah Baet, Kec. Krueng Barona Jaya, Kabupaten Aceh Besar, Aceh 24451');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Laptop'),
(2, 'Handphone'),
(6, 'Headset'),
(7, 'Keyboard Mekanik'),
(8, 'Mouse'),
(9, 'Buah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(1, 1, 'ACER NITRO V 15 (ANV15-51)', 10999000, '<p>Layar: 15.6-inch FHD (1920 x 1080) IPS-level<br />\r\nCPU: 13th Gen Intel Core i5-13420H<br />\r\nRAM: 8 GB DDR5<br />\r\nPenyimpanan: 512 GB SSD<br />\r\nGrafik: Up to NVIDIA GeForce RTX 4050<br />\r\nPort: HDMI 2.1, 1x USB 3.2 Gen 1 port, 1x USB 3.2 Gen 2 port with power-off charging, 1x USB 3.2 Gen 2 port, 2x USB Type-C port (USB 3.2 Gen 2) (Thunderbolt 4), Ethernet (RJ-45) port<br />\r\nDimensi: 39.00 x 26.60 x 26.75<br />\r\nBobot: 2.7 kg</p>\r\n', 'produk1708449666.jpg', 1, '2024-02-20 17:21:06'),
(3, 1, 'ACER ASPIRE VERO', 14799000, '<p>Layar: 14-inch Full HD (1920 x 1080), IPS, 100% sRGB<br />\r\nCPU: Intel Core i5-1335U<br />\r\nRAM: 16GB LPDDR4X Dual Channel<br />\r\nPenyimpanan: 512GB SSD<br />\r\nGrafik: Intel Iris Xe 80 EU<br />\r\nPort: 1x Thunderbolt 4, 2x USB 3.2 (1x offline charging), headphone/speaker, HDMI 2.1 with HDCP support, USB-C 3,2 with Fast Charging, USB-A<br />\r\nDimensi: 1.79 x 32.86 x 22.35 cm<br />\r\nBobot: 1.5 kg<br />\r\nHarga baru: Rp 9.999.000<br />\r\n4. ASUS EXPERTBOOK B5402CEA<br />\r\nLayar: 14-inch FHD (1920 x 1080)<br />\r\nCPU: Intel Core i5 1155G7<br />\r\nRAM: 16GB<br />\r\nPenyimpanan: 1TB M.2 SSD<br />\r\nGrafik: Intel UHD<br />\r\nOS: Windows 11 Pro<br />\r\nPort: 2x USB-A, 2x USB-C, HDMI, RJ45, MicroSD, 3.5mm audio</p>\r\n', 'produk1708449802.jpg', 1, '2024-02-20 17:23:22'),
(4, 1, 'ASUS VIVOBOOK 14X M1403QA', 8942000, '<p>Layar: 14-inch 2.8K (2880 x 1800)<br />\r\nCPU: AMD Ryzen 7 5800H<br />\r\nRAM: 16GB<br />\r\nPenyimpanan: 512GB M.2 SSD<br />\r\nGrafik: AMD Radeon Vega 7<br />\r\nOS: Windows 11<br />\r\nPort: 3x USB-A, 1x USB-C, HDMI, 3.5mm audio</p>\r\n', 'produk1708449858.jpg', 1, '2024-02-20 17:24:18'),
(5, 2, 'Poco F5 5G', 5499000, '<p>OS: Android 13, MIUI 14 for POCO<br />\r\nProsesor: Qualcomm SM7475-AB Snapdragon 7+ Gen 2 (4 nm), Octa-core (1&times;2.91 GHz Cortex-X2 &amp; 3&times;2.49 GHz Cortex-A710 &amp; 4&times;1.8 GHz Cortex-A510)<br />\r\nGPU: Adreno 725<br />\r\nRAM: 8GB, 12GB<br />\r\nMemori: 256GB, 512GB<br />\r\nDimensi: 161.1 x 75 x 7.9 mm , 181 g<br />\r\nLayar: AMOLED, 6.67 inci, Full HD+, 120Hz, HDR 10+<br />\r\nKamera: kamera belakang 64 MP, f/1.8 (wide), 8 MP, f/2.2, 120˚ (ultrawide), 2 MP, f/2.4, (macro), kamera depan 16 MP, f/2.5, (wide)<br />\r\nBeterai: Li-Po 5000 mAh, Fast charging 67W&nbsp;<br />\r\nNFC: Ya&nbsp;</p>\r\n', 'produk1708449933.png', 1, '2024-02-20 17:25:33'),
(6, 2, 'Oppo Reno10 5G', 5999000, '<p>OS: Android 12, ColorOS 12.1<br />\r\nProsesor: MediaTek Dimensity 7050, Octa-core (2&times;2.6 GHz Cortex-A78 &amp; 6&times;2.0 GHz Cortex-A55)<br />\r\nGPU: Mali-G68 MC4<br />\r\nRAM: 8 GB<br />\r\nMemori: 256 GB<br />\r\nDimensi:162.4 x 74.2 x 8 mm, 185 gram<br />\r\nLayar: AMOLED 6,7, resolusi 1080 x 2412 piksel dan refresh rate 120Hz<br />\r\nKamera: Kamera belakang 64 MP f/1.7 (wide) + 32MP f/2.2 (telephoto) + 8MP f/2.4 (ultrawide), kamera depan 32 MP (wide)<br />\r\nBaterai: Li-Po 5000 mAh, Fast charging 67W<br />\r\nNFC: Ya</p>\r\n', 'produk1708449978.png', 1, '2024-02-20 17:26:18'),
(7, 2, 'Vivo V25 5G', 5999000, '<p>OS: Android 12, Funtouch 12<br />\r\nProsesor: MediaTek MT6877 Dimensity 900 (6 nm), Octa-core (2&times;2.4 GHz Cortex-A78 &amp; 6&times;2.0 GHz Cortex-A55)<br />\r\nGPU: Mali-G68 MC4<br />\r\nRAM: 8GB<br />\r\nMemori: 256GB<br />\r\nDimensi: 159.2 x 74.2 x 7.8 mm, 186 gram<br />\r\nLayar: AMOLED 6.44 inci, Full HD+, refresh rate 90 Hz<br />\r\nKamera: Kamera belakang 64MP f/1.8, (wide), OIS, 8MP f/2.2 (ultrawide), 2MP f/2.4 (macro), kamera depan 50 MP f/2.0 (wide)<br />\r\nBaterai: 4.500 mAh, 44 Flash Charge<br />\r\nNFC: Tidak ada&nbsp;</p>\r\n', 'produk1708450055.png', 1, '2024-02-20 17:27:35'),
(8, 2, 'Realme 10 Pro', 5000000, '<p>OS: Android Android 13, Realme UI 4.0<br />\r\nProsesor: Qualcomm Snapdragon 695 5G, Octa-core (2&times;2.2 GHz Kryo 660 Gold &amp; 6&times;1.8 GHz Kryo 660 Silver)<br />\r\nGPU: Adreno 619<br />\r\nRAM: 8 GB<br />\r\nMemori: &nbsp;128 GB<br />\r\nDimensi: 163.7 x 74.2 x 8.1 mm or 8.3 mm, 190 gram<br />\r\nLayar: IPS LCD 6,72 inci Full HD+, refresh rate 120Hz<br />\r\nKamera: Kamera belakang 50 MP (wide), 2MP (depth), kamera depan 16 MP<br />\r\nBaterai: Li-Po 5000 mAh, Fast charging 33W<br />\r\nNFC: Ya</p>\r\n', 'produk1708501821.jpg', 1, '2024-02-20 17:28:22'),
(9, 6, 'HyperX Cloud Stinger', 549000, '<p>Rekomendasi pertama hadir dari brand HyperX yang memberikan penawaran headset apik dari segi fisik dan audio. Menggunakan teknologi DTS&reg; Headphone:X&reg; Spatial Audio, perangkat ini memberikan pengalaman suara yang meruang dan penuh. Cukup ringan dengan 275 gram, Cloud Stinger bisa diputar hingga 90 derajat.Bukan hanya output, perangkat ini juga mengklaim hasil input yang tidak kalah keren. Microphone-nya telah mengusung teknologi Swivel-to-mute noise-cancellation yang membuat suara masukan jernih. Satu-satunya permasalahan headset ini adalah mic-nya tidak bisa dibongkar pasang.</p>\r\n', 'produk1708450159.jpeg', 1, '2024-02-20 17:29:19'),
(10, 6, 'Logitech Prodigy G331', 650000, '<p>Berikutnya, ada produk keluaran brand elektronik ternama, Logitech. Dengan driver 50 mm dan mikrofon flip-to-mute 6 mm, membantumu memiliki pengalaman&nbsp;gaming&nbsp;yang fokus tanpa gangguan. Kamu bisa mendengar&nbsp;gamer&nbsp;lain berbicara, pun mereka bisa mendengarmu dengan jelas<br />\r\n&nbsp;</p>\r\n', 'produk1708450196.jpeg', 1, '2024-02-20 17:29:56'),
(11, 6, 'headset Sades Snowwolfs', 325000, '<p>Bosan dengan headset gaming yang mayoritas berwarna gelap suram? Kenalan dulu dengan Snowwolfs dari Sades. Perangkat ini memiliki warna pure white dan dikombinasikan dengan abu-abu.&nbsp;</p>\r\n', 'produk1708450244.jpeg', 1, '2024-02-20 17:30:44'),
(12, 6, 'Rexus Vonix F80 ', 200000, '<p>Dalam situs resminya disebutkan bahwa lini headset ini mengombinasikan desain yang fungsional dengan kenikmatan mendengarkan audio.Fitur yang ditawarkan pun cukup lengkap. Driver 50 mm yang lebih besar menghasilkan suara lebih kuat, mikrofon sensitif yang dapat dilipat, juga earcup over ear yang nyaman.</p>\r\n', 'produk1708450321.jpeg', 1, '2024-02-20 17:32:01'),
(14, 7, 'Logitech G Pro X', 1600000, '<p>Keyboard gaming&nbsp;<a href=\"https://dorangadget.com/product/logitech-g-pro-x-mechanical-keyboard-gaming/\">Logitech G Pro X</a>&nbsp;dirancang khusus untuk kenyamanan dan fungsi optimal. Menggunakan swtich mekanikal Romer G dengan d<em>ual-contact redundant</em>&nbsp;membuat performanya andal saat digunakan tanpa meleset. Desainnya sendiri mengusung&nbsp;<em>tenkeyless</em>&nbsp;untuk memberikan kenyamanan yang ringkas saat digunakan.</p>\r\n\r\n<p>Lampu RGB full spectrumnya dapat disesuaikan dengan pencahayaan khusus. Ditambah lagi dengan fitur Anti-Ghostingnya memberikan keandalan dan kenyamanan tingkat tinggi dan memberikan Anda pengalaman bermain game terbaik dan kalahkan semua lawan Anda dengan mudah.</p>\r\n', 'produk1708501073.jpg', 0, '2024-02-21 07:37:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
