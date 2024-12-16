-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 16 déc. 2024 à 12:32
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecoshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(2, NULL, 1, 'Category 2', 'category-2', '2024-10-23 09:53:57', '2024-10-23 09:53:57');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `adrees` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `laivraison` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `phone`, `email`, `adrees`, `created_at`, `updated_at`, `total`, `laivraison`) VALUES
(1, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', NULL, '2024-11-11 10:02:40', '2024-11-11 10:02:40', NULL, NULL),
(2, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', NULL, '2024-11-11 10:03:52', '2024-11-11 10:03:52', NULL, NULL),
(3, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', NULL, '2024-11-11 10:20:17', '2024-11-11 10:20:17', NULL, NULL),
(4, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-11 10:23:35', '2024-11-11 10:23:35', NULL, NULL),
(5, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-11 10:26:53', '2024-11-11 10:26:53', NULL, NULL),
(6, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-11 10:27:47', '2024-11-11 10:27:47', NULL, NULL),
(7, 'OTHMANE RAHEL', '061425363939', 'mannanimostafa04@gmail.com', 'DHFDHFHF DNDJDJF FJFJF', '2024-11-11 13:02:10', '2024-11-11 13:02:10', NULL, NULL),
(8, 'youns', '00986868696', 'mannanimostafa04@gmail.com', 'CASABLANCA', '2024-11-11 13:23:04', '2024-11-11 13:23:04', NULL, NULL),
(9, 'aaaaaaa', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-12 08:06:01', '2024-11-12 08:06:01', NULL, NULL),
(10, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-14 11:57:58', '2024-11-14 11:57:58', NULL, 'success'),
(11, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-18 13:43:50', '2024-11-18 13:43:50', NULL, 'en cours'),
(12, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-21 08:29:30', '2024-11-21 08:29:30', 9300, 'en cours'),
(13, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-23 19:43:28', '2024-11-23 19:43:28', 17450, 'en cours'),
(14, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-23 19:57:31', '2024-11-23 19:57:31', 1200, 'confirme'),
(15, 'OTHMANE TALIB', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-23 19:59:33', '2024-11-23 19:59:33', 1050, 'confirme'),
(16, 'k:jkklhkl', 'hjkhkjh', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-23 19:59:50', '2024-11-23 19:59:50', 1050, 'confirme'),
(17, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-23 20:00:26', '2024-11-23 20:00:26', 1050, 'confirme'),
(18, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-25 08:44:33', '2024-11-25 08:44:33', 3300, 'confirme'),
(19, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-25 08:44:43', '2024-11-25 08:44:43', 3300, 'confirme'),
(20, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-25 08:52:43', '2024-11-25 08:52:43', 3300, 'confirme'),
(21, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-25 08:52:58', '2024-11-25 08:52:58', 3300, 'confirme'),
(22, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-25 08:57:05', '2024-11-25 08:57:05', 3300, 'confirme'),
(23, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-25 09:39:44', '2024-11-25 09:39:44', 3300, 'confirme'),
(24, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-25 09:40:51', '2024-11-25 09:40:51', 3300, 'confirme'),
(25, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-25 09:56:50', '2024-11-25 09:56:50', 300, 'confirme'),
(26, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-25 10:03:21', '2024-11-25 10:03:21', 3300, 'confirme'),
(27, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-25 10:41:27', '2024-11-25 10:41:27', 650, 'confirme'),
(28, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-25 10:53:39', '2024-11-25 10:53:39', 3300, 'confirme'),
(29, 'lll', 'hjkjhjkh', 'l@gmail.com', 'kjhjh', '2024-11-25 11:10:37', '2024-11-25 11:10:37', 150, 'confirme'),
(30, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-11-25 11:24:50', '2024-11-25 11:24:50', 3000, 'confirme'),
(31, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-26 13:50:00', '2024-11-26 13:50:00', 3300, 'confirme'),
(32, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-11-28 12:44:33', '2024-11-28 12:44:33', 7150, 'confirme');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `nom`, `phone`, `email`, `ville`, `message`, `created_at`, `updated_at`) VALUES
(1, 'MOSTAFA AL MANNANI', '0617125803', 'mostafaalmannani@gmail.com', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', 'udhrfhf fufhu fdfijhduf fehfue', '2024-11-21 08:11:25', '2024-11-21 08:11:25'),
(2, 'OTHMANE TALIB', '0643086370', 'mannanimostafa04@gmail.com', 'SETTAT', 'kjbhdfjkf fjhjkfd fvjhfkj', '2024-11-21 08:12:15', '2024-11-21 08:12:15');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 7, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'monnaie', 'text', 'Monnaie', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'lien_magasin', 'text', 'Lien Magasin', 0, 1, 1, 1, 1, 1, '{}', 7),
(63, 7, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 8),
(64, 7, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 9),
(65, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(66, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(67, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 8, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(69, 8, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 3),
(70, 8, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(71, 8, 'adrees', 'text', 'Adrees', 0, 1, 1, 1, 1, 1, '{}', 5),
(72, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(73, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(74, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(75, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(76, 9, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(77, 9, 'prix', 'text', 'Prix', 0, 1, 1, 1, 1, 1, '{}', 4),
(78, 9, 'stock', 'text', 'Stock', 0, 1, 1, 1, 1, 1, '{}', 5),
(79, 9, 'entreprise_id', 'text', 'Entreprise Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(80, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 10, 'quentite', 'text', 'Quentite', 0, 1, 1, 1, 1, 1, '{}', 2),
(82, 10, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(83, 10, 'client_id', 'text', 'Client Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(84, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(85, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(86, 7, 'entreprise_hasone_mediassociaux_relationship', 'relationship', 'mediassociauxs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\MediasSociaux\",\"table\":\"mediassociauxs\",\"type\":\"hasOne\",\"column\":\"entreprise_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(87, 7, 'entreprise_hasone_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"hasOne\",\"column\":\"entreprise_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(88, 9, 'product_belongsto_entreprise_relationship', 'relationship', 'entreprises', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Entreprise\",\"table\":\"entreprises\",\"type\":\"belongsTo\",\"column\":\"entreprise_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(89, 9, 'product_hasone_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"hasOne\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(90, 8, 'client_hasone_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"hasOne\",\"column\":\"client_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(91, 10, 'order_belongsto_client_relationship', 'relationship', 'clients', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Client\",\"table\":\"clients\",\"type\":\"belongsTo\",\"column\":\"client_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(92, 10, 'order_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(93, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(94, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(95, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(96, 7, 'password', 'password', 'Password', 0, 1, 1, 1, 1, 1, '{}', 12),
(97, 10, 'prix_total', 'number', 'Prix Total', 0, 1, 1, 1, 1, 1, '{}', 7),
(98, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(99, 12, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(100, 12, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 3),
(101, 12, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(102, 12, 'ville', 'text', 'Ville', 0, 1, 1, 1, 1, 1, '{}', 5),
(103, 12, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 6),
(104, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(105, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(106, 8, 'total', 'number', 'Total', 0, 1, 1, 1, 1, 1, '{}', 8),
(107, 8, 'laivraison', 'text', 'Laivraison', 0, 1, 1, 1, 1, 1, '{}', 9),
(108, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 13, 'rating', 'number', 'Rating', 0, 1, 1, 1, 1, 1, '{}', 2),
(110, 13, 'comment', 'text', 'Comment', 0, 1, 1, 1, 1, 1, '{}', 3),
(111, 13, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(112, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(113, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(114, 13, 'rating_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(115, 9, 'product_hasmany_rating_relationship', 'relationship', 'ratings', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Rating\",\"table\":\"ratings\",\"type\":\"hasMany\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(7, 'entreprises', 'entreprises', 'Entreprise', 'Entreprises', NULL, 'App\\Entreprise', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-10-23 11:17:58', '2024-11-25 08:36:16'),
(8, 'clients', 'clients', 'Client', 'Clients', NULL, 'App\\Client', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-10-23 12:12:21', '2024-11-25 10:44:53'),
(9, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-10-23 12:12:38', '2024-11-23 19:34:24'),
(10, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-10-23 12:13:10', '2024-11-25 10:45:27'),
(11, 'mediassociauxs', 'mediassociauxs', 'Mediassociaux', 'Mediassociauxes', NULL, 'App\\Mediassociaux', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-10-23 12:13:37', '2024-10-23 12:13:37'),
(12, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-11-14 12:14:21', '2024-11-14 12:14:21'),
(13, 'ratings', 'ratings', 'Rating', 'Ratings', NULL, 'App\\Rating', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-23 10:49:37', '2024-11-23 19:31:11');

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

CREATE TABLE `entreprises` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `monnaie` varchar(50) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `lien_magasin` varchar(255) DEFAULT NULL,
  `nombre_emp` int(11) DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id`, `nom`, `phone`, `email`, `monnaie`, `logo`, `lien_magasin`, `nombre_emp`, `password`, `created_at`, `updated_at`) VALUES
(1, 'mouadshop', '0617125803', 'mouad@gmail.com', 'MAD', 'entreprise/images/zxqAQZeKCWZ1ELHrZYiESxBYC2MQaRpxXYKPJqld.jpg', 'http://localhost:8000/mouadshop', 0, '$2y$12$JbLkUeE/0LXk1zwlMZeoV.iCpTaCccGGxe8WUQ0WMgdlf.DQDrGTe', '2024-12-05 08:49:11', '2024-12-05 08:49:11');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mediassociauxs`
--

CREATE TABLE `mediassociauxs` (
  `id` int(10) UNSIGNED NOT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `facebock` varchar(255) DEFAULT NULL,
  `telegrame` varchar(255) DEFAULT NULL,
  `instagrame` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `entreprise_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mediassociauxs`
--

INSERT INTO `mediassociauxs` (`id`, `whatsapp`, `facebock`, `telegrame`, `instagrame`, `created_at`, `updated_at`, `entreprise_id`) VALUES
(5, 'w', 'f', 'h', 'i', '2024-10-26 10:33:39', '2024-10-26 10:33:39', 10),
(6, NULL, NULL, NULL, NULL, '2024-10-26 11:29:53', '2024-10-26 11:29:53', 11),
(7, NULL, NULL, NULL, NULL, '2024-10-26 11:30:14', '2024-10-26 11:30:14', 11),
(8, NULL, NULL, NULL, NULL, '2024-10-26 11:39:27', '2024-10-26 11:39:27', NULL),
(9, NULL, NULL, NULL, NULL, '2024-10-28 09:02:02', '2024-10-28 09:02:02', 12),
(10, NULL, NULL, NULL, NULL, '2024-10-29 12:34:54', '2024-10-29 12:34:54', 13),
(11, NULL, NULL, NULL, NULL, '2024-10-29 12:41:54', '2024-10-29 12:41:54', 14),
(12, NULL, NULL, NULL, NULL, '2024-10-30 11:37:45', '2024-10-30 11:37:45', 20),
(13, NULL, NULL, NULL, NULL, '2024-10-30 11:39:48', '2024-10-30 11:39:48', 21),
(14, NULL, NULL, NULL, NULL, '2024-10-31 08:06:39', '2024-10-31 08:06:39', 22),
(15, 'https://wa.me/1234567890', 'https://www.facebook.com/ton_profil', 'https://www.instagram.com/ton_profil', 'https://t.me/ton_profil', '2024-10-31 12:30:35', '2024-10-31 12:30:35', 23),
(16, NULL, NULL, NULL, NULL, '2024-11-01 15:40:16', '2024-11-01 15:40:16', 24),
(17, NULL, NULL, NULL, NULL, '2024-11-07 08:05:00', '2024-11-07 08:05:00', 25),
(18, NULL, NULL, NULL, NULL, '2024-11-18 13:37:34', '2024-11-18 13:37:34', 26),
(19, NULL, NULL, NULL, NULL, '2024-11-25 08:32:58', '2024-11-25 08:32:58', 27),
(20, NULL, NULL, NULL, NULL, '2024-11-25 08:38:04', '2024-11-25 08:38:04', 28),
(21, NULL, NULL, NULL, NULL, '2024-11-25 08:40:44', '2024-11-25 08:40:44', 29),
(22, NULL, NULL, NULL, NULL, '2024-11-28 12:33:35', '2024-11-28 12:33:35', 30),
(23, NULL, NULL, NULL, NULL, '2024-11-28 12:41:36', '2024-11-28 12:41:36', 31),
(24, NULL, NULL, NULL, NULL, '2024-12-05 08:49:20', '2024-12-05 08:49:20', 1);

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-10-23 09:53:57', '2024-10-23 09:53:57');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-10-23 09:53:57', '2024-10-23 09:53:57', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2024-10-23 09:53:57', '2024-10-23 09:53:57', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2024-10-23 09:53:57', '2024-10-23 09:53:57', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-10-23 09:53:57', '2024-10-23 09:53:57', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2024-10-23 09:53:57', '2024-10-23 09:53:57', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2024-10-23 09:53:57', '2024-10-23 09:53:57', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2024-10-23 09:53:57', '2024-10-23 09:53:57', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2024-10-23 09:53:57', '2024-10-23 09:53:57', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2024-10-23 09:53:57', '2024-10-23 09:53:57', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2024-10-23 09:53:57', '2024-10-23 09:53:57', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2024-10-23 09:53:57', '2024-10-23 09:53:57', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2024-10-23 09:53:58', '2024-10-23 09:53:58', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2024-10-23 09:53:58', '2024-10-23 09:53:58', 'voyager.pages.index', NULL),
(14, 1, 'Entreprises', '', '_self', NULL, NULL, NULL, 15, '2024-10-23 11:17:58', '2024-10-23 11:17:58', 'voyager.entreprises.index', NULL),
(15, 1, 'Clients', '', '_self', NULL, NULL, NULL, 16, '2024-10-23 12:12:22', '2024-10-23 12:12:22', 'voyager.clients.index', NULL),
(16, 1, 'Products', '', '_self', NULL, NULL, NULL, 17, '2024-10-23 12:12:38', '2024-10-23 12:12:38', 'voyager.products.index', NULL),
(17, 1, 'Orders', '', '_self', NULL, NULL, NULL, 18, '2024-10-23 12:13:10', '2024-10-23 12:13:10', 'voyager.orders.index', NULL),
(18, 1, 'Mediassociauxes', '', '_self', NULL, NULL, NULL, 19, '2024-10-23 12:13:37', '2024-10-23 12:13:37', 'voyager.mediassociauxs.index', NULL),
(19, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 20, '2024-11-14 12:14:21', '2024-11-14 12:14:21', 'voyager.contacts.index', NULL),
(20, 1, 'Ratings', '', '_self', NULL, NULL, NULL, 21, '2024-11-23 10:49:37', '2024-11-23 10:49:37', 'voyager.ratings.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `quentite` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prix_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `quentite`, `product_id`, `client_id`, `created_at`, `updated_at`, `prix_total`) VALUES
(1, NULL, 7, 2, '2024-11-11 10:03:52', '2024-11-11 10:03:52', NULL),
(2, NULL, 15, 3, '2024-11-11 10:20:17', '2024-11-11 10:20:17', NULL),
(3, 1, 15, 6, '2024-11-11 10:27:47', '2024-11-11 10:27:47', 150),
(4, 1, 7, 7, '2024-11-11 13:02:10', '2024-11-11 13:02:10', 150),
(5, 1, 9, 7, '2024-11-11 13:02:10', '2024-11-11 13:02:10', 3000),
(6, 1, 13, 7, '2024-11-11 13:02:10', '2024-11-11 13:02:10', 300),
(7, 1, 14, 7, '2024-11-11 13:02:10', '2024-11-11 13:02:10', 350),
(8, 2, 7, 8, '2024-11-11 13:23:04', '2024-11-11 13:23:04', 300),
(9, 2, 13, 8, '2024-11-11 13:23:04', '2024-11-11 13:23:04', 600),
(10, 1, 11, 8, '2024-11-11 13:23:04', '2024-11-11 13:23:04', 7000),
(11, 1, 7, 9, '2024-11-12 08:06:01', '2024-11-12 08:06:01', 150),
(12, 1, 14, 9, '2024-11-12 08:06:01', '2024-11-12 08:06:01', 350),
(13, 20, 7, 10, '2024-11-14 11:57:58', '2024-11-14 11:57:58', 300),
(14, 1, 12, 10, '2024-11-14 11:57:58', '2024-11-14 11:57:58', 150),
(15, 1, 7, 11, '2024-11-18 13:43:50', '2024-11-18 13:43:50', 150),
(16, 3, 9, 12, '2024-11-21 08:29:30', '2024-11-21 08:29:30', 9000),
(17, 1, 13, 12, '2024-11-21 08:29:30', '2024-11-21 08:29:30', 300),
(18, 2, 12, 13, '2024-11-23 19:43:28', '2024-11-23 19:43:28', 300),
(19, 1, 9, 13, '2024-11-23 19:43:28', '2024-11-23 19:43:28', 3000),
(20, 2, 11, 13, '2024-11-23 19:43:28', '2024-11-23 19:43:28', 14000),
(21, 1, 7, 13, '2024-11-23 19:43:28', '2024-11-23 19:43:28', 150),
(22, 8, 7, 14, '2024-11-23 19:57:31', '2024-11-23 19:57:31', 1200),
(23, 7, 7, 15, '2024-11-23 19:59:33', '2024-11-23 19:59:33', 1050),
(24, 7, 7, 16, '2024-11-23 19:59:50', '2024-11-23 19:59:50', 1050),
(25, 7, 7, 17, '2024-11-23 20:00:26', '2024-11-23 20:00:26', 1050),
(26, 1, 9, 18, '2024-11-25 08:44:33', '2024-11-25 08:44:33', 3000),
(27, 2, 7, 18, '2024-11-25 08:44:33', '2024-11-25 08:44:33', 300),
(28, 1, 9, 19, '2024-11-25 08:44:43', '2024-11-25 08:44:43', 3000),
(29, 2, 7, 19, '2024-11-25 08:44:43', '2024-11-25 08:44:43', 300),
(30, 1, 9, 20, '2024-11-25 08:52:43', '2024-11-25 08:52:43', 3000),
(31, 2, 7, 20, '2024-11-25 08:52:43', '2024-11-25 08:52:43', 300),
(32, 1, 9, 21, '2024-11-25 08:52:58', '2024-11-25 08:52:58', 3000),
(33, 2, 7, 21, '2024-11-25 08:52:58', '2024-11-25 08:52:58', 300),
(34, 1, 9, 22, '2024-11-25 08:57:05', '2024-11-25 08:57:05', 3000),
(35, 1, 9, 23, '2024-11-25 09:39:44', '2024-11-25 09:39:44', 3000),
(36, 1, 9, 24, '2024-11-25 09:40:51', '2024-11-25 09:40:51', 3000),
(37, 2, 7, 24, '2024-11-25 09:40:51', '2024-11-25 09:40:51', 300),
(38, 2, 15, 25, '2024-11-25 09:56:50', '2024-11-25 09:56:50', 300),
(39, 1, 13, 26, '2024-11-25 10:03:21', '2024-11-25 10:03:21', 300),
(40, 1, 9, 26, '2024-11-25 10:03:21', '2024-11-25 10:03:21', 3000),
(41, 1, 13, 27, '2024-11-25 10:41:27', '2024-11-25 10:41:27', 300),
(42, 1, 14, 27, '2024-11-25 10:41:27', '2024-11-25 10:41:27', 350),
(43, 1, 9, 28, '2024-11-25 10:53:39', '2024-11-25 10:53:39', 3000),
(44, 1, 13, 28, '2024-11-25 10:53:39', '2024-11-25 10:53:39', 300),
(45, 1, 7, 29, '2024-11-25 11:10:37', '2024-11-25 11:10:37', 150),
(46, 1, 9, 30, '2024-11-25 11:24:50', '2024-11-25 11:24:50', 3000),
(47, 1, 9, 31, '2024-11-26 13:50:00', '2024-11-26 13:50:00', 3000),
(48, 1, 13, 31, '2024-11-26 13:50:00', '2024-11-26 13:50:00', 300),
(49, 1, 7, 32, '2024-11-28 12:44:34', '2024-11-28 12:44:34', 150),
(50, 1, 11, 32, '2024-11-28 12:44:34', '2024-11-28 12:44:34', 7000);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2024-10-23 09:53:58', '2024-10-23 09:53:58');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(2, 'browse_bread', NULL, '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(3, 'browse_database', NULL, '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(4, 'browse_media', NULL, '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(5, 'browse_compass', NULL, '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(6, 'browse_menus', 'menus', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(7, 'read_menus', 'menus', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(8, 'edit_menus', 'menus', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(9, 'add_menus', 'menus', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(10, 'delete_menus', 'menus', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(11, 'browse_roles', 'roles', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(12, 'read_roles', 'roles', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(13, 'edit_roles', 'roles', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(14, 'add_roles', 'roles', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(15, 'delete_roles', 'roles', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(16, 'browse_users', 'users', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(17, 'read_users', 'users', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(18, 'edit_users', 'users', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(19, 'add_users', 'users', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(20, 'delete_users', 'users', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(21, 'browse_settings', 'settings', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(22, 'read_settings', 'settings', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(23, 'edit_settings', 'settings', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(24, 'add_settings', 'settings', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(25, 'delete_settings', 'settings', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(26, 'browse_categories', 'categories', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(27, 'read_categories', 'categories', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(28, 'edit_categories', 'categories', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(29, 'add_categories', 'categories', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(30, 'delete_categories', 'categories', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(31, 'browse_posts', 'posts', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(32, 'read_posts', 'posts', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(33, 'edit_posts', 'posts', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(34, 'add_posts', 'posts', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(35, 'delete_posts', 'posts', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(36, 'browse_pages', 'pages', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(37, 'read_pages', 'pages', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(38, 'edit_pages', 'pages', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(39, 'add_pages', 'pages', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(40, 'delete_pages', 'pages', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(41, 'browse_entreprises', 'entreprises', '2024-10-23 11:17:58', '2024-10-23 11:17:58'),
(42, 'read_entreprises', 'entreprises', '2024-10-23 11:17:58', '2024-10-23 11:17:58'),
(43, 'edit_entreprises', 'entreprises', '2024-10-23 11:17:58', '2024-10-23 11:17:58'),
(44, 'add_entreprises', 'entreprises', '2024-10-23 11:17:58', '2024-10-23 11:17:58'),
(45, 'delete_entreprises', 'entreprises', '2024-10-23 11:17:58', '2024-10-23 11:17:58'),
(46, 'browse_clients', 'clients', '2024-10-23 12:12:22', '2024-10-23 12:12:22'),
(47, 'read_clients', 'clients', '2024-10-23 12:12:22', '2024-10-23 12:12:22'),
(48, 'edit_clients', 'clients', '2024-10-23 12:12:22', '2024-10-23 12:12:22'),
(49, 'add_clients', 'clients', '2024-10-23 12:12:22', '2024-10-23 12:12:22'),
(50, 'delete_clients', 'clients', '2024-10-23 12:12:22', '2024-10-23 12:12:22'),
(51, 'browse_products', 'products', '2024-10-23 12:12:38', '2024-10-23 12:12:38'),
(52, 'read_products', 'products', '2024-10-23 12:12:38', '2024-10-23 12:12:38'),
(53, 'edit_products', 'products', '2024-10-23 12:12:38', '2024-10-23 12:12:38'),
(54, 'add_products', 'products', '2024-10-23 12:12:38', '2024-10-23 12:12:38'),
(55, 'delete_products', 'products', '2024-10-23 12:12:38', '2024-10-23 12:12:38'),
(56, 'browse_orders', 'orders', '2024-10-23 12:13:10', '2024-10-23 12:13:10'),
(57, 'read_orders', 'orders', '2024-10-23 12:13:10', '2024-10-23 12:13:10'),
(58, 'edit_orders', 'orders', '2024-10-23 12:13:10', '2024-10-23 12:13:10'),
(59, 'add_orders', 'orders', '2024-10-23 12:13:10', '2024-10-23 12:13:10'),
(60, 'delete_orders', 'orders', '2024-10-23 12:13:10', '2024-10-23 12:13:10'),
(61, 'browse_mediassociauxs', 'mediassociauxs', '2024-10-23 12:13:37', '2024-10-23 12:13:37'),
(62, 'read_mediassociauxs', 'mediassociauxs', '2024-10-23 12:13:37', '2024-10-23 12:13:37'),
(63, 'edit_mediassociauxs', 'mediassociauxs', '2024-10-23 12:13:37', '2024-10-23 12:13:37'),
(64, 'add_mediassociauxs', 'mediassociauxs', '2024-10-23 12:13:37', '2024-10-23 12:13:37'),
(65, 'delete_mediassociauxs', 'mediassociauxs', '2024-10-23 12:13:37', '2024-10-23 12:13:37'),
(66, 'browse_contacts', 'contacts', '2024-11-14 12:14:21', '2024-11-14 12:14:21'),
(67, 'read_contacts', 'contacts', '2024-11-14 12:14:21', '2024-11-14 12:14:21'),
(68, 'edit_contacts', 'contacts', '2024-11-14 12:14:21', '2024-11-14 12:14:21'),
(69, 'add_contacts', 'contacts', '2024-11-14 12:14:21', '2024-11-14 12:14:21'),
(70, 'delete_contacts', 'contacts', '2024-11-14 12:14:21', '2024-11-14 12:14:21'),
(71, 'browse_ratings', 'ratings', '2024-11-23 10:49:37', '2024-11-23 10:49:37'),
(72, 'read_ratings', 'ratings', '2024-11-23 10:49:37', '2024-11-23 10:49:37'),
(73, 'edit_ratings', 'ratings', '2024-11-23 10:49:37', '2024-11-23 10:49:37'),
(74, 'add_ratings', 'ratings', '2024-11-23 10:49:37', '2024-11-23 10:49:37'),
(75, 'delete_ratings', 'ratings', '2024-11-23 10:49:37', '2024-11-23 10:49:37');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-10-23 09:53:58', '2024-10-23 09:53:58');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `entreprise_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `prix`, `stock`, `entreprise_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Play', 'consectetur adipisicing elit. Minima dolores in culpa quod veniam, non adipisci consequatur aut optio. Cupiditate ipsa nemo aspernatur tempora, asperiores quod eius tempore dolore officia.', 350, 10, 12, 'products/images/ykXmxyZn19XBXH3gXgrrA8VP85pyxdpfdvAF9oXZ.jpg', '2024-10-29 09:05:38', '2024-10-29 09:50:01'),
(2, 'Organic', 'in culpa quod veniam, non adipisci consequatur aut optio. Cupiditate ipsa nemo aspernatur tempora, asperiores quod eius tempore dolore officia.', 250, 30, 12, 'products/images/Fncw12i3Ine3IABhf6xGNFksAsA0Wkr3JN6r8Ljd.jpg', '2024-10-29 09:13:01', '2024-10-29 09:59:33'),
(5, 'Organic product', '.JGJHGHJ VJHGJKHJK HGKHKJH', 300, 10, 21, NULL, '2024-10-31 10:52:04', '2024-10-31 10:52:04'),
(6, 'JOUER LES ENFANTS', 'RFJHRJVF RFHJGR RFURG', 150, 10, 22, 'products/images/u5hhA26Dsdro9PZMoX3ghwrnMafuA0fRZeXRq3rc.jpg', '2024-10-31 12:21:43', '2024-10-31 12:22:09'),
(7, 'Play Children', 'YTRTY HHFUYFY UGUYGGHRTHRF', 150, 9, 1, 'products/images/a4YZok6h2g5GFtOndsDJRxvO5Lti6NCrjBTtCYhi.jpg', '2024-10-31 12:31:55', '2024-11-28 12:44:34'),
(8, 'Play Children', 'RGRTYHT TYJTYUJ GTYHTJY', 150, 10, 24, 'products/images/ekDYDE8uTjFSjKaSo3ixm1kG3vHaxtxGt2EIOyDs.jpg', '2024-11-01 15:41:02', '2024-11-01 15:41:17'),
(9, 'Telephone', 'FDJHHJFHD  DBFHDSHJC CBSDHCJKDSHFKD CBDSHJVJSDVJ DHGCHSDFJKDH DHSHDJKSQHDJ', 3000, 0, 1, 'products/images/JAPy77PFi8KMTJpahJUSQ7q56H4K3RGkfVJBBm5Q.png', '2024-11-05 09:33:28', '2024-11-26 13:50:00'),
(11, 'PC PORTABLE', 'DDHFHF KSKJFH JSJKDK JDKDKDK KJSKJDKSJ XJNXJHSJ XSBHC', 7000, 7, 1, 'products/images/RGZKA7dvZTWslZaFupAK6FUodaia27hDTtvOqvEI.png', '2024-11-05 09:34:20', '2024-11-28 12:44:34'),
(12, 'Pelle', 'EHDHFH DNDJJF DJDJFKF DDJDK DJKJDSK DKDJKC DNDDKJ HJDHJ DJKDJKD JKCDCJDCBC', 150, 8, 1, 'products/images/iXEr2WHFWVCaOkSNJGsoaOH4BDYSPvZEOCkUGEBM.jpg', '2024-11-05 09:35:03', '2024-11-23 19:43:28'),
(13, 'Livre', 'DUIFGYUDSGFUY FHHVSHGD FGSDVYFGY FYFGRY SJHFHD DGFGDH DGFG', 300, 7, 1, 'products/images/dzTEN5DeeqMP178R1gYMOcPHbZDGm4mgaOyU8xuG.jpg', '2024-11-05 09:35:42', '2024-11-26 13:50:00'),
(14, 'Makeup', 'HDEGHJFG FHDFHEHJFEBBF UEHFUHEUFBFEUYUIFY DEKJFKE JEHDDJEHJ DJEHJHF ZJZOJD DIJDIDIH DJFDF', 350, 9, 1, 'products/images/ftlUhU6QKSOJr3m6t9k3D0kbelzaTfKPFx08fdzO.jpg', '2024-11-05 09:39:55', '2024-11-25 10:41:27'),
(15, 'Play', 'GDHDFHF DFHFUJFJF', 150, 10, 25, 'products/images/XJ7jxF33SefCyJSdWCNhLZXIfqPmfOFKOw1gWSAn.jpg', '2024-11-07 08:05:43', '2024-11-07 08:05:43');

-- --------------------------------------------------------

--
-- Structure de la table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ratings`
--

INSERT INTO `ratings` (`id`, `rating`, `comment`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'jhjfehjghsr fsjgkjsdgjksdk', 7, '2024-11-23 11:06:01', '2024-11-23 11:06:01'),
(2, 2, 'jkdhvkj cjdshvjkds dsjfhjksd', 7, '2024-11-23 11:27:13', '2024-11-23 11:27:13'),
(3, 2, 'jkdhvkj cjdshvjkds dsjfhjksd', 7, '2024-11-23 11:27:32', '2024-11-23 11:27:32'),
(4, 3, 'hjkhjk gfghgjh fhfh', 12, '2024-11-23 13:39:50', '2024-11-23 13:39:50'),
(5, 2, 'dfjkshfjk sdjfhkjsdf esjkfhjksd dsjfj', 13, '2024-11-23 13:40:18', '2024-11-23 13:40:18'),
(6, 1, 'hllkjm kulk kll', 14, '2024-11-23 13:54:23', '2024-11-23 13:54:23'),
(7, 5, 'gvgujg jk;g i;l', 11, '2024-11-23 13:55:25', '2024-11-23 13:55:25'),
(8, 3, 'nhhhj', 14, '2024-11-23 14:26:08', '2024-11-23 14:26:08'),
(9, 3, 'jhgjytj', 9, '2024-11-23 15:02:12', '2024-11-23 15:02:12'),
(10, 3, 'fhkjsdhf fshshg', 11, '2024-11-23 15:20:18', '2024-11-23 15:20:18'),
(11, 5, 'JHJKH', 7, '2024-11-23 17:18:19', '2024-11-23 17:18:19'),
(12, 5, 'jfffkfk', 7, '2024-11-23 19:19:25', '2024-11-23 19:19:25'),
(13, 4, 'jhfjf', 7, '2024-11-23 19:42:59', '2024-11-23 19:42:59'),
(14, 4, 'GFDHGKJ', 9, '2024-11-25 08:43:59', '2024-11-25 08:43:59'),
(15, 4, 'qshjshshshj', 15, '2024-11-25 09:56:37', '2024-11-25 09:56:37'),
(16, 5, NULL, 12, '2024-11-25 17:08:48', '2024-11-25 17:08:48'),
(17, 4, 'hdhfjfjfjf', 9, '2024-11-26 08:38:44', '2024-11-26 08:38:44'),
(18, 3, 'BHBH', 11, '2024-11-26 09:12:44', '2024-11-26 09:12:44'),
(19, 4, 'othmane', 9, '2024-11-26 13:49:12', '2024-11-26 13:49:12'),
(20, 3, 'BON', 7, '2024-11-28 12:43:53', '2024-11-28 12:43:53');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-10-23 09:53:57', '2024-10-23 09:53:57'),
(2, 'user', 'Normal User', '2024-10-23 09:53:57', '2024-10-23 09:53:57');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2024-10-23 09:53:58', '2024-10-23 09:53:58'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2024-10-23 09:53:58', '2024-10-23 09:53:58');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$12$rkCjEiJuOANunHkU.f/8weqsDmkDiil78kxCZyWMixsCGNqPYg.ES', 'N9sQFic5R41lW3mjuqUFXmOYgIM4pIQoZDYCpfjmqoevc52Z5Fr01zB2quJT', NULL, '2024-10-23 09:53:58', '2024-10-23 09:53:58');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `entreprises`
--
ALTER TABLE `entreprises`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `mediassociauxs`
--
ALTER TABLE `mediassociauxs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `entreprises`
--
ALTER TABLE `entreprises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mediassociauxs`
--
ALTER TABLE `mediassociauxs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
