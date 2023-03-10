-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2023 at 03:43 AM
-- Server version: 10.5.10-MariaDB-debug-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-spatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_01_06_035346_create_sessions_table', 1),
(7, '2021_01_17_161413_create_products_table', 1),
(8, '2021_01_17_161417_create_product_categories_table', 1),
(9, '2021_01_17_161427_create_product_galleries_table', 1),
(10, '2021_01_17_161441_create_transactions_table', 1),
(11, '2021_01_18_014436_add_roles_and_username_to_users_table', 1),
(12, '2021_03_10_095130_create_transaction_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('irkham.nazmi@gmail.com', '$2y$10$1MMeWVRZqBZWuU5yZvccjeMz0YAaW1mWEsL0vKVvZICRmXtvMGy0S', '2023-01-18 21:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', '4064d0e986b251eef4d664946caabafd2a523e5686a0d952a469a19f3fb951d4', '[\"*\"]', NULL, '2023-01-17 09:32:36', '2023-01-17 09:32:36'),
(3, 'App\\Models\\User', 2, 'authToken', '06f13d759daedc37550f5a0c2b71d8e4bf91a3f7b196dc2d688a0945c07edf29', '[\"*\"]', '2023-01-18 01:28:56', '2023-01-17 20:26:17', '2023-01-18 01:28:56'),
(4, 'App\\Models\\User', 2, 'authToken', 'f875dc2eedc5b8ce6f528d22ed7022778b814b867d2cdf5ccf1e27364774d722', '[\"*\"]', NULL, '2023-01-18 08:20:28', '2023-01-18 08:20:28'),
(5, 'App\\Models\\User', 4, 'authToken', '45a3323504d50454ce9059ff9cd1c19114ab3b46916dee12b45947e18de155ee', '[\"*\"]', NULL, '2023-01-21 09:27:48', '2023-01-21 09:27:48'),
(6, 'App\\Models\\User', 4, 'authToken', 'df088db8d70eb32e3190a611faac96cdee99c3791b796c287bc5d682982993d7', '[\"*\"]', NULL, '2023-01-21 21:07:18', '2023-01-21 21:07:18'),
(7, 'App\\Models\\User', 4, 'authToken', '8ae30b9113b423a5ddee432ef3e6efd278ede1df92e2dd1831161856925694b8', '[\"*\"]', NULL, '2023-01-21 21:08:21', '2023-01-21 21:08:21'),
(8, 'App\\Models\\User', 4, 'authToken', '2d9191416120b87afa9706f621f19a9de84d4352bd58405eede6ace8fecdc8f8', '[\"*\"]', NULL, '2023-01-21 21:18:15', '2023-01-21 21:18:15'),
(9, 'App\\Models\\User', 4, 'authToken', '742e9a47b74c51eac36a0ffdf6ae20c1bff95956bfdced37355a7fca23160c36', '[\"*\"]', NULL, '2023-01-21 21:21:45', '2023-01-21 21:21:45'),
(10, 'App\\Models\\User', 4, 'authToken', 'd87a21acf981ae5e6a6b68330918d13667472292826616e6d1820e6a1dc2b400', '[\"*\"]', NULL, '2023-01-21 21:27:26', '2023-01-21 21:27:26'),
(11, 'App\\Models\\User', 4, 'authToken', '1673f0bcd3e7f7c4cd98760a11c1bf80cefc8f683eea7043cdcaef9a3c1d170e', '[\"*\"]', NULL, '2023-01-21 21:32:16', '2023-01-21 21:32:16'),
(12, 'App\\Models\\User', 4, 'authToken', 'f5b5db6c563dffbd221c943a480c7ee47c822022ace9d739665425238916cb64', '[\"*\"]', NULL, '2023-01-21 21:33:04', '2023-01-21 21:33:04'),
(13, 'App\\Models\\User', 4, 'authToken', 'fcfb6412e6b2668f334d2119841ed432ebccea7d77eedfbafde8641f0d7753a2', '[\"*\"]', NULL, '2023-01-21 21:36:59', '2023-01-21 21:36:59'),
(14, 'App\\Models\\User', 4, 'authToken', '75ae9c83a169b7c8503a982d4a36d1f3e5a3cbc50981b62aee941513c769332b', '[\"*\"]', NULL, '2023-01-22 01:42:26', '2023-01-22 01:42:26'),
(15, 'App\\Models\\User', 4, 'authToken', '0954d33c292ea7c4de360bc750846ae02c02c4e3164d6c5c1e6c6de64f9ce1c3', '[\"*\"]', NULL, '2023-01-22 03:29:16', '2023-01-22 03:29:16'),
(16, 'App\\Models\\User', 4, 'authToken', 'b519d2c92be91975628dad10bc2e036412d0eaf6ad43c35960f2d493a21a2840', '[\"*\"]', NULL, '2023-01-22 19:22:29', '2023-01-22 19:22:29'),
(17, 'App\\Models\\User', 4, 'authToken', '918bd334d3f5a31e7c50ca6b6fae87e6c72a08de52665370ac55a4cad18b616c', '[\"*\"]', NULL, '2023-01-22 19:24:34', '2023-01-22 19:24:34'),
(18, 'App\\Models\\User', 4, 'authToken', 'c3ff293ba7f394ccc5e7a829a2a130cf17ea476f6ae09e5324f0f281f8dd121b', '[\"*\"]', NULL, '2023-01-23 03:28:47', '2023-01-23 03:28:47'),
(19, 'App\\Models\\User', 4, 'authToken', 'fdc2c033b1c3d645937bc6609171dfa5f937eb05671dba7aaeb80509be278c98', '[\"*\"]', NULL, '2023-01-23 03:30:58', '2023-01-23 03:30:58'),
(20, 'App\\Models\\User', 4, 'authToken', '711d325fdc23748cca434acfbe892ea7e4ed184e104bfdb732df73ad3fab9333', '[\"*\"]', NULL, '2023-01-23 08:07:17', '2023-01-23 08:07:17'),
(21, 'App\\Models\\User', 4, 'authToken', '2f836d22ed6b0927678df13a4bb4b603ecc723dbd279f0f53499006c7b2293db', '[\"*\"]', NULL, '2023-01-23 08:08:09', '2023-01-23 08:08:09'),
(22, 'App\\Models\\User', 4, 'authToken', '6c5d373cb5b9319e8d9f8ce2f7ab5512e8347f11a4d3d6d2d47615be89509980', '[\"*\"]', NULL, '2023-01-23 08:10:25', '2023-01-23 08:10:25'),
(23, 'App\\Models\\User', 4, 'authToken', '74e3113772e9c79308bded5bfba12cd784d324f0735038b8d66b12440cfd3b3a', '[\"*\"]', NULL, '2023-01-23 08:12:20', '2023-01-23 08:12:20'),
(24, 'App\\Models\\User', 4, 'authToken', 'e68e6737ed7ce6eb256b564c226638e10b23df22e78766b345b782e92b60c6f4', '[\"*\"]', NULL, '2023-01-23 08:14:50', '2023-01-23 08:14:50'),
(25, 'App\\Models\\User', 4, 'authToken', 'eb66296e34ca7dedbc41a5c56bc271faed19c34a718869d542e77bb7130544c6', '[\"*\"]', NULL, '2023-01-23 08:26:39', '2023-01-23 08:26:39'),
(26, 'App\\Models\\User', 4, 'authToken', '3e44e180001f820729625f8d100fcd45d2c4dbb0977f4f91a85b5139af0946cb', '[\"*\"]', NULL, '2023-01-23 08:28:11', '2023-01-23 08:28:11'),
(27, 'App\\Models\\User', 4, 'authToken', '1f3b73b38ff5fea67bd6efa3fa7f58cf09e7c7ac2909e580564dbac1e2072461', '[\"*\"]', NULL, '2023-01-24 08:33:19', '2023-01-24 08:33:19'),
(28, 'App\\Models\\User', 4, 'authToken', 'ebdfb9bb5aede02c1f8446b5efc566df5fcd533e435668bb1b355b39f22c5680', '[\"*\"]', NULL, '2023-01-24 08:34:04', '2023-01-24 08:34:04'),
(29, 'App\\Models\\User', 4, 'authToken', '2f227bd74615347dd2172c2a845ec65eb44f86081a9323ea36233548e899fe88', '[\"*\"]', NULL, '2023-01-24 08:47:38', '2023-01-24 08:47:38'),
(30, 'App\\Models\\User', 4, 'authToken', '22a2586283660250f7df14c3544cf28603edc45fc9787e234713f3e7a9c9076a', '[\"*\"]', NULL, '2023-01-24 08:58:48', '2023-01-24 08:58:48'),
(31, 'App\\Models\\User', 4, 'authToken', '66d52a4ec3e7a6ddc16ac7b800fe6a82d3633dcd58f742a1921d73f248cedb97', '[\"*\"]', NULL, '2023-01-24 08:59:54', '2023-01-24 08:59:54'),
(32, 'App\\Models\\User', 4, 'authToken', '78b2b647a6fa21e16650530beaa0251ef1f3d3bcdd94148aeea94d511bc0b8ec', '[\"*\"]', NULL, '2023-01-24 09:13:48', '2023-01-24 09:13:48'),
(33, 'App\\Models\\User', 4, 'authToken', '771ed809bc0a94c67a56cbea9b2e7f31d04f2ad7f09555b52c7622c92ce752ef', '[\"*\"]', NULL, '2023-01-24 09:15:20', '2023-01-24 09:15:20'),
(34, 'App\\Models\\User', 4, 'authToken', '9b804611f5ed29245e90162f36fbb85cadc4cc0ece1772b4ca05c02c2293e6dd', '[\"*\"]', NULL, '2023-01-24 09:17:37', '2023-01-24 09:17:37'),
(35, 'App\\Models\\User', 4, 'authToken', '3311ed984284afa7d918bfba8ec1d2265999ad3d1856257c94ee9e3a2fb0bffe', '[\"*\"]', NULL, '2023-01-24 09:23:56', '2023-01-24 09:23:56'),
(36, 'App\\Models\\User', 4, 'authToken', '33f88803f3ed30658d737e6129cc14aaae4dfbceaebd171b1bff0c01e792e7d6', '[\"*\"]', NULL, '2023-01-24 17:15:44', '2023-01-24 17:15:44'),
(37, 'App\\Models\\User', 4, 'authToken', '7d26b8174c5a4bfaf66b2fc4749acf6b09de35197a72b3c96a36fc20ba981fe5', '[\"*\"]', NULL, '2023-01-24 17:20:36', '2023-01-24 17:20:36'),
(38, 'App\\Models\\User', 4, 'authToken', '5e9dba53023151b09a70d4b5da49ae8652ab6efa762f33e8378ad13915a083d3', '[\"*\"]', NULL, '2023-01-24 17:21:55', '2023-01-24 17:21:55'),
(39, 'App\\Models\\User', 4, 'authToken', '60c2fa62586b0bcda0f9a12094fc2828d474d87d8a01f0d630f1dd0ecd02a434', '[\"*\"]', NULL, '2023-01-24 17:25:17', '2023-01-24 17:25:17'),
(40, 'App\\Models\\User', 4, 'authToken', '2fd39016156c62939264d98ace0bae1f4c59c2fbd78272a8b8cb247d533a5902', '[\"*\"]', NULL, '2023-01-24 17:30:00', '2023-01-24 17:30:00'),
(41, 'App\\Models\\User', 4, 'authToken', 'de85d2d7e22f683131dfb31b5ec6d6aec250aa4236aed69e1373591712f63fd1', '[\"*\"]', NULL, '2023-01-24 17:33:42', '2023-01-24 17:33:42'),
(42, 'App\\Models\\User', 4, 'authToken', '3a33535aad4de87971d13fbfc80193b31390d9412b603879cd0007ee903a2b2c', '[\"*\"]', NULL, '2023-01-24 17:35:01', '2023-01-24 17:35:01'),
(43, 'App\\Models\\User', 4, 'authToken', 'cf6e7781c8cb2404db1e7db3a5d4ed56a69cdd6b6f92f7876949dd530cbefd0b', '[\"*\"]', NULL, '2023-01-24 18:00:58', '2023-01-24 18:00:58'),
(44, 'App\\Models\\User', 4, 'authToken', 'c499a331388c65a1263220353639417f6accedbb7d50fcb2464643b3efe1fef0', '[\"*\"]', NULL, '2023-01-24 18:05:10', '2023-01-24 18:05:10'),
(45, 'App\\Models\\User', 4, 'authToken', '9782e7ca65a51b5afdb853c5850e4f291a981be6020de1f382197b995c5d58aa', '[\"*\"]', NULL, '2023-01-24 18:08:03', '2023-01-24 18:08:03'),
(46, 'App\\Models\\User', 4, 'authToken', '3b6c0fb88b62cd480eed83ca0a4d1c9d46fe22901156679ed0a5cef24abbe8f9', '[\"*\"]', NULL, '2023-01-24 18:12:18', '2023-01-24 18:12:18'),
(47, 'App\\Models\\User', 4, 'authToken', '4903dd8d88803ffb12df57b7ef4d626415725dfff7f7881bcbec2c2bec621ddf', '[\"*\"]', NULL, '2023-01-24 18:17:49', '2023-01-24 18:17:49'),
(48, 'App\\Models\\User', 4, 'authToken', 'c2442d50b90ed9b56126dede510a362613d7bad11f64b810450a02cd0db654af', '[\"*\"]', NULL, '2023-01-24 18:29:04', '2023-01-24 18:29:04'),
(49, 'App\\Models\\User', 4, 'authToken', '3b7f01bc73bfa055cdbfea82804aec73b85dfbf2f902fcbc4d81cb9a4b0a7460', '[\"*\"]', NULL, '2023-01-24 18:30:00', '2023-01-24 18:30:00'),
(50, 'App\\Models\\User', 4, 'authToken', '63a9dad7709efdae4a35246b2959259c97dd85365671d4f1e03716f3ffb226d7', '[\"*\"]', NULL, '2023-01-24 18:49:46', '2023-01-24 18:49:46'),
(51, 'App\\Models\\User', 4, 'authToken', '0b9761761117b774566e4614da90b3184d57e6d55356ba0db63251690b3788ac', '[\"*\"]', NULL, '2023-01-24 19:08:28', '2023-01-24 19:08:28'),
(52, 'App\\Models\\User', 4, 'authToken', '907509f029d0a65e6bf2e0e60fa893477b0c7b0bc3f2882acec065e863b53397', '[\"*\"]', NULL, '2023-01-24 19:43:42', '2023-01-24 19:43:42'),
(53, 'App\\Models\\User', 4, 'authToken', '4b1b02f706c84bc675171ac69d9339258f559cda17f1e2bc7dcde627d6562b36', '[\"*\"]', NULL, '2023-01-24 19:44:26', '2023-01-24 19:44:26'),
(54, 'App\\Models\\User', 4, 'authToken', '24b1256f55a6c01fdb865c9b8994d1cb80ae5144fb4cd1e03aaf4a6cafca1c77', '[\"*\"]', NULL, '2023-01-24 19:49:18', '2023-01-24 19:49:18'),
(55, 'App\\Models\\User', 4, 'authToken', '5d804dda44a70e540619f0711539977e9bbc33558b6f5382b3b16390df3061d7', '[\"*\"]', NULL, '2023-01-24 19:54:03', '2023-01-24 19:54:03'),
(56, 'App\\Models\\User', 4, 'authToken', 'd3b6a701a7772453d704c0030bd8df209fb4eaf09363af2352747505b5e6369b', '[\"*\"]', NULL, '2023-01-24 20:03:20', '2023-01-24 20:03:20'),
(57, 'App\\Models\\User', 4, 'authToken', '8f22b9b023aaa7496fef28e9efc89c5c477b24ea676ffe8332ce808e51f0d125', '[\"*\"]', NULL, '2023-01-24 20:07:01', '2023-01-24 20:07:01'),
(58, 'App\\Models\\User', 4, 'authToken', '328d8715e0455a2d867c8065011ba380f3f8dc11fd78d85866b696f073df230c', '[\"*\"]', NULL, '2023-01-24 20:09:21', '2023-01-24 20:09:21'),
(59, 'App\\Models\\User', 4, 'authToken', '97f2b11fefdbe5aeed1c299826aa0cda24d4b830c1476cc60dd44b3a9491d16d', '[\"*\"]', NULL, '2023-01-24 22:16:08', '2023-01-24 22:16:08'),
(60, 'App\\Models\\User', 4, 'authToken', 'e28c5c382eaa6d59764f997a38576c6ef7c8ba99ad3b155e303b9002d46a2e56', '[\"*\"]', NULL, '2023-01-24 22:17:02', '2023-01-24 22:17:02'),
(61, 'App\\Models\\User', 4, 'authToken', '01628e33bcca629aa59170b9f50393ebb521936b9dec36d5eff2e63bd971f8c3', '[\"*\"]', NULL, '2023-01-24 22:18:28', '2023-01-24 22:18:28'),
(62, 'App\\Models\\User', 4, 'authToken', '92e0c9f5e7a61704b45b3a23a6af3a7c668c0277e9783e9535b46d446718a187', '[\"*\"]', NULL, '2023-01-24 22:19:54', '2023-01-24 22:19:54'),
(63, 'App\\Models\\User', 4, 'authToken', '99759b38034cce4b0b1dce1677caf75d9109ef1740cef95de76c6c4dbabe21dc', '[\"*\"]', NULL, '2023-01-24 22:21:21', '2023-01-24 22:21:21'),
(64, 'App\\Models\\User', 4, 'authToken', '60cc4db6a12b2d97c0423ce946cd2e401d97a86b586a90f39619a4392a47826e', '[\"*\"]', NULL, '2023-01-24 22:25:47', '2023-01-24 22:25:47'),
(65, 'App\\Models\\User', 4, 'authToken', '88bfd4ffa4dd6a63a0e5b81e72ffdbb08d2874a998a0ae4ef77ed09737cfa9a0', '[\"*\"]', NULL, '2023-01-25 05:26:30', '2023-01-25 05:26:30'),
(66, 'App\\Models\\User', 4, 'authToken', 'a125489ab4f14848d64bc2c02c0dc76092d1c01a068a53fcbf2e923a1bb677d4', '[\"*\"]', NULL, '2023-01-25 05:29:44', '2023-01-25 05:29:44'),
(67, 'App\\Models\\User', 4, 'authToken', '47db187f584f7ece8e1dc57d98bacaed8f6d42bd78b7431bf857de21bbb221fa', '[\"*\"]', NULL, '2023-01-25 09:07:05', '2023-01-25 09:07:05'),
(68, 'App\\Models\\User', 4, 'authToken', '7b27e05d0458cae66a66dda282f4ae5faa957e10505370235c803a0b42ebfe81', '[\"*\"]', NULL, '2023-01-25 09:13:05', '2023-01-25 09:13:05'),
(69, 'App\\Models\\User', 4, 'authToken', 'ec4a52299474bb3d0b695079834fa5dd501be3ee056b1037b8cb864934a6e41e', '[\"*\"]', NULL, '2023-01-25 09:17:29', '2023-01-25 09:17:29'),
(70, 'App\\Models\\User', 4, 'authToken', '88c4151bf536c95f5a3981bea0ba235ed447c459d3be01e1753507f77d93b930', '[\"*\"]', NULL, '2023-01-26 00:17:18', '2023-01-26 00:17:18'),
(71, 'App\\Models\\User', 4, 'authToken', '06855ec74f294d1ffd224ee73511f6969a5e1f111b5c63323ad4b49188f581ed', '[\"*\"]', NULL, '2023-01-27 09:14:41', '2023-01-27 09:14:41'),
(72, 'App\\Models\\User', 4, 'authToken', '2b9d09a8ddb4d3e4d281063617f2e3e5463ecf77a06c1af927d4e0c4ad92f824', '[\"*\"]', NULL, '2023-01-27 09:15:35', '2023-01-27 09:15:35'),
(73, 'App\\Models\\User', 4, 'authToken', '0827f56d280ceee46a556ca965c248f20a647110778c2b3e35ce1b3c2dcd4100', '[\"*\"]', NULL, '2023-01-28 19:05:48', '2023-01-28 19:05:48'),
(74, 'App\\Models\\User', 4, 'authToken', 'd9a54091d2bafbaa35ba23d1a0f4b87b22e813f9ff092a927889c02da002e6a4', '[\"*\"]', NULL, '2023-01-28 19:09:56', '2023-01-28 19:09:56'),
(75, 'App\\Models\\User', 4, 'authToken', '1e03338584a81485a307b8d1952669876ea33f1288a1525372eefafe519cb6f5', '[\"*\"]', NULL, '2023-01-28 19:12:10', '2023-01-28 19:12:10'),
(76, 'App\\Models\\User', 4, 'authToken', 'ea0e831d72a14740968bfe637108199f8e77af4313d16c9f81bdc09758eefbae', '[\"*\"]', NULL, '2023-01-28 20:29:31', '2023-01-28 20:29:31'),
(77, 'App\\Models\\User', 4, 'authToken', '1548b06912b9bd5664e43732ef90c1c9346191af3b3329f88ecbefd9e6dc1ad1', '[\"*\"]', NULL, '2023-01-28 20:41:19', '2023-01-28 20:41:19'),
(78, 'App\\Models\\User', 4, 'authToken', 'a207f8ff7b476387d0f697c796ac4e35782868ecae09cbb56a9d83f14486a856', '[\"*\"]', NULL, '2023-01-28 20:44:29', '2023-01-28 20:44:29'),
(79, 'App\\Models\\User', 4, 'authToken', '5bc07625e86214783cc3da936fdaf85637c6370926ebb02b227000da25f8ddcc', '[\"*\"]', NULL, '2023-01-28 21:37:08', '2023-01-28 21:37:08'),
(80, 'App\\Models\\User', 4, 'authToken', '5026101d14d15e3d2e153b458f8a52803b4349979b211d3658861dc1bc6884b3', '[\"*\"]', '2023-01-28 21:46:38', '2023-01-28 21:46:09', '2023-01-28 21:46:38'),
(81, 'App\\Models\\User', 4, 'authToken', '0b6410857f2cdaa97b40054e3214e98a559b78371b54847621f178a6e250af8a', '[\"*\"]', '2023-01-28 21:51:47', '2023-01-28 21:49:12', '2023-01-28 21:51:47'),
(82, 'App\\Models\\User', 4, 'authToken', '6387303c4ab7c3f8c3dc2a1812709d811f0b276163e206dca7b46b37526209e3', '[\"*\"]', '2023-01-28 21:55:51', '2023-01-28 21:55:37', '2023-01-28 21:55:51'),
(83, 'App\\Models\\User', 4, 'authToken', '981c41ba380da76fccc2491b4a5496dc8660618c49dd03aa831ac00580424865', '[\"*\"]', '2023-01-28 23:58:41', '2023-01-28 23:57:45', '2023-01-28 23:58:41'),
(84, 'App\\Models\\User', 4, 'authToken', '081bbf85550820c748c2a434438855638f82d9594d840762460eae2a02123547', '[\"*\"]', '2023-01-29 02:23:03', '2023-01-29 00:03:58', '2023-01-29 02:23:03'),
(85, 'App\\Models\\User', 4, 'authToken', 'c3411d0da1add75034646571c65e3080b96470c37c25b063f07fc3744444c7ba', '[\"*\"]', NULL, '2023-01-30 09:03:02', '2023-01-30 09:03:02'),
(86, 'App\\Models\\User', 4, 'authToken', '01a3ed00a763b0efa6e879a7712872f3ac6ed55ecc2367ec7c3cb246263b87b5', '[\"*\"]', NULL, '2023-01-30 09:03:49', '2023-01-30 09:03:49'),
(87, 'App\\Models\\User', 4, 'authToken', 'dda7987e7827fcd5c3e27367b7fdd71c027957dfd6582d40d2aec4e62684c286', '[\"*\"]', NULL, '2023-01-30 16:53:10', '2023-01-30 16:53:10'),
(88, 'App\\Models\\User', 4, 'authToken', 'e84591e6ee2d99bfb4f3fded10a51afaa8105401dcb58a17ed8c3c52cafb74ff', '[\"*\"]', NULL, '2023-01-30 16:54:33', '2023-01-30 16:54:33'),
(89, 'App\\Models\\User', 4, 'authToken', 'ff0bd9ad32d828118bed5513d885b80cc19a7dbca751971f82714887b001b15e', '[\"*\"]', NULL, '2023-01-30 19:37:44', '2023-01-30 19:37:44'),
(90, 'App\\Models\\User', 4, 'authToken', '7764404a8ab10ed9452bfba18f566acb124f97324d447fae5a03a56245368e2c', '[\"*\"]', NULL, '2023-01-31 21:47:07', '2023-01-31 21:47:07'),
(91, 'App\\Models\\User', 4, 'authToken', '09fd9324261164f314894693ad8e1f3586c2a7902e8211e5a36d64a31dd50233', '[\"*\"]', NULL, '2023-02-01 00:43:38', '2023-02-01 00:43:38'),
(92, 'App\\Models\\User', 4, 'authToken', 'cd3c06b86a75a093abb91ce41dbb942f5ad3a8411d4a049d5f888d04a12f6329', '[\"*\"]', NULL, '2023-02-01 00:44:11', '2023-02-01 00:44:11'),
(93, 'App\\Models\\User', 4, 'authToken', '358983e83f58ca446fbe54afc3c36e0a270d88166bf6a187790daac4a0fd97cf', '[\"*\"]', NULL, '2023-02-01 00:44:54', '2023-02-01 00:44:54'),
(94, 'App\\Models\\User', 4, 'authToken', 'c946eb60097c7691f78dbb9ce0956bfbc01b832c2f5aa06418f49eb5d6a3e76a', '[\"*\"]', NULL, '2023-02-01 00:46:24', '2023-02-01 00:46:24'),
(95, 'App\\Models\\User', 4, 'authToken', '0bd4eacbf40705101b8f5e2b6a4483093a97e72b8db7b4e30b3ab7f00f8b9cdd', '[\"*\"]', NULL, '2023-02-01 00:55:31', '2023-02-01 00:55:31'),
(96, 'App\\Models\\User', 4, 'authToken', '8b59de4b55a72172fe3532729449c0ace82f46ff919c2c0715bcd5e326c767fd', '[\"*\"]', NULL, '2023-02-01 00:56:10', '2023-02-01 00:56:10'),
(97, 'App\\Models\\User', 4, 'authToken', '84b1d0bfa55f7e2c60798f124fa9397a534ca2ad993d55ea79028d064b159e74', '[\"*\"]', NULL, '2023-02-01 01:16:12', '2023-02-01 01:16:12'),
(98, 'App\\Models\\User', 4, 'authToken', '760d69bc0005d272cd6682b8760c5aff73da92e835036716bf2059ef99e70c1b', '[\"*\"]', NULL, '2023-02-01 01:40:34', '2023-02-01 01:40:34'),
(99, 'App\\Models\\User', 4, 'authToken', '3e108e5fb3a6c6266d949f960a3ad1d101da1d62074cb29958c5511292987216', '[\"*\"]', NULL, '2023-02-07 20:37:44', '2023-02-07 20:37:44'),
(100, 'App\\Models\\User', 4, 'authToken', '0b1ed4b158efb809c1c9fab62b561eccb0c45c9f2cfdcf4ba9e5c4a56b16f61a', '[\"*\"]', NULL, '2023-02-07 20:39:42', '2023-02-07 20:39:42'),
(101, 'App\\Models\\User', 4, 'authToken', '93e72ecd547ffe2073c2d08aeac2d7587f2ce8bb38c0620269e7d83d3fce5887', '[\"*\"]', NULL, '2023-02-07 20:42:48', '2023-02-07 20:42:48'),
(102, 'App\\Models\\User', 4, 'authToken', 'ce78d83c7bedf008e65aa3cda68377003b61151eadc1ed0d1a03f8ad8ffdd7ad', '[\"*\"]', NULL, '2023-02-07 20:44:37', '2023-02-07 20:44:37'),
(103, 'App\\Models\\User', 4, 'authToken', 'a00bb3637782e84613403e32f2b23038ab49e173419b71b982029ee2ee34285a', '[\"*\"]', NULL, '2023-02-07 20:58:12', '2023-02-07 20:58:12'),
(104, 'App\\Models\\User', 4, 'authToken', '703d0ddbb559e0913bf2616b5ad0cc2e53682abe93d97186efd565f7a3ff4d7c', '[\"*\"]', NULL, '2023-02-07 21:15:06', '2023-02-07 21:15:06'),
(105, 'App\\Models\\User', 4, 'authToken', 'b45bcb671299db71a844f98ab6453d2f9c024c359f658fb4226a12e49a2c1529', '[\"*\"]', NULL, '2023-02-07 21:26:39', '2023-02-07 21:26:39'),
(106, 'App\\Models\\User', 4, 'authToken', '42fb64c99b0af1eb2a444b4f0292d9a926b05fa757a52033dcb362953aa8e582', '[\"*\"]', NULL, '2023-02-07 21:27:40', '2023-02-07 21:27:40'),
(107, 'App\\Models\\User', 4, 'authToken', '5f73aac94d92e35780695b7daa737f3c759669b1d0fba6d8267c26e54523191a', '[\"*\"]', NULL, '2023-02-08 00:47:33', '2023-02-08 00:47:33'),
(108, 'App\\Models\\User', 4, 'authToken', '806c78e254b20fa3933a8a83f578dcd987eb9806a43369667226ef8fa4e2b60e', '[\"*\"]', NULL, '2023-02-08 00:47:33', '2023-02-08 00:47:33'),
(109, 'App\\Models\\User', 4, 'authToken', '32b1cee65169cb3636f21becb129a8e29bc2d03709ae8fae1b5a8f8758494cad', '[\"*\"]', NULL, '2023-02-08 00:47:34', '2023-02-08 00:47:34'),
(110, 'App\\Models\\User', 4, 'authToken', 'a8437a74514eba0d741ac8cb0e4ad6f17121be35ceb922d2fea9a677c3c0e5ed', '[\"*\"]', NULL, '2023-02-08 00:47:34', '2023-02-08 00:47:34'),
(111, 'App\\Models\\User', 4, 'authToken', '0b7be8ee0c3ea3be845a7226ab1c38883ff7424a29bdd9479d2da062c902af2b', '[\"*\"]', NULL, '2023-02-08 00:49:20', '2023-02-08 00:49:20'),
(112, 'App\\Models\\User', 4, 'authToken', '180657d0763a38f66059a176a6b34484563b2966b31b98817edf63924b8d4605', '[\"*\"]', NULL, '2023-02-08 01:03:10', '2023-02-08 01:03:10'),
(113, 'App\\Models\\User', 4, 'authToken', 'fba0862a17609187de7ff6d481ea90c4f7c67af1e22756b18d20633677ac4e21', '[\"*\"]', NULL, '2023-02-08 01:37:33', '2023-02-08 01:37:33'),
(114, 'App\\Models\\User', 4, 'authToken', 'cc14810ddc87eeb9b855d93d575758fafb90a940f22a05ec38ef86311d94b416', '[\"*\"]', NULL, '2023-02-10 08:40:08', '2023-02-10 08:40:08'),
(115, 'App\\Models\\User', 4, 'authToken', '7587ee832a8c8e1560641ba01d6552482476820320fcc391b5f924a5e35f0ba0', '[\"*\"]', NULL, '2023-02-10 08:51:01', '2023-02-10 08:51:01'),
(116, 'App\\Models\\User', 4, 'authToken', 'e94970b6bebaafc949cce1418137e4f5b2eb30a2597b410c709569ff25b3a7a3', '[\"*\"]', NULL, '2023-02-10 16:27:18', '2023-02-10 16:27:18'),
(117, 'App\\Models\\User', 4, 'authToken', '96c4a05b9afb7a086686bb995c30c568a93e2e628b1299fe0f3f487076950ac6', '[\"*\"]', NULL, '2023-02-10 16:28:24', '2023-02-10 16:28:24'),
(118, 'App\\Models\\User', 4, 'authToken', '23e7d1af7c3ecc28c9786993049340de5d01c145af6e30f878cc4da1acd3dbd3', '[\"*\"]', NULL, '2023-02-10 16:36:44', '2023-02-10 16:36:44'),
(119, 'App\\Models\\User', 4, 'authToken', 'c0340696f97f296f27217fc36e696adb45a9400d453770c0384e656fe85bcc8b', '[\"*\"]', NULL, '2023-02-10 16:59:39', '2023-02-10 16:59:39'),
(120, 'App\\Models\\User', 4, 'authToken', '435bc3f21c52fcd884366d409a52a8b05f1cb93b0e8f5bcf84e407420fa908e9', '[\"*\"]', NULL, '2023-02-10 17:00:40', '2023-02-10 17:00:40'),
(121, 'App\\Models\\User', 4, 'authToken', '6f6a0b33624317940c842d1c4dec4b178e1b9c269d756918447b28645fe0b74d', '[\"*\"]', NULL, '2023-02-10 17:01:23', '2023-02-10 17:01:23'),
(122, 'App\\Models\\User', 4, 'authToken', '330c1dce365caeac7a1c6f0223d21de87448678466222ce71837fc82596c0094', '[\"*\"]', NULL, '2023-02-10 17:03:37', '2023-02-10 17:03:37'),
(123, 'App\\Models\\User', 4, 'authToken', 'cb57fa2c87950d8abb24a7eada7d860f2cbf028a85b71be184d7e09a470b91fb', '[\"*\"]', NULL, '2023-02-11 18:57:58', '2023-02-11 18:57:58'),
(124, 'App\\Models\\User', 4, 'authToken', '4f8d5c34a90e3d6bb62c62f6e1fd4f78fa71b7500b25b735e918a74e4dc2c273', '[\"*\"]', NULL, '2023-02-11 19:00:49', '2023-02-11 19:00:49'),
(125, 'App\\Models\\User', 4, 'authToken', '4c8db03d20d57a70f443fc2c02e5293d17e7789917976b58b976c1db2371d268', '[\"*\"]', NULL, '2023-02-11 19:03:29', '2023-02-11 19:03:29'),
(126, 'App\\Models\\User', 4, 'authToken', '1790461ea76d1b0c46cd6636ece4b783b5a6c52280a4509210cc2aaf9f2c616e', '[\"*\"]', NULL, '2023-02-11 23:40:40', '2023-02-11 23:40:40'),
(127, 'App\\Models\\User', 4, 'authToken', 'a674fa6296c29814cc1a3cf77de327ebda11d7cfd0462119665c118ae3149e68', '[\"*\"]', NULL, '2023-02-11 23:58:34', '2023-02-11 23:58:34'),
(128, 'App\\Models\\User', 4, 'authToken', '6735993c7c683165826ebb88840804b19729d17ba3a2f30c934783853f6de0a1', '[\"*\"]', NULL, '2023-02-12 00:01:59', '2023-02-12 00:01:59'),
(129, 'App\\Models\\User', 4, 'authToken', '9f55398bfb8276efe7842a6edaca0af8d6052cc4362d573c1d1da50d82ebe3f2', '[\"*\"]', NULL, '2023-02-12 00:36:03', '2023-02-12 00:36:03'),
(130, 'App\\Models\\User', 4, 'authToken', '95f5a9e3c317d33f28e67c02fc0ce156a5cda0e7aac22d1211467dc9f890e81f', '[\"*\"]', NULL, '2023-02-12 00:41:25', '2023-02-12 00:41:25'),
(131, 'App\\Models\\User', 4, 'authToken', '92ebf1e864b0fda8ab66a749c49cd26a142ae6effa3511e319f5ffb32426d5e9', '[\"*\"]', NULL, '2023-02-12 23:26:07', '2023-02-12 23:26:07'),
(132, 'App\\Models\\User', 4, 'authToken', '585036cd0960d96a468870427b4bb9e6d4a23a5bb5ff41026a9c3cef1fc68860', '[\"*\"]', NULL, '2023-02-12 23:27:17', '2023-02-12 23:27:17'),
(133, 'App\\Models\\User', 4, 'authToken', '6aeba50b763f2ce115c1c822b07c923a3574a16985e39166f469a212651317df', '[\"*\"]', '2023-02-13 00:53:50', '2023-02-13 00:36:10', '2023-02-13 00:53:50'),
(134, 'App\\Models\\User', 4, 'authToken', 'b13ea62e5edeb4086a4a5f62ef31e0c9640e1639166f04726861db6672938388', '[\"*\"]', NULL, '2023-02-13 08:51:52', '2023-02-13 08:51:52'),
(135, 'App\\Models\\User', 4, 'authToken', '15df439a57abe76a2b729f0dd04f5ac0ed676b67a327fd030aefc422d0f12401', '[\"*\"]', NULL, '2023-02-13 08:53:16', '2023-02-13 08:53:16'),
(136, 'App\\Models\\User', 4, 'authToken', '4b2a5d6f5bca981d1a5924cb377237011cc18f149b9a789407b3d435ef8d0749', '[\"*\"]', NULL, '2023-02-13 08:54:35', '2023-02-13 08:54:35'),
(137, 'App\\Models\\User', 4, 'authToken', 'b355e22b2e4cb4ef3c56139d8190b12e7ef3561f429224c8a897fafc8acff218', '[\"*\"]', NULL, '2023-02-13 08:55:35', '2023-02-13 08:55:35'),
(138, 'App\\Models\\User', 4, 'authToken', 'dacb76450d3c16af9be56f68b4e8869b02c538eaf387beb255120a4f9916b0cd', '[\"*\"]', NULL, '2023-02-13 08:59:31', '2023-02-13 08:59:31'),
(139, 'App\\Models\\User', 4, 'authToken', 'e269016be04a11fd60484efed23ec3898278adf96de0ed39a8ad01bcbe0f4b49', '[\"*\"]', NULL, '2023-02-13 16:07:00', '2023-02-13 16:07:00'),
(140, 'App\\Models\\User', 4, 'authToken', '27fa744c64491913f7e271f36d170c5a27dae2ea260139400296fad1b8d813a3', '[\"*\"]', '2023-02-13 18:14:36', '2023-02-13 16:28:51', '2023-02-13 18:14:36'),
(141, 'App\\Models\\User', 4, 'authToken', '5d78dac07eb52376b44aa234788952363befeac819d9d4172ab92cad642adc1c', '[\"*\"]', '2023-02-14 05:15:31', '2023-02-13 18:17:58', '2023-02-14 05:15:31'),
(142, 'App\\Models\\User', 4, 'authToken', 'c95a6fe6d2499cbef090b35ec94d9ebb8dc47b86c1f09cdd6e204e71e323ecf8', '[\"*\"]', '2023-02-14 08:36:22', '2023-02-14 05:17:45', '2023-02-14 08:36:22'),
(143, 'App\\Models\\User', 4, 'authToken', 'a900f1b0751ca882a011bde161cf1a21e507436de176640fa2a2d33e616fdf78', '[\"*\"]', '2023-02-14 08:40:26', '2023-02-14 08:37:56', '2023-02-14 08:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `tags`, `categories_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(19, 'Ultra 4d 5 Shoes', 285.00, 'When the adidas Ultraboost debuted back', NULL, 1, NULL, '2023-02-01 18:41:27', '2023-02-01 18:41:27'),
(20, 'SL 20 Shoes', 123.00, 'These adidas SL20 Shoes will back your play, Lightweight cushioning gives you a faster push off and a snappy feel', NULL, 5, NULL, '2023-02-01 20:10:23', '2023-02-01 20:10:23'),
(21, 'Ultra 4D 5 Shoes', 285.00, 'When the adidas ultraboost debuted back in 2015, it had an impact that spilled beyond the world of running.', NULL, 5, NULL, '2023-02-01 21:08:56', '2023-02-01 21:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sport', NULL, '2021-04-15 02:15:27', '2021-04-15 02:15:27'),
(2, 'Hiking', NULL, '2021-04-15 02:15:33', '2021-04-15 02:15:33'),
(3, 'Basketball', NULL, '2021-04-15 10:09:12', '2021-04-15 10:09:12'),
(4, 'Training', NULL, '2021-04-15 10:12:34', '2021-04-15 10:21:21'),
(5, 'Running', NULL, '2021-04-15 10:12:44', '2021-04-15 10:12:44'),
(6, 'All Shoes', NULL, '2021-04-15 10:14:25', '2021-04-15 10:14:25'),
(7, 'Casual', '2023-01-19 18:52:18', '2023-01-19 18:52:11', '2023-01-19 18:52:18'),
(8, 'Casuale', NULL, '2023-01-19 18:52:30', '2023-01-19 18:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `products_id`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(110, 19, 'public/gallery/LTqRNerCNaCOQJP9l5s0ttzrgWdPWXtjrXPFSJfn.png', NULL, '2023-02-01 20:07:24', '2023-02-01 20:07:24'),
(111, 19, 'public/gallery/lgZroR6Y84mc4HLod9G5N6YB6HK2PcEnD5fwIUJn.png', NULL, '2023-02-01 20:07:43', '2023-02-01 20:07:43'),
(113, 20, 'public/gallery/jeNdhzs5BZOdQRFFiAw1GzYxMREUpVVwRn792y76.png', NULL, '2023-02-01 20:26:18', '2023-02-01 20:26:18'),
(114, 20, 'public/gallery/rOwoPNCdJY2Z6Ltoer4AaHrJkU0nN1YJdITn6AlF.png', NULL, '2023-02-01 20:26:18', '2023-02-01 20:26:18'),
(115, 20, 'public/gallery/hhV6g2OFKuLyatil4f5kj99Gu6pEkx1LiSdq7wRH.png', NULL, '2023-02-01 20:26:18', '2023-02-01 20:26:18'),
(116, 21, 'public/gallery/xYBAmMIuA2Zi6kGc6lcUR5FpE94uNIqKBNJ3r5g8.png', NULL, '2023-02-01 21:10:02', '2023-02-01 21:10:02'),
(117, 21, 'public/gallery/kRIiB4ZurAFG3tMzTMecTQca5w69jrqEyuaQ1X30.png', NULL, '2023-02-01 21:10:02', '2023-02-01 21:10:02'),
(118, 21, 'public/gallery/1phCdD6kck2SCQaFW6A5nZZ5CPzBuGADIbtGaCc3.png', NULL, '2023-02-01 21:10:02', '2023-02-01 21:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('696vlSibEyJpMSb1Z5KqKY9L2zWYeCeV4WiNSYrq', 2, '192.168.1.28', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWXJDZWJhUWNqbkp6VlhNcXpCNzhRdDFHR2dZWFdlOWlLRzJRSWhiMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NjoiaHR0cDovLzE5Mi4xNjguMS4yODo4MDgxL2Rhc2hib2FyZC91c2VyLzQvZWRpdCI7fX0=', 1675830612),
('CZJmEc4Q6iGLkOItOMFsLzV5FjFNNzPr7onvAlAf', 2, '192.168.1.28', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicU1POWxwbVVKTEFqZ0l6QnpVN25Venl4RFdZQkVHY0lsb3B4UkZWViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly8xOTIuMTY4LjEuMjg6ODA4MS9kYXNoYm9hcmQvcHJvZHVjdC8yMS9nYWxsZXJ5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1676071907),
('mh8Fej20TR3F5yNsOpqmcaIj59YoMFLp1Kw0soNL', 2, '192.168.1.28', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ3lSYzZ0NXZkRFZyTUxYUGgzS2h4blVldDZKOUZ1TzdVMERldWpYVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xOTIuMTY4LjEuMjg6ODA4MS9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1676166792),
('o4GVV0sJhlYZSdB1hob9NiVlkRamqBsVtgJHoB0X', NULL, '192.168.1.28', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQkV3NnVwRElKMUs3MEtJajZUeTA5MUczRGNNUEVvTnhEMEoyazZiciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovLzE5Mi4xNjguMS4yODo4MDgxL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vMTkyLjE2OC4xLjI4OjgwODEvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1675845498),
('tldJ59NG9sTgnhLorguMvq8eDqFxZnEuQBRhUQoa', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVdqajdmWm5SanlWUGVDZUc2UjlZYkk3TVlHdHJZeWFnQldTZGQ0eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1678359302);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MANUAL',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `users_id`, `address`, `total_price`, `shipping_price`, `status`, `payment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(22, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2023-01-18 01:17:05', '2023-01-18 01:17:05'),
(23, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2023-01-18 01:21:40', '2023-01-18 01:21:40'),
(24, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2023-01-18 01:23:57', '2023-01-18 01:23:57'),
(25, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2023-01-18 01:26:30', '2023-01-18 01:26:30'),
(26, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2023-01-18 01:27:17', '2023-01-18 01:27:17'),
(27, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2023-01-18 01:28:41', '2023-01-18 01:28:41'),
(28, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2023-01-18 01:28:56', '2023-01-18 01:28:56'),
(29, 4, 'Marsemoon', 123.00, 0.00, 'PENDING', 'MANUAL', NULL, '2023-01-29 00:04:14', '2023-01-29 00:04:14'),
(30, 4, 'Marsemoon', 123.00, 0.00, 'PENDING', 'MANUAL', NULL, '2023-01-29 02:23:03', '2023-01-29 02:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `transactions_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `users_id`, `products_id`, `transactions_id`, `quantity`, `created_at`, `updated_at`) VALUES
(44, 2, 1, 22, 2, '2023-01-18 01:17:05', '2023-01-18 01:17:05'),
(45, 2, 2, 22, 2, '2023-01-18 01:17:05', '2023-01-18 01:17:05'),
(46, 2, 3, 22, 2, '2023-01-18 01:17:05', '2023-01-18 01:17:05'),
(47, 2, 1, 23, 2, '2023-01-18 01:21:40', '2023-01-18 01:21:40'),
(48, 2, 2, 23, 2, '2023-01-18 01:21:40', '2023-01-18 01:21:40'),
(49, 2, 3, 23, 2, '2023-01-18 01:21:40', '2023-01-18 01:21:40'),
(50, 2, 1, 24, 2, '2023-01-18 01:23:57', '2023-01-18 01:23:57'),
(51, 2, 2, 24, 2, '2023-01-18 01:23:57', '2023-01-18 01:23:57'),
(52, 2, 3, 24, 2, '2023-01-18 01:23:57', '2023-01-18 01:23:57'),
(53, 2, 1, 25, 2, '2023-01-18 01:26:30', '2023-01-18 01:26:30'),
(54, 2, 2, 25, 2, '2023-01-18 01:26:30', '2023-01-18 01:26:30'),
(55, 2, 3, 25, 2, '2023-01-18 01:26:30', '2023-01-18 01:26:30'),
(56, 2, 1, 26, 2, '2023-01-18 01:27:17', '2023-01-18 01:27:17'),
(57, 2, 2, 26, 2, '2023-01-18 01:27:18', '2023-01-18 01:27:18'),
(58, 2, 3, 26, 2, '2023-01-18 01:27:18', '2023-01-18 01:27:18'),
(59, 2, 1, 27, 2, '2023-01-18 01:28:41', '2023-01-18 01:28:41'),
(60, 2, 2, 27, 2, '2023-01-18 01:28:41', '2023-01-18 01:28:41'),
(61, 2, 3, 27, 2, '2023-01-18 01:28:41', '2023-01-18 01:28:41'),
(62, 2, 1, 28, 2, '2023-01-18 01:28:56', '2023-01-18 01:28:56'),
(63, 2, 2, 28, 2, '2023-01-18 01:28:56', '2023-01-18 01:28:56'),
(64, 2, 3, 28, 2, '2023-01-18 01:28:56', '2023-01-18 01:28:56'),
(65, 4, 3, 29, 1, '2023-01-29 00:04:14', '2023-01-29 00:04:14'),
(66, 4, 3, 30, 1, '2023-01-29 02:23:03', '2023-01-29 02:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `phone`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Jennie Kim 2', 'jennie.kim2@blackpink.co', 'jenniekim2', '123123123', 'USER', NULL, '$2y$10$jdfdTB8PFC2BnayGI6t.FOf7syH5BjA7pne67P8Db6HONUJW7ss.i', NULL, NULL, NULL, NULL, NULL, '2023-01-17 09:32:36', '2023-01-17 09:32:36'),
(2, 'Irkham Nazmi', 'irkham.nazmi@gmail.com', 'irkham', '123123123', 'ADMIN', NULL, '$2y$10$Vew9YgoGvwNvjDeBWj4mm.MNyMSj1gvUA/08PRZhLbar0vkZ0O2m2', NULL, NULL, NULL, NULL, NULL, '2023-01-17 17:00:11', '2023-01-17 20:39:07'),
(4, 'Nazmi Irkham', 'nazmiirkham@hotmail.com', 'nazmi', NULL, 'USER', NULL, '$2y$10$AHRs9bASMN6qtAVqVmyceerDQpkPwKwSoLLqB5EE8XztqcTHr8qDa', NULL, NULL, NULL, NULL, NULL, '2023-01-21 09:27:48', '2023-01-21 09:27:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
