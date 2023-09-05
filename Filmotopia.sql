-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 07:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmotopia`
--
CREATE DATABASE IF NOT EXISTS `filmotopia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `filmotopia`;

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `godinaRodjenja` year(4) NOT NULL,
  `mestoRodjenja` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `ime`, `godinaRodjenja`, `mestoRodjenja`, `created_at`, `updated_at`) VALUES
(1, 'Westley Nolan', 1966, 'Beograd', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(2, 'Mrs. Melissa Cormier III', 1983, 'Copenhagen', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(3, 'Mr. Wellington Rice', 1978, 'London', '2021-12-30 17:23:06', '2021-12-30 17:23:06');

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
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `radnja` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `director_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `naziv`, `radnja`, `created_at`, `updated_at`, `director_id`, `genre_id`) VALUES
(1, 'Titanic', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-12-30 17:23:05', '2021-12-30 17:23:05', 1, 1),
(2, 'Spiderman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-12-30 17:23:06', '2021-12-30 17:23:06', 2, 2),
(3, 'Montevideo, Bog te video', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-12-30 17:23:06', '2021-12-30 17:23:06', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `naziv`, `opis`, `created_at`, `updated_at`) VALUES
(1, 'Drama', 'Opis 648588', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(2, 'Naucna fantastika', 'Opis 589527', '2021-12-30 17:23:06', '2021-12-30 17:23:06');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_26_163555_create_films_table', 1),
(6, '2021_12_26_210141_update_films_table', 1),
(7, '2021_12_27_184517_create_genres_table', 1),
(8, '2021_12_27_185222_update_genres_table', 1),
(9, '2021_12_27_194049_create_directors_table', 1),
(10, '2021_12_27_195008_drop_column_reziser_from_films_table', 1),
(11, '2021_12_27_195741_add_director_id_column_to_films_table', 1),
(12, '2021_12_28_133455_add_genre_id_column_to_films_table', 1),
(13, '2021_12_28_133945_create_tickets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `film_id` bigint(20) UNSIGNED NOT NULL,
  `pocetakProjekcije` time NOT NULL,
  `cena` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `film_id`, `pocetakProjekcije`, `cena`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '19:06:00', 785, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(2, 2, 1, '20:31:00', 479, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(3, 3, 1, '23:01:00', 708, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(4, 4, 1, '18:23:00', 635, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(5, 5, 1, '21:17:00', 683, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(6, 6, 1, '20:54:00', 355, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(7, 7, 1, '21:21:00', 605, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(8, 8, 1, '21:14:00', 633, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(9, 9, 1, '20:39:00', 351, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(10, 10, 1, '22:47:00', 388, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(11, 11, 1, '18:27:00', 412, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(12, 12, 1, '20:22:00', 555, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(13, 13, 1, '19:17:00', 754, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(14, 14, 1, '18:49:00', 687, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(15, 15, 1, '21:05:00', 595, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(16, 16, 1, '20:39:00', 785, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(17, 17, 1, '20:17:00', 790, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(18, 18, 1, '23:52:00', 686, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(19, 19, 1, '21:55:00', 731, '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(20, 20, 1, '18:08:00', 746, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(21, 21, 2, '22:54:00', 612, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(22, 22, 2, '22:25:00', 595, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(23, 23, 2, '20:10:00', 767, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(24, 24, 2, '22:20:00', 382, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(25, 25, 2, '18:18:00', 656, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(26, 26, 2, '22:10:00', 490, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(27, 27, 2, '18:55:00', 486, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(28, 28, 2, '23:01:00', 339, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(29, 29, 2, '18:33:00', 754, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(30, 30, 2, '20:19:00', 446, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(31, 31, 2, '18:46:00', 370, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(32, 32, 2, '21:20:00', 545, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(33, 33, 2, '23:24:00', 657, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(34, 34, 2, '21:32:00', 757, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(35, 35, 2, '18:28:00', 745, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(36, 36, 2, '22:11:00', 726, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(37, 37, 2, '18:35:00', 468, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(38, 38, 2, '18:39:00', 437, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(39, 39, 2, '23:38:00', 655, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(40, 40, 2, '23:34:00', 746, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(41, 41, 3, '19:31:00', 756, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(42, 42, 3, '19:27:00', 554, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(43, 43, 3, '18:05:00', 553, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(44, 44, 3, '23:27:00', 413, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(45, 45, 3, '23:35:00', 363, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(46, 46, 3, '19:34:00', 658, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(47, 47, 3, '22:39:00', 468, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(48, 48, 3, '22:39:00', 613, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(49, 49, 3, '18:51:00', 640, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(50, 50, 3, '18:06:00', 564, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(51, 51, 3, '19:10:00', 718, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(52, 52, 3, '22:25:00', 723, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(53, 53, 3, '20:16:00', 363, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(54, 54, 3, '23:10:00', 351, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(55, 55, 3, '21:57:00', 371, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(56, 56, 3, '18:59:00', 769, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(57, 57, 3, '18:10:00', 466, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(58, 58, 3, '21:20:00', 799, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(59, 59, 3, '18:16:00', 596, '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(60, 60, 3, '18:06:00', 302, '2021-12-30 17:23:06', '2021-12-30 17:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Amos O\'Hara', 'brody.sauer@example.org', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4CBD2WFOfi', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(2, 'Dr. Lenny Streich', 'mccullough.kurt@example.com', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1I8IZTG88g', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(3, 'Miss Maxie Kub', 'beer.sydney@example.net', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UqU4GHSQWa', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(4, 'Prof. Beau Walsh V', 'rutherford.kiana@example.net', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'de9ZBDezeS', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(5, 'Lucas Morar', 'connelly.odell@example.org', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xFR8NqWFGJ', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(6, 'Dejon Stracke', 'ymcdermott@example.net', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1saaPec4AE', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(7, 'Dr. Jessie Rolfson', 'colton.crooks@example.org', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bGKWGYRbUs', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(8, 'Leatha Hane', 'frederick81@example.org', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ljIW3pGTTU', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(9, 'Delta Becker DVM', 'nhowe@example.net', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TfiWNBvg0q', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(10, 'Mr. Dion Little', 'stehr.stella@example.org', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JTwFKFWq2T', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(11, 'Dr. Roosevelt Rolfson Jr.', 'consuelo16@example.org', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hEtEbG23wV', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(12, 'Edd Monahan', 'pasquale67@example.com', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lZLmnYswEt', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(13, 'Prof. Anibal Sporer PhD', 'deshawn.welch@example.com', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v0aQleGJmo', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(14, 'Mr. Casper Rutherford', 'schuppe.delphine@example.org', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ci5wUk5RA4', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(15, 'Dr. Marlen Smitham', 'cordell68@example.net', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hhEmyZOywG', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(16, 'Melany Prohaska', 'gottlieb.meredith@example.org', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b72A84cYz0', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(17, 'Shirley Corkery', 'hirthe.kennedi@example.org', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2dVwOqfbA0', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(18, 'Ibrahim Grant', 'araceli.haag@example.net', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rs5ufK5shm', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(19, 'Prof. Mason Stehr', 'hbartell@example.net', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KUWTwQMThV', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(20, 'Dr. Lue O\'Keefe PhD', 'uharvey@example.com', '2021-12-30 17:23:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D9dpAU4nBm', '2021-12-30 17:23:05', '2021-12-30 17:23:05'),
(21, 'Edyth Kilback', 'estrella.hand@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OOmCVFRwhY', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(22, 'Jack Harvey PhD', 'bode.daniella@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zjM3OO9F69', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(23, 'Prof. Everette Kunze DDS', 'zdickens@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lp2vKkfo9y', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(24, 'Dr. Amelie King MD', 'okuneva.moriah@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ppEGdLbH1D', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(25, 'Brian Schmeler', 'cleta26@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FhBvyn13oD', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(26, 'Victor Shields II', 'schowalter.trisha@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ycqCU9jv9F', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(27, 'Dr. Kaelyn Greenholt', 'hobart.shields@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CUlgDVWTsz', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(28, 'Omari Connelly', 'gibson.oren@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wKTyA4NS12', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(29, 'Marguerite O\'Kon', 'eloisa47@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I7oknt0lT5', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(30, 'Miss Jeanie Gutkowski', 'soledad.mcglynn@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qEcOWOc8pq', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(31, 'Breanna Kuhlman', 'reichel.stefan@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i9embHNTAz', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(32, 'Sanford Quigley', 'huel.ophelia@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xNHUCkMTLp', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(33, 'Americo Doyle', 'murphy.nico@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ymWfP8jyfb', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(34, 'Grady Ullrich', 'bayer.jillian@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LqcE6YRK7n', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(35, 'Aubrey Deckow', 'sydni.thiel@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pOlTArr0xq', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(36, 'Delta Schultz', 'justen67@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yai1Bi9ZGJ', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(37, 'Anita Windler', 'cristobal70@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VegKUjwdNz', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(38, 'Berta Bogan', 'nya56@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aZjDa5hhF3', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(39, 'Jonathan Armstrong', 'walsh.chandler@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'savbUZ2bQ0', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(40, 'Dr. D\'angelo Daniel', 'carmela37@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'usyx3H9wKQ', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(41, 'Arthur Corkery', 'vflatley@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wruo9gvvOW', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(42, 'Mr. Harry Davis PhD', 'delia.dietrich@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T5F2hheqpW', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(43, 'Prof. Sonia Kutch Sr.', 'hills.mathew@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ASY80aumtU', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(44, 'Mrs. Name Gorczany IV', 'kaitlin73@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ThjAktr1zY', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(45, 'Kelli Greenholt', 'rahul86@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5w2CJ8QQs4', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(46, 'Mrs. Delphia Schneider III', 'keven.schinner@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lmOa6vf2eu', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(47, 'Adan Pagac', 'ursula96@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9giTX1fMS2', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(48, 'Corbin Murazik', 'gottlieb.norberto@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ay0MV4dbtB', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(49, 'Jaquelin Brown II', 'dstark@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eqhd3fqDvJ', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(50, 'Dominique Hegmann', 'erdman.sherwood@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kjn6Ai0Ifv', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(51, 'Stuart Lesch', 'jakubowski.alverta@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C1EMHikRIG', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(52, 'Breanne Haley PhD', 'purdy.syble@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PWjTBNow3t', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(53, 'Mr. Lula Steuber', 'margot.hirthe@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mVtvurHBrs', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(54, 'Christian Wolf V', 'williamson.graham@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7S43bfV70k', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(55, 'Bernie Glover', 'langosh.cory@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6hQYfxg5O1', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(56, 'Mr. Helmer Yundt', 'marlon.toy@example.com', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ghsPa91uZo', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(57, 'Tevin Pacocha', 'schuster.general@example.net', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9fF2QfuzqU', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(58, 'Prof. Karlee Murphy DDS', 'gsanford@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p7Onxoj7K7', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(59, 'Prof. Gordon Labadie Jr.', 'lavern.kub@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Z9aRfqtA4c', '2021-12-30 17:23:06', '2021-12-30 17:23:06'),
(60, 'Halie Nitzsche', 'lacy.goldner@example.org', '2021-12-30 17:23:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zIgT4i2Gis', '2021-12-30 17:23:06', '2021-12-30 17:23:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `films_naziv_unique` (`naziv`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
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
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
