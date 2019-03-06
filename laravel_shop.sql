-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2019-02-27 10:44:31
-- 伺服器版本： 10.1.38-MariaDB
-- PHP 版本： 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `laravel_shop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin_config`
--

CREATE TABLE `admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 8, 'Config', 'fa-toggle-on', 'config', NULL, '2019-02-27 00:28:51', '2019-02-27 00:28:51');

-- --------------------------------------------------------

--
-- 資料表結構 `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 00:19:02', '2019-02-27 00:19:02'),
(2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:19:16', '2019-02-27 00:19:16'),
(3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:19:19', '2019-02-27 00:19:19'),
(4, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:19:22', '2019-02-27 00:19:22'),
(5, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:19:26', '2019-02-27 00:19:26'),
(6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:19:43', '2019-02-27 00:19:43'),
(7, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:20:30', '2019-02-27 00:20:30'),
(8, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:20:55', '2019-02-27 00:20:55'),
(9, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:21:16', '2019-02-27 00:21:16'),
(10, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:21:20', '2019-02-27 00:21:20'),
(11, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:22:19', '2019-02-27 00:22:19'),
(12, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:22:20', '2019-02-27 00:22:20'),
(13, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:22:23', '2019-02-27 00:22:23'),
(14, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:22:56', '2019-02-27 00:22:56'),
(15, 1, 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:23:00', '2019-02-27 00:23:00'),
(16, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:23:08', '2019-02-27 00:23:08'),
(17, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-02-27 00:23:29', '2019-02-27 00:23:29'),
(18, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-02-27 00:23:45', '2019-02-27 00:23:45'),
(19, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:23:53', '2019-02-27 00:23:53'),
(20, 1, 'admin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:24:00', '2019-02-27 00:24:00'),
(21, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:24:04', '2019-02-27 00:24:04'),
(22, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:24:10', '2019-02-27 00:24:10'),
(23, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:25:55', '2019-02-27 00:25:55'),
(24, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:26:10', '2019-02-27 00:26:10'),
(25, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 00:29:05', '2019-02-27 00:29:05'),
(26, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:29:09', '2019-02-27 00:29:09'),
(27, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:29:18', '2019-02-27 00:29:18'),
(28, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:29:19', '2019-02-27 00:29:19'),
(29, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:29:22', '2019-02-27 00:29:22'),
(30, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:29:27', '2019-02-27 00:29:27'),
(31, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 00:30:45', '2019-02-27 00:30:45'),
(32, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:30:46', '2019-02-27 00:30:46'),
(33, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:30:46', '2019-02-27 00:30:46'),
(34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 00:31:03', '2019-02-27 00:31:03'),
(35, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:31:08', '2019-02-27 00:31:08'),
(36, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:31:46', '2019-02-27 00:31:46'),
(37, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:31:49', '2019-02-27 00:31:49'),
(38, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:31:53', '2019-02-27 00:31:53'),
(39, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:31:59', '2019-02-27 00:31:59'),
(40, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:32:28', '2019-02-27 00:32:28'),
(41, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:32:31', '2019-02-27 00:32:31'),
(42, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:32:37', '2019-02-27 00:32:37'),
(43, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:32:47', '2019-02-27 00:32:47'),
(44, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:32:50', '2019-02-27 00:32:50'),
(45, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:33:21', '2019-02-27 00:33:21'),
(46, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:33:30', '2019-02-27 00:33:30'),
(47, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:33:30', '2019-02-27 00:33:30'),
(48, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:33:36', '2019-02-27 00:33:36'),
(49, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:33:39', '2019-02-27 00:33:39'),
(50, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"11\"}', '2019-02-27 00:33:50', '2019-02-27 00:33:50'),
(51, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null}', '2019-02-27 00:33:54', '2019-02-27 00:33:54'),
(52, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:33:57', '2019-02-27 00:33:57'),
(53, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:34:02', '2019-02-27 00:34:02'),
(54, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:34:04', '2019-02-27 00:34:04'),
(55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 00:37:57', '2019-02-27 00:37:57'),
(56, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:38:01', '2019-02-27 00:38:01'),
(57, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:38:04', '2019-02-27 00:38:04'),
(58, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:38:07', '2019-02-27 00:38:07'),
(59, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:38:31', '2019-02-27 00:38:31'),
(60, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:38:33', '2019-02-27 00:38:33'),
(61, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:38:43', '2019-02-27 00:38:43'),
(62, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"nonsense\",\"name\":\"nonsense\",\"password\":\"nonsense\",\"password_confirmation\":\"nonsense\",\"roles\":[\"1\",null],\"permissions\":[\"4\",null],\"_token\":\"ZttjEFFeyA44ahOmefx2jQSMsRSlPZLcppXnCpsp\",\"_previous_\":\"http:\\/\\/laravel.localhost.com\\/admin\\/auth\\/users\"}', '2019-02-27 00:39:18', '2019-02-27 00:39:18'),
(63, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-02-27 00:39:18', '2019-02-27 00:39:18'),
(64, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:39:26', '2019-02-27 00:39:26'),
(65, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:39:28', '2019-02-27 00:39:28'),
(66, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 00:39:33', '2019-02-27 00:39:33'),
(67, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:39:48', '2019-02-27 00:39:48'),
(68, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:39:49', '2019-02-27 00:39:49'),
(69, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:39:51', '2019-02-27 00:39:51'),
(70, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:39:54', '2019-02-27 00:39:54'),
(71, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:40:01', '2019-02-27 00:40:01'),
(72, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:40:03', '2019-02-27 00:40:03'),
(73, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:40:06', '2019-02-27 00:40:06'),
(74, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:40:08', '2019-02-27 00:40:08'),
(75, 2, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:40:11', '2019-02-27 00:40:11'),
(76, 2, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"visiter\",\"name\":\"visiter\",\"permissions\":[\"2\",null],\"_token\":\"kKc6uCPdUj5wm8I0zCi9gvQdP8jt6PNMn5xqrYRZ\",\"_previous_\":\"http:\\/\\/laravel.localhost.com\\/admin\\/auth\\/roles\"}', '2019-02-27 00:40:39', '2019-02-27 00:40:39'),
(77, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-02-27 00:40:40', '2019-02-27 00:40:40'),
(78, 2, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:40:45', '2019-02-27 00:40:45'),
(79, 2, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"visiter\",\"name\":\"visiter\",\"permissions\":[\"3\",\"2\",null],\"_token\":\"kKc6uCPdUj5wm8I0zCi9gvQdP8jt6PNMn5xqrYRZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.localhost.com\\/admin\\/auth\\/roles\"}', '2019-02-27 00:40:49', '2019-02-27 00:40:49'),
(80, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-02-27 00:40:49', '2019-02-27 00:40:49'),
(81, 2, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:40:51', '2019-02-27 00:40:51'),
(82, 2, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"visiter\",\"name\":\"visiter\",\"permissions\":[\"3\",\"4\",null],\"_token\":\"kKc6uCPdUj5wm8I0zCi9gvQdP8jt6PNMn5xqrYRZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.localhost.com\\/admin\\/auth\\/roles\"}', '2019-02-27 00:41:13', '2019-02-27 00:41:13'),
(83, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-02-27 00:41:14', '2019-02-27 00:41:14'),
(84, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:41:22', '2019-02-27 00:41:22'),
(85, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 00:41:29', '2019-02-27 00:41:29'),
(86, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:41:31', '2019-02-27 00:41:31'),
(87, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:41:32', '2019-02-27 00:41:32'),
(88, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:41:36', '2019-02-27 00:41:36'),
(89, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:41:40', '2019-02-27 00:41:40'),
(90, 2, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"nonsense\",\"name\":\"nonsense\",\"password\":\"$2y$10$aBfDLuLIiKjEfT3Q4fjyPeCLRMu3TX3f.xqzSYFx\\/t9A3u\\/wUUpAG\",\"password_confirmation\":\"$2y$10$aBfDLuLIiKjEfT3Q4fjyPeCLRMu3TX3f.xqzSYFx\\/t9A3u\\/wUUpAG\",\"roles\":[\"2\",null],\"permissions\":[\"4\",null],\"_token\":\"kKc6uCPdUj5wm8I0zCi9gvQdP8jt6PNMn5xqrYRZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.localhost.com\\/admin\\/auth\\/users\"}', '2019-02-27 00:41:47', '2019-02-27 00:41:47'),
(91, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-02-27 00:41:47', '2019-02-27 00:41:47'),
(92, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:41:50', '2019-02-27 00:41:50'),
(93, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:41:52', '2019-02-27 00:41:52'),
(94, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:41:53', '2019-02-27 00:41:53'),
(95, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:41:58', '2019-02-27 00:41:58'),
(96, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:02', '2019-02-27 00:42:02'),
(97, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:03', '2019-02-27 00:42:03'),
(98, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:04', '2019-02-27 00:42:04'),
(99, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:06', '2019-02-27 00:42:06'),
(100, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:13', '2019-02-27 00:42:13'),
(101, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:19', '2019-02-27 00:42:19'),
(102, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:20', '2019-02-27 00:42:20'),
(103, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:21', '2019-02-27 00:42:21'),
(104, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:27', '2019-02-27 00:42:27'),
(105, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 00:42:38', '2019-02-27 00:42:38'),
(106, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:40', '2019-02-27 00:42:40'),
(107, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:41', '2019-02-27 00:42:41'),
(108, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:46', '2019-02-27 00:42:46'),
(109, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:42:51', '2019-02-27 00:42:51'),
(110, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"visiter\",\"name\":\"visiter\",\"permissions\":[\"2\",\"3\",\"5\",null],\"_token\":\"xBOxGgqQAGoz0mOz8k5vwyXzNeAN6CQ3p4mZRbGY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.localhost.com\\/admin\\/auth\\/roles\"}', '2019-02-27 00:43:24', '2019-02-27 00:43:24'),
(111, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-02-27 00:43:24', '2019-02-27 00:43:24'),
(112, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:43:30', '2019-02-27 00:43:30'),
(113, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 00:43:39', '2019-02-27 00:43:39'),
(114, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:43:41', '2019-02-27 00:43:41'),
(115, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:43:53', '2019-02-27 00:43:53'),
(116, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:43:53', '2019-02-27 00:43:53'),
(117, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:43:54', '2019-02-27 00:43:54'),
(118, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:43:55', '2019-02-27 00:43:55'),
(119, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:43:55', '2019-02-27 00:43:55'),
(120, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:43:57', '2019-02-27 00:43:57'),
(121, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:43:59', '2019-02-27 00:43:59'),
(122, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:00', '2019-02-27 00:44:00'),
(123, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:02', '2019-02-27 00:44:02'),
(124, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:03', '2019-02-27 00:44:03'),
(125, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:05', '2019-02-27 00:44:05'),
(126, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:06', '2019-02-27 00:44:06'),
(127, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:14', '2019-02-27 00:44:14'),
(128, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 00:44:20', '2019-02-27 00:44:20'),
(129, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:21', '2019-02-27 00:44:21'),
(130, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:23', '2019-02-27 00:44:23'),
(131, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:25', '2019-02-27 00:44:25'),
(132, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:31', '2019-02-27 00:44:31'),
(133, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:54', '2019-02-27 00:44:54'),
(134, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 00:44:58', '2019-02-27 00:44:58'),
(135, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-27 09:03:36', '2019-02-27 09:03:36'),
(136, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:03:39', '2019-02-27 09:03:39'),
(137, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:03:43', '2019-02-27 09:03:43'),
(138, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:03:55', '2019-02-27 09:03:55'),
(139, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:03:57', '2019-02-27 09:03:57'),
(140, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:05:09', '2019-02-27 09:05:09'),
(141, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:05:12', '2019-02-27 09:05:12'),
(142, 1, 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:05:32', '2019-02-27 09:05:32'),
(143, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:05:35', '2019-02-27 09:05:35'),
(144, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-27 09:06:02', '2019-02-27 09:06:02'),
(145, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:14:43', '2019-02-27 09:14:43'),
(146, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:14:44', '2019-02-27 09:14:44'),
(147, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:14:46', '2019-02-27 09:14:46'),
(148, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:14:48', '2019-02-27 09:14:48'),
(149, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:16:15', '2019-02-27 09:16:15'),
(150, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:17:41', '2019-02-27 09:17:41'),
(151, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-27 09:17:46', '2019-02-27 09:17:46');

-- --------------------------------------------------------

--
-- 資料表結構 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin Config', 'ext.config', NULL, '/config*', '2019-02-27 00:28:51', '2019-02-27 00:28:51');

-- --------------------------------------------------------

--
-- 資料表結構 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2019-02-27 00:17:59', '2019-02-27 00:17:59'),
(2, 'visiter', 'visiter', '2019-02-27 00:40:39', '2019-02-27 00:40:39');

-- --------------------------------------------------------

--
-- 資料表結構 `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 3, NULL, NULL),
(2, 2, NULL, NULL),
(2, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$AM/NEVNYnrgM7p/.b0jfHOE6JrBdqlGb67VFWuNnXmELKf.Nq3NIm', 'Administrator', NULL, 'H2Az7ZIaCXgt7foKJwrOVSDAkOFwSRc1QvEJvxXEx7RIgzDseVZ2XkQqUnLE', '2019-02-27 00:17:59', '2019-02-27 00:17:59'),
(2, 'nonsense', '$2y$10$aBfDLuLIiKjEfT3Q4fjyPeCLRMu3TX3f.xqzSYFx/t9A3u/wUUpAG', 'nonsense', NULL, 'rissJYKmxiROgXI62gQvq3s1ZppmdlI3RuZXLJ4Fmga0pXZRnce0tEhaDLky', '2019-02-27 00:39:18', '2019-02-27 00:39:18');

-- --------------------------------------------------------

--
-- 資料表結構 `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_sku_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `cart_items`
--

INSERT INTO `cart_items` (`id`, `user_id`, `product_sku_id`, `amount`) VALUES
(1, 105, 46, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  `used` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) NOT NULL,
  `not_before` datetime DEFAULT NULL,
  `not_after` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `coupon_codes`
--

INSERT INTO `coupon_codes` (`id`, `name`, `code`, `type`, `value`, `total`, `used`, `min_amount`, `not_before`, `not_after`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 'deleniti sed vitae', 'B2Y6G41ZQMDASV7A', 'fixed', '93.00', 1000, 0, '93.01', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(2, 'amet veniam libero', 'GK15KO4FOSZSH95G', 'percent', '9.00', 1000, 0, '284.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(3, 'molestiae esse aut', 'N9EZCWAH84PV5AO0', 'percent', '8.00', 1000, 0, '697.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(4, 'eaque ullam non', 'CI7USIQAEQFRAH13', 'fixed', '186.00', 1000, 0, '186.01', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(5, 'sit veniam occaecati', 'GHNLHCPAHZPNVKQG', 'percent', '47.00', 1000, 0, '815.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(6, 'sequi mollitia suscipit', 'QATZGPP7TPOVC396', 'percent', '18.00', 1000, 0, '855.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(7, 'cum dolorem ab', 'MQWSU2SATMJOKGV7', 'percent', '38.00', 1000, 0, '336.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(8, 'consequatur aut earum', '7MD8N7RWNC5LYWSE', 'percent', '15.00', 1000, 0, '966.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(9, 'occaecati aliquid officiis', 'OE2O1JTHADWQLYEP', 'fixed', '167.00', 1000, 0, '167.01', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(10, 'nemo ut enim', 'TQZJEAXO3GRIOMXX', 'fixed', '6.00', 1000, 0, '6.01', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(11, 'maxime error aut', 'GCN96RVOMEKCRM01', 'percent', '27.00', 1000, 15, '0.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:47'),
(12, 'eveniet ipsam eveniet', 'RRCH522PCUAJGWWJ', 'fixed', '65.00', 1000, 0, '65.01', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(13, 'excepturi beatae voluptatem', 'CREFT2RQRFMGLIJR', 'fixed', '93.00', 1000, 0, '93.01', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(14, 'est laboriosam dignissimos', 'GHMUPNCN2FLDKUNR', 'fixed', '116.00', 1000, 0, '116.01', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(15, 'blanditiis qui earum', 'GF5GVRYFYHV9U0H3', 'percent', '8.00', 1000, 7, '0.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:47'),
(16, 'sequi voluptatem architecto', '7DKBB6F4JPOCOBV1', 'fixed', '48.00', 1000, 0, '48.01', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(17, 'quia doloribus nam', 'OUTI9VE2CVRLDEDX', 'percent', '10.00', 1000, 0, '193.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(18, 'et facilis autem', '7ZBL4OKEWKDEH0GN', 'percent', '22.00', 1000, 0, '629.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(19, 'autem architecto nobis', 'EORYOUOXWYTYRUSD', 'fixed', '98.00', 1000, 0, '98.01', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(20, 'molestias et quaerat', 'IKM4IGTRX6PFYLYU', 'percent', '15.00', 1000, 0, '691.00', NULL, NULL, 1, '2019-02-26 23:54:46', '2019-02-26 23:54:46');

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2018_12_19_152909_create_user_addresses_table', 1),
(5, '2018_12_22_042326_create_products_table', 1),
(6, '2018_12_22_042331_create_product_skus_table', 1),
(7, '2018_12_22_065917_create_user_favorite_products_table', 1),
(8, '2018_12_22_071404_create_cart_items_table', 1),
(9, '2018_12_23_042627_create_orders_table', 1),
(10, '2018_12_23_042632_create_order_items_table', 1),
(11, '2018_12_23_103610_create_coupon_codes_table', 1),
(12, '2018_12_23_103753_orders_add_coupon_code_id', 1),
(13, '2017_07_17_040159_create_config_table', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `paid_at` datetime DEFAULT NULL,
  `coupon_code_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `reviewed` tinyint(1) NOT NULL DEFAULT '0',
  `ship_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text COLLATE utf8mb4_unicode_ci,
  `extra` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `no`, `user_id`, `address`, `total_amount`, `remark`, `paid_at`, `coupon_code_id`, `payment_method`, `payment_no`, `refund_status`, `refund_no`, `closed`, `reviewed`, `ship_status`, `ship_data`, `extra`, `created_at`, `updated_at`) VALUES
(1, '20190227075448683818', 84, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c70\\u8857\\u9053\\u7b2c985\\u53f7\",\"zip\":423700,\"contact_name\":\"\\u8def\\u6bc5\",\"contact_phone\":\"18651709453\"}', '61587.00', 'Consequatur ea sit delectus est ipsam eaque nesciunt aut.', '2019-02-13 14:22:44', NULL, 'wechat', '6bb23875-66f2-303a-bc90-47cccef1f911', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:51'),
(2, '20190227075448545474', 38, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c85\\u8857\\u9053\\u7b2c551\\u53f7\",\"zip\":814100,\"contact_name\":\"\\u7941\\u6587\\u5a1f\",\"contact_phone\":\"18901011520\"}', '72889.00', 'Ut nobis sed voluptas ut sapiente quia.', '2019-01-28 17:59:54', NULL, 'alipay', '06bda2a0-c995-3a89-9edf-82170f7e49d7', 'success', '618b11d292ee46fa808f218260cf3e44', 0, 1, 'received', '{\"express_company\":\"\\u4e03\\u559c\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"f01e0717-15fd-37bf-a103-0d4edfb52e91\"}', '{\"refund_reason\":\"Quis voluptatem sapiente illo.\"}', '2019-02-26 23:54:48', '2019-02-26 23:54:51'),
(3, '20190227075448105946', 9, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c52\\u8857\\u9053\\u7b2c684\\u53f7\",\"zip\":342400,\"contact_name\":\"\\u90b8\\u6dd1\\u82f1\",\"contact_phone\":\"17085166607\"}', '6289.68', 'Ea suscipit aut voluptates est.', '2019-02-13 06:01:57', 11, 'wechat', 'cfa8ea44-ecde-3166-b7e3-23d09acfd2f1', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u7acb\\u4fe1\\u7535\\u5b50\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"061ad755-cb72-3ef9-950c-83fc2b357706\"}', '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:51'),
(4, '20190227075448963492', 53, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c67\\u8857\\u9053\\u7b2c43\\u53f7\",\"zip\":403500,\"contact_name\":\"\\u8fde\\u7389\\u73cd\",\"contact_phone\":\"15266709251\"}', '51934.00', 'Consequatur alias aut rerum facere.', '2019-02-13 01:22:02', 15, 'alipay', '6467bf82-00c8-3858-9374-a694cdc96d87', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5bcc\\u7f73\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"bb7bc945-f954-318e-b783-9df11767d879\"}', '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:51'),
(5, '20190227075448788711', 13, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c39\\u8857\\u9053\\u7b2c686\\u53f7\",\"zip\":688200,\"contact_name\":\"\\u7530\\u4e3d\\u4e3d\",\"contact_phone\":\"17196023041\"}', '15605.00', 'Delectus eveniet sint ut corporis quo ipsam totam.', '2019-02-08 12:18:37', NULL, 'alipay', '2b2ede77-d5c6-311a-a007-b86e24066df3', 'success', '8d17aceda1b24d2fa864aa85be15db5c', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Eum exercitationem eius quia sapiente perspiciatis.\"}', '2019-02-26 23:54:48', '2019-02-26 23:54:51'),
(6, '20190227075448108278', 33, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c66\\u8857\\u9053\\u7b2c21\\u53f7\",\"zip\":244600,\"contact_name\":\"\\u77bf\\u5fd7\\u8bda\",\"contact_phone\":\"13690293615\"}', '15220.00', 'Quia sunt doloribus molestias consequatur culpa.', '2019-02-06 07:00:20', NULL, 'wechat', '87ecd3b0-dc47-31ce-9c8d-9cb14b11c12c', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:51'),
(7, '20190227075448373542', 44, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c15\\u8857\\u9053\\u7b2c781\\u53f7\",\"zip\":136300,\"contact_name\":\"\\u674e\\u5e05\",\"contact_phone\":\"18331802115\"}', '11632.00', 'Ut qui nulla velit illo et impedit.', '2019-02-14 17:54:11', NULL, 'alipay', 'f60bb5de-8c3d-3371-ab33-9267f622467e', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:51'),
(8, '20190227075448706465', 62, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c15\\u8857\\u9053\\u7b2c674\\u53f7\",\"zip\":521600,\"contact_name\":\"\\u8042\\u745e\",\"contact_phone\":\"13415878736\"}', '37281.00', 'Eaque expedita eos quasi quis.', '2019-02-02 23:49:41', NULL, 'wechat', '3f8c1716-4359-3097-a763-a619d1bf3f9f', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:51'),
(9, '20190227075448648139', 74, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c57\\u8857\\u9053\\u7b2c457\\u53f7\",\"zip\":558100,\"contact_name\":\"\\u90ac\\u4e3d\\u5a1f\",\"contact_phone\":\"17199082966\"}', '36266.00', 'Eaque et facere mollitia illum.', '2019-02-08 22:21:26', NULL, 'wechat', '0067e110-85c4-3b64-b7f7-8dec6b7563de', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:51'),
(10, '20190227075448893011', 103, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c5\\u8857\\u9053\\u7b2c2\\u53f7\",\"zip\":558500,\"contact_name\":\"\\u8ba1\\u667a\\u52c7\",\"contact_phone\":\"17057618506\"}', '28485.00', 'Autem minima totam minima alias voluptatem.', '2019-02-15 07:19:47', NULL, 'wechat', '0086fe4e-51aa-3f89-ba4f-c8356ab7102e', 'success', 'f90c7cfc35bf49ca853aef994d72b26e', 0, 0, 'delivered', '{\"express_company\":\"\\u94f6\\u5609\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"7b363f71-6cc5-3642-8ffe-cd157dec20d6\"}', '{\"refund_reason\":\"Necessitatibus blanditiis rem labore repudiandae et explicabo.\"}', '2019-02-26 23:54:48', '2019-02-26 23:54:51'),
(11, '20190227075448983389', 36, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c68\\u8857\\u9053\\u7b2c134\\u53f7\",\"zip\":606300,\"contact_name\":\"\\u5f3a\\u65b0\\u534e\",\"contact_phone\":\"18773557768\"}', '14665.00', 'Quasi ab minima iste soluta recusandae consequatur adipisci.', '2019-01-31 13:50:30', NULL, 'alipay', 'c24eb384-86c8-3059-8e42-f47d43e76a16', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:52'),
(12, '20190227075448425436', 35, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c50\\u8857\\u9053\\u7b2c433\\u53f7\",\"zip\":851700,\"contact_name\":\"\\u6ed5\\u5a55\",\"contact_phone\":\"17076991639\"}', '14095.57', 'In delectus error et fugiat.', '2019-02-22 10:38:47', 11, 'wechat', '2ed12b3d-d13a-3916-884c-8db797612981', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u6613\\u52a8\\u529b\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"1e5280f6-45c0-343a-a698-1382d0928caa\"}', '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:52'),
(13, '20190227075448462608', 35, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c50\\u8857\\u9053\\u7b2c433\\u53f7\",\"zip\":851700,\"contact_name\":\"\\u6ed5\\u5a55\",\"contact_phone\":\"17076991639\"}', '27744.00', 'Quae tempore quos libero porro nihil maxime.', '2019-02-02 07:16:57', NULL, 'wechat', '5a89080d-3add-360a-9b2a-06a41479b2c8', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u4e03\\u559c\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e000e7dc-4331-3156-a985-fc94cb7f8c9c\"}', '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:52'),
(14, '20190227075448296042', 33, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c66\\u8857\\u9053\\u7b2c21\\u53f7\",\"zip\":244600,\"contact_name\":\"\\u77bf\\u5fd7\\u8bda\",\"contact_phone\":\"13690293615\"}', '48655.00', 'Doloremque sed rem sed consequatur itaque.', '2019-02-03 02:28:20', NULL, 'alipay', 'e296f0c2-51d2-3cfc-a7b5-71e9548ca2f2', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u6613\\u52a8\\u529b\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"226dd8da-fc26-38de-80c3-6702006664af\"}', '[]', '2019-02-26 23:54:48', '2019-02-26 23:54:52'),
(15, '20190227075448398265', 16, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c372\\u53f7\",\"zip\":152400,\"contact_name\":\"\\u5bab\\u51ac\\u6885\",\"contact_phone\":\"14521970711\"}', '33148.00', 'Nemo magni praesentium atque sint quia provident rerum harum.', '2019-01-28 14:33:22', NULL, 'alipay', '847dda9a-db9a-33c1-b928-5f58e4d61b9d', 'success', 'd829a3c350944a47a556287ab111643d', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Ducimus rerum illum modi dolore vel.\"}', '2019-02-26 23:54:48', '2019-02-26 23:54:52'),
(16, '20190227075449026316', 15, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c975\\u53f7\",\"zip\":607400,\"contact_name\":\"\\u502a\\u65ed\",\"contact_phone\":\"17686036423\"}', '16992.00', 'Et voluptas corrupti ut dolore inventore sunt.', '2019-02-12 11:26:21', NULL, 'alipay', 'f11d26a9-2af1-3ab6-a37c-3ebf10fc6490', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u521b\\u8054\\u4e16\\u7eaa\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"140becdd-fbcf-302c-9ecc-d2481b5e43b2\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:52'),
(17, '20190227075449428653', 80, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c51\\u8857\\u9053\\u7b2c910\\u53f7\",\"zip\":615700,\"contact_name\":\"\\u7ae5\\u4f26\",\"contact_phone\":\"18050478192\"}', '19760.00', 'Ea deleniti iste sed.', '2019-02-20 10:50:35', NULL, 'alipay', '4e61fd5a-7edb-3986-9d05-b41a0b036d36', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:52'),
(18, '20190227075449762759', 66, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c82\\u8857\\u9053\\u7b2c372\\u53f7\",\"zip\":481300,\"contact_name\":\"\\u7b26\\u7231\\u534e\",\"contact_phone\":\"13124315386\"}', '3844.18', 'At est molestiae quae esse voluptas ut dolorum.', '2019-02-08 19:19:54', 11, 'wechat', '06b13aed-0561-3923-96e8-7f5115c5d6e8', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u6613\\u52a8\\u529b\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"590d1096-753b-3a65-80b6-f4c9828671d2\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:52'),
(19, '20190227075449416701', 21, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c12\\u8857\\u9053\\u7b2c170\\u53f7\",\"zip\":258700,\"contact_name\":\"\\u8863\\u6587\",\"contact_phone\":\"17013460875\"}', '34287.48', 'Aperiam fuga id quidem labore quaerat consequuntur.', '2019-02-08 14:24:12', 15, 'wechat', '0b6228ae-f779-3289-befd-5409df3db805', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u7ef4\\u6d9b\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"005c6c1b-0ac3-3754-a71c-38831bf41ad6\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:53'),
(20, '20190227075449044226', 63, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c516\\u53f7\",\"zip\":792200,\"contact_name\":\"\\u51bc\\u7965\",\"contact_phone\":\"13547743011\"}', '29808.00', 'Explicabo enim laboriosam soluta sit.', '2019-02-01 19:56:12', NULL, 'alipay', '95053b3b-536e-3f89-96ce-5ff65609e50a', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u4e03\\u559c\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"367e7c9a-e304-3710-8d99-fd318a4d715d\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:53'),
(21, '20190227075449518455', 70, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c68\\u8857\\u9053\\u7b2c623\\u53f7\",\"zip\":535600,\"contact_name\":\"\\u5f6d\\u667a\\u660e\",\"contact_phone\":\"17010560166\"}', '6182.00', 'Hic officia dolorem temporibus aliquid animi praesentium consequuntur.', '2019-01-29 04:12:02', NULL, 'wechat', '21e05d61-8d72-377d-b9a2-cda8c4db8366', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u5408\\u8054\\u7535\\u5b50\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"fdbb7e62-58db-3a0e-8a38-08f4b56df7b5\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:53'),
(22, '20190227075449971838', 65, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c986\\u53f7\",\"zip\":112500,\"contact_name\":\"\\u7afa\\u5efa\\u5e73\",\"contact_phone\":\"15723521296\"}', '15220.00', 'Minus inventore maiores repellendus fuga culpa illo repellat.', '2019-02-08 16:40:20', NULL, 'wechat', 'cc071ea1-6cfb-32b7-8b5f-6f01aa259a28', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:53'),
(23, '20190227075449300518', 91, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c66\\u8857\\u9053\\u7b2c442\\u53f7\",\"zip\":551400,\"contact_name\":\"\\u50e7\\u83b9\",\"contact_phone\":\"18147081618\"}', '3952.00', 'Ut reprehenderit cumque voluptatem autem.', '2019-02-07 19:55:42', NULL, 'wechat', '7ff376e4-4e21-34f5-bf7a-734e3ec65b76', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u8054\\u901a\\u65f6\\u79d1\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"394a95cd-c0b0-3da2-a8f0-3b96945c6fae\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:53'),
(24, '20190227075449943178', 40, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c49\\u8857\\u9053\\u7b2c257\\u53f7\",\"zip\":236300,\"contact_name\":\"\\u6f58\\u6ce2\",\"contact_phone\":\"17181566916\"}', '22363.00', 'Accusantium explicabo unde blanditiis totam quibusdam culpa.', '2019-02-03 12:49:45', NULL, 'wechat', '30521194-9479-3363-a91a-673804a4333c', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6613\\u52a8\\u529b\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"6965b701-15c1-3056-b2a8-062ba69ffb79\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:53'),
(25, '20190227075449134942', 66, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c82\\u8857\\u9053\\u7b2c372\\u53f7\",\"zip\":481300,\"contact_name\":\"\\u7b26\\u7231\\u534e\",\"contact_phone\":\"13124315386\"}', '63988.00', 'Laudantium fugiat impedit corporis suscipit ratione voluptas exercitationem.', '2019-02-12 00:53:16', NULL, 'alipay', '22b9b5cd-60ef-39b0-a34a-97429681cc60', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u5170\\u91d1\\u7535\\u5b50\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5edb09ff-a26f-3db0-83c7-02ca56ba4b6c\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:54'),
(26, '20190227075449700244', 75, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c39\\u8857\\u9053\\u7b2c835\\u53f7\",\"zip\":297200,\"contact_name\":\"\\u88f4\\u4e3d\\u5a1f\",\"contact_phone\":\"15560214843\"}', '74887.00', 'Ut quisquam qui architecto placeat laboriosam aut magni.', '2019-02-11 15:38:42', NULL, 'alipay', '8f4fc1eb-798a-32d6-859f-b6f1fe4c620a', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u6613\\u52a8\\u529b\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"dfcfc785-ee1a-3304-8166-54bcd3553416\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:54'),
(27, '20190227075449065268', 38, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c24\\u8857\\u9053\\u7b2c212\\u53f7\",\"zip\":551300,\"contact_name\":\"\\u5305\\u5609\\u4fca\",\"contact_phone\":\"18820916994\"}', '56809.00', 'Iusto est nihil dolor eligendi aliquid in dolor inventore.', '2019-02-20 17:02:46', NULL, 'wechat', '9d0fd726-4875-3b28-8488-1a582c212f45', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u521b\\u6c47\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"c5332a27-a9d8-325f-a9d0-e07d5690d8a8\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:54'),
(28, '20190227075449263728', 3, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c93\\u8857\\u9053\\u7b2c936\\u53f7\",\"zip\":655400,\"contact_name\":\"\\u53f8\\u5efa\\u56fd\",\"contact_phone\":\"18316180060\"}', '4222.00', 'Sit necessitatibus et doloribus et rerum eligendi.', '2019-02-08 07:59:54', NULL, 'wechat', '15203cae-2138-3a47-ab0b-a9ee142ac2fb', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:54'),
(29, '20190227075449887568', 4, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c46\\u8857\\u9053\\u7b2c567\\u53f7\",\"zip\":215100,\"contact_name\":\"\\u803f\\u971e\",\"contact_phone\":\"15866562018\"}', '62444.00', 'Rerum est voluptatum est nulla.', '2019-02-10 13:10:47', NULL, 'alipay', 'a6912332-8f9d-3c09-97fb-4c0156682141', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:55'),
(30, '20190227075449412067', 13, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c627\\u53f7\",\"zip\":663400,\"contact_name\":\"\\u8d56\\u6dd1\\u73cd\",\"contact_phone\":\"15327180388\"}', '12720.25', 'Voluptas aut repellendus corrupti nobis praesentium tempora.', '2019-01-28 12:53:44', 11, 'alipay', 'd60b475b-64bc-31b0-8be0-a10c966b966a', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u4e03\\u559c\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"6119dc56-8ee1-3046-9452-9ef46e93a110\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:55'),
(31, '20190227075449041427', 53, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c83\\u8857\\u9053\\u7b2c491\\u53f7\",\"zip\":805600,\"contact_name\":\"\\u5de9\\u7389\\u82f1\",\"contact_phone\":\"15329204081\"}', '19595.00', 'Deleniti non et quos nihil ab voluptas.', '2019-01-31 09:16:40', NULL, 'alipay', 'c411572c-1f7b-399f-9a86-c4ced5f8c7f2', 'success', 'be8fff96319c4090a829c323bfa67b02', 0, 1, 'received', '{\"express_company\":\"\\u6613\\u52a8\\u529b\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"1fce9723-e371-3b58-937e-64a9038b07b1\"}', '{\"refund_reason\":\"Tenetur consectetur est nobis excepturi sequi.\"}', '2019-02-26 23:54:49', '2019-02-26 23:54:55'),
(32, '20190227075449517565', 68, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c61\\u8857\\u9053\\u7b2c503\\u53f7\",\"zip\":554900,\"contact_name\":\"\\u67cf\\u814a\\u6885\",\"contact_phone\":\"13555635033\"}', '12438.00', 'Est inventore quos quas.', '2019-02-25 00:34:49', NULL, 'wechat', 'a1cbf882-aa35-3b9f-bbf7-c1ad0d571ac0', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u6cf0\\u9e92\\u9e9f\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"a24430dc-6990-365b-bdbb-e5be7699e8d1\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:55'),
(33, '20190227075449942652', 7, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c96\\u8857\\u9053\\u7b2c894\\u53f7\",\"zip\":567400,\"contact_name\":\"\\u5305\\u73b2\",\"contact_phone\":\"17749070744\"}', '10602.00', 'Tempora temporibus odio perspiciatis repellat consectetur.', '2019-02-23 00:16:38', NULL, 'alipay', '533dad06-185f-3544-8962-f942221d13da', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u540c\\u5174\\u4e07\\u70b9\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"c5f4645b-d737-3bc5-a568-3d2b6b65567d\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(34, '20190227075449463276', 94, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c64\\u8857\\u9053\\u7b2c860\\u53f7\",\"zip\":726300,\"contact_name\":\"\\u4e07\\u78ca\",\"contact_phone\":\"18422928392\"}', '18673.40', 'Nisi nihil quis ab.', '2019-02-18 02:46:10', 11, 'wechat', 'facb809e-6bbc-3b7c-ae96-94789e3504b4', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u6656\\u6765\\u8ba1\\u7b97\\u673a\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"13fd82fe-0d8f-3473-84bf-8283906cd712\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(35, '20190227075449738936', 78, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c90\\u8857\\u9053\\u7b2c915\\u53f7\",\"zip\":77600,\"contact_name\":\"\\u960e\\u8d85\",\"contact_phone\":\"15132547520\"}', '41493.20', 'Ut magni placeat eveniet minus dolores.', '2019-02-23 05:14:14', 11, 'alipay', '1a5b1bd3-4c80-309b-851e-1732f0a13904', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"MBP\\u8f6f\\u4ef6\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"0951045a-8d63-32d4-aeac-11a05373bffe\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(36, '20190227075449356473', 13, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c627\\u53f7\",\"zip\":663400,\"contact_name\":\"\\u8d56\\u6dd1\\u73cd\",\"contact_phone\":\"15327180388\"}', '10532.00', 'Dolorum reprehenderit incidunt amet eum at magnam soluta.', '2019-02-13 18:51:24', NULL, 'wechat', '13921ddb-ebbc-3d7a-827e-28475d4630bc', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5546\\u8f6f\\u51a0\\u8054\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"2a8c56b4-7fb4-38e9-8abb-534442c688b1\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(37, '20190227075449651177', 22, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c6\\u8857\\u9053\\u7b2c293\\u53f7\",\"zip\":218300,\"contact_name\":\"\\u6210\\u9f99\",\"contact_phone\":\"17194890738\"}', '27123.88', 'Maxime nulla illum quis accusamus temporibus quod.', '2019-02-24 18:46:42', 11, 'alipay', '6e088804-65b7-38b5-b588-8d9247ed8f96', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(38, '20190227075449172087', 91, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c53\\u8857\\u9053\\u7b2c130\\u53f7\",\"zip\":196500,\"contact_name\":\"\\u82cf\\u4f73\",\"contact_phone\":\"15255990740\"}', '14359.00', 'Qui a ea provident molestiae ut doloribus.', '2019-02-18 19:13:07', NULL, 'wechat', 'b12fc36e-78b0-3af5-af69-5b413b1e61e2', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(39, '20190227075449045501', 5, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c52\\u8857\\u9053\\u7b2c947\\u53f7\",\"zip\":374400,\"contact_name\":\"\\u59dc\\u91d1\\u51e4\",\"contact_phone\":\"17803712387\"}', '93696.00', 'Qui voluptatem excepturi et ab et nihil aut.', '2019-02-01 12:51:52', NULL, 'alipay', '32ec0d0f-d1c2-3419-a048-6cc5fa002194', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u98de\\u5229\\u4fe1\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"bdbbbae9-a236-3ba7-b01b-c563fdec1053\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(40, '20190227075449318621', 84, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c62\\u8857\\u9053\\u7b2c369\\u53f7\",\"zip\":751500,\"contact_name\":\"\\u66fe\\u5e06\",\"contact_phone\":\"17080175991\"}', '22422.24', 'Quis eum est animi porro modi.', '2019-01-30 08:10:29', 15, 'wechat', '71ed1f22-72ea-316d-a029-4db7c4f3d1ca', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u83ca\\u98ce\\u516c\\u53f8\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"a6e8cc93-102d-36dd-84e1-5ba139bf49e8\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(41, '20190227075449062278', 17, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c84\\u8857\\u9053\\u7b2c437\\u53f7\",\"zip\":167800,\"contact_name\":\"\\u50e7\\u4e3d\\u534e\",\"contact_phone\":\"17079152934\"}', '19168.00', 'Quia illum non ut reprehenderit sunt porro.', '2019-01-31 04:08:23', NULL, 'wechat', 'ef1e973f-788c-317b-84ed-0991f36aec67', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u5546\\u8f6f\\u51a0\\u8054\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"db33727f-57e2-3ee9-8d26-a5eae9d65697\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(42, '20190227075449481786', 17, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c84\\u8857\\u9053\\u7b2c437\\u53f7\",\"zip\":167800,\"contact_name\":\"\\u50e7\\u4e3d\\u534e\",\"contact_phone\":\"17079152934\"}', '13785.00', 'Voluptatem nihil consequatur aspernatur et unde.', '2019-02-25 10:18:35', NULL, 'wechat', '10d00607-f556-3f86-88ac-6f5e52c3279a', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u4f73\\u79be\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"06f269d7-25d1-33ba-931c-edc9811d61c9\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(43, '20190227075449169954', 67, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c37\\u8857\\u9053\\u7b2c704\\u53f7\",\"zip\":86300,\"contact_name\":\"\\u6731\\u7ea2\",\"contact_phone\":\"17667607012\"}', '48442.80', 'Consequuntur ut ut dolores asperiores sint.', '2019-02-19 18:05:36', 11, 'wechat', 'fa0a4c8b-da57-3dbe-9f56-4de4803d5d4d', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(44, '20190227075449892020', 67, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c83\\u8857\\u9053\\u7b2c571\\u53f7\",\"zip\":733600,\"contact_name\":\"\\u8def\\u971e\",\"contact_phone\":\"18816816335\"}', '51142.00', 'Occaecati officiis quam molestiae at natus.', '2019-02-02 10:57:44', NULL, 'alipay', 'b4e394a7-c8a3-3cde-911b-453a2a65e592', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u51cc\\u9896\\u4fe1\\u606f\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"6c3394c8-5bf9-38d8-823b-b129403c0a3f\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:56'),
(45, '20190227075449761176', 52, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c75\\u8857\\u9053\\u7b2c905\\u53f7\",\"zip\":315800,\"contact_name\":\"\\u90a2\\u697c\",\"contact_phone\":\"15870481820\"}', '15733.00', 'Molestiae doloribus accusantium aperiam corporis reiciendis voluptas.', '2019-02-23 13:08:18', NULL, 'alipay', '3ee9d47f-f806-3d05-9cd8-396acd426c63', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:57'),
(46, '20190227075449704964', 25, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c12\\u8857\\u9053\\u7b2c916\\u53f7\",\"zip\":505200,\"contact_name\":\"\\u666f\\u6d0b\",\"contact_phone\":\"18120343130\"}', '7577.00', 'Impedit qui quis velit repellat et non ut.', '2019-01-30 00:20:13', NULL, 'alipay', '05a80a41-c94b-3707-9de2-7e4d0d94541d', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u5bcc\\u7f73\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4c435f36-5f85-30ad-8b41-2bad8fbe06b3\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:57'),
(47, '20190227075449188219', 40, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c49\\u8857\\u9053\\u7b2c257\\u53f7\",\"zip\":236300,\"contact_name\":\"\\u6f58\\u6ce2\",\"contact_phone\":\"17181566916\"}', '6591.17', 'Illum veniam aut sint impedit natus.', '2019-02-24 20:57:13', 11, 'wechat', '3f0371e8-afca-3bdb-b03f-e57998bed835', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u4f73\\u79be\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"550a769f-82a4-3edb-863d-fe12f02c219a\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:57'),
(48, '20190227075449062831', 38, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c24\\u8857\\u9053\\u7b2c212\\u53f7\",\"zip\":551300,\"contact_name\":\"\\u5305\\u5609\\u4fca\",\"contact_phone\":\"18820916994\"}', '35364.00', 'Occaecati architecto itaque quia perferendis eos consectetur est.', '2019-02-25 13:31:03', NULL, 'wechat', 'f5ec6f12-96d3-3c66-9947-34571d2d2589', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u65b0\\u683c\\u6797\\u8010\\u7279\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5ffa8451-74ee-3f0e-84d9-b717b3170740\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:57'),
(49, '20190227075449549915', 35, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c50\\u8857\\u9053\\u7b2c433\\u53f7\",\"zip\":851700,\"contact_name\":\"\\u6ed5\\u5a55\",\"contact_phone\":\"17076991639\"}', '15252.00', 'Et deserunt aut ipsa ratione nostrum.', '2019-02-17 21:45:39', NULL, 'alipay', '151b6025-3fab-3785-b054-c51da3ec6bf0', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u6656\\u6765\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4a272af6-c9f1-3291-bc27-90b7960e4900\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:57'),
(50, '20190227075449573710', 82, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c84\\u8857\\u9053\\u7b2c698\\u53f7\",\"zip\":84300,\"contact_name\":\"\\u8d3e\\u5b81\",\"contact_phone\":\"18531164981\"}', '84423.00', 'Rem labore necessitatibus facilis iste.', '2019-02-10 15:09:15', NULL, 'alipay', '92f878cc-c0ea-3dad-b340-43cb9aff3f36', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u9ec4\\u77f3\\u91d1\\u627f\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"733fd07f-4ae5-333d-abaa-7b15dc2b1ace\"}', '[]', '2019-02-26 23:54:49', '2019-02-26 23:54:57'),
(51, '20190227075449593286', 14, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c21\\u8857\\u9053\\u7b2c45\\u53f7\",\"zip\":547600,\"contact_name\":\"\\u9a6c\\u5efa\\u56fd\",\"contact_phone\":\"18319194962\"}', '10086.00', 'Numquam reiciendis perspiciatis aut et sit qui sequi.', '2019-02-13 11:25:08', NULL, 'alipay', 'd4e05986-6498-3553-a26d-6e0f56be10f2', 'success', 'cdf7af4928f34b1bbf4a7ac37175dbd6', 0, 0, 'pending', NULL, '{\"refund_reason\":\"Voluptatem omnis voluptates quaerat qui nam.\"}', '2019-02-26 23:54:49', '2019-02-26 23:54:57'),
(52, '20190227075450198388', 34, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c6\\u8857\\u9053\\u7b2c270\\u53f7\",\"zip\":778400,\"contact_name\":\"\\u6b27\\u9633\\u51e4\\u82f1\",\"contact_phone\":\"15615133268\"}', '30634.00', 'Accusamus fugit odit ad at dolore id veniam.', '2019-02-17 18:35:11', NULL, 'wechat', 'eb13e5a7-a886-30c6-b39f-0c5d3a4431bd', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:57'),
(53, '20190227075450945168', 103, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c54\\u8857\\u9053\\u7b2c42\\u53f7\",\"zip\":14100,\"contact_name\":\"\\u7cdc\\u4f1f\",\"contact_phone\":\"13352852920\"}', '59444.00', 'Atque libero tempore impedit doloribus voluptas maiores.', '2019-01-29 13:16:17', NULL, 'alipay', 'fe86b610-d8b1-3830-9906-0cb8d7d19a4b', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u660e\\u817e\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"042704b5-99d3-3355-91d1-3f8d5d2fc117\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(54, '20190227075450391222', 18, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c3\\u8857\\u9053\\u7b2c881\\u53f7\",\"zip\":573500,\"contact_name\":\"\\u66f2\\u6842\\u8363\",\"contact_phone\":\"13009958657\"}', '18877.80', 'Quia incidunt vel reiciendis est earum et.', '2019-02-21 03:21:03', 11, 'wechat', '12c5a0b5-66a9-321b-84d1-061eda94f9b5', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u7ef4\\u65fa\\u660e\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"f8f31bde-33df-3286-8a1a-fe77dc61fafa\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(55, '20190227075450402950', 23, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c31\\u8857\\u9053\\u7b2c786\\u53f7\",\"zip\":457900,\"contact_name\":\"\\u7cdc\\u949f\",\"contact_phone\":\"15176433038\"}', '5891.10', 'Est assumenda sit reiciendis aliquam sint eum in nulla.', '2019-02-02 17:36:19', 11, 'alipay', '7099109f-7fc5-3a24-a86c-8444ce9c1f54', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u4e2d\\u5efa\\u521b\\u4e1a\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"7e79fa84-d583-3e6d-b59e-3a8a6c77da4a\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(56, '20190227075450236970', 63, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c516\\u53f7\",\"zip\":792200,\"contact_name\":\"\\u51bc\\u7965\",\"contact_phone\":\"13547743011\"}', '34120.00', 'Qui voluptatem necessitatibus deleniti deserunt.', '2019-02-10 03:20:45', NULL, 'alipay', '441d04d5-cb31-3b48-b170-5be2942f5457', 'success', '76fedf36e8b94fc4b105908fe62d6766', 0, 1, 'delivered', '{\"express_company\":\"\\u521b\\u4ebf\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"7554fb5c-4c4d-321e-8508-1641a5e7a451\"}', '{\"refund_reason\":\"Dolorem voluptatem illo et exercitationem quo et voluptatum.\"}', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(57, '20190227075450309756', 83, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c55\\u8857\\u9053\\u7b2c829\\u53f7\",\"zip\":345900,\"contact_name\":\"\\u5de6\\u519b\",\"contact_phone\":\"15283649342\"}', '27711.00', 'Iusto repellat tempore ut rerum ratione voluptatem.', '2019-02-19 11:39:59', NULL, 'alipay', '51fc8bc9-b8d5-33af-885c-0db3a590f365', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u4e03\\u559c\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"2b8fca91-0106-3d79-9350-1891ebaae598\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(58, '20190227075450399552', 55, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c71\\u8857\\u9053\\u7b2c832\\u53f7\",\"zip\":421200,\"contact_name\":\"\\u968b\\u7433\",\"contact_phone\":\"15830677320\"}', '16008.00', 'Sunt sit iusto iusto blanditiis ut necessitatibus quae quidem.', '2019-02-24 04:35:53', NULL, 'wechat', '215e1dc7-6f92-3331-9d61-58336ee678eb', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u65b9\\u6b63\\u79d1\\u6280\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"f717d40b-b068-3871-9722-c6442ec5c577\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(59, '20190227075450524795', 28, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c91\\u8857\\u9053\\u7b2c222\\u53f7\",\"zip\":588600,\"contact_name\":\"\\u7533\\u745c\",\"contact_phone\":\"18643662653\"}', '17018.00', 'Autem rerum aliquid ut blanditiis.', '2019-02-12 17:25:04', NULL, 'wechat', '2e6746c9-95d1-3d2e-b1b5-ac727decbb81', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(60, '20190227075450897905', 49, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c62\\u8857\\u9053\\u7b2c931\\u53f7\",\"zip\":45500,\"contact_name\":\"\\u8def\\u5e06\",\"contact_phone\":\"18223424158\"}', '77935.00', 'Deleniti molestiae dolor unde corrupti minima.', '2019-02-06 21:44:07', NULL, 'alipay', 'a832d299-e222-3a44-aa10-b56fabd083f3', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u76df\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"579e8be7-18c3-3587-aea8-d242b853572a\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(61, '20190227075450138143', 44, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c98\\u8857\\u9053\\u7b2c686\\u53f7\",\"zip\":442300,\"contact_name\":\"\\u5b81\\u667a\\u6e0a\",\"contact_phone\":\"17074538828\"}', '27953.00', 'Eveniet quidem autem nihil ipsa atque ut.', '2019-02-20 15:05:35', NULL, 'wechat', '3b366099-445b-3ba8-be6e-fd884202faf3', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u8054\\u8f6f\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4a0c8e3f-c8c2-3f85-a06d-9d45848f53a5\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(62, '20190227075450526056', 103, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c5\\u8857\\u9053\\u7b2c2\\u53f7\",\"zip\":558500,\"contact_name\":\"\\u8ba1\\u667a\\u52c7\",\"contact_phone\":\"17057618506\"}', '11738.00', 'Modi nobis amet fuga.', '2019-02-26 02:44:34', NULL, 'wechat', 'cad8cc91-05ee-3297-aa1c-d999b0ba5a56', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u96e8\\u6797\\u6728\\u98ce\\u8ba1\\u7b97\\u673a\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"1aae7111-4d12-3c09-875b-178d0d9a139b\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(63, '20190227075450571454', 5, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c52\\u8857\\u9053\\u7b2c947\\u53f7\",\"zip\":374400,\"contact_name\":\"\\u59dc\\u91d1\\u51e4\",\"contact_phone\":\"17803712387\"}', '153.00', 'Eligendi dolorem quia officia.', '2019-02-10 23:37:26', NULL, 'wechat', 'd7d621b0-763d-34a6-9267-a0eabdd8d03d', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(64, '20190227075450001843', 44, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c98\\u8857\\u9053\\u7b2c686\\u53f7\",\"zip\":442300,\"contact_name\":\"\\u5b81\\u667a\\u6e0a\",\"contact_phone\":\"17074538828\"}', '59745.00', 'Distinctio ipsa esse eos aut est quas voluptate.', '2019-02-24 17:48:22', NULL, 'alipay', '4acd2dc2-01bf-3cb0-aa0b-2d794434632e', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(65, '20190227075450916077', 75, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c94\\u8857\\u9053\\u7b2c166\\u53f7\",\"zip\":533900,\"contact_name\":\"\\u53f2\\u5a77\\u5a77\",\"contact_phone\":\"17052190799\"}', '1683.00', 'Ipsa vel laborum aut ut dolorem harum et.', '2019-02-25 05:25:07', NULL, 'wechat', '3ba272e3-a92f-3c21-9bbf-0942a5238246', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(66, '20190227075450380717', 41, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c43\\u8857\\u9053\\u7b2c711\\u53f7\",\"zip\":821200,\"contact_name\":\"\\u80e1\\u5b66\\u660e\",\"contact_phone\":\"15060600606\"}', '30803.08', 'Nihil delectus optio incidunt repellat deserunt in.', '2019-02-09 00:11:25', 11, 'alipay', '331cc9a7-153b-3df0-9c2e-44a4b0d84dc8', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6bd5\\u535a\\u8bda\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"315ad9bf-27a8-3d48-a554-26793e8b6316\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(67, '20190227075450807315', 4, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c46\\u8857\\u9053\\u7b2c567\\u53f7\",\"zip\":215100,\"contact_name\":\"\\u803f\\u971e\",\"contact_phone\":\"15866562018\"}', '11960.00', 'Consequuntur omnis quo tenetur molestiae.', '2019-02-16 09:57:25', 15, 'wechat', 'bff0c766-b698-3b2b-b6cc-8ebe84cc6e14', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u592a\\u6781\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"88e116ba-f909-3251-afcc-99fc091b177a\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:58'),
(68, '20190227075450249607', 51, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c40\\u8857\\u9053\\u7b2c335\\u53f7\",\"zip\":755500,\"contact_name\":\"\\u5b8b\\u814a\\u6885\",\"contact_phone\":\"14708669913\"}', '36264.00', 'Dignissimos laudantium omnis eaque repellat aspernatur.', '2019-02-13 09:03:31', NULL, 'alipay', '99f82005-2138-3e2d-8d3a-c2219cbfecdf', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u601d\\u4f18\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"648500a9-ec24-3a70-9248-33a35319c381\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:59'),
(69, '20190227075450354204', 25, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c95\\u8857\\u9053\\u7b2c540\\u53f7\",\"zip\":74800,\"contact_name\":\"\\u7126\\u5f6c\",\"contact_phone\":\"15110134427\"}', '19092.00', 'Aut laborum at voluptas nemo est rerum incidunt molestiae.', '2019-02-04 18:22:16', NULL, 'alipay', '5c8d1e69-f606-37a8-b6e9-9d5088c9100b', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u98de\\u6d77\\u79d1\\u6280\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"a81f999f-be36-3c21-80fe-5427b22a0d5a\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:59'),
(70, '20190227075450234153', 62, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c15\\u8857\\u9053\\u7b2c674\\u53f7\",\"zip\":521600,\"contact_name\":\"\\u8042\\u745e\",\"contact_phone\":\"13415878736\"}', '8940.00', 'Ut id dolorum expedita odit sed.', '2019-02-15 03:00:53', NULL, 'alipay', '61da35de-a095-34a4-a342-8798d7078819', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:59'),
(71, '20190227075450341540', 36, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c68\\u8857\\u9053\\u7b2c134\\u53f7\",\"zip\":606300,\"contact_name\":\"\\u5f3a\\u65b0\\u534e\",\"contact_phone\":\"18773557768\"}', '55875.00', 'Autem assumenda voluptatibus odit nam occaecati id dolorem voluptatem.', '2019-01-31 13:15:28', NULL, 'wechat', '431a0133-0bbe-36da-98bd-93062eacb4a5', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u56db\\u901a\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"b97bc061-0d24-3dc1-8a80-41715ba654f8\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:59'),
(72, '20190227075450942740', 100, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c30\\u8857\\u9053\\u7b2c110\\u53f7\",\"zip\":737200,\"contact_name\":\"\\u4f0f\\u96ea\",\"contact_phone\":\"13019726296\"}', '13248.00', 'Voluptatem ut saepe perferendis molestiae corrupti in.', '2019-02-26 04:49:16', NULL, 'alipay', '70427325-2fac-3d75-97f6-f3054fd61f33', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u6d59\\u5927\\u4e07\\u670b\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"2fe141ec-b8f5-349a-be1b-2178c15c914d\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:59'),
(73, '20190227075450401718', 29, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c41\\u8857\\u9053\\u7b2c558\\u53f7\",\"zip\":528100,\"contact_name\":\"\\u548c\\u667a\\u654f\",\"contact_phone\":\"17058398359\"}', '67437.00', 'Quia nobis explicabo beatae aut voluptatem et.', '2019-02-26 18:32:32', NULL, 'alipay', 'bded0eac-c2bb-32e5-9c85-4c46603db197', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u65f6\\u7a7a\\u76d2\\u6570\\u5b57\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"3a22cc53-2127-3066-b2c8-fabb369321da\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:59'),
(74, '20190227075450089696', 85, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c36\\u8857\\u9053\\u7b2c954\\u53f7\",\"zip\":165000,\"contact_name\":\"\\u6c5f\\u6885\",\"contact_phone\":\"13444049928\"}', '5652.00', 'Voluptatibus qui harum dolor qui eaque nesciunt vitae.', '2019-02-10 06:00:05', NULL, 'wechat', '02c02e3c-3619-3565-993c-dd2e3d7efb38', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6d66\\u534e\\u4f17\\u57ce\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5092fba2-be8e-3e68-971e-1ffa8dd7cc88\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:59'),
(75, '20190227075450102746', 70, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c68\\u8857\\u9053\\u7b2c623\\u53f7\",\"zip\":535600,\"contact_name\":\"\\u5f6d\\u667a\\u660e\",\"contact_phone\":\"17010560166\"}', '113210.00', 'Sint et et nobis officiis nemo fugit at.', '2019-02-23 05:01:19', NULL, 'wechat', 'e129d1a1-893d-32a0-b84d-a765fd82e2bf', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:54:59'),
(76, '20190227075450486576', 70, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c68\\u8857\\u9053\\u7b2c623\\u53f7\",\"zip\":535600,\"contact_name\":\"\\u5f6d\\u667a\\u660e\",\"contact_phone\":\"17010560166\"}', '32238.64', 'Temporibus similique eum perspiciatis nihil magni.', '2019-02-01 10:03:11', 15, 'alipay', 'd6978c44-3121-35fd-a9ed-678d7ef1e437', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:00'),
(77, '20190227075450761613', 93, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c48\\u8857\\u9053\\u7b2c29\\u53f7\",\"zip\":52200,\"contact_name\":\"\\u6b27\\u71d5\",\"contact_phone\":\"15032827199\"}', '12299.04', 'Ea molestiae aliquam necessitatibus amet expedita sit quod minima.', '2019-02-01 15:27:41', 11, 'wechat', '75e3ed3e-ee60-351e-9efc-f2dd53fa2209', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u96e8\\u6797\\u6728\\u98ce\\u8ba1\\u7b97\\u673a\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"6b0b41f8-bcac-36ea-bf0f-5346ec9b28e3\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:00'),
(78, '20190227075450517100', 99, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c41\\u8857\\u9053\\u7b2c803\\u53f7\",\"zip\":411300,\"contact_name\":\"\\u6c6a\\u6625\\u6885\",\"contact_phone\":\"17673691874\"}', '76346.00', 'Nostrum distinctio ut dolorem officia.', '2019-02-25 18:54:43', NULL, 'wechat', '0ba69646-b3eb-3231-85b0-3de66e980155', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:00'),
(79, '20190227075450960602', 51, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c40\\u8857\\u9053\\u7b2c335\\u53f7\",\"zip\":755500,\"contact_name\":\"\\u5b8b\\u814a\\u6885\",\"contact_phone\":\"14708669913\"}', '529.00', 'Dolorem ipsam quas incidunt neque enim.', '2019-02-22 16:17:32', NULL, 'wechat', '53745e32-f6ca-33ef-976b-e9c3790ec68f', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u827e\\u63d0\\u79d1\\u4fe1\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5e47f0dd-53b5-3497-8054-a1296e0cef97\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:00'),
(80, '20190227075450348760', 18, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c3\\u8857\\u9053\\u7b2c881\\u53f7\",\"zip\":573500,\"contact_name\":\"\\u66f2\\u6842\\u8363\",\"contact_phone\":\"13009958657\"}', '61128.00', 'Sit et in tempora atque mollitia sint exercitationem.', '2019-02-11 21:02:33', NULL, 'alipay', '662cb321-e136-36e2-88d9-193f66f0ef3a', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u6052\\u806a\\u767e\\u6c47\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"503428d8-50a0-3edb-9fca-696902314318\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:00'),
(81, '20190227075450377769', 75, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c94\\u8857\\u9053\\u7b2c166\\u53f7\",\"zip\":533900,\"contact_name\":\"\\u53f2\\u5a77\\u5a77\",\"contact_phone\":\"17052190799\"}', '18022.80', 'Rerum ipsam exercitationem ut nesciunt.', '2019-02-02 17:37:42', 15, 'wechat', 'a0bb1a7e-9603-32a9-bd70-d3ff10322298', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5929\\u76ca\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4e80fe3b-bf17-3452-98d7-526ae4ccbca8\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:00'),
(82, '20190227075450185841', 60, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c31\\u8857\\u9053\\u7b2c750\\u53f7\",\"zip\":472400,\"contact_name\":\"\\u8212\\u8f89\",\"contact_phone\":\"17180313856\"}', '36458.00', 'Qui placeat accusamus rem.', '2019-02-13 02:35:08', NULL, 'wechat', '23655d6f-d2ce-3cff-8c32-f842ca1df539', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:01'),
(83, '20190227075450940882', 72, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c52\\u8857\\u9053\\u7b2c48\\u53f7\",\"zip\":733700,\"contact_name\":\"\\u91d1\\u949f\",\"contact_phone\":\"15080883255\"}', '27409.56', 'Laudantium iste nihil expedita officiis.', '2019-02-12 19:57:39', 15, 'alipay', '82c1020c-49f8-33c4-b1cc-ec38d274c4ab', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u4e2d\\u5efa\\u521b\\u4e1a\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"fe0ceebe-d7f4-3e43-bbf0-898434473818\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:01'),
(84, '20190227075450413848', 94, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c64\\u8857\\u9053\\u7b2c860\\u53f7\",\"zip\":726300,\"contact_name\":\"\\u4e07\\u78ca\",\"contact_phone\":\"18422928392\"}', '2877.00', 'Qui repudiandae aliquam vero similique sed occaecati veniam.', '2019-02-01 18:41:43', NULL, 'alipay', '34df8920-ca26-32b3-92f5-895214e3ea5a', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:01');
INSERT INTO `orders` (`id`, `no`, `user_id`, `address`, `total_amount`, `remark`, `paid_at`, `coupon_code_id`, `payment_method`, `payment_no`, `refund_status`, `refund_no`, `closed`, `reviewed`, `ship_status`, `ship_data`, `extra`, `created_at`, `updated_at`) VALUES
(85, '20190227075450107472', 93, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c82\\u8857\\u9053\\u7b2c629\\u53f7\",\"zip\":798000,\"contact_name\":\"\\u66fe\\u519b\",\"contact_phone\":\"17011817699\"}', '5514.00', 'Modi minus aut repudiandae incidunt ut placeat molestiae et.', '2019-02-17 13:54:59', NULL, 'wechat', 'a2240118-dd63-3682-aa8a-55aff4e17aec', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u65f6\\u7a7a\\u76d2\\u6570\\u5b57\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"2000cb5d-9c4d-3e7d-9dba-37ec294e9277\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:01'),
(86, '20190227075450168469', 26, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c43\\u8857\\u9053\\u7b2c799\\u53f7\",\"zip\":846700,\"contact_name\":\"\\u539f\\u4e39\",\"contact_phone\":\"13599130458\"}', '43452.00', 'Maxime eveniet error vitae dolores et.', '2019-02-19 14:58:04', NULL, 'alipay', '545c8d5b-85a8-3930-b385-4f8943b8bafd', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:01'),
(87, '20190227075450258085', 1, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c25\\u8857\\u9053\\u7b2c764\\u53f7\",\"zip\":35700,\"contact_name\":\"\\u65b9\\u9e4f\",\"contact_phone\":\"13258920205\"}', '27242.00', 'Corporis illo libero illum quia.', '2019-01-29 18:47:56', NULL, 'alipay', '88522016-4cc5-3469-99de-71d00177c9bd', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u8fea\\u6469\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"92e11135-06f2-30dc-a2b6-d34e7297c3fa\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(88, '20190227075450669364', 67, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c37\\u8857\\u9053\\u7b2c704\\u53f7\",\"zip\":86300,\"contact_name\":\"\\u6731\\u7ea2\",\"contact_phone\":\"17667607012\"}', '46313.00', 'Accusamus vitae aut sint illo nam deserunt.', '2019-02-07 14:14:16', NULL, 'alipay', 'c727717d-cf32-3040-baba-6ce639bceb82', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u6d66\\u534e\\u4f17\\u57ce\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"c6ac22fe-7082-3493-9403-27421abadfb4\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(89, '20190227075450321594', 11, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c88\\u8857\\u9053\\u7b2c892\\u53f7\",\"zip\":752900,\"contact_name\":\"\\u82df\\u5efa\\u660e\",\"contact_phone\":\"17051362245\"}', '23985.00', 'Reprehenderit et vitae iure nihil saepe vero aut et.', '2019-01-31 03:07:01', NULL, 'wechat', 'c1c7acb6-152e-3d13-ba63-ade25e47530e', 'success', 'a27bcfe06a534616a8f60f264f0b87f9', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Porro sit in sit aperiam.\"}', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(90, '20190227075450894876', 48, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c735\\u53f7\",\"zip\":738100,\"contact_name\":\"\\u6556\\u5a77\\u5a77\",\"contact_phone\":\"18256696923\"}', '11304.00', 'In blanditiis repellendus quia perspiciatis est odit voluptatem.', '2019-02-11 18:02:25', NULL, 'wechat', '19460f86-2f6a-3122-887a-ba7e90e5d7c1', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u660e\\u817e\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"be9a4d4f-058b-3bce-8be9-1f87416d7c48\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(91, '20190227075450455416', 30, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c64\\u8857\\u9053\\u7b2c304\\u53f7\",\"zip\":661600,\"contact_name\":\"\\u4f4d\\u5764\",\"contact_phone\":\"13343615346\"}', '6824.00', 'Laudantium delectus qui minus nihil consectetur.', '2019-02-02 04:25:40', NULL, 'wechat', 'b358072b-73a8-33ae-b19c-7ef9d4a47ced', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5357\\u5eb7\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"f9812416-7764-34c6-bda1-8da829d0f3c4\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(92, '20190227075450861309', 86, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c90\\u8857\\u9053\\u7b2c690\\u53f7\",\"zip\":257300,\"contact_name\":\"\\u96f7\\u9759\",\"contact_phone\":\"13010112170\"}', '15148.96', 'Itaque pariatur iure reprehenderit assumenda deserunt corporis.', '2019-02-04 12:48:52', 11, 'alipay', '69ddd62a-6e92-3e65-8ac9-678697e7b3d1', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u9e3f\\u777f\\u601d\\u535a\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e5f61b42-a4b3-3a2c-9998-73bf8e29a713\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(93, '20190227075450008384', 96, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c26\\u8857\\u9053\\u7b2c677\\u53f7\",\"zip\":151600,\"contact_name\":\"\\u66f9\\u7389\\u73cd\",\"contact_phone\":\"17009660587\"}', '19599.00', 'Dolor et rerum vel neque voluptate consequatur.', '2019-02-26 16:23:00', NULL, 'alipay', '6922e655-6316-3e3e-b467-d1defca18967', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u7acb\\u4fe1\\u7535\\u5b50\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4b395e92-80a2-3e25-b708-3df384e9459d\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(94, '20190227075450728826', 37, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c72\\u8857\\u9053\\u7b2c14\\u53f7\",\"zip\":612800,\"contact_name\":\"\\u9f9a\\u6587\\u5f6c\",\"contact_phone\":\"17189008935\"}', '16008.00', 'Alias et aut ut cupiditate.', '2019-02-20 18:22:47', NULL, 'wechat', 'bd48ae3f-20f5-361f-af09-30faf8f883d6', 'success', 'f543e679b53a4e2186c3ab75cbd55c84', 0, 1, 'delivered', '{\"express_company\":\"\\u7cbe\\u82af\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"cf44ede8-af38-32e5-8ab2-a9bbb26f43f7\"}', '{\"refund_reason\":\"Necessitatibus modi rerum aut nobis a enim consequatur cupiditate.\"}', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(95, '20190227075450188314', 70, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c68\\u8857\\u9053\\u7b2c623\\u53f7\",\"zip\":535600,\"contact_name\":\"\\u5f6d\\u667a\\u660e\",\"contact_phone\":\"17010560166\"}', '7302.19', 'Distinctio aut tempora rerum omnis.', '2019-02-15 17:58:22', 11, 'wechat', '033bb73a-04a5-38d3-96fc-9103644f9463', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u8fea\\u6469\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8344df2f-56d2-36b0-b357-feea6fb36eed\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(96, '20190227075450436943', 87, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c8\\u8857\\u9053\\u7b2c759\\u53f7\",\"zip\":156400,\"contact_name\":\"\\u6881\\u9e4f\",\"contact_phone\":\"17889859923\"}', '55807.00', 'Totam id odio aut eum.', '2019-02-19 13:40:19', NULL, 'wechat', '0dcf187a-f7d3-39ff-a7c1-0ef2dec6a473', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(97, '20190227075450249612', 89, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c1\\u8857\\u9053\\u7b2c272\\u53f7\",\"zip\":746300,\"contact_name\":\"\\u7ae5\\u8d85\",\"contact_phone\":\"13690993086\"}', '14653.00', 'Quis ut eum voluptas odit.', '2019-02-07 16:35:45', NULL, 'wechat', '111419fa-b915-3cd1-920c-b1d7d53d8395', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:02'),
(98, '20190227075450060297', 52, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c60\\u8857\\u9053\\u7b2c641\\u53f7\",\"zip\":796200,\"contact_name\":\"\\u5bab\\u7ea2\\u6885\",\"contact_phone\":\"13464898204\"}', '575.00', 'Excepturi tempore ea in blanditiis sit.', '2019-02-04 05:14:29', NULL, 'wechat', '2e59af7d-5b07-34c4-8cdc-e428345eb5b8', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u65f6\\u523b\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"b6f334cb-0bb7-325a-a99b-488247d6e86b\"}', '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:03'),
(99, '20190227075450854153', 5, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c52\\u8857\\u9053\\u7b2c947\\u53f7\",\"zip\":374400,\"contact_name\":\"\\u59dc\\u91d1\\u51e4\",\"contact_phone\":\"17803712387\"}', '8942.00', 'Quae in qui reiciendis est accusamus ut molestias.', '2019-02-16 01:42:13', NULL, 'alipay', '3b7ae545-b9b7-32d7-ac65-9a655bc2fea8', 'success', '16fca8c38c95401198117cf5c326bcac', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Quo et et sit.\"}', '2019-02-26 23:54:50', '2019-02-26 23:55:03'),
(100, '20190227075450615574', 96, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c26\\u8857\\u9053\\u7b2c677\\u53f7\",\"zip\":151600,\"contact_name\":\"\\u66f9\\u7389\\u73cd\",\"contact_phone\":\"17009660587\"}', '33640.00', 'A architecto consequatur ad.', '2019-02-01 00:39:09', NULL, 'alipay', '8aba19d2-a7d0-35b6-84cf-8d451944731c', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2019-02-26 23:54:50', '2019-02-26 23:55:03');

-- --------------------------------------------------------

--
-- 資料表結構 `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_sku_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rating` int(10) UNSIGNED DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `reviewed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_sku_id`, `amount`, `price`, `rating`, `review`, `reviewed_at`) VALUES
(1, 1, 24, 70, 1, '1626.00', NULL, NULL, NULL),
(2, 1, 25, 73, 4, '6824.00', NULL, NULL, NULL),
(3, 1, 7, 21, 5, '6533.00', NULL, NULL, NULL),
(4, 2, 2, 4, 1, '7989.00', 4, 'Est ad enim libero soluta omnis.', '2019-02-15 01:13:02'),
(5, 2, 11, 33, 4, '6234.00', 4, 'Est ad enim libero soluta omnis.', '2019-02-15 01:13:02'),
(6, 2, 14, 42, 4, '9991.00', 4, 'Est ad enim libero soluta omnis.', '2019-02-15 01:13:02'),
(7, 3, 15, 43, 3, '954.00', 4, 'Vel quia et temporibus deleniti ex labore suscipit.', '2019-02-15 15:33:52'),
(8, 3, 28, 82, 2, '2877.00', 4, 'Vel quia et temporibus deleniti ex labore suscipit.', '2019-02-15 15:33:52'),
(9, 4, 5, 13, 4, '2780.00', 1, 'Quaerat minima magni aspernatur numquam.', '2019-02-25 16:49:23'),
(10, 4, 13, 39, 5, '9066.00', 1, 'Quaerat minima magni aspernatur numquam.', '2019-02-25 16:49:23'),
(11, 5, 29, 87, 2, '3816.00', 1, 'Quia iure ut ut qui accusamus.', '2019-02-11 16:42:57'),
(12, 5, 9, 26, 1, '6065.00', 1, 'Quia iure ut ut qui accusamus.', '2019-02-11 16:42:57'),
(13, 5, 15, 43, 2, '954.00', 1, 'Quia iure ut ut qui accusamus.', '2019-02-11 16:42:57'),
(14, 6, 19, 55, 5, '3044.00', NULL, NULL, NULL),
(15, 7, 3, 9, 2, '5816.00', NULL, NULL, NULL),
(16, 8, 5, 13, 5, '2780.00', 2, 'Fuga ipsa laborum recusandae animi quia et ex.', '2019-02-05 12:20:35'),
(17, 8, 26, 78, 2, '5043.00', 2, 'Fuga ipsa laborum recusandae animi quia et ex.', '2019-02-05 12:20:35'),
(18, 8, 6, 16, 5, '2659.00', 2, 'Fuga ipsa laborum recusandae animi quia et ex.', '2019-02-05 12:20:35'),
(19, 9, 11, 31, 2, '9067.00', 5, 'Omnis itaque deserunt nesciunt quae quis.', '2019-02-09 14:55:21'),
(20, 9, 13, 39, 2, '9066.00', 5, 'Omnis itaque deserunt nesciunt quae quis.', '2019-02-09 14:55:21'),
(21, 10, 21, 61, 3, '7863.00', NULL, NULL, NULL),
(22, 10, 16, 48, 1, '516.00', NULL, NULL, NULL),
(23, 10, 5, 14, 4, '1095.00', NULL, NULL, NULL),
(24, 11, 8, 22, 1, '7967.00', 5, 'Est odio molestiae quo laudantium nihil.', '2019-02-08 22:03:51'),
(25, 11, 16, 46, 5, '580.00', 5, 'Est odio molestiae quo laudantium nihil.', '2019-02-08 22:03:51'),
(26, 11, 12, 34, 2, '1899.00', 5, 'Est odio molestiae quo laudantium nihil.', '2019-02-08 22:03:51'),
(27, 12, 3, 7, 2, '5660.00', NULL, NULL, NULL),
(28, 12, 2, 4, 1, '7989.00', NULL, NULL, NULL),
(29, 13, 16, 47, 3, '9248.00', 3, 'Consequatur commodi sint nisi quia quos quisquam aut.', '2019-02-12 12:29:13'),
(30, 14, 19, 57, 2, '7995.00', 1, 'Fuga enim et tempora voluptatibus soluta perferendis.', '2019-02-21 21:17:30'),
(31, 14, 7, 21, 5, '6533.00', 1, 'Fuga enim et tempora voluptatibus soluta perferendis.', '2019-02-21 21:17:30'),
(32, 15, 18, 53, 1, '2757.00', 2, 'Porro doloribus maxime alias eos eum voluptate sapiente maiores.', '2019-02-08 08:02:08'),
(33, 15, 15, 44, 2, '3401.00', 2, 'Porro doloribus maxime alias eos eum voluptate sapiente maiores.', '2019-02-08 08:02:08'),
(34, 15, 21, 61, 3, '7863.00', 2, 'Porro doloribus maxime alias eos eum voluptate sapiente maiores.', '2019-02-08 08:02:08'),
(35, 16, 18, 54, 2, '8496.00', 3, 'At odio libero est ut officiis cumque.', '2019-02-26 02:17:37'),
(36, 17, 1, 3, 5, '3952.00', 1, 'Dolor natus cupiditate quae quos occaecati molestiae ut.', '2019-02-24 01:09:08'),
(37, 18, 9, 27, 2, '2633.00', NULL, NULL, NULL),
(38, 19, 7, 20, 2, '3648.00', NULL, NULL, NULL),
(39, 19, 14, 42, 3, '9991.00', NULL, NULL, NULL),
(40, 20, 15, 43, 5, '954.00', 1, 'Voluptates corporis est quae odit.', '2019-02-19 03:30:19'),
(41, 20, 15, 43, 5, '954.00', 1, 'Voluptates corporis est quae odit.', '2019-02-19 03:30:19'),
(42, 20, 22, 66, 3, '6756.00', 1, 'Voluptates corporis est quae odit.', '2019-02-19 03:30:19'),
(43, 21, 17, 50, 1, '6182.00', NULL, NULL, NULL),
(44, 22, 19, 55, 5, '3044.00', 4, 'Est debitis natus assumenda et voluptatibus.', '2019-02-17 12:39:22'),
(45, 23, 1, 3, 1, '3952.00', NULL, NULL, NULL),
(46, 24, 6, 18, 2, '4549.00', 4, 'Consequatur qui temporibus dignissimos vero.', '2019-02-10 15:51:13'),
(47, 24, 16, 46, 3, '580.00', 4, 'Consequatur qui temporibus dignissimos vero.', '2019-02-10 15:51:13'),
(48, 24, 28, 83, 5, '2305.00', 4, 'Consequatur qui temporibus dignissimos vero.', '2019-02-10 15:51:13'),
(49, 25, 22, 66, 4, '6756.00', NULL, NULL, NULL),
(50, 25, 29, 87, 5, '3816.00', NULL, NULL, NULL),
(51, 25, 30, 90, 2, '8942.00', NULL, NULL, NULL),
(52, 26, 3, 8, 2, '3693.00', NULL, NULL, NULL),
(53, 26, 20, 59, 5, '9731.00', NULL, NULL, NULL),
(54, 26, 17, 51, 2, '9423.00', NULL, NULL, NULL),
(55, 27, 26, 77, 3, '9307.00', 2, 'Adipisci error laboriosam optio veniam.', '2019-02-24 13:20:49'),
(56, 27, 13, 38, 4, '7222.00', 2, 'Adipisci error laboriosam optio veniam.', '2019-02-24 13:20:49'),
(57, 28, 3, 8, 1, '3693.00', 3, 'Vel labore eius adipisci quo natus aut aperiam.', '2019-02-10 21:52:38'),
(58, 28, 29, 85, 1, '529.00', 3, 'Vel labore eius adipisci quo natus aut aperiam.', '2019-02-10 21:52:38'),
(59, 29, 8, 24, 4, '8843.00', NULL, NULL, NULL),
(60, 29, 1, 3, 1, '3952.00', NULL, NULL, NULL),
(61, 29, 20, 60, 4, '5780.00', NULL, NULL, NULL),
(62, 30, 23, 69, 5, '1859.00', NULL, NULL, NULL),
(63, 30, 24, 70, 5, '1626.00', NULL, NULL, NULL),
(64, 31, 18, 53, 5, '2757.00', 2, 'Sed aut error minima nemo autem atque suscipit.', '2019-02-24 21:10:42'),
(65, 31, 30, 88, 1, '5810.00', 2, 'Sed aut error minima nemo autem atque suscipit.', '2019-02-24 21:10:42'),
(66, 32, 29, 86, 3, '4146.00', NULL, NULL, NULL),
(67, 33, 25, 75, 3, '3534.00', NULL, NULL, NULL),
(68, 34, 17, 50, 1, '6182.00', NULL, NULL, NULL),
(69, 34, 18, 52, 2, '115.00', NULL, NULL, NULL),
(70, 34, 17, 49, 2, '9584.00', NULL, NULL, NULL),
(71, 35, 29, 86, 5, '4146.00', 2, 'Qui aliquam corporis possimus ut.', '2019-02-26 15:38:26'),
(72, 35, 13, 38, 5, '7222.00', 2, 'Qui aliquam corporis possimus ut.', '2019-02-26 15:38:26'),
(73, 36, 9, 27, 4, '2633.00', 3, 'Eveniet unde possimus distinctio aut iusto exercitationem rerum.', '2019-02-22 12:25:47'),
(74, 37, 11, 32, 3, '5320.00', 3, 'Nisi sed mollitia veniam cum ducimus.', '2019-02-26 16:20:09'),
(75, 37, 7, 21, 2, '6533.00', 3, 'Nisi sed mollitia veniam cum ducimus.', '2019-02-26 16:20:09'),
(76, 37, 24, 70, 5, '1626.00', 3, 'Nisi sed mollitia veniam cum ducimus.', '2019-02-26 16:20:09'),
(77, 38, 18, 52, 2, '115.00', 1, 'Sit pariatur vitae ipsam necessitatibus reprehenderit.', '2019-02-20 00:45:19'),
(78, 38, 7, 21, 1, '6533.00', 1, 'Sit pariatur vitae ipsam necessitatibus reprehenderit.', '2019-02-20 00:45:19'),
(79, 38, 12, 34, 4, '1899.00', 1, 'Sit pariatur vitae ipsam necessitatibus reprehenderit.', '2019-02-20 00:45:19'),
(80, 39, 13, 39, 4, '9066.00', 2, 'Aut et qui error possimus quia.', '2019-02-23 03:53:00'),
(81, 39, 11, 33, 4, '6234.00', 2, 'Aut et qui error possimus quia.', '2019-02-23 03:53:00'),
(82, 39, 10, 29, 4, '8124.00', 2, 'Aut et qui error possimus quia.', '2019-02-23 03:53:00'),
(83, 40, 10, 29, 3, '8124.00', 3, 'Rerum qui itaque facere labore vero.', '2019-02-17 05:02:37'),
(84, 41, 17, 49, 2, '9584.00', 3, 'Voluptatem quidem est non molestiae eos consequatur.', '2019-02-20 22:47:53'),
(85, 42, 18, 53, 5, '2757.00', 1, 'Iste et corporis ut vel non.', '2019-02-26 20:31:37'),
(86, 43, 27, 80, 2, '6923.00', 5, 'Dolorem ut perferendis sit quibusdam quae sequi.', '2019-02-23 23:26:30'),
(87, 43, 21, 62, 5, '3362.00', 5, 'Dolorem ut perferendis sit quibusdam quae sequi.', '2019-02-23 23:26:30'),
(88, 43, 21, 63, 4, '8926.00', 5, 'Dolorem ut perferendis sit quibusdam quae sequi.', '2019-02-23 23:26:30'),
(89, 44, 1, 2, 5, '2690.00', 3, 'Numquam fugiat iusto vero dolores.', '2019-02-05 13:55:16'),
(90, 44, 17, 51, 4, '9423.00', 3, 'Numquam fugiat iusto vero dolores.', '2019-02-05 13:55:16'),
(91, 45, 28, 82, 1, '2877.00', NULL, NULL, NULL),
(92, 45, 6, 18, 1, '4549.00', NULL, NULL, NULL),
(93, 45, 30, 89, 3, '2769.00', NULL, NULL, NULL),
(94, 46, 17, 50, 1, '6182.00', 4, 'Aspernatur minus sint ipsa quos occaecati.', '2019-02-02 15:59:04'),
(95, 46, 6, 17, 1, '1395.00', 4, 'Aspernatur minus sint ipsa quos occaecati.', '2019-02-02 15:59:04'),
(96, 47, 14, 41, 1, '9029.00', 3, 'Quos soluta earum blanditiis sit fugiat sunt.', '2019-02-25 06:12:57'),
(97, 48, 18, 54, 2, '8496.00', 4, 'Praesentium asperiores id possimus asperiores id nulla commodi.', '2019-02-26 03:19:32'),
(98, 48, 12, 36, 2, '5652.00', 4, 'Praesentium asperiores id possimus asperiores id nulla commodi.', '2019-02-26 03:19:32'),
(99, 48, 25, 75, 2, '3534.00', 4, 'Praesentium asperiores id possimus asperiores id nulla commodi.', '2019-02-26 03:19:32'),
(100, 49, 12, 36, 1, '5652.00', NULL, NULL, NULL),
(101, 49, 19, 56, 2, '1683.00', NULL, NULL, NULL),
(102, 49, 11, 33, 1, '6234.00', NULL, NULL, NULL),
(103, 50, 20, 59, 5, '9731.00', 4, 'Repellat laboriosam sunt aperiam quis aut provident.', '2019-02-21 01:30:15'),
(104, 50, 30, 90, 4, '8942.00', 4, 'Repellat laboriosam sunt aperiam quis aut provident.', '2019-02-21 01:30:15'),
(105, 51, 21, 62, 3, '3362.00', NULL, NULL, NULL),
(106, 52, 28, 82, 4, '2877.00', 4, 'Pariatur qui qui ut reiciendis odio sed error.', '2019-02-20 07:28:02'),
(107, 52, 16, 46, 1, '580.00', 4, 'Pariatur qui qui ut reiciendis odio sed error.', '2019-02-20 07:28:02'),
(108, 52, 17, 50, 3, '6182.00', 4, 'Pariatur qui qui ut reiciendis odio sed error.', '2019-02-20 07:28:02'),
(109, 53, 29, 87, 5, '3816.00', 5, 'Occaecati distinctio laboriosam aut sunt possimus aut.', '2019-02-01 02:08:24'),
(110, 53, 18, 54, 1, '8496.00', 5, 'Occaecati distinctio laboriosam aut sunt possimus aut.', '2019-02-01 02:08:24'),
(111, 53, 8, 22, 4, '7967.00', 5, 'Occaecati distinctio laboriosam aut sunt possimus aut.', '2019-02-01 02:08:24'),
(112, 54, 22, 66, 3, '6756.00', 5, 'Voluptatem sit ipsum a hic doloremque.', '2019-02-22 01:46:22'),
(113, 54, 2, 6, 4, '1398.00', 5, 'Voluptatem sit ipsum a hic doloremque.', '2019-02-22 01:46:22'),
(114, 55, 1, 2, 3, '2690.00', 3, 'Velit aliquid dicta non minus numquam nisi enim ut.', '2019-02-07 11:36:02'),
(115, 56, 25, 73, 5, '6824.00', 4, 'Velit est maxime at perspiciatis nesciunt.', '2019-02-26 12:51:05'),
(116, 57, 24, 72, 3, '9237.00', 3, 'Ut et vel quas corrupti non velit iusto.', '2019-02-22 02:35:25'),
(117, 58, 22, 64, 3, '5336.00', 4, 'Optio dolores aspernatur qui consectetur repudiandae.', '2019-02-25 08:09:36'),
(118, 59, 28, 82, 5, '2877.00', 4, 'Sequi velit vel doloribus eius id officiis.', '2019-02-20 04:56:10'),
(119, 59, 9, 27, 1, '2633.00', 4, 'Sequi velit vel doloribus eius id officiis.', '2019-02-20 04:56:10'),
(120, 60, 24, 70, 2, '1626.00', 3, 'Facilis provident commodi dolores voluptas.', '2019-02-16 22:37:41'),
(121, 60, 14, 42, 3, '9991.00', 3, 'Facilis provident commodi dolores voluptas.', '2019-02-16 22:37:41'),
(122, 60, 30, 90, 5, '8942.00', 3, 'Facilis provident commodi dolores voluptas.', '2019-02-16 22:37:41'),
(123, 61, 27, 80, 1, '6923.00', 4, 'Et quia qui ratione culpa qui.', '2019-02-22 03:43:50'),
(124, 61, 21, 62, 3, '3362.00', 4, 'Et quia qui ratione culpa qui.', '2019-02-22 03:43:50'),
(125, 61, 7, 20, 3, '3648.00', 4, 'Et quia qui ratione culpa qui.', '2019-02-22 03:43:50'),
(126, 62, 18, 52, 2, '115.00', 1, 'Autem et neque porro quo pariatur illo.', '2019-02-26 12:01:15'),
(127, 62, 28, 82, 4, '2877.00', 1, 'Autem et neque porro quo pariatur illo.', '2019-02-26 12:01:15'),
(128, 63, 1, 1, 3, '51.00', NULL, NULL, NULL),
(129, 64, 22, 65, 5, '6906.00', 2, 'Minus dolor nostrum et repudiandae impedit.', '2019-02-25 16:25:14'),
(130, 64, 26, 78, 5, '5043.00', 2, 'Minus dolor nostrum et repudiandae impedit.', '2019-02-25 16:25:14'),
(131, 65, 19, 56, 1, '1683.00', 3, 'Est ratione et aut blanditiis aut molestiae nulla.', '2019-02-26 08:25:56'),
(132, 66, 20, 58, 5, '2980.00', 3, 'Exercitationem esse a quo aut.', '2019-02-15 23:52:05'),
(133, 66, 25, 73, 4, '6824.00', 3, 'Exercitationem esse a quo aut.', '2019-02-15 23:52:05'),
(134, 67, 28, 84, 4, '3250.00', 1, 'Voluptatem eum quisquam porro minus tempora.', '2019-02-17 04:00:49'),
(135, 68, 13, 39, 4, '9066.00', 5, 'Corporis aliquid at consequatur corporis accusantium suscipit.', '2019-02-26 22:44:26'),
(136, 69, 24, 70, 5, '1626.00', 2, 'At et quia nam molestiae velit eos qui.', '2019-02-11 04:01:06'),
(137, 69, 19, 56, 2, '1683.00', 2, 'At et quia nam molestiae velit eos qui.', '2019-02-11 04:01:06'),
(138, 69, 12, 34, 4, '1899.00', 2, 'At et quia nam molestiae velit eos qui.', '2019-02-11 04:01:06'),
(139, 70, 20, 58, 3, '2980.00', NULL, NULL, NULL),
(140, 71, 25, 74, 5, '9777.00', NULL, NULL, NULL),
(141, 71, 2, 6, 5, '1398.00', NULL, NULL, NULL),
(142, 72, 16, 46, 3, '580.00', NULL, NULL, NULL),
(143, 72, 28, 82, 4, '2877.00', NULL, NULL, NULL),
(144, 73, 8, 24, 5, '8843.00', NULL, NULL, NULL),
(145, 73, 24, 70, 3, '1626.00', NULL, NULL, NULL),
(146, 73, 4, 12, 4, '4586.00', NULL, NULL, NULL),
(147, 74, 12, 36, 1, '5652.00', 1, 'Id assumenda vel dolorum quo.', '2019-02-14 12:55:02'),
(148, 75, 8, 22, 5, '7967.00', 4, 'Doloribus laboriosam et non.', '2019-02-25 17:44:11'),
(149, 75, 23, 68, 5, '5749.00', 4, 'Doloribus laboriosam et non.', '2019-02-25 17:44:11'),
(150, 75, 21, 63, 5, '8926.00', 4, 'Doloribus laboriosam et non.', '2019-02-25 17:44:11'),
(151, 76, 4, 10, 3, '9842.00', 3, 'Similique est vitae eaque facere.', '2019-02-03 07:03:38'),
(152, 76, 14, 40, 2, '2758.00', 3, 'Similique est vitae eaque facere.', '2019-02-03 07:03:38'),
(153, 77, 19, 55, 2, '3044.00', 5, 'Non aperiam itaque consequatur non voluptatibus nihil.', '2019-02-13 18:11:02'),
(154, 77, 1, 2, 4, '2690.00', 5, 'Non aperiam itaque consequatur non voluptatibus nihil.', '2019-02-13 18:11:02'),
(155, 78, 10, 29, 5, '8124.00', 1, 'Laboriosam dolores ea sint quae provident recusandae qui.', '2019-02-26 02:41:34'),
(156, 78, 7, 21, 1, '6533.00', 1, 'Laboriosam dolores ea sint quae provident recusandae qui.', '2019-02-26 02:41:34'),
(157, 78, 20, 59, 3, '9731.00', 1, 'Laboriosam dolores ea sint quae provident recusandae qui.', '2019-02-26 02:41:34'),
(158, 79, 29, 85, 1, '529.00', 2, 'Et est inventore a ab.', '2019-02-22 08:19:05'),
(159, 80, 3, 8, 3, '3693.00', 5, 'Est velit dignissimos facilis sit molestiae qui.', '2019-02-26 05:06:20'),
(160, 80, 13, 39, 4, '9066.00', 5, 'Est velit dignissimos facilis sit molestiae qui.', '2019-02-26 05:06:20'),
(161, 80, 18, 53, 5, '2757.00', 5, 'Est velit dignissimos facilis sit molestiae qui.', '2019-02-26 05:06:20'),
(162, 81, 27, 79, 5, '3918.00', 1, 'Quidem aperiam beatae laboriosam.', '2019-02-24 10:40:10'),
(163, 82, 13, 37, 2, '9287.00', 4, 'Quas eligendi eum molestiae corporis praesentium aliquam.', '2019-02-15 03:15:48'),
(164, 82, 30, 90, 2, '8942.00', 4, 'Quas eligendi eum molestiae corporis praesentium aliquam.', '2019-02-15 03:15:48'),
(165, 83, 22, 64, 3, '5336.00', 1, 'Quasi voluptatum qui in.', '2019-02-14 11:14:47'),
(166, 83, 18, 53, 5, '2757.00', 1, 'Quasi voluptatum qui in.', '2019-02-14 11:14:47'),
(167, 84, 28, 82, 1, '2877.00', 4, 'Delectus et omnis non voluptate.', '2019-02-25 12:53:46'),
(168, 85, 18, 53, 2, '2757.00', 1, 'Vero ut maxime aut nemo cumque reiciendis omnis voluptatibus.', '2019-02-26 11:52:41'),
(169, 86, 28, 84, 2, '3250.00', NULL, NULL, NULL),
(170, 86, 17, 50, 5, '6182.00', NULL, NULL, NULL),
(171, 86, 4, 11, 3, '2014.00', NULL, NULL, NULL),
(172, 87, 8, 23, 5, '194.00', 5, 'Cupiditate ut ut aperiam doloribus error.', '2019-02-23 07:46:28'),
(173, 87, 7, 19, 3, '6728.00', 5, 'Cupiditate ut ut aperiam doloribus error.', '2019-02-23 07:46:28'),
(174, 87, 19, 55, 2, '3044.00', 5, 'Cupiditate ut ut aperiam doloribus error.', '2019-02-23 07:46:28'),
(175, 88, 7, 21, 1, '6533.00', NULL, NULL, NULL),
(176, 88, 25, 73, 2, '6824.00', NULL, NULL, NULL),
(177, 88, 7, 21, 4, '6533.00', NULL, NULL, NULL),
(178, 89, 19, 57, 3, '7995.00', 2, 'Facere ut soluta assumenda veritatis harum dolorem.', '2019-02-10 08:55:31'),
(179, 90, 12, 36, 2, '5652.00', 5, 'Illum ea dolorem quas dolorem id ullam consequatur aliquid.', '2019-02-26 15:54:29'),
(180, 91, 25, 73, 1, '6824.00', 4, 'Consequatur minus necessitatibus et consectetur et.', '2019-02-15 04:18:17'),
(181, 92, 19, 56, 3, '1683.00', NULL, NULL, NULL),
(182, 92, 26, 76, 2, '1269.00', NULL, NULL, NULL),
(183, 92, 9, 27, 5, '2633.00', NULL, NULL, NULL),
(184, 93, 7, 21, 3, '6533.00', 1, 'Nihil dolor aut aut quis mollitia modi.', '2019-02-26 12:14:40'),
(185, 94, 22, 64, 3, '5336.00', 1, 'Perferendis libero et et est quas vitae voluptates voluptas.', '2019-02-25 22:54:26'),
(186, 95, 17, 51, 1, '9423.00', 1, 'Non voluptatem facere aperiam doloribus.', '2019-02-20 21:27:54'),
(187, 95, 16, 46, 1, '580.00', 1, 'Non voluptatem facere aperiam doloribus.', '2019-02-20 21:27:54'),
(188, 96, 21, 61, 3, '7863.00', 1, 'Fugiat officiis qui esse dolores et.', '2019-02-19 09:26:15'),
(189, 96, 26, 77, 2, '9307.00', 1, 'Fugiat officiis qui esse dolores et.', '2019-02-19 09:26:15'),
(190, 96, 15, 44, 4, '3401.00', 1, 'Fugiat officiis qui esse dolores et.', '2019-02-19 09:26:15'),
(191, 97, 8, 24, 1, '8843.00', 1, 'Error qui laborum tempora consequatur.', '2019-02-17 00:10:12'),
(192, 97, 30, 88, 1, '5810.00', 1, 'Error qui laborum tempora consequatur.', '2019-02-17 00:10:12'),
(193, 98, 18, 52, 5, '115.00', 4, 'Laboriosam quia sunt qui facilis nobis ipsa.', '2019-02-19 02:26:29'),
(194, 99, 30, 90, 1, '8942.00', 2, 'Et et et sit tenetur.', '2019-02-23 15:07:03'),
(195, 100, 7, 19, 5, '6728.00', 5, 'Vitae laudantium nulla sed voluptatum expedita soluta molestias.', '2019-02-15 01:14:18');

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT '1',
  `rating` double(8,2) NOT NULL DEFAULT '5.00',
  `sold_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `review_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `on_sale`, `rating`, `sold_count`, `review_count`, `price`, `created_at`, `updated_at`) VALUES
(1, 'est', 'Unde consequuntur sit consectetur iure et sunt.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 3.00, 22, 7, '51.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(2, 'iste', 'Porro non doloremque in rem deserunt.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 4.50, 11, 4, '1398.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(3, 'eum', 'Quis quas ea fugit velit velit est nisi.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 4.00, 10, 5, '3693.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(4, 'odit', 'Omnis numquam voluptas reiciendis rerum.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 3.00, 10, 3, '2014.00', '2019-02-26 23:54:42', '2019-02-26 23:55:04'),
(5, 'eveniet', 'Voluptatem et nobis quae sit.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 1.50, 13, 3, '1095.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(6, 'saepe', 'Autem ullam porro tempora ut accusamus.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 3.33, 9, 4, '1395.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(7, 'mollitia', 'Nisi sit et fuga exercitationem sed.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 2.62, 35, 12, '3648.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(8, 'voluptates', 'Similique omnis atque cumque cumque.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 4.00, 25, 7, '194.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(9, 'repudiandae', 'Sequi rem vero tempora consectetur consequatur ea.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 2.67, 13, 5, '528.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(10, 'dolorum', 'Blanditiis fuga delectus blanditiis quas nostrum sequi quos.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 2.00, 12, 3, '2754.00', '2019-02-26 23:54:42', '2019-02-26 23:55:04'),
(11, 'quidem', 'Et deserunt dolores qui ipsam perspiciatis ut.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 3.50, 14, 5, '5320.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(12, 'ipsum', 'Sit et nihil maxime fuga voluptatem.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 3.00, 16, 7, '1899.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(13, 'harum', 'Accusantium laboriosam maiores ratione quia rerum voluptatem.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 3.25, 30, 8, '7222.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(14, 'delectus', 'Inventore ab qui corrupti minima corporis.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 3.25, 13, 5, '2758.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(15, 'ab', 'Odio quia error minima ut placeat dicta.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 1.67, 21, 6, '954.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(16, 'eius', 'Sit quia quas porro nobis qui eos.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 3.40, 17, 7, '516.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(17, 'molestiae', 'Aut accusantium pariatur sed aliquam porro voluptatem.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 3.00, 22, 10, '6182.00', '2019-02-26 23:54:42', '2019-02-26 23:55:04'),
(18, 'ducimus', 'Consequatur dolores molestiae dolore eum occaecati quod aperiam.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 2.50, 39, 13, '115.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(19, 'id', 'Fugiat repellendus corrupti maiores illum.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 3.14, 27, 10, '1683.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(20, 'sed', 'Voluptas voluptatem non incidunt voluptatem voluptatem sequi.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 2.67, 25, 6, '2980.00', '2019-02-26 23:54:42', '2019-02-26 23:55:04'),
(21, 'aut', 'Aut ut ratione aut adipisci necessitatibus.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 3.50, 29, 8, '3362.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(22, 'aut', 'Eos architecto quos magnam aut non.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 2.33, 24, 7, '5336.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(23, 'voluptas', 'Laudantium quae eaque eum ut corrupti nemo.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 4.00, 10, 2, '1859.00', '2019-02-26 23:54:42', '2019-02-26 23:55:04'),
(24, 'maxime', 'Dolorem enim vero illo quae vitae.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 2.75, 24, 7, '1626.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(25, 'et', 'Qui placeat minima voluptatem iste placeat vero dignissimos.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 3.75, 26, 8, '3534.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(26, 'aut', 'Velit in quia iure ex fugit cumque.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 1.75, 14, 5, '1269.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(27, 'repudiandae', 'Enim perspiciatis qui et id eligendi.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 3.33, 8, 3, '3918.00', '2019-02-26 23:54:42', '2019-02-26 23:55:04'),
(28, 'est', 'Fugiat harum voluptates dolorem qui facilis iusto.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 3.14, 32, 10, '2305.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(29, 'qui', 'Maxime quia consectetur molestiae facilis.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 2.60, 22, 7, '529.00', '2019-02-26 23:54:42', '2019-02-26 23:55:03'),
(30, 'fuga', 'Maxime voluptatem assumenda atque occaecati labore rerum libero.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 2.67, 19, 8, '2769.00', '2019-02-26 23:54:42', '2019-02-26 23:55:04');

-- --------------------------------------------------------

--
-- 資料表結構 `product_skus`
--

CREATE TABLE `product_skus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product_skus`
--

INSERT INTO `product_skus` (`id`, `title`, `description`, `price`, `stock`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'qui', 'Quae quis enim molestiae sint ullam.', '51.00', 5703, 1, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(2, 'sit', 'Accusamus magnam nihil eos dignissimos animi velit.', '2690.00', 43754, 1, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(3, 'iure', 'Id aspernatur odio nesciunt molestiae quisquam sapiente repudiandae cumque.', '3952.00', 9577, 1, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(4, 'voluptatem', 'Quia ea impedit qui dolores et voluptas.', '7989.00', 62194, 2, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(5, 'ut', 'Nulla eos laborum voluptatem rerum corrupti molestiae.', '2503.00', 15449, 2, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(6, 'eos', 'Numquam nihil accusantium dolorum totam sit architecto repellat.', '1398.00', 44621, 2, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(7, 'animi', 'Fugiat sit provident harum.', '5660.00', 79507, 3, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(8, 'saepe', 'Ab est architecto nisi corrupti ea voluptatem voluptate velit.', '3693.00', 2787, 3, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(9, 'non', 'Est aut accusamus placeat in.', '5816.00', 56662, 3, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(10, 'rerum', 'Omnis sed rerum ex laudantium consectetur aut ipsam quas.', '9842.00', 61904, 4, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(11, 'natus', 'Nihil sed soluta rerum consequatur velit consequuntur suscipit.', '2014.00', 12346, 4, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(12, 'debitis', 'Qui ab eaque libero accusamus.', '4586.00', 3252, 4, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(13, 'deserunt', 'Recusandae eveniet hic ut aliquid aut et voluptas.', '2780.00', 83443, 5, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(14, 'neque', 'Similique maiores quia et optio enim.', '1095.00', 27107, 5, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(15, 'commodi', 'Quae expedita repudiandae architecto saepe est.', '6823.00', 36154, 5, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(16, 'et', 'Architecto quia qui sapiente quia rerum.', '2659.00', 95594, 6, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(17, 'nobis', 'Delectus dicta molestiae repellendus cum.', '1395.00', 48114, 6, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(18, 'sapiente', 'Non omnis sunt laboriosam nihil aut quam.', '4549.00', 1353, 6, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(19, 'quidem', 'Fugiat quis quia vitae illum minus asperiores est et.', '6728.00', 51414, 7, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(20, 'placeat', 'Molestias voluptas molestiae et.', '3648.00', 63613, 7, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(21, 'minima', 'Aut quisquam consequuntur placeat repellendus non error aspernatur distinctio.', '6533.00', 19047, 7, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(22, 'quos', 'Ducimus maiores eligendi consequatur sint eius.', '7967.00', 40911, 8, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(23, 'officiis', 'Non consequatur id doloremque sapiente et iste.', '194.00', 30883, 8, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(24, 'voluptatem', 'Incidunt molestiae necessitatibus ipsam sunt dolor illo molestiae voluptatum.', '8843.00', 50469, 8, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(25, 'quibusdam', 'Et ipsa explicabo est qui assumenda dolorum aut qui.', '528.00', 40974, 9, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(26, 'commodi', 'Veniam sequi repudiandae et quod.', '6065.00', 488, 9, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(27, 'quia', 'Voluptates impedit nesciunt numquam sunt.', '2633.00', 7599, 9, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(28, 'qui', 'Possimus voluptatum incidunt blanditiis quos laboriosam quos.', '2754.00', 13619, 10, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(29, 'vitae', 'Minus sit totam quos ad rerum est sed fuga.', '8124.00', 83032, 10, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(30, 'porro', 'Nesciunt nihil ipsum aperiam ea.', '3854.00', 82212, 10, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(31, 'error', 'Doloremque rerum quia beatae qui.', '9067.00', 27951, 11, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(32, 'doloremque', 'Sint aut labore eum ducimus non sed.', '5320.00', 80601, 11, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(33, 'sit', 'Ullam non quis expedita consequatur vitae.', '6234.00', 3287, 11, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(34, 'recusandae', 'Illum est odit voluptas beatae dolores rerum.', '1899.00', 34358, 12, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(35, 'iure', 'Maxime ipsa quis numquam magni qui quo ut.', '4899.00', 43999, 12, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(36, 'aut', 'Molestiae nemo voluptatem non assumenda dolore iure.', '5652.00', 5740, 12, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(37, 'laudantium', 'Mollitia voluptatibus laborum asperiores quia rem assumenda.', '9287.00', 94463, 13, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(38, 'sunt', 'Quia iure ullam recusandae tempora perferendis recusandae.', '7222.00', 15668, 13, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(39, 'qui', 'Consequatur alias quis provident.', '9066.00', 30480, 13, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(40, 'sed', 'Totam aut excepturi sed rem at aut ratione voluptatibus.', '2758.00', 52576, 14, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(41, 'aperiam', 'Ab et rerum omnis iusto eos.', '9029.00', 63678, 14, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(42, 'rem', 'Sed sint recusandae accusamus facere ut rerum est.', '9991.00', 87190, 14, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(43, 'voluptatem', 'Eos provident eius voluptate voluptate fuga accusantium quo.', '954.00', 36200, 15, '2019-02-26 23:54:43', '2019-02-26 23:54:43'),
(44, 'autem', 'Amet dolorem temporibus eveniet quibusdam deserunt voluptas culpa molestiae.', '3401.00', 89092, 15, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(45, 'eum', 'Et et minima rerum omnis quos.', '5927.00', 88651, 15, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(46, 'nesciunt', 'Consequatur est magni ipsam dolores quia non.', '580.00', 92883, 16, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(47, 'quibusdam', 'Perspiciatis reiciendis quis doloribus nostrum ratione ut.', '9248.00', 57759, 16, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(48, 'vitae', 'Vel qui tempore quis nemo soluta incidunt.', '516.00', 87071, 16, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(49, 'a', 'Error et tempore sint blanditiis cupiditate.', '9584.00', 56071, 17, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(50, 'ducimus', 'Ratione libero officiis facilis sunt voluptas.', '6182.00', 44447, 17, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(51, 'facilis', 'Temporibus est nobis consectetur aliquid.', '9423.00', 88841, 17, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(52, 'provident', 'Sequi dolore quasi voluptatibus fugit.', '115.00', 85146, 18, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(53, 'quis', 'Illum neque doloremque est qui voluptas suscipit.', '2757.00', 21306, 18, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(54, 'quo', 'Dolorum omnis esse est quis quis eos.', '8496.00', 34792, 18, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(55, 'totam', 'Accusantium delectus inventore voluptatem et debitis numquam est.', '3044.00', 24894, 19, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(56, 'autem', 'Velit quis facilis consequatur vel inventore perferendis assumenda.', '1683.00', 38405, 19, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(57, 'cumque', 'Cumque iste nam rerum explicabo quo aspernatur in.', '7995.00', 75262, 19, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(58, 'autem', 'Est possimus laboriosam quos at.', '2980.00', 33258, 20, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(59, 'et', 'Eum quos reprehenderit omnis alias.', '9731.00', 7076, 20, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(60, 'voluptatem', 'Harum reiciendis ducimus in adipisci qui aut voluptatibus.', '5780.00', 53112, 20, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(61, 'sunt', 'Aliquid officia et similique blanditiis quia quae.', '7863.00', 75246, 21, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(62, 'optio', 'Aperiam consequatur quaerat beatae dolore fugit.', '3362.00', 44442, 21, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(63, 'qui', 'Asperiores natus voluptatibus et similique.', '8926.00', 14958, 21, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(64, 'occaecati', 'Porro consequatur quam eum.', '5336.00', 10787, 22, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(65, 'pariatur', 'Qui sit minus adipisci vero.', '6906.00', 66067, 22, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(66, 'hic', 'Et molestias tempore qui.', '6756.00', 29600, 22, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(67, 'a', 'Fugit sit est nihil ut et voluptatum facere.', '7572.00', 26422, 23, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(68, 'facilis', 'Quo mollitia doloribus vel velit in et tempore.', '5749.00', 39129, 23, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(69, 'a', 'Omnis autem fugiat a commodi sunt minus nulla.', '1859.00', 93188, 23, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(70, 'libero', 'Enim libero ex porro numquam explicabo deserunt explicabo.', '1626.00', 85314, 24, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(71, 'pariatur', 'Distinctio voluptatem accusamus error soluta et.', '4381.00', 70869, 24, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(72, 'ad', 'Distinctio ut numquam veniam et quis ut eum.', '9237.00', 36070, 24, '2019-02-26 23:54:44', '2019-02-26 23:54:44'),
(73, 'ut', 'Officiis deleniti vel dolore ex quam.', '6824.00', 98868, 25, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(74, 'harum', 'Aut quaerat vel iusto numquam.', '9777.00', 87157, 25, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(75, 'recusandae', 'Molestias laboriosam fugit eum repellendus voluptatibus.', '3534.00', 35999, 25, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(76, 'expedita', 'Aut velit laborum blanditiis sed.', '1269.00', 18823, 26, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(77, 'mollitia', 'Maiores molestias doloremque fugit expedita dolorum minima non.', '9307.00', 6444, 26, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(78, 'exercitationem', 'A accusamus tempore est.', '5043.00', 1157, 26, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(79, 'natus', 'Veniam dolorem tempora quia doloribus aut.', '3918.00', 84220, 27, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(80, 'placeat', 'Nihil tempora non enim dicta ut.', '6923.00', 39727, 27, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(81, 'rem', 'Labore veritatis nostrum deserunt est sint vel.', '9452.00', 37691, 27, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(82, 'voluptatem', 'Delectus corrupti placeat magni omnis.', '2877.00', 37225, 28, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(83, 'fuga', 'Molestias soluta explicabo tempora sit est rerum.', '2305.00', 96902, 28, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(84, 'illo', 'Quia ipsam consequatur et quia.', '3250.00', 66927, 28, '2019-02-26 23:54:45', '2019-02-26 23:54:45'),
(85, 'eius', 'Soluta laborum nostrum iure deserunt.', '529.00', 78915, 29, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(86, 'pariatur', 'Voluptate et et nihil magni omnis.', '4146.00', 73315, 29, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(87, 'enim', 'Ratione ullam quo ut nobis velit.', '3816.00', 46465, 29, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(88, 'nobis', 'Sed velit est et exercitationem debitis delectus.', '5810.00', 93593, 30, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(89, 'dignissimos', 'Aut rerum eius ratione voluptatibus quod vitae.', '2769.00', 51782, 30, '2019-02-26 23:54:46', '2019-02-26 23:54:46'),
(90, 'officiis', 'Sapiente consequuntur reiciendis minus.', '8942.00', 95903, 30, '2019-02-26 23:54:46', '2019-02-26 23:54:46');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'liao', 'abcd1234@gmail.com', NULL, '$2y$10$YKCshdJKX7Bt3Abg.lLVCOaYvQ00k5oCsZC.thYBeryRzW4BSMk.m', NULL, '2019-02-26 22:41:34', '2019-02-26 22:41:34'),
(2, 'k', 'k1234@gmail.com', NULL, '$2y$10$tcl4AScqk5ivTMtMmsYm1ORXrssRthbVJVqkRdZUqQEBwH.OAskiq', NULL, '2019-02-26 22:42:20', '2019-02-26 22:42:20'),
(3, 'test', 'p638683@nwytg.net', NULL, '$2y$10$./vsS5lQPA6fBxmV/8a.M.U0Zd0plTinjQodRQzp86Cxn9bsJquvG', NULL, '2019-02-26 22:45:40', '2019-02-26 22:45:40'),
(4, 'luke', 'p642235@nwytg.net', NULL, '$2y$10$3AKCLy9k6Rve8ie5rfkGTefqy2o/ja8.B49ZnuEhCdmSC3JamTugq', 'GldNDIl9CgzTuOLslyOWxO05mxhWHWRr3rsIK3defaiXjEkjvua66vjfRTF2', '2019-02-26 23:39:53', '2019-02-26 23:39:53'),
(5, '甘正业', 'sit_culpa@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OWELKnbSqk', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(6, '栾璐', 'sunt.voluptatem@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'X8UKNCLD1E', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(7, '田磊', 'praesentium68@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UfxOJHr3Ow', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(8, '苟利', 'molestiae.saepe@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Lc0LBlH9kX', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(9, '阎阳', 'quod.omnis@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ELo6453s2p', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(10, '盛宁', 'inventore90@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wzRGhaKbPF', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(11, '窦伟', 'suscipit60@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6BBguZYAe3', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(12, '胡璐', 'recusandae64@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KiRGq0MTMv', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(13, '谈红', 'illum.voluptatibus@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZhUf4p44Tz', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(14, '华洋', 'qui_officiis@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CQWwlqa45r', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(15, '党楠', 'perspiciatis50@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RzzjnMlPEV', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(16, '颜翔', 'officia_veniam@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tBqyOYRY6p', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(17, '牛志文', 'sint73@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QprnaujTkn', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(18, '庄玉', 'inventore82@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'l7BPlZuFAh', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(19, '鞠怡', 'mest@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xWUmKW02tX', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(20, '关凯', 'corrupti_sint@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JENauaF9DL', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(21, '练玉', 'repellat_doloribus@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EEhASMSUes', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(22, '奚晨', 'reiciendis.ratione@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6t0Q1NFAkL', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(23, '吕松', 'lnostrum@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '90nDpisu6t', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(24, '崔志强', 'oblanditiis@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'N2AT2JIAW0', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(25, '汪璐', 'amet.dolorum@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Z2zokRHeWS', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(26, '卜学明', 'perspiciatis31@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'D2mV7gkbXB', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(27, '查华', 'dolorem10@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'N0VvXCCJCk', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(28, '臧凤兰', 'cumque.vel@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'I9QvGCmzX4', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(29, '冷佳', 'enim_repellendus@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uqWQJLMqCF', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(30, '董小红', 'sit_corrupti@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AVYeEus8g3', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(31, '乔志明', 'voluptatem_minima@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'A4g50vV0hl', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(32, '曾岩', 'aut44@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'l7AGdPc4pC', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(33, '余毅', 'rearum@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MQR5bdoS1L', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(34, '保凤兰', 'ndolores@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QLiyVswm79', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(35, '崔婕', 'beatae_earum@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'eTX5ySpv8W', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(36, '景依琳', 'dnihil@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oDq8dP6Vsj', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(37, '郝嘉俊', 'aut.nam@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2iWiWM2Nbb', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(38, '褚正平', 'quaerat.minima@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xA8w2n3DUD', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(39, '顾爱华', 'voluptates34@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gsLJsEJXBP', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(40, '史正业', 'praesentium_suscipit@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'slN2yhyEzx', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(41, '曲婷婷', 'ea.maxime@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pe4pxVSf3E', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(42, '段强', 'cum_ipsam@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0TwrgDovpo', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(43, '鲁志文', 'lullam@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hZI2Be4wbv', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(44, '汪俊', 'illum_animi@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nV0nEyu5gq', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(45, '宗秀珍', 'anihil@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QlqptRJPA3', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(46, '郝秀芳', 'laudantium_nobis@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xJpfXRyqII', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(47, '梅飞', 'est74@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0Rmkaa9BSx', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(48, '应超', 'laudantium92@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 's6SnVFEjcU', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(49, '邬雪', 'repellat32@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OyoaUQW7Ir', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(50, '吉楼', 'dicta.ut@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OyLEJaYQqm', '2019-02-26 23:54:36', '2019-02-26 23:54:36'),
(51, '甄俊', 'eum.voluptas@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aajFwfJ5WR', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(52, '敖畅', 'quaerat.molestiae@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'za1GitK06s', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(53, '桑建', 'quidem_sunt@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XUAM8p2Nhh', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(54, '舒楠', 'soluta.autem@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CSHTyhilFA', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(55, '申智明', 'perferendis.molestias@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CB8yO71EWj', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(56, '夏阳', 'voluptas45@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3QOAMhbbBs', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(57, '连建国', 'quasi_perspiciatis@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'w1CEYbq879', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(58, '沉珺', 'dolore.est@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NRrUyujjEK', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(59, '马全安', 'facilis89@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RqsSdiAaQ5', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(60, '何新华', 'voluptates_incidunt@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vHqwYKFgN4', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(61, '姚智敏', 'mad@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Hd5TcBg8Z6', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(62, '席杨', 'porro43@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vYCBw9PtR4', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(63, '洪琳', 'laudantium03@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'eb5l8FZpYz', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(64, '崔静', 'sapiente_eum@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'brwwhN3xDU', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(65, '丘淑华', 'eum31@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CwYrqCcj6r', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(66, '龚强', 'dvoluptatum@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'P2028KqmON', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(67, '徐红', 'debitis_rem@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dnqzbLP77t', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(68, '齐淑兰', 'dolores.eaque@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Yd8npfzZMK', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(69, '马玉梅', 'sit.dolor@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yAePiIKUvl', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(70, '竺英', 'fugit08@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NcJhIWYsP6', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(71, '贾桂兰', 'necessitatibus48@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AZUi4JWWgc', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(72, '袁兵', 'similique_quaerat@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3E7LQaewml', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(73, '商玉华', 'zquos@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bvPKl5BO9U', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(74, '都秀兰', 'excepturi.sed@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'icSI85X4rT', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(75, '位淑英', 'hic_voluptatem@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'X5IHLsmwoX', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(76, '宋瑜', 'sunt27@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lWT8bw4FUM', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(77, '詹霞', 'et_assumenda@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WrR8DVHtvb', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(78, '和桂芳', 'nemo_distinctio@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'U3OGgwyuAU', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(79, '凌小红', 'vel.expedita@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wlcexhQA1A', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(80, '晏怡', 'labore.perferendis@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OSqaGyqrnZ', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(81, '路慧', 'magni.in@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'V2JkZXPPFT', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(82, '高艳', 'dolore.ipsa@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'slZ0RvdUjD', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(83, '翁钟', 'qet@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uSEtCuzH9b', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(84, '祝莉', 'consequatur55@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WVKqN561Gh', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(85, '裴秀英', 'cum_eaque@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2qWRqR5Qpj', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(86, '洪桂芳', 'reiciendis46@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UN9qRAVjQ4', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(87, '辛丹丹', 'sit.beatae@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WUzTg46nch', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(88, '党秀兰', 'fprovident@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wV3gKqekBI', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(89, '蔺冰冰', 'voluptate.sit@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AWHwSuSAJk', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(90, '和强', 'ea00@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'a2kIqgwiBM', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(91, '郑璐', 'qui.inventore@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fJRNuM1u8Y', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(92, '揭志文', 'consequatur04@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dPqaQAlQMP', '2019-02-26 23:54:37', '2019-02-26 23:54:37'),
(93, '赵博', 'molestiae_aut@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AwbP2P9d9F', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(94, '商志强', 'vel.maxime@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zWyQqr5D3E', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(95, '覃瑶', 'pculpa@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Pvhp88LTUs', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(96, '冼嘉俊', 'nnemo@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yElwEy8B4c', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(97, '巩建国', 'possimus_cum@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4dIjNSJsYE', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(98, '关萍', 'culpa_voluptatem@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8AEq2lzgZg', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(99, '章丹丹', 'qautem@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9HgR9Fg0vF', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(100, '明桂珍', 'onecessitatibus@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NeezgRgpB4', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(101, '詹致远', 'cvoluptas@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bp1wVDTjK7', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(102, '木志强', 'perspiciatis49@example.com', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tVEP99T32i', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(103, '仲华', 'maiores_voluptatum@example.net', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rnRupwRpkR', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(104, '饶爱华', 'earum.eum@example.org', '2019-02-26 23:54:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kzsJb3HYBq', '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(105, '測試用', 'p644799@nwytg.net', '2019-02-27 00:08:36', '$2y$10$MrlY49r9LL6AVnbFwlO1KOIeBU9M3SIm4ZOyjfcnN3GGUht8TQXhW', 'FQfviKNmAdY73SN3DDGjMZ334JJxHXibjeKvTzrn8tMLHl3dxM6XrPqhXK1O', '2019-02-27 00:08:20', '2019-02-27 00:08:36');

-- --------------------------------------------------------

--
-- 資料表結構 `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `province`, `city`, `district`, `address`, `zip`, `contact_name`, `contact_phone`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, '河北省', '石家庄市', '长安区', '第25街道第764号', 35700, '方鹏', '13258920205', NULL, '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(2, 2, '江苏省', '南京市', '浦口区', '第2街道第624号', 642600, '褚坤', '17181845482', NULL, '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(3, 2, '北京市', '市辖区', '东城区', '第95街道第325号', 124900, '鄢佳', '14779987093', NULL, '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(4, 3, '北京市', '市辖区', '东城区', '第99街道第60号', 282100, '郁颖', '17096147115', NULL, '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(5, 3, '广东省', '深圳市', '福田区', '第19街道第596号', 467700, '梅玲', '18802393421', NULL, '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(6, 3, '江苏省', '南京市', '浦口区', '第93街道第936号', 655400, '司建国', '18316180060', NULL, '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(7, 4, '江苏省', '苏州市', '相城区', '第46街道第567号', 215100, '耿霞', '15866562018', NULL, '2019-02-26 23:54:38', '2019-02-26 23:54:38'),
(8, 5, '河北省', '石家庄市', '长安区', '第52街道第947号', 374400, '姜金凤', '17803712387', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(9, 6, '广东省', '深圳市', '福田区', '第74街道第37号', 382300, '徐玲', '15322386763', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(10, 6, '江苏省', '苏州市', '相城区', '第52街道第691号', 765400, '晏洪', '15006191019', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(11, 7, '北京市', '市辖区', '东城区', '第96街道第894号', 567400, '包玲', '17749070744', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(12, 8, '河北省', '石家庄市', '长安区', '第24街道第648号', 547600, '赵博涛', '13672571136', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(13, 8, '江苏省', '南京市', '浦口区', '第58街道第99号', 177000, '钟秀梅', '17841170610', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(14, 8, '河北省', '石家庄市', '长安区', '第4街道第842号', 374100, '蔺晨', '13788446674', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(15, 9, '江苏省', '苏州市', '相城区', '第36街道第351号', 347700, '卓玉英', '15817779761', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(16, 9, '北京市', '市辖区', '东城区', '第52街道第684号', 342400, '邸淑英', '17085166607', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(17, 9, '江苏省', '南京市', '浦口区', '第40街道第272号', 396900, '鞠华', '13704501757', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(18, 10, '河北省', '石家庄市', '长安区', '第31街道第597号', 611000, '王洪', '13885799240', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(19, 10, '江苏省', '苏州市', '相城区', '第0街道第526号', 394100, '董志勇', '13567998981', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(20, 11, '江苏省', '苏州市', '相城区', '第25街道第521号', 154800, '匡博', '13705107763', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(21, 11, '江苏省', '南京市', '浦口区', '第88街道第892号', 752900, '苟建明', '17051362245', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(22, 12, '江苏省', '南京市', '浦口区', '第1街道第850号', 263700, '池华', '17852970898', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(23, 12, '江苏省', '苏州市', '相城区', '第0街道第956号', 454100, '许婷婷', '18354689681', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(24, 12, '广东省', '深圳市', '福田区', '第52街道第36号', 778400, '方鹏程', '13840530157', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(25, 13, '江苏省', '南京市', '浦口区', '第99街道第627号', 663400, '赖淑珍', '15327180388', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(26, 13, '江苏省', '苏州市', '相城区', '第39街道第686号', 688200, '田丽丽', '17196023041', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(27, 14, '江苏省', '南京市', '浦口区', '第21街道第45号', 547600, '马建国', '18319194962', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(28, 15, '江苏省', '南京市', '浦口区', '第2街道第975号', 607400, '倪旭', '17686036423', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(29, 15, '广东省', '深圳市', '福田区', '第8街道第308号', 778000, '敖致远', '15577234551', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(30, 16, '江苏省', '苏州市', '相城区', '第2街道第372号', 152400, '宫冬梅', '14521970711', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(31, 16, '河北省', '石家庄市', '长安区', '第43街道第809号', 84500, '田楼', '13548778262', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(32, 17, '江苏省', '南京市', '浦口区', '第84街道第437号', 167800, '僧丽华', '17079152934', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(33, 18, '江苏省', '南京市', '浦口区', '第50街道第953号', 33900, '江岩', '17187631660', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(34, 18, '江苏省', '南京市', '浦口区', '第68街道第492号', 341300, '糜洪', '17080506830', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(35, 18, '河北省', '石家庄市', '长安区', '第3街道第881号', 573500, '曲桂荣', '13009958657', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(36, 19, '江苏省', '南京市', '浦口区', '第86街道第298号', 302800, '蒋桂芬', '17075894279', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(37, 20, '江苏省', '南京市', '浦口区', '第55街道第731号', 572000, '王雷', '15505605849', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(38, 21, '江苏省', '南京市', '浦口区', '第12街道第170号', 258700, '衣文', '17013460875', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(39, 22, '江苏省', '南京市', '浦口区', '第6街道第293号', 218300, '成龙', '17194890738', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(40, 22, '广东省', '深圳市', '福田区', '第6街道第111号', 303300, '井俊', '13990297916', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(41, 23, '北京市', '市辖区', '东城区', '第1街道第482号', 105900, '薛兰英', '14771184411', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(42, 23, '广东省', '深圳市', '福田区', '第80街道第596号', 201600, '马瑜', '17097290745', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(43, 23, '北京市', '市辖区', '东城区', '第31街道第786号', 457900, '糜钟', '15176433038', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(44, 24, '江苏省', '南京市', '浦口区', '第2街道第514号', 451600, '李秀珍', '17044179907', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(45, 24, '江苏省', '南京市', '浦口区', '第89街道第25号', 677300, '薄秀梅', '13384218809', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(46, 24, '江苏省', '南京市', '浦口区', '第67街道第730号', 646400, '纪利', '15222716295', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(47, 25, '江苏省', '苏州市', '相城区', '第95街道第540号', 74800, '焦彬', '15110134427', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(48, 25, '北京市', '市辖区', '东城区', '第12街道第916号', 505200, '景洋', '18120343130', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(49, 26, '河北省', '石家庄市', '长安区', '第43街道第799号', 846700, '原丹', '13599130458', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(50, 26, '广东省', '深圳市', '福田区', '第79街道第568号', 444600, '夏文', '17070705848', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(51, 26, '江苏省', '南京市', '浦口区', '第24街道第651号', 288100, '郜欢', '15976965442', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(52, 27, '北京市', '市辖区', '东城区', '第54街道第813号', 464700, '楚秀梅', '15626070224', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(53, 27, '北京市', '市辖区', '东城区', '第76街道第477号', 825500, '陈桂芳', '13509076143', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(54, 27, '广东省', '深圳市', '福田区', '第78街道第140号', 753500, '畅建国', '15040686449', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(55, 28, '江苏省', '南京市', '浦口区', '第30街道第57号', 592100, '姬瑶', '15787835338', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(56, 28, '广东省', '深圳市', '福田区', '第91街道第222号', 588600, '申瑜', '18643662653', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(57, 29, '北京市', '市辖区', '东城区', '第74街道第406号', 474600, '唐昱然', '15287329296', NULL, '2019-02-26 23:54:39', '2019-02-26 23:54:39'),
(58, 29, '广东省', '深圳市', '福田区', '第41街道第558号', 528100, '和智敏', '17058398359', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(59, 29, '广东省', '深圳市', '福田区', '第3街道第726号', 691800, '窦欢', '17071151703', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(60, 30, '江苏省', '苏州市', '相城区', '第71街道第245号', 807800, '徐丽丽', '18080203406', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(61, 30, '江苏省', '南京市', '浦口区', '第64街道第304号', 661600, '位坤', '13343615346', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(62, 30, '北京市', '市辖区', '东城区', '第18街道第203号', 205200, '欧阳秀云', '17053736370', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(63, 31, '北京市', '市辖区', '东城区', '第37街道第586号', 296700, '吕秀云', '18892175581', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(64, 31, '北京市', '市辖区', '东城区', '第84街道第12号', 632300, '毕欢', '18106276432', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(65, 31, '广东省', '深圳市', '福田区', '第46街道第853号', 655900, '官文娟', '15221957562', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(66, 32, '广东省', '深圳市', '福田区', '第36街道第291号', 622300, '卢国庆', '15102905636', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(67, 32, '江苏省', '苏州市', '相城区', '第71街道第369号', 584000, '稽秀芳', '13846281770', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(68, 32, '江苏省', '苏州市', '相城区', '第14街道第617号', 227400, '段超', '17089658190', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(69, 33, '广东省', '深圳市', '福田区', '第66街道第21号', 244600, '瞿志诚', '13690293615', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(70, 34, '江苏省', '苏州市', '相城区', '第6街道第270号', 778400, '欧阳凤英', '15615133268', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(71, 35, '江苏省', '南京市', '浦口区', '第12街道第965号', 724900, '衣丹丹', '18260934998', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(72, 35, '江苏省', '南京市', '浦口区', '第50街道第433号', 851700, '滕婕', '17076991639', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(73, 36, '河北省', '石家庄市', '长安区', '第68街道第134号', 606300, '强新华', '18773557768', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(74, 37, '江苏省', '苏州市', '相城区', '第42街道第466号', 733100, '席全安', '17196416207', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(75, 37, '广东省', '深圳市', '福田区', '第72街道第14号', 612800, '龚文彬', '17189008935', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(76, 38, '河北省', '石家庄市', '长安区', '第24街道第212号', 551300, '包嘉俊', '18820916994', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(77, 38, '江苏省', '苏州市', '相城区', '第78街道第760号', 303300, '边桂花', '15287452458', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(78, 38, '北京市', '市辖区', '东城区', '第85街道第551号', 814100, '祁文娟', '18901011520', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(79, 39, '北京市', '市辖区', '东城区', '第36街道第814号', 257500, '叶华', '17192413865', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(80, 40, '江苏省', '南京市', '浦口区', '第49街道第257号', 236300, '潘波', '17181566916', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(81, 41, '江苏省', '苏州市', '相城区', '第43街道第711号', 821200, '胡学明', '15060600606', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(82, 42, '北京市', '市辖区', '东城区', '第28街道第976号', 107500, '冀淑兰', '13233556127', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(83, 43, '河北省', '石家庄市', '长安区', '第2街道第878号', 132100, '佟振国', '17061404324', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(84, 44, '江苏省', '苏州市', '相城区', '第98街道第686号', 442300, '宁智渊', '17074538828', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(85, 44, '江苏省', '南京市', '浦口区', '第15街道第781号', 136300, '李帅', '18331802115', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(86, 45, '北京市', '市辖区', '东城区', '第34街道第870号', 166200, '祁志新', '17054408661', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(87, 45, '江苏省', '苏州市', '相城区', '第7街道第553号', 501800, '卫琴', '18768171717', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(88, 45, '江苏省', '苏州市', '相城区', '第81街道第203号', 383700, '傅涛', '17071077702', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(89, 46, '江苏省', '南京市', '浦口区', '第74街道第358号', 513200, '成小红', '15046190730', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(90, 47, '广东省', '深圳市', '福田区', '第37街道第131号', 516300, '丛丽娟', '13485119689', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(91, 47, '江苏省', '苏州市', '相城区', '第72街道第734号', 24200, '蒙强', '14789694818', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(92, 47, '广东省', '深圳市', '福田区', '第76街道第825号', 207700, '乔淑英', '13715849310', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(93, 48, '广东省', '深圳市', '福田区', '第22街道第735号', 738100, '敖婷婷', '18256696923', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(94, 48, '江苏省', '南京市', '浦口区', '第48街道第374号', 472700, '鲁致远', '15060221746', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(95, 49, '江苏省', '苏州市', '相城区', '第43街道第752号', 822400, '成洋', '15151984925', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(96, 49, '江苏省', '苏州市', '相城区', '第62街道第931号', 45500, '路帆', '18223424158', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(97, 49, '江苏省', '苏州市', '相城区', '第77街道第688号', 198100, '章云', '14522657318', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(98, 50, '北京市', '市辖区', '东城区', '第65街道第691号', 492300, '贾荣', '13337487837', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(99, 50, '北京市', '市辖区', '东城区', '第15街道第527号', 787000, '景超', '18435916125', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(100, 51, '广东省', '深圳市', '福田区', '第40街道第335号', 755500, '宋腊梅', '14708669913', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(101, 51, '江苏省', '南京市', '浦口区', '第18街道第691号', 845300, '薄利', '13083036680', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(102, 52, '江苏省', '苏州市', '相城区', '第60街道第641号', 796200, '宫红梅', '13464898204', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(103, 52, '江苏省', '南京市', '浦口区', '第22街道第618号', 41400, '荆林', '17050320967', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(104, 52, '江苏省', '南京市', '浦口区', '第75街道第905号', 315800, '邢楼', '15870481820', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(105, 53, '江苏省', '南京市', '浦口区', '第67街道第43号', 403500, '连玉珍', '15266709251', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(106, 53, '北京市', '市辖区', '东城区', '第46街道第625号', 564300, '吴智勇', '18377948963', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(107, 53, '江苏省', '苏州市', '相城区', '第83街道第491号', 805600, '巩玉英', '15329204081', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(108, 54, '江苏省', '苏州市', '相城区', '第95街道第931号', 16300, '詹正诚', '13102793207', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(109, 54, '河北省', '石家庄市', '长安区', '第95街道第482号', 273300, '谷智敏', '18724924212', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(110, 55, '广东省', '深圳市', '福田区', '第71街道第832号', 421200, '隋琳', '15830677320', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(111, 55, '江苏省', '南京市', '浦口区', '第90街道第683号', 703200, '佟琳', '18091686663', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(112, 55, '北京市', '市辖区', '东城区', '第99街道第663号', 508500, '吴春梅', '13530133782', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(113, 56, '江苏省', '南京市', '浦口区', '第74街道第147号', 397300, '姚正平', '17094640564', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(114, 56, '江苏省', '苏州市', '相城区', '第86街道第98号', 594400, '植君', '13989701280', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(115, 57, '河北省', '石家庄市', '长安区', '第51街道第383号', 205400, '翟晨', '17088964271', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(116, 58, '北京市', '市辖区', '东城区', '第61街道第425号', 123000, '丁刚', '13056681475', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(117, 59, '河北省', '石家庄市', '长安区', '第35街道第99号', 362300, '章欣', '14550716637', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(118, 59, '河北省', '石家庄市', '长安区', '第66街道第40号', 263200, '米玲', '13455175203', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(119, 60, '北京市', '市辖区', '东城区', '第13街道第564号', 163300, '宫正诚', '14530853016', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(120, 60, '北京市', '市辖区', '东城区', '第89街道第902号', 738600, '蒋凤英', '13641932751', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(121, 60, '广东省', '深圳市', '福田区', '第31街道第750号', 472400, '舒辉', '17180313856', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(122, 61, '河北省', '石家庄市', '长安区', '第6街道第639号', 272900, '虞志强', '13408893542', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(123, 62, '河北省', '石家庄市', '长安区', '第15街道第674号', 521600, '聂瑞', '13415878736', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(124, 62, '北京市', '市辖区', '东城区', '第20街道第218号', 671900, '卢伦', '17063003336', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(125, 62, '江苏省', '苏州市', '相城区', '第53街道第111号', 341400, '秦涛', '17019651943', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(126, 63, '江苏省', '南京市', '浦口区', '第67街道第846号', 118600, '石金凤', '15121614651', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(127, 63, '广东省', '深圳市', '福田区', '第2街道第516号', 792200, '冼祥', '13547743011', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(128, 64, '江苏省', '苏州市', '相城区', '第48街道第337号', 545900, '瞿子安', '13711999194', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(129, 64, '江苏省', '南京市', '浦口区', '第14街道第872号', 375600, '胡红霞', '17740608979', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(130, 64, '江苏省', '南京市', '浦口区', '第73街道第756号', 575000, '宇秀华', '15820844342', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(131, 65, '河北省', '石家庄市', '长安区', '第80街道第986号', 112500, '竺建平', '15723521296', NULL, '2019-02-26 23:54:40', '2019-02-26 23:54:40'),
(132, 66, '广东省', '深圳市', '福田区', '第82街道第372号', 481300, '符爱华', '13124315386', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(133, 66, '北京市', '市辖区', '东城区', '第19街道第204号', 447100, '辜玉华', '13494986614', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(134, 67, '江苏省', '南京市', '浦口区', '第64街道第484号', 554000, '娄明霞', '17002027570', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(135, 67, '江苏省', '苏州市', '相城区', '第83街道第571号', 733600, '路霞', '18816816335', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(136, 67, '江苏省', '苏州市', '相城区', '第37街道第704号', 86300, '朱红', '17667607012', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(137, 68, '江苏省', '苏州市', '相城区', '第61街道第503号', 554900, '柏腊梅', '13555635033', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(138, 69, '江苏省', '南京市', '浦口区', '第46街道第57号', 597400, '路正诚', '13842620310', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(139, 69, '河北省', '石家庄市', '长安区', '第32街道第86号', 774700, '冯翼', '18455384052', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(140, 70, '广东省', '深圳市', '福田区', '第68街道第623号', 535600, '彭智明', '17010560166', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(141, 71, '北京市', '市辖区', '东城区', '第99街道第35号', 567900, '蔺帅', '18624997402', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(142, 71, '江苏省', '南京市', '浦口区', '第45街道第451号', 391100, '贾正诚', '15901893811', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(143, 72, '河北省', '石家庄市', '长安区', '第52街道第48号', 733700, '金钟', '15080883255', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(144, 72, '江苏省', '苏州市', '相城区', '第39街道第512号', 622700, '申丽华', '18200877888', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(145, 73, '江苏省', '苏州市', '相城区', '第89街道第103号', 827100, '徐楠', '17076110860', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(146, 73, '江苏省', '南京市', '浦口区', '第47街道第916号', 563300, '傅琳', '15392890154', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(147, 74, '北京市', '市辖区', '东城区', '第57街道第457号', 558100, '邬丽娟', '17199082966', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(148, 74, '江苏省', '南京市', '浦口区', '第99街道第230号', 163900, '卫楠', '18729905331', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(149, 74, '河北省', '石家庄市', '长安区', '第90街道第240号', 132300, '程淑英', '13508194702', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(150, 75, '广东省', '深圳市', '福田区', '第94街道第166号', 533900, '史婷婷', '17052190799', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(151, 75, '江苏省', '南京市', '浦口区', '第39街道第835号', 297200, '裴丽娟', '15560214843', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(152, 76, '江苏省', '苏州市', '相城区', '第10街道第294号', 467000, '霍珺', '18472923951', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(153, 76, '北京市', '市辖区', '东城区', '第26街道第663号', 62000, '袁琳', '17013251371', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(154, 76, '河北省', '石家庄市', '长安区', '第23街道第386号', 434300, '银明', '18217042005', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(155, 77, '河北省', '石家庄市', '长安区', '第96街道第796号', 25100, '谭智勇', '14516246572', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(156, 77, '江苏省', '南京市', '浦口区', '第89街道第358号', 236100, '辜桂英', '17625172124', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(157, 77, '北京市', '市辖区', '东城区', '第9街道第898号', 703400, '畅捷', '15006227169', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(158, 78, '广东省', '深圳市', '福田区', '第90街道第915号', 77600, '阎超', '15132547520', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(159, 78, '广东省', '深圳市', '福田区', '第21街道第382号', 542500, '韦鹰', '13862302553', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(160, 79, '北京市', '市辖区', '东城区', '第22街道第710号', 515000, '谈秀珍', '17085443714', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(161, 79, '北京市', '市辖区', '东城区', '第58街道第45号', 607100, '卢梅', '17697659643', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(162, 80, '广东省', '深圳市', '福田区', '第51街道第910号', 615700, '童伦', '18050478192', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(163, 81, '河北省', '石家庄市', '长安区', '第52街道第245号', 463400, '霍林', '17155447351', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(164, 81, '河北省', '石家庄市', '长安区', '第35街道第866号', 813500, '邸子安', '17195529893', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(165, 81, '江苏省', '苏州市', '相城区', '第71街道第19号', 798700, '武兰英', '13568305466', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(166, 82, '江苏省', '南京市', '浦口区', '第84街道第698号', 84300, '贾宁', '18531164981', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(167, 83, '广东省', '深圳市', '福田区', '第63街道第191号', 87500, '虞莹', '15014944161', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(168, 83, '北京市', '市辖区', '东城区', '第48街道第554号', 275900, '稽捷', '17668817564', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(169, 83, '河北省', '石家庄市', '长安区', '第55街道第829号', 345900, '左军', '15283649342', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(170, 84, '广东省', '深圳市', '福田区', '第70街道第985号', 423700, '路毅', '18651709453', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(171, 84, '北京市', '市辖区', '东城区', '第0街道第533号', 813200, '翁小红', '14522437787', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(172, 84, '江苏省', '南京市', '浦口区', '第62街道第369号', 751500, '曾帆', '17080175991', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(173, 85, '江苏省', '苏州市', '相城区', '第36街道第954号', 165000, '江梅', '13444049928', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(174, 85, '河北省', '石家庄市', '长安区', '第41街道第38号', 16100, '衣春梅', '15564610148', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(175, 85, '北京市', '市辖区', '东城区', '第86街道第586号', 738200, '虞楠', '13032722659', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(176, 86, '江苏省', '南京市', '浦口区', '第84街道第332号', 226700, '戚晨', '17008456118', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(177, 86, '河北省', '石家庄市', '长安区', '第90街道第690号', 257300, '雷静', '13010112170', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(178, 87, '江苏省', '苏州市', '相城区', '第8街道第759号', 156400, '梁鹏', '17889859923', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(179, 87, '江苏省', '南京市', '浦口区', '第64街道第339号', 92800, '石翔', '15731122388', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(180, 88, '北京市', '市辖区', '东城区', '第94街道第599号', 277600, '聂秀兰', '17087799541', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(181, 88, '江苏省', '苏州市', '相城区', '第30街道第554号', 714700, '邵秀华', '17007196427', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(182, 89, '河北省', '石家庄市', '长安区', '第1街道第272号', 746300, '童超', '13690993086', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(183, 90, '河北省', '石家庄市', '长安区', '第49街道第961号', 693500, '丛小红', '17081036779', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(184, 91, '江苏省', '南京市', '浦口区', '第53街道第130号', 196500, '苏佳', '15255990740', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(185, 91, '河北省', '石家庄市', '长安区', '第32街道第944号', 78200, '古强', '17088747896', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(186, 91, '江苏省', '苏州市', '相城区', '第66街道第442号', 551400, '僧莹', '18147081618', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(187, 92, '江苏省', '南京市', '浦口区', '第86街道第539号', 228400, '米荣', '17185548306', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(188, 93, '河北省', '石家庄市', '长安区', '第17街道第741号', 223300, '蓝秀荣', '18229053938', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(189, 93, '河北省', '石家庄市', '长安区', '第48街道第29号', 52200, '欧燕', '15032827199', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(190, 93, '北京市', '市辖区', '东城区', '第82街道第629号', 798000, '曾军', '17011817699', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(191, 94, '北京市', '市辖区', '东城区', '第64街道第860号', 726300, '万磊', '18422928392', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(192, 95, '广东省', '深圳市', '福田区', '第18街道第137号', 613000, '施建', '17011656303', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(193, 96, '广东省', '深圳市', '福田区', '第26街道第677号', 151600, '曹玉珍', '17009660587', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(194, 97, '江苏省', '苏州市', '相城区', '第24街道第809号', 754500, '乐志诚', '15585095602', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(195, 97, '江苏省', '南京市', '浦口区', '第95街道第419号', 795800, '朱欣', '15775529360', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(196, 98, '广东省', '深圳市', '福田区', '第21街道第98号', 578100, '常秀兰', '14534592606', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(197, 98, '江苏省', '苏州市', '相城区', '第94街道第864号', 321300, '符旭', '15891589625', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(198, 98, '广东省', '深圳市', '福田区', '第54街道第435号', 705300, '翁文娟', '18191822289', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(199, 99, '北京市', '市辖区', '东城区', '第77街道第62号', 654300, '苑博涛', '15245019811', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(200, 99, '广东省', '深圳市', '福田区', '第41街道第803号', 411300, '汪春梅', '17673691874', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(201, 100, '江苏省', '南京市', '浦口区', '第30街道第110号', 737200, '伏雪', '13019726296', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(202, 100, '江苏省', '南京市', '浦口区', '第47街道第660号', 692000, '宫玉英', '17796610730', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(203, 101, '广东省', '深圳市', '福田区', '第28街道第351号', 742400, '樊毅', '15584239361', NULL, '2019-02-26 23:54:41', '2019-02-26 23:54:41'),
(204, 102, '江苏省', '苏州市', '相城区', '第75街道第557号', 198400, '冉龙', '13705871819', NULL, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(205, 103, '河北省', '石家庄市', '长安区', '第54街道第42号', 14100, '糜伟', '13352852920', NULL, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(206, 103, '广东省', '深圳市', '福田区', '第27街道第996号', 224100, '覃志强', '18319267892', NULL, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(207, 103, '河北省', '石家庄市', '长安区', '第5街道第2号', 558500, '计智勇', '17057618506', NULL, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(208, 104, '江苏省', '苏州市', '相城区', '第98街道第257号', 741800, '封旭', '13276617563', NULL, '2019-02-26 23:54:42', '2019-02-26 23:54:42'),
(209, 104, '江苏省', '苏州市', '相城区', '第17街道第508号', 288500, '冉智敏', '13484790997', NULL, '2019-02-26 23:54:42', '2019-02-26 23:54:42');

-- --------------------------------------------------------

--
-- 資料表結構 `user_favorite_products`
--

CREATE TABLE `user_favorite_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `user_favorite_products`
--

INSERT INTO `user_favorite_products` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 105, 16, '2019-02-27 00:10:17', '2019-02-27 00:10:17');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin_config`
--
ALTER TABLE `admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_config_name_unique` (`name`);

--
-- 資料表索引 `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- 資料表索引 `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- 資料表索引 `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- 資料表索引 `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- 資料表索引 `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- 資料表索引 `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- 資料表索引 `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- 資料表索引 `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- 資料表索引 `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_user_id_foreign` (`user_id`),
  ADD KEY `cart_items_product_sku_id_foreign` (`product_sku_id`);

--
-- 資料表索引 `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_codes_code_unique` (`code`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_no_unique` (`no`),
  ADD UNIQUE KEY `orders_refund_no_unique` (`refund_no`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_coupon_code_id_foreign` (`coupon_code_id`);

--
-- 資料表索引 `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_product_sku_id_foreign` (`product_sku_id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_skus`
--
ALTER TABLE `product_skus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_skus_product_id_foreign` (`product_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 資料表索引 `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- 資料表索引 `user_favorite_products`
--
ALTER TABLE `user_favorite_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_favorite_products_user_id_foreign` (`user_id`),
  ADD KEY `user_favorite_products_product_id_foreign` (`product_id`);

--
-- 在傾印的資料表使用自動增長(AUTO_INCREMENT)
--

--
-- 使用資料表自動增長(AUTO_INCREMENT) `admin_config`
--
ALTER TABLE `admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `product_skus`
--
ALTER TABLE `product_skus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `user_favorite_products`
--
ALTER TABLE `user_favorite_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 已傾印資料表的限制(constraint)
--

--
-- 資料表的限制(constraint) `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制(constraint) `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_coupon_code_id_foreign` FOREIGN KEY (`coupon_code_id`) REFERENCES `coupon_codes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制(constraint) `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制(constraint) `product_skus`
--
ALTER TABLE `product_skus`
  ADD CONSTRAINT `product_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制(constraint) `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制(constraint) `user_favorite_products`
--
ALTER TABLE `user_favorite_products`
  ADD CONSTRAINT `user_favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
