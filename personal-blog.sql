-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 11, 2019 at 03:23 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personal-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Good post', '2019-10-11 13:11:40', '2019-10-11 13:11:40'),
(2, 4, 1, 'Yeah it\'s great!!!', '2019-10-11 13:13:08', '2019-10-11 13:13:08'),
(3, 4, 2, 'Whoaa', '2019-10-11 13:13:24', '2019-10-11 13:13:24'),
(4, 5, 6, 'My first blog', '2019-10-11 13:16:34', '2019-10-11 13:16:34'),
(5, 4, 6, 'godd', '2019-10-11 13:17:12', '2019-10-11 13:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_10_08_154436_create_posts_table', 1),
(2, '2019_10_08_160520_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 'Lorem Ipsum Generator', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Libero justo laoreet sit amet cursus. Purus ut faucibus pulvinar elementum. Proin sagittis nisl rhoncus mattis rhoncus. Venenatis cras sed felis eget. Tortor dignissim convallis aenean et tortor at. Faucibus interdum posuere lorem ipsum dolor sit amet. Eu tincidunt tortor aliquam nulla. Libero enim sed faucibus turpis in. Quisque sagittis purus sit amet volutpat consequat. Id eu nisl nunc mi ipsum faucibus. Diam vel quam elementum pulvinar etiam non quam. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan. Sit amet mauris commodo quis imperdiet. Et netus et malesuada fames ac turpis egestas sed tempus. Turpis massa sed elementum tempus egestas sed.\r\n\r\nAdipiscing elit duis tristique sollicitudin nibh. Volutpat diam ut venenatis tellus in metus. Pulvinar etiam non quam lacus suspendisse. Sit amet dictum sit amet. Enim ut sem viverra aliquet eget sit amet tellus. Laoreet non curabitur gravida arcu. Leo vel fringilla est ullamcorper eget nulla facilisi etiam. Vestibulum lectus mauris ultrices eros in cursus turpis. Sed viverra ipsum nunc aliquet bibendum. Potenti nullam ac tortor vitae purus. Aenean sed adipiscing diam donec adipiscing tristique risus nec. Lectus proin nibh nisl condimentum id venenatis a condimentum vitae. Phasellus faucibus scelerisque eleifend donec. Amet consectetur adipiscing elit duis tristique sollicitudin nibh. Rhoncus aenean vel elit scelerisque mauris.\r\n\r\nTristique senectus et netus et malesuada fames ac turpis egestas. Et tortor consequat id porta. In hac habitasse platea dictumst. Convallis convallis tellus id interdum velit laoreet id donec ultrices. Libero id faucibus nisl tincidunt eget nullam non nisi. Amet massa vitae tortor condimentum lacinia quis vel. Viverra accumsan in nisl nisi. Pellentesque adipiscing commodo elit at imperdiet dui. Nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices. Turpis egestas integer eget aliquet nibh praesent tristique magna.\r\n\r\nMorbi tempus iaculis urna id volutpat. Dignissim sodales ut eu sem integer vitae. Donec enim diam vulputate ut. Semper auctor neque vitae tempus quam pellentesque. Ac tincidunt vitae semper quis. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque eu. At tellus at urna condimentum mattis pellentesque id nibh tortor. Vitae et leo duis ut diam quam nulla porttitor massa. Eu augue ut lectus arcu bibendum. Cras fermentum odio eu feugiat. Porttitor leo a diam sollicitudin. In metus vulputate eu scelerisque felis imperdiet proin fermentum. Quam nulla porttitor massa id neque aliquam. Cras sed felis eget velit aliquet sagittis. Proin nibh nisl condimentum id.', '2019-10-11 13:09:23', '2019-10-11 13:09:23'),
(2, 2, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ultricies lacus sed turpis tincidunt id. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Habitasse platea dictumst quisque sagittis purus. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Pulvinar pellentesque habitant morbi tristique. Nullam ac tortor vitae purus faucibus ornare. Leo integer malesuada nunc vel risus commodo. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis. Tortor posuere ac ut consequat semper viverra nam.\r\n\r\nVelit egestas dui id ornare arcu odio ut sem. Eget mauris pharetra et ultrices neque. Sem fringilla ut morbi tincidunt augue interdum velit euismod in. Orci ac auctor augue mauris augue neque gravida. Platea dictumst quisque sagittis purus sit amet. Nullam non nisi est sit amet facilisis. Eget velit aliquet sagittis id consectetur purus ut faucibus. Morbi leo urna molestie at elementum eu facilisis sed. Laoreet suspendisse interdum consectetur libero id. Tristique et egestas quis ipsum suspendisse ultrices gravida. Pellentesque sit amet porttitor eget dolor morbi non arcu risus. Quis hendrerit dolor magna eget est. Eget nullam non nisi est sit. Eu tincidunt tortor aliquam nulla facilisi. Gravida quis blandit turpis cursus in hac habitasse. Duis tristique sollicitudin nibh sit amet commodo nulla facilisi nullam. In hac habitasse platea dictumst vestibulum. Dignissim suspendisse in est ante in. Tempor nec feugiat nisl pretium fusce id velit ut.', '2019-10-11 13:09:50', '2019-10-11 13:09:50'),
(3, 5, 'A diam', 'A diam maecenas sed enim ut sem viverra aliquet eget sit amet tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices eros in cursus turpis massa tincidunt dui ut ornare lectus sit amet est placerat in egestas erat imperdiet sed euismod nisi porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus nullam eget felis eget nunc lobortis mattis aliquam faucibus purus in massa tempor nec feugiat nisl pretium fusce id velit ut tortor pretium viverra', '2019-10-11 13:14:45', '2019-10-11 13:14:45'),
(4, 5, 'Dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien et. Laoreet non curabitur gravida arcu ac. Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus. Pretium quam vulputate dignissim suspendisse in est ante in.', '2019-10-11 13:15:18', '2019-10-11 13:15:18'),
(5, 5, 'Sentences', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec feugiat nisl pretium fusce id. Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Ut porttitor leo a diam. In nulla posuere sollicitudin aliquam ultrices sagittis orci a. Diam maecenas sed enim ut sem viverra aliquet eget sit. Volutpat sed cras ornare arcu dui vivamus arcu felis. Facilisi nullam vehicula ipsum a arcu cursus. Vitae justo eget magna fermentum iaculis eu non. Sit amet nisl suscipit adipiscing bibendum est. Egestas purus viverra accumsan in nisl nisi scelerisque eu. Lacinia quis vel eros donec ac. Eget est lorem ipsum dolor. Aliquet eget sit amet tellus cras adipiscing enim. At consectetur lorem donec massa sapien faucibus et molestie.', '2019-10-11 13:15:50', '2019-10-11 13:15:50'),
(6, 5, 'Paragraph', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc consequat. Est sit amet facilisis magna etiam tempor orci. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Scelerisque in dictum non consectetur. Sapien eget mi proin sed libero enim sed. Dignissim convallis aenean et tortor at risus viverra adipiscing at. Sit amet nulla facilisi morbi tempus iaculis urna id. Consectetur libero id faucibus nisl tincidunt eget nullam non. Sed vulputate odio ut enim blandit volutpat maecenas volutpat.\r\n\r\nVitae auctor eu augue ut lectus arcu bibendum at. Nibh praesent tristique magna sit amet purus gravida quis. Nunc non blandit massa enim nec. Porttitor lacus luctus accumsan tortor posuere ac. Quis auctor elit sed vulputate mi sit amet mauris. Dolor sit amet consectetur adipiscing elit ut. Porta non pulvinar neque laoreet suspendisse interdum. Dolor purus non enim praesent elementum facilisis leo vel. Etiam tempor orci eu lobortis elementum. Augue eget arcu dictum varius duis at consectetur. Sit amet cursus sit amet dictum sit. Facilisis leo vel fringilla est. Faucibus pulvinar elementum integer enim neque volutpat. Dui vivamus arcu felis bibendum ut. Lobortis elementum nibh tellus molestie nunc non blandit. Diam in arcu cursus euismod quis viverra nibh cras. Duis tristique sollicitudin nibh sit amet. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus vel. Faucibus interdum posuere lorem ipsum dolor sit amet consectetur.\r\n\r\nEu augue ut lectus arcu bibendum. Nec ultrices dui sapien eget mi proin sed libero enim. Non sodales neque sodales ut etiam sit. Quam pellentesque nec nam aliquam sem et tortor consequat id. Rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Egestas egestas fringilla phasellus faucibus scelerisque. Sit amet massa vitae tortor condimentum lacinia quis. Pellentesque habitant morbi tristique senectus et netus et malesuada. Nisl nisi scelerisque eu ultrices vitae auctor. Eget nulla facilisi etiam dignissim diam. Adipiscing bibendum est ultricies integer quis.', '2019-10-11 13:16:15', '2019-10-11 13:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `author`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@hotmail.com', '$2y$10$Zq8f7HPYvP.V3ARzP/3d3OwUQbsIMQ/418JV9u69NXK17u8zOrqeW', 1, 1, '9RjyNLQG5uKXXQDPdFsbMt41p9sKNaTbLFo2cYMZb2OWWCOHhAPJHoxCxiyS', '2019-10-11 13:03:44', '2019-10-11 13:06:48'),
(2, 'John', 'john@gmail.com', '$2y$10$R.INctiNyLWnTnkVzkogs.qG1P.8VmczNJ82prOyKj5A27fCygO6W', 0, 1, NULL, '2019-10-11 13:07:35', '2019-10-11 13:08:15'),
(3, 'Maria', 'maria@gmail.com', '$2y$10$AkYA0oTrYm/Tfp02weh1POQd3aHL5lYAA/z0BMnW00T9mcrL89DVG', 0, 0, NULL, '2019-10-11 13:11:25', '2019-10-11 13:11:25'),
(4, 'Ana', 'ana@hotmail.com', '$2y$10$XE/dlLxXPDGRSwkjN3d4Xu1lt4znxIvSxQ7wLZuIEBRbGhXNwBPMW', 0, 0, NULL, '2019-10-11 13:12:30', '2019-10-11 13:12:30'),
(5, 'Rick', 'rick@yahoo.com', '$2y$10$HzZKkEYRYPTJGClcwLNQXeE.8h5FgMfJn/pCExZKLCVPaD0WGrSsW', 0, 1, NULL, '2019-10-11 13:13:51', '2019-10-11 13:14:03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
