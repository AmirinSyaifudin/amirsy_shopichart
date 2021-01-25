-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2021 pada 05.00
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopichart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kabupaten_id` bigint(20) UNSIGNED NOT NULL,
  `nama_kabupaten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_id` bigint(20) UNSIGNED NOT NULL,
  `kota_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`kabupaten_id`, `nama_kabupaten`, `provinsi_id`, `kota_id`, `created_at`, `updated_at`) VALUES
(1, 'PATI', 6, 6, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(2, 'KUDUS', 25, 3, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(3, 'JEPARA', 1, 7, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(4, 'DEMAK', 30, 1, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(5, 'JUWANA', 23, 9, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(6, 'GROBOGAN', 10, 4, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(7, 'SRAGEN', 19, 4, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(8, 'TEGAL', 5, 6, NULL, NULL),
(9, 'SURAKARTA', 21, 4, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(10, 'SEMARANG', 6, 2, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(11, 'KENDAL', 16, 2, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(12, 'KLATEN', 5, 11, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(13, 'WONOSOBO', 27, 5, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(15, 'BANJARNEGARA', 22, 5, '2020-11-16 21:25:36', '2020-11-16 21:25:36'),
(16, 'CILACAP', 22, 9, '2020-11-16 21:25:36', '2020-11-16 21:25:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `katagori`
--

CREATE TABLE `katagori` (
  `katagori_id` bigint(20) UNSIGNED NOT NULL,
  `kode_katagori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_katagori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `katagori`
--

INSERT INTO `katagori` (`katagori_id`, `kode_katagori`, `nama_katagori`, `keterangan`, `created_at`, `updated_at`) VALUES
(0, 'AD 1001', 'BUSANA MUSLIM', 'PART 1', NULL, NULL),
(1, 'Mr. Mavis Ruecker', 'SEPATU PRIA', 'Quia at quis corrupti error non optio. Quia cupiditate porro tenetur reiciendis tenetur. Aut eaque veritatis ut neque laudantium.', NULL, NULL),
(2, 'Miss Chelsea Hill', 'TAS PRIA', 'Hic itaque molestiae debitis aliquid. Omnis et voluptatem odit sapiente laborum dolor dicta. Molestiae harum magni facere officia velit esse nihil. Iusto suscipit velit et modi qui.', NULL, NULL),
(3, 'Prof. Bonnie Durgan', 'SEPATU WANITA', 'Accusamus corporis quae modi qui vel veritatis. Quis consequatur maxime debitis ut laudantium. Provident necessitatibus voluptatem id illo beatae quis animi.', NULL, NULL),
(4, 'Libby Feil', 'TAS WANITA', 'Ullam cupiditate nobis quae reprehenderit tempore sint. Vero quis et eos iure neque facere voluptas. Animi ut eveniet corporis qui.', NULL, NULL),
(5, 'Prof. Lennie Powlowski', 'JAJANAN NUSANTARA', 'Perferendis dolores quas ipsam. Architecto voluptas nesciunt labore ut harum sunt impedit. Harum hic cumque consequuntur odit velit qui debitis. Placeat quis quis beatae.', NULL, NULL),
(6, 'Hosea Hill', 'KOPI ', 'Quam facere et praesentium earum sed minima consequatur et. Dolore nesciunt incidunt velit sed aut. Ducimus unde ad laboriosam commodi animi sint saepe.', NULL, NULL),
(7, 'Prof. Jasen Feil DVM', 'BUSANA MUSLIM WANITA', 'Fugit non vero commodi itaque molestiae. Enim exercitationem recusandae reprehenderit eligendi. Incidunt et incidunt amet odit quae distinctio impedit qui. Ex iusto consequatur omnis voluptas aut.', NULL, NULL),
(8, 'Adolph Streich', 'BUSANA MUSLIM PRIA', 'Quidem possimus porro est laudantium. Ab accusantium dolores rerum quod explicabo culpa. Omnis modi voluptatem eveniet. Repellat eligendi debitis cumque facilis quibusdam mollitia maxime.', NULL, NULL),
(9, 'Elinor O\'Reilly', 'OLAH RAGA', 'Vero inventore et blanditiis. In impedit neque facilis inventore ipsa est sapiente. Nihil ad ex cupiditate delectus voluptatem molestias. Porro similique vel soluta saepe dignissimos recusandae.', NULL, NULL),
(10, 'Lamar White', 'BAJU WANITA', 'Sit et debitis rerum et repellat aut. Iusto quia non vitae ea sunt et est. Eligendi impedit adipisci eum adipisci nostrum aliquid.', NULL, NULL),
(11, 'AD 1007', 'BAJU PRIA', 'PART 1', NULL, NULL),
(12, 'AD 106', 'CELANA WANITA', 'PART1', NULL, NULL),
(13, 'AD 1005', 'CELANA PRIA', 'PART1', NULL, NULL),
(14, 'SS-0899', 'SEPATU OLAHRAGA', 'ORI DARI INDONESIA', NULL, NULL),
(15, 'AD- 8997', 'KOPI API', 'KAPAL API INDONESIA', NULL, NULL),
(16, 'AW 200', 'Mie Sedap', 'indonesia', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `konfigurasi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `link` varchar(225) NOT NULL,
  `google_map` text NOT NULL,
  `google_plus` int(225) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_google_plus` int(225) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `gambar_pembayaran` varchar(225) NOT NULL,
  `link_peta` varchar(225) NOT NULL,
  `link_1` varchar(225) NOT NULL,
  `nama_produk` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `cara_pesan` enum('Keranjang Belanja','Formulir Pemesanan') NOT NULL,
  `nama_singkat` varchar(200) NOT NULL,
  `tagline` varchar(200) NOT NULL,
  `tentang` text NOT NULL,
  `keterangan` text NOT NULL,
  `no_telpon` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `fax` int(225) NOT NULL,
  `video` varchar(255) NOT NULL,
  `rekening` text NOT NULL,
  `judul_pembayaran` varchar(225) NOT NULL,
  `isi_pembayaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `kota_id` bigint(20) UNSIGNED NOT NULL,
  `nama_kota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`kota_id`, `nama_kota`, `provinsi_id`, `type`, `kode_pos`, `created_at`, `updated_at`) VALUES
(1, 'KOTA JOGJA', 24, 'Suite 173', '48930', '2020-11-16 21:24:23', '2020-11-16 21:24:23'),
(2, 'KOTA KLATEN', 27, 'Apt. 661', '73480-6384', '2020-11-16 21:24:23', '2020-11-16 21:24:23'),
(3, 'KOTA SRAGEN', 15, 'Suite 354', '45720-0950', '2020-11-16 21:24:23', '2020-11-16 21:24:23'),
(4, 'KOTA PURWODADI', 10, 'Suite 296', '18991', '2020-11-16 21:24:23', '2020-11-16 21:24:23'),
(5, 'Kota Jakarta Selatan', 6, '0124', '44444', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(6, 'KOTA PATI', 6, 'Suite 324', '79317', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(7, 'KOTA KUDUS ', 6, 'Suite 935', '39681-2524', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(8, 'KOTA JEPARA', 6, 'Apt. 152', '40219-8945', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(9, 'KOTA SEMARANG', 6, 'Suite 053', '76936', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(10, 'KOTA SOLO', 6, 'Suite 701', '21531', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(11, 'KOTA REMBANG', 26, 'Apt. 951', '11398', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(15, 'KOTA KENDAL', 15, 'Suite 567', '23391-2941', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(17, 'KOTA BATANG', 8, 'Suite 808', '19801', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(18, 'KOTA PEMALANG', 16, 'Suite 454', '92826', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(19, 'KOTA PEKALONGAN', 17, 'Apt. 899', '44597', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(20, 'KOTA BREBES', 8, 'Suite 264', '62452-6316', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(21, 'KOTA TEGAL', 15, 'Suite 612', '67732', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(22, 'KOTA MALANG', 29, 'Apt. 922', '11290-5422', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(26, 'KOTA SURABAYA', 18, 'Suite 475', '80008', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(29, 'KOTA GRESIK', 14, 'Suite 839', '74025-8530', '2020-11-16 19:46:42', '2020-11-16 19:46:42'),
(31, 'KOTA SIDOARJO', 21, 'Apt. 662', '85933', '2020-11-16 21:24:23', '2020-11-16 21:24:23'),
(32, 'KOTA KEDIRI', 15, 'Suite 569', '19870', '2020-11-16 21:24:23', '2020-11-16 21:24:23'),
(33, 'KOTA TUBAN', 13, 'Suite 364', '48307-9142', '2020-11-16 21:24:23', '2020-11-16 21:24:23'),
(34, 'KOTA BOJONEGORO', 29, 'Apt. 275', '96770-9443', '2020-11-16 21:24:23', '2020-11-16 21:24:23'),
(35, 'KOTA MADIUN', 21, 'Suite 205', '76182', '2020-11-16 21:24:23', '2020-11-16 21:24:23'),
(36, 'KOTA BANTEN METROPOLITAN', 1, '12222', '69999', NULL, NULL),
(37, 'KOTA CIANJUR', 5, '1021', '6990', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2020_05_12_061444_create_permission_tables', 1),
(17, '2020_11_07_221923_create_kategori_table', 1),
(18, '2020_11_07_222114_create_produk_table', 1),
(19, '2020_11_07_222158_create_pages_table', 1),
(20, '2020_11_07_222242_create_member_table', 1),
(21, '2020_11_07_222330_create_menu_table', 1),
(22, '2020_11_07_222415_create_menu_admin_table', 1),
(23, '2020_11_07_222451_create_transaksi_table', 1),
(24, '2020_11_07_222518_create_transaksi_detail_table', 1),
(25, '2020_11_11_125730_create_katagori_table', 2),
(26, '2020_11_11_130226_create_produk_table', 2),
(27, '2020_11_11_131308_create_member_table', 2),
(28, '2020_11_11_132141_create_saran_table', 2),
(29, '2020_11_12_011816_create_komentaranda_table', 2),
(30, '2020_11_12_020903_create_transaksi_table', 3),
(31, '2020_11_12_065816_create_customer_table', 4),
(32, '2020_11_12_071328_create_customer_table', 5),
(33, '2020_11_17_023824_create_provinsi_table', 6),
(34, '2020_11_17_023837_create_kota_table', 6),
(35, '2020_11_17_034307_create_kabupaten_table', 7),
(36, '2020_11_17_034633_create_order_table', 8),
(37, '2020_11_17_035457_create_orderdetail_table', 9),
(38, '2020_11_17_060614_create_transaksi_table', 10),
(39, '2020_11_17_060731_create_transaksidetail_table', 10),
(40, '2020_11_19_012059_create_transaksidetail_table', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3),
(2, 'App\\User', 4),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 25),
(2, 'App\\User', 26),
(2, 'App\\User', 27),
(2, 'App\\User', 28),
(2, 'App\\User', 29),
(2, 'App\\User', 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `katagori_id` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`produk_id`, `katagori_id`, `nama_produk`, `cover`, `harga`, `qty`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 9, 'Jersy Liverpool', '1607001717.jpeg', 5000000, 5000, 'Jersy Liverpool pancen Oyeachh', NULL, NULL),
(2, 5, 'KRUPUK BELUT', '1606751285.png', 500000000, 5000, 'KRUPUK BELUT BALI', NULL, NULL),
(3, 5, 'KRUPUK AYAM', '1606751087.jpeg', 600000000, 6000, 'KRUPUK NUSANTARA INA', NULL, NULL),
(4, 5, 'TRASI MADURA', '1606751026.jpeg', 300000000, 3000, 'TRASI INDONESIA', NULL, NULL),
(5, 6, 'KOPI ABC', '1606750973.png', 1000000, 101, 'KOPINYA INDONESIA', NULL, NULL),
(6, 6, 'Kopi Lampung Ort', '1606527285.jpeg', 9000000, 100, 'Kopinya Java', NULL, NULL),
(7, 5, 'Bakpia Jogja', '1606490069.jpeg', 200000, 100, 'Jajanan Jogaj', NULL, NULL),
(8, 6, 'laprop asus', '1606485668.jpeg', 200000, 100, 'laptop', NULL, NULL),
(9, 6, 'bayi tuo', '1606485516.jpeg', 200000, 100, 'iya dong', NULL, NULL),
(10, 6, 'jajan', '1606485226.jpeg', 200000, 15, 'kopi', NULL, NULL),
(11, 5, 'Ikan Teri Pati', '1606484754.png', 200000, 100, 'iyaa', NULL, NULL),
(12, 5, 'iki', '1606483298.jpeg', 200000, 100, 'yoi', NULL, NULL),
(13, 5, 'Mie Sedaap ayam', '1606655788.jpeg', 10000, 20, 'Sedaap', NULL, NULL),
(14, 6, 'Kopi Gayoo Aceh Edit', '1606655826.jpeg', 500000000, 10000, 'Kopi Gayoo Aceh Robusta', NULL, NULL),
(15, 14, 'Sepatu Futsal Nike', '1608682790.jpeg', 300000, 500, 'Ori Indonesia', NULL, NULL),
(16, 14, 'Sepatu Futsal Adidas', '1608682916.jpeg', 500000, 400, 'Ori Adidas Indonesia', NULL, NULL),
(17, 0, '', NULL, 0, 0, '', NULL, NULL),
(18, 0, '', NULL, 0, 0, '', NULL, NULL),
(19, 0, '', NULL, 0, 0, '', NULL, NULL),
(20, 0, '', NULL, 0, 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `provinsi_id` bigint(20) UNSIGNED NOT NULL,
  `nama_provinsi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`provinsi_id`, `nama_provinsi`, `created_at`, `updated_at`) VALUES
(1, 'BANTEN', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(3, 'DKI JAKARTA', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(4, 'DIY YOGYAKARTA', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(5, 'JAWA BARAT', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(6, 'JAWA TENGAH', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(7, 'JAWA TIMUR', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(8, 'BALI', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(9, 'BATAM', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(10, 'PAPUA TENGAH', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(12, 'PAPUA SELATAN', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(13, 'PAPUA UTARA', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(14, 'PAPUA TIMUR', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(15, 'PAPUA BARAT', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(16, 'SUMATRA TIMUR', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(17, 'SUMATRA BARAT', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(18, 'MALUKU', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(19, 'SULAWESI TENGAH', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(20, 'SULAWESI BARAT', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(21, 'MALUKU TIMUR', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(22, 'MALUKU BARAT', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(23, 'MALUKU UTARA', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(24, 'MALUKU SELATAN', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(25, 'MALUKU TENGAH', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(26, 'NUSA TENGGARA TIMUR', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(27, 'NUSA TENGGARA BARAT', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(28, 'KALIMANTAN TIMUR', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(29, 'KALIMANTAN SELATAN', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(30, 'KALIMANTAN TENGAH', '2020-11-16 19:41:04', '2020-11-16 19:41:04'),
(31, 'Manado', NULL, NULL),
(33, 'KALIMANTAN BARAT', NULL, NULL),
(35, 'ACEH', NULL, NULL),
(37, 'AA', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-11-08 07:03:29', '2020-11-08 07:03:29'),
(2, 'user', 'web', '2020-11-08 07:03:29', '2020-11-08 07:03:29'),
(3, 'member', 'web', '2020-11-08 07:03:29', '2020-11-08 07:03:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `produk_id` bigint(20) NOT NULL,
  `kabupaten_id` bigint(20) UNSIGNED NOT NULL,
  `provinsi_id` bigint(20) UNSIGNED NOT NULL,
  `kota_id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telpon` bigint(20) NOT NULL,
  `no_rekening` varchar(225) NOT NULL,
  `kode_pos` varchar(225) NOT NULL,
  `pengirim` varchar(225) NOT NULL,
  `transfer` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `user_id`, `produk_id`, `kabupaten_id`, `provinsi_id`, `kota_id`, `kode_transaksi`, `tanggal`, `nama`, `no_telpon`, `no_rekening`, `kode_pos`, `pengirim`, `transfer`, `keterangan`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, 3, 5, '', '0000-00-00', 'zahro ', 12345678, 'IU-012154320-0156', '', '', 'BCA', '', '', NULL, NULL),
(2, 3, 2, 4, 5, 8, '', '0000-00-00', 'danu ', 12345678, '0124501510', '', '', 'BANK BCA', '', '', NULL, NULL),
(3, 3, 5, 3, 8, 9, '', '0000-00-00', 'aa Sate Kambing', 9867557886, '0135554-02231', '', '', 'P', '', '', NULL, NULL),
(4, 3, 1, 0, 0, 0, '', '0000-00-00', 'Malik', 987546800659, '0976897-89998', '', '', 'P', '', '', NULL, NULL),
(5, 3, 8, 0, 0, 0, '', '0000-00-00', 'AMIR SY', 9867557886, '09788-98789-8787', '', '', 'P', '', '', NULL, NULL),
(6, 3, 9, 0, 0, 0, '', '0000-00-00', 'NISA', 82333565797, 'BCA -089-0899-98', '', '', 'BANK BCA', '', '', NULL, NULL),
(7, 3, 10, 0, 0, 0, '', '0000-00-00', 'sasa', 798077689, 'BNI 09899-9989-99-', '', '', 'BANK BNI SYARIAH', '', '', NULL, NULL),
(8, 10, 4, 13, 0, 0, '', '0000-00-00', 'aa Sate Kambing', 9868907678, '0135554-02231', '', '', 'BANK BCA', '', '', NULL, NULL),
(9, 10, 11, 10, 0, 0, '', '0000-00-00', 'Citra Az Zahra', 9868907678, '0135554-02231', '', '', 'BANK BNI SYARIAH', '', '', NULL, NULL),
(10, 10, 6, 3, 6, 8, '', '0000-00-00', 'Citra Az', 82333565797, 'BCA -089-0899-98', '', '', 'BANK BRI', '', '', NULL, NULL),
(11, 10, 14, 10, 6, 9, '', '0000-00-00', 'Citra', 123456789, 'BCA -089-0899-98', '', '', 'BANK BCA', '', '', NULL, NULL),
(12, 3, 1, 11, 15, 21, '', '0000-00-00', 'aa Sate Kambing', 9868907678, 'BCA -089-0899-98', '01254', 'JNE EXPRESS', 'BANK BRI', '', '', NULL, NULL),
(13, 3, 4, 1, 22, 1, 'DP-0998-UH', '0000-00-00', 'bibi', 9868907678, 'BCA -089-0899-98', '012542', 'POD', 'BANK BCA', 's shs s', 'dzfg vgb s', NULL, NULL),
(14, 3, 6, 1, 1, 1, 'DU-0999-KK', '2020-12-12', 'arfin', 9867557886, 'BNI 09899-9989-99-', '54601', 'POD', 'BANK BCA', 'e rgega', 'xdrg s s', NULL, NULL),
(15, 3, 5, 1, 1, 1, 'NH-98-09', '2020-12-12', 'maya', 9867557886, 'BCA -089-0899-98', '01254', 'POD', 'BANK BCA', 'sgb bsb', 'r gfagr', NULL, NULL),
(16, 3, 5, 1, 1, 1, 'KH-090-U', '2020-12-12', 'Ibnu', 8779067, 'BNI 09899-9989-99-', '012542', 'JNE EXPRESS', 'BANK BNI SYARIAH', 'produk di kirim sebelum puasa', 'Kalimantan', NULL, NULL),
(17, 3, 9, 1, 6, 6, 'DU-0999-KK', '2020-12-12', 'ima', 9868907678, 'BCA -089-0899-98', '012542', 'POD', 'BANK BCA', 'dfv egv', 'sdfg eg', NULL, NULL),
(18, 3, 1, 1, 1, 1, 'DP-0998-UH', '2020-12-13', 'ahmad', 82333565797, '09788-98789-8787', '01254', 'POD', 'BANK BCA', 'fbd esbt', 'db st', NULL, NULL),
(19, 3, 1, 1, 1, 1, 'DP-0998-UH', '2020-12-13', 'aa Sate Kambing', 9868907678, 'BCA -089-0899-98', '01254', 'JNE EXPRESS', 'BANK BCA', 'rtheh', 'yhnr', NULL, NULL),
(20, 3, 5, 1, 1, 1, 'DU-0999-KK', '2020-12-13', 'iqbal', 82333565797, '0135554-02231', '012542', 'JNE EXPRESS', 'BANK BCA', 'rgf erg', 'dfgv eg', NULL, NULL),
(21, 3, 1, 1, 6, 6, 'DU-0999-KK', '2020-12-13', 'aa Sate Kambing', 82333565797, 'BNI 09899-9989-99-', '012542', 'POD', 'BANK BNI SYARIAH', 'gfb nfhn', 'gf yh ty', NULL, NULL),
(22, 11, 1, 1, 6, 6, 'NH-98-09', '2020-12-18', 'Rijal Haq Ramadhan', 123456789, 'BNI 09899-9989-99-', '59111', 'JNE EXPRESS', 'BANK BNI SYARIAH', 'Kirm Sebelum Puasa', 'Sukolilo, Pati 59111', NULL, NULL),
(23, 11, 5, 10, 6, 9, 'DU-0999-KK', '2020-12-18', 'Rijal Haq Ramadhan', 82333565797, 'BCA -089-0899-98', '54601', 'POD', 'BANK BCA', 'Packeging yang rami tahan banting', 'Mijen, Semarang JAWA TENGAH 134', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `transaksi_detail_id` int(11) NOT NULL,
  `transaksi_id` bigint(20) NOT NULL,
  `provinsi_id` bigint(20) NOT NULL,
  `kabupaten_id` bigint(20) NOT NULL,
  `produk_id` bigint(20) NOT NULL,
  `kota_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_invoice` varchar(225) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`transaksi_detail_id`, `transaksi_id`, `provinsi_id`, `kabupaten_id`, `produk_id`, `kota_id`, `qty`, `kode_invoice`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, 3, 11, 11, 3, 11, 11, 'AB-89799', '2020-12-08', '2020-12-08 17:00:00', '2020-12-05 17:00:00'),
(2, 5, 5, 8, 9, 3, 20, 'AD-90979', '2020-12-16', '2020-12-15 17:00:00', '2020-12-16 17:00:00'),
(3, 4, 3, 11, 2, 4, 4, 'OP-9799', '2020-12-01', '2020-12-15 17:00:00', '2020-12-16 17:00:00'),
(4, 2, 3, 11, 1, 4, 2, 'UY-97979', '2020-12-02', '2020-12-15 17:00:00', '2020-12-16 17:00:00'),
(5, 2, 4, 5, 8, 3, 2, 'DP-999', '2020-12-02', '2020-12-27 17:00:00', '2020-12-20 17:00:00'),
(6, 6, 3, 11, 10, 4, 11, 'JK-898979', '2020-12-22', '2020-12-21 21:11:10', '2020-12-22 10:46:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Ku', 'admin@ku.test', NULL, '$2y$10$jMMkWlIYaRHNR1FI3pdcq.wo6P5vbX2yDaXRhkxrV891CWnnTWiwa', NULL, '2020-11-08 07:04:13', '2020-11-08 07:04:13'),
(2, 'Amirin Syaifudin', 'amirinsyaifudin6@gmail.com', NULL, '$2y$10$0DWVvtyH1gR3cXRDCRSCzuDB.OD5FcF0w6wmiT1vTOQ1mD78TgwSO', NULL, '2020-11-14 07:14:44', '2020-11-14 07:14:44'),
(3, 'malik', 'malik@gmail.com', NULL, '$2y$10$PADYOTnhXuMxqUoBQvBzl.KOypOAvH8yRI5iQy2Y0iS.v795xF3em', NULL, '2020-11-14 07:15:07', '2020-11-14 07:15:07'),
(4, 'andi', 'andi@gmail.com', NULL, '$2y$10$lS3ll.U5GNYIV6xNcQ8Aqe6mNcG733cVqVZbWrdECWNp3erA3BodC', NULL, '2020-11-14 07:15:43', '2020-11-14 07:15:43'),
(5, 'Sulaiman Malik', 'sulaimanmalik@gmail.com', NULL, '$2y$10$KDQVl7qCPje4gL54HIsqX.FUweNj4zIkroMNQdUsyFDWYdyMxS0/S', NULL, '2020-12-04 04:29:58', '2020-12-04 04:29:58'),
(6, 'Uno', 'uno@gmail.com', NULL, '$2y$10$0nAb2qrzLBr9sW7RtnJvD.sRYxka8yM5ogprX6j3jNkHaWA3YAS2S', NULL, '2020-12-04 18:36:35', '2020-12-04 18:36:35'),
(7, 'hudi', 'hudi@gmail.com', NULL, '$2y$10$BQI.QFDqo36toWQ.Adz5S.WeuXuRqCGgCPoOlsQkhapmHIbY5lcx.', NULL, '2020-12-04 18:41:10', '2020-12-04 18:41:10'),
(8, 'adin', 'adin@gmail.com', NULL, '$2y$10$J34BOxI/ST59sec8Q3VNA.G0.AOzaYYYH3guoXdtpAKGMGFjBP4g2', NULL, '2020-12-04 18:51:29', '2020-12-04 18:51:29'),
(9, 'hanif', 'hanif@gmail.com', NULL, '$2y$10$6Mio4U3teE3rrpcIN8IyTeUO7VmU7mkkJuREnH8N7Fuuipq2xsjhC', NULL, '2020-12-04 18:55:09', '2020-12-04 18:55:09'),
(10, 'citra', 'citra@gmail.com', NULL, '$2y$10$gJOsyXpPt.RSgugCjkpRUO/nzVGCbvXAlmaqeJw6gszgIW7GnFxya', NULL, '2020-12-04 18:57:39', '2020-12-04 18:57:39'),
(11, 'Rijal Haq', 'rijal@gmail.com', NULL, '$2y$10$akbrPbfAgHONP5.9TEmbbekz023l4hecx9/pI/Tdc1Ch7HqiT9SCa', NULL, '2020-12-18 05:47:21', '2020-12-18 05:47:21'),
(12, 'Eko Rizal', 'eko@gmail.com', NULL, '$2y$10$8Dmk9K.NE3fk/2HTYKdqnONSnlU1MMdbR03eUf4NnES5qW4DlH8NO', NULL, '2020-12-19 19:49:36', '2020-12-19 19:49:36'),
(13, 'Farhan', 'farhan@gmail.com', NULL, '$2y$10$VLb.GuyXixcybtYwZKaFm.Dg9dzHjeNLww7Aum/ZDriyiPkit/q7u', NULL, '2020-12-23 16:02:25', '2020-12-23 16:02:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`kabupaten_id`),
  ADD KEY `kabupaten_provinsi_id_foreign` (`provinsi_id`),
  ADD KEY `kabupaten_kota_id_foreign` (`kota_id`);

--
-- Indeks untuk tabel `katagori`
--
ALTER TABLE `katagori`
  ADD PRIMARY KEY (`katagori_id`);

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`konfigurasi_id`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`),
  ADD KEY `kota_provinsi_id_foreign` (`provinsi_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`),
  ADD KEY `produk_katagori_id_foreign` (`katagori_id`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`provinsi_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `transaksi_produk_id_foreign` (`produk_id`) USING BTREE,
  ADD KEY `transaksi_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `transaksi_kabupaten_id_foreign` (`kabupaten_id`) USING BTREE;

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`transaksi_detail_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `kabupaten_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `katagori`
--
ALTER TABLE `katagori`
  MODIFY `katagori_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `konfigurasi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `provinsi_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `transaksi_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `kabupaten_kota_id_foreign` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `kabupaten_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`provinsi_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `kota_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`provinsi_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_katagori_id_foreign` FOREIGN KEY (`katagori_id`) REFERENCES `katagori` (`katagori_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
