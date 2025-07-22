-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2025 at 05:32 AM
-- Server version: 10.6.18-MariaDB
-- PHP Version: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karimawww_craft`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `primaryOwnerId` int(11) DEFAULT NULL,
  `fieldId` int(11) DEFAULT NULL,
  `countryCode` varchar(255) NOT NULL,
  `administrativeArea` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `dependentLocality` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `sortingCode` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `addressLine3` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `organizationTaxId` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT 1,
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` int(11) NOT NULL,
  `volumeId` int(11) NOT NULL,
  `uri` text DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isDir` tinyint(1) DEFAULT 0,
  `recordId` int(11) DEFAULT NULL,
  `isSkipped` tinyint(1) DEFAULT 0,
  `inProgress` tinyint(1) DEFAULT 0,
  `completed` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexingsessions`
--

CREATE TABLE `assetindexingsessions` (
  `id` int(11) NOT NULL,
  `indexedVolumes` text DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `processedEntries` int(11) NOT NULL DEFAULT 0,
  `cacheRemoteImages` tinyint(1) DEFAULT NULL,
  `listEmptyFolders` tinyint(1) DEFAULT 0,
  `isCli` tinyint(1) DEFAULT 0,
  `actionRequired` tinyint(1) DEFAULT 0,
  `processIfRootEmpty` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `alt` text DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `alt`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`) VALUES
(12, 1, 1, 1, 'lotus-flower-big.png', 'image', NULL, 1920, 1280, 3540106, NULL, NULL, NULL, '2025-03-13 21:40:17', '2025-03-13 21:40:17', '2025-03-13 21:40:17'),
(32, 1, 1, 1, 'valentina_karima_pic_2025-03-19-100716_zead.png', 'image', NULL, 940, 1040, 1235480, NULL, NULL, NULL, '2025-03-19 10:07:16', '2025-03-13 22:18:52', '2025-03-19 10:07:18'),
(46, 1, 1, 1, 'Embodied-Psychodynamic-Resonance-EPR.png', 'image', NULL, 940, 1040, 1242861, NULL, NULL, NULL, '2025-03-13 22:44:32', '2025-03-13 22:44:32', '2025-03-13 22:44:32'),
(75, 1, 1, 1, 'inspiration-image.png', 'image', NULL, 2624, 1664, 3008288, NULL, NULL, NULL, '2025-03-13 23:19:59', '2025-03-13 23:19:59', '2025-03-13 23:19:59'),
(179, 1, 1, 1, 'MettaWorkshops_4.png', 'image', NULL, 1852, 1344, 2466584, NULL, NULL, NULL, '2025-03-14 00:12:46', '2025-03-14 00:12:46', '2025-03-14 00:12:46'),
(180, 1, 1, 1, 'MettaWorkshops_4-mobile.png', 'image', NULL, 816, 616, 669251, NULL, NULL, NULL, '2025-03-14 00:13:04', '2025-03-14 00:13:04', '2025-03-14 00:13:04'),
(267, 1, 1, 1, 'Embodied-Psychodynamic-Resonance-Session.png', 'image', NULL, 958, 1060, 1414330, NULL, NULL, NULL, '2025-03-14 02:07:49', '2025-03-14 02:07:49', '2025-03-14 02:07:49'),
(363, 1, 1, 1, 'images_2025-03-14-222520_wovp.png', 'image', NULL, 225, 225, 3550, NULL, NULL, NULL, '2025-03-14 22:25:20', '2025-03-14 22:25:20', '2025-03-14 22:25:20'),
(381, 1, 1, 1, 'valentina_karima_pic.png', 'image', NULL, 940, 1040, 1235480, NULL, NULL, NULL, '2025-03-19 10:06:37', '2025-03-19 10:06:37', '2025-03-19 10:06:37'),
(453, 1, 1, 1, 'event_pic.png', 'image', NULL, 593, 449, 348758, NULL, NULL, NULL, '2025-03-19 10:18:24', '2025-03-19 10:18:24', '2025-03-19 10:18:24'),
(463, 1, 1, 1, 'event_pic_2025-03-19-102235_uobs.png', 'image', NULL, 1920, 1280, 775414, NULL, NULL, NULL, '2025-03-19 10:22:36', '2025-03-19 10:22:36', '2025-03-19 10:22:36'),
(470, 1, 1, 1, 'event_pic2.png', 'image', NULL, 1050, 700, 396056, NULL, NULL, NULL, '2025-03-19 10:25:47', '2025-03-19 10:25:47', '2025-03-19 10:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `assets_sites`
--

CREATE TABLE `assets_sites` (
  `assetId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `alt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets_sites`
--

INSERT INTO `assets_sites` (`assetId`, `siteId`, `alt`) VALUES
(12, 1, NULL),
(32, 1, NULL),
(46, 1, NULL),
(75, 1, NULL),
(179, 1, NULL),
(180, 1, NULL),
(267, 1, NULL),
(363, 1, NULL),
(381, 1, NULL),
(453, 1, NULL),
(463, 1, NULL),
(470, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authenticator`
--

CREATE TABLE `authenticator` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `auth2faSecret` varchar(255) DEFAULT NULL,
  `oldTimestamp` int(10) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `changedattributes`
--

INSERT INTO `changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(2, 1, 'title', '2025-03-13 23:24:47', 0, 1),
(6, 1, 'title', '2025-03-19 10:40:57', 0, 1),
(33, 1, 'title', '2025-03-13 23:24:15', 0, 1),
(47, 1, 'title', '2025-03-13 23:24:15', 0, 1),
(61, 1, 'title', '2025-03-13 23:32:59', 0, 1),
(70, 1, 'title', '2025-03-13 23:24:15', 0, 1),
(73, 1, 'postDate', '2025-03-13 23:20:13', 0, 1),
(73, 1, 'slug', '2025-03-13 23:24:25', 0, 1),
(73, 1, 'title', '2025-03-19 10:29:54', 0, 1),
(73, 1, 'uri', '2025-03-13 23:20:13', 0, 1),
(74, 1, 'postDate', '2025-03-13 23:19:28', 0, 1),
(74, 1, 'title', '2025-03-19 10:30:30', 0, 1),
(76, 1, 'postDate', '2025-03-13 23:20:11', 0, 1),
(76, 1, 'slug', '2025-03-13 23:20:11', 0, 1),
(76, 1, 'title', '2025-03-13 23:22:24', 0, 1),
(78, 1, 'title', '2025-03-13 23:57:44', 0, 1),
(96, 1, 'title', '2025-03-13 23:57:44', 0, 1),
(106, 1, 'title', '2025-03-13 23:57:44', 0, 1),
(122, 1, 'title', '2025-03-13 23:57:44', 0, 1),
(131, 1, 'title', '2025-03-13 23:57:44', 0, 1),
(140, 1, 'title', '2025-03-13 23:57:44', 0, 1),
(149, 1, 'title', '2025-03-13 23:57:44', 0, 1),
(157, 1, 'postDate', '2025-03-13 23:59:05', 0, 1),
(157, 1, 'slug', '2025-03-13 23:59:05', 0, 1),
(157, 1, 'title', '2025-03-19 10:27:32', 0, 1),
(157, 1, 'uri', '2025-03-13 23:59:05', 0, 1),
(158, 1, 'postDate', '2025-03-13 23:58:03', 0, 1),
(158, 1, 'title', '2025-03-26 12:57:20', 0, 1),
(185, 1, 'title', '2025-03-19 10:28:34', 0, 1),
(191, 1, 'title', '2025-03-19 10:28:49', 0, 1),
(206, 1, 'title', '2025-03-14 01:08:04', 0, 1),
(210, 1, 'title', '2025-03-19 10:12:54', 0, 1),
(217, 1, 'title', '2025-03-19 10:28:07', 0, 1),
(218, 1, 'title', '2025-03-19 10:28:07', 0, 1),
(238, 1, 'title', '2025-03-19 10:08:43', 0, 1),
(239, 1, 'title', '2025-03-19 10:06:50', 0, 1),
(257, 1, 'title', '2025-03-14 02:07:24', 0, 1),
(261, 1, 'title', '2025-03-14 02:07:50', 0, 1),
(283, 1, 'title', '2025-03-19 10:32:14', 0, 1),
(301, 1, 'title', '2025-03-19 10:31:49', 0, 1),
(302, 1, 'title', '2025-03-19 10:31:49', 0, 1),
(319, 1, 'title', '2025-03-19 10:30:58', 0, 1),
(320, 1, 'title', '2025-03-19 10:30:59', 0, 1),
(365, 1, 'title', '2025-03-19 10:37:37', 0, 1),
(372, 1, 'title', '2025-03-19 10:37:58', 0, 1),
(425, 1, 'title', '2025-03-19 10:29:02', 0, 1),
(449, 1, 'title', '2025-03-19 10:26:20', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `layoutElementUid` char(36) NOT NULL DEFAULT '0',
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `layoutElementUid`, `dateUpdated`, `propagated`, `userId`) VALUES
(2, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-19 10:41:28', 0, 1),
(2, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-13 23:24:47', 0, 1),
(6, 1, 3, '890dcf84-fa63-4443-aee1-0058523e7590', '2025-03-13 21:40:20', 0, 1),
(6, 1, 4, '0d5328b7-613b-4d02-8231-c694170b38b4', '2025-03-19 10:41:28', 0, 1),
(6, 1, 5, 'ae02b7a9-733b-48d9-84b7-4821587c306e', '2025-03-13 22:45:57', 0, 1),
(6, 1, 6, 'cd0615a0-2dd5-48b4-92c8-795928103feb', '2025-03-13 22:08:53', 0, 1),
(13, 1, 7, '033d0eef-2816-4a44-8a29-a76c412495ef', '2025-03-13 22:08:53', 0, 1),
(33, 1, 5, 'fc438791-5351-42a6-8fe8-98bf5b31a0d8', '2025-03-13 22:20:33', 0, 1),
(33, 1, 8, '5b3cf7ba-6a30-467b-8e4d-220f4e2b9105', '2025-03-13 22:44:57', 0, 1),
(47, 1, 5, 'fc438791-5351-42a6-8fe8-98bf5b31a0d8', '2025-03-13 22:45:57', 0, 1),
(61, 1, 4, '66af9589-1520-49a8-982e-6ddca319d308', '2025-03-13 23:32:59', 0, 1),
(70, 1, 3, '717dab41-8e05-4a26-a3fd-ff31e317c4ca', '2025-03-14 00:03:50', 0, 1),
(73, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-19 10:30:30', 0, 1),
(73, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-19 10:29:54', 0, 1),
(74, 1, 3, '54cf3a62-ac71-45b7-8c1e-e7767f84b05f', '2025-03-13 23:20:08', 0, 1),
(74, 1, 3, 'b3e478af-1cfb-4477-be12-08cf53448ceb', '2025-03-19 10:29:54', 0, 1),
(74, 1, 7, 'a9c23139-d423-42de-99b0-8e565396df95', '2025-03-13 23:20:08', 0, 1),
(74, 1, 9, '60bc6b13-68c7-4f42-9864-503cfa5a0254', '2025-03-19 10:30:30', 0, 1),
(76, 1, 4, 'e2add2df-ac40-4a63-a77c-b33d2743035a', '2025-03-19 10:29:54', 0, 1),
(157, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-26 12:57:20', 0, 1),
(157, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-19 10:27:32', 0, 1),
(158, 1, 3, '0e41c5b3-e535-4aa7-a808-ad4cf9b22978', '2025-03-14 00:13:05', 0, 1),
(158, 1, 3, '49e3e828-6795-49c5-a82b-3360a0b3664d', '2025-03-14 00:13:05', 0, 1),
(158, 1, 3, '59560f2d-bf2a-4a28-9c90-837018f49967', '2025-03-13 23:58:59', 0, 1),
(158, 1, 3, 'daaa5d42-b397-4793-8d5e-25ada16deeb1', '2025-03-14 00:13:05', 0, 1),
(158, 1, 3, 'ee77a16c-2740-4126-b391-d88c9f4ff060', '2025-03-14 01:45:46', 0, 1),
(158, 1, 4, 'dffe5daa-5f43-4e4c-bde7-1f63fafb21af', '2025-03-13 23:58:59', 0, 1),
(158, 1, 4, 'eca88837-37fe-4366-9c04-3b186a4046b3', '2025-03-13 23:58:59', 0, 1),
(158, 1, 6, 'a1b6f67c-4169-4740-8a7f-0553380bc446', '2025-03-14 00:13:05', 0, 1),
(158, 1, 11, '3699bcd1-9095-4053-972b-820dc7fdd9fb', '2025-03-26 12:57:20', 0, 1),
(158, 1, 11, '50fd66aa-669e-462b-bfb3-183483ca7f53', '2025-03-19 10:27:32', 0, 1),
(158, 1, 11, 'c6ea490e-ad7d-401f-b119-1404e146ac0e', '2025-03-26 12:57:20', 0, 1),
(158, 1, 13, '6cbe1a93-eb4b-48f0-b47c-fc314d657898', '2025-03-14 01:40:17', 0, 1),
(185, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-19 10:28:34', 0, 1),
(191, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-14 00:32:44', 0, 1),
(191, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-19 10:28:26', 0, 1),
(192, 1, 11, '3699bcd1-9095-4053-972b-820dc7fdd9fb', '2025-03-14 00:32:44', 0, 1),
(206, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-19 10:29:02', 0, 1),
(206, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-14 01:08:04', 0, 1),
(210, 1, 3, '9eab9ff9-f871-4714-b7e2-14dc6eecd027', '2025-03-19 10:12:54', 0, 1),
(210, 1, 13, '4721bfa5-e6ff-4509-8955-aa45e5a79c16', '2025-03-14 01:08:04', 0, 1),
(217, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-19 10:28:07', 0, 1),
(217, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-19 10:28:07', 0, 1),
(218, 1, 3, '0e41c5b3-e535-4aa7-a808-ad4cf9b22978', '2025-03-19 10:28:07', 0, 1),
(218, 1, 3, '59560f2d-bf2a-4a28-9c90-837018f49967', '2025-03-19 10:28:07', 0, 1),
(218, 1, 11, '3699bcd1-9095-4053-972b-820dc7fdd9fb', '2025-03-19 10:28:07', 0, 1),
(218, 1, 11, '50fd66aa-669e-462b-bfb3-183483ca7f53', '2025-03-19 10:28:07', 0, 1),
(233, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-19 10:08:43', 0, 1),
(238, 1, 4, '5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8', '2025-03-19 10:08:43', 0, 1),
(238, 1, 6, '96585f50-ea7c-47c9-839b-5d02b5dfd8ab', '2025-03-19 10:06:50', 0, 1),
(238, 1, 13, '329bb1a1-e734-46d1-8cb5-c3d843e6e98a', '2025-03-16 12:05:19', 0, 1),
(239, 1, 7, '033d0eef-2816-4a44-8a29-a76c412495ef', '2025-03-19 10:06:50', 0, 1),
(239, 1, 7, '08a88bb4-156c-4633-84f5-5cd9f5b24e0e', '2025-03-19 10:06:50', 0, 1),
(243, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-14 02:06:00', 0, 1),
(248, 1, 13, '329bb1a1-e734-46d1-8cb5-c3d843e6e98a', '2025-03-14 02:06:00', 0, 1),
(257, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-14 02:07:50', 0, 1),
(257, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-14 02:07:24', 0, 1),
(261, 1, 6, '96585f50-ea7c-47c9-839b-5d02b5dfd8ab', '2025-03-14 02:07:50', 0, 1),
(272, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-14 06:01:40', 0, 1),
(276, 1, 13, '4b9b779b-97a7-4623-9b1f-5126efd2ddd7', '2025-03-14 06:01:39', 0, 1),
(283, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-19 10:32:14', 0, 1),
(301, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-19 10:31:49', 0, 1),
(301, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-19 10:31:49', 0, 1),
(302, 1, 3, 'b3e478af-1cfb-4477-be12-08cf53448ceb', '2025-03-19 10:31:49', 0, 1),
(302, 1, 9, '60bc6b13-68c7-4f42-9864-503cfa5a0254', '2025-03-19 10:31:49', 0, 1),
(303, 1, 4, 'e2add2df-ac40-4a63-a77c-b33d2743035a', '2025-03-19 10:31:49', 0, 1),
(319, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-19 10:31:59', 0, 1),
(319, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-19 10:30:58', 0, 1),
(320, 1, 3, 'b3e478af-1cfb-4477-be12-08cf53448ceb', '2025-03-19 10:31:59', 0, 1),
(320, 1, 9, '60bc6b13-68c7-4f42-9864-503cfa5a0254', '2025-03-19 10:30:59', 0, 1),
(321, 1, 4, 'e2add2df-ac40-4a63-a77c-b33d2743035a', '2025-03-19 10:30:59', 0, 1),
(337, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-14 06:32:39', 0, 1),
(349, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-19 10:37:37', 0, 1),
(351, 1, 1, '438d9de0-7df1-456e-9382-f2c3bd5ea318', '2025-03-19 10:37:58', 0, 1),
(351, 1, 2, '3da30d7e-ecb1-4689-b813-cf5e010cefbc', '2025-03-14 22:26:07', 0, 1),
(365, 1, 4, '5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8', '2025-03-19 10:37:37', 0, 1),
(372, 1, 4, '5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8', '2025-03-19 10:37:58', 0, 1),
(425, 1, 3, '890dcf84-fa63-4443-aee1-0058523e7590', '2025-03-19 10:12:34', 0, 1),
(425, 1, 4, '0d5328b7-613b-4d02-8231-c694170b38b4', '2025-03-19 10:29:02', 0, 1),
(425, 1, 5, 'ae02b7a9-733b-48d9-84b7-4821587c306e', '2025-03-19 10:13:07', 0, 1),
(425, 1, 6, 'cd0615a0-2dd5-48b4-92c8-795928103feb', '2025-03-19 10:26:20', 0, 1),
(449, 1, 7, '033d0eef-2816-4a44-8a29-a76c412495ef', '2025-03-19 10:26:20', 0, 1),
(449, 1, 7, '08a88bb4-156c-4633-84f5-5cd9f5b24e0e', '2025-03-19 10:26:20', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(5) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `traces` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`traces`)),
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `trackChanges` tinyint(1) NOT NULL DEFAULT 0,
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elementactivity`
--

CREATE TABLE `elementactivity` (
  `elementId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elementactivity`
--

INSERT INTO `elementactivity` (`elementId`, `userId`, `siteId`, `draftId`, `type`, `timestamp`) VALUES
(2, 1, 1, NULL, 'edit', '2025-03-19 10:41:24'),
(2, 1, 1, NULL, 'save', '2025-03-19 10:41:28'),
(32, 1, 1, NULL, 'save', '2025-03-19 10:07:18'),
(73, 1, 1, NULL, 'edit', '2025-03-19 10:30:29'),
(73, 1, 1, NULL, 'save', '2025-03-19 10:30:30'),
(76, 1, 1, NULL, 'save', '2025-03-13 23:20:11'),
(157, 1, 1, NULL, 'edit', '2025-03-26 12:57:19'),
(157, 1, 1, NULL, 'save', '2025-03-26 12:57:20'),
(185, 1, 1, NULL, 'edit', '2025-03-19 10:28:34'),
(185, 1, 1, NULL, 'save', '2025-03-19 10:28:34'),
(191, 1, 1, NULL, 'edit', '2025-03-19 10:28:47'),
(191, 1, 1, NULL, 'save', '2025-03-19 10:28:49'),
(206, 1, 1, NULL, 'edit', '2025-03-19 10:29:01'),
(206, 1, 1, NULL, 'save', '2025-03-19 10:29:02'),
(217, 1, 1, NULL, 'edit', '2025-03-19 10:28:07'),
(217, 1, 1, NULL, 'save', '2025-03-19 10:28:08'),
(233, 1, 1, NULL, 'edit', '2025-03-19 10:08:43'),
(233, 1, 1, NULL, 'save', '2025-03-19 10:08:43'),
(243, 1, 1, NULL, 'edit', '2025-03-14 02:05:59'),
(243, 1, 1, NULL, 'save', '2025-03-14 02:06:00'),
(257, 1, 1, NULL, 'edit', '2025-03-14 02:07:49'),
(257, 1, 1, NULL, 'save', '2025-03-14 02:07:50'),
(272, 1, 1, NULL, 'edit', '2025-03-14 06:01:38'),
(272, 1, 1, NULL, 'save', '2025-03-14 06:01:39'),
(283, 1, 1, NULL, 'edit', '2025-03-19 10:32:13'),
(283, 1, 1, NULL, 'save', '2025-03-19 10:32:14'),
(301, 1, 1, NULL, 'edit', '2025-03-19 10:31:47'),
(301, 1, 1, NULL, 'save', '2025-03-19 10:31:49'),
(319, 1, 1, NULL, 'edit', '2025-03-19 10:31:58'),
(319, 1, 1, NULL, 'save', '2025-03-19 10:31:59'),
(337, 1, 1, NULL, 'edit', '2025-03-14 06:32:39'),
(337, 1, 1, NULL, 'save', '2025-03-14 06:32:39'),
(349, 1, 1, NULL, 'edit', '2025-03-19 10:37:16'),
(349, 1, 1, NULL, 'save', '2025-03-19 10:37:37'),
(351, 1, 1, NULL, 'edit', '2025-03-14 22:26:07'),
(351, 1, 1, NULL, 'save', '2025-03-19 10:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `deletedWithOwner`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2025-03-13 20:24:07', '2025-03-13 20:24:07', NULL, NULL, NULL, 'e27afea4-66c3-4de8-b6dc-1098f2f08bc5'),
(2, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 20:45:36', '2025-03-19 10:41:28', NULL, NULL, NULL, '20027675-f5f2-42e9-bc0e-96392feeb4f0'),
(3, 2, NULL, 1, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 20:45:36', '2025-03-13 20:45:36', NULL, NULL, NULL, '01ad47df-9a2e-4d53-aff0-585147d85c34'),
(6, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-13 20:58:05', '2025-03-19 10:41:28', NULL, NULL, NULL, '91eaa074-2bd7-45c3-8be2-f6eab1b6ce22'),
(7, 2, NULL, 2, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 20:58:05', '2025-03-13 20:58:05', NULL, NULL, NULL, '03d23135-4aa7-4740-a9f9-9895b0786080'),
(8, 6, NULL, 3, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-13 20:58:05', '2025-03-13 20:58:05', NULL, NULL, NULL, 'f759792f-b722-4e5c-a26b-681793ae1bbf'),
(12, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-13 21:40:17', '2025-03-13 21:40:17', NULL, NULL, NULL, '5922a184-230a-4f6a-9fae-73a1f7819a27'),
(13, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-13 21:40:20', '2025-03-13 22:08:53', NULL, NULL, NULL, '21208d81-5d92-45f8-8c69-b199f65486f3'),
(14, 2, NULL, 4, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 21:40:20', '2025-03-13 21:40:20', NULL, NULL, NULL, 'c72af585-820e-4d50-9579-7f4f9d351a9f'),
(15, 6, NULL, 5, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-13 21:40:20', '2025-03-13 21:40:20', NULL, NULL, NULL, 'dfe22fd2-3ddb-4ef2-b42c-d95594f5e4d2'),
(16, 13, NULL, 6, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-13 21:40:20', '2025-03-13 21:40:20', NULL, NULL, NULL, 'ada6b889-5cd8-4c26-9f2b-81abdc53e383'),
(20, 2, NULL, 7, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:08:41', '2025-03-13 22:08:41', NULL, NULL, NULL, '4134abb1-64e0-464d-843e-dbe893efa490'),
(21, 6, NULL, 8, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:08:41', '2025-03-13 22:08:41', NULL, NULL, NULL, '1893314f-162d-49cc-86f0-d9abf485cd92'),
(22, 13, NULL, 9, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:08:41', '2025-03-13 22:08:41', NULL, NULL, NULL, '38d341e2-bad8-443c-bc1d-20fb06bec2dd'),
(26, 2, NULL, 10, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:08:53', '2025-03-13 22:08:53', NULL, NULL, NULL, '640a37fa-4478-4098-8bbe-359d77a4544c'),
(27, 6, NULL, 11, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:08:53', '2025-03-13 22:08:53', NULL, NULL, NULL, '279eb032-c56c-4630-9df5-f7856aa6e287'),
(28, 13, NULL, 12, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:08:53', '2025-03-13 22:08:53', NULL, NULL, NULL, '07eaba3b-8707-406c-b6f8-6784c106f20e'),
(32, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-13 22:18:52', '2025-03-19 10:07:18', NULL, NULL, NULL, '91a95e46-5d96-4d5b-b82b-c01abb4d5bf1'),
(33, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:19:22', '2025-03-13 23:24:15', NULL, NULL, NULL, '7c6f5dcc-9430-4087-9ee9-88c4518e6169'),
(34, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:19:22', '2025-03-13 22:19:22', NULL, NULL, NULL, 'b98af89c-542b-452a-87fc-b84ef53f389d'),
(35, 2, NULL, 13, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:19:22', '2025-03-13 22:19:22', NULL, NULL, NULL, 'c2f23f07-b3f5-44c1-b7b7-a746814995dc'),
(36, 33, NULL, 14, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:19:22', '2025-03-13 22:19:22', NULL, NULL, NULL, '98fd6fe0-b34a-4209-9c2e-89b835df4136'),
(37, 34, NULL, 15, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:19:22', '2025-03-13 22:19:22', NULL, NULL, NULL, 'a0992333-004b-41f9-ab2a-ca421644d96d'),
(40, 2, NULL, 16, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:20:33', '2025-03-13 22:20:33', NULL, NULL, NULL, '46be68cc-58c3-4c98-857d-6feaa66f4c50'),
(41, 33, NULL, 17, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:20:33', '2025-03-13 22:20:33', NULL, NULL, NULL, '0f49d177-ab48-42ad-84a1-15033bbd9b4c'),
(46, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-13 22:44:32', '2025-03-13 22:44:32', NULL, NULL, NULL, '80aea47a-4d1c-47b1-86ac-f99e09e727cd'),
(47, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:44:57', '2025-03-13 23:24:15', NULL, NULL, NULL, '4ebe9a94-63f6-4bc7-a905-f4f00a49e0a3'),
(48, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:44:57', '2025-03-13 22:44:57', NULL, NULL, NULL, '3cd76eae-841f-4c73-afcc-47929ed7bd6e'),
(49, 2, NULL, 18, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:44:57', '2025-03-13 22:44:58', NULL, NULL, NULL, 'bfe12416-787d-41a1-94e6-c840a386e97c'),
(50, 33, NULL, 19, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:44:57', '2025-03-13 22:44:58', NULL, NULL, NULL, '96967eda-90fd-468e-9fd7-1cdf3c1ad6fa'),
(51, 47, NULL, 20, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:44:57', '2025-03-13 22:44:58', NULL, NULL, NULL, '38b5db0d-7fb0-432d-ace0-8acc0c577fb1'),
(52, 48, NULL, 21, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:44:57', '2025-03-13 22:44:58', NULL, NULL, NULL, '7c6be40c-bb2b-4ba7-9361-be7bd796914c'),
(56, 2, NULL, 22, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:45:57', '2025-03-13 22:45:57', NULL, NULL, NULL, 'f314a029-9626-4116-8c27-b8b21ae2b045'),
(57, 6, NULL, 23, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:45:57', '2025-03-13 22:45:57', NULL, NULL, NULL, '07412115-d556-4dca-982b-9cfe5e61d137'),
(58, 47, NULL, 24, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:45:57', '2025-03-13 22:45:57', NULL, NULL, NULL, 'd07b74e0-77d1-4490-90b8-c346257b5cec'),
(61, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:57:30', '2025-03-13 23:32:59', NULL, NULL, NULL, '7f595960-0890-44fe-9c0c-aff0eee04859'),
(62, 2, NULL, 25, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:57:30', '2025-03-13 22:57:30', NULL, NULL, NULL, '600e2130-85f1-4abf-93e1-b656f2e6d943'),
(63, 61, NULL, 26, 6, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:57:30', '2025-03-13 22:57:30', NULL, NULL, NULL, '2474f617-9d8b-4765-acd9-a724231b20e0'),
(66, 2, NULL, 27, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:57:43', '2025-03-13 22:57:43', NULL, NULL, NULL, '0554d30c-6b27-4060-af4d-6ba14b208620'),
(67, 61, NULL, 28, 6, 'craft\\elements\\Entry', 1, 0, '2025-03-13 22:57:43', '2025-03-13 22:57:43', NULL, NULL, NULL, '57a51b0f-b0dc-4242-8f21-6d529c9e7cf8'),
(70, NULL, NULL, NULL, 11, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:14:45', '2025-03-14 00:03:50', NULL, NULL, NULL, 'b0ee7b6e-750c-4241-b656-5fd84ac727f5'),
(71, 2, NULL, 29, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:14:45', '2025-03-13 23:14:45', NULL, NULL, NULL, '6bdeb8c0-e742-47a0-b685-e63c624588ea'),
(72, 70, NULL, 30, 11, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:14:45', '2025-03-13 23:14:45', NULL, NULL, NULL, '001c4c30-029c-45ed-803d-4dff0c788c25'),
(73, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:19:20', '2025-03-19 10:30:30', NULL, NULL, NULL, '7ea28f40-cc97-4d26-8bbc-786b22700419'),
(74, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:19:28', '2025-03-19 10:30:30', NULL, NULL, NULL, 'b976f2dd-20fd-408b-b656-f03ffbb4d630'),
(75, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-13 23:19:59', '2025-03-13 23:19:59', NULL, NULL, NULL, '7a2ccf02-8ce8-4417-9017-761e0cd2a100'),
(76, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:20:08', '2025-03-19 10:29:53', NULL, NULL, NULL, '3312e1f1-b11b-4996-81d8-dc3372a5b3fa'),
(77, 73, NULL, 31, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:20:13', '2025-03-13 23:20:13', NULL, NULL, NULL, '05ccb9c4-c10c-44f8-91cb-f25552f8f3dc'),
(78, 74, NULL, 32, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:20:08', '2025-03-13 23:57:44', NULL, NULL, NULL, '444b31b8-e2a9-48fe-968f-21d03621b4bb'),
(79, 76, NULL, 33, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:20:11', '2025-03-13 23:20:13', NULL, NULL, NULL, '038158a8-edaa-44ab-bb82-6bde4943f5c0'),
(89, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-19 10:30:30', NULL, '2025-03-19 10:30:30', NULL, 'fb7e57e9-fdf0-4bff-a917-e686d4b1722e'),
(90, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-19 10:30:30', NULL, '2025-03-19 10:30:30', NULL, '2498282f-d19b-4404-9032-f2c27be50c9f'),
(91, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-19 10:30:30', NULL, '2025-03-19 10:30:30', NULL, '4673d866-1964-4957-b3d3-f2fcd7541ef6'),
(92, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-19 10:30:30', NULL, '2025-03-19 10:30:30', NULL, '2f581e53-993b-4651-9fa5-b99d2e87ceb8'),
(93, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-19 10:30:30', NULL, '2025-03-19 10:30:30', NULL, 'cb081c61-4673-4bc4-a873-d42ba2b728cc'),
(94, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-19 10:30:30', NULL, '2025-03-19 10:30:30', NULL, '1980f03d-ace5-4cdf-a6ec-4872ab064c40'),
(95, 73, NULL, 34, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24', NULL, NULL, NULL, '7c36162d-ad35-43f0-898b-30ad02738dd4'),
(96, 74, NULL, 35, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-13 23:57:44', NULL, NULL, NULL, 'a274cbe6-0772-4255-ba5c-0763f4bb6c45'),
(97, 76, NULL, 36, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24', NULL, NULL, NULL, '266bf5ac-e7e7-415f-8003-0e5eb7a22cc8'),
(98, 89, NULL, 37, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24', NULL, '2025-03-19 10:30:30', NULL, '8ee3b208-1041-45ca-9f4b-133ac7988eef'),
(99, 90, NULL, 38, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24', NULL, '2025-03-19 10:30:30', NULL, '8e1736a5-2093-459d-9ebd-0e2a9142db25'),
(100, 91, NULL, 39, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24', NULL, '2025-03-19 10:30:30', NULL, '4485211e-7105-4abc-93b8-3eb6f1e3098c'),
(101, 92, NULL, 40, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24', NULL, '2025-03-19 10:30:30', NULL, 'df8993b6-ee3c-46b4-99da-8cd809e015aa'),
(102, 93, NULL, 41, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24', NULL, '2025-03-19 10:30:30', NULL, 'e9d9814b-0eff-4ec9-bf60-63ea7b007c20'),
(103, 94, NULL, 42, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24', NULL, '2025-03-19 10:30:30', NULL, 'f50dc5d9-022a-409b-812d-c1a83f139d96'),
(105, 73, NULL, 43, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:24:25', '2025-03-13 23:24:25', NULL, NULL, NULL, 'c2a06f9b-f01e-4b6b-ba93-7d7e08dc9ebc'),
(106, 74, NULL, 44, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:24:15', '2025-03-13 23:57:44', NULL, NULL, NULL, 'fb595ca0-bd10-43f1-88a2-26155ad5fe31'),
(108, 2, NULL, 45, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:24:47', '2025-03-13 23:24:47', NULL, NULL, NULL, 'e7080465-f7cc-4027-a246-f26430212924'),
(109, 6, NULL, 46, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:24:15', '2025-03-13 23:24:47', NULL, NULL, NULL, '151a722f-360a-4a91-a2a5-9e69ce617a77'),
(110, 33, NULL, 47, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:24:15', '2025-03-13 23:24:47', NULL, NULL, NULL, '31d2ed7e-b737-46a3-a07c-a0f63c9c81af'),
(111, 47, NULL, 48, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:24:15', '2025-03-13 23:24:47', NULL, NULL, NULL, '07da2aa5-f231-498a-98bd-ab9eb825795a'),
(112, 61, NULL, 49, 6, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:24:15', '2025-03-13 23:24:47', NULL, NULL, NULL, 'c4719807-c5d7-4856-ad98-a58b38c497ec'),
(113, 70, NULL, 50, 11, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:24:15', '2025-03-13 23:24:47', NULL, NULL, NULL, '8df0ff5d-39ab-4a2d-b20c-ba20779fb91f'),
(114, 73, NULL, 51, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:25:14', '2025-03-13 23:25:14', NULL, NULL, NULL, 'a6e01a74-c327-47d6-ac4c-a865b4647163'),
(117, 2, NULL, 52, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:32:48', '2025-03-13 23:32:48', NULL, NULL, NULL, 'a8dd8c86-b774-468d-9849-9ac8e45da82e'),
(118, 61, NULL, 53, 6, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:32:48', '2025-03-13 23:32:48', NULL, NULL, NULL, '17e395ca-87b7-4354-bf13-3d9d5b90a7e9'),
(119, 2, NULL, 54, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:32:59', '2025-03-13 23:32:59', NULL, NULL, NULL, '0112dcd9-e067-4e81-adf9-758d450a97be'),
(120, 61, NULL, 55, 6, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:32:59', '2025-03-13 23:32:59', NULL, NULL, NULL, '8dda7d1d-cf1a-4382-b851-d9903b857814'),
(121, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', NULL, 'ee10086c-cc55-4fe8-882b-5a7642b3081f'),
(122, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, '650818fa-a282-42e6-86ed-c3d4f0a5deb2'),
(123, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, '9c537f49-a0c9-4917-9010-d609713e34af'),
(124, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, 'a52083e1-1492-4aac-97e8-323052fa0b3b'),
(125, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, '51584fd0-0d66-4c15-8bc2-22e8f22126fc'),
(126, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, '5da3593c-9981-4b4d-87b8-128aedc14ecf'),
(127, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, 'c8ce62dc-3d09-4593-b187-013c2a873cff'),
(128, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, 'c3efebec-42ee-408a-962a-c7041ee99a8f'),
(129, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, '97e41396-ea0d-4959-acb5-0246b2173e22'),
(130, 121, NULL, 56, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21', NULL, '2025-03-19 10:32:20', NULL, 'a8cb94a8-19fc-40a0-9356-050075c3d2c7'),
(131, 122, NULL, 57, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-13 23:57:44', NULL, '2025-03-19 10:32:20', NULL, '1ba47497-7e25-4ddf-9bb8-573a37131174'),
(132, 123, NULL, 58, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21', NULL, '2025-03-19 10:32:20', NULL, 'ecb9b173-f27b-4e9d-998d-3357d48adbca'),
(133, 124, NULL, 59, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21', NULL, '2025-03-19 10:32:20', NULL, '916fa4e8-fc54-43f9-bea5-80768501262c'),
(134, 125, NULL, 60, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21', NULL, '2025-03-19 10:32:20', NULL, '5f01c038-48b8-4aa0-a64f-753a3637a674'),
(135, 126, NULL, 61, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21', NULL, '2025-03-19 10:32:20', NULL, '1ff81b16-a596-4ae0-9698-1f9906252573'),
(136, 127, NULL, 62, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21', NULL, '2025-03-19 10:32:20', NULL, '69055eb7-5889-45f6-8392-559451a9d85d'),
(137, 128, NULL, 63, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21', NULL, '2025-03-19 10:32:20', NULL, '0dab27db-6ca6-4fd1-9266-471c8340ad7f'),
(138, 129, NULL, 64, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21', NULL, '2025-03-19 10:32:20', NULL, '8d33a826-dd92-4255-a9e9-a495caa27558'),
(139, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', NULL, 'b48845c0-0603-4ba6-be17-1858eed4bceb'),
(140, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, '855d4e17-795e-4c1c-b71f-f68363e507df'),
(141, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, '3c86cf57-c236-4c50-bfe0-e2ff7fddb3a7'),
(142, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, 'fd74b4af-8adb-4f7e-bf5b-0640211940ab'),
(143, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, '0bf83255-74fa-42e6-9db9-0dbbbf76fd3b'),
(144, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, 'f53502c8-8308-4742-92a8-c0c92b7e7a41'),
(145, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, 'da9738c0-2c6a-496f-b4a4-0b074d6951ce'),
(146, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, '245c276b-db86-405c-a331-012a740491d3'),
(147, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-19 10:32:20', NULL, '2025-03-19 10:32:20', 1, '2edf0d94-e02f-4c26-969f-8adbbbe0feae'),
(148, 139, NULL, 65, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24', NULL, '2025-03-19 10:32:20', NULL, '65975213-175e-4ab6-8d3e-a04258e88f68'),
(149, 140, NULL, 66, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-13 23:57:44', NULL, '2025-03-19 10:32:20', NULL, '7a3b858f-42d7-4d77-987c-562802ef20de'),
(150, 141, NULL, 67, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24', NULL, '2025-03-19 10:32:20', NULL, '89d27338-5f7d-4eaf-9c00-06b6828570dd'),
(151, 142, NULL, 68, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24', NULL, '2025-03-19 10:32:20', NULL, '263efb48-644a-4907-8204-1f6e93fe150f'),
(152, 143, NULL, 69, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24', NULL, '2025-03-19 10:32:20', NULL, 'c10e5005-ef4f-4602-ac93-cc3831cf7e6e'),
(153, 144, NULL, 70, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24', NULL, '2025-03-19 10:32:20', NULL, 'e2aa85bd-c75b-4575-acae-6a58e768925c'),
(154, 145, NULL, 71, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24', NULL, '2025-03-19 10:32:20', NULL, 'f6b0ac33-d55b-457e-a6c5-ffe5d96009b3'),
(155, 146, NULL, 72, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24', NULL, '2025-03-19 10:32:20', NULL, '4daa6556-4014-49bf-be6a-38a56c6e9adf'),
(156, 147, NULL, 73, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24', NULL, '2025-03-19 10:32:20', NULL, '4db42d04-a923-4511-9b18-024104912a0a'),
(157, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:57:55', '2025-03-26 12:57:20', NULL, NULL, NULL, 'c1acdfb2-5d10-412b-b34a-a95362521c6a'),
(158, NULL, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:58:02', '2025-03-26 12:57:20', NULL, NULL, NULL, 'e5bb38da-04f6-43a9-872f-5f9cdf15f880'),
(159, 157, NULL, 74, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:59:05', '2025-03-13 23:59:05', NULL, NULL, NULL, '8f741e6e-686d-45e1-a41d-6fae1a86ab09'),
(160, 158, NULL, 75, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:58:59', '2025-03-13 23:59:05', NULL, NULL, NULL, '84ff0ddb-a5b4-4420-b37d-eecd64bb4898'),
(161, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:59:15', '2025-03-14 00:14:20', NULL, '2025-03-14 00:14:20', NULL, 'd7a40c44-121b-4886-9334-ae8af473509a'),
(162, NULL, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:59:15', '2025-03-14 00:14:20', NULL, '2025-03-14 00:14:20', 1, '8bba4f9a-bf24-4885-adf8-d1746361c789'),
(163, 161, NULL, 76, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:59:15', '2025-03-13 23:59:15', NULL, '2025-03-14 00:14:20', NULL, '01b1f901-503c-4d7f-9796-97adbbd31c0c'),
(164, 162, NULL, 77, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:59:15', '2025-03-13 23:59:15', NULL, '2025-03-14 00:14:20', NULL, '924b223f-6953-4b61-92dc-21b8f153878d'),
(165, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:59:18', '2025-03-14 00:14:20', NULL, '2025-03-14 00:14:20', NULL, '616317f4-c0cf-466f-85e5-3585d08c4566'),
(166, NULL, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:59:18', '2025-03-14 00:14:20', NULL, '2025-03-14 00:14:20', 1, '09987190-58e6-42f9-985b-53917372665f'),
(167, 165, NULL, 78, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:59:18', '2025-03-13 23:59:18', NULL, '2025-03-14 00:14:20', NULL, '0ba05b94-f2cf-4762-8d42-ab8af6b161e4'),
(168, 166, NULL, 79, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-13 23:59:18', '2025-03-13 23:59:18', NULL, '2025-03-14 00:14:20', NULL, '06a48ecf-9bef-4b41-bc6a-1edb6804df6d'),
(172, NULL, NULL, NULL, 13, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:03:50', '2025-03-14 00:03:50', NULL, NULL, NULL, '234c9075-d953-4bce-8535-f259e8741e72'),
(173, 2, NULL, 80, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:03:50', '2025-03-14 00:03:51', NULL, NULL, NULL, '78888dc4-8c69-4f88-ad79-1772cd5282c7'),
(174, 70, NULL, 81, 11, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:03:50', '2025-03-14 00:03:51', NULL, NULL, NULL, 'dab8e305-dab8-41b3-9ec2-cf95c91acd6d'),
(175, 172, NULL, 82, 13, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:03:50', '2025-03-14 00:03:51', NULL, NULL, NULL, 'd0dcf943-9f05-47a7-809f-12d7fd64831e'),
(179, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-14 00:12:45', '2025-03-14 00:12:45', NULL, NULL, NULL, 'c8762878-f6f5-4c30-a5e8-4d8f0b1306c1'),
(180, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-14 00:13:04', '2025-03-14 00:13:04', NULL, NULL, NULL, '93bbe0f4-213e-4fec-849e-94e69731c097'),
(181, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:13:05', '2025-03-14 00:13:05', NULL, NULL, NULL, 'a40c6c35-334e-4c41-b6dc-978147aab038'),
(182, 157, NULL, 83, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:13:05', '2025-03-14 00:13:05', NULL, NULL, NULL, '347049bd-7262-4b6f-bdd5-e3c2fd653a8a'),
(183, 158, NULL, 84, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:13:05', '2025-03-14 00:13:05', NULL, NULL, NULL, 'fb654820-03e1-489d-9ea3-baa30dc961d0'),
(184, 181, NULL, 85, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:13:05', '2025-03-14 00:13:05', NULL, NULL, NULL, '157f608c-a667-41f2-a4e9-bfe04f956967'),
(185, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:23', '2025-03-19 10:28:34', NULL, NULL, NULL, 'ec6c2a4c-7723-4370-b1f0-565863c1bc6b'),
(186, NULL, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:23', '2025-03-14 00:14:23', NULL, NULL, NULL, 'ad0b4ae5-c130-4777-b7f6-7421a4f5e5cb'),
(187, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:23', '2025-03-14 00:14:23', NULL, NULL, NULL, '16f143c7-a806-419a-9dcd-55de4490bf36'),
(188, 185, NULL, 86, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:23', '2025-03-14 00:14:23', NULL, NULL, NULL, 'd6e39318-2563-435f-b192-5592a85d5bbe'),
(189, 186, NULL, 87, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:23', '2025-03-14 00:14:23', NULL, NULL, NULL, '6cd4e2e8-2cac-4137-935d-31163439e701'),
(190, 187, NULL, 88, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:23', '2025-03-14 00:14:23', NULL, NULL, NULL, '9db8a8ce-31ab-4cf4-8014-1455e27be67c'),
(191, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:24', '2025-03-19 10:28:49', NULL, NULL, NULL, 'a59f6d02-dfd7-4ff3-a17b-267085340d2b'),
(192, NULL, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:24', '2025-03-14 00:32:44', NULL, NULL, NULL, '308b7514-8fb1-4091-bb10-8242d3822c33'),
(193, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:24', '2025-03-14 00:14:24', NULL, NULL, NULL, 'c9186734-b48a-4dc6-a370-c613bfc3718e'),
(194, 191, NULL, 89, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:24', '2025-03-14 00:14:24', NULL, NULL, NULL, '8054589d-ea7b-4caf-b7e9-c1d646c36d13'),
(195, 192, NULL, 90, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:24', '2025-03-14 00:14:24', NULL, NULL, NULL, '60ac20b0-2b83-49ba-aa5f-4e2935eb11be'),
(196, 193, NULL, 91, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:14:24', '2025-03-14 00:14:24', NULL, NULL, NULL, '2cd4adfe-4317-4c63-a3dc-5c8af8ee943d'),
(197, 157, NULL, 92, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:31:40', '2025-03-14 00:31:40', NULL, NULL, NULL, 'cc5346f9-61dd-4f29-9f5e-88ef3b96f99c'),
(200, 157, NULL, 93, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:32:26', '2025-03-14 00:32:26', NULL, NULL, NULL, '27d532e0-6991-415d-9a1b-7f7cf285bdec'),
(201, 158, NULL, 94, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:32:26', '2025-03-14 00:32:26', NULL, NULL, NULL, '4a2e962f-ab5b-480e-9793-672a459f8d34'),
(204, 191, NULL, 95, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:32:44', '2025-03-14 00:32:44', NULL, NULL, NULL, '2f17cf3c-5abd-4fb4-bb70-c923562eda87'),
(205, 192, NULL, 96, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 00:32:44', '2025-03-14 00:32:44', NULL, NULL, NULL, '9e56b353-5bfc-4858-858d-fa3fe1db84c4'),
(206, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:06:46', '2025-03-19 10:29:02', NULL, NULL, NULL, 'e09b3919-2bbf-474f-81f6-6cb031f7ae70'),
(207, 206, NULL, 97, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:06:46', '2025-03-14 01:06:46', NULL, NULL, NULL, '52412891-f2d3-4179-b552-8e9e62ff82c3'),
(210, NULL, NULL, NULL, 13, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:06:59', '2025-03-19 10:12:54', NULL, NULL, NULL, '6f0160f0-7632-4c4d-b7ff-8515ee5aa655'),
(211, 206, NULL, 98, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:06:59', '2025-03-14 01:06:59', NULL, NULL, NULL, 'e9da81f9-fcd5-4dd7-805a-49b3090d93f7'),
(212, 210, NULL, 99, 13, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:06:59', '2025-03-14 01:06:59', NULL, NULL, NULL, '4a8171ca-6bf4-4d83-97b4-83eb56d045db'),
(215, 206, NULL, 100, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:08:04', '2025-03-14 01:08:04', NULL, NULL, NULL, 'd2feab3c-2c94-4099-8578-2983a739bf35'),
(216, 210, NULL, 101, 13, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:08:04', '2025-03-14 01:08:04', NULL, NULL, NULL, 'd03128fc-9a30-4bc8-b637-866e1c6da687'),
(217, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:09:39', '2025-03-19 10:28:07', NULL, NULL, NULL, '922aa366-3430-48e0-9c27-4d57ec4e6e38'),
(218, NULL, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:09:39', '2025-03-19 10:28:07', NULL, NULL, NULL, '230ed0ce-caf5-44fe-a761-e43a4a755d42'),
(219, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:09:39', '2025-03-14 01:09:39', NULL, NULL, NULL, 'b867c49d-8a4f-4790-ab6d-4210fc37b736'),
(220, 217, NULL, 102, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:09:39', '2025-03-14 01:09:39', NULL, NULL, NULL, 'd3714525-8e4b-48bf-90ee-a4ea013c5738'),
(221, 218, NULL, 103, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:09:39', '2025-03-14 01:09:39', NULL, NULL, NULL, 'd2d7a334-0433-45b7-a0dd-7d480dd0dbdc'),
(222, 219, NULL, 104, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:09:39', '2025-03-14 01:09:40', NULL, NULL, NULL, '080cd97a-c6b1-4516-b05f-21fc120120ed'),
(225, 157, NULL, 105, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:40:17', '2025-03-14 01:40:17', NULL, NULL, NULL, '18c40492-07f3-4a9f-9008-4c3e470b7f8b'),
(226, 158, NULL, 106, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:40:17', '2025-03-14 01:40:17', NULL, NULL, NULL, '688af7f9-a495-4aae-920f-67f0b2f159ad'),
(229, 157, NULL, 107, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:40:27', '2025-03-14 01:40:27', NULL, NULL, NULL, '06e63911-98e0-48b8-9439-ac06fbac3904'),
(230, 158, NULL, 108, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:40:27', '2025-03-14 01:40:27', NULL, NULL, NULL, '921af011-3848-4c39-bb84-d478a86f7aa2'),
(231, 157, NULL, 109, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:45:46', '2025-03-14 01:45:46', NULL, NULL, NULL, '2311f4eb-f95e-40b9-93bb-4810fd67b27b'),
(232, 158, NULL, 110, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-14 01:45:46', '2025-03-14 01:45:46', NULL, NULL, NULL, '97f79ade-420e-4d79-a914-443c4071a36b'),
(233, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:00:30', '2025-03-19 10:08:43', NULL, NULL, NULL, 'd4120f59-e57e-4171-9416-49f254b773e6'),
(234, 233, NULL, 111, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:00:30', '2025-03-14 02:00:30', NULL, NULL, NULL, '76640afa-c8e6-45e2-85fc-26d8c8b9cdad'),
(238, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:00:56', '2025-03-19 10:08:43', NULL, NULL, NULL, 'ce0373d1-e34d-407f-b8b8-e924f1ba914d'),
(239, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:00:56', '2025-03-19 10:06:50', NULL, NULL, NULL, '74591c8f-ae2f-48a2-bd73-ce712b981a63'),
(240, 233, NULL, 112, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:00:56', '2025-03-14 02:00:56', NULL, NULL, NULL, '00723de1-9e90-44e3-8f85-a14a273a2bdc'),
(241, 238, NULL, 113, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:00:56', '2025-03-14 02:00:56', NULL, NULL, NULL, '917918b5-1860-4cf2-9eb8-a1d4a899ee8d'),
(242, 239, NULL, 114, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:00:56', '2025-03-14 02:00:56', NULL, NULL, NULL, '739101d8-e27e-4df0-adcd-7e1a6e6fc69a'),
(243, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:02:05', '2025-03-14 02:06:00', NULL, NULL, NULL, 'd51630d8-eef5-4af8-aa8d-efb87391d21c'),
(244, 243, NULL, 115, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:02:05', '2025-03-14 02:02:05', NULL, NULL, NULL, '0c3eae81-14e3-4c03-94b0-5d6fa18fb03f'),
(248, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:02:53', '2025-03-14 02:06:00', NULL, NULL, NULL, '611c1b80-3db5-4fdd-9d46-ebfc41831134'),
(249, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:02:53', '2025-03-14 02:02:53', NULL, NULL, NULL, 'ba22aa2f-21ae-4896-b4f4-fc9675d1d02d'),
(250, 243, NULL, 116, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:02:53', '2025-03-14 02:02:53', NULL, NULL, NULL, '31873b54-0a3c-4799-bd3f-90385f8e9582'),
(251, 248, NULL, 117, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:02:53', '2025-03-14 02:02:53', NULL, NULL, NULL, 'bc99d10f-2490-4a8f-bec1-e616513a1961'),
(252, 249, NULL, 118, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:02:53', '2025-03-14 02:02:53', NULL, NULL, NULL, '6f070767-7794-4474-b5aa-bbab83eace8b'),
(255, 243, NULL, 119, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:06:00', '2025-03-14 02:06:00', NULL, NULL, NULL, '15b4fefe-dc7c-444c-8884-3feda1d9a72c'),
(256, 248, NULL, 120, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:06:00', '2025-03-14 02:06:00', NULL, NULL, NULL, 'e3bebb55-15a8-4e12-bf50-1d4fdef894f8'),
(257, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:06:51', '2025-03-14 02:07:50', NULL, NULL, NULL, '5a7a7c86-9bda-4264-91e9-687e0381af87'),
(258, 257, NULL, 121, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:06:51', '2025-03-14 02:06:51', NULL, NULL, NULL, '6639ce76-7ce8-4d7e-b460-c87b31c780e3'),
(261, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:07:24', '2025-03-14 02:07:50', NULL, NULL, NULL, '20da6661-ee38-4eb9-846d-0d8deb865b94'),
(262, 257, NULL, 122, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:07:24', '2025-03-14 02:07:24', NULL, NULL, NULL, '2666481b-6f7c-4af8-861a-c58f3e3135a9'),
(263, 261, NULL, 123, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:07:24', '2025-03-14 02:07:24', NULL, NULL, NULL, 'f80d38ad-0cba-4556-9b1d-c9b13f2e90c0'),
(267, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-14 02:07:48', '2025-03-14 02:07:48', NULL, NULL, NULL, 'eaef483c-057f-4b4a-98dd-62b3d24f5032'),
(268, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:07:50', '2025-03-14 02:07:50', NULL, NULL, NULL, 'd6da7717-f88d-4c45-b1bd-e221ab805e22'),
(269, 257, NULL, 124, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:07:50', '2025-03-14 02:07:50', NULL, NULL, NULL, 'c4dd2384-eabe-4839-a663-9fd97a1a3d24'),
(270, 261, NULL, 125, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:07:50', '2025-03-14 02:07:50', NULL, NULL, NULL, '2957d382-2204-414f-b5e3-8c56647de2d1'),
(271, 268, NULL, 126, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 02:07:50', '2025-03-14 02:07:50', NULL, NULL, NULL, '929e72b3-b43c-4b7b-85d6-8e3192ea0796'),
(272, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:00:16', '2025-03-14 06:01:39', NULL, NULL, NULL, 'ddf821b6-daa6-4cbb-9efa-aec4f50da25a'),
(273, 272, NULL, 127, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:00:16', '2025-03-14 06:00:16', NULL, NULL, NULL, '4e405f90-20b1-40f1-b188-7071d8210cff'),
(276, NULL, NULL, NULL, 11, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:00:44', '2025-03-14 06:01:39', NULL, NULL, NULL, 'c68e0224-13a4-499d-a0a6-f841ac9c0c14'),
(277, 272, NULL, 128, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:00:44', '2025-03-14 06:00:44', NULL, NULL, NULL, '71657e8b-7502-48c8-afcc-295fcf68d2e3'),
(278, 276, NULL, 129, 11, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:00:44', '2025-03-14 06:00:45', NULL, NULL, NULL, '5b859ee9-c163-4ea6-a675-910134bda833'),
(281, 272, NULL, 130, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:01:39', '2025-03-14 06:01:39', NULL, NULL, NULL, '0e8c49de-2280-4541-b17b-e73572154d11'),
(282, 276, NULL, 131, 11, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:01:39', '2025-03-14 06:01:39', NULL, NULL, NULL, '18cc518b-7c19-434f-baf9-89b43a31435b'),
(283, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-19 10:32:14', NULL, NULL, NULL, 'bbf43215-59b3-4869-9cd5-2769547a6e59'),
(284, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '27d04144-5222-4318-8092-10f89b376a72'),
(285, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '5b50ce04-d548-4609-8c1f-6676bbba33a0'),
(286, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, 'a60a5760-2c75-43af-9d0f-1e71804bf30e'),
(287, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '031fe8b8-ea3f-4cb1-ad99-9b794b63c651'),
(288, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '77fe0da7-0c7f-4f43-aeb3-dd9e7282e794'),
(289, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '260cd5d9-df45-4623-b0ba-997982818bc4'),
(290, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '21916ca6-f7cf-4ded-a9d0-4d459178f833'),
(291, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '3a5e402a-14f6-4afb-88a5-da43014ea8dd'),
(292, 283, NULL, 132, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, 'fa9196d1-1e0c-4e26-ba81-bbe470db1590'),
(293, 284, NULL, 133, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, 'a58190f4-4331-4a18-ae86-e1a3187569e3'),
(294, 285, NULL, 134, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '33e46081-a91d-4f8a-af04-3c030561aa7c'),
(295, 286, NULL, 135, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '0e2e80ef-836c-48e4-93ee-a103158072e4'),
(296, 287, NULL, 136, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, 'a4cb9f14-dcbd-44cc-ad78-ff46022f8640'),
(297, 288, NULL, 137, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '0b40c08e-577b-45f4-ab65-1a349c8b7c95'),
(298, 289, NULL, 138, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '059a4415-5377-44d0-9e08-1326da2044c9'),
(299, 290, NULL, 139, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, 'b5eb7309-7b8f-4842-97f2-a68a321951dc'),
(300, 291, NULL, 140, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:56', '2025-03-14 06:02:56', NULL, NULL, NULL, '41e9044a-1eab-41b5-b270-05f18b02a06c'),
(301, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-19 10:31:49', NULL, NULL, NULL, '8cf02ad1-d171-48b7-a044-db997cf6e5ee'),
(302, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-19 10:31:49', NULL, NULL, NULL, '122595fa-c5cb-4e45-84b0-34a6ed311053'),
(303, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-19 10:31:49', NULL, NULL, NULL, '8fcd9551-eaff-473e-ad7d-b0959c6cde5c'),
(304, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-19 10:31:49', NULL, '2025-03-19 10:31:49', NULL, '06ea37f5-3472-40be-8998-31916e8dcc27'),
(305, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-19 10:31:49', NULL, '2025-03-19 10:31:49', NULL, '28da94e7-b607-4514-980a-1b39c076545a'),
(306, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-19 10:31:49', NULL, '2025-03-19 10:31:49', NULL, '59320597-caee-44d4-bee4-5e7848f9045f'),
(307, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-19 10:31:49', NULL, '2025-03-19 10:31:49', NULL, '32707333-c938-44d0-ba97-825e42282008'),
(308, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:00', '2025-03-19 10:31:49', NULL, '2025-03-19 10:31:49', NULL, 'c809dd17-4de2-4a51-a704-8b936b6f1ded'),
(309, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:00', '2025-03-19 10:31:49', NULL, '2025-03-19 10:31:49', NULL, '14d04a38-ca41-460c-9041-e66b8335f846'),
(310, 301, NULL, 141, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-14 06:03:00', NULL, NULL, NULL, 'c0a4cd2e-c654-4a00-8ce1-5f081da081dd'),
(311, 302, NULL, 142, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-14 06:03:00', NULL, NULL, NULL, 'f481e13d-e1d8-4188-a0d6-d34874f589da'),
(312, 303, NULL, 143, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-14 06:03:00', NULL, NULL, NULL, 'e7b73c5c-0ca7-4e1c-b9bf-0dfbc935c604'),
(313, 304, NULL, 144, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-14 06:03:00', NULL, '2025-03-19 10:31:49', NULL, '7b17cb6a-a424-4826-94d6-71f17e7e7a0a'),
(314, 305, NULL, 145, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-14 06:03:00', NULL, '2025-03-19 10:31:49', NULL, 'fc418485-7215-4532-adfe-bc0b179edae1'),
(315, 306, NULL, 146, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-14 06:03:00', NULL, '2025-03-19 10:31:49', NULL, 'f82dafb9-1a3a-48c7-8f3d-fbaa16c33179'),
(316, 307, NULL, 147, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:02:59', '2025-03-14 06:03:00', NULL, '2025-03-19 10:31:49', NULL, 'eed2062b-63a0-4653-bf80-9acedccae4be'),
(317, 308, NULL, 148, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:00', '2025-03-14 06:03:00', NULL, '2025-03-19 10:31:49', NULL, '39b60f63-1649-43c4-9d9f-4a1f844e3fb1'),
(318, 309, NULL, 149, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:00', '2025-03-14 06:03:00', NULL, '2025-03-19 10:31:49', NULL, '221a596c-5ee0-4068-8e2c-44f6af043c02'),
(319, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-19 10:31:59', NULL, NULL, NULL, '0382e16a-f283-4d92-8eb7-29c0321d63b9'),
(320, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-19 10:31:59', NULL, NULL, NULL, '6d70caa0-0c1e-447b-8503-d499d8fe712c'),
(321, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-19 10:30:59', NULL, NULL, NULL, '56445bbb-1b38-45c7-9a5c-9cab041eb712'),
(322, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-19 10:30:59', NULL, '2025-03-19 10:30:59', NULL, 'bccc454d-8f2a-4406-be9c-c3dfd8d80215'),
(323, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-19 10:30:59', NULL, '2025-03-19 10:30:59', NULL, 'ee7af764-b4e2-446f-b4d5-f1ba3ecad572'),
(324, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-19 10:30:59', NULL, '2025-03-19 10:30:59', NULL, 'd3d94318-ef54-4acb-a8bd-3de756ff6351'),
(325, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-19 10:30:59', NULL, '2025-03-19 10:30:59', NULL, '1e2895a8-dc35-4ed8-a6be-d6dfc691d0b4'),
(326, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-19 10:30:59', NULL, '2025-03-19 10:30:59', NULL, 'ae41adcc-17a9-4ffe-95fd-3f61a3874a78'),
(327, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-19 10:30:59', NULL, '2025-03-19 10:30:59', NULL, '9df04932-0a1c-40e2-a7b2-bf5f2415ffac'),
(328, 319, NULL, 150, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02', NULL, NULL, NULL, 'aff2d69c-46c6-456d-abb6-f78283fc5afa'),
(329, 320, NULL, 151, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02', NULL, NULL, NULL, '2dd6695e-4460-4331-a227-d2ea681f0694'),
(330, 321, NULL, 152, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02', NULL, NULL, NULL, '9320a712-a0e2-4b53-916c-26e9cc3f617f'),
(331, 322, NULL, 153, 8, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02', NULL, '2025-03-19 10:30:59', NULL, 'c7b63c45-893c-45e0-bd3e-04ab2256d439'),
(332, 323, NULL, 154, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02', NULL, '2025-03-19 10:30:59', NULL, 'b4aab9ab-29a6-43b2-99ce-a24a0833122c'),
(333, 324, NULL, 155, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02', NULL, '2025-03-19 10:30:59', NULL, 'b2e9fcd1-46d2-4679-bca2-be71ab330df2'),
(334, 325, NULL, 156, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02', NULL, '2025-03-19 10:30:59', NULL, '7b2bfb01-400c-4a29-b929-5939a9a76edd'),
(335, 326, NULL, 157, 9, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02', NULL, '2025-03-19 10:30:59', NULL, 'f16a2ce6-c308-4143-b46c-7f0325d0d02e'),
(336, 327, NULL, 158, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02', NULL, '2025-03-19 10:30:59', NULL, 'a7c62d30-90be-4ac8-830e-0f6631712561'),
(337, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:04:39', '2025-03-14 06:32:39', NULL, NULL, NULL, 'c486c669-4738-4067-8ad0-372b995deca8'),
(338, 337, NULL, 159, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:04:39', '2025-03-14 06:04:39', NULL, NULL, NULL, '2fdf0f17-d302-462c-8a36-b66b5f927ac9'),
(341, NULL, NULL, NULL, 14, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:06:14', '2025-03-14 06:06:14', NULL, NULL, NULL, '6c9ec3ef-c885-4c23-b041-9ee8c0858182'),
(342, 337, NULL, 160, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:06:14', '2025-03-14 06:06:14', NULL, NULL, NULL, '596f33ae-65d6-4449-b89f-1c58ffc35d0b'),
(343, 341, NULL, 161, 14, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:06:14', '2025-03-14 06:06:14', NULL, NULL, NULL, 'cb3b9c82-3223-4f1e-950e-69ed29cbbe60'),
(346, NULL, NULL, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:32:39', '2025-03-14 06:32:39', NULL, NULL, NULL, '6433681c-0888-4251-ab05-3a9bc2e70304'),
(347, 337, NULL, 162, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:32:39', '2025-03-14 06:32:39', NULL, NULL, NULL, '2740f6b1-39ba-4384-aec8-80d4db539314'),
(348, 346, NULL, 163, 15, 'craft\\elements\\Entry', 1, 0, '2025-03-14 06:32:39', '2025-03-14 06:32:39', NULL, NULL, NULL, '0985785e-1d92-476b-b8e8-e66fcb565edb'),
(349, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 21:59:01', '2025-03-19 10:37:37', NULL, NULL, NULL, 'b9a09ae4-9f34-4be9-a5da-82363191935d'),
(350, 349, NULL, 164, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, NULL, NULL, '64127bce-c37a-405e-ac36-78f5d2430a7a'),
(351, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 21:59:01', '2025-03-19 10:37:58', NULL, NULL, NULL, '5e841e56-e3b2-4241-a06c-91d7302b786f'),
(352, 351, NULL, 165, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, NULL, NULL, 'efe18b7c-ff3d-4426-9a9d-cb85e9766407'),
(353, 351, NULL, 166, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 21:59:02', '2025-03-14 21:59:02', NULL, NULL, NULL, '44ac2da1-d960-44d0-8031-ea21efec86b5'),
(354, NULL, NULL, NULL, 17, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:09:35', '2025-03-14 22:09:35', NULL, NULL, NULL, '7fce0ae4-c01f-43d2-b4d5-8a7edbdbb311'),
(355, 354, NULL, 167, 17, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:09:35', '2025-03-14 22:09:35', NULL, NULL, NULL, '05a7cb73-28a8-42ea-9eb2-d464013cff08'),
(356, NULL, NULL, NULL, 16, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:17:32', '2025-03-14 22:21:53', NULL, '2025-03-14 22:21:53', NULL, 'b1e76766-675f-4010-a527-4a0e26e3c15b'),
(357, 356, NULL, 168, 16, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:17:32', '2025-03-14 22:17:32', NULL, '2025-03-14 22:21:53', NULL, '50fdabb1-443c-450d-bbde-5b05b3fb7ba0'),
(358, NULL, NULL, NULL, 16, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:22:03', '2025-03-14 22:22:03', NULL, NULL, NULL, 'ab9413e1-338b-475b-b2b3-b67b0dbead04'),
(359, 358, NULL, 169, 16, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:22:03', '2025-03-14 22:22:03', NULL, NULL, NULL, '993e205a-f731-47be-84e1-e61e98e640c2'),
(363, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-14 22:25:20', '2025-03-14 22:25:20', NULL, NULL, NULL, '4109291e-b878-49cb-806c-3d9ccb84442b'),
(365, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:25:49', '2025-03-19 10:37:37', NULL, NULL, NULL, 'f9c72aa9-426e-4c5f-b855-006a13e14b39'),
(366, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:25:49', '2025-03-14 22:25:49', NULL, NULL, NULL, '0f4f1b15-8e1a-4975-ac14-eb686648352b'),
(367, 349, NULL, 170, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:25:49', '2025-03-14 22:25:49', NULL, NULL, NULL, 'a6da000d-18a7-4732-b0df-ac3ec65e850a'),
(368, 365, NULL, 171, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:25:49', '2025-03-14 22:25:49', NULL, NULL, NULL, 'f53af797-ccf2-4d21-9fec-5a43e7bf9394'),
(369, 366, NULL, 172, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:25:49', '2025-03-14 22:25:49', NULL, NULL, NULL, '862c8d41-edbe-4fcf-9328-185457de3b8a'),
(372, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:26:07', '2025-03-19 10:37:58', NULL, NULL, NULL, '76741adc-9596-4438-b28c-1bb0e2fcfbfc'),
(373, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:26:07', '2025-03-14 22:26:07', NULL, NULL, NULL, '4af17e23-254f-40a5-91c1-97ee977200a5'),
(374, 351, NULL, 173, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:26:07', '2025-03-14 22:26:07', NULL, NULL, NULL, '2a7f5428-cb0a-4b85-beec-89b591b83f4c'),
(375, 372, NULL, 174, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:26:07', '2025-03-14 22:26:07', NULL, NULL, NULL, '0d56b184-3cbf-4ebd-b168-c09f306f0d4b'),
(376, 373, NULL, 175, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-14 22:26:07', '2025-03-14 22:26:07', NULL, NULL, NULL, 'b5d8360a-cd23-4041-99f7-5e595ef9c24d'),
(379, 233, NULL, 176, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-16 12:05:19', '2025-03-16 12:05:20', NULL, NULL, NULL, '73f15976-d5a4-4f51-8457-6bab5e8b5cd2'),
(380, 238, NULL, 177, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-16 12:05:19', '2025-03-16 12:05:20', NULL, NULL, NULL, '205b9d0f-89aa-44f2-8419-296ed80502f3'),
(381, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-19 10:06:37', '2025-03-19 10:06:37', NULL, NULL, NULL, '7b6bebec-9083-4983-aa1c-a29854c03193'),
(385, 233, NULL, 178, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:06:50', '2025-03-19 10:06:50', NULL, NULL, NULL, '95fa0d99-c0d6-41df-bed2-4274e0d1fcfe'),
(386, 238, NULL, 179, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:06:50', '2025-03-19 10:06:50', NULL, NULL, NULL, 'e272e069-0f0f-428b-8c62-b9138d1c19bc'),
(387, 239, NULL, 180, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:06:50', '2025-03-19 10:06:50', NULL, NULL, NULL, '8fc423ac-2ee0-4832-bb21-385d7312e59f'),
(390, 233, NULL, 181, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:08:06', '2025-03-19 10:08:06', NULL, NULL, NULL, '485ba445-5a28-4259-b2b1-d2e309680514'),
(391, 238, NULL, 182, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:08:06', '2025-03-19 10:08:06', NULL, NULL, NULL, 'b826d804-62e2-412a-b848-9edf8cbedac0'),
(394, 233, NULL, 183, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:08:23', '2025-03-19 10:08:23', NULL, NULL, NULL, '305eed9d-2b25-442c-bc05-7dcb039a7103'),
(395, 238, NULL, 184, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:08:23', '2025-03-19 10:08:23', NULL, NULL, NULL, '03a077ae-b862-458b-b3f6-d1a0ace77c29'),
(398, 233, NULL, 185, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:08:43', '2025-03-19 10:08:43', NULL, NULL, NULL, 'ef1186de-1947-497b-a0ea-71108a1199fb'),
(399, 238, NULL, 186, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:08:43', '2025-03-19 10:08:43', NULL, NULL, NULL, 'bdba0a74-ecb6-4505-961f-b5552d3667f5'),
(400, 206, NULL, 187, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:09:32', '2025-03-19 10:09:32', NULL, NULL, NULL, '7371333c-26b3-4ba5-bd68-8e71d2fa1fc0');
INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `deletedWithOwner`, `uid`) VALUES
(401, 210, NULL, 188, 13, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:09:32', '2025-03-19 10:09:32', NULL, NULL, NULL, '8cc7b9fb-c2d5-4dd0-9aa8-1b537b0bf1f7'),
(402, 206, NULL, 189, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:09:38', '2025-03-19 10:09:38', NULL, NULL, NULL, '6f9e6c89-4da4-4915-bc4e-f78379099364'),
(403, 210, NULL, 190, 13, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:09:38', '2025-03-19 10:09:38', NULL, NULL, NULL, '5cd9a743-7963-4fde-a7fa-7638abbadb95'),
(406, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:09:49', '2025-03-19 10:11:07', NULL, '2025-03-19 10:11:07', NULL, '6520cd25-dd65-4640-a931-07830de36a31'),
(407, 206, NULL, 191, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:09:49', '2025-03-19 10:09:49', NULL, NULL, NULL, '75e815f5-cb77-4e65-b800-7af028448c5b'),
(408, 406, NULL, 192, 6, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:09:49', '2025-03-19 10:09:49', NULL, '2025-03-19 10:11:07', NULL, '323d104c-fbe9-47c9-a3ca-b3e1d99c6376'),
(410, 206, NULL, 193, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:10:00', '2025-03-19 10:10:00', NULL, NULL, NULL, '3965a827-3a19-4607-bfca-c7f0bc1336c5'),
(415, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:11:07', '2025-03-19 10:12:20', NULL, '2025-03-19 10:12:20', NULL, '38b34220-c3af-4d9b-b522-cbecae405475'),
(416, 206, NULL, 194, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:11:07', '2025-03-19 10:11:07', NULL, NULL, NULL, '7288da97-4e0b-4471-b713-c442e2885048'),
(417, 415, NULL, 195, 6, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:11:07', '2025-03-19 10:11:07', NULL, '2025-03-19 10:12:20', NULL, 'dad2a3f8-0931-453e-a104-001eacf7244c'),
(420, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:11:33', '2025-03-19 10:12:20', NULL, '2025-03-19 10:12:20', NULL, '5c6aa04b-b9ca-4468-910f-c2a356a0caba'),
(421, 206, NULL, 196, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:11:33', '2025-03-19 10:11:33', NULL, NULL, NULL, '8ff05c4c-e684-48bb-b72b-d33a6e0c4caa'),
(422, 420, NULL, 197, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:11:33', '2025-03-19 10:11:33', NULL, '2025-03-19 10:12:20', NULL, '18c9dc65-176b-4310-bdcf-82f6f0bdb97e'),
(425, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:12:20', '2025-03-19 10:29:02', NULL, NULL, NULL, 'ce4b94d4-d03f-48b2-a9c9-cd34e6f244bf'),
(426, 206, NULL, 198, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:12:20', '2025-03-19 10:12:20', NULL, NULL, NULL, 'e22b8bf8-244f-4a73-bb53-97ecd72721ae'),
(427, 425, NULL, 199, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:12:20', '2025-03-19 10:12:20', NULL, NULL, NULL, 'f57c0770-403a-4cd5-8f89-efb30c4f6b45'),
(428, 206, NULL, 200, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:12:34', '2025-03-19 10:12:34', NULL, NULL, NULL, '0304cef4-558b-4e73-ad8f-b9dddc7710ca'),
(429, 425, NULL, 201, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:12:34', '2025-03-19 10:12:34', NULL, NULL, NULL, 'd712ffb2-6f8c-423d-aa2c-4dd849dcbaea'),
(430, 206, NULL, 202, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:12:41', '2025-03-19 10:12:41', NULL, NULL, NULL, 'ea38b2fb-91e8-4cb8-8d9c-f6816bdfc676'),
(431, 210, NULL, 203, 13, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:12:41', '2025-03-19 10:12:41', NULL, NULL, NULL, 'a361d6cd-d7c4-4a50-85c8-3dd84ca19a10'),
(432, 206, NULL, 204, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:12:54', '2025-03-19 10:12:54', NULL, NULL, NULL, '463a8469-ee8a-464d-8e8d-681ecb162798'),
(433, 210, NULL, 205, 13, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:12:54', '2025-03-19 10:12:54', NULL, NULL, NULL, 'adc96f75-f703-430a-8273-675f0890f8ca'),
(436, 206, NULL, 206, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:13:07', '2025-03-19 10:13:07', NULL, NULL, NULL, '3336c86e-2c86-48b6-a9c9-aa208511c723'),
(437, 425, NULL, 207, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:13:07', '2025-03-19 10:13:07', NULL, NULL, NULL, '848c565f-660c-404e-aa82-8731115bf7a5'),
(440, 206, NULL, 208, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:13:35', '2025-03-19 10:13:35', NULL, NULL, NULL, '568b8d40-f3a6-4c2d-94c1-f0e6809cb219'),
(443, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:13:56', '2025-03-19 10:15:25', NULL, '2025-03-19 10:15:25', NULL, '607b6858-c662-49ce-be16-5b1b3d7f9b6c'),
(444, 206, NULL, 209, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:13:56', '2025-03-19 10:13:56', NULL, NULL, NULL, '6b8fa769-4d7c-4652-9540-e8fad7142820'),
(445, 443, NULL, 210, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:13:56', '2025-03-19 10:13:56', NULL, '2025-03-19 10:15:25', NULL, '1b7e52bf-ff0e-456f-9d73-a2ca124adde3'),
(449, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:15:25', '2025-03-19 10:26:20', NULL, NULL, NULL, '189a740c-b744-4bd0-8074-de4115b18f66'),
(450, 206, NULL, 211, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:15:25', '2025-03-19 10:15:25', NULL, NULL, NULL, 'd77fd62c-a083-44aa-a1bf-44f267cab94c'),
(451, 425, NULL, 212, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:15:25', '2025-03-19 10:15:25', NULL, NULL, NULL, '787daeea-57b2-45dd-91cb-8e28c8abf892'),
(452, 449, NULL, 213, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:15:25', '2025-03-19 10:15:25', NULL, NULL, NULL, '4e28bdc6-a694-4472-9575-d239f0396fef'),
(453, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-19 10:18:24', '2025-03-19 10:18:24', NULL, NULL, NULL, '497a2881-4363-47bb-a8fb-487bacd2dd19'),
(457, 206, NULL, 214, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:18:29', '2025-03-19 10:18:29', NULL, NULL, NULL, '1117d29d-0b11-4cc5-9373-b4dccf5bb561'),
(458, 425, NULL, 215, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:18:29', '2025-03-19 10:18:29', NULL, NULL, NULL, 'bfc88f88-d564-44ad-b345-60ca37105f77'),
(459, 449, NULL, 216, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:18:29', '2025-03-19 10:18:29', NULL, NULL, NULL, '2e4761d9-6a8d-477e-85d7-0f22b41bb5b9'),
(463, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-19 10:22:35', '2025-03-19 10:22:35', NULL, NULL, NULL, '586f88d1-01f4-42eb-9637-10a2b4cf523b'),
(464, 206, NULL, 217, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:22:41', '2025-03-19 10:22:41', NULL, NULL, NULL, '6eacbe14-9480-45e3-9e4e-76ffa268310d'),
(465, 425, NULL, 218, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:22:41', '2025-03-19 10:22:41', NULL, NULL, NULL, '0be8dc3e-eade-472f-9f2d-2c5792392e1a'),
(466, 449, NULL, 219, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:22:41', '2025-03-19 10:22:41', NULL, NULL, NULL, '43f6328b-694c-454b-af12-9017fffa60bc'),
(470, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2025-03-19 10:25:46', '2025-03-19 10:25:46', NULL, NULL, NULL, '51aa5d31-4310-44a4-ba6f-a69967a291ca'),
(471, 206, NULL, 220, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:25:51', '2025-03-19 10:25:51', NULL, NULL, NULL, '625570f2-c5ff-44ac-979a-c0cf91ea3266'),
(472, 425, NULL, 221, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:25:51', '2025-03-19 10:25:51', NULL, NULL, NULL, '1108c8a0-ef08-4af0-b78a-b1b14ec23772'),
(473, 449, NULL, 222, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:25:51', '2025-03-19 10:25:51', NULL, NULL, NULL, '3861c17d-8196-4ada-89fb-04ca796e7786'),
(477, 206, NULL, 223, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:26:20', '2025-03-19 10:26:20', NULL, NULL, NULL, 'dbb66992-7af2-4d74-8186-9c7fe515bf71'),
(478, 425, NULL, 224, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:26:20', '2025-03-19 10:26:20', NULL, NULL, NULL, '726762ff-29fa-481a-952a-a928f7692ee0'),
(479, 449, NULL, 225, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:26:20', '2025-03-19 10:26:20', NULL, NULL, NULL, '4757911d-de34-4024-9817-89ba1fb16c67'),
(482, 157, NULL, 226, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:27:32', '2025-03-19 10:27:32', NULL, NULL, NULL, '80004a46-c555-464c-b3b8-f97bd14825f9'),
(483, 158, NULL, 227, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:27:32', '2025-03-19 10:27:32', NULL, NULL, NULL, 'c973736d-5b97-4b8e-8eb8-f6ab81ad5376'),
(486, 217, NULL, 228, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:07', '2025-03-19 10:28:07', NULL, NULL, NULL, '49a068b2-3351-4b06-9452-b09274b6a595'),
(487, 218, NULL, 229, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:07', '2025-03-19 10:28:08', NULL, NULL, NULL, 'a2c9695e-e88f-4649-ad6b-2a7642972204'),
(489, 191, NULL, 230, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:26', '2025-03-19 10:28:26', NULL, NULL, NULL, '167c436c-e1e2-464e-893d-3a338dd5efb6'),
(491, 185, NULL, 231, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:34', '2025-03-19 10:28:34', NULL, NULL, NULL, '7283d2b9-d5cf-4503-9e80-d535fe479760'),
(492, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:40', '2025-03-19 10:28:40', NULL, NULL, NULL, '1b3ed228-8b0a-4009-9e47-f80b43240367'),
(493, NULL, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:40', '2025-03-19 10:28:40', NULL, NULL, NULL, 'c0ee3cfb-d18a-4e87-aee2-5ffcd369afff'),
(494, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:40', '2025-03-19 10:28:40', NULL, NULL, NULL, 'f2f970a6-f0bd-40eb-ace8-cb18bf4911e5'),
(495, 492, NULL, 232, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:40', '2025-03-19 10:28:40', NULL, NULL, NULL, '6511d060-4c98-4299-9ec3-c651ede57f6e'),
(496, 493, NULL, 233, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:40', '2025-03-19 10:28:40', NULL, NULL, NULL, 'bb39c06b-7979-44da-97a3-83d1370e154f'),
(497, 494, NULL, 234, 4, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:40', '2025-03-19 10:28:40', NULL, NULL, NULL, '924a4478-7fae-40ed-acb1-2756571c59db'),
(499, 191, NULL, 235, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:28:49', '2025-03-19 10:28:49', NULL, NULL, NULL, '7cb2d795-109e-477d-92c4-d19d2d1935b4'),
(502, 206, NULL, 236, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:29:02', '2025-03-19 10:29:02', NULL, NULL, NULL, '13ea0276-e5b3-4740-ad15-f3c30b66c1ad'),
(503, 425, NULL, 237, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:29:02', '2025-03-19 10:29:02', NULL, NULL, NULL, '6660cea1-ab28-439c-b08b-bfc702ad83c5'),
(507, 73, NULL, 238, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:29:53', '2025-03-19 10:29:54', NULL, NULL, NULL, '0920088d-b9b3-4dff-8622-033f3742d56b'),
(508, 74, NULL, 239, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:29:53', '2025-03-19 10:29:54', NULL, NULL, NULL, 'a16b58cb-fb9a-4432-abe3-bc41e849b06b'),
(509, 76, NULL, 240, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:29:53', '2025-03-19 10:29:54', NULL, NULL, NULL, '8d41de91-7141-42a5-9882-2e3dbd7b1b3e'),
(512, 73, NULL, 241, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:30:30', '2025-03-19 10:30:30', NULL, NULL, NULL, '5f7fd040-d673-4666-b31a-9198fc5021bf'),
(513, 74, NULL, 242, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:30:30', '2025-03-19 10:30:30', NULL, NULL, NULL, 'a6f4f2bc-620e-49ee-8a3c-44c619d6f838'),
(517, 319, NULL, 243, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:30:58', '2025-03-19 10:30:59', NULL, NULL, NULL, '9829dca4-fada-4723-8530-b2921c317056'),
(518, 320, NULL, 244, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:30:59', '2025-03-19 10:30:59', NULL, NULL, NULL, 'cc706d7e-9217-4ac8-83ac-7c8bb46322ae'),
(519, 321, NULL, 245, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:30:59', '2025-03-19 10:30:59', NULL, NULL, NULL, '5ba600cc-1d41-4d8d-b8dc-80009eac14d6'),
(523, 301, NULL, 246, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:31:49', '2025-03-19 10:31:49', NULL, NULL, NULL, '0ff9edde-155b-419c-a541-aa8221345344'),
(524, 302, NULL, 247, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:31:49', '2025-03-19 10:31:49', NULL, NULL, NULL, '4e8d8e6e-b7a5-4cc5-b120-48283484bd93'),
(525, 303, NULL, 248, 7, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:31:49', '2025-03-19 10:31:49', NULL, NULL, NULL, 'bcaf335d-5178-4c2b-a35a-9ef1224f2a32'),
(528, 319, NULL, 249, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:31:59', '2025-03-19 10:31:59', NULL, NULL, NULL, '097e12d2-22d0-488b-a98e-156c7e3f0a1d'),
(529, 320, NULL, 250, 10, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:31:59', '2025-03-19 10:31:59', NULL, NULL, NULL, '8e2dca75-8a0f-4b6a-84f5-94f70876fe63'),
(531, 283, NULL, 251, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:32:14', '2025-03-19 10:32:14', NULL, NULL, NULL, 'b3df6f3f-4d5c-46c4-af14-2e3d9e7a0a7c'),
(532, NULL, NULL, NULL, 17, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:33:57', '2025-03-19 10:33:57', NULL, NULL, NULL, 'cdc0438a-8555-43d3-a375-e66c93c33c48'),
(533, 532, NULL, 252, 17, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:33:57', '2025-03-19 10:33:57', NULL, NULL, NULL, '5bbb9de9-c003-4c32-9b68-d483bf0fbf12'),
(536, 349, NULL, 253, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:36:30', '2025-03-19 10:36:30', NULL, NULL, NULL, '6fe87153-8e96-416b-af4c-8831f5ecc2e6'),
(537, 365, NULL, 254, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:36:30', '2025-03-19 10:36:30', NULL, NULL, NULL, '833377fd-7748-4155-8e81-d7aad0734ab9'),
(540, 349, NULL, 255, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:37:37', '2025-03-19 10:37:37', NULL, NULL, NULL, '984edf2f-4dd9-4da8-a6c6-5583c1e11e94'),
(541, 365, NULL, 256, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:37:37', '2025-03-19 10:37:37', NULL, NULL, NULL, '57067df8-9f85-443b-93d5-1b44f9600bc0'),
(542, 351, NULL, 257, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:37:58', '2025-03-19 10:37:58', NULL, NULL, NULL, '1ddc4365-5916-447b-9da5-849e9b0bc291'),
(543, 372, NULL, 258, 5, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:37:58', '2025-03-19 10:37:58', NULL, NULL, NULL, 'a79505f6-9086-4e42-98c0-a37c58dc7f02'),
(546, 2, NULL, 259, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:40:34', '2025-03-19 10:40:34', NULL, NULL, NULL, '0a3d9795-8eb4-4a0f-a345-0a85ad909d37'),
(547, 6, NULL, 260, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:40:34', '2025-03-19 10:40:34', NULL, NULL, NULL, '576cb3bd-7d4c-44bd-972d-cfeb978387d5'),
(550, 2, NULL, 261, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:40:57', '2025-03-19 10:40:57', NULL, NULL, NULL, 'a901f485-27ed-46b3-af47-bce9bb6d63d1'),
(551, 6, NULL, 262, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:40:57', '2025-03-19 10:40:57', NULL, NULL, NULL, '5ffc1bbf-fd36-450a-a021-1b46627d9f12'),
(554, 2, NULL, 263, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:41:28', '2025-03-19 10:41:28', NULL, NULL, NULL, '74c39fb2-d8ac-4175-a929-64a95c9669c7'),
(555, 6, NULL, 264, 1, 'craft\\elements\\Entry', 1, 0, '2025-03-19 10:41:28', '2025-03-19 10:41:28', NULL, NULL, NULL, '6f4a8a0e-e2d1-4703-8185-15e5df26a694'),
(558, 157, NULL, 265, 2, 'craft\\elements\\Entry', 1, 0, '2025-03-26 12:57:20', '2025-03-26 12:57:20', NULL, NULL, NULL, 'e7ea4c60-2f14-47b5-be14-b4ff185d6bd0'),
(559, 158, NULL, 266, 12, 'craft\\elements\\Entry', 1, 0, '2025-03-26 12:57:20', '2025-03-26 12:57:20', NULL, NULL, NULL, '7c63120d-b4dd-4fd0-8ccd-7490c2759701');

-- --------------------------------------------------------

--
-- Table structure for table `elements_bulkops`
--

CREATE TABLE `elements_bulkops` (
  `elementId` int(11) NOT NULL,
  `key` char(10) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elements_owners`
--

CREATE TABLE `elements_owners` (
  `elementId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `sortOrder` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elements_owners`
--

INSERT INTO `elements_owners` (`elementId`, `ownerId`, `sortOrder`) VALUES
(6, 2, 1),
(8, 7, 1),
(13, 6, 1),
(15, 14, 1),
(16, 15, 1),
(21, 20, 1),
(22, 21, 1),
(27, 26, 1),
(27, 35, 1),
(27, 40, 1),
(27, 49, 1),
(28, 27, 1),
(28, 57, 1),
(28, 109, 1),
(28, 547, 1),
(28, 551, 1),
(28, 555, 1),
(33, 2, 2),
(34, 33, 1),
(36, 35, 2),
(37, 36, 1),
(37, 41, 1),
(37, 50, 1),
(37, 110, 1),
(41, 40, 2),
(47, 2, 3),
(48, 47, 1),
(50, 49, 2),
(50, 56, 2),
(50, 62, 2),
(50, 66, 2),
(50, 71, 2),
(51, 49, 3),
(52, 51, 1),
(52, 58, 1),
(52, 111, 1),
(57, 56, 1),
(57, 62, 1),
(57, 66, 1),
(57, 71, 1),
(58, 56, 3),
(58, 62, 3),
(58, 66, 3),
(58, 71, 3),
(61, 2, 4),
(63, 62, 4),
(67, 66, 4),
(67, 71, 4),
(70, 2, 5),
(72, 71, 5),
(74, 73, 1),
(76, 74, 1),
(78, 77, 1),
(79, 78, 1),
(89, 74, 2),
(90, 74, 3),
(91, 74, 4),
(92, 74, 5),
(93, 74, 6),
(94, 74, 7),
(96, 95, 1),
(97, 96, 1),
(97, 106, 1),
(98, 96, 2),
(98, 106, 2),
(98, 508, 2),
(99, 96, 3),
(99, 106, 3),
(99, 508, 3),
(100, 96, 4),
(100, 106, 4),
(100, 508, 4),
(101, 96, 5),
(101, 106, 5),
(101, 508, 5),
(102, 96, 6),
(102, 106, 6),
(102, 508, 6),
(103, 96, 7),
(103, 106, 7),
(103, 508, 7),
(106, 105, 1),
(106, 114, 1),
(109, 108, 1),
(109, 117, 1),
(109, 119, 1),
(109, 173, 1),
(110, 108, 2),
(110, 117, 2),
(110, 119, 2),
(110, 173, 2),
(110, 546, 2),
(110, 550, 2),
(110, 554, 2),
(111, 108, 3),
(111, 117, 3),
(111, 119, 3),
(111, 173, 3),
(111, 546, 3),
(111, 550, 3),
(111, 554, 3),
(112, 108, 4),
(113, 108, 5),
(113, 117, 5),
(113, 119, 5),
(118, 117, 4),
(120, 119, 4),
(120, 173, 4),
(120, 546, 4),
(120, 550, 4),
(120, 554, 4),
(122, 121, 1),
(123, 122, 1),
(124, 122, 2),
(125, 122, 3),
(126, 122, 4),
(127, 122, 5),
(128, 122, 6),
(129, 122, 7),
(131, 130, 1),
(132, 131, 1),
(133, 131, 2),
(134, 131, 3),
(135, 131, 4),
(136, 131, 5),
(137, 131, 6),
(138, 131, 7),
(140, 139, 1),
(141, 140, 1),
(142, 140, 2),
(143, 140, 3),
(144, 140, 4),
(145, 140, 5),
(146, 140, 6),
(147, 140, 7),
(149, 148, 1),
(150, 149, 1),
(151, 149, 2),
(152, 149, 3),
(153, 149, 4),
(154, 149, 5),
(155, 149, 6),
(156, 149, 7),
(158, 157, 1),
(160, 159, 1),
(162, 161, 1),
(164, 163, 1),
(166, 165, 1),
(168, 167, 1),
(172, 2, 6),
(174, 173, 5),
(174, 546, 5),
(174, 550, 5),
(174, 554, 5),
(175, 173, 6),
(175, 546, 6),
(175, 550, 6),
(175, 554, 6),
(181, 158, 1),
(183, 182, 1),
(183, 197, 1),
(184, 183, 1),
(184, 201, 1),
(184, 226, 1),
(184, 230, 1),
(184, 232, 1),
(184, 483, 1),
(184, 559, 1),
(186, 185, 1),
(187, 186, 1),
(189, 188, 1),
(189, 491, 1),
(190, 189, 1),
(192, 191, 1),
(193, 192, 1),
(195, 194, 1),
(196, 195, 1),
(196, 205, 1),
(201, 200, 1),
(205, 204, 1),
(205, 489, 1),
(205, 499, 1),
(210, 206, 2),
(212, 211, 1),
(216, 215, 1),
(218, 217, 1),
(219, 218, 1),
(221, 220, 1),
(222, 221, 1),
(222, 487, 1),
(226, 225, 1),
(230, 229, 1),
(232, 231, 1),
(238, 233, 1),
(239, 238, 1),
(241, 240, 1),
(242, 241, 1),
(242, 380, 1),
(248, 243, 1),
(249, 248, 1),
(251, 250, 1),
(252, 251, 1),
(252, 256, 1),
(256, 255, 1),
(261, 257, 1),
(263, 262, 1),
(268, 261, 1),
(270, 269, 1),
(271, 270, 1),
(276, 272, 1),
(278, 277, 1),
(282, 281, 1),
(284, 283, 1),
(285, 284, 1),
(286, 284, 2),
(287, 284, 3),
(288, 284, 4),
(289, 284, 5),
(290, 284, 6),
(291, 284, 7),
(293, 292, 1),
(293, 531, 1),
(294, 293, 1),
(295, 293, 2),
(296, 293, 3),
(297, 293, 4),
(298, 293, 5),
(299, 293, 6),
(300, 293, 7),
(302, 301, 1),
(303, 302, 1),
(304, 302, 2),
(305, 302, 3),
(306, 302, 4),
(307, 302, 5),
(308, 302, 6),
(309, 302, 7),
(311, 310, 1),
(312, 311, 1),
(313, 311, 2),
(314, 311, 3),
(315, 311, 4),
(316, 311, 5),
(317, 311, 6),
(318, 311, 7),
(320, 319, 1),
(321, 320, 1),
(322, 320, 2),
(323, 320, 3),
(324, 320, 4),
(325, 320, 5),
(326, 320, 6),
(327, 320, 7),
(329, 328, 1),
(330, 329, 1),
(331, 329, 2),
(332, 329, 3),
(333, 329, 4),
(334, 329, 5),
(335, 329, 6),
(336, 329, 7),
(341, 337, 1),
(343, 342, 1),
(343, 347, 1),
(346, 337, 2),
(348, 347, 2),
(365, 349, 1),
(366, 365, 1),
(368, 367, 1),
(369, 368, 1),
(369, 537, 1),
(369, 541, 1),
(372, 351, 1),
(373, 372, 1),
(375, 374, 1),
(376, 375, 1),
(376, 543, 1),
(380, 379, 1),
(386, 385, 1),
(387, 386, 1),
(387, 391, 1),
(387, 395, 1),
(387, 399, 1),
(391, 390, 1),
(395, 394, 1),
(399, 398, 1),
(401, 400, 1),
(403, 402, 1),
(403, 407, 1),
(403, 410, 2),
(403, 416, 2),
(403, 421, 3),
(403, 426, 2),
(403, 428, 2),
(406, 206, 1),
(408, 407, 2),
(408, 410, 1),
(415, 206, 1),
(417, 416, 1),
(417, 421, 1),
(420, 206, 2),
(422, 421, 2),
(425, 206, 1),
(427, 426, 1),
(429, 428, 1),
(429, 430, 1),
(429, 432, 1),
(431, 430, 2),
(433, 432, 2),
(433, 436, 2),
(433, 440, 2),
(433, 444, 3),
(433, 450, 2),
(433, 457, 2),
(433, 464, 2),
(433, 471, 2),
(433, 477, 2),
(433, 502, 2),
(437, 436, 1),
(437, 440, 1),
(437, 444, 2),
(443, 206, 1),
(445, 444, 1),
(449, 425, 1),
(451, 450, 1),
(452, 451, 1),
(458, 457, 1),
(459, 458, 1),
(465, 464, 1),
(466, 465, 1),
(472, 471, 1),
(473, 472, 1),
(478, 477, 1),
(479, 478, 1),
(479, 503, 1),
(483, 482, 1),
(487, 486, 1),
(493, 492, 1),
(494, 493, 1),
(496, 495, 1),
(497, 496, 1),
(503, 502, 1),
(508, 507, 1),
(509, 508, 1),
(509, 513, 1),
(513, 512, 1),
(518, 517, 1),
(519, 518, 1),
(519, 529, 1),
(524, 523, 1),
(525, 524, 1),
(529, 528, 1),
(537, 536, 1),
(541, 540, 1),
(543, 542, 1),
(547, 546, 1),
(551, 550, 1),
(555, 554, 1),
(559, 558, 1);

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content`)),
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `title`, `slug`, `uri`, `content`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, 1, '2025-03-13 20:24:07', '2025-03-13 20:24:07', '8538b7a6-7f78-4f1d-8538-f6727c7f6c0f'),
(2, 2, 1, 'Homepage', 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Homepage - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Homepage - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 20:45:36', '2025-03-13 23:24:47', 'd3ed83ad-943f-49dd-8877-948cbc5cdfb0'),
(3, 3, 1, NULL, 'homepage', '__home__', NULL, 1, '2025-03-13 20:45:36', '2025-03-13 20:45:36', 'bbda241a-675e-4328-9f28-8f81a1dfa11c'),
(6, 6, 1, NULL, 'test', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Welcome!\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>Discover Embodied Psychodynamic Resonance (EPR)—a therapy rooted in presence, body wisdom, and deep attunement. I integrates BCST and NARM to guide healing and transformation. Join EPR sessions, workshops, and trainings to reconnect with your inner spaciousness.</p>\",\"ae02b7a9-733b-48d9-84b7-4821587c306e\":[{\"col1\":\"/events\",\"col2\":\"Events\",\"col3\":\"primary\"}]}', 1, '2025-03-13 20:58:05', '2025-03-19 10:41:28', '4a56944a-38da-4a61-8598-ff6b505450aa'),
(7, 7, 1, NULL, 'homepage', '__home__', NULL, 1, '2025-03-13 20:58:05', '2025-03-13 20:58:05', '934a9ab3-8580-472b-8c5a-2d9d95124978'),
(8, 8, 1, 'test', 'test', NULL, NULL, 1, '2025-03-13 20:58:05', '2025-03-13 20:58:05', 'a6900fe0-9739-48c0-9edf-ea3998c216c3'),
(12, 12, 1, 'Lotus flower big', NULL, NULL, NULL, 1, '2025-03-13 21:40:17', '2025-03-13 21:40:17', 'b8a02714-9da7-45a7-9ad7-c62a838b6e90'),
(13, 13, 1, NULL, '__temp_wzwrviyocvukmbisnjumaxczzatvcfmxbivk', NULL, '{\"033d0eef-2816-4a44-8a29-a76c412495ef\": [], \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [12]}', 1, '2025-03-13 21:40:20', '2025-03-13 22:08:53', '8abc4480-7e5c-4331-af10-73e175d2c2e6'),
(14, 14, 1, NULL, 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 21:40:20', '2025-03-13 21:40:20', '582f5063-051b-4386-9394-5d8d9a6cc6ef'),
(15, 15, 1, NULL, 'test', NULL, '{\"0d5328b7-613b-4d02-8231-c694170b38b4\": \"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.  Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\", \"890dcf84-fa63-4443-aee1-0058523e7590\": \"Welcome!\", \"ae02b7a9-733b-48d9-84b7-4821587c306e\": [{\"col1\": \"#\", \"col2\": \"Events\", \"col3\": \"primary\"}]}', 1, '2025-03-13 21:40:20', '2025-03-13 21:40:20', 'f273fa27-4efa-4ef1-8df3-128ec1653dc0'),
(16, 16, 1, NULL, '__temp_wzwrviyocvukmbisnjumaxczzatvcfmxbivk', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [12]}', 1, '2025-03-13 21:40:20', '2025-03-13 21:40:20', '76d21537-a40c-407b-9b32-5ba6f499c5c4'),
(20, 20, 1, NULL, 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 22:08:41', '2025-03-13 22:08:41', 'd1393928-e798-48aa-ab3d-fba4b7c60322'),
(21, 21, 1, NULL, 'test', NULL, '{\"0d5328b7-613b-4d02-8231-c694170b38b4\": \"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.  Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\", \"890dcf84-fa63-4443-aee1-0058523e7590\": \"Welcome!\", \"ae02b7a9-733b-48d9-84b7-4821587c306e\": [{\"col1\": \"#\", \"col2\": \"Events\", \"col3\": \"primary\"}]}', 1, '2025-03-13 22:08:41', '2025-03-13 22:08:41', '79d87de5-c413-4d10-aba5-3cef8bbdf361'),
(22, 22, 1, NULL, '__temp_wzwrviyocvukmbisnjumaxczzatvcfmxbivk', NULL, '{\"033d0eef-2816-4a44-8a29-a76c412495ef\": [12], \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [12]}', 1, '2025-03-13 22:08:41', '2025-03-13 22:08:41', '3b891a91-802b-4c32-a469-0134ad9b8811'),
(26, 26, 1, NULL, 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 22:08:53', '2025-03-13 22:08:53', '43f6c700-119b-4c18-ae74-2844ff334aeb'),
(27, 27, 1, NULL, 'test', NULL, '{\"0d5328b7-613b-4d02-8231-c694170b38b4\": \"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.  Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\", \"890dcf84-fa63-4443-aee1-0058523e7590\": \"Welcome!\", \"ae02b7a9-733b-48d9-84b7-4821587c306e\": [{\"col1\": \"#\", \"col2\": \"Events\", \"col3\": \"primary\"}]}', 1, '2025-03-13 22:08:53', '2025-03-13 22:08:53', '751771cb-2345-4288-813b-99722b74705b'),
(28, 28, 1, NULL, '__temp_wzwrviyocvukmbisnjumaxczzatvcfmxbivk', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [12]}', 1, '2025-03-13 22:08:53', '2025-03-13 22:08:53', '4f9bc843-449f-48cd-9283-efd1035bbabe'),
(32, 32, 1, 'Pri valentini organizatorji', NULL, NULL, NULL, 1, '2025-03-13 22:18:52', '2025-03-13 22:18:52', '5fdc3c41-406b-4b27-9048-2912cdd65de0'),
(33, 33, 1, NULL, '__temp_wllpffrugrxdqmovnamvkexnaexohvszrpgw', NULL, '{\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"left\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal.  My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always with an emphasis on cultivating presence, inner spaciousness, and relational attunement.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"About Karima\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Karima Valentina Hočevar\", \"fc438791-5351-42a6-8fe8-98bf5b31a0d8\": [{\"col1\": \"/about-me\", \"col2\": \"Read more\", \"col3\": \"normalLink\"}]}', 1, '2025-03-13 22:19:22', '2025-03-13 22:44:57', 'e7052e4c-d96a-4018-87e8-593821f57db4'),
(34, 34, 1, NULL, '__temp_wqfkpmeiigkogaevrocvqyknpurobolcgrne', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [32]}', 1, '2025-03-13 22:19:22', '2025-03-13 22:19:22', 'ee8590de-d675-44f0-a682-70f504407cc0'),
(35, 35, 1, NULL, 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 22:19:22', '2025-03-13 22:19:22', 'afecd7db-b967-4b57-9582-f4cd7602aab3'),
(36, 36, 1, NULL, '__temp_wllpffrugrxdqmovnamvkexnaexohvszrpgw', NULL, '{\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal.  My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always with an emphasis on cultivating presence, inner spaciousness, and relational attunement.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"About Karima\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Karima Valentina Hočevar\", \"fc438791-5351-42a6-8fe8-98bf5b31a0d8\": [{\"col1\": \"/about-me\", \"col2\": \"Read more\", \"col3\": \"primary\"}]}', 1, '2025-03-13 22:19:22', '2025-03-13 22:19:22', '413d6c8c-804b-42e2-b519-029d878b830c'),
(37, 37, 1, NULL, '__temp_wqfkpmeiigkogaevrocvqyknpurobolcgrne', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [32]}', 1, '2025-03-13 22:19:22', '2025-03-13 22:19:22', '68f880d0-798c-47de-bf1b-4a80d94add16'),
(40, 40, 1, NULL, 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 22:20:33', '2025-03-13 22:20:33', 'f8bd7e54-b05c-45f4-a9cf-fe9b33340f5a'),
(41, 41, 1, NULL, '__temp_wllpffrugrxdqmovnamvkexnaexohvszrpgw', NULL, '{\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal.  My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always with an emphasis on cultivating presence, inner spaciousness, and relational attunement.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"About Karima\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Karima Valentina Hočevar\", \"fc438791-5351-42a6-8fe8-98bf5b31a0d8\": [{\"col1\": \"/about-me\", \"col2\": \"Read more\", \"col3\": \"normalLink\"}]}', 1, '2025-03-13 22:20:33', '2025-03-13 22:20:33', 'f34d1e5e-7a75-4711-a707-be55c94ef392'),
(46, 46, 1, 'Embodied Psychodynamic Resonance EPR', NULL, NULL, NULL, 1, '2025-03-13 22:44:32', '2025-03-13 22:44:32', '10375e21-34f4-48ca-acf4-1ab04c9a2374'),
(47, 47, 1, NULL, '__temp_ivgtrvwnhslqrskkuotlijerlitrswcubryb', NULL, '{\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"right\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>Embodied Psychodynamic Resonance (EPR) is an intuitive approach to therapy that helps clients realign with their natural inner spaciousness and sense of connection. It is a culmination of my lifelong inquiry into the interplay between mind, body, and relational presence. It is rooted in an embodied awareness of the profound intelligence that guides healing from within.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"About my work\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Embodied Psychodynamic Resonance (EPR)\", \"fc438791-5351-42a6-8fe8-98bf5b31a0d8\": [{\"col1\": \"/embodied-psychodynamic-resonance\", \"col2\": \"Read more\", \"col3\": \"normalLink\"}]}', 1, '2025-03-13 22:44:57', '2025-03-13 22:45:57', 'b2356927-a12d-43da-86ca-59ea755cab10'),
(48, 48, 1, NULL, '__temp_throwumuetrwuqtlscepzfmyjbsgfaszxget', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [46]}', 1, '2025-03-13 22:44:57', '2025-03-13 22:44:57', 'eaf9d73f-c0a7-4010-992b-99b19772de20'),
(49, 49, 1, NULL, 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 22:44:58', '2025-03-13 22:44:58', 'f65a0efb-1381-49e2-b313-9a83a64fb71b'),
(50, 50, 1, NULL, '__temp_wllpffrugrxdqmovnamvkexnaexohvszrpgw', NULL, '{\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"left\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal.  My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always with an emphasis on cultivating presence, inner spaciousness, and relational attunement.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"About Karima\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Karima Valentina Hočevar\", \"fc438791-5351-42a6-8fe8-98bf5b31a0d8\": [{\"col1\": \"/about-me\", \"col2\": \"Read more\", \"col3\": \"normalLink\"}]}', 1, '2025-03-13 22:44:58', '2025-03-13 22:44:58', '53bde268-ae1a-4a89-b4c2-1fd8d9a5ed47'),
(51, 51, 1, NULL, '__temp_ivgtrvwnhslqrskkuotlijerlitrswcubryb', NULL, '{\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"right\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>Embodied Psychodynamic Resonance (EPR) is an intuitive approach to therapy that helps clients realign with their natural inner spaciousness and sense of connection. It is a culmination of my lifelong inquiry into the interplay between mind, body, and relational presence. It is rooted in an embodied awareness of the profound intelligence that guides healing from within.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"About my work\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Embodied Psychodynamic Resonance (EPR)\", \"fc438791-5351-42a6-8fe8-98bf5b31a0d8\": [{\"col1\": \"/epr\", \"col2\": \"Read more\", \"col3\": \"primary\"}]}', 1, '2025-03-13 22:44:58', '2025-03-13 22:44:58', '41536d62-3a8f-487f-8dd4-425d0c557dbf'),
(52, 52, 1, NULL, '__temp_throwumuetrwuqtlscepzfmyjbsgfaszxget', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [46]}', 1, '2025-03-13 22:44:58', '2025-03-13 22:44:58', 'f28127de-5782-4a21-9e17-d3a903596905'),
(56, 56, 1, NULL, 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 22:45:57', '2025-03-13 22:45:57', '7ab775e4-42de-40f2-a3ad-c646b79ec113'),
(57, 57, 1, NULL, 'test', NULL, '{\"0d5328b7-613b-4d02-8231-c694170b38b4\": \"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.  Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\", \"890dcf84-fa63-4443-aee1-0058523e7590\": \"Welcome!\", \"ae02b7a9-733b-48d9-84b7-4821587c306e\": [{\"col1\": \"/events\", \"col2\": \"Events\", \"col3\": \"primary\"}]}', 1, '2025-03-13 22:45:57', '2025-03-13 22:45:57', 'af1e0dc9-6320-4ba0-b628-211aae659d5c'),
(58, 58, 1, NULL, '__temp_ivgtrvwnhslqrskkuotlijerlitrswcubryb', NULL, '{\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"right\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>Embodied Psychodynamic Resonance (EPR) is an intuitive approach to therapy that helps clients realign with their natural inner spaciousness and sense of connection. It is a culmination of my lifelong inquiry into the interplay between mind, body, and relational presence. It is rooted in an embodied awareness of the profound intelligence that guides healing from within.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"About my work\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Embodied Psychodynamic Resonance (EPR)\", \"fc438791-5351-42a6-8fe8-98bf5b31a0d8\": [{\"col1\": \"/embodied-psychodynamic-resonance\", \"col2\": \"Read more\", \"col3\": \"normalLink\"}]}', 1, '2025-03-13 22:45:57', '2025-03-13 22:45:57', '776579f0-49f3-43cb-9725-670925065265'),
(61, 61, 1, NULL, '__temp_mqnaopzelnnvfzadtlrdedlqpprsahoxtnst', NULL, '{\"032378b9-225f-4ca4-b509-5bf5b952dde2\": \"How does and EPR session look like?\", \"66af9589-1520-49a8-982e-6ddca319d308\": \"<p><strong>Embodied Psychodynamic Resonance (EPR)</strong> combines verbal and non-verbal approaches, integrating touch and a psychodynamic orientation into the subjective world of the client. In this way, EPR can address both shock trauma and elements of developmental trauma. It supports a moment-to-moment exploration of the obstacles and adaptations that shape our experience. The process is designed to create a safe, open-hearted space where healing unfolds through deep presence, resonance, and embodied awareness. <br /><br />Practically, during an EPR session, the client usually lies on a table while the therapist applies touch. The therapist remains in receptive attunement to the specific movements of the life force, as expressed through various levels of experience. Through touch and verbal support, clients are guided toward greater coherence, trust, and connection with their authentic self. <br /><br />An EPR session is not about fixing or analyzing but about cultivating curiosity toward the restorative movements of our being as a whole. The therapist’s role is not to lead the process but rather to respond to these restorative movements and help unfold their innate wisdom.</p>\"}', 1, '2025-03-13 22:57:30', '2025-03-13 23:32:59', '3b55fef8-a618-4ecf-b5ab-af41d08ffce0'),
(62, 62, 1, NULL, 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 22:57:30', '2025-03-13 22:57:30', '94004ec2-44d8-4f32-a65f-fbf6ca8388ed'),
(63, 63, 1, NULL, '__temp_mqnaopzelnnvfzadtlrdedlqpprsahoxtnst', NULL, '{\"032378b9-225f-4ca4-b509-5bf5b952dde2\": \"How does and EPR session look like?\", \"66af9589-1520-49a8-982e-6ddca319d308\": \"<p>Embodied Psychodynamic Resonance (EPR) combines verbal and non-verbal approaches, integrating touch and a psychodynamic orientation into the subjective world of the client. In this way, EPR can address both shock trauma and elements of developmental trauma. It supports a moment-to-moment exploration of the obstacles and adaptations that shape our experience. The process is designed to create a safe, open-hearted space where healing unfolds through deep presence, resonance, and embodied awareness. <br />Practically, during an EPR session, the client usually lies on a table while the therapist applies touch. The therapist remains in receptive attunement to the specific movements of the life force, as expressed through various levels of experience. Through touch and verbal support, clients are guided toward greater coherence, trust, and connection with their authentic self. <br />An EPR session is not about fixing or analyzing but about cultivating curiosity toward the restorative movements of our being as a whole. The therapist’s role is not to lead the process but rather to respond to these restorative movements and help unfold their innate wisdom.</p>\"}', 1, '2025-03-13 22:57:30', '2025-03-13 22:57:30', '37e68fc0-d3b2-49ec-a534-9f55bcf2c373'),
(66, 66, 1, NULL, 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 22:57:43', '2025-03-13 22:57:43', 'c3d32691-b5a7-4c0a-b3b5-5d2fbfefce7c'),
(67, 67, 1, NULL, '__temp_mqnaopzelnnvfzadtlrdedlqpprsahoxtnst', NULL, '{\"032378b9-225f-4ca4-b509-5bf5b952dde2\": \"How does and EPR session look like?\", \"66af9589-1520-49a8-982e-6ddca319d308\": \"<p><strong>Embodied Psychodynamic Resonance (EPR)</strong> combines verbal and non-verbal approaches, integrating touch and a psychodynamic orientation into the subjective world of the client. In this way, EPR can address both shock trauma and elements of developmental trauma. It supports a moment-to-moment exploration of the obstacles and adaptations that shape our experience. The process is designed to create a safe, open-hearted space where healing unfolds through deep presence, resonance, and embodied awareness. </p><p><br />Practically, during an EPR session, the client usually lies on a table while the therapist applies touch. The therapist remains in receptive attunement to the specific movements of the life force, as expressed through various levels of experience. Through touch and verbal support, clients are guided toward greater coherence, trust, and connection with their authentic self. </p><p><br />An EPR session is not about fixing or analyzing but about cultivating curiosity toward the restorative movements of our being as a whole. The therapist’s role is not to lead the process but rather to respond to these restorative movements and help unfold their innate wisdom.</p>\"}', 1, '2025-03-13 22:57:43', '2025-03-13 22:57:43', 'c124fc03-eb1d-4cd6-9dc1-bf14e871d2d8'),
(70, 70, 1, NULL, '__temp_zmicjevjmbqedfisbctolixgaddbotykeern', NULL, '{\"91fb1656-a4c7-4c31-acce-60bc64eb0f8f\": []}', 1, '2025-03-13 23:14:45', '2025-03-14 00:03:50', '1b76e6ea-3b03-4077-9264-47a04dd9b413'),
(71, 71, 1, NULL, 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"- Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:14:45', '2025-03-13 23:14:45', '971e6605-f399-4061-bada-3c0461c519a8'),
(72, 72, 1, NULL, '__temp_zmicjevjmbqedfisbctolixgaddbotykeern', NULL, '{\"717dab41-8e05-4a26-a3fd-ff31e317c4ca\": \"Inspirations\"}', 1, '2025-03-13 23:14:45', '2025-03-13 23:14:45', '1ec09028-765b-49f8-a6af-0c3a3095ccd8'),
(73, 73, 1, 'Breath of Life', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Somatic therapy: How working with the body can heal the imprints of trauma\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Breath of Life - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Breath of Life - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-13 23:19:20', '2025-03-19 10:29:53', '6765febc-76a8-4f9d-a283-36f837134ed2'),
(74, 74, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"b3e478af-1cfb-4477-be12-08cf53448ceb\":\"In this therapeutic approach, we place trust in life’s innate wisdom to guide the healing process. Every unfolding event in a safe, relational space has a purpose.\",\"a9c23139-d423-42de-99b0-8e565396df95\":[\"75\"]}', 1, '2025-03-13 23:19:28', '2025-03-19 10:29:53', '93fb2cd4-4f81-42de-a719-f49d81143561'),
(75, 75, 1, 'Inspiration image', NULL, NULL, NULL, 1, '2025-03-13 23:19:59', '2025-03-13 23:19:59', '9c6f9a58-6dad-45fe-ac8b-cd796c2cd66f'),
(76, 76, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\":\"<p>The orientation toward the Breath of Life is essential. It is a sacred, radiant presence and an organizing force that harmonizes and guides all levels of our experience—physical, emotional, and spiritual. The Midline, as the main organizing principle of our experience, offers a pathway to understanding the dynamic balance within the organism. It serves as a guide for the body’s organization, helping to unify the physical, emotional, and energetic states.</p><p>In this therapeutic approach, we place trust in life’s innate wisdom to guide the healing process. Every unfolding event in a safe, relational space has a purpose. The therapeutic process is one of reciprocal connection with the life force. As the therapist\'s intention aligns with the unfolding of the client’s life force, trust naturally arises. This connection can be seen&nbsp;as an individuation of life force meeting life force itself.</p>\"}', 1, '2025-03-13 23:20:08', '2025-03-19 10:29:53', 'f6e04242-ec7e-47c3-8c6a-5ddf2f3afdd5'),
(77, 77, 1, NULL, '__temp_xkbezdxlmtpufanozszugydfwsqovtsilqor', 'inspirations/__temp_xkbezdxlmtpufanozszugydfwsqovtsilqor', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:20:13', '2025-03-13 23:20:13', '8ef58517-14a7-4d75-a03c-941ad56e703b'),
(78, 78, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"54cf3a62-ac71-45b7-8c1e-e7767f84b05f\": \"Somatic therapy: How working with the body can heal the imprints of trauma\", \"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-13 23:20:13', '2025-03-13 23:20:13', '37210d18-b878-45ba-b841-5a9dade6e13f'),
(79, 79, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>What can you feel in your face? Your neck? Your shoulders and arms? Maybe there’s tingling or fizzing, some warmth or cold. What does the air feel like against your skin? Some areas may be tense, while others are more relaxed. There might be a complete absence of sensation in other places.</p>\"}', 1, '2025-03-13 23:20:13', '2025-03-13 23:20:13', '6d692db9-165c-4873-a8a0-35f7e56ec7fd'),
(89, 89, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '34a34968-5d0c-46ec-98ed-5b80a0696f75'),
(90, 90, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', 'c7854844-f4c7-4dee-8755-5548d81a676e'),
(91, 91, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', 'b8d9cc14-255e-42b9-bc03-aa1353f29ef0'),
(92, 92, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '8fadba15-ce42-470a-b931-0abd7cdc398d'),
(93, 93, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '74e6fb76-5338-4faf-9e11-88313fefbdc9'),
(94, 94, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '32f7ce35-0249-4394-a0ad-803588feaa9a'),
(95, 95, 1, NULL, '__temp_wybhjwihcokambvkvngallbqffoeitymblvb', 'inspirations/__temp_wybhjwihcokambvkvngallbqffoeitymblvb', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '0f80a8d8-2900-4836-ba9e-2659c65f45f2'),
(96, 96, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"54cf3a62-ac71-45b7-8c1e-e7767f84b05f\": \"Somatic therapy: How working with the body can heal the imprints of trauma\", \"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', 'b027ac21-4512-4c73-81d2-7cb1d57a9521'),
(97, 97, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>What can you feel in your face? Your neck? Your shoulders and arms? Maybe there’s tingling or fizzing, some warmth or cold. What does the air feel like against your skin? Some areas may be tense, while others are more relaxed. There might be a complete absence of sensation in other places.</p><p>Now tune into what emotions are coming up for you. Are you excited? Sluggish, tired? Anxious and ready for this exercise to be over? (If that’s the case, I won’t hold it against you.) Where do those feelings show up in your body? They might be in your chest, your throat or your stomach.</p><p>This act of drawing attention to our bodies is the foundation of our newsletter today. Ana, 44, of Fullerton wrote:</p>\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '83933b85-6830-43ba-8217-d887ed117af1'),
(98, 98, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', 'af654372-0908-4310-ba16-4cf353f0f8a7'),
(99, 99, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '949505d7-a5ec-41fb-bff2-c5c4be676680'),
(100, 100, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '5ca49bac-9d48-402a-a2af-cc4c8a15d996'),
(101, 101, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '1204353b-dcc5-41b5-8478-14cd8222aeb1'),
(102, 102, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', 'fbeaf7d2-afce-48be-8ac4-28b3d722e2f4'),
(103, 103, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '88db6044-aa29-4a68-b526-aa17ddda065e'),
(105, 105, 1, 'Somatic therapy: How working with the body can heal the imprints of trauma', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma', 'inspirations/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:24:25', '2025-03-13 23:24:25', 'afaefc97-3db7-40d4-8671-ab9f855d8f18'),
(106, 106, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"54cf3a62-ac71-45b7-8c1e-e7767f84b05f\": \"Somatic therapy: How working with the body can heal the imprints of trauma\", \"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-13 23:24:25', '2025-03-13 23:24:25', '2f26b7dd-99dc-47d4-816c-8bffc728ffbc'),
(108, 108, 1, 'Homepage', 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Homepage - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Homepage - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:24:47', '2025-03-13 23:24:47', '15699f73-3b90-4f14-9311-3b3af6cf98f9'),
(109, 109, 1, NULL, 'test', NULL, '{\"0d5328b7-613b-4d02-8231-c694170b38b4\": \"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.  Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\", \"890dcf84-fa63-4443-aee1-0058523e7590\": \"Welcome!\", \"ae02b7a9-733b-48d9-84b7-4821587c306e\": [{\"col1\": \"/events\", \"col2\": \"Events\", \"col3\": \"primary\"}]}', 1, '2025-03-13 23:24:47', '2025-03-13 23:24:47', 'e0b1c1f1-d7d8-40a8-acc0-aa6c978e13de'),
(110, 110, 1, NULL, '__temp_wllpffrugrxdqmovnamvkexnaexohvszrpgw', NULL, '{\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"left\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal.  My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always with an emphasis on cultivating presence, inner spaciousness, and relational attunement.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"About Karima\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Karima Valentina Hočevar\", \"fc438791-5351-42a6-8fe8-98bf5b31a0d8\": [{\"col1\": \"/about-me\", \"col2\": \"Read more\", \"col3\": \"normalLink\"}]}', 1, '2025-03-13 23:24:47', '2025-03-13 23:24:47', 'a28d491b-099b-4c96-9c50-12079d854697'),
(111, 111, 1, NULL, '__temp_ivgtrvwnhslqrskkuotlijerlitrswcubryb', NULL, '{\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"right\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>Embodied Psychodynamic Resonance (EPR) is an intuitive approach to therapy that helps clients realign with their natural inner spaciousness and sense of connection. It is a culmination of my lifelong inquiry into the interplay between mind, body, and relational presence. It is rooted in an embodied awareness of the profound intelligence that guides healing from within.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"About my work\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Embodied Psychodynamic Resonance (EPR)\", \"fc438791-5351-42a6-8fe8-98bf5b31a0d8\": [{\"col1\": \"/embodied-psychodynamic-resonance\", \"col2\": \"Read more\", \"col3\": \"normalLink\"}]}', 1, '2025-03-13 23:24:47', '2025-03-13 23:24:47', 'b5e130a6-ed6a-4fc2-8e17-e473a1507819'),
(112, 112, 1, NULL, '__temp_mqnaopzelnnvfzadtlrdedlqpprsahoxtnst', NULL, '{\"032378b9-225f-4ca4-b509-5bf5b952dde2\": \"How does and EPR session look like?\", \"66af9589-1520-49a8-982e-6ddca319d308\": \"<p><strong>Embodied Psychodynamic Resonance (EPR)</strong> combines verbal and non-verbal approaches, integrating touch and a psychodynamic orientation into the subjective world of the client. In this way, EPR can address both shock trauma and elements of developmental trauma. It supports a moment-to-moment exploration of the obstacles and adaptations that shape our experience. The process is designed to create a safe, open-hearted space where healing unfolds through deep presence, resonance, and embodied awareness. </p><p><br />Practically, during an EPR session, the client usually lies on a table while the therapist applies touch. The therapist remains in receptive attunement to the specific movements of the life force, as expressed through various levels of experience. Through touch and verbal support, clients are guided toward greater coherence, trust, and connection with their authentic self. </p><p><br />An EPR session is not about fixing or analyzing but about cultivating curiosity toward the restorative movements of our being as a whole. The therapist’s role is not to lead the process but rather to respond to these restorative movements and help unfold their innate wisdom.</p>\"}', 1, '2025-03-13 23:24:47', '2025-03-13 23:24:47', 'ec9832b8-4505-4f19-ad48-aa8afa6fe37b'),
(113, 113, 1, NULL, '__temp_zmicjevjmbqedfisbctolixgaddbotykeern', NULL, '{\"717dab41-8e05-4a26-a3fd-ff31e317c4ca\": \"Inspirations\"}', 1, '2025-03-13 23:24:47', '2025-03-13 23:24:47', '6d1faac5-b56d-4151-8919-c59d315672b2'),
(114, 114, 1, 'Somatic therapy: How working with the body can heal the imprints of trauma', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma', 'inspirations/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:25:14', '2025-03-13 23:25:14', '5e1faf55-01a7-40aa-87ec-fb8934e81889'),
(117, 117, 1, 'Homepage', 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Homepage - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Homepage - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:32:48', '2025-03-13 23:32:48', '31bedd80-30af-464e-8018-d40174829182'),
(118, 118, 1, NULL, '__temp_mqnaopzelnnvfzadtlrdedlqpprsahoxtnst', NULL, '{\"032378b9-225f-4ca4-b509-5bf5b952dde2\": \"How does and EPR session look like?\", \"66af9589-1520-49a8-982e-6ddca319d308\": \"<p><strong>Embodied Psychodynamic Resonance (EPR)</strong> combines verbal and non-verbal approaches, integrating touch and a psychodynamic orientation into the subjective world of the client. In this way, EPR can address both shock trauma and elements of developmental trauma. It supports a moment-to-moment exploration of the obstacles and adaptations that shape our experience. The process is designed to create a safe, open-hearted space where healing unfolds through deep presence, resonance, and embodied awareness. <br />Practically, during an EPR session, the client usually lies on a table while the therapist applies touch. The therapist remains in receptive attunement to the specific movements of the life force, as expressed through various levels of experience. Through touch and verbal support, clients are guided toward greater coherence, trust, and connection with their authentic self. <br />An EPR session is not about fixing or analyzing but about cultivating curiosity toward the restorative movements of our being as a whole. The therapist’s role is not to lead the process but rather to respond to these restorative movements and help unfold their innate wisdom.</p>\"}', 1, '2025-03-13 23:32:48', '2025-03-13 23:32:48', '5a9f892f-aa01-45eb-af2c-854efdbd3541'),
(119, 119, 1, 'Homepage', 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Homepage - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Homepage - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:32:59', '2025-03-13 23:32:59', 'b4705808-5816-4006-809e-66070a03c1ec'),
(120, 120, 1, NULL, '__temp_mqnaopzelnnvfzadtlrdedlqpprsahoxtnst', NULL, '{\"032378b9-225f-4ca4-b509-5bf5b952dde2\": \"How does and EPR session look like?\", \"66af9589-1520-49a8-982e-6ddca319d308\": \"<p><strong>Embodied Psychodynamic Resonance (EPR)</strong> combines verbal and non-verbal approaches, integrating touch and a psychodynamic orientation into the subjective world of the client. In this way, EPR can address both shock trauma and elements of developmental trauma. It supports a moment-to-moment exploration of the obstacles and adaptations that shape our experience. The process is designed to create a safe, open-hearted space where healing unfolds through deep presence, resonance, and embodied awareness. <br /><br />Practically, during an EPR session, the client usually lies on a table while the therapist applies touch. The therapist remains in receptive attunement to the specific movements of the life force, as expressed through various levels of experience. Through touch and verbal support, clients are guided toward greater coherence, trust, and connection with their authentic self. <br /><br />An EPR session is not about fixing or analyzing but about cultivating curiosity toward the restorative movements of our being as a whole. The therapist’s role is not to lead the process but rather to respond to these restorative movements and help unfold their innate wisdom.</p>\"}', 1, '2025-03-13 23:32:59', '2025-03-13 23:32:59', 'b410a2a0-9e65-404b-838f-be7ada5ed17d');
INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `title`, `slug`, `uri`, `content`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(121, 121, 1, 'Somatic therapy: How working with the body can heal the imprints of trauma', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-2', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-2', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:44:21', '2025-03-13 23:57:44', '1e2ccf48-a7fd-40c3-9157-8c6200041e05'),
(122, 122, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', 'ba2c03fc-6e3e-4ad7-a21e-3ca3a0558876'),
(123, 123, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>What can you feel in your face? Your neck? Your shoulders and arms? Maybe there’s tingling or fizzing, some warmth or cold. What does the air feel like against your skin? Some areas may be tense, while others are more relaxed. There might be a complete absence of sensation in other places.</p><p>Now tune into what emotions are coming up for you. Are you excited? Sluggish, tired? Anxious and ready for this exercise to be over? (If that’s the case, I won’t hold it against you.) Where do those feelings show up in your body? They might be in your chest, your throat or your stomach.</p><p>This act of drawing attention to our bodies is the foundation of our newsletter today. Ana, 44, of Fullerton wrote:</p>\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', 'c964c8d9-2a05-4874-958b-115232be12fd'),
(124, 124, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', 'dd2f00bc-5725-4f5b-97f3-a9b3ba0378ed'),
(125, 125, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', 'b2b9f4ea-d77c-4de2-a2ce-c69b9086cbac'),
(126, 126, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', '2f9c729b-5613-46aa-85da-f2e80ad2c577'),
(127, 127, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', '43b6405d-3e60-47a9-ac0f-5711fd3d4dd5'),
(128, 128, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', '5fe7ad46-0984-45f3-8032-aa077406e8f8'),
(129, 129, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', '38878692-94fa-4c7b-81c1-27ae1cafae8e'),
(130, 130, 1, 'Somatic therapy: How working with the body can heal the imprints of trauma', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-2', 'inspirations/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-2', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', '177d8797-ff9b-4f7c-992d-998b3ab87e20'),
(131, 131, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', 'fe7a0878-ae6e-43e2-b706-921bd0363c12'),
(132, 132, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>What can you feel in your face? Your neck? Your shoulders and arms? Maybe there’s tingling or fizzing, some warmth or cold. What does the air feel like against your skin? Some areas may be tense, while others are more relaxed. There might be a complete absence of sensation in other places.</p><p>Now tune into what emotions are coming up for you. Are you excited? Sluggish, tired? Anxious and ready for this exercise to be over? (If that’s the case, I won’t hold it against you.) Where do those feelings show up in your body? They might be in your chest, your throat or your stomach.</p><p>This act of drawing attention to our bodies is the foundation of our newsletter today. Ana, 44, of Fullerton wrote:</p>\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', '700ef283-e65f-493b-889a-5bbdf7053b4d'),
(133, 133, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', '6478d111-cd2b-4469-a319-f06fcd980cb7'),
(134, 134, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', '57b1caab-f985-45e8-9425-2d2bd9df7ff8'),
(135, 135, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', 'df41f195-cad2-451d-bac8-f1d1a78d6b2e'),
(136, 136, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', 'a44ff975-62b1-4963-956b-592911e3e10c'),
(137, 137, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', '3ca282c8-0c43-4f40-aae2-78d622099f1a'),
(138, 138, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', '2aae8eae-4e94-406a-a1aa-a1e5d6977aa5'),
(139, 139, 1, 'Somatic therapy: How working with the body can heal the imprints of trauma', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-3', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-3', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:44:24', '2025-03-13 23:57:44', 'd67bfaed-7f17-4fdc-b69a-62651a391823'),
(140, 140, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', 'a9c18f24-43ac-485b-a660-0c62ab561aba'),
(141, 141, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>What can you feel in your face? Your neck? Your shoulders and arms? Maybe there’s tingling or fizzing, some warmth or cold. What does the air feel like against your skin? Some areas may be tense, while others are more relaxed. There might be a complete absence of sensation in other places.</p><p>Now tune into what emotions are coming up for you. Are you excited? Sluggish, tired? Anxious and ready for this exercise to be over? (If that’s the case, I won’t hold it against you.) Where do those feelings show up in your body? They might be in your chest, your throat or your stomach.</p><p>This act of drawing attention to our bodies is the foundation of our newsletter today. Ana, 44, of Fullerton wrote:</p>\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '9829ee90-1771-49e6-b1df-823940207f93'),
(142, 142, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', 'b86dfbf0-57a9-42c2-816f-be53431d625e'),
(143, 143, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '4298340d-0c50-4b8d-ac4e-4bac8c3c3115'),
(144, 144, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', 'd55b797f-84f6-4faa-90b6-95a901a1b227'),
(145, 145, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '2aacd057-a6dd-468a-bc5b-60250bb202c7'),
(146, 146, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '0699329d-d069-440a-9c94-4815fe3fbfcd'),
(147, 147, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', 'd4617b9f-373d-40fa-bead-32826c247f69'),
(148, 148, 1, 'Somatic therapy: How working with the body can heal the imprints of trauma', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-3', 'inspirations/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-3', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '4ea41e1d-1a88-461c-9af7-a0b0c3b32972'),
(149, 149, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '0a3db947-a0ec-4db5-b300-39e74df4030f'),
(150, 150, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>What can you feel in your face? Your neck? Your shoulders and arms? Maybe there’s tingling or fizzing, some warmth or cold. What does the air feel like against your skin? Some areas may be tense, while others are more relaxed. There might be a complete absence of sensation in other places.</p><p>Now tune into what emotions are coming up for you. Are you excited? Sluggish, tired? Anxious and ready for this exercise to be over? (If that’s the case, I won’t hold it against you.) Where do those feelings show up in your body? They might be in your chest, your throat or your stomach.</p><p>This act of drawing attention to our bodies is the foundation of our newsletter today. Ana, 44, of Fullerton wrote:</p>\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '5e3e9f30-e1b0-44e3-b18b-c5021c87dd42'),
(151, 151, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '507246ea-1036-4567-a291-ecb9bea357f3'),
(152, 152, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '04d23b61-bfb1-4f23-84e6-b0ca8defd687'),
(153, 153, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '0d60ca65-a202-44b3-afb9-6d53d2a467fa'),
(154, 154, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', '6569f730-6cb1-416d-bd55-5d37aef4cb74'),
(155, 155, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', 'a2ea2b7a-a1cd-486f-9368-e0b83fac114d'),
(156, 156, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', 'cf2f28ae-345e-48d2-ba26-0c870dfb9667'),
(157, 157, 1, 'EPR therapy days March 14-15 , Hannover', 'epr-therapy-days', 'event/epr-therapy-days', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"EPR therapy days March 14-15 , Hannover - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"EPR therapy days March 14-15 , Hannover - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-13 23:57:55', '2025-03-19 10:27:32', '94665100-02ca-42fa-8c2a-67d8c2917734'),
(158, 158, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"49e3e828-6795-49c5-a82b-3360a0b3664d\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"eca88837-37fe-4366-9c04-3b186a4046b3\":\"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\",\"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\":\"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\",\"50fd66aa-669e-462b-bfb3-183483ca7f53\":{\"date\":\"2025-03-14 07:00:00\"},\"3699bcd1-9095-4053-972b-820dc7fdd9fb\":{\"date\":\"2025-03-31 07:00:00\"},\"ee77a16c-2740-4126-b391-d88c9f4ff060\":\"Begins at 10:00 on the first day and ends at 17:00 on the second day.\",\"c6ea490e-ad7d-401f-b119-1404e146ac0e\":{\"date\":\"2025-03-31 07:00:00\"},\"daaa5d42-b397-4793-8d5e-25ada16deeb1\":\"230,00 €\",\"6cbe1a93-eb4b-48f0-b47c-fc314d657898\":false,\"59560f2d-bf2a-4a28-9c90-837018f49967\":\"Online\",\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\":\"Glyndie Nickerson\"}', 1, '2025-03-13 23:58:02', '2025-03-26 12:57:20', '67853079-a281-4e12-9880-d582a87da218'),
(159, 159, 1, 'EPR therapy days', 'epr-therapy-days', 'event/epr-therapy-days', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:59:05', '2025-03-13 23:59:05', '735f45c3-03a3-43ab-8b05-39172a9f6ddf'),
(160, 160, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-03-31 07:00:00\"}, \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"The price of the seminar is 230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-13 23:59:05', '2025-03-13 23:59:05', '9979ec52-961a-4aba-91e6-cc368b5003dd'),
(161, 161, 1, 'EPR therapy days', 'epr-therapy-days-2', 'event/epr-therapy-days-2', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:59:15', '2025-03-13 23:59:15', 'f0a5f0ed-275b-4122-baa0-9944e3710104'),
(162, 162, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-03-31 07:00:00\"}, \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"The price of the seminar is 230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-13 23:59:15', '2025-03-13 23:59:15', 'e24dc2e3-b891-4857-89ec-1bbb29dcf06e'),
(163, 163, 1, 'EPR therapy days', 'epr-therapy-days-2', 'event/epr-therapy-days-2', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:59:15', '2025-03-13 23:59:15', '38115056-8cf1-493c-a298-21b686341cad'),
(164, 164, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-03-31 07:00:00\"}, \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"The price of the seminar is 230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-13 23:59:15', '2025-03-13 23:59:15', '089071ab-91e2-4e1c-9357-d72086476d36'),
(165, 165, 1, 'EPR therapy days', 'epr-therapy-days-3', 'event/epr-therapy-days-3', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:59:18', '2025-03-13 23:59:18', '910fbf93-21cc-48d9-b1eb-d85c5483bf64'),
(166, 166, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-03-31 07:00:00\"}, \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"The price of the seminar is 230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-13 23:59:18', '2025-03-13 23:59:18', 'd4d1f2a6-6de8-4757-af37-b3b4194203c1'),
(167, 167, 1, 'EPR therapy days', 'epr-therapy-days-3', 'event/epr-therapy-days-3', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-13 23:59:18', '2025-03-13 23:59:18', 'e1baf413-dada-48a9-9753-94a0dbfc69f4'),
(168, 168, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-03-31 07:00:00\"}, \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"The price of the seminar is 230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-13 23:59:18', '2025-03-13 23:59:18', '11a21ec4-7bec-46cf-9ff3-bfdde6528d50'),
(172, 172, 1, NULL, '__temp_xopquseyyavrehvtihbhsdfwljrfznupasxj', NULL, NULL, 1, '2025-03-14 00:03:50', '2025-03-14 00:03:50', '9f63bfc9-00ee-448e-9b37-7112c73a0d94'),
(173, 173, 1, 'Homepage', 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Homepage - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Homepage - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 00:03:51', '2025-03-14 00:03:51', '6097126c-7f11-41a2-ab7c-5685de81ad32'),
(174, 174, 1, NULL, '__temp_zmicjevjmbqedfisbctolixgaddbotykeern', NULL, NULL, 1, '2025-03-14 00:03:51', '2025-03-14 00:03:51', '354ee6a8-0986-4485-b0e2-5a940e3c3a9f'),
(175, 175, 1, NULL, '__temp_xopquseyyavrehvtihbhsdfwljrfznupasxj', NULL, NULL, 1, '2025-03-14 00:03:51', '2025-03-14 00:03:51', '27c6e21c-6aba-4435-9f5d-ce930ba79681'),
(179, 179, 1, 'Metta Workshops 4', NULL, NULL, NULL, 1, '2025-03-14 00:12:45', '2025-03-14 00:12:45', '7e8a3811-6aaf-4619-ab4b-207b81d12eb4'),
(180, 180, 1, 'Metta Workshops 4 mobile', NULL, NULL, NULL, 1, '2025-03-14 00:13:04', '2025-03-14 00:13:04', '582b393a-7aa1-47c5-9eb2-05ad1c89f692'),
(181, 181, 1, NULL, '__temp_jkcpzlctmcleljndejycdkwjyudzxdvkuhzu', NULL, '{\"033d0eef-2816-4a44-8a29-a76c412495ef\": [180], \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [179]}', 1, '2025-03-14 00:13:05', '2025-03-14 00:13:05', 'd911da4a-c61d-4e9f-b695-a30c484c1bbf'),
(182, 182, 1, 'EPR therapy days', 'epr-therapy-days', 'event/epr-therapy-days', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 00:13:05', '2025-03-14 00:13:05', 'd992db6e-57bd-4e22-803e-e79736790da9'),
(183, 183, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-03-31 07:00:00\"}, \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-14 00:13:05', '2025-03-14 00:13:05', 'dca22d32-b82b-4b50-acec-520ef0427817'),
(184, 184, 1, NULL, '__temp_jkcpzlctmcleljndejycdkwjyudzxdvkuhzu', NULL, '{\"033d0eef-2816-4a44-8a29-a76c412495ef\": [180], \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [179]}', 1, '2025-03-14 00:13:05', '2025-03-14 00:13:05', 'f5851d46-88d6-4637-a77b-e9f778d75603'),
(185, 185, 1, 'Group supervision', 'epr-therapy-days-2', 'event/epr-therapy-days-2', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Group supervision - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Group supervision - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-14 00:14:23', '2025-03-19 10:28:34', '630b0ea7-8e90-4713-ae26-1e6f188554ae'),
(186, 186, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-03-31 07:00:00\"}, \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-14 00:14:23', '2025-03-14 00:14:23', 'b95d53e4-d0ff-4aa1-bfe8-573a7b6ea618'),
(187, 187, 1, NULL, '__temp_jkcpzlctmcleljndejycdkwjyudzxdvkuhzu', NULL, '{\"033d0eef-2816-4a44-8a29-a76c412495ef\": [180], \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [179]}', 1, '2025-03-14 00:14:23', '2025-03-14 00:14:23', '87978957-13a9-4b0c-a4b7-1a2c23e5b0fa'),
(188, 188, 1, 'EPR therapy days', 'epr-therapy-days-2', 'event/epr-therapy-days-2', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 00:14:23', '2025-03-14 00:14:23', '919036a5-43bd-466c-ae87-ad50bd1f8edd'),
(189, 189, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-03-31 07:00:00\"}, \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-14 00:14:23', '2025-03-14 00:14:23', '27f5897c-9a94-4b16-9e8a-8b51e0fcc550'),
(190, 190, 1, NULL, '__temp_jkcpzlctmcleljndejycdkwjyudzxdvkuhzu', NULL, '{\"033d0eef-2816-4a44-8a29-a76c412495ef\": [180], \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [179]}', 1, '2025-03-14 00:14:23', '2025-03-14 00:14:23', '76306f87-592d-4420-b13e-5d4d0a4785c1');
INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `title`, `slug`, `uri`, `content`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(191, 191, 1, 'Active coaching', 'epr-therapy-days-3', 'event/epr-therapy-days-3', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"EPR Deepening dat - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"EPR Deepening dat - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-14 00:14:24', '2025-03-19 10:28:49', '8d39c1e2-5465-406b-9d1b-2d1d50da6b7d'),
(192, 192, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-04-17 07:00:00\"}, \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-14 00:14:24', '2025-03-14 00:32:44', '4b71c185-713e-4188-867a-4c7d01fd580b'),
(193, 193, 1, NULL, '__temp_jkcpzlctmcleljndejycdkwjyudzxdvkuhzu', NULL, '{\"033d0eef-2816-4a44-8a29-a76c412495ef\": [180], \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [179]}', 1, '2025-03-14 00:14:24', '2025-03-14 00:14:24', 'ea043121-62e1-457b-a54e-c0f1ad197c69'),
(194, 194, 1, 'EPR therapy days', 'epr-therapy-days-3', 'event/epr-therapy-days-3', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 00:14:24', '2025-03-14 00:14:24', '36435190-ebd1-4827-96de-ebc7cd69a0a9'),
(195, 195, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-03-31 07:00:00\"}, \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-14 00:14:24', '2025-03-14 00:14:24', 'a063386b-1862-4818-a39b-22942d394787'),
(196, 196, 1, NULL, '__temp_jkcpzlctmcleljndejycdkwjyudzxdvkuhzu', NULL, '{\"033d0eef-2816-4a44-8a29-a76c412495ef\": [180], \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [179]}', 1, '2025-03-14 00:14:24', '2025-03-14 00:14:24', '220da076-a580-48e1-9d20-ccc42b6212b0'),
(197, 197, 1, 'EPR therapy days', 'epr-therapy-days', 'event/epr-therapy-days', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 00:31:40', '2025-03-14 00:31:40', '73a30cd2-31e9-43e4-9ae7-8e5e5e10d640'),
(200, 200, 1, 'EPR therapy days', 'epr-therapy-days', 'event/epr-therapy-days', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 00:32:26', '2025-03-14 00:32:26', '95abfd53-41b1-4505-94ff-a0c96afdf749'),
(201, 201, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-14 00:32:26', '2025-03-14 00:32:26', '483ab319-5801-479f-b542-a3d8c409f7b3'),
(204, 204, 1, 'EPR therapy days', 'epr-therapy-days-3', 'event/epr-therapy-days-3', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 00:32:44', '2025-03-14 00:32:44', '2b6eb745-6495-4636-bf38-a29fd262e0ae'),
(205, 205, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"3699bcd1-9095-4053-972b-820dc7fdd9fb\": {\"date\": \"2025-04-17 07:00:00\"}, \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-14 00:32:44', '2025-03-14 00:32:44', 'e63ebf52-653d-4e2b-bbfd-318bd21247a2'),
(206, 206, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Events - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Events - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": {\"1\": \"All events\"}, \"descriptionRaw\": \"\"}}', 1, '2025-03-14 01:06:46', '2025-03-14 01:08:04', '173d1078-15c9-472f-aa0d-52e08905ee3d'),
(207, 207, 1, 'All events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 01:06:46', '2025-03-14 01:06:46', '9bb6dbd8-f564-4e65-a422-d1a02a68d847'),
(210, 210, 1, NULL, '__temp_uxxcvqxljfugioqzlotnwpuprdhikrfyorhj', NULL, '{\"9eab9ff9-f871-4714-b7e2-14dc6eecd027\":\"Upcoming Events:\",\"4721bfa5-e6ff-4509-8955-aa45e5a79c16\":true,\"687d963e-1dd2-4530-a0e4-ffaaef2ef1c1\":[]}', 1, '2025-03-14 01:06:59', '2025-03-19 10:12:54', '74b9f214-0633-4d6f-88bd-47facb961e62'),
(211, 211, 1, 'All events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 01:06:59', '2025-03-14 01:06:59', '4e62c8a4-58a2-4644-b724-b1d8781c6f41'),
(212, 212, 1, NULL, '__temp_uxxcvqxljfugioqzlotnwpuprdhikrfyorhj', NULL, NULL, 1, '2025-03-14 01:06:59', '2025-03-14 01:06:59', '2b38e292-671a-4722-bb3b-e56b4916fffe'),
(215, 215, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Events - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Events - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": {\"1\": \"All events\"}, \"descriptionRaw\": \"\"}}', 1, '2025-03-14 01:08:04', '2025-03-14 01:08:04', 'e8694107-9710-4e2b-abda-d145b14ed8d5'),
(216, 216, 1, NULL, '__temp_uxxcvqxljfugioqzlotnwpuprdhikrfyorhj', NULL, '{\"4721bfa5-e6ff-4509-8955-aa45e5a79c16\": true}', 1, '2025-03-14 01:08:04', '2025-03-14 01:08:04', 'bbc63114-8344-4292-8d31-f62e135f6716'),
(217, 217, 1, 'EPR Deepening day April 10 -11 , Berlin', 'epr-therapy-days-4', 'event/epr-therapy-days-4', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"EPR Deepening day April 10 -11 , Berlin - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"EPR Deepening day April 10 -11 , Berlin - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-14 01:09:39', '2025-03-19 10:28:07', '5c3a1dcb-fb1f-4883-b339-6c2922819ebe'),
(218, 218, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"49e3e828-6795-49c5-a82b-3360a0b3664d\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"eca88837-37fe-4366-9c04-3b186a4046b3\":\"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\",\"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\":\"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\",\"50fd66aa-669e-462b-bfb3-183483ca7f53\":{\"date\":\"2025-04-10 07:00:00\"},\"3699bcd1-9095-4053-972b-820dc7fdd9fb\":{\"date\":\"2025-04-11 07:00:00\"},\"c6ea490e-ad7d-401f-b119-1404e146ac0e\":{\"date\":\"2025-03-21 07:00:00\"},\"daaa5d42-b397-4793-8d5e-25ada16deeb1\":\"230,00 €\",\"6cbe1a93-eb4b-48f0-b47c-fc314d657898\":false,\"59560f2d-bf2a-4a28-9c90-837018f49967\":\"Berlin\",\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\":\"Valentina Karima Hočevar\"}', 1, '2025-03-14 01:09:39', '2025-03-19 10:28:07', '5f3d03e1-7c4c-4ef0-bd48-cf3b291a9490'),
(219, 219, 1, NULL, '__temp_jkcpzlctmcleljndejycdkwjyudzxdvkuhzu', NULL, '{\"033d0eef-2816-4a44-8a29-a76c412495ef\": [180], \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [179]}', 1, '2025-03-14 01:09:39', '2025-03-14 01:09:39', '9e09f486-39bd-40d7-8035-2804fd557826'),
(220, 220, 1, 'EPR therapy days', 'epr-therapy-days-4', 'event/epr-therapy-days-4', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 01:09:39', '2025-03-14 01:09:39', '590f6a66-f373-402a-8de0-cdc509116bfc'),
(221, 221, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-21 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-14 01:09:39', '2025-03-14 01:09:39', '15501001-f1f8-4188-99f8-c219a6d74413'),
(222, 222, 1, NULL, '__temp_jkcpzlctmcleljndejycdkwjyudzxdvkuhzu', NULL, '{\"033d0eef-2816-4a44-8a29-a76c412495ef\": [180], \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [179]}', 1, '2025-03-14 01:09:40', '2025-03-14 01:09:40', '9dc5d335-81f5-4827-aa6c-5a8c80135eaf'),
(225, 225, 1, 'EPR therapy days', 'epr-therapy-days', 'event/epr-therapy-days', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 01:40:17', '2025-03-14 01:40:17', '0451cf9d-8bc5-453e-8a24-feddfea09f6c'),
(226, 226, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"6cbe1a93-eb4b-48f0-b47c-fc314d657898\": false, \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-13 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-14 01:40:17', '2025-03-14 01:40:17', '86233f51-1ca0-4b50-b957-e9ecfe3f78df'),
(229, 229, 1, 'EPR therapy days', 'epr-therapy-days', 'event/epr-therapy-days', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 01:40:27', '2025-03-14 01:40:27', 'd03df9e8-7fc7-4690-ae9d-68383e239ba8'),
(230, 230, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"6cbe1a93-eb4b-48f0-b47c-fc314d657898\": false, \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-27 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\"}', 1, '2025-03-14 01:40:27', '2025-03-14 01:40:27', 'a2bc23b4-52fc-4555-a37e-a90d46861812'),
(231, 231, 1, 'EPR therapy days', 'epr-therapy-days', 'event/epr-therapy-days', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"EPR therapy days - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 01:45:46', '2025-03-14 01:45:46', 'f48e8d59-b539-4580-b355-7cdea72f3def'),
(232, 232, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\": \"Glyndie Nickerson\", \"49e3e828-6795-49c5-a82b-3360a0b3664d\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"50fd66aa-669e-462b-bfb3-183483ca7f53\": {\"date\": \"2025-03-28 07:00:00\"}, \"59560f2d-bf2a-4a28-9c90-837018f49967\": \"Online\", \"6cbe1a93-eb4b-48f0-b47c-fc314d657898\": false, \"c6ea490e-ad7d-401f-b119-1404e146ac0e\": {\"date\": \"2025-03-27 07:00:00\"}, \"daaa5d42-b397-4793-8d5e-25ada16deeb1\": \"230,00 €\", \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\": \"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\", \"eca88837-37fe-4366-9c04-3b186a4046b3\": \"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\", \"ee77a16c-2740-4126-b391-d88c9f4ff060\": \"Begins at 10:00 on the first day and ends at 17:00 on the second day.\"}', 1, '2025-03-14 01:45:46', '2025-03-14 01:45:46', '06f30ff9-fbd1-4475-b7e8-ab2aa5e3600d'),
(233, 233, 1, 'About me', 'about-me', 'about-me', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:00:30', '2025-03-14 02:00:30', '61c2925d-45ef-4765-adde-e98d601aca2d'),
(234, 234, 1, 'About me', 'about-me', 'about-me', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:00:30', '2025-03-14 02:00:30', 'f0b0b72d-8186-4b10-94d4-784b0678d9d6'),
(238, 238, 1, NULL, '__temp_lekvchmjekxlrsvnukjweeivpobcycywklae', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"About me\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"left\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\":\"Karima Valentina Hočevar\",\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal. My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always with an emphasis on cultivating presence, inner spaciousness, and relational attunement.&nbsp;</p><p>Since 2011, I have been leading and co-leading trainings and seminars on Biodynamic Craniosacral Therapy (BCST) in Slovenia and internationally. My work with BCST has provided insights into the body\'s inherent wisdom and capacity for self-regulation. Since 2015, I have been part of the teaching team and a supervisor for NeuroAffective Relational Model (NARM) trainings across Europe.Through the years of practice, I am in the process of developing an appraoch to process-oriented therapies, called Embodied Psychodynamic Resonance (EPR), which integrates my understanding of wholeness with principles from NARM and BCST.</p>\"}', 1, '2025-03-14 02:00:56', '2025-03-19 10:08:43', '69234660-100c-4144-94c6-7c7ff9855b2a'),
(239, 239, 1, NULL, '__temp_ficawdbjdfzmdmyozeuhprhxcxdgwnslfbxk', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"381\"],\"033d0eef-2816-4a44-8a29-a76c412495ef\":[\"381\"]}', 1, '2025-03-14 02:00:56', '2025-03-19 10:06:50', '3f0304a6-b7b0-4f20-a5c1-10b322ebb8b7'),
(240, 240, 1, 'About me', 'about-me', 'about-me', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:00:56', '2025-03-14 02:00:56', '47d4dd37-9c33-4357-8e89-2fa36a064311'),
(241, 241, 1, NULL, '__temp_lekvchmjekxlrsvnukjweeivpobcycywklae', NULL, '{\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"left\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal.  My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always with an emphasis on cultivating presence, inner spaciousness, and relational attunement. <br />Since 2011, I have been leading and co-leading trainings and seminars on Biodynamic Craniosacral Therapy (BCST) in Slovenia and internationally. My work with BCST has provided insights into the body\'s inherent wisdom and capacity for self-regulation. Since 2015, I have been part of the teaching team and a supervisor for NeuroAffective Relational Model (NARM) trainings across Europe.Through the years of practice, I am in the process of developing an appraoch to process-oriented therapies, called Embodied Psychodynamic Resonance (EPR), which integrates my understanding of wholeness with principles from NARM and BCST.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"About me\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Karima Valentina Hočevar\"}', 1, '2025-03-14 02:00:56', '2025-03-14 02:00:56', '341a8177-7b92-4346-ba02-8afe752d3e95'),
(242, 242, 1, NULL, '__temp_ficawdbjdfzmdmyozeuhprhxcxdgwnslfbxk', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [32]}', 1, '2025-03-14 02:00:56', '2025-03-14 02:00:56', '29a315d1-b8c0-4598-b7ee-5c1b3fabac6a'),
(243, 243, 1, 'My work', 'my-work', 'my-work', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:02:05', '2025-03-14 02:02:05', '08691e38-2771-4678-bb5e-ff67c113c584'),
(244, 244, 1, 'My work', 'my-work', 'my-work', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:02:05', '2025-03-14 02:02:05', '3169cb2e-8e06-45af-a898-313254abcfb2'),
(248, 248, 1, NULL, '__temp_rdwpgnoshteyuhouyaspadhgmvixaknbgkro', NULL, '{\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\": true, \"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"left\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>Embodied Psychodynamic Resonance (EPR) is an intuitive approach to therapy that helps clients realign with their natural inner spaciousness and sense of connection. It is a culmination of my lifelong inquiry into the interplay between mind, body, and relational presence. It is rooted in an embodied awareness of the profound intelligence that guides healing from within. The approach centers on creating safe, attuned spaces where healing unfolds organically. Drawing from NARM and BCST,   EPR developed as a way to integrate verbal and non-verbal therapeutic approaches. It is grounded in the embodied recognition that we are inherently whole, even in the face of the separation that comes from early adaptations and survival strategies.<br /><br />Developmental Trauma: EPR recognizes that the path toward healing requires attunement to the complexities of early life adaptations, addressing both the visible and invisible aspects of human experience. The fundamental assumption we offer is that, on a deeper level of experience, we are always whole and complete. Even within the complexity of adaptation, there is an underlying health at work. Every survival strategy, no matter how misaligned it may appear, is part of an inherent organizing wisdom.<br /><br />My work is not a therapeutic system. It focusses on the essential nature of our beeingness as humans, and how we can bring this dimension into our work as therapists. My deeper intention is to encourage therapists into a deeper trust in the subtle, natural unfolding of life. I am dedicated to supporting individuals—whether clients or practitioners—in cultivating a deeper connection with themselves  vand the unseen currents of life force that sustain us all.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"My work\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Embodied Psychodynamic Resonance (EPR)\"}', 1, '2025-03-14 02:02:53', '2025-03-14 02:06:00', '8f8b07cc-a055-4da2-8e58-7237ea4061a1'),
(249, 249, 1, NULL, '__temp_aybtmzrkapmevafpbszdnqxzgdrdqmcangwh', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [46]}', 1, '2025-03-14 02:02:53', '2025-03-14 02:02:53', '2368617a-33ee-4a08-a911-a9fa82cfc807'),
(250, 250, 1, 'My work', 'my-work', 'my-work', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:02:53', '2025-03-14 02:02:53', '3f8ec492-fdc6-4c58-8dbc-f2c81013460c'),
(251, 251, 1, NULL, '__temp_rdwpgnoshteyuhouyaspadhgmvixaknbgkro', NULL, '{\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"left\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>Embodied Psychodynamic Resonance (EPR) is an intuitive approach to therapy that helps clients realign with their natural inner spaciousness and sense of connection. It is a culmination of my lifelong inquiry into the interplay between mind, body, and relational presence. It is rooted in an embodied awareness of the profound intelligence that guides healing from within. The approach centers on creating safe, attuned spaces where healing unfolds organically. Drawing from NARM and BCST,   EPR developed as a way to integrate verbal and non-verbal therapeutic approaches. It is grounded in the embodied recognition that we are inherently whole, even in the face of the separation that comes from early adaptations and survival strategies.<br /><br />Developmental Trauma: EPR recognizes that the path toward healing requires attunement to the complexities of early life adaptations, addressing both the visible and invisible aspects of human experience. The fundamental assumption we offer is that, on a deeper level of experience, we are always whole and complete. Even within the complexity of adaptation, there is an underlying health at work. Every survival strategy, no matter how misaligned it may appear, is part of an inherent organizing wisdom.<br /><br />My work is not a therapeutic system. It focusses on the essential nature of our beeingness as humans, and how we can bring this dimension into our work as therapists. My deeper intention is to encourage therapists into a deeper trust in the subtle, natural unfolding of life. I am dedicated to supporting individuals—whether clients or practitioners—in cultivating a deeper connection with themselves  vand the unseen currents of life force that sustain us all.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"My work\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Embodied Psychodynamic Resonance (EPR)\"}', 1, '2025-03-14 02:02:53', '2025-03-14 02:02:53', '60531c38-7595-48b1-b456-249ace926037'),
(252, 252, 1, NULL, '__temp_aybtmzrkapmevafpbszdnqxzgdrdqmcangwh', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [46]}', 1, '2025-03-14 02:02:53', '2025-03-14 02:02:53', '4c8021f1-4bc2-4fd1-a1e5-1460d0653ca9'),
(255, 255, 1, 'My work', 'my-work', 'my-work', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:06:00', '2025-03-14 02:06:00', '1ef2d38c-7e05-4835-8c54-91de3e7982f5'),
(256, 256, 1, NULL, '__temp_rdwpgnoshteyuhouyaspadhgmvixaknbgkro', NULL, '{\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\": true, \"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"left\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>Embodied Psychodynamic Resonance (EPR) is an intuitive approach to therapy that helps clients realign with their natural inner spaciousness and sense of connection. It is a culmination of my lifelong inquiry into the interplay between mind, body, and relational presence. It is rooted in an embodied awareness of the profound intelligence that guides healing from within. The approach centers on creating safe, attuned spaces where healing unfolds organically. Drawing from NARM and BCST,   EPR developed as a way to integrate verbal and non-verbal therapeutic approaches. It is grounded in the embodied recognition that we are inherently whole, even in the face of the separation that comes from early adaptations and survival strategies.<br /><br />Developmental Trauma: EPR recognizes that the path toward healing requires attunement to the complexities of early life adaptations, addressing both the visible and invisible aspects of human experience. The fundamental assumption we offer is that, on a deeper level of experience, we are always whole and complete. Even within the complexity of adaptation, there is an underlying health at work. Every survival strategy, no matter how misaligned it may appear, is part of an inherent organizing wisdom.<br /><br />My work is not a therapeutic system. It focusses on the essential nature of our beeingness as humans, and how we can bring this dimension into our work as therapists. My deeper intention is to encourage therapists into a deeper trust in the subtle, natural unfolding of life. I am dedicated to supporting individuals—whether clients or practitioners—in cultivating a deeper connection with themselves  vand the unseen currents of life force that sustain us all.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"My work\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Embodied Psychodynamic Resonance (EPR)\"}', 1, '2025-03-14 02:06:00', '2025-03-14 02:06:00', 'f4b3f0ea-0116-432b-a6e7-c63867e3d025'),
(257, 257, 1, 'How does an EPR Session look like?', 'epr', 'embodied-psychodynamic-resonance', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"How does an EPR Session look like? - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"How does an EPR Session look like? - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": {\"1\": \"EPR\"}, \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:06:51', '2025-03-14 02:07:24', '4fc72244-7c35-4e9c-a5a1-f9678e796210'),
(258, 258, 1, 'EPR', 'epr', 'embodied-psychodynamic-resonance', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:06:51', '2025-03-14 02:06:51', '850f9bfc-a9b8-4518-a68e-2e19889e8205'),
(261, 261, 1, NULL, '__temp_znuenhitigyhlkyqycfzpwqpxqvzkywxfzci', NULL, '{\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\": true, \"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"right\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>EPR combines verbal and non-verbal approaches, integrating touch and a psychodynamic orientation into the subjective world of the client. In this way, EPR can address both shock trauma and elements of developmental trauma. It supports a moment-to-moment exploration of the obstacles and adaptations that shape our experience. The process is designed to create a safe, open-hearted space where healing unfolds through deep presence, resonance, and embodied awareness.<br /><br />Practically, during an EPR session, the client usually lies on a table  while the therapist applies touch. The therapist remains in receptive attunement to the specific movements of the life force, as expressed through various levels of experience. Through touch and verbal support, clients are guided toward greater coherence, trust, and connection with their authentic self.<br /><br />An EPR session is not about fixing or analyzing but about cultivating curiosity toward the restorative movements of our being  as a whole. The therapist’s role is not to lead the process but rather to respond to these restorative movements and help unfold their innate wisdom.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"How does an EPR Session look like?\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Embodied Psychodynamic Resonance Session\"}', 1, '2025-03-14 02:07:24', '2025-03-14 02:07:24', 'b8492d98-7181-4f5f-84ab-b2e356e329f9'),
(262, 262, 1, 'How does an EPR Session look like?', 'epr', 'embodied-psychodynamic-resonance', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"How does an EPR Session look like? - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"How does an EPR Session look like? - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": {\"1\": \"EPR\"}, \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:07:24', '2025-03-14 02:07:24', '3b17f956-f3f2-4519-818b-ea2991d9a0fa'),
(263, 263, 1, NULL, '__temp_znuenhitigyhlkyqycfzpwqpxqvzkywxfzci', NULL, '{\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\": true, \"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"right\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>EPR combines verbal and non-verbal approaches, integrating touch and a psychodynamic orientation into the subjective world of the client. In this way, EPR can address both shock trauma and elements of developmental trauma. It supports a moment-to-moment exploration of the obstacles and adaptations that shape our experience. The process is designed to create a safe, open-hearted space where healing unfolds through deep presence, resonance, and embodied awareness.<br /><br />Practically, during an EPR session, the client usually lies on a table  while the therapist applies touch. The therapist remains in receptive attunement to the specific movements of the life force, as expressed through various levels of experience. Through touch and verbal support, clients are guided toward greater coherence, trust, and connection with their authentic self.<br /><br />An EPR session is not about fixing or analyzing but about cultivating curiosity toward the restorative movements of our being  as a whole. The therapist’s role is not to lead the process but rather to respond to these restorative movements and help unfold their innate wisdom.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"How does an EPR Session look like?\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Embodied Psychodynamic Resonance Session\"}', 1, '2025-03-14 02:07:24', '2025-03-14 02:07:24', 'a223135b-34c1-4ce7-af03-e22dcf99d535'),
(267, 267, 1, 'Embodied Psychodynamic Resonance Session', NULL, NULL, NULL, 1, '2025-03-14 02:07:48', '2025-03-14 02:07:48', '28439151-fafa-45e0-a0a1-3d269283337a'),
(268, 268, 1, NULL, '__temp_iauunptaucjccgdgesptjjjmrgysdqjzvxbe', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [267]}', 1, '2025-03-14 02:07:50', '2025-03-14 02:07:50', '39eb151d-82e3-4679-b8a6-d6b6d704f766'),
(269, 269, 1, 'How does an EPR Session look like?', 'epr', 'embodied-psychodynamic-resonance', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"How does an EPR Session look like? - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"How does an EPR Session look like? - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": {\"1\": \"EPR\"}, \"descriptionRaw\": \"\"}}', 1, '2025-03-14 02:07:50', '2025-03-14 02:07:50', '8b989c60-fd81-47ad-8c7d-6cb6bd71015c'),
(270, 270, 1, NULL, '__temp_znuenhitigyhlkyqycfzpwqpxqvzkywxfzci', NULL, '{\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\": true, \"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\": \"right\", \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\": \"<p>EPR combines verbal and non-verbal approaches, integrating touch and a psychodynamic orientation into the subjective world of the client. In this way, EPR can address both shock trauma and elements of developmental trauma. It supports a moment-to-moment exploration of the obstacles and adaptations that shape our experience. The process is designed to create a safe, open-hearted space where healing unfolds through deep presence, resonance, and embodied awareness.<br /><br />Practically, during an EPR session, the client usually lies on a table  while the therapist applies touch. The therapist remains in receptive attunement to the specific movements of the life force, as expressed through various levels of experience. Through touch and verbal support, clients are guided toward greater coherence, trust, and connection with their authentic self.<br /><br />An EPR session is not about fixing or analyzing but about cultivating curiosity toward the restorative movements of our being  as a whole. The therapist’s role is not to lead the process but rather to respond to these restorative movements and help unfold their innate wisdom.</p>\", \"61d1d186-dff7-4cbd-b901-256e496e4472\": \"How does an EPR Session look like?\", \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\": \"Embodied Psychodynamic Resonance Session\"}', 1, '2025-03-14 02:07:50', '2025-03-14 02:07:50', '6f7fedb8-abfd-490f-85b8-fd33e4217ec2'),
(271, 271, 1, NULL, '__temp_iauunptaucjccgdgesptjjjmrgysdqjzvxbe', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\": [267]}', 1, '2025-03-14 02:07:50', '2025-03-14 02:07:50', '0a587e15-0c73-4225-99e9-5f175af24ccf'),
(272, 272, 1, 'All inspirations', 'all-inspirations', 'inspirations', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:00:16', '2025-03-14 06:00:16', 'a38d8cb5-efa9-4305-a765-aa1c6e6be2c9');
INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `title`, `slug`, `uri`, `content`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(273, 273, 1, 'All inspirations', 'all-inspirations', 'inspirations', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:00:16', '2025-03-14 06:00:16', 'b35225e7-64d7-4093-a2b0-384de204b977'),
(276, 276, 1, NULL, '__temp_rzezusjzzdecflcqabospcndxjvaresirikl', NULL, '{\"4b9b779b-97a7-4623-9b1f-5126efd2ddd7\": true, \"717dab41-8e05-4a26-a3fd-ff31e317c4ca\": \"Inspirations\", \"91fb1656-a4c7-4c31-acce-60bc64eb0f8f\": []}', 1, '2025-03-14 06:00:44', '2025-03-14 06:01:39', 'e621f0f6-dc98-40ba-8478-5aa90ff781e9'),
(277, 277, 1, 'All inspirations', 'all-inspirations', 'inspirations', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:00:44', '2025-03-14 06:00:44', '76968341-61a3-4616-b2fe-e1d85386ba4e'),
(278, 278, 1, NULL, '__temp_rzezusjzzdecflcqabospcndxjvaresirikl', NULL, '{\"717dab41-8e05-4a26-a3fd-ff31e317c4ca\": \"Inspirations\"}', 1, '2025-03-14 06:00:45', '2025-03-14 06:00:45', 'eb263956-1721-4a50-acd4-c90b864e77c4'),
(281, 281, 1, 'All inspirations', 'all-inspirations', 'inspirations', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:01:39', '2025-03-14 06:01:39', '0df61a09-ca28-4b41-9f8a-6cbd12d8a51a'),
(282, 282, 1, NULL, '__temp_rzezusjzzdecflcqabospcndxjvaresirikl', NULL, '{\"4b9b779b-97a7-4623-9b1f-5126efd2ddd7\": true, \"717dab41-8e05-4a26-a3fd-ff31e317c4ca\": \"Inspirations\"}', 1, '2025-03-14 06:01:39', '2025-03-14 06:01:39', '0d6a83ec-1721-457b-9f40-04ae19ae9a01'),
(283, 283, 1, 'PRIMER OBJAVE', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-4', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-4', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Somatic therapy: How working with the body can heal the imprints of trauma\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"PRIMER OBJAVE - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"PRIMER OBJAVE - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-14 06:02:56', '2025-03-19 10:32:14', 'bb11070f-f429-491c-bb4d-127e80f575dc'),
(284, 284, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '8080f41d-513c-4224-bec3-15c1ca7b5fc6'),
(285, 285, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>What can you feel in your face? Your neck? Your shoulders and arms? Maybe there’s tingling or fizzing, some warmth or cold. What does the air feel like against your skin? Some areas may be tense, while others are more relaxed. There might be a complete absence of sensation in other places.</p><p>Now tune into what emotions are coming up for you. Are you excited? Sluggish, tired? Anxious and ready for this exercise to be over? (If that’s the case, I won’t hold it against you.) Where do those feelings show up in your body? They might be in your chest, your throat or your stomach.</p><p>This act of drawing attention to our bodies is the foundation of our newsletter today. Ana, 44, of Fullerton wrote:</p>\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '7636d283-e016-451e-aa19-45ed6ad20e94'),
(286, 286, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '4a01a37d-70e3-412b-9e8c-f3b62d753918'),
(287, 287, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '85d52d35-1981-42dc-829e-5a9e0ec1a292'),
(288, 288, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', 'dc524fd1-17bb-451a-a051-e2774b064f57'),
(289, 289, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', 'd3f0d48e-4cd4-4746-aac9-970be848bb31'),
(290, 290, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '980fb671-7d0f-44a1-8d59-55d819ed7231'),
(291, 291, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '5e9acb75-dafd-4d6b-8191-da80e3a49266'),
(292, 292, 1, 'Somatic therapy: How working with the body can heal the imprints of trauma', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-4', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-4', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '2b9e395d-9151-4993-a5d3-2d1db202c308'),
(293, 293, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', 'be05a2f9-c504-4ce2-b568-07ef6cc58137'),
(294, 294, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>What can you feel in your face? Your neck? Your shoulders and arms? Maybe there’s tingling or fizzing, some warmth or cold. What does the air feel like against your skin? Some areas may be tense, while others are more relaxed. There might be a complete absence of sensation in other places.</p><p>Now tune into what emotions are coming up for you. Are you excited? Sluggish, tired? Anxious and ready for this exercise to be over? (If that’s the case, I won’t hold it against you.) Where do those feelings show up in your body? They might be in your chest, your throat or your stomach.</p><p>This act of drawing attention to our bodies is the foundation of our newsletter today. Ana, 44, of Fullerton wrote:</p>\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '224edce7-7d02-49d0-8585-d3d1716eeb22'),
(295, 295, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '24b28350-af31-42b7-905f-154906c98a91'),
(296, 296, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '0320c56a-38a0-461b-8248-6b77ee06dadb'),
(297, 297, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', 'e56f5c1b-2402-4c69-a89f-86b6bbea7c4f'),
(298, 298, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', 'ffc12744-66f7-4c4c-b3ca-2d670747c97f'),
(299, 299, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '4388e526-2756-4c9a-a55c-0e81ac24f5d4'),
(300, 300, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '32978a21-ae6b-47a3-9a8b-8aa7c7284b6a'),
(301, 301, 1, 'Essential States', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-5', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-5', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Somatic therapy: How working with the body can heal the imprints of trauma\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Essential States - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Essential States - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-14 06:02:59', '2025-03-19 10:31:49', '091eb682-ed9e-4e56-8c84-7c42f68c49e5'),
(302, 302, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"b3e478af-1cfb-4477-be12-08cf53448ceb\":\"A sense of space and connection to essential states—both in the client and therapist—is often what is missing when working through core dilemmas.\",\"a9c23139-d423-42de-99b0-8e565396df95\":[\"75\"]}', 1, '2025-03-14 06:02:59', '2025-03-19 10:31:49', '636e9977-342e-442a-8f8f-27179664297e'),
(303, 303, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\":\"<p>As a craniosacral therapist, my work has taught me to align with invisible currents that support healing at a fundamental level. It has revealed the potency of space and the power of orienting toward essential states when working with clients. These states serve as more than mere resources; they are prerequisites for meeting the most wounded and fragmented places within us. They communicate wholeness amidst disconnection.</p><p>A sense of space and connection to essential states—both in the client and therapist—is often what is missing when working through core dilemmas. When deeply held identifications crystallize, they create an illusion of immobility. In these moments, even experienced therapists may lose patience, disconnect from deeper states within themselves, act on their countertransference, or resort to problem-solving. However, by cultivating an internal orientation toward spaciousness and deep intention, we bring consciousness into these fixed areas, allowing for movement and integration.</p><p>As therapists, we hold both the responsibility and the opportunity to develop deeper states of being that serve as fundamental resources for healing. Ideally, we do not begin by drifting with traumatic currents or fighting shadows without first meeting them with an inner light. These deeper states act as that light, creating the space to embrace and hold the protective strategies and symptoms we encounter in clients. Universal states such as gratitude, wholeness, and compassion are always available to us because they are intrinsic to human experience.</p>\"}', 1, '2025-03-14 06:02:59', '2025-03-19 10:31:49', '06537d50-ef4e-42ce-9014-8ee00a305112'),
(304, 304, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-14 06:02:59', '2025-03-14 06:02:59', '0cf20da7-af32-4506-b4c7-9582e6a427cc'),
(305, 305, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-14 06:02:59', '2025-03-14 06:02:59', '0c70da3c-47bf-4027-8e9a-da5dce0fd9ae'),
(306, 306, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-14 06:02:59', '2025-03-14 06:02:59', '27729c68-bfea-4e80-9d11-d569a079f0b5'),
(307, 307, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-14 06:02:59', '2025-03-14 06:02:59', '3e732e07-c681-4d16-974a-5eee7dc68858'),
(308, 308, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', '42a2896d-5c19-4d44-94d9-f58783a7b352'),
(309, 309, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', 'fa119cef-437e-41cc-b770-c409aca07f09'),
(310, 310, 1, 'Somatic therapy: How working with the body can heal the imprints of trauma', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-5', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-5', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', '78c30ed6-11f3-4dfa-ac8c-6a23bbf28344'),
(311, 311, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', '1c22c39b-7c16-4499-80a4-c5cc479766d5'),
(312, 312, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>What can you feel in your face? Your neck? Your shoulders and arms? Maybe there’s tingling or fizzing, some warmth or cold. What does the air feel like against your skin? Some areas may be tense, while others are more relaxed. There might be a complete absence of sensation in other places.</p><p>Now tune into what emotions are coming up for you. Are you excited? Sluggish, tired? Anxious and ready for this exercise to be over? (If that’s the case, I won’t hold it against you.) Where do those feelings show up in your body? They might be in your chest, your throat or your stomach.</p><p>This act of drawing attention to our bodies is the foundation of our newsletter today. Ana, 44, of Fullerton wrote:</p>\"}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', 'cff08fd2-d73b-46e3-beb4-9a4a4ddefc71'),
(313, 313, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', '7ccaa4db-71df-45b6-a65f-4b879f12c834'),
(314, 314, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', '4f2181a0-a361-48a5-8e4c-2a2e06579477'),
(315, 315, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', 'c6ebdc3d-3924-4f72-be30-79eafc0717bb'),
(316, 316, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', '430aedad-e102-47df-a1f8-d809b35b666f'),
(317, 317, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', '0fc52d65-20b9-4b1e-9bd8-0f22fa4a3108'),
(318, 318, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', 'e58d1798-731b-46aa-85c7-0ae33da2ae7b'),
(319, 319, 1, 'Where to put this??', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-6', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-6', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Somatic therapy: How working with the body can heal the imprints of trauma\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Where to put this?? - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Where to put this?? - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-14 06:03:02', '2025-03-19 10:30:58', 'ac7c4b6e-e236-4226-933d-9f1080a7ff88'),
(320, 320, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"b3e478af-1cfb-4477-be12-08cf53448ceb\":\"EPR highlights the interdependent nature of inner spaciousness and resonance, recognizing them as the foundation of any embodied therapy.\",\"a9c23139-d423-42de-99b0-8e565396df95\":[\"75\"]}', 1, '2025-03-14 06:03:02', '2025-03-19 10:31:59', 'f813ba27-f446-4d3b-abde-b3802c951c6c'),
(321, 321, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\":\"<p>When therapists attune to these underlying structures, they develop a greater capacity to trust the unseen currents of Life Force—sometimes referred to as ‘divine presence’ or ‘chi’—that moves through us as an organizing and creative force. Engaging with this force in a direct, non-verbal way fosters a therapeutic presence that is both spacious and anchored in open-heartedness.</p><p>EPR highlights the interdependent nature of inner spaciousness and resonance, recognizing them as the foundation of any embodied therapy. This foundational attunement allows for the exploration of obstacles, adaptations, and survival strategies in a way that encourages natural and effortless disidentification from them.&nbsp;</p><p>The moment-to-moment, process-oriented nature of this work enables deep psychobiological healing, grounded in the recognition that, whether immediately apparent or not, we are all inherently moving toward greater inner spaciousness.</p>\"}', 1, '2025-03-14 06:03:02', '2025-03-19 10:30:59', '636c904b-659e-48f3-b13d-5c588171fbc4'),
(322, 322, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', 'c2e80c35-7490-4759-aedb-944178318666'),
(323, 323, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '7de9601f-7a41-441c-a1cb-fc658e6f3874'),
(324, 324, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', 'a1d9c653-f0a9-4d4e-b357-f43f98cf1a10'),
(325, 325, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '7bd22517-10ef-4686-a2d7-385f7f624d43'),
(326, 326, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '36840ee5-ec61-4ad0-97cf-89ae9c24196d'),
(327, 327, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '0f4ebf0d-96f8-4a05-93af-064693a970b4'),
(328, 328, 1, 'Somatic therapy: How working with the body can heal the imprints of trauma', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-6', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-6', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"\", \"social\": {\"twitter\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}, \"facebook\": {\"title\": \"Somatic therapy: How working with the body can heal the imprints of trauma - Karima Hočevar\", \"handle\": null, \"imageId\": \"\", \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": \"\"}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', 'a111963b-792b-472d-a376-97412f453d00'),
(329, 329, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"a9c23139-d423-42de-99b0-8e565396df95\": [75], \"b3e478af-1cfb-4477-be12-08cf53448ceb\": \"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', 'd742072c-5ea4-42de-8dea-4b2ff67402f6'),
(330, 330, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>What can you feel in your face? Your neck? Your shoulders and arms? Maybe there’s tingling or fizzing, some warmth or cold. What does the air feel like against your skin? Some areas may be tense, while others are more relaxed. There might be a complete absence of sensation in other places.</p><p>Now tune into what emotions are coming up for you. Are you excited? Sluggish, tired? Anxious and ready for this exercise to be over? (If that’s the case, I won’t hold it against you.) Where do those feelings show up in your body? They might be in your chest, your throat or your stomach.</p><p>This act of drawing attention to our bodies is the foundation of our newsletter today. Ana, 44, of Fullerton wrote:</p>\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '57332c87-e196-4612-abc2-300bf71119fa'),
(331, 331, 1, NULL, '__temp_gxxaeevqoffmfqddlilcqixgdgqigzolzizb', NULL, '{\"77c6a620-da05-48cc-9749-6236ddb2d19a\": \"Ana, 44, of Fullerton\", \"fc6a7918-0089-4f87-b9a9-929c37825f1f\": \"I understand that the body holds memories and information, and it can be a starting point for practicing holistic wellbeing. Beyond talk therapy, can you describe other types of therapy that focus on the body, or incorporate it into therapy sessions?\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '99615f57-425a-4965-ab80-fb40d4b29be4'),
(332, 332, 1, NULL, '__temp_resbzkrtfrespycbtkdxsbpcpxeyohmwakrl', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Somatic therapies</h2><p>Psychotherapies that heavily involve the body are referred to as “somatic,” which just means “of, relating to or affecting the body.”</p><p>There are many different kinds of somatic therapies. Before I describe a few of them, it’s important to understand why a growing number of mental health practitioners believe that the key to healing trauma and other stress disorders is through body work.</p><p>Most mental health treatment in the U.S. today is based on “top-down,” cognitive-based approaches, which encourage people to become conscious of their thoughts and then work to change those thoughts. Top-down approaches zero in on the topmost areas of the brain used for thinking and speaking.</p><p>This approach is helpful for a lot of people in alleviating symptoms of depression and anxiety. But in many cases, especially when mental health challenges are rooted in childhood neglect or traumatic experiences, these therapies aren’t enough.</p>\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '50bbdd46-678f-431c-be83-fea189e7134b'),
(333, 333, 1, NULL, '__temp_auycfssbobkezptllrcpzdrwkeeowurspsda', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h3>Somatic Experiencing</h3><p>Somatic Experiencing focuses on the body, first to address symptoms, with the idea that healing the felt experience of trauma can also help heal the emotional experience.</p><p>Psychologist Peter Levine developed Somatic Experiencing after observing that prey animals, who routinely face danger in the wild, recover by physically releasing the energy that builds up in their bodies during stressful events. Humans, on the other hand, often override these natural ways of regulating the nervous system with feelings of shame, judgment and fear. This approach aims to help people gradually move past the place where they’re stuck in processing their trauma.</p><p>Some Somatic Experiencing therapists might ask you to discuss your traumatic experiences; others will only have you describe what you felt in your body during the traumatic event. You may be asked to move your body in a way that brings up negative feelings so that they can be processed.</p>\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '3236e684-db6f-4fe9-8762-952077056cde'),
(334, 334, 1, NULL, '__temp_qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<h2>Beyond trauma</h2><p>We can all benefit from a greater connection with our bodies, regardless of how much stress and trauma we carry. In the words of Prentis Hemphill, when you tap into the experience  of your body, “the world opens.”</p><p>Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself. “That’s just as valid a practice of somatics as anything else,” Hemphill said.</p>\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', 'ebf5afe8-f98d-4d92-9d68-e16a87a9e133'),
(335, 335, 1, NULL, '__temp_ixkiejhmdrbwzosclapgbzbpascvfardgbpm', NULL, '{\"eb6ed327-1f26-4e4d-bc30-faef48980609\": \"Embodiment is also about being present to hugs, laughter with someone you love, being in nature and feeling part of something larger than yourself.\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '9c6aac35-56bb-4871-b0c8-98f113b1fa16'),
(336, 336, 1, NULL, '__temp_ktjhedxzmjnznvnobjggdqawxsncoghkhfvb', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\": \"<p>I would love to hear from you all about how you practice embodiment and/or your experiences with somatic therapy. And if you have any more questions about somatics,  send those too.</p>\"}', 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '2d1328d8-22e2-42ab-8ffb-7b5b7a652105'),
(337, 337, 1, 'Newsletter', 'newsletter', 'newsletter', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:04:39', '2025-03-14 06:04:39', '6289b984-c46b-4d6a-86a6-c36f1b0e32aa'),
(338, 338, 1, 'Newsletter', 'newsletter', 'newsletter', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:04:39', '2025-03-14 06:04:39', '98d5c9d4-ca9c-4733-96bb-e2208e100013'),
(341, 341, 1, NULL, '__temp_dhdvmlyvchxqafpfluxcqyxmbkmemjqokfmw', NULL, NULL, 1, '2025-03-14 06:06:14', '2025-03-14 06:06:14', '5c218bdc-a7ff-404d-825d-0ac76c94a2ce'),
(342, 342, 1, 'Newsletter', 'newsletter', 'newsletter', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:06:14', '2025-03-14 06:06:14', '4c082fb5-bcce-4ab6-a610-7cbd5e628bf9'),
(343, 343, 1, NULL, '__temp_dhdvmlyvchxqafpfluxcqyxmbkmemjqokfmw', NULL, NULL, 1, '2025-03-14 06:06:14', '2025-03-14 06:06:14', 'fe51ad85-7858-4941-a5b3-5675af2ef412'),
(346, 346, 1, NULL, '__temp_yizqrsdgtiqthwtkjdbxrmkthyxqfrguapvs', NULL, NULL, 1, '2025-03-14 06:32:39', '2025-03-14 06:32:39', '220c9e0f-8c43-4f59-8690-4fa10c3f98de'),
(347, 347, 1, 'Newsletter', 'newsletter', 'newsletter', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\": {\"score\": \"neutral\", \"social\": {\"twitter\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}, \"facebook\": {\"title\": [], \"handle\": null, \"imageId\": null, \"description\": []}}, \"advanced\": {\"robots\": [], \"canonical\": null}, \"keywords\": [], \"titleRaw\": [], \"descriptionRaw\": \"\"}}', 1, '2025-03-14 06:32:39', '2025-03-14 06:32:39', '00ba4027-0907-4673-9006-ea7f1893ea0d'),
(348, 348, 1, NULL, '__temp_yizqrsdgtiqthwtkjdbxrmkthyxqfrguapvs', NULL, NULL, 1, '2025-03-14 06:32:39', '2025-03-14 06:32:39', '91a76d66-4ce4-4a9c-abdf-c868d3257d20'),
(349, 349, 1, 'Privacy policy', 'privacy-policy', 'privacy-policy', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-14 21:59:01', '2025-03-14 21:59:01', '4f901d2d-cd4f-43fe-97f1-e8e3cd4818e9'),
(350, 350, 1, 'Privacy policy', 'privacy-policy', 'privacy-policy', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-14 21:59:01', '2025-03-14 21:59:01', 'a2dbf1eb-44bf-41bd-805c-19ffe8031096'),
(351, 351, 1, 'Terms of use', 'terms-of-use', 'terms-of-use', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Terms of use\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Terms of use - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Terms of use - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-14 21:59:01', '2025-03-14 22:26:07', 'f57918bd-7b63-48ac-b57f-f2781cd1bd46'),
(352, 352, 1, 'Terms of use', 'terms-of-use', 'terms-of-use', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-14 21:59:01', '2025-03-14 21:59:01', '93525950-ec1e-442b-9eae-bc6de0379261'),
(353, 353, 1, 'Terms of use', 'terms-of-use', 'terms-of-use', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-14 21:59:02', '2025-03-14 21:59:02', 'f279263c-d17a-4247-a4bb-7d31718c5d6b'),
(354, 354, 1, 'Tilen Poje', 'tilen-poje', 'newsletter-subscribers/tilen-poje', '{\"adecda5a-83e0-4975-bf15-ee3f40b1de1c\":\"poje.tilen@gmail.com\"}', 1, '2025-03-14 22:09:35', '2025-03-14 22:09:35', 'c0cb2bbd-7411-4b08-beae-8841aca1d470'),
(355, 355, 1, 'Tilen Poje', 'tilen-poje', 'newsletter-subscribers/tilen-poje', '{\"adecda5a-83e0-4975-bf15-ee3f40b1de1c\":\"poje.tilen@gmail.com\"}', 1, '2025-03-14 22:09:35', '2025-03-14 22:09:35', '7e20f548-4210-47ab-ab4f-ea5a41320399'),
(356, 356, 1, 'Tilen Poje', 'tilen-poje', 'event-registrations/tilen-poje', '{\"62aaba0d-fa6b-4032-a7bc-1fcb1777acf5\":\"poje.tilen@gmail.com\",\"ca837b9f-5f15-4202-b474-6f297b977fba\":\"040720915\",\"87f0883e-9b95-4d59-820c-d7a0f24d57fe\":\"Web developer\",\"8a49bd86-d11c-4dfc-81b0-148d170b3c67\":\"EPR therapy days\",\"990ea861-c0b6-4698-8790-2991f70f896c\":[\"157\"]}', 1, '2025-03-14 22:17:32', '2025-03-14 22:17:32', '3b46c32a-375f-4027-8916-753ad44878ff'),
(357, 357, 1, 'Tilen Poje', 'tilen-poje', 'event-registrations/tilen-poje', '{\"62aaba0d-fa6b-4032-a7bc-1fcb1777acf5\":\"poje.tilen@gmail.com\",\"ca837b9f-5f15-4202-b474-6f297b977fba\":\"040720915\",\"87f0883e-9b95-4d59-820c-d7a0f24d57fe\":\"Web developer\",\"8a49bd86-d11c-4dfc-81b0-148d170b3c67\":\"EPR therapy days\",\"990ea861-c0b6-4698-8790-2991f70f896c\":[\"157\"]}', 1, '2025-03-14 22:17:32', '2025-03-14 22:17:32', '2dcea925-90a9-4279-bb29-428bbe177d29');
INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `title`, `slug`, `uri`, `content`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(358, 358, 1, 'Tilen Poje', 'tilen-poje', 'event-registrations/tilen-poje', '{\"62aaba0d-fa6b-4032-a7bc-1fcb1777acf5\":\"poje.tilen@gmail.com\",\"ca837b9f-5f15-4202-b474-6f297b977fba\":\"040720915\",\"87f0883e-9b95-4d59-820c-d7a0f24d57fe\":\"Web developer\",\"8a49bd86-d11c-4dfc-81b0-148d170b3c67\":\"EPR therapy days\",\"990ea861-c0b6-4698-8790-2991f70f896c\":[\"157\"]}', 1, '2025-03-14 22:22:03', '2025-03-14 22:22:03', 'f2151ab8-314f-4d65-9f70-b14fdec39e07'),
(359, 359, 1, 'Tilen Poje', 'tilen-poje', 'event-registrations/tilen-poje', '{\"62aaba0d-fa6b-4032-a7bc-1fcb1777acf5\":\"poje.tilen@gmail.com\",\"ca837b9f-5f15-4202-b474-6f297b977fba\":\"040720915\",\"87f0883e-9b95-4d59-820c-d7a0f24d57fe\":\"Web developer\",\"8a49bd86-d11c-4dfc-81b0-148d170b3c67\":\"EPR therapy days\",\"990ea861-c0b6-4698-8790-2991f70f896c\":[\"157\"]}', 1, '2025-03-14 22:22:03', '2025-03-14 22:22:03', 'd38e9e0d-0774-4865-b5f3-0a49e8209527'),
(363, 363, 1, 'Images', NULL, NULL, NULL, 1, '2025-03-14 22:25:20', '2025-03-14 22:25:20', 'e6a4959f-1cf6-4bf5-889b-f0cc75b98166'),
(365, 365, 1, NULL, '__temp_kupeeppejyszqaknsqsdtjulqzbmgyffxekg', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"Privacy policy\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"right\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>This privacy policy (hereinafter: Policy) of Karima Valentina Hočevar (hereinafter: the Company) aims to inform subscribers, users, and other persons (hereinafter: the Data Subject) about the purpose and the grounds for personal data processing by the Company and about their rights in this area.</p><h3><strong>About the Personal Data Protection Policy</strong></h3><p>This personal data protection policy (hereinafter: Policy) aims to inform subscribers, users, and other persons (hereinafter: the Data Subject) about the purpose and the grounds for personal data protection by the company and about their rights in this area. At the same time, this policy additionally explains the consent to process data. In accordance with the Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (hereinafter: General Data Protection Regulation), this Policy includes the following information:</p><ul><li>The contact information of the Company and the data protection officer</li><li>The purposes, grounds, and types of the data subject’s personal data processing, including profiling their personal data</li><li>The forwarding of data to third persons and to third countries</li><li>The retention period of Data Subject’s types of personal data</li><li>The Data Subject’s rights regarding data processing</li><li>The right to file a complaint regarding personal data processing</li></ul><p>Where appropriate, the provisions relating to the Data Subject are used for the issues of secrecy and confidentiality of communications of users that are legal entities.</p><h3><strong>Data Controller and Data Protection Officer</strong></h3><p>The data controller of the Data Subject’s data processed in accordance with the personal data protection policy is Karima Valentina Hočevar</p><h3><strong>The Purposes and Grounds of Data Processing</strong></h3><p>Data processing on the grounds of a contract: the Company processes the Data Subject’s personal data for the purposes of notifying them about new additions to the website, for the purposes of direct marketing and for the purposes of segmentation.</p><p>In the context of exercising their rights and fulfilling contractual obligations, the Company processes the Data Subject’s personal data for the following purposes:</p><ul><li>E-mail address and name for the purposes of notifying about the website and sending the newsletter</li><li>Phone number for the purposes of notifying about performing business services</li><li>Home address for the fulfillment of payment obligations – drafting and sending invoices</li><li>Company data for the fulfillment of payment obligation – drafting and sending invoices</li></ul><h3><strong>Personal Data Processing under the Act</strong></h3><p>The Company processes the Data Subject’s personal data for the purposes of concluding, managing, and cancelling subscriptions.</p><p>Processing on the grounds of consenting to personal data processing: the processing of personal data could be based on the consent given by the Data Subject to the Company. The consent can refer to the notifications about the range of services and products, the preparation of the range of services and products aimed at the Data Subject’s user habits or conducting services with added value. Notifications are sent through channels chosen by the Data Subject in the consent. Notification via email includes forwarding the Data Subject’s email to an external processor with the purpose of showing ads of the company while browsing.</p><p>The Data Subject can withdraw or change their consent at any time in the same method the consent was originally given or in a different method as defined by the Company. The Company holds the right to identify the client. Withdrawing or changing consent only applies for the data processed on the grounds of the consent. The valid consent is the Data Subject’s latest consent received by the Company. The possibility to withdraw consent does not give the Data Subject the right to withdraw from a business relationship between the Company and the Data Subject. The consent can be given on behalf of a minor who cannot consent by themselves in accordance with the applicable law by the minor’s parent, foster parent, or legal guardian. Such consent is valid until withdrawn or changed by a parent, foster parent, legal guardian or a minor when they acquire the right in accordance with the applicable law.</p><h3><strong>Forwarding Data to Third Persons and Forwarding Data to Third Countries (Non-EU Member States or Non-Members of the European Economic Area)</strong></h3><p>When in accordance with the purpose of personal data processing according to the EU and Slovenian laws, the company can forward the Data Subject’s personal data to:</p><ul><li>Persons performing individual tasks of processing for the Company, such as the preparation and sending of invoices or data analytics, the maintenance and development of services when such tasks need to include personal data processing</li><li>Persons performing the services of sales and marketing for the company, including field sales and marketing, or persons cooperating with the company in the area of marketing and sales of their own services or third person services in the scope necessary for such tasks in accordance with the purposes or the grounds as defined in this Policy</li></ul><p>If the Company is integrated or acquired by another company, personal data are transferred to the acquirer in accordance with the law. By using services of Karima Valentina Hočevar you consent with further processing of your personal data by the acquirer.</p><h3><strong>The Duration of Personal Data Retention</strong></h3><p>For the purpose of the fulfillment of contractual obligations, the Data Subject’s invoicing data and the related contact data can be kept until the complete payment of a service or until the limitation period of a claim has expired. Under the law, such limitation period can be from one to five years. Invoices are kept for ten years after the expiry of the year the invoice refers to in accordance with the law that regulates added value tax. If turnover data is processed on the grounds of the Data Subject’s consent for marketing, the sale of goods or services with added value, such data could be processed in the necessary scope for as long as necessary for such marketing or services. All other data acquired for the purposes of notification and direct marketing are kept until the withdrawal of consent.</p><h3><strong>The Data Subject’s Right Regarding Personal Data Processing</strong></h3><p>The Company ensures the Data Subject could exercise their rights without undue delay and in all situations in one month after receiving the claim. The Company can extend the deadline for the Data Subject to exercise their rights for two additional months at most with regard to the complexity and number of claims. If the Company extends the deadline, it must notify the Data Subject about each such extension in one month after having received the claim, citing reasons for the delay. The Company accepts claims regarding the Data Subject’s rights via e-mail address <a href=\\\"mailto:info@mudita-institute.com\\\"><u>info@mudita-institute.com</u></a>. When the Data Subject files a claim electronically, the information is provided electronically whenever possible, unless the Data Subject requests otherwise. Where there is reasonable doubt regarding the identity of the Data Subject exercising any of their rights regarding their personal data, the Company has the right to ask for additional information necessary to confirm the identity of the Data Subject. If the claims of the Data Subject are manifestly unfounded or excessive, in particular because of their repetitive character, the Company could charge a reasonable fee, taking into account the administrative costs of forwarding information or messages or executing the requested measures, or the Company could refuse to act on a request.</p><p>The Company ensures the Data Subject the following rights regarding personal data processing:</p><ul><li>The right of access</li><li>The right to rectification</li><li>The right to erasure (“the right to be forgotten”)</li><li>The right to restriction of processing</li><li>The right to data portability</li></ul><h3><strong>The Right of Access</strong></h3><p>The Data Subject has the right to obtain confirmation as to whether the Company processes their personal data and if so, the right of access to their personal data and any additional information relating to personal data processing, including:</p><ul><li>The purposes of processing</li><li>Types of personal data</li><li>Users or categories of users to whom personal data was or will be disclosed, in particular users in third countries or international organizations</li><li>Whenever possible, the foreseen retention period or, if this is not possible, the measure necessary to specify such a period</li><li>The right to require the data controller to rectify or erase personal data, or limit the processing of the Data Subject’s personal data, or the right to object to personal data processing</li><li>The right to lodge a complaint with a supervisory authority</li><li>If personal data was not collected from the Data Subject, all available information relating to the source</li><li>The existence of automated decision making, including profiling, and reasonably estimable information about the logic involved, and the meaning and foreseen consequences of such processing for the Data Subject</li></ul><p>On the grounds of the Data Subject’s claim, the Company ensures a copy of whatever personal data of theirs is being processed. The company could charge a reasonable fee with regard to administrative costs for any additional copies of data that the data subject requests.</p><h3><strong>The Right to Rectification</strong></h3><p>The Data Subject has the right to rectify inaccurate personal data without undue delay by the Company. The Data Subject has the right to supplement incomplete data with regard to the purposes for personal data processing, including by providing a supplementary statement.</p><h3><strong>The Right to Erasure (“The Right to Be Forgotten”)</strong></h3><p>The Data Subject has the right to erase their personal data without undue delay, and the Company is obliged to erase personal data without undue delay whenever:</p><ul><li>Personal data is no longer necessary for the purposes chosen or processed in any other method.</li><li>The Data Subject withdraws their consent which is the grounds to process personal data and no other legal basis exists.</li><li>The Data Subject objects to the processing based on the Company’s legitimate interests, but no overriding legitimate grounds exist for the processing.</li><li>The Data Subject objects to the processing for the purpose of direct marketing.</li><li>Personal data must be erased to honor a legal commitment in accordance with the EU law or Slovenian legislation.</li><li>Data is involved regarding the supply of services of information society, incorrectly collected data of a child who in accordance with the applicable law is unable to provide such data.</li></ul><p>When directory data or otherwise published data is involved, the Company takes reasonable measures, including technical measures, to notify data collectors that the Data Subject has requested to erase any connections to such personal data or their copies.</p><h3><strong>The Right to Restriction of Processing</strong></h3><p>The Data Subject has the right to restrict processing whenever:</p><ul><li>The Data Subject opposed the accuracy of data for the period which enables the data collector to verify the accuracy of personal data.</li><li>The processing is unlawful, and the Data Subject opposes the erasure of personal data but requests to restrict their use instead.</li><li>The Company no longer needs the personal data for the purposes of processing, but the Data Subject needs them for the establishment, exercise or defense of legal claims.</li><li>The Data Subject has objected to processing pending the verification of whether the legitimate grounds of the controller override those of the Data Subject.</li></ul><h3><strong>The Right to Data Portability</strong></h3><p>The Data Subject has the right to receive personal data which he or she has provided to the controller, in a structured, commonly used and machine-readable format, and to transmit that data to another controller without hindrance by the Company to which the personal data has been provided whenever:</p><ul><li>The processing is based on the Data Subject’s consent or contract and is carried out by automated means.</li></ul><h3><strong>The Right to Object</strong></h3><p>The Data Subject has the right to object, on grounds relating to his or her particular situation, at any time to the processing of personal data concerning him or her if it is based on the legitimate interest of the Company or a third person. The Company shall no longer process the personal data unless the Company demonstrates compelling legitimate grounds for the processing which override the interests, rights and freedoms of the Data Subject or for the establishment, exercise or defense of legal claims. Where personal data is processed for direct marketing purposes, the Data Subject shall have the right to object at any time to the processing of personal data concerning him or her for such marketing, which includes profiling to the extent that it is related to such direct marketing. If direct marketing is based on consent, the right to object can be exercised by withdrawing the consent.</p><h3><strong>The Right to Lodge a Complaint Relating to Personal Data Processing</strong></h3><p>The Data Subject can lodge a complaint relating to personal data processing&nbsp;by email at <a href=\\\"mailto:info@mudita-institute.com\\\">info@mudita-institute.com</a>.</p><p>The Data Subject has the right to lodge a complaint directly with the information commissioner if the Data Subject considers the processing of personal data relating to him or her an infringement of Slovenia’s regulations or EU data protection legal framework.</p><p>If the Data Subject has claimed the right of access to data, and after having received the Company’s decision, considers the personal data he or she received not to be the personal data he or she requested, or that he or she has not received the personal data in its entirety, he or she should lodge an explanatory complaint with the Company within 15 days before lodging a complaint with the information commissioner. The Company must rule on the complaint as if it is a new complaint within five working days.</p><h3><strong>The Validity of the Policy</strong></h3><p>This policy has been published on the website <a href=\\\"https://mudita-institute.com\\\">https://mudita-institute.com</a> and is valid as of 1 Januar 2023.&nbsp;<br>&nbsp;</p>\"}', 1, '2025-03-14 22:25:49', '2025-03-19 10:37:37', '6379b598-b9b3-4e47-8c3a-6cdc4498a786'),
(366, 366, 1, NULL, '__temp_bvguobncduzxvpkwyzzpbomrmlksxqyutidj', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"363\"]}', 1, '2025-03-14 22:25:49', '2025-03-14 22:25:49', 'd1a59931-4499-4e22-b158-280eaab0e994'),
(367, 367, 1, 'Privacy policy', 'privacy-policy', 'privacy-policy', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-14 22:25:49', '2025-03-14 22:25:49', '6ca385c8-0213-4c6f-a411-94ea2cab085c'),
(368, 368, 1, NULL, '__temp_kupeeppejyszqaknsqsdtjulqzbmgyffxekg', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"Privacy policy\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"right\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p style=\\\"margin-left:0px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia blandit enim, sit amet auctor nisi pulvinar id. In eget ornare arcu, non molestie ante. Suspendisse potenti. Aliquam consectetur leo vel ante volutpat, et interdum erat lacinia. Maecenas pharetra placerat aliquet. Vivamus hendrerit consectetur purus, ac sagittis purus convallis nec. In sodales placerat magna, eu gravida lacus sollicitudin id. Aliquam eget quam pharetra dolor pretium efficitur vitae sed velit. Vivamus volutpat iaculis imperdiet. Aliquam id turpis vitae nibh tempor gravida. Cras suscipit dolor ut nunc fermentum, eget faucibus ante volutpat. Cras eu posuere turpis.</p><p style=\\\"margin-left:0px;\\\">Nunc vel placerat felis, quis maximus mi. Maecenas ac quam dolor. Phasellus velit tortor, iaculis eget ligula vel, vestibulum fringilla leo. Etiam at enim vitae augue consectetur tincidunt. Donec convallis varius vulputate. Aliquam pulvinar mattis posuere. Sed vel molestie ante, quis tempus enim. Fusce vel est vel eros hendrerit tristique. Duis maximus bibendum malesuada. Donec sed urna ac mi commodo elementum. Morbi rhoncus felis quis est tincidunt blandit. Nulla a sem vel eros malesuada laoreet. Fusce facilisis risus eleifend mi cursus tristique ut eu nunc. Vestibulum at finibus lectus, maximus suscipit elit. Cras tempus purus et ligula mattis placerat.</p><p style=\\\"margin-left:0px;\\\">In turpis nisl, venenatis quis eros nec, ultrices aliquet felis. Sed non pellentesque odio. Vestibulum mollis neque turpis, eget luctus tortor pellentesque ut. Curabitur sollicitudin, sem non volutpat bibendum, orci enim congue justo, sit amet cursus lectus ipsum ut quam. Praesent elit sapien, vestibulum id diam in, consectetur gravida mauris. Sed sed ante quis lacus hendrerit feugiat sed eget ex. Sed in ullamcorper dolor. Donec a ipsum a sapien congue hendrerit nec id neque. Donec ultrices sem id sapien blandit commodo. Vestibulum in ultricies purus.</p>\"}', 1, '2025-03-14 22:25:49', '2025-03-14 22:25:49', 'd999adfa-544f-451e-8caa-7128d76f5a6f'),
(369, 369, 1, NULL, '__temp_bvguobncduzxvpkwyzzpbomrmlksxqyutidj', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"363\"]}', 1, '2025-03-14 22:25:49', '2025-03-14 22:25:49', '864753bd-b160-43d8-b0a5-82b75bcc5a23'),
(372, 372, 1, NULL, '__temp_mxhkufbonqchyytteephffwnecygqwfuhmqq', NULL, '{\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<h3><strong>Acceptance</strong></h3>\\r\\n<p>This website is managed by Mudita Institute (xxx).</p>\\r\\n<p>The purpose of this website is to inform the public about the activities and new services of Mudita Institute.</p>\\r\\n<p>By entering this website, you accept legal notices without limits and reservations.</p>\\r\\n<h3><strong>Author Rights</strong></h3>\\r\\n<p>This website is the intellectual property of Mudita Institute. All information, descriptions and the content on this website are protected by intellectual property rights. Information, texts, images and other graphic elements on this website can only be used for personal and non-commercial use.</p>\\r\\n<p>Users are not allowed to change, copy, distribute, transfer, project, publish, sell, license, or transform any content from this website for commercial or public purposes.</p>\\r\\n<h3><strong>Content</strong></h3>\\r\\n<p>All content on the website of Mudita Institute&nbsp;are informative in nature. The owner of the website is committed to do everything in their power to publish true, reliable, and high-quality data. The owner is not responsible for any potential content mistakes, delays or flaws when uploading the current data. The owner of the website holds the right to change the content, specification and availability of the products whenever and without a notice.</p>\\r\\n<h3><strong><br>Privacy and Data Protection</strong></h3>\\r\\n<p>All personal data is confidential and will not be forwarded to unauthorized or third persons.</p>\\r\\n<p>More about privacy policy you will find bellow.</p>\\r\\n<h3><strong>Cookies</strong></h3>\\r\\n<p>Our website uses cookies and other technologies to customize your experience and to understand how visitors use our website.</p>\\r\\n<p><strong>What are cookies?</strong></p>\\r\\n<p>A cookie is a file that saves the settings of the websites you visit. Websites save cookies in a user’s device used to access the internet. The purpose is to recognize individual devices and settings a user has used and track internet activity. Cookies enable web servers to recognize which web pages a user has previously visited. In advanced applications, cookies enable customized individual settings. A user’s browser saves cookies and the browser can also limit or disable saving cookies. </p>\\r\\n<p><strong>Why are cookies necessary?</strong></p>\\r\\n<p>Cookies are of key importance to guarantee user-friendly web services. The most common functions of e-business would not be possible without cookies. Cookies make the interaction between a user and a website faster and simpler. Cookies enable a website to recognize a user’s preferences and experience, making browsing more efficient and user-friendly. There are several reasons to use cookies. Cookies are used to save information about individual websites (details about customization of a website), they help with web services (for example, online stores), and they help with collecting statistics about users and visitors to a website about a users’ habits, etc. Cookies enable the evaluation of the efficiency of a website. Read more on the recommended and allowed use of cookies on websites and the guidelines of an information commissioner here.</p>\\r\\n<p><strong>The list of cookies on our website</strong></p>\\r\\n<table>\\r\\n <tbody><tr>\\r\\n <td width=\\\"32%\\\"><p><strong>Cookie Name</strong></p></td>\\r\\n <td width=\\\"32%\\\"><p><strong>Duration</strong></p></td>\\r\\n <td width=\\\"32%\\\"><p><strong>Description</strong></p></td>\\r\\n </tr>\\r\\n <tr>\\r\\n <td width=\\\"32%\\\"><p>cookie_agree</p></td>\\r\\n <td width=\\\"32%\\\"><p>Duration of a session</p></td>\\r\\n <td width=\\\"32%\\\"><p>Decision on website cookies</p></td>\\r\\n </tr>\\r\\n <tr>\\r\\n <td width=\\\"32%\\\"><p><strong>Analytics</strong></p></td>\\r\\n <td width=\\\"32%\\\"></td>\\r\\n <td width=\\\"32%\\\"></td>\\r\\n </tr>\\r\\n <tr>\\r\\n <td width=\\\"32%\\\"><p>_ga</p></td>\\r\\n <td width=\\\"32%\\\"><p>2 years</p></td>\\r\\n <td><p>Google Analytics – used to differentiate visitors</p></td>\\r\\n </tr>\\r\\n <tr>\\r\\n <td width=\\\"32%\\\"><p>_gid</p></td>\\r\\n <td><p>1 day</p></td>\\r\\n <td width=\\\"32%\\\"><p>Google Analytics – used to differentiate visitors</p></td>\\r\\n </tr>\\r\\n</tbody></table>\\r\\n<p>Cookies used on our website do not collect personal data which could serve to identify you and cannot harm your computer, tablet or mobile phone. Cookies enable our website to run smoothly and help us understand the most useful information for visitors.</p>\\r\\n<p><strong>Declaration</strong></p>\\r\\n<p>By using this website, you agree to using cookies on your computer or mobile device. </p>\\r\\n<p><strong>Manage and delete cookies</strong></p>\\r\\n<p>If you wish to change cookie settings in your browser, including blocking or deleting them, you can do this by appropriately changing your browser’s settings. To manage cookies, most browsers enable you to allow or reject all cookies, allow a certain type of cookies, or the browser notifies you when a website is using cookies. Cookies saved by your browser can be easily deleted. If you change or delete the browser’s cookie file, or change or upgrade your browser or device, you might have to disable cookies again. The procedure to manage and delete cookies varies in different browsers. If you need help, check the browser’s user help tab. Google Analytics tracking can be disabled <u>here.</u></p>\\r\\n<p><strong>Manage cookies in different browsers:</strong></p>\\r\\n<ul>\\r\\n <li><a href=\\\"https://support.google.com/chrome/answer/95647?hl=sl\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">Google Chrome</a></li>\\r\\n <li><a href=\\\"http://windows.microsoft.com/sl-si/internet-explorer/delete-manage-cookies#ie=ie-10\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">Internet Explorer </a></li>\\r\\n <li><a href=\\\"http://support.apple.com/kb/index?page=search&fac=all&q=cookies%20safari\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">Safari</a></li>\\r\\n <li><a href=\\\"http://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">Firefox</a></li>\\r\\n <li><a href=\\\"http://www.opera.com/help/tutorials/security/privacy/\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">Opera</a></li>\\r\\n</ul>\\r\\n<h3><strong>Hyperlinks</strong></h3>\\r\\n<p>This website might contain links to websites independent from this website. The owner does not guarantee the accuracy or credibility of the information from such links and other websites. You access other websites at your our risk.</p>\\r\\n<h3><strong>Disclaimer</strong></h3>\\r\\n<p>All content on this website is the property of&nbsp;Mudita Institute&nbsp;and is informative in nature. Mudita Institute is not responsible for the use of the website, any inaccuracies or any harm caused by the use of the content from this website. The use of all content and services on the website is at your own risk. Mudita Institute holds the right to change the website at any time or stop updating the content.</p>\\r\\n<h3><strong>Change Notice</strong></h3>\\r\\n<p>Any change to legal notices will be published on this webpage and other appropriate sites.</p>\\r\\n<h3><strong>Business Information</strong></h3>\\r\\n<p>Mudita Institute</p>\",\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"Terms of use\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"right\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true}', 1, '2025-03-14 22:26:07', '2025-03-19 10:37:58', '73696326-11a0-48b3-b4df-e861648f6ee4'),
(373, 373, 1, NULL, '__temp_aiwxnqouoeptogpffqkbhjtdlwqtaaqfcxiq', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"363\"]}', 1, '2025-03-14 22:26:07', '2025-03-14 22:26:07', 'cce4334e-ca01-4470-aa58-07a76e637a7d'),
(374, 374, 1, 'Terms of use', 'terms-of-use', 'terms-of-use', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Terms of use\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Terms of use - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Terms of use - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-14 22:26:07', '2025-03-14 22:26:07', '223dc68b-84d7-425b-b0ee-636378eacdef'),
(375, 375, 1, NULL, '__temp_mxhkufbonqchyytteephffwnecygqwfuhmqq', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"Terms of use\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"right\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p style=\\\"margin-left:0px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia blandit enim, sit amet auctor nisi pulvinar id. In eget ornare arcu, non molestie ante. Suspendisse potenti. Aliquam consectetur leo vel ante volutpat, et interdum erat lacinia. Maecenas pharetra placerat aliquet. Vivamus hendrerit consectetur purus, ac sagittis purus convallis nec. In sodales placerat magna, eu gravida lacus sollicitudin id. Aliquam eget quam pharetra dolor pretium efficitur vitae sed velit. Vivamus volutpat iaculis imperdiet. Aliquam id turpis vitae nibh tempor gravida. Cras suscipit dolor ut nunc fermentum, eget faucibus ante volutpat. Cras eu posuere turpis.</p><p style=\\\"margin-left:0px;\\\">Nunc vel placerat felis, quis maximus mi. Maecenas ac quam dolor. Phasellus velit tortor, iaculis eget ligula vel, vestibulum fringilla leo. Etiam at enim vitae augue consectetur tincidunt. Donec convallis varius vulputate. Aliquam pulvinar mattis posuere. Sed vel molestie ante, quis tempus enim. Fusce vel est vel eros hendrerit tristique. Duis maximus bibendum malesuada. Donec sed urna ac mi commodo elementum. Morbi rhoncus felis quis est tincidunt blandit. Nulla a sem vel eros malesuada laoreet. Fusce facilisis risus eleifend mi cursus tristique ut eu nunc. Vestibulum at finibus lectus, maximus suscipit elit. Cras tempus purus et ligula mattis placerat.</p><p style=\\\"margin-left:0px;\\\">In turpis nisl, venenatis quis eros nec, ultrices aliquet felis. Sed non pellentesque odio. Vestibulum mollis neque turpis, eget luctus tortor pellentesque ut. Curabitur sollicitudin, sem non volutpat bibendum, orci enim congue justo, sit amet cursus lectus ipsum ut quam. Praesent elit sapien, vestibulum id diam in, consectetur gravida mauris. Sed sed ante quis lacus hendrerit feugiat sed eget ex. Sed in ullamcorper dolor. Donec a ipsum a sapien congue hendrerit nec id neque. Donec ultrices sem id sapien blandit commodo. Vestibulum in ultricies purus.</p>\"}', 1, '2025-03-14 22:26:07', '2025-03-14 22:26:07', '6e6e1dd2-b09e-4fb9-9053-d28df03fce88'),
(376, 376, 1, NULL, '__temp_aiwxnqouoeptogpffqkbhjtdlwqtaaqfcxiq', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"363\"]}', 1, '2025-03-14 22:26:07', '2025-03-14 22:26:07', '4fbf47df-4aa4-45ee-966e-db0f3d059441'),
(379, 379, 1, 'About me', 'about-me', 'about-me', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-16 12:05:20', '2025-03-16 12:05:20', '437e6c6a-72ea-4391-bbf4-39512fa0302e'),
(380, 380, 1, NULL, '__temp_lekvchmjekxlrsvnukjweeivpobcycywklae', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"About me\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"left\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\":\"Karima Valentina Hočevar\",\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal. \\u2028My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always\\u2028with an emphasis on cultivating presence, inner spaciousness, and relational attunement.\\u2028<br />Since 2011, I have been leading and co-leading trainings and seminars on Biodynamic Craniosacral Therapy (BCST) in Slovenia and internationally. My work with BCST has provided insights into the body\'s inherent wisdom and capacity for self-regulation. Since 2015, I have been part of the teaching team and a supervisor for NeuroAffective Relational Model (NARM) trainings across Europe.Through the years of practice, I am in the process of developing an appraoch to process-oriented therapies, called Embodied Psychodynamic Resonance (EPR), which integrates my understanding of wholeness with principles from NARM and BCST.</p>\"}', 1, '2025-03-16 12:05:20', '2025-03-16 12:05:20', 'd299b984-fde7-4344-abe6-179fde214f14'),
(381, 381, 1, 'Valentina karima pic', NULL, NULL, NULL, 1, '2025-03-19 10:06:37', '2025-03-19 10:06:37', 'fcf3efdb-f14d-4321-92f1-43712acf1df9'),
(385, 385, 1, 'About me', 'about-me', 'about-me', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-19 10:06:50', '2025-03-19 10:06:50', '2d22ac66-3661-4e72-b24b-dd66d5e9e2c6'),
(386, 386, 1, NULL, '__temp_lekvchmjekxlrsvnukjweeivpobcycywklae', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"About me\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"left\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\":\"Karima Valentina Hočevar\",\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal. \\u2028My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always\\u2028with an emphasis on cultivating presence, inner spaciousness, and relational attunement.\\u2028<br />Since 2011, I have been leading and co-leading trainings and seminars on Biodynamic Craniosacral Therapy (BCST) in Slovenia and internationally. My work with BCST has provided insights into the body\'s inherent wisdom and capacity for self-regulation. Since 2015, I have been part of the teaching team and a supervisor for NeuroAffective Relational Model (NARM) trainings across Europe.Through the years of practice, I am in the process of developing an appraoch to process-oriented therapies, called Embodied Psychodynamic Resonance (EPR), which integrates my understanding of wholeness with principles from NARM and BCST.</p>\"}', 1, '2025-03-19 10:06:50', '2025-03-19 10:06:50', 'a1642224-bf4e-4dc1-831f-c583ca34dcd6'),
(387, 387, 1, NULL, '__temp_ficawdbjdfzmdmyozeuhprhxcxdgwnslfbxk', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"381\"],\"033d0eef-2816-4a44-8a29-a76c412495ef\":[\"381\"]}', 1, '2025-03-19 10:06:50', '2025-03-19 10:06:50', '3744ea97-bc78-4754-96aa-0453bb00e5b8'),
(390, 390, 1, 'About me', 'about-me', 'about-me', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-19 10:08:06', '2025-03-19 10:08:06', '063cf1f4-e324-4060-ad04-b6b127714c8d'),
(391, 391, 1, NULL, '__temp_lekvchmjekxlrsvnukjweeivpobcycywklae', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"About me\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"left\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\":\"Karima Valentina Hočevar\",\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal. My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always with an emphasis on cultivating presence, inner spaciousness, and relational attunement.</p><p>Since 2011, I have been leading and co-leading trainings and seminars on Biodynamic Craniosacral Therapy (BCST) in Slovenia and internationally. My work with BCST has provided insights into the body\'s inherent wisdom and capacity for self-regulation. Since 2015, I have been part of the teaching team and a supervisor for NeuroAffective Relational Model (NARM) trainings across Europe.Through the years of practice, I am in the process of developing an appraoch to process-oriented therapies, called Embodied Psychodynamic Resonance (EPR), which integrates my understanding of wholeness with principles from NARM and BCST.</p>\"}', 1, '2025-03-19 10:08:06', '2025-03-19 10:08:06', '608d7c47-592d-4478-a6e2-2142bd46f73e'),
(394, 394, 1, 'About me', 'about-me', 'about-me', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-19 10:08:23', '2025-03-19 10:08:23', '1999606f-a581-4f89-ae16-c6bb229b48f5'),
(395, 395, 1, NULL, '__temp_lekvchmjekxlrsvnukjweeivpobcycywklae', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"About me\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"left\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\":\"Karima Valentina Hočevar\",\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal. My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always with an emphasis on cultivating presence, inner spaciousness, and relational attunement. Since 2011, I have been leading and co-leading trainings and seminars on Biodynamic Craniosacral Therapy (BCST) in Slovenia and internationally. My work with BCST has provided insights into the body\'s inherent wisdom and capacity for self-regulation. Since 2015, I have been part of the teaching team and a supervisor for NeuroAffective Relational Model (NARM) trainings across Europe.Through the years of practice, I am in the process of developing an appraoch to process-oriented therapies, called Embodied Psychodynamic Resonance (EPR), which integrates my understanding of wholeness with principles from NARM and BCST.</p>\"}', 1, '2025-03-19 10:08:23', '2025-03-19 10:08:23', '71354cb0-0d77-4064-a298-df140d1e1aff'),
(398, 398, 1, 'About me', 'about-me', 'about-me', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-19 10:08:43', '2025-03-19 10:08:43', 'f69f8f77-1323-43f3-82eb-3f6b9afcbbde'),
(399, 399, 1, NULL, '__temp_lekvchmjekxlrsvnukjweeivpobcycywklae', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"About me\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"left\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\":\"Karima Valentina Hočevar\",\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>From an early age, I have been deeply attuned to human relationships—the ways we connect, misunderstand, and heal. My sensitivity to the spaces between people, shaped by early experiences, led me on a journey of self-inquiry, acceptance, and mindfulness. This path evolved into a professional commitment to trauma-informed therapeutic approaches. I have spent years studying and integrating various therapeutic modalities, always with an emphasis on cultivating presence, inner spaciousness, and relational attunement.&nbsp;</p><p>Since 2011, I have been leading and co-leading trainings and seminars on Biodynamic Craniosacral Therapy (BCST) in Slovenia and internationally. My work with BCST has provided insights into the body\'s inherent wisdom and capacity for self-regulation. Since 2015, I have been part of the teaching team and a supervisor for NeuroAffective Relational Model (NARM) trainings across Europe.Through the years of practice, I am in the process of developing an appraoch to process-oriented therapies, called Embodied Psychodynamic Resonance (EPR), which integrates my understanding of wholeness with principles from NARM and BCST.</p>\"}', 1, '2025-03-19 10:08:43', '2025-03-19 10:08:43', 'e2fb3345-a361-4c69-9688-610c466bf5f7'),
(400, 400, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:09:32', '2025-03-19 10:09:32', '5255b33e-10e3-4b42-8d5c-fb8431313966'),
(401, 401, 1, NULL, '__temp_uxxcvqxljfugioqzlotnwpuprdhikrfyorhj', NULL, '{\"9eab9ff9-f871-4714-b7e2-14dc6eecd027\":\"<aehb<eahb\",\"4721bfa5-e6ff-4509-8955-aa45e5a79c16\":true}', 1, '2025-03-19 10:09:32', '2025-03-19 10:09:32', 'dcf7706a-814a-4b44-be46-4690eddaa85c'),
(402, 402, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:09:38', '2025-03-19 10:09:38', '2bf8d427-7ba4-487f-99f3-88a6d1d4b4e4'),
(403, 403, 1, NULL, '__temp_uxxcvqxljfugioqzlotnwpuprdhikrfyorhj', NULL, '{\"4721bfa5-e6ff-4509-8955-aa45e5a79c16\":true}', 1, '2025-03-19 10:09:38', '2025-03-19 10:09:38', '6bf80bf3-a9c8-4a0b-a653-70b2a76a8ae7'),
(406, 406, 1, NULL, '__temp_dpakdwzxyrketkvubydqdaznauoiwomhdbaq', NULL, '{\"032378b9-225f-4ca4-b509-5bf5b952dde2\":\"aerghHR\",\"66af9589-1520-49a8-982e-6ddca319d308\":\"<p>&gt;egb&lt;</p>\"}', 1, '2025-03-19 10:09:49', '2025-03-19 10:09:49', '9b0afa8e-a3f3-423b-b435-5e31f821713b'),
(407, 407, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:09:49', '2025-03-19 10:09:49', '6d6a7186-ec5f-4fb3-b9d5-541a552b252b'),
(408, 408, 1, NULL, '__temp_dpakdwzxyrketkvubydqdaznauoiwomhdbaq', NULL, '{\"032378b9-225f-4ca4-b509-5bf5b952dde2\":\"aerghHR\",\"66af9589-1520-49a8-982e-6ddca319d308\":\"<p>&gt;egb&lt;</p>\"}', 1, '2025-03-19 10:09:49', '2025-03-19 10:09:49', '2d7ab3ec-acc6-4fbb-9ad0-13c7150c4f79'),
(410, 410, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:10:00', '2025-03-19 10:10:00', '0f64185d-ff8a-4302-83c5-a9f7f3d268b9'),
(415, 415, 1, NULL, '__temp_ssxznmqusqgtkplllcpfcqfdqgoxlcpztwva', NULL, '{\"66af9589-1520-49a8-982e-6ddca319d308\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\"}', 1, '2025-03-19 10:11:07', '2025-03-19 10:11:07', '7613aea4-cb54-4d66-b265-3242a09ceb08'),
(416, 416, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:11:07', '2025-03-19 10:11:07', '7165eed2-fa77-40f8-a735-8deeb1cbafe0'),
(417, 417, 1, NULL, '__temp_ssxznmqusqgtkplllcpfcqfdqgoxlcpztwva', NULL, '{\"66af9589-1520-49a8-982e-6ddca319d308\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\"}', 1, '2025-03-19 10:11:07', '2025-03-19 10:11:07', '762c1ef3-ee78-4fb4-a05d-daf05f6885ba'),
(420, 420, 1, NULL, '__temp_vfgatbhbsswhuobyijebivekrlpbfukelnhw', NULL, '{\"b3e478af-1cfb-4477-be12-08cf53448ceb\":\"I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.\"}', 1, '2025-03-19 10:11:33', '2025-03-19 10:11:33', '0aeea235-ac38-4262-bc81-d3b0de6c9986'),
(421, 421, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:11:33', '2025-03-19 10:11:33', '941b2e45-03b6-4231-9829-46714724d8e0'),
(422, 422, 1, NULL, '__temp_vfgatbhbsswhuobyijebivekrlpbfukelnhw', NULL, '{\"b3e478af-1cfb-4477-be12-08cf53448ceb\":\"I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.\"}', 1, '2025-03-19 10:11:33', '2025-03-19 10:11:33', '59892a70-4962-4010-b78e-46d0531e3c90'),
(425, 425, 1, NULL, '__temp_kikokkedfqednquwmpbozzjxhmnsineyxzkp', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Events\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p><p><strong>For more details on events and registrations, please&nbsp;contact me.</strong></p>\"}', 1, '2025-03-19 10:12:20', '2025-03-19 10:29:02', 'eea8b13c-076e-4881-9ae7-a3ecdc92f256'),
(426, 426, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:12:20', '2025-03-19 10:12:20', '64297256-ba1c-4282-b4e1-d57c462dcbe0'),
(427, 427, 1, NULL, '__temp_kikokkedfqednquwmpbozzjxhmnsineyxzkp', NULL, '{\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\",\"ae02b7a9-733b-48d9-84b7-4821587c306e\":[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"primary\"}]}', 1, '2025-03-19 10:12:20', '2025-03-19 10:12:20', '9690d138-fc15-4c70-816e-7697c88b8064');
INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `title`, `slug`, `uri`, `content`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(428, 428, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:12:34', '2025-03-19 10:12:34', 'd768acf0-2bf6-42d8-8d25-a1e7fb40adcc'),
(429, 429, 1, NULL, '__temp_kikokkedfqednquwmpbozzjxhmnsineyxzkp', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Events\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\",\"ae02b7a9-733b-48d9-84b7-4821587c306e\":[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"primary\"}]}', 1, '2025-03-19 10:12:34', '2025-03-19 10:12:34', 'e54451c7-f047-4472-80d6-3a90b6410c07'),
(430, 430, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:12:41', '2025-03-19 10:12:41', '9bfbb6f0-72a3-425b-b675-9000c7fbb912'),
(431, 431, 1, NULL, '__temp_uxxcvqxljfugioqzlotnwpuprdhikrfyorhj', NULL, '{\"4721bfa5-e6ff-4509-8955-aa45e5a79c16\":true}', 1, '2025-03-19 10:12:41', '2025-03-19 10:12:41', '2b0fdc5b-5949-4d83-b954-2be53a41ac73'),
(432, 432, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:12:54', '2025-03-19 10:12:54', 'c06454a0-7fd9-401b-895c-a416dac25e91'),
(433, 433, 1, NULL, '__temp_uxxcvqxljfugioqzlotnwpuprdhikrfyorhj', NULL, '{\"9eab9ff9-f871-4714-b7e2-14dc6eecd027\":\"Upcoming Events:\",\"4721bfa5-e6ff-4509-8955-aa45e5a79c16\":true}', 1, '2025-03-19 10:12:54', '2025-03-19 10:12:54', '5d900219-5c58-4734-846e-e57dec9cd7da'),
(436, 436, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:13:07', '2025-03-19 10:13:07', '90a81c5e-ac72-4dce-b117-0bbe3a916aa8'),
(437, 437, 1, NULL, '__temp_kikokkedfqednquwmpbozzjxhmnsineyxzkp', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Events\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\"}', 1, '2025-03-19 10:13:07', '2025-03-19 10:13:07', '2438ef09-2c5b-40d3-a6b9-3831d5df9837'),
(440, 440, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:13:35', '2025-03-19 10:13:35', '98b6a308-69cd-4500-a38e-1bba9239b20e'),
(443, 443, 1, NULL, '__temp_ltyscrgquixizmolicbemdoczykmibzqqyib', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"Events\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"left\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":false,\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\",\"fc438791-5351-42a6-8fe8-98bf5b31a0d8\":[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"primary\"}]}', 1, '2025-03-19 10:13:56', '2025-03-19 10:13:56', '7a48ace2-c208-4d85-9364-4d72b8e7e196'),
(444, 444, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:13:56', '2025-03-19 10:13:56', '4add35e2-0566-4931-9f74-610eadfb923a'),
(445, 445, 1, NULL, '__temp_ltyscrgquixizmolicbemdoczykmibzqqyib', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"Events\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"left\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":false,\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\",\"fc438791-5351-42a6-8fe8-98bf5b31a0d8\":[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"primary\"}]}', 1, '2025-03-19 10:13:56', '2025-03-19 10:13:56', 'afbc9039-49b4-43b2-9bb7-9e7be0ab59b8'),
(449, 449, 1, NULL, '__temp_gnuaiijypqusdvqqamswbktbisgtefvutxiw', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"463\"],\"033d0eef-2816-4a44-8a29-a76c412495ef\":[]}', 1, '2025-03-19 10:15:25', '2025-03-19 10:26:20', '1cf7eda9-9af3-47f2-81d7-07dbb48845d5'),
(450, 450, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:15:25', '2025-03-19 10:15:25', '117942cc-8791-430b-9142-75374f64d30a'),
(451, 451, 1, NULL, '__temp_kikokkedfqednquwmpbozzjxhmnsineyxzkp', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Events\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\"}', 1, '2025-03-19 10:15:25', '2025-03-19 10:15:25', '2615318e-4514-494d-8cce-a4a61bb9fc10'),
(452, 452, 1, NULL, '__temp_gnuaiijypqusdvqqamswbktbisgtefvutxiw', NULL, NULL, 1, '2025-03-19 10:15:25', '2025-03-19 10:15:25', '4fcb6db4-250f-4f7f-90a5-db8d01664eb4'),
(453, 453, 1, 'Event pic', NULL, NULL, NULL, 1, '2025-03-19 10:18:24', '2025-03-19 10:18:24', 'd66b4d78-a9a7-4b37-8278-92d11f44851b'),
(457, 457, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:18:29', '2025-03-19 10:18:29', '7bb4ea18-3f2a-4022-8096-98cea9e1344a'),
(458, 458, 1, NULL, '__temp_kikokkedfqednquwmpbozzjxhmnsineyxzkp', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Events\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\"}', 1, '2025-03-19 10:18:29', '2025-03-19 10:18:29', 'c98e8228-316f-49cb-a6d9-064f73becae2'),
(459, 459, 1, NULL, '__temp_gnuaiijypqusdvqqamswbktbisgtefvutxiw', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"453\"],\"033d0eef-2816-4a44-8a29-a76c412495ef\":[\"453\"]}', 1, '2025-03-19 10:18:29', '2025-03-19 10:18:29', '9ad29fd1-da78-42f3-9b96-f4615bef8471'),
(463, 463, 1, 'Event pic', NULL, NULL, NULL, 1, '2025-03-19 10:22:35', '2025-03-19 10:22:35', 'b04d6a0e-ee33-44d9-87c9-c7492d152297'),
(464, 464, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:22:41', '2025-03-19 10:22:41', 'dce10ea6-4f03-42bb-823d-76bf58ecc506'),
(465, 465, 1, NULL, '__temp_kikokkedfqednquwmpbozzjxhmnsineyxzkp', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Events\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\"}', 1, '2025-03-19 10:22:41', '2025-03-19 10:22:41', '8de79a91-c31b-451b-851e-1ef8d6ea880f'),
(466, 466, 1, NULL, '__temp_gnuaiijypqusdvqqamswbktbisgtefvutxiw', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"463\"],\"033d0eef-2816-4a44-8a29-a76c412495ef\":[\"463\"]}', 1, '2025-03-19 10:22:41', '2025-03-19 10:22:41', 'ebf8ff7f-9dd8-4ca5-ae12-e71da622ce1c'),
(470, 470, 1, 'Event pic2', NULL, NULL, NULL, 1, '2025-03-19 10:25:46', '2025-03-19 10:25:46', '419df30d-9a22-4062-a8cc-e2b46ba03382'),
(471, 471, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:25:51', '2025-03-19 10:25:51', 'e7502b2b-4f76-407e-92cf-04d6050972ec'),
(472, 472, 1, NULL, '__temp_kikokkedfqednquwmpbozzjxhmnsineyxzkp', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Events\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\"}', 1, '2025-03-19 10:25:51', '2025-03-19 10:25:51', '0f11b08d-269a-45b4-8977-06d98e426cb7'),
(473, 473, 1, NULL, '__temp_gnuaiijypqusdvqqamswbktbisgtefvutxiw', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"470\"],\"033d0eef-2816-4a44-8a29-a76c412495ef\":[\"470\"]}', 1, '2025-03-19 10:25:51', '2025-03-19 10:25:51', '06a87097-8e5b-45fd-a8ab-8572b550207f'),
(477, 477, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:26:20', '2025-03-19 10:26:20', '41a89a40-9970-4ee2-8367-91951b6168b3'),
(478, 478, 1, NULL, '__temp_kikokkedfqednquwmpbozzjxhmnsineyxzkp', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Events\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p>\"}', 1, '2025-03-19 10:26:20', '2025-03-19 10:26:20', '9c11b138-987b-4e6c-aadd-1dda212f3b99'),
(479, 479, 1, NULL, '__temp_gnuaiijypqusdvqqamswbktbisgtefvutxiw', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"463\"]}', 1, '2025-03-19 10:26:20', '2025-03-19 10:26:20', '2d2f1a5b-0b9d-4b8f-9bc8-58f182a8542f'),
(482, 482, 1, 'EPR therapy days March 14-15 , Hannover', 'epr-therapy-days', 'event/epr-therapy-days', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"EPR therapy days March 14-15 , Hannover - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"EPR therapy days March 14-15 , Hannover - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:27:32', '2025-03-19 10:27:32', '38ea816d-b856-44ec-b958-948dd36e519b'),
(483, 483, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"49e3e828-6795-49c5-a82b-3360a0b3664d\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"eca88837-37fe-4366-9c04-3b186a4046b3\":\"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\",\"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\":\"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\",\"50fd66aa-669e-462b-bfb3-183483ca7f53\":{\"date\":\"2025-03-14 07:00:00\"},\"3699bcd1-9095-4053-972b-820dc7fdd9fb\":{\"date\":\"2025-03-15 07:00:00\"},\"ee77a16c-2740-4126-b391-d88c9f4ff060\":\"Begins at 10:00 on the first day and ends at 17:00 on the second day.\",\"c6ea490e-ad7d-401f-b119-1404e146ac0e\":{\"date\":\"2025-03-10 07:00:00\"},\"daaa5d42-b397-4793-8d5e-25ada16deeb1\":\"230,00 €\",\"6cbe1a93-eb4b-48f0-b47c-fc314d657898\":false,\"59560f2d-bf2a-4a28-9c90-837018f49967\":\"Online\",\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\":\"Glyndie Nickerson\"}', 1, '2025-03-19 10:27:32', '2025-03-19 10:27:32', '9b595d7c-7a7a-436e-9035-62e5fee26257'),
(486, 486, 1, 'EPR Deepening day April 10 -11 , Berlin', 'epr-therapy-days-4', 'event/epr-therapy-days-4', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"EPR Deepening day April 10 -11 , Berlin - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"EPR Deepening day April 10 -11 , Berlin - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:28:07', '2025-03-19 10:28:07', '19785609-bf31-471d-ba53-b1c4a27f3c3a'),
(487, 487, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"49e3e828-6795-49c5-a82b-3360a0b3664d\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"eca88837-37fe-4366-9c04-3b186a4046b3\":\"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\",\"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\":\"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\",\"50fd66aa-669e-462b-bfb3-183483ca7f53\":{\"date\":\"2025-04-10 07:00:00\"},\"3699bcd1-9095-4053-972b-820dc7fdd9fb\":{\"date\":\"2025-04-11 07:00:00\"},\"c6ea490e-ad7d-401f-b119-1404e146ac0e\":{\"date\":\"2025-03-21 07:00:00\"},\"daaa5d42-b397-4793-8d5e-25ada16deeb1\":\"230,00 €\",\"6cbe1a93-eb4b-48f0-b47c-fc314d657898\":false,\"59560f2d-bf2a-4a28-9c90-837018f49967\":\"Berlin\",\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\":\"Valentina Karima Hočevar\"}', 1, '2025-03-19 10:28:08', '2025-03-19 10:28:08', 'ea8ca79d-f4a0-4d85-bd71-882785351024'),
(489, 489, 1, 'EPR Deepening dat', 'epr-therapy-days-3', 'event/epr-therapy-days-3', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"EPR Deepening dat - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"EPR Deepening dat - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:28:26', '2025-03-19 10:28:26', '3be96774-cb25-46b7-906f-bce29228a2ec'),
(491, 491, 1, 'Group supervision', 'epr-therapy-days-2', 'event/epr-therapy-days-2', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Group supervision - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Group supervision - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:28:34', '2025-03-19 10:28:34', 'e0e80d16-f615-4252-b4ea-f7831013d50d'),
(492, 492, 1, 'EPR Deepening dat', 'epr-therapy-days-3-2', 'event/epr-therapy-days-3-2', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"EPR Deepening dat - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"EPR Deepening dat - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:28:40', '2025-03-19 10:28:40', '6bbf6437-0fcd-4734-85f2-3a009cc48da8'),
(493, 493, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"49e3e828-6795-49c5-a82b-3360a0b3664d\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"eca88837-37fe-4366-9c04-3b186a4046b3\":\"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\",\"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\":\"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\",\"50fd66aa-669e-462b-bfb3-183483ca7f53\":{\"date\":\"2025-03-28 07:00:00\"},\"3699bcd1-9095-4053-972b-820dc7fdd9fb\":{\"date\":\"2025-04-17 07:00:00\"},\"c6ea490e-ad7d-401f-b119-1404e146ac0e\":{\"date\":\"2025-03-21 07:00:00\"},\"daaa5d42-b397-4793-8d5e-25ada16deeb1\":\"230,00 €\",\"6cbe1a93-eb4b-48f0-b47c-fc314d657898\":false,\"59560f2d-bf2a-4a28-9c90-837018f49967\":\"Online\",\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\":\"Glyndie Nickerson\"}', 1, '2025-03-19 10:28:40', '2025-03-19 10:28:40', 'b2ea5f65-a46d-4914-8d75-be9223cc258a'),
(494, 494, 1, NULL, '__temp_jkcpzlctmcleljndejycdkwjyudzxdvkuhzu', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"179\"],\"033d0eef-2816-4a44-8a29-a76c412495ef\":[\"180\"]}', 1, '2025-03-19 10:28:40', '2025-03-19 10:28:40', '147ca59d-bb2e-4690-894c-ed32f1b52bdf'),
(495, 495, 1, 'EPR Deepening dat', 'epr-therapy-days-3-2', 'event/epr-therapy-days-3-2', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"EPR Deepening dat - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"EPR Deepening dat - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:28:40', '2025-03-19 10:28:40', '84c9c05f-e99a-4b0f-9da7-979bc930ec20'),
(496, 496, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"49e3e828-6795-49c5-a82b-3360a0b3664d\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"eca88837-37fe-4366-9c04-3b186a4046b3\":\"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\",\"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\":\"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\",\"50fd66aa-669e-462b-bfb3-183483ca7f53\":{\"date\":\"2025-03-28 07:00:00\"},\"3699bcd1-9095-4053-972b-820dc7fdd9fb\":{\"date\":\"2025-04-17 07:00:00\"},\"c6ea490e-ad7d-401f-b119-1404e146ac0e\":{\"date\":\"2025-03-21 07:00:00\"},\"daaa5d42-b397-4793-8d5e-25ada16deeb1\":\"230,00 €\",\"6cbe1a93-eb4b-48f0-b47c-fc314d657898\":false,\"59560f2d-bf2a-4a28-9c90-837018f49967\":\"Online\",\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\":\"Glyndie Nickerson\"}', 1, '2025-03-19 10:28:40', '2025-03-19 10:28:40', '40141cb0-a3f5-4cce-aabb-1e039b30c610'),
(497, 497, 1, NULL, '__temp_jkcpzlctmcleljndejycdkwjyudzxdvkuhzu', NULL, '{\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\":[\"179\"],\"033d0eef-2816-4a44-8a29-a76c412495ef\":[\"180\"]}', 1, '2025-03-19 10:28:40', '2025-03-19 10:28:40', 'ed5cca83-8a5e-4476-8c45-47c0a1f6a2c3'),
(499, 499, 1, 'Active coaching', 'epr-therapy-days-3', 'event/epr-therapy-days-3', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"EPR Deepening dat - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"EPR Deepening dat - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:28:49', '2025-03-19 10:28:49', 'a47c92d7-ce81-4cef-8300-430a92f06b6c'),
(502, 502, 1, 'Events', 'all-events', 'events', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"All events\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Events - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:29:02', '2025-03-19 10:29:02', '4321e2fe-1dd9-4345-b3d6-64829c64fae0'),
(503, 503, 1, NULL, '__temp_kikokkedfqednquwmpbozzjxhmnsineyxzkp', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Events\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>I offer workshops and seminars in Embodied Psyhodinamic Resonance. These events provide an immersive space for practitioners and therapists to deepen their skills and cultivate a more embodied presence in their work.</p><p><strong>For more details on events and registrations, please&nbsp;contact me.</strong></p>\"}', 1, '2025-03-19 10:29:02', '2025-03-19 10:29:02', '40a58179-847e-4169-ab9a-141413da6911'),
(507, 507, 1, 'Breath of Life', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Somatic therapy: How working with the body can heal the imprints of trauma\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Breath of Life - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Breath of Life - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:29:54', '2025-03-19 10:29:54', 'f5b24005-744c-4f4d-b5eb-b2826eb66540'),
(508, 508, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"b3e478af-1cfb-4477-be12-08cf53448ceb\":\"In this therapeutic approach, we place trust in life’s innate wisdom to guide the healing process. Every unfolding event in a safe, relational space has a purpose.\",\"a9c23139-d423-42de-99b0-8e565396df95\":[\"75\"]}', 1, '2025-03-19 10:29:54', '2025-03-19 10:29:54', '9852d63c-35f7-44f6-b773-947f420f9712'),
(509, 509, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\":\"<p>The orientation toward the Breath of Life is essential. It is a sacred, radiant presence and an organizing force that harmonizes and guides all levels of our experience—physical, emotional, and spiritual. The Midline, as the main organizing principle of our experience, offers a pathway to understanding the dynamic balance within the organism. It serves as a guide for the body’s organization, helping to unify the physical, emotional, and energetic states.</p><p>In this therapeutic approach, we place trust in life’s innate wisdom to guide the healing process. Every unfolding event in a safe, relational space has a purpose. The therapeutic process is one of reciprocal connection with the life force. As the therapist\'s intention aligns with the unfolding of the client’s life force, trust naturally arises. This connection can be seen&nbsp;as an individuation of life force meeting life force itself.</p>\"}', 1, '2025-03-19 10:29:54', '2025-03-19 10:29:54', '0428bb41-b929-4486-a6d6-3c0525a0e7be'),
(512, 512, 1, 'Breath of Life', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Somatic therapy: How working with the body can heal the imprints of trauma\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Breath of Life - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Breath of Life - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:30:30', '2025-03-19 10:30:30', '11c7a586-5349-42f0-b08f-a17e9a62bf6d'),
(513, 513, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"b3e478af-1cfb-4477-be12-08cf53448ceb\":\"In this therapeutic approach, we place trust in life’s innate wisdom to guide the healing process. Every unfolding event in a safe, relational space has a purpose.\",\"a9c23139-d423-42de-99b0-8e565396df95\":[\"75\"]}', 1, '2025-03-19 10:30:30', '2025-03-19 10:30:30', '92993191-ee77-4495-9eea-dd5ac2453e59'),
(517, 517, 1, 'Where to put this??', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-6', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-6', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Somatic therapy: How working with the body can heal the imprints of trauma\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Where to put this?? - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Where to put this?? - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:30:59', '2025-03-19 10:30:59', 'dc97d8d2-5896-49b7-ae6c-5a44942df276'),
(518, 518, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"b3e478af-1cfb-4477-be12-08cf53448ceb\":\"Before we’re knee-deep together in the world of thought, I’d like you to notice what’s going on in your body.\",\"a9c23139-d423-42de-99b0-8e565396df95\":[\"75\"]}', 1, '2025-03-19 10:30:59', '2025-03-19 10:30:59', '31ce1dfb-410a-416b-80e4-05cd23931806'),
(519, 519, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\":\"<p>When therapists attune to these underlying structures, they develop a greater capacity to trust the unseen currents of Life Force—sometimes referred to as ‘divine presence’ or ‘chi’—that moves through us as an organizing and creative force. Engaging with this force in a direct, non-verbal way fosters a therapeutic presence that is both spacious and anchored in open-heartedness.</p><p>EPR highlights the interdependent nature of inner spaciousness and resonance, recognizing them as the foundation of any embodied therapy. This foundational attunement allows for the exploration of obstacles, adaptations, and survival strategies in a way that encourages natural and effortless disidentification from them.&nbsp;</p><p>The moment-to-moment, process-oriented nature of this work enables deep psychobiological healing, grounded in the recognition that, whether immediately apparent or not, we are all inherently moving toward greater inner spaciousness.</p>\"}', 1, '2025-03-19 10:30:59', '2025-03-19 10:30:59', 'cbfe5db9-807b-453e-8d72-2dbae8c5d2d9'),
(523, 523, 1, 'Essential States', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-5', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-5', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Somatic therapy: How working with the body can heal the imprints of trauma\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Essential States - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Essential States - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:31:49', '2025-03-19 10:31:49', 'fa18d45e-16ac-4621-8015-d5891b1f7484'),
(524, 524, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"b3e478af-1cfb-4477-be12-08cf53448ceb\":\"A sense of space and connection to essential states—both in the client and therapist—is often what is missing when working through core dilemmas.\",\"a9c23139-d423-42de-99b0-8e565396df95\":[\"75\"]}', 1, '2025-03-19 10:31:49', '2025-03-19 10:31:49', 'b124ed9b-e2b1-417f-bbfe-e8767dcaafc3'),
(525, 525, 1, NULL, '__temp_ltrnpiziojgqcovpahorneinawcfapleghyg', NULL, '{\"e2add2df-ac40-4a63-a77c-b33d2743035a\":\"<p>As a craniosacral therapist, my work has taught me to align with invisible currents that support healing at a fundamental level. It has revealed the potency of space and the power of orienting toward essential states when working with clients. These states serve as more than mere resources; they are prerequisites for meeting the most wounded and fragmented places within us. They communicate wholeness amidst disconnection.</p><p>A sense of space and connection to essential states—both in the client and therapist—is often what is missing when working through core dilemmas. When deeply held identifications crystallize, they create an illusion of immobility. In these moments, even experienced therapists may lose patience, disconnect from deeper states within themselves, act on their countertransference, or resort to problem-solving. However, by cultivating an internal orientation toward spaciousness and deep intention, we bring consciousness into these fixed areas, allowing for movement and integration.</p><p>As therapists, we hold both the responsibility and the opportunity to develop deeper states of being that serve as fundamental resources for healing. Ideally, we do not begin by drifting with traumatic currents or fighting shadows without first meeting them with an inner light. These deeper states act as that light, creating the space to embrace and hold the protective strategies and symptoms we encounter in clients. Universal states such as gratitude, wholeness, and compassion are always available to us because they are intrinsic to human experience.</p>\"}', 1, '2025-03-19 10:31:49', '2025-03-19 10:31:49', 'c7212fd8-75e6-445b-97a8-b08639cfaf0e'),
(528, 528, 1, 'Where to put this??', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-6', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-6', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Somatic therapy: How working with the body can heal the imprints of trauma\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Where to put this?? - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Where to put this?? - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:31:59', '2025-03-19 10:31:59', '3d62c75c-47c5-45e6-bada-8583958f5e44'),
(529, 529, 1, NULL, '__temp_kzhawprvltapjlwbeqdntzjgysburoagiffi', NULL, '{\"b3e478af-1cfb-4477-be12-08cf53448ceb\":\"EPR highlights the interdependent nature of inner spaciousness and resonance, recognizing them as the foundation of any embodied therapy.\",\"a9c23139-d423-42de-99b0-8e565396df95\":[\"75\"]}', 1, '2025-03-19 10:31:59', '2025-03-19 10:31:59', '45a4781b-4317-42d0-8dc1-67e32ae586b7'),
(531, 531, 1, 'PRIMER OBJAVE', 'somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-4', 'inspiration/somatic-therapy-how-working-with-the-body-can-heal-the-imprints-of-trauma-4', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Somatic therapy: How working with the body can heal the imprints of trauma\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"PRIMER OBJAVE - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"PRIMER OBJAVE - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:32:14', '2025-03-19 10:32:14', '37c84b1a-2e72-4b7c-84f7-f08def3d0e1b'),
(532, 532, 1, 'Bojan Sumrak', 'bojan-sumrak', 'newsletter-subscribers/bojan-sumrak', '{\"adecda5a-83e0-4975-bf15-ee3f40b1de1c\":\"bojan.sumrak@gmail.com\"}', 1, '2025-03-19 10:33:57', '2025-03-19 10:33:57', '87a35efd-e27c-4581-9211-963d95a6d320'),
(533, 533, 1, 'Bojan Sumrak', 'bojan-sumrak', 'newsletter-subscribers/bojan-sumrak', '{\"adecda5a-83e0-4975-bf15-ee3f40b1de1c\":\"bojan.sumrak@gmail.com\"}', 1, '2025-03-19 10:33:57', '2025-03-19 10:33:57', '04c6b90c-130a-4016-a3f4-6ae0619c9625'),
(536, 536, 1, 'Privacy policy', 'privacy-policy', 'privacy-policy', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-19 10:36:30', '2025-03-19 10:36:30', 'c4f5d74f-079d-4441-b286-7b3a306a317d');
INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `title`, `slug`, `uri`, `content`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(537, 537, 1, NULL, '__temp_kupeeppejyszqaknsqsdtjulqzbmgyffxekg', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"Privacy policy\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"right\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>This privacy policy (hereinafter: Policy) of Mudita Institute (hereinafter: the Company) aims to inform subscribers, users, and other persons (hereinafter: the Data Subject) about the purpose and the grounds for personal data processing by the Company and about their rights in this area.</p>\\r\\n<h3><strong>About the Personal Data Protection Policy</strong></h3>\\r\\n<p>This personal data protection policy (hereinafter: Policy) aims to inform subscribers, users, and other persons (hereinafter: the Data Subject) about the purpose and the grounds for personal data protection by the company and about their rights in this area. At the same time, this policy additionally explains the consent to process data. In accordance with the Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (hereinafter: General Data Protection Regulation), this Policy includes the following information:</p>\\r\\n<ul><li>The contact information of the Company and the data protection officer</li>\\r\\n <li>The purposes, grounds, and types of the data subject’s personal data processing, including profiling their personal data</li>\\r\\n <li>The forwarding of data to third persons and to third countries</li>\\r\\n <li>The retention period of Data Subject’s types of personal data </li>\\r\\n <li>The Data Subject’s rights regarding data processing</li>\\r\\n <li>The right to file a complaint regarding personal data processing</li>\\r\\n</ul>\\r\\n<p>Where appropriate, the provisions relating to the Data Subject are used for the issues of secrecy and confidentiality of communications of users that are legal entities.</p>\\r\\n<h3><strong>Data Controller and Data Protection Officer </strong></h3>\\r\\n<p>The data controller of the Data Subject’s data processed in accordance with the personal data protection policy is Mudita Institute.&nbsp;</p>\\r\\n<h3><strong>The Purposes and Grounds of Data Processing</strong></h3>\\r\\n<p>Data processing on the grounds of a contract: the Company processes the Data Subject’s personal data for the purposes of notifying them about new additions to the website, for the purposes of direct marketing and for the purposes of segmentation. </p>\\r\\n<p>In the context of exercising their rights and fulfilling contractual obligations, the Company processes the Data Subject’s personal data for the following purposes:</p>\\r\\n<ul><li>E-mail address and name for the purposes of notifying about the website and sending the newsletter</li>\\r\\n <li>Phone number for the purposes of notifying about performing business services</li>\\r\\n <li>Home address for the fulfillment of payment obligations – drafting and sending invoices</li>\\r\\n <li>Company data for the fulfillment of payment obligation – drafting and sending invoices</li>\\r\\n</ul>\\r\\n<h3><strong>Personal Data Processing under the Act</strong></h3>\\r\\n<p>The Company processes the Data Subject’s personal data for the purposes of concluding, managing, and cancelling subscriptions. </p>\\r\\n<p>Processing on the grounds of consenting to personal data processing: the processing of personal data could be based on the consent given by the Data Subject to the Company. The consent can refer to the notifications about the range of services and products, the preparation of the range of services and products aimed at the Data Subject’s user habits or conducting services with added value. Notifications are sent through channels chosen by the Data Subject in the consent. Notification via email includes forwarding the Data Subject’s email to an external processor with the purpose of showing ads of the company while browsing.</p>\\r\\n<p>The Data Subject can withdraw or change their consent at any time in the same method the consent was originally given or in a different method as defined by the Company. The Company holds the right to identify the client. Withdrawing or changing consent only applies for the data processed on the grounds of the consent. The valid consent is the Data Subject’s latest consent received by the Company. The possibility to withdraw consent does not give the Data Subject the right to withdraw from a business relationship between the Company and the Data Subject. The consent can be given on behalf of a minor who cannot consent by themselves in accordance with the applicable law by the minor’s parent, foster parent, or legal guardian. Such consent is valid until withdrawn or changed by a parent, foster parent, legal guardian or a minor when they acquire the right in accordance with the applicable law.</p>\\r\\n<h3><strong>Forwarding Data to Third Persons and Forwarding Data to Third Countries (Non-EU Member States or Non-Members of the European Economic Area) </strong></h3>\\r\\n<p>When in accordance with the purpose of personal data processing according to the EU and Slovenian laws, the company can forward the Data Subject’s personal data to:</p>\\r\\n<ul><li>Persons performing individual tasks of processing for the Company, such as the preparation and sending of invoices or data analytics, the maintenance and development of services when such tasks need to include personal data processing</li>\\r\\n <li>Persons performing the services of sales and marketing for the company, including field sales and marketing, or persons cooperating with the company in the area of marketing and sales of their own services or third person services in the scope necessary for such tasks in accordance with the purposes or the grounds as defined in this Policy</li>\\r\\n</ul>\\r\\n<p>If the Company is integrated or acquired by another company, personal data are transferred to the acquirer in accordance with the law. By using services of Mudita Institute you consent with further processing of your personal data by the acquirer. </p>\\r\\n<h3><strong>The Duration of Personal Data Retention </strong></h3>\\r\\n<p>For the purpose of the fulfillment of contractual obligations, the Data Subject’s invoicing data and the related contact data can be kept until the complete payment of a service or until the limitation period of a claim has expired. Under the law, such limitation period can be from one to five years. Invoices are kept for ten years after the expiry of the year the invoice refers to in accordance with the law that regulates added value tax. If turnover data is processed on the grounds of the Data Subject’s consent for marketing, the sale of goods or services with added value, such data could be processed in the necessary scope for as long as necessary for such marketing or services. All other data acquired for the purposes of notification and direct marketing are kept until the withdrawal of consent.</p>\\r\\n<h3><strong>The Data Subject’s Right Regarding Personal Data Processing </strong></h3>\\r\\n<p>The Company ensures the Data Subject could exercise their rights without undue delay and in all situations in one month after receiving the claim. The Company can extend the deadline for the Data Subject to exercise their rights for two additional months at most with regard to the complexity and number of claims. If the Company extends the deadline, it must notify the Data Subject about each such extension in one month after having received the claim, citing reasons for the delay. The Company accepts claims regarding the Data Subject’s rights via e-mail address <u><a href=\\\"mailto:info@mudita-institute.com\\\">info@mudita-institute.com</a></u>. When the Data Subject files a claim electronically, the information is provided electronically whenever possible, unless the Data Subject requests otherwise. Where there is reasonable doubt regarding the identity of the Data Subject exercising any of their rights regarding their personal data, the Company has the right to ask for additional information necessary to confirm the identity of the Data Subject. If the claims of the Data Subject are manifestly unfounded or excessive, in particular because of their repetitive character, the Company could charge a reasonable fee, taking into account the administrative costs of forwarding information or messages or executing the requested measures, or the Company could refuse to act on a request. </p>\\r\\n<p>The Company ensures the Data Subject the following rights regarding personal data processing:</p>\\r\\n<ul><li>The right of access</li>\\r\\n <li>The right to rectification</li>\\r\\n <li>The right to erasure (“the right to be forgotten”)</li>\\r\\n <li>The right to restriction of processing</li>\\r\\n <li>The right to data portability</li>\\r\\n</ul>\\r\\n<h3><strong>The Right of Access</strong></h3>\\r\\n<p>The Data Subject has the right to obtain confirmation as to whether the Company processes their personal data and if so, the right of access to their personal data and any additional information relating to personal data processing, including:</p>\\r\\n<ul><li>The purposes of processing</li>\\r\\n <li>Types of personal data</li>\\r\\n <li>Users or categories of users to whom personal data was or will be disclosed, in particular users in third countries or international organizations</li>\\r\\n <li>Whenever possible, the foreseen retention period or, if this is not possible, the measure necessary to specify such a period</li>\\r\\n <li>The right to require the data controller to rectify or erase personal data, or limit the processing of the Data Subject’s personal data, or the right to object to personal data processing</li>\\r\\n <li>The right to lodge a complaint with a supervisory authority</li>\\r\\n <li>If personal data was not collected from the Data Subject, all available information relating to the source</li>\\r\\n <li>The existence of automated decision making, including profiling, and reasonably estimable information about the logic involved, and the meaning and foreseen consequences of such processing for the Data Subject</li>\\r\\n</ul>\\r\\n<p>On the grounds of the Data Subject’s claim, the Company ensures a copy of whatever personal data of theirs is being processed. The company could charge a reasonable fee with regard to administrative costs for any additional copies of data that the data subject requests.</p>\\r\\n<h3><strong>The Right to Rectification</strong></h3>\\r\\n<p>The Data Subject has the right to rectify inaccurate personal data without undue delay by the Company. The Data Subject has the right to supplement incomplete data with regard to the purposes for personal data processing, including by providing a supplementary statement.</p>\\r\\n<h3><strong>The Right to Erasure (“The Right to Be Forgotten”) </strong></h3>\\r\\n<p>The Data Subject has the right to erase their personal data without undue delay, and the Company is obliged to erase personal data without undue delay whenever:</p>\\r\\n<ul><li>Personal data is no longer necessary for the purposes chosen or processed in any other method.</li>\\r\\n <li>The Data Subject withdraws their consent which is the grounds to process personal data and no other legal basis exists.</li>\\r\\n <li>The Data Subject objects to the processing based on the Company’s legitimate interests, but no overriding legitimate grounds exist for the processing.</li>\\r\\n <li>The Data Subject objects to the processing for the purpose of direct marketing.</li>\\r\\n <li>Personal data must be erased to honor a legal commitment in accordance with the EU law or Slovenian legislation.</li>\\r\\n <li> Data is involved regarding the supply of services of information society, incorrectly collected data of a child who in accordance with the applicable law is unable to provide such data.</li>\\r\\n</ul>\\r\\n<p>When directory data or otherwise published data is involved, the Company takes reasonable measures, including technical measures, to notify data collectors that the Data Subject has requested to erase any connections to such personal data or their copies.</p>\\r\\n<h3><strong>The Right to Restriction of Processing</strong></h3>\\r\\n<p>The Data Subject has the right to restrict processing whenever:</p>\\r\\n<ul><li>The Data Subject opposed the accuracy of data for the period which enables the data collector to verify the accuracy of personal data.</li>\\r\\n <li>The processing is unlawful, and the Data Subject opposes the erasure of personal data but requests to restrict their use instead.</li>\\r\\n <li>The Company no longer needs the personal data for the purposes of processing, but the Data Subject needs them for the establishment, exercise or defense of legal claims.</li>\\r\\n <li>The Data Subject has objected to processing pending the verification of whether the legitimate grounds of the controller override those of the Data Subject.</li>\\r\\n</ul>\\r\\n<h3><strong>The Right to Data Portability</strong></h3>\\r\\n<p>The Data Subject has the right to receive personal data which he or she has provided to the controller, in a structured, commonly used and machine-readable format, and to transmit that data to another controller without hindrance by the Company to which the personal data has been provided whenever:</p>\\r\\n<ul><li>The processing is based on the Data Subject’s consent or contract and is carried out by automated means.</li>\\r\\n</ul>\\r\\n<h3><strong>The Right to Object</strong></h3>\\r\\n<p>The Data Subject has the right to object, on grounds relating to his or her particular situation, at any time to the processing of personal data concerning him or her if it is based on the legitimate interest of the Company or a third person. The Company shall no longer process the personal data unless the Company demonstrates compelling legitimate grounds for the processing which override the interests, rights and freedoms of the Data Subject or for the establishment, exercise or defense of legal claims. Where personal data is processed for direct marketing purposes, the Data Subject shall have the right to object at any time to the processing of personal data concerning him or her for such marketing, which includes profiling to the extent that it is related to such direct marketing. If direct marketing is based on consent, the right to object can be exercised by withdrawing the consent. </p>\\r\\n<h3><strong>The Right to Lodge a Complaint Relating to Personal Data Processing</strong></h3>\\r\\n<p>The Data Subject can lodge a complaint relating to personal data processing&nbsp;by email at <a href=\\\"mailto:info@mudita-institute.com\\\">info@mudita-institute.com</a>.</p>\\r\\n<p>The Data Subject has the right to lodge a complaint directly with the information commissioner if the Data Subject considers the processing of personal data relating to him or her an infringement of Slovenia’s regulations or EU data protection legal framework.</p>\\r\\n<p>If the Data Subject has claimed the right of access to data, and after having received the Company’s decision, considers the personal data he or she received not to be the personal data he or she requested, or that he or she has not received the personal data in its entirety, he or she should lodge an explanatory complaint with the Company within 15 days before lodging a complaint with the information commissioner. The Company must rule on the complaint as if it is a new complaint within five working days. </p>\\r\\n<h3><strong>The Validity of the Policy</strong></h3>\\r\\n<p>This policy has been published on the website <a href=\\\"https://mudita-institute.com\\\">https://mudita-institute.com</a> and is valid as of 1 Januar 2023. <br></p>\"}', 1, '2025-03-19 10:36:30', '2025-03-19 10:36:30', '4ed933e1-910f-4f3e-8c5e-48282c1b565e'),
(540, 540, 1, 'Privacy policy', 'privacy-policy', 'privacy-policy', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]},\"facebook\":{\"handle\":null,\"title\":[],\"imageId\":null,\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":null}}}', 1, '2025-03-19 10:37:37', '2025-03-19 10:37:37', '5735037a-0503-4cfa-b665-d784504c1fb6'),
(541, 541, 1, NULL, '__temp_kupeeppejyszqaknsqsdtjulqzbmgyffxekg', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"Privacy policy\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"right\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<p>This privacy policy (hereinafter: Policy) of Karima Valentina Hočevar (hereinafter: the Company) aims to inform subscribers, users, and other persons (hereinafter: the Data Subject) about the purpose and the grounds for personal data processing by the Company and about their rights in this area.</p><h3><strong>About the Personal Data Protection Policy</strong></h3><p>This personal data protection policy (hereinafter: Policy) aims to inform subscribers, users, and other persons (hereinafter: the Data Subject) about the purpose and the grounds for personal data protection by the company and about their rights in this area. At the same time, this policy additionally explains the consent to process data. In accordance with the Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (hereinafter: General Data Protection Regulation), this Policy includes the following information:</p><ul><li>The contact information of the Company and the data protection officer</li><li>The purposes, grounds, and types of the data subject’s personal data processing, including profiling their personal data</li><li>The forwarding of data to third persons and to third countries</li><li>The retention period of Data Subject’s types of personal data</li><li>The Data Subject’s rights regarding data processing</li><li>The right to file a complaint regarding personal data processing</li></ul><p>Where appropriate, the provisions relating to the Data Subject are used for the issues of secrecy and confidentiality of communications of users that are legal entities.</p><h3><strong>Data Controller and Data Protection Officer</strong></h3><p>The data controller of the Data Subject’s data processed in accordance with the personal data protection policy is Karima Valentina Hočevar</p><h3><strong>The Purposes and Grounds of Data Processing</strong></h3><p>Data processing on the grounds of a contract: the Company processes the Data Subject’s personal data for the purposes of notifying them about new additions to the website, for the purposes of direct marketing and for the purposes of segmentation.</p><p>In the context of exercising their rights and fulfilling contractual obligations, the Company processes the Data Subject’s personal data for the following purposes:</p><ul><li>E-mail address and name for the purposes of notifying about the website and sending the newsletter</li><li>Phone number for the purposes of notifying about performing business services</li><li>Home address for the fulfillment of payment obligations – drafting and sending invoices</li><li>Company data for the fulfillment of payment obligation – drafting and sending invoices</li></ul><h3><strong>Personal Data Processing under the Act</strong></h3><p>The Company processes the Data Subject’s personal data for the purposes of concluding, managing, and cancelling subscriptions.</p><p>Processing on the grounds of consenting to personal data processing: the processing of personal data could be based on the consent given by the Data Subject to the Company. The consent can refer to the notifications about the range of services and products, the preparation of the range of services and products aimed at the Data Subject’s user habits or conducting services with added value. Notifications are sent through channels chosen by the Data Subject in the consent. Notification via email includes forwarding the Data Subject’s email to an external processor with the purpose of showing ads of the company while browsing.</p><p>The Data Subject can withdraw or change their consent at any time in the same method the consent was originally given or in a different method as defined by the Company. The Company holds the right to identify the client. Withdrawing or changing consent only applies for the data processed on the grounds of the consent. The valid consent is the Data Subject’s latest consent received by the Company. The possibility to withdraw consent does not give the Data Subject the right to withdraw from a business relationship between the Company and the Data Subject. The consent can be given on behalf of a minor who cannot consent by themselves in accordance with the applicable law by the minor’s parent, foster parent, or legal guardian. Such consent is valid until withdrawn or changed by a parent, foster parent, legal guardian or a minor when they acquire the right in accordance with the applicable law.</p><h3><strong>Forwarding Data to Third Persons and Forwarding Data to Third Countries (Non-EU Member States or Non-Members of the European Economic Area)</strong></h3><p>When in accordance with the purpose of personal data processing according to the EU and Slovenian laws, the company can forward the Data Subject’s personal data to:</p><ul><li>Persons performing individual tasks of processing for the Company, such as the preparation and sending of invoices or data analytics, the maintenance and development of services when such tasks need to include personal data processing</li><li>Persons performing the services of sales and marketing for the company, including field sales and marketing, or persons cooperating with the company in the area of marketing and sales of their own services or third person services in the scope necessary for such tasks in accordance with the purposes or the grounds as defined in this Policy</li></ul><p>If the Company is integrated or acquired by another company, personal data are transferred to the acquirer in accordance with the law. By using services of Karima Valentina Hočevar you consent with further processing of your personal data by the acquirer.</p><h3><strong>The Duration of Personal Data Retention</strong></h3><p>For the purpose of the fulfillment of contractual obligations, the Data Subject’s invoicing data and the related contact data can be kept until the complete payment of a service or until the limitation period of a claim has expired. Under the law, such limitation period can be from one to five years. Invoices are kept for ten years after the expiry of the year the invoice refers to in accordance with the law that regulates added value tax. If turnover data is processed on the grounds of the Data Subject’s consent for marketing, the sale of goods or services with added value, such data could be processed in the necessary scope for as long as necessary for such marketing or services. All other data acquired for the purposes of notification and direct marketing are kept until the withdrawal of consent.</p><h3><strong>The Data Subject’s Right Regarding Personal Data Processing</strong></h3><p>The Company ensures the Data Subject could exercise their rights without undue delay and in all situations in one month after receiving the claim. The Company can extend the deadline for the Data Subject to exercise their rights for two additional months at most with regard to the complexity and number of claims. If the Company extends the deadline, it must notify the Data Subject about each such extension in one month after having received the claim, citing reasons for the delay. The Company accepts claims regarding the Data Subject’s rights via e-mail address <a href=\\\"mailto:info@mudita-institute.com\\\"><u>info@mudita-institute.com</u></a>. When the Data Subject files a claim electronically, the information is provided electronically whenever possible, unless the Data Subject requests otherwise. Where there is reasonable doubt regarding the identity of the Data Subject exercising any of their rights regarding their personal data, the Company has the right to ask for additional information necessary to confirm the identity of the Data Subject. If the claims of the Data Subject are manifestly unfounded or excessive, in particular because of their repetitive character, the Company could charge a reasonable fee, taking into account the administrative costs of forwarding information or messages or executing the requested measures, or the Company could refuse to act on a request.</p><p>The Company ensures the Data Subject the following rights regarding personal data processing:</p><ul><li>The right of access</li><li>The right to rectification</li><li>The right to erasure (“the right to be forgotten”)</li><li>The right to restriction of processing</li><li>The right to data portability</li></ul><h3><strong>The Right of Access</strong></h3><p>The Data Subject has the right to obtain confirmation as to whether the Company processes their personal data and if so, the right of access to their personal data and any additional information relating to personal data processing, including:</p><ul><li>The purposes of processing</li><li>Types of personal data</li><li>Users or categories of users to whom personal data was or will be disclosed, in particular users in third countries or international organizations</li><li>Whenever possible, the foreseen retention period or, if this is not possible, the measure necessary to specify such a period</li><li>The right to require the data controller to rectify or erase personal data, or limit the processing of the Data Subject’s personal data, or the right to object to personal data processing</li><li>The right to lodge a complaint with a supervisory authority</li><li>If personal data was not collected from the Data Subject, all available information relating to the source</li><li>The existence of automated decision making, including profiling, and reasonably estimable information about the logic involved, and the meaning and foreseen consequences of such processing for the Data Subject</li></ul><p>On the grounds of the Data Subject’s claim, the Company ensures a copy of whatever personal data of theirs is being processed. The company could charge a reasonable fee with regard to administrative costs for any additional copies of data that the data subject requests.</p><h3><strong>The Right to Rectification</strong></h3><p>The Data Subject has the right to rectify inaccurate personal data without undue delay by the Company. The Data Subject has the right to supplement incomplete data with regard to the purposes for personal data processing, including by providing a supplementary statement.</p><h3><strong>The Right to Erasure (“The Right to Be Forgotten”)</strong></h3><p>The Data Subject has the right to erase their personal data without undue delay, and the Company is obliged to erase personal data without undue delay whenever:</p><ul><li>Personal data is no longer necessary for the purposes chosen or processed in any other method.</li><li>The Data Subject withdraws their consent which is the grounds to process personal data and no other legal basis exists.</li><li>The Data Subject objects to the processing based on the Company’s legitimate interests, but no overriding legitimate grounds exist for the processing.</li><li>The Data Subject objects to the processing for the purpose of direct marketing.</li><li>Personal data must be erased to honor a legal commitment in accordance with the EU law or Slovenian legislation.</li><li>Data is involved regarding the supply of services of information society, incorrectly collected data of a child who in accordance with the applicable law is unable to provide such data.</li></ul><p>When directory data or otherwise published data is involved, the Company takes reasonable measures, including technical measures, to notify data collectors that the Data Subject has requested to erase any connections to such personal data or their copies.</p><h3><strong>The Right to Restriction of Processing</strong></h3><p>The Data Subject has the right to restrict processing whenever:</p><ul><li>The Data Subject opposed the accuracy of data for the period which enables the data collector to verify the accuracy of personal data.</li><li>The processing is unlawful, and the Data Subject opposes the erasure of personal data but requests to restrict their use instead.</li><li>The Company no longer needs the personal data for the purposes of processing, but the Data Subject needs them for the establishment, exercise or defense of legal claims.</li><li>The Data Subject has objected to processing pending the verification of whether the legitimate grounds of the controller override those of the Data Subject.</li></ul><h3><strong>The Right to Data Portability</strong></h3><p>The Data Subject has the right to receive personal data which he or she has provided to the controller, in a structured, commonly used and machine-readable format, and to transmit that data to another controller without hindrance by the Company to which the personal data has been provided whenever:</p><ul><li>The processing is based on the Data Subject’s consent or contract and is carried out by automated means.</li></ul><h3><strong>The Right to Object</strong></h3><p>The Data Subject has the right to object, on grounds relating to his or her particular situation, at any time to the processing of personal data concerning him or her if it is based on the legitimate interest of the Company or a third person. The Company shall no longer process the personal data unless the Company demonstrates compelling legitimate grounds for the processing which override the interests, rights and freedoms of the Data Subject or for the establishment, exercise or defense of legal claims. Where personal data is processed for direct marketing purposes, the Data Subject shall have the right to object at any time to the processing of personal data concerning him or her for such marketing, which includes profiling to the extent that it is related to such direct marketing. If direct marketing is based on consent, the right to object can be exercised by withdrawing the consent.</p><h3><strong>The Right to Lodge a Complaint Relating to Personal Data Processing</strong></h3><p>The Data Subject can lodge a complaint relating to personal data processing&nbsp;by email at <a href=\\\"mailto:info@mudita-institute.com\\\">info@mudita-institute.com</a>.</p><p>The Data Subject has the right to lodge a complaint directly with the information commissioner if the Data Subject considers the processing of personal data relating to him or her an infringement of Slovenia’s regulations or EU data protection legal framework.</p><p>If the Data Subject has claimed the right of access to data, and after having received the Company’s decision, considers the personal data he or she received not to be the personal data he or she requested, or that he or she has not received the personal data in its entirety, he or she should lodge an explanatory complaint with the Company within 15 days before lodging a complaint with the information commissioner. The Company must rule on the complaint as if it is a new complaint within five working days.</p><h3><strong>The Validity of the Policy</strong></h3><p>This policy has been published on the website <a href=\\\"https://mudita-institute.com\\\">https://mudita-institute.com</a> and is valid as of 1 Januar 2023.&nbsp;<br>&nbsp;</p>\"}', 1, '2025-03-19 10:37:37', '2025-03-19 10:37:37', '42f6c692-5574-42a6-af5b-dd3acc607466'),
(542, 542, 1, 'Terms of use', 'terms-of-use', 'terms-of-use', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"Terms of use\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Terms of use - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Terms of use - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:37:58', '2025-03-19 10:37:58', '6a1b7d51-f020-4cbb-8d78-d9b9941739c0'),
(543, 543, 1, NULL, '__temp_mxhkufbonqchyytteephffwnecygqwfuhmqq', NULL, '{\"61d1d186-dff7-4cbd-b901-256e496e4472\":\"Terms of use\",\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\":\"right\",\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\":true,\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\":\"<h3><strong>Acceptance</strong></h3>\\r\\n<p>This website is managed by Mudita Institute (xxx).</p>\\r\\n<p>The purpose of this website is to inform the public about the activities and new services of Mudita Institute.</p>\\r\\n<p>By entering this website, you accept legal notices without limits and reservations.</p>\\r\\n<h3><strong>Author Rights</strong></h3>\\r\\n<p>This website is the intellectual property of Mudita Institute. All information, descriptions and the content on this website are protected by intellectual property rights. Information, texts, images and other graphic elements on this website can only be used for personal and non-commercial use.</p>\\r\\n<p>Users are not allowed to change, copy, distribute, transfer, project, publish, sell, license, or transform any content from this website for commercial or public purposes.</p>\\r\\n<h3><strong>Content</strong></h3>\\r\\n<p>All content on the website of Mudita Institute&nbsp;are informative in nature. The owner of the website is committed to do everything in their power to publish true, reliable, and high-quality data. The owner is not responsible for any potential content mistakes, delays or flaws when uploading the current data. The owner of the website holds the right to change the content, specification and availability of the products whenever and without a notice.</p>\\r\\n<h3><strong><br>Privacy and Data Protection</strong></h3>\\r\\n<p>All personal data is confidential and will not be forwarded to unauthorized or third persons.</p>\\r\\n<p>More about privacy policy you will find bellow.</p>\\r\\n<h3><strong>Cookies</strong></h3>\\r\\n<p>Our website uses cookies and other technologies to customize your experience and to understand how visitors use our website.</p>\\r\\n<p><strong>What are cookies?</strong></p>\\r\\n<p>A cookie is a file that saves the settings of the websites you visit. Websites save cookies in a user’s device used to access the internet. The purpose is to recognize individual devices and settings a user has used and track internet activity. Cookies enable web servers to recognize which web pages a user has previously visited. In advanced applications, cookies enable customized individual settings. A user’s browser saves cookies and the browser can also limit or disable saving cookies. </p>\\r\\n<p><strong>Why are cookies necessary?</strong></p>\\r\\n<p>Cookies are of key importance to guarantee user-friendly web services. The most common functions of e-business would not be possible without cookies. Cookies make the interaction between a user and a website faster and simpler. Cookies enable a website to recognize a user’s preferences and experience, making browsing more efficient and user-friendly. There are several reasons to use cookies. Cookies are used to save information about individual websites (details about customization of a website), they help with web services (for example, online stores), and they help with collecting statistics about users and visitors to a website about a users’ habits, etc. Cookies enable the evaluation of the efficiency of a website. Read more on the recommended and allowed use of cookies on websites and the guidelines of an information commissioner here.</p>\\r\\n<p><strong>The list of cookies on our website</strong></p>\\r\\n<table>\\r\\n <tbody><tr>\\r\\n <td width=\\\"32%\\\"><p><strong>Cookie Name</strong></p></td>\\r\\n <td width=\\\"32%\\\"><p><strong>Duration</strong></p></td>\\r\\n <td width=\\\"32%\\\"><p><strong>Description</strong></p></td>\\r\\n </tr>\\r\\n <tr>\\r\\n <td width=\\\"32%\\\"><p>cookie_agree</p></td>\\r\\n <td width=\\\"32%\\\"><p>Duration of a session</p></td>\\r\\n <td width=\\\"32%\\\"><p>Decision on website cookies</p></td>\\r\\n </tr>\\r\\n <tr>\\r\\n <td width=\\\"32%\\\"><p><strong>Analytics</strong></p></td>\\r\\n <td width=\\\"32%\\\"></td>\\r\\n <td width=\\\"32%\\\"></td>\\r\\n </tr>\\r\\n <tr>\\r\\n <td width=\\\"32%\\\"><p>_ga</p></td>\\r\\n <td width=\\\"32%\\\"><p>2 years</p></td>\\r\\n <td><p>Google Analytics – used to differentiate visitors</p></td>\\r\\n </tr>\\r\\n <tr>\\r\\n <td width=\\\"32%\\\"><p>_gid</p></td>\\r\\n <td><p>1 day</p></td>\\r\\n <td width=\\\"32%\\\"><p>Google Analytics – used to differentiate visitors</p></td>\\r\\n </tr>\\r\\n</tbody></table>\\r\\n<p>Cookies used on our website do not collect personal data which could serve to identify you and cannot harm your computer, tablet or mobile phone. Cookies enable our website to run smoothly and help us understand the most useful information for visitors.</p>\\r\\n<p><strong>Declaration</strong></p>\\r\\n<p>By using this website, you agree to using cookies on your computer or mobile device. </p>\\r\\n<p><strong>Manage and delete cookies</strong></p>\\r\\n<p>If you wish to change cookie settings in your browser, including blocking or deleting them, you can do this by appropriately changing your browser’s settings. To manage cookies, most browsers enable you to allow or reject all cookies, allow a certain type of cookies, or the browser notifies you when a website is using cookies. Cookies saved by your browser can be easily deleted. If you change or delete the browser’s cookie file, or change or upgrade your browser or device, you might have to disable cookies again. The procedure to manage and delete cookies varies in different browsers. If you need help, check the browser’s user help tab. Google Analytics tracking can be disabled <u>here.</u></p>\\r\\n<p><strong>Manage cookies in different browsers:</strong></p>\\r\\n<ul>\\r\\n <li><a href=\\\"https://support.google.com/chrome/answer/95647?hl=sl\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">Google Chrome</a></li>\\r\\n <li><a href=\\\"http://windows.microsoft.com/sl-si/internet-explorer/delete-manage-cookies#ie=ie-10\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">Internet Explorer </a></li>\\r\\n <li><a href=\\\"http://support.apple.com/kb/index?page=search&fac=all&q=cookies%20safari\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">Safari</a></li>\\r\\n <li><a href=\\\"http://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">Firefox</a></li>\\r\\n <li><a href=\\\"http://www.opera.com/help/tutorials/security/privacy/\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">Opera</a></li>\\r\\n</ul>\\r\\n<h3><strong>Hyperlinks</strong></h3>\\r\\n<p>This website might contain links to websites independent from this website. The owner does not guarantee the accuracy or credibility of the information from such links and other websites. You access other websites at your our risk.</p>\\r\\n<h3><strong>Disclaimer</strong></h3>\\r\\n<p>All content on this website is the property of&nbsp;Mudita Institute&nbsp;and is informative in nature. Mudita Institute is not responsible for the use of the website, any inaccuracies or any harm caused by the use of the content from this website. The use of all content and services on the website is at your own risk. Mudita Institute holds the right to change the website at any time or stop updating the content.</p>\\r\\n<h3><strong>Change Notice</strong></h3>\\r\\n<p>Any change to legal notices will be published on this webpage and other appropriate sites.</p>\\r\\n<h3><strong>Business Information</strong></h3>\\r\\n<p>Mudita Institute</p>\"}', 1, '2025-03-19 10:37:58', '2025-03-19 10:37:58', '0c6b2504-a510-4aba-87d5-43fe6c48485b'),
(546, 546, 1, 'Homepage', 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Homepage - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Homepage - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:40:34', '2025-03-19 10:40:34', '148077d2-1a52-4615-ba2b-76384239fb91'),
(547, 547, 1, NULL, 'test', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Welcome!\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>A journey into <strong>Embodied Psychodynamic Resonance (EPR)</strong>—a deeply attuned therapeutic approach integrating presence, relational awareness, and the wisdom of the body. Through years of experience in <strong>Biodynamic Craniosacral Therapy (BCST)</strong> and the <strong>NeuroAffective Relational Model (NARM)</strong>, Karima guides practitioners and individuals toward greater coherence, trust, and inner spaciousness.</p><p>Explore <strong>EPR sessions, workshops, and trainings</strong> designed to support deep healing and transformation.</p>\",\"ae02b7a9-733b-48d9-84b7-4821587c306e\":[{\"col1\":\"/events\",\"col2\":\"Events\",\"col3\":\"primary\"}]}', 1, '2025-03-19 10:40:34', '2025-03-19 10:40:34', 'db7a092e-60af-4621-9634-33cdc6434f67'),
(550, 550, 1, 'Homepage', 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Homepage - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Homepage - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:40:57', '2025-03-19 10:40:57', 'a56f2bed-7d20-4be5-93ed-db5d2f76d2db'),
(551, 551, 1, NULL, 'test', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Welcome!\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>Discover Embodied Psychodynamic Resonance (EPR)—a therapy rooted in presence, body wisdom, and deep attunement. Karima integrates BCST and NARM to guide healing and transformation. Join EPR sessions, workshops, and trainings to reconnect with your inner spaciousness.</p>\",\"ae02b7a9-733b-48d9-84b7-4821587c306e\":[{\"col1\":\"/events\",\"col2\":\"Events\",\"col3\":\"primary\"}]}', 1, '2025-03-19 10:40:57', '2025-03-19 10:40:57', '68d58747-245a-4892-b16e-535f5c320a86'),
(554, 554, 1, 'Homepage', 'homepage', '__home__', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Homepage - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"Homepage - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-19 10:41:28', '2025-03-19 10:41:28', '27dbc5b6-a43b-438e-b181-e2da749d24b4'),
(555, 555, 1, NULL, 'test', NULL, '{\"890dcf84-fa63-4443-aee1-0058523e7590\":\"Welcome!\",\"0d5328b7-613b-4d02-8231-c694170b38b4\":\"<p>Discover Embodied Psychodynamic Resonance (EPR)—a therapy rooted in presence, body wisdom, and deep attunement. I integrates BCST and NARM to guide healing and transformation. Join EPR sessions, workshops, and trainings to reconnect with your inner spaciousness.</p>\",\"ae02b7a9-733b-48d9-84b7-4821587c306e\":[{\"col1\":\"/events\",\"col2\":\"Events\",\"col3\":\"primary\"}]}', 1, '2025-03-19 10:41:28', '2025-03-19 10:41:28', '7775ac1a-98e5-4d71-ad05-a3162dd9e0b1'),
(558, 558, 1, 'EPR therapy days March 14-15 , Hannover', 'epr-therapy-days', 'event/epr-therapy-days', '{\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\":{\"titleRaw\":{\"1\":\"EPR therapy days\"},\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"EPR therapy days March 14-15 , Hannover - Karima Hočevar\",\"imageId\":\"\",\"description\":[]},\"facebook\":{\"handle\":null,\"title\":\"EPR therapy days March 14-15 , Hannover - Karima Hočevar\",\"imageId\":\"\",\"description\":[]}},\"advanced\":{\"robots\":[],\"canonical\":\"\"}}}', 1, '2025-03-26 12:57:20', '2025-03-26 12:57:20', '5e6a38bb-b646-48b0-b5e2-7842f5a5c231'),
(559, 559, 1, NULL, '__temp_gbibvotejprtlqudmozjdyqzovcginqztbyg', NULL, '{\"49e3e828-6795-49c5-a82b-3360a0b3664d\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"eca88837-37fe-4366-9c04-3b186a4046b3\":\"<p>Introductory e-seminar provides a theoretical and practical introduction to trauma healing through Somatic Experiencing (SE®). </p><p>You will learn to work with the holistic inner feeling (felt sense) and develop an understanding of how the \\\"biological completion\\\" works, which is missing in most trauma therapies.</p><p>This introductory seminar is the prerequisite for the 3-year SE® training. </p><p>This seminar is aimed at people from therapeutic, educational, medical and other healing professions. The seminar is not suitable for people who are primarily working on their own traumatic issues. Please let us know what your professional background is when you book. </p>\",\"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\":\"<p>The introductory seminar is a prerequisite for participation in the training in Somatic Experiencing (SE®). After the introductory seminar, the seminar leader gives permission to participate in SE® training.</p>\",\"50fd66aa-669e-462b-bfb3-183483ca7f53\":{\"date\":\"2025-03-14 07:00:00\"},\"3699bcd1-9095-4053-972b-820dc7fdd9fb\":{\"date\":\"2025-03-31 07:00:00\"},\"ee77a16c-2740-4126-b391-d88c9f4ff060\":\"Begins at 10:00 on the first day and ends at 17:00 on the second day.\",\"c6ea490e-ad7d-401f-b119-1404e146ac0e\":{\"date\":\"2025-03-31 07:00:00\"},\"daaa5d42-b397-4793-8d5e-25ada16deeb1\":\"230,00 €\",\"6cbe1a93-eb4b-48f0-b47c-fc314d657898\":false,\"59560f2d-bf2a-4a28-9c90-837018f49967\":\"Online\",\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\":\"Glyndie Nickerson\"}', 1, '2025-03-26 12:57:20', '2025-03-26 12:57:20', 'a185855e-eb96-4431-a7d1-df263056fe18');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `primaryOwnerId` int(11) DEFAULT NULL,
  `fieldId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `deletedWithSection` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `primaryOwnerId`, `fieldId`, `typeId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `deletedWithSection`, `dateCreated`, `dateUpdated`) VALUES
(2, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 20:45:36', '2025-03-13 20:45:36'),
(3, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 20:45:36', '2025-03-13 20:45:36'),
(6, NULL, NULL, 2, 1, 1, '2025-03-13 20:58:00', NULL, NULL, NULL, '2025-03-13 20:58:05', '2025-03-13 20:58:05'),
(7, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 20:58:05', '2025-03-13 20:58:05'),
(8, NULL, NULL, 7, 1, 1, '2025-03-13 20:58:00', NULL, NULL, NULL, '2025-03-13 20:58:05', '2025-03-13 20:58:05'),
(13, NULL, NULL, 6, 6, 3, '2025-03-13 21:39:00', NULL, NULL, NULL, '2025-03-13 21:40:20', '2025-03-13 21:40:20'),
(14, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 21:40:20', '2025-03-13 21:40:20'),
(15, NULL, NULL, 14, 1, 1, '2025-03-13 20:58:00', NULL, NULL, NULL, '2025-03-13 21:40:20', '2025-03-13 21:40:20'),
(16, NULL, NULL, 15, 6, 3, '2025-03-13 21:39:00', NULL, NULL, NULL, '2025-03-13 21:40:20', '2025-03-13 21:40:20'),
(20, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 22:08:41', '2025-03-13 22:08:41'),
(21, NULL, NULL, 20, 1, 1, '2025-03-13 20:58:00', NULL, NULL, NULL, '2025-03-13 22:08:41', '2025-03-13 22:08:41'),
(22, NULL, NULL, 21, 6, 3, '2025-03-13 21:39:00', NULL, NULL, NULL, '2025-03-13 22:08:41', '2025-03-13 22:08:41'),
(26, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 22:08:53', '2025-03-13 22:08:53'),
(27, NULL, NULL, 26, 1, 1, '2025-03-13 20:58:00', NULL, NULL, NULL, '2025-03-13 22:08:53', '2025-03-13 22:08:53'),
(28, NULL, NULL, 27, 6, 3, '2025-03-13 21:39:00', NULL, NULL, NULL, '2025-03-13 22:08:53', '2025-03-13 22:08:53'),
(33, NULL, NULL, 2, 1, 4, '2025-03-13 22:18:00', NULL, NULL, NULL, '2025-03-13 22:19:22', '2025-03-13 22:19:22'),
(34, NULL, NULL, 33, 6, 3, '2025-03-13 22:18:00', NULL, NULL, NULL, '2025-03-13 22:19:22', '2025-03-13 22:19:22'),
(35, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 22:19:22', '2025-03-13 22:19:22'),
(36, NULL, NULL, 35, 1, 4, '2025-03-13 22:18:00', NULL, NULL, NULL, '2025-03-13 22:19:22', '2025-03-13 22:19:22'),
(37, NULL, NULL, 36, 6, 3, '2025-03-13 22:18:00', NULL, NULL, NULL, '2025-03-13 22:19:22', '2025-03-13 22:19:22'),
(40, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 22:20:33', '2025-03-13 22:20:33'),
(41, NULL, NULL, 40, 1, 4, '2025-03-13 22:18:00', NULL, NULL, NULL, '2025-03-13 22:20:33', '2025-03-13 22:20:33'),
(47, NULL, NULL, 2, 1, 4, '2025-03-13 22:44:00', NULL, NULL, NULL, '2025-03-13 22:44:57', '2025-03-13 22:44:57'),
(48, NULL, NULL, 47, 6, 3, '2025-03-13 22:44:00', NULL, NULL, NULL, '2025-03-13 22:44:57', '2025-03-13 22:44:57'),
(49, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 22:44:58', '2025-03-13 22:44:58'),
(50, NULL, NULL, 49, 1, 4, '2025-03-13 22:18:00', NULL, NULL, NULL, '2025-03-13 22:44:58', '2025-03-13 22:44:58'),
(51, NULL, NULL, 49, 1, 4, '2025-03-13 22:44:00', NULL, NULL, NULL, '2025-03-13 22:44:58', '2025-03-13 22:44:58'),
(52, NULL, NULL, 51, 6, 3, '2025-03-13 22:44:00', NULL, NULL, NULL, '2025-03-13 22:44:58', '2025-03-13 22:44:58'),
(56, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 22:45:57', '2025-03-13 22:45:57'),
(57, NULL, NULL, 56, 1, 1, '2025-03-13 20:58:00', NULL, NULL, NULL, '2025-03-13 22:45:57', '2025-03-13 22:45:57'),
(58, NULL, NULL, 56, 1, 4, '2025-03-13 22:44:00', NULL, NULL, NULL, '2025-03-13 22:45:57', '2025-03-13 22:45:57'),
(61, NULL, NULL, 2, 1, 5, '2025-03-13 22:57:00', NULL, NULL, NULL, '2025-03-13 22:57:30', '2025-03-13 22:57:30'),
(62, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 22:57:30', '2025-03-13 22:57:30'),
(63, NULL, NULL, 62, 1, 5, '2025-03-13 22:57:00', NULL, NULL, NULL, '2025-03-13 22:57:30', '2025-03-13 22:57:30'),
(66, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 22:57:43', '2025-03-13 22:57:43'),
(67, NULL, NULL, 66, 1, 5, '2025-03-13 22:57:00', NULL, NULL, NULL, '2025-03-13 22:57:43', '2025-03-13 22:57:43'),
(70, NULL, NULL, 2, 1, 10, '2025-03-13 23:14:00', NULL, NULL, NULL, '2025-03-13 23:14:45', '2025-03-13 23:14:45'),
(71, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 23:14:45', '2025-03-13 23:14:45'),
(72, NULL, NULL, 71, 1, 10, '2025-03-13 23:14:00', NULL, NULL, NULL, '2025-03-13 23:14:45', '2025-03-13 23:14:45'),
(73, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:19:20', '2025-03-13 23:20:13'),
(74, NULL, NULL, 73, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-13 23:19:28', '2025-03-13 23:19:28'),
(76, NULL, NULL, 74, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:20:08', '2025-03-13 23:20:11'),
(77, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:20:13', '2025-03-13 23:20:13'),
(78, NULL, NULL, 77, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-13 23:20:13', '2025-03-13 23:20:13'),
(79, NULL, NULL, 78, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:20:13', '2025-03-13 23:20:13'),
(89, NULL, NULL, 74, 9, 7, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(90, NULL, NULL, 74, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(91, NULL, NULL, 74, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(92, NULL, NULL, 74, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(93, NULL, NULL, 74, 9, 8, '2025-03-13 23:22:00', NULL, 0, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(94, NULL, NULL, 74, 9, 6, '2025-03-13 23:22:00', NULL, 0, 0, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(95, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(96, NULL, NULL, 95, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(97, NULL, NULL, 96, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(98, NULL, NULL, 96, 9, 7, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(99, NULL, NULL, 96, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(100, NULL, NULL, 96, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(101, NULL, NULL, 96, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(102, NULL, NULL, 96, 9, 8, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(103, NULL, NULL, 96, 9, 6, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-13 23:22:24', '2025-03-13 23:22:24'),
(105, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:24:25', '2025-03-13 23:24:25'),
(106, NULL, NULL, 105, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-13 23:24:25', '2025-03-13 23:24:25'),
(108, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 23:24:47', '2025-03-13 23:24:47'),
(109, NULL, NULL, 108, 1, 1, '2025-03-13 20:58:00', NULL, NULL, NULL, '2025-03-13 23:24:47', '2025-03-13 23:24:47'),
(110, NULL, NULL, 108, 1, 4, '2025-03-13 22:18:00', NULL, NULL, NULL, '2025-03-13 23:24:47', '2025-03-13 23:24:47'),
(111, NULL, NULL, 108, 1, 4, '2025-03-13 22:44:00', NULL, NULL, NULL, '2025-03-13 23:24:47', '2025-03-13 23:24:47'),
(112, NULL, NULL, 108, 1, 5, '2025-03-13 22:57:00', NULL, NULL, NULL, '2025-03-13 23:24:47', '2025-03-13 23:24:47'),
(113, NULL, NULL, 108, 1, 10, '2025-03-13 23:14:00', NULL, NULL, NULL, '2025-03-13 23:24:47', '2025-03-13 23:24:47'),
(114, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:25:14', '2025-03-13 23:25:14'),
(117, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 23:32:48', '2025-03-13 23:32:48'),
(118, NULL, NULL, 117, 1, 5, '2025-03-13 22:57:00', NULL, NULL, NULL, '2025-03-13 23:32:48', '2025-03-13 23:32:48'),
(119, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-13 23:32:59', '2025-03-13 23:32:59'),
(120, NULL, NULL, 119, 1, 5, '2025-03-13 22:57:00', NULL, NULL, NULL, '2025-03-13 23:32:59', '2025-03-13 23:32:59'),
(121, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, 0, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(122, NULL, NULL, 121, 1, 9, '2025-03-13 23:19:00', NULL, 0, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(123, NULL, NULL, 122, 9, 6, '2025-03-13 23:20:00', NULL, 0, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(124, NULL, NULL, 122, 9, 7, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(125, NULL, NULL, 122, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(126, NULL, NULL, 122, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(127, NULL, NULL, 122, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(128, NULL, NULL, 122, 9, 8, '2025-03-13 23:22:00', NULL, 0, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(129, NULL, NULL, 122, 9, 6, '2025-03-13 23:22:00', NULL, 0, 0, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(130, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(131, NULL, NULL, 130, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(132, NULL, NULL, 131, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(133, NULL, NULL, 131, 9, 7, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(134, NULL, NULL, 131, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(135, NULL, NULL, 131, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(136, NULL, NULL, 131, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(137, NULL, NULL, 131, 9, 8, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(138, NULL, NULL, 131, 9, 6, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-13 23:44:21', '2025-03-13 23:44:21'),
(139, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, 0, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(140, NULL, NULL, 139, 1, 9, '2025-03-13 23:19:00', NULL, 0, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(141, NULL, NULL, 140, 9, 6, '2025-03-13 23:20:00', NULL, 0, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(142, NULL, NULL, 140, 9, 7, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(143, NULL, NULL, 140, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(144, NULL, NULL, 140, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(145, NULL, NULL, 140, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(146, NULL, NULL, 140, 9, 8, '2025-03-13 23:22:00', NULL, 0, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(147, NULL, NULL, 140, 9, 6, '2025-03-13 23:22:00', NULL, 0, 0, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(148, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(149, NULL, NULL, 148, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(150, NULL, NULL, 149, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(151, NULL, NULL, 149, 9, 7, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(152, NULL, NULL, 149, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(153, NULL, NULL, 149, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(154, NULL, NULL, 149, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(155, NULL, NULL, 149, 9, 8, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(156, NULL, NULL, 149, 9, 6, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-13 23:44:24', '2025-03-13 23:44:24'),
(157, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-13 23:57:55', '2025-03-13 23:59:05'),
(158, NULL, NULL, 157, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-13 23:58:02', '2025-03-13 23:58:03'),
(159, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-13 23:59:05', '2025-03-13 23:59:05'),
(160, NULL, NULL, 159, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-13 23:59:05', '2025-03-13 23:59:05'),
(161, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, 0, 0, '2025-03-13 23:59:15', '2025-03-13 23:59:15'),
(162, NULL, NULL, 161, 1, 11, '2025-03-13 23:58:00', NULL, 0, 0, '2025-03-13 23:59:15', '2025-03-13 23:59:15'),
(163, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-13 23:59:15', '2025-03-13 23:59:15'),
(164, NULL, NULL, 163, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-13 23:59:15', '2025-03-13 23:59:15'),
(165, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, 0, 0, '2025-03-13 23:59:18', '2025-03-13 23:59:18'),
(166, NULL, NULL, 165, 1, 11, '2025-03-13 23:58:00', NULL, 0, 0, '2025-03-13 23:59:18', '2025-03-13 23:59:18'),
(167, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-13 23:59:18', '2025-03-13 23:59:18'),
(168, NULL, NULL, 167, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-13 23:59:18', '2025-03-13 23:59:18'),
(172, NULL, NULL, 2, 1, 12, '2025-03-14 00:03:00', NULL, NULL, NULL, '2025-03-14 00:03:50', '2025-03-14 00:03:50'),
(173, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-14 00:03:51', '2025-03-14 00:03:51'),
(174, NULL, NULL, 173, 1, 10, '2025-03-13 23:14:00', NULL, NULL, NULL, '2025-03-14 00:03:51', '2025-03-14 00:03:51'),
(175, NULL, NULL, 173, 1, 12, '2025-03-14 00:03:00', NULL, NULL, NULL, '2025-03-14 00:03:51', '2025-03-14 00:03:51'),
(181, NULL, NULL, 158, 6, 3, '2025-03-14 00:12:00', NULL, NULL, NULL, '2025-03-14 00:13:05', '2025-03-14 00:13:05'),
(182, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 00:13:05', '2025-03-14 00:13:05'),
(183, NULL, NULL, 182, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 00:13:05', '2025-03-14 00:13:05'),
(184, NULL, NULL, 183, 6, 3, '2025-03-14 00:12:00', NULL, NULL, NULL, '2025-03-14 00:13:05', '2025-03-14 00:13:05'),
(185, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 00:14:23', '2025-03-14 00:14:23'),
(186, NULL, NULL, 185, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 00:14:23', '2025-03-14 00:14:23'),
(187, NULL, NULL, 186, 6, 3, '2025-03-14 00:12:00', NULL, NULL, NULL, '2025-03-14 00:14:23', '2025-03-14 00:14:23'),
(188, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 00:14:23', '2025-03-14 00:14:23'),
(189, NULL, NULL, 188, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 00:14:23', '2025-03-14 00:14:23'),
(190, NULL, NULL, 189, 6, 3, '2025-03-14 00:12:00', NULL, NULL, NULL, '2025-03-14 00:14:23', '2025-03-14 00:14:23'),
(191, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 00:14:24', '2025-03-14 00:14:24'),
(192, NULL, NULL, 191, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 00:14:24', '2025-03-14 00:14:24'),
(193, NULL, NULL, 192, 6, 3, '2025-03-14 00:12:00', NULL, NULL, NULL, '2025-03-14 00:14:24', '2025-03-14 00:14:24'),
(194, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 00:14:24', '2025-03-14 00:14:24'),
(195, NULL, NULL, 194, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 00:14:24', '2025-03-14 00:14:24'),
(196, NULL, NULL, 195, 6, 3, '2025-03-14 00:12:00', NULL, NULL, NULL, '2025-03-14 00:14:24', '2025-03-14 00:14:24'),
(197, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 00:31:40', '2025-03-14 00:31:40'),
(200, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 00:32:26', '2025-03-14 00:32:26'),
(201, NULL, NULL, 200, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 00:32:26', '2025-03-14 00:32:26'),
(204, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 00:32:44', '2025-03-14 00:32:44'),
(205, NULL, NULL, 204, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 00:32:44', '2025-03-14 00:32:44'),
(206, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-14 01:06:46', '2025-03-14 01:06:46'),
(207, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-14 01:06:46', '2025-03-14 01:06:46'),
(210, NULL, NULL, 206, 1, 12, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-14 01:06:59', '2025-03-14 01:06:59'),
(211, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-14 01:06:59', '2025-03-14 01:06:59'),
(212, NULL, NULL, 211, 1, 12, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-14 01:06:59', '2025-03-14 01:06:59'),
(215, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-14 01:08:04', '2025-03-14 01:08:04'),
(216, NULL, NULL, 215, 1, 12, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-14 01:08:04', '2025-03-14 01:08:04'),
(217, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 01:09:39', '2025-03-14 01:09:39'),
(218, NULL, NULL, 217, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 01:09:39', '2025-03-14 01:09:39'),
(219, NULL, NULL, 218, 6, 3, '2025-03-14 00:12:00', NULL, NULL, NULL, '2025-03-14 01:09:39', '2025-03-14 01:09:39'),
(220, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 01:09:39', '2025-03-14 01:09:39'),
(221, NULL, NULL, 220, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 01:09:39', '2025-03-14 01:09:39'),
(222, NULL, NULL, 221, 6, 3, '2025-03-14 00:12:00', NULL, NULL, NULL, '2025-03-14 01:09:40', '2025-03-14 01:09:40'),
(225, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 01:40:17', '2025-03-14 01:40:17'),
(226, NULL, NULL, 225, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 01:40:17', '2025-03-14 01:40:17'),
(229, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 01:40:27', '2025-03-14 01:40:27'),
(230, NULL, NULL, 229, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 01:40:27', '2025-03-14 01:40:27'),
(231, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-14 01:45:46', '2025-03-14 01:45:46'),
(232, NULL, NULL, 231, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-14 01:45:46', '2025-03-14 01:45:46'),
(233, 5, NULL, NULL, NULL, 2, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-14 02:00:30', '2025-03-14 02:00:30'),
(234, 5, NULL, NULL, NULL, 2, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-14 02:00:30', '2025-03-14 02:00:30'),
(238, NULL, NULL, 233, 1, 4, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-14 02:00:56', '2025-03-14 02:00:56'),
(239, NULL, NULL, 238, 6, 3, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-14 02:00:56', '2025-03-14 02:00:56'),
(240, 5, NULL, NULL, NULL, 2, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-14 02:00:56', '2025-03-14 02:00:56'),
(241, NULL, NULL, 240, 1, 4, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-14 02:00:56', '2025-03-14 02:00:56'),
(242, NULL, NULL, 241, 6, 3, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-14 02:00:56', '2025-03-14 02:00:56'),
(243, 6, NULL, NULL, NULL, 2, '2025-03-14 02:02:00', NULL, NULL, NULL, '2025-03-14 02:02:05', '2025-03-14 02:02:05'),
(244, 6, NULL, NULL, NULL, 2, '2025-03-14 02:02:00', NULL, NULL, NULL, '2025-03-14 02:02:05', '2025-03-14 02:02:05'),
(248, NULL, NULL, 243, 1, 4, '2025-03-14 02:02:00', NULL, NULL, NULL, '2025-03-14 02:02:53', '2025-03-14 02:02:53'),
(249, NULL, NULL, 248, 6, 3, '2025-03-14 02:02:00', NULL, NULL, NULL, '2025-03-14 02:02:53', '2025-03-14 02:02:53'),
(250, 6, NULL, NULL, NULL, 2, '2025-03-14 02:02:00', NULL, NULL, NULL, '2025-03-14 02:02:53', '2025-03-14 02:02:53'),
(251, NULL, NULL, 250, 1, 4, '2025-03-14 02:02:00', NULL, NULL, NULL, '2025-03-14 02:02:53', '2025-03-14 02:02:53'),
(252, NULL, NULL, 251, 6, 3, '2025-03-14 02:02:00', NULL, NULL, NULL, '2025-03-14 02:02:53', '2025-03-14 02:02:53'),
(255, 6, NULL, NULL, NULL, 2, '2025-03-14 02:02:00', NULL, NULL, NULL, '2025-03-14 02:06:00', '2025-03-14 02:06:00'),
(256, NULL, NULL, 255, 1, 4, '2025-03-14 02:02:00', NULL, NULL, NULL, '2025-03-14 02:06:00', '2025-03-14 02:06:00'),
(257, 7, NULL, NULL, NULL, 2, '2025-03-14 02:06:00', NULL, NULL, NULL, '2025-03-14 02:06:51', '2025-03-14 02:06:51'),
(258, 7, NULL, NULL, NULL, 2, '2025-03-14 02:06:00', NULL, NULL, NULL, '2025-03-14 02:06:51', '2025-03-14 02:06:51'),
(261, NULL, NULL, 257, 1, 4, '2025-03-14 02:06:00', NULL, NULL, NULL, '2025-03-14 02:07:24', '2025-03-14 02:07:24'),
(262, 7, NULL, NULL, NULL, 2, '2025-03-14 02:06:00', NULL, NULL, NULL, '2025-03-14 02:07:24', '2025-03-14 02:07:24'),
(263, NULL, NULL, 262, 1, 4, '2025-03-14 02:06:00', NULL, NULL, NULL, '2025-03-14 02:07:24', '2025-03-14 02:07:24'),
(268, NULL, NULL, 261, 6, 3, '2025-03-14 02:07:00', NULL, NULL, NULL, '2025-03-14 02:07:50', '2025-03-14 02:07:50'),
(269, 7, NULL, NULL, NULL, 2, '2025-03-14 02:06:00', NULL, NULL, NULL, '2025-03-14 02:07:50', '2025-03-14 02:07:50'),
(270, NULL, NULL, 269, 1, 4, '2025-03-14 02:06:00', NULL, NULL, NULL, '2025-03-14 02:07:50', '2025-03-14 02:07:50'),
(271, NULL, NULL, 270, 6, 3, '2025-03-14 02:07:00', NULL, NULL, NULL, '2025-03-14 02:07:50', '2025-03-14 02:07:50'),
(272, 8, NULL, NULL, NULL, 2, '2025-03-14 06:00:00', NULL, NULL, NULL, '2025-03-14 06:00:16', '2025-03-14 06:00:16'),
(273, 8, NULL, NULL, NULL, 2, '2025-03-14 06:00:00', NULL, NULL, NULL, '2025-03-14 06:00:16', '2025-03-14 06:00:16'),
(276, NULL, NULL, 272, 1, 10, '2025-03-14 06:00:00', NULL, NULL, NULL, '2025-03-14 06:00:44', '2025-03-14 06:00:44'),
(277, 8, NULL, NULL, NULL, 2, '2025-03-14 06:00:00', NULL, NULL, NULL, '2025-03-14 06:00:44', '2025-03-14 06:00:44'),
(278, NULL, NULL, 277, 1, 10, '2025-03-14 06:00:00', NULL, NULL, NULL, '2025-03-14 06:00:45', '2025-03-14 06:00:45'),
(281, 8, NULL, NULL, NULL, 2, '2025-03-14 06:00:00', NULL, NULL, NULL, '2025-03-14 06:01:39', '2025-03-14 06:01:39'),
(282, NULL, NULL, 281, 1, 10, '2025-03-14 06:00:00', NULL, NULL, NULL, '2025-03-14 06:01:39', '2025-03-14 06:01:39'),
(283, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(284, NULL, NULL, 283, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(285, NULL, NULL, 284, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(286, NULL, NULL, 284, 9, 7, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(287, NULL, NULL, 284, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(288, NULL, NULL, 284, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(289, NULL, NULL, 284, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(290, NULL, NULL, 284, 9, 8, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(291, NULL, NULL, 284, 9, 6, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(292, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(293, NULL, NULL, 292, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(294, NULL, NULL, 293, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(295, NULL, NULL, 293, 9, 7, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(296, NULL, NULL, 293, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(297, NULL, NULL, 293, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(298, NULL, NULL, 293, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(299, NULL, NULL, 293, 9, 8, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(300, NULL, NULL, 293, 9, 6, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-14 06:02:56', '2025-03-14 06:02:56'),
(301, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:02:59', '2025-03-14 06:02:59'),
(302, NULL, NULL, 301, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-14 06:02:59', '2025-03-14 06:02:59'),
(303, NULL, NULL, 302, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:02:59', '2025-03-14 06:02:59'),
(304, NULL, NULL, 302, 9, 7, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-14 06:02:59', '2025-03-14 06:02:59'),
(305, NULL, NULL, 302, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-14 06:02:59', '2025-03-14 06:02:59'),
(306, NULL, NULL, 302, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-14 06:02:59', '2025-03-14 06:02:59'),
(307, NULL, NULL, 302, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-14 06:02:59', '2025-03-14 06:02:59'),
(308, NULL, NULL, 302, 9, 8, '2025-03-13 23:22:00', NULL, 0, 0, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(309, NULL, NULL, 302, 9, 6, '2025-03-13 23:22:00', NULL, 0, 0, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(310, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(311, NULL, NULL, 310, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(312, NULL, NULL, 311, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(313, NULL, NULL, 311, 9, 7, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(314, NULL, NULL, 311, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(315, NULL, NULL, 311, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(316, NULL, NULL, 311, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(317, NULL, NULL, 311, 9, 8, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(318, NULL, NULL, 311, 9, 6, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-14 06:03:00', '2025-03-14 06:03:00'),
(319, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(320, NULL, NULL, 319, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(321, NULL, NULL, 320, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(322, NULL, NULL, 320, 9, 7, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(323, NULL, NULL, 320, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(324, NULL, NULL, 320, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(325, NULL, NULL, 320, 9, 6, '2025-03-13 23:21:00', NULL, 0, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(326, NULL, NULL, 320, 9, 8, '2025-03-13 23:22:00', NULL, 0, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(327, NULL, NULL, 320, 9, 6, '2025-03-13 23:22:00', NULL, 0, 0, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(328, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(329, NULL, NULL, 328, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(330, NULL, NULL, 329, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(331, NULL, NULL, 329, 9, 7, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(332, NULL, NULL, 329, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(333, NULL, NULL, 329, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(334, NULL, NULL, 329, 9, 6, '2025-03-13 23:21:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(335, NULL, NULL, 329, 9, 8, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(336, NULL, NULL, 329, 9, 6, '2025-03-13 23:22:00', NULL, NULL, NULL, '2025-03-14 06:03:02', '2025-03-14 06:03:02'),
(337, 9, NULL, NULL, NULL, 2, '2025-03-14 06:04:00', NULL, NULL, NULL, '2025-03-14 06:04:39', '2025-03-14 06:04:39'),
(338, 9, NULL, NULL, NULL, 2, '2025-03-14 06:04:00', NULL, NULL, NULL, '2025-03-14 06:04:39', '2025-03-14 06:04:39'),
(341, NULL, NULL, 337, 1, 13, '2025-03-14 06:06:00', NULL, NULL, NULL, '2025-03-14 06:06:14', '2025-03-14 06:06:14'),
(342, 9, NULL, NULL, NULL, 2, '2025-03-14 06:04:00', NULL, NULL, NULL, '2025-03-14 06:06:14', '2025-03-14 06:06:14'),
(343, NULL, NULL, 342, 1, 13, '2025-03-14 06:06:00', NULL, NULL, NULL, '2025-03-14 06:06:14', '2025-03-14 06:06:14'),
(346, NULL, NULL, 337, 1, 14, '2025-03-14 06:32:00', NULL, NULL, NULL, '2025-03-14 06:32:39', '2025-03-14 06:32:39'),
(347, 9, NULL, NULL, NULL, 2, '2025-03-14 06:04:00', NULL, NULL, NULL, '2025-03-14 06:32:39', '2025-03-14 06:32:39'),
(348, NULL, NULL, 347, 1, 14, '2025-03-14 06:32:00', NULL, NULL, NULL, '2025-03-14 06:32:39', '2025-03-14 06:32:39'),
(349, 10, NULL, NULL, NULL, 2, '2025-03-14 21:59:00', NULL, NULL, NULL, '2025-03-14 21:59:01', '2025-03-14 21:59:01'),
(350, 10, NULL, NULL, NULL, 2, '2025-03-14 21:59:00', NULL, NULL, NULL, '2025-03-14 21:59:01', '2025-03-14 21:59:01'),
(351, 12, NULL, NULL, NULL, 2, '2025-03-14 21:59:00', NULL, NULL, NULL, '2025-03-14 21:59:01', '2025-03-14 21:59:01'),
(352, 12, NULL, NULL, NULL, 2, '2025-03-14 21:59:00', NULL, NULL, NULL, '2025-03-14 21:59:01', '2025-03-14 21:59:01'),
(353, 12, NULL, NULL, NULL, 2, '2025-03-14 21:59:00', NULL, NULL, NULL, '2025-03-14 21:59:02', '2025-03-14 21:59:02'),
(354, 11, NULL, NULL, NULL, 16, '2025-03-14 22:09:00', NULL, NULL, NULL, '2025-03-14 22:09:35', '2025-03-14 22:09:35'),
(355, 11, NULL, NULL, NULL, 16, '2025-03-14 22:09:00', NULL, NULL, NULL, '2025-03-14 22:09:35', '2025-03-14 22:09:35'),
(356, 13, NULL, NULL, NULL, 15, '2025-03-14 22:17:00', NULL, 0, 0, '2025-03-14 22:17:32', '2025-03-14 22:17:32'),
(357, 13, NULL, NULL, NULL, 15, '2025-03-14 22:17:00', NULL, NULL, NULL, '2025-03-14 22:17:32', '2025-03-14 22:17:32'),
(358, 13, NULL, NULL, NULL, 15, '2025-03-14 22:22:00', NULL, NULL, NULL, '2025-03-14 22:22:03', '2025-03-14 22:22:03'),
(359, 13, NULL, NULL, NULL, 15, '2025-03-14 22:22:00', NULL, NULL, NULL, '2025-03-14 22:22:03', '2025-03-14 22:22:03'),
(365, NULL, NULL, 349, 1, 4, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-14 22:25:49', '2025-03-14 22:25:49'),
(366, NULL, NULL, 365, 6, 3, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-14 22:25:49', '2025-03-14 22:25:49'),
(367, 10, NULL, NULL, NULL, 2, '2025-03-14 21:59:00', NULL, NULL, NULL, '2025-03-14 22:25:49', '2025-03-14 22:25:49'),
(368, NULL, NULL, 367, 1, 4, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-14 22:25:49', '2025-03-14 22:25:49'),
(369, NULL, NULL, 368, 6, 3, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-14 22:25:49', '2025-03-14 22:25:49'),
(372, NULL, NULL, 351, 1, 4, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-14 22:26:07', '2025-03-14 22:26:07'),
(373, NULL, NULL, 372, 6, 3, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-14 22:26:07', '2025-03-14 22:26:07'),
(374, 12, NULL, NULL, NULL, 2, '2025-03-14 21:59:00', NULL, NULL, NULL, '2025-03-14 22:26:07', '2025-03-14 22:26:07'),
(375, NULL, NULL, 374, 1, 4, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-14 22:26:07', '2025-03-14 22:26:07'),
(376, NULL, NULL, 375, 6, 3, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-14 22:26:07', '2025-03-14 22:26:07'),
(379, 5, NULL, NULL, NULL, 2, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-16 12:05:20', '2025-03-16 12:05:20'),
(380, NULL, NULL, 379, 1, 4, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-16 12:05:20', '2025-03-16 12:05:20'),
(385, 5, NULL, NULL, NULL, 2, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-19 10:06:50', '2025-03-19 10:06:50'),
(386, NULL, NULL, 385, 1, 4, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-19 10:06:50', '2025-03-19 10:06:50'),
(387, NULL, NULL, 386, 6, 3, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-19 10:06:50', '2025-03-19 10:06:50'),
(390, 5, NULL, NULL, NULL, 2, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-19 10:08:06', '2025-03-19 10:08:06'),
(391, NULL, NULL, 390, 1, 4, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-19 10:08:06', '2025-03-19 10:08:06'),
(394, 5, NULL, NULL, NULL, 2, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-19 10:08:23', '2025-03-19 10:08:23'),
(395, NULL, NULL, 394, 1, 4, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-19 10:08:23', '2025-03-19 10:08:23'),
(398, 5, NULL, NULL, NULL, 2, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-19 10:08:43', '2025-03-19 10:08:43'),
(399, NULL, NULL, 398, 1, 4, '2025-03-14 02:00:00', NULL, NULL, NULL, '2025-03-19 10:08:43', '2025-03-19 10:08:43'),
(400, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:09:32', '2025-03-19 10:09:32'),
(401, NULL, NULL, 400, 1, 12, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:09:32', '2025-03-19 10:09:32'),
(402, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:09:38', '2025-03-19 10:09:38'),
(403, NULL, NULL, 402, 1, 12, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:09:38', '2025-03-19 10:09:38'),
(406, NULL, NULL, 206, 1, 5, '2025-03-19 10:09:00', NULL, 0, 0, '2025-03-19 10:09:49', '2025-03-19 10:09:49'),
(407, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:09:49', '2025-03-19 10:09:49'),
(408, NULL, NULL, 407, 1, 5, '2025-03-19 10:09:00', NULL, NULL, NULL, '2025-03-19 10:09:49', '2025-03-19 10:09:49'),
(410, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:10:00', '2025-03-19 10:10:00'),
(415, NULL, NULL, 206, 1, 5, '2025-03-19 10:10:00', NULL, 0, 0, '2025-03-19 10:11:07', '2025-03-19 10:11:07'),
(416, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:11:07', '2025-03-19 10:11:07'),
(417, NULL, NULL, 416, 1, 5, '2025-03-19 10:10:00', NULL, NULL, NULL, '2025-03-19 10:11:07', '2025-03-19 10:11:07'),
(420, NULL, NULL, 206, 1, 9, '2025-03-19 10:11:00', NULL, 0, 0, '2025-03-19 10:11:33', '2025-03-19 10:11:33'),
(421, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:11:33', '2025-03-19 10:11:33'),
(422, NULL, NULL, 421, 1, 9, '2025-03-19 10:11:00', NULL, NULL, NULL, '2025-03-19 10:11:33', '2025-03-19 10:11:33'),
(425, NULL, NULL, 206, 1, 1, '2025-03-19 10:12:00', NULL, NULL, NULL, '2025-03-19 10:12:20', '2025-03-19 10:12:20'),
(426, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:12:20', '2025-03-19 10:12:20'),
(427, NULL, NULL, 426, 1, 1, '2025-03-19 10:12:00', NULL, NULL, NULL, '2025-03-19 10:12:20', '2025-03-19 10:12:20'),
(428, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:12:34', '2025-03-19 10:12:34'),
(429, NULL, NULL, 428, 1, 1, '2025-03-19 10:12:00', NULL, NULL, NULL, '2025-03-19 10:12:34', '2025-03-19 10:12:34'),
(430, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:12:41', '2025-03-19 10:12:41'),
(431, NULL, NULL, 430, 1, 12, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:12:41', '2025-03-19 10:12:41'),
(432, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:12:54', '2025-03-19 10:12:54'),
(433, NULL, NULL, 432, 1, 12, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:12:54', '2025-03-19 10:12:54'),
(436, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:13:07', '2025-03-19 10:13:07'),
(437, NULL, NULL, 436, 1, 1, '2025-03-19 10:12:00', NULL, NULL, NULL, '2025-03-19 10:13:07', '2025-03-19 10:13:07'),
(440, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:13:35', '2025-03-19 10:13:35'),
(443, NULL, NULL, 206, 1, 4, '2025-03-19 10:13:00', NULL, 0, 0, '2025-03-19 10:13:56', '2025-03-19 10:13:56'),
(444, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:13:56', '2025-03-19 10:13:56'),
(445, NULL, NULL, 444, 1, 4, '2025-03-19 10:13:00', NULL, NULL, NULL, '2025-03-19 10:13:56', '2025-03-19 10:13:56'),
(449, NULL, NULL, 425, 6, 3, '2025-03-19 10:14:00', NULL, NULL, NULL, '2025-03-19 10:15:25', '2025-03-19 10:15:25'),
(450, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:15:25', '2025-03-19 10:15:25'),
(451, NULL, NULL, 450, 1, 1, '2025-03-19 10:12:00', NULL, NULL, NULL, '2025-03-19 10:15:25', '2025-03-19 10:15:25'),
(452, NULL, NULL, 451, 6, 3, '2025-03-19 10:14:00', NULL, NULL, NULL, '2025-03-19 10:15:25', '2025-03-19 10:15:25'),
(457, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:18:29', '2025-03-19 10:18:29'),
(458, NULL, NULL, 457, 1, 1, '2025-03-19 10:12:00', NULL, NULL, NULL, '2025-03-19 10:18:29', '2025-03-19 10:18:29'),
(459, NULL, NULL, 458, 6, 3, '2025-03-19 10:14:00', NULL, NULL, NULL, '2025-03-19 10:18:29', '2025-03-19 10:18:29'),
(464, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:22:41', '2025-03-19 10:22:41'),
(465, NULL, NULL, 464, 1, 1, '2025-03-19 10:12:00', NULL, NULL, NULL, '2025-03-19 10:22:41', '2025-03-19 10:22:41'),
(466, NULL, NULL, 465, 6, 3, '2025-03-19 10:14:00', NULL, NULL, NULL, '2025-03-19 10:22:41', '2025-03-19 10:22:41'),
(471, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:25:51', '2025-03-19 10:25:51'),
(472, NULL, NULL, 471, 1, 1, '2025-03-19 10:12:00', NULL, NULL, NULL, '2025-03-19 10:25:51', '2025-03-19 10:25:51'),
(473, NULL, NULL, 472, 6, 3, '2025-03-19 10:14:00', NULL, NULL, NULL, '2025-03-19 10:25:51', '2025-03-19 10:25:51'),
(477, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:26:20', '2025-03-19 10:26:20'),
(478, NULL, NULL, 477, 1, 1, '2025-03-19 10:12:00', NULL, NULL, NULL, '2025-03-19 10:26:20', '2025-03-19 10:26:20'),
(479, NULL, NULL, 478, 6, 3, '2025-03-19 10:14:00', NULL, NULL, NULL, '2025-03-19 10:26:20', '2025-03-19 10:26:20'),
(482, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-19 10:27:32', '2025-03-19 10:27:32'),
(483, NULL, NULL, 482, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-19 10:27:32', '2025-03-19 10:27:32'),
(486, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-19 10:28:07', '2025-03-19 10:28:07'),
(487, NULL, NULL, 486, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-19 10:28:08', '2025-03-19 10:28:08'),
(489, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-19 10:28:26', '2025-03-19 10:28:26'),
(491, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-19 10:28:34', '2025-03-19 10:28:34'),
(492, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-19 10:28:40', '2025-03-19 10:28:40'),
(493, NULL, NULL, 492, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-19 10:28:40', '2025-03-19 10:28:40'),
(494, NULL, NULL, 493, 6, 3, '2025-03-14 00:12:00', NULL, NULL, NULL, '2025-03-19 10:28:40', '2025-03-19 10:28:40'),
(495, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-19 10:28:40', '2025-03-19 10:28:40'),
(496, NULL, NULL, 495, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-19 10:28:40', '2025-03-19 10:28:40'),
(497, NULL, NULL, 496, 6, 3, '2025-03-14 00:12:00', NULL, NULL, NULL, '2025-03-19 10:28:40', '2025-03-19 10:28:40'),
(499, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-19 10:28:49', '2025-03-19 10:28:49'),
(502, 4, NULL, NULL, NULL, 2, '2025-03-14 01:06:00', NULL, NULL, NULL, '2025-03-19 10:29:02', '2025-03-19 10:29:02'),
(503, NULL, NULL, 502, 1, 1, '2025-03-19 10:12:00', NULL, NULL, NULL, '2025-03-19 10:29:02', '2025-03-19 10:29:02'),
(507, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-19 10:29:54', '2025-03-19 10:29:54'),
(508, NULL, NULL, 507, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-19 10:29:54', '2025-03-19 10:29:54'),
(509, NULL, NULL, 508, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-19 10:29:54', '2025-03-19 10:29:54'),
(512, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-19 10:30:30', '2025-03-19 10:30:30'),
(513, NULL, NULL, 512, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-19 10:30:30', '2025-03-19 10:30:30'),
(517, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-19 10:30:59', '2025-03-19 10:30:59'),
(518, NULL, NULL, 517, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-19 10:30:59', '2025-03-19 10:30:59'),
(519, NULL, NULL, 518, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-19 10:30:59', '2025-03-19 10:30:59'),
(523, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-19 10:31:49', '2025-03-19 10:31:49'),
(524, NULL, NULL, 523, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-19 10:31:49', '2025-03-19 10:31:49'),
(525, NULL, NULL, 524, 9, 6, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-19 10:31:49', '2025-03-19 10:31:49'),
(528, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-19 10:31:59', '2025-03-19 10:31:59'),
(529, NULL, NULL, 528, 1, 9, '2025-03-13 23:19:00', NULL, NULL, NULL, '2025-03-19 10:31:59', '2025-03-19 10:31:59'),
(531, 2, NULL, NULL, NULL, 2, '2025-03-13 23:20:00', NULL, NULL, NULL, '2025-03-19 10:32:14', '2025-03-19 10:32:14'),
(532, 11, NULL, NULL, NULL, 16, '2025-03-19 10:33:00', NULL, NULL, NULL, '2025-03-19 10:33:57', '2025-03-19 10:33:57'),
(533, 11, NULL, NULL, NULL, 16, '2025-03-19 10:33:00', NULL, NULL, NULL, '2025-03-19 10:33:57', '2025-03-19 10:33:57'),
(536, 10, NULL, NULL, NULL, 2, '2025-03-14 21:59:00', NULL, NULL, NULL, '2025-03-19 10:36:30', '2025-03-19 10:36:30'),
(537, NULL, NULL, 536, 1, 4, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-19 10:36:30', '2025-03-19 10:36:30'),
(540, 10, NULL, NULL, NULL, 2, '2025-03-14 21:59:00', NULL, NULL, NULL, '2025-03-19 10:37:37', '2025-03-19 10:37:37'),
(541, NULL, NULL, 540, 1, 4, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-19 10:37:37', '2025-03-19 10:37:37'),
(542, 12, NULL, NULL, NULL, 2, '2025-03-14 21:59:00', NULL, NULL, NULL, '2025-03-19 10:37:58', '2025-03-19 10:37:58'),
(543, NULL, NULL, 542, 1, 4, '2025-03-14 22:25:00', NULL, NULL, NULL, '2025-03-19 10:37:58', '2025-03-19 10:37:58'),
(546, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-19 10:40:34', '2025-03-19 10:40:34'),
(547, NULL, NULL, 546, 1, 1, '2025-03-13 20:58:00', NULL, NULL, NULL, '2025-03-19 10:40:34', '2025-03-19 10:40:34'),
(550, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-19 10:40:57', '2025-03-19 10:40:57'),
(551, NULL, NULL, 550, 1, 1, '2025-03-13 20:58:00', NULL, NULL, NULL, '2025-03-19 10:40:57', '2025-03-19 10:40:57'),
(554, 1, NULL, NULL, NULL, 2, '2025-03-13 20:45:00', NULL, NULL, NULL, '2025-03-19 10:41:28', '2025-03-19 10:41:28'),
(555, NULL, NULL, 554, 1, 1, '2025-03-13 20:58:00', NULL, NULL, NULL, '2025-03-19 10:41:28', '2025-03-19 10:41:28'),
(558, 3, NULL, NULL, NULL, 2, '2025-03-13 23:59:00', NULL, NULL, NULL, '2025-03-26 12:57:20', '2025-03-26 12:57:20'),
(559, NULL, NULL, 558, 1, 11, '2025-03-13 23:58:00', NULL, NULL, NULL, '2025-03-26 12:57:20', '2025-03-26 12:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `entries_authors`
--

CREATE TABLE `entries_authors` (
  `entryId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `sortOrder` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entries_authors`
--

INSERT INTO `entries_authors` (`entryId`, `authorId`, `sortOrder`) VALUES
(73, 1, 1),
(77, 1, 1),
(95, 1, 1),
(105, 1, 1),
(114, 1, 1),
(121, 1, 1),
(130, 1, 1),
(139, 1, 1),
(148, 1, 1),
(157, 1, 1),
(159, 1, 1),
(161, 1, 1),
(163, 1, 1),
(165, 1, 1),
(167, 1, 1),
(182, 1, 1),
(185, 1, 1),
(188, 1, 1),
(191, 1, 1),
(194, 1, 1),
(197, 1, 1),
(200, 1, 1),
(204, 1, 1),
(217, 1, 1),
(220, 1, 1),
(225, 1, 1),
(229, 1, 1),
(231, 1, 1),
(283, 1, 1),
(292, 1, 1),
(301, 1, 1),
(310, 1, 1),
(319, 1, 1),
(328, 1, 1),
(354, 1, 1),
(355, 1, 1),
(356, 1, 1),
(357, 1, 1),
(358, 1, 1),
(359, 1, 1),
(482, 1, 1),
(486, 1, 1),
(489, 1, 1),
(491, 1, 1),
(492, 1, 1),
(495, 1, 1),
(499, 1, 1),
(507, 1, 1),
(512, 1, 1),
(517, 1, 1),
(523, 1, 1),
(528, 1, 1),
(531, 1, 1),
(532, 1, 1),
(533, 1, 1),
(558, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT 1,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text DEFAULT NULL,
  `titleFormat` varchar(255) DEFAULT NULL,
  `showSlugField` tinyint(1) DEFAULT 1,
  `slugTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `slugTranslationKeyFormat` text DEFAULT NULL,
  `showStatusField` tinyint(1) DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `fieldLayoutId`, `name`, `handle`, `icon`, `color`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `showSlugField`, `slugTranslationMethod`, `slugTranslationKeyFormat`, `showStatusField`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 'Hero banner', 'heroBanner', 'mask', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 20:45:31', '2025-03-13 21:34:46', NULL, 'ce2a73cc-de2a-4098-9441-0917ccd65347'),
(2, 2, 'Page sections', 'pageSections', 'shapes', 'green', 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 20:45:35', '2025-03-13 23:23:56', NULL, '05bbd45d-9ddc-4134-8cba-c41b83c3c23a'),
(3, 4, 'Images', 'images', 'image-polaroid', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 21:38:29', '2025-03-13 21:38:29', NULL, '561f5795-edf2-4057-bf0c-1eede2181d9d'),
(4, 5, 'Image with text box', 'imageWithTextBox', 'symbols', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 22:14:24', '2025-03-13 22:14:24', NULL, '90ac9b7f-48f2-40ad-a8e5-792e63613177'),
(5, 6, 'Full text box', 'fullTextBox', 'text', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 22:55:59', '2025-03-13 22:55:59', NULL, '4b047672-6c3e-4824-86ab-284a4e4a32bb'),
(6, 7, 'Editor text', 'editorText', 'font', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 23:09:03', '2025-03-13 23:09:03', NULL, '12d93a50-135a-4e0d-9cef-dadc1209904d'),
(7, 8, 'Quote', 'quote', 'quote-left', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 23:10:44', '2025-03-13 23:10:44', NULL, '9bca6d4c-e414-4fbe-bc05-53d304d14380'),
(8, 9, 'Highlighted text', 'highlightedText', 'text', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 23:11:48', '2025-03-13 23:12:00', NULL, '507d02cd-6d18-491c-a393-b0ed79f2f535'),
(9, 10, 'Inspiration content', 'inspirationContent', 'align-justify', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 23:12:12', '2025-03-13 23:13:01', NULL, '76b2d286-67bc-4afc-8e4c-26e40162c6b3'),
(10, 11, 'List of inspirations', 'listOfInspirations', 'lightbulb', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 23:14:18', '2025-03-13 23:14:29', NULL, '2d541ab1-b48d-4113-92a8-96a1bf6325be'),
(11, 12, 'Event content', 'eventContent', 'calendar-days', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-13 23:56:46', '2025-03-13 23:57:07', NULL, '53b78b55-85a7-4079-9f0f-c7a0382407c2'),
(12, 13, 'List of events', 'listOfEvents', 'calendar', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-14 00:00:56', '2025-03-14 00:00:56', NULL, '1436d17a-03bf-4c1e-9d30-47367529b37a'),
(13, 14, 'Newsletter signup form', 'newsletterSignupForm', 'envelope', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-14 06:05:36', '2025-03-14 06:05:49', NULL, '33ab6968-ee12-4c8f-b599-997ea876527e'),
(14, 15, 'Social links', 'socialLinks', 'facebook', 'yellow', 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-14 06:29:29', '2025-03-14 06:29:29', NULL, '9b561524-debf-4118-bfa9-327310774658'),
(15, 16, 'Event subscriber', 'eventSubscriber', 'user-graduate', 'rose', 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, '096e6a68-e847-45c2-bfd7-9bb92635af8f'),
(16, 17, 'Newsletter subscriber', 'newsletterSubscriber', 'address-book', 'violet', 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, '6674e180-5fc8-4991-ba5e-add100694daa');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`config`)),
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `config`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"4f74fb80-803e-48dc-84ef-34fa8eba5b63\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"890dcf84-fa63-4443-aee1-0058523e7590\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T21:34:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"0d5328b7-613b-4d02-8231-c694170b38b4\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"47ee7517-59aa-4532-a3c5-028ed325670d\", \"required\": false, \"dateAdded\": \"2025-03-13T21:34:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"ae02b7a9-733b-48d9-84b7-4821587c306e\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"6c899c98-0e37-4bb5-97df-5b1d53b40281\", \"required\": false, \"dateAdded\": \"2025-03-13T21:34:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"cd0615a0-2dd5-48b4-92c8-795928103feb\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"73a7162d-b07e-405d-be78-96423e43ca89\", \"required\": false, \"dateAdded\": \"2025-03-13T21:34:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 20:45:31', '2025-03-13 21:34:46', NULL, '7f568ebf-1ef9-4b3b-844a-689670135fe0'),
(2, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"58b8e12c-45b4-46d7-9cf6-b215ce153d76\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"d9f21ca0-3d73-4f3f-adfa-2e6812cd0b38\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": false, \"dateAdded\": \"2025-03-13T23:23:56+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"438d9de0-7df1-456e-9382-f2c3bd5ea318\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"8cd1b229-e07c-46b6-8480-780c5542757d\", \"required\": false, \"dateAdded\": \"2025-03-13T20:45:35+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}, {\"uid\": \"81803d82-9b39-42fa-854e-6da314786d08\", \"name\": \"SEO\", \"elements\": [{\"tip\": null, \"uid\": \"3da30d7e-ecb1-4689-b813-cf5e010cefbc\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"928002ce-655c-46bc-97ca-19c15ed7aebc\", \"required\": false, \"dateAdded\": \"2025-03-13T21:31:06+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": [\"slug\"]}', '2025-03-13 20:45:35', '2025-03-13 23:24:13', NULL, 'cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42'),
(3, 'craft\\elements\\Asset', '{\"tabs\": [{\"uid\": \"0357924e-066a-4206-94f9-ea29c8ae3bdb\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"114d34b5-8768-4ff8-a935-49f3c0d21043\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"dateAdded\": \"2025-03-13T21:34:46+00:00\", \"inputType\": null, \"requirable\": false, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 21:36:18', '2025-03-13 21:36:18', NULL, 'aa95dd58-04ed-4253-9136-c34cb9ae57a0'),
(4, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"bd9ee002-eca9-413e-87a7-f58eeb6627d5\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"825511a6-afc4-457c-a1bd-c476ab5d2e56\", \"required\": false, \"dateAdded\": \"2025-03-13T21:38:29+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"033d0eef-2816-4a44-8a29-a76c412495ef\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Mobile image\", \"width\": 100, \"handle\": \"mobileImage\", \"warning\": null, \"fieldUid\": \"825511a6-afc4-457c-a1bd-c476ab5d2e56\", \"required\": false, \"dateAdded\": \"2025-03-13T21:38:29+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 21:38:29', '2025-03-13 21:38:29', NULL, '0b4e4a7a-2297-4676-ac76-6ad31121928c'),
(5, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"8240279b-b7ad-4d85-8069-d6481e79c2d2\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"61d1d186-dff7-4cbd-b901-256e496e4472\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T22:14:24+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"96585f50-ea7c-47c9-839b-5d02b5dfd8ab\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"73a7162d-b07e-405d-be78-96423e43ca89\", \"required\": false, \"dateAdded\": \"2025-03-13T22:14:24+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"3c629f1c-8092-42de-9b94-f4da68628746\", \"required\": false, \"dateAdded\": \"2025-03-13T22:43:49+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Fixate image on top\", \"width\": 100, \"handle\": \"fixateImageOnTop\", \"warning\": null, \"fieldUid\": \"75968ea4-3e1b-46d8-86ef-1757f6d6cee8\", \"required\": false, \"dateAdded\": \"2025-03-14T02:05:49+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Box heading\", \"width\": 100, \"handle\": \"boxHeading\", \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T22:14:24+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"47ee7517-59aa-4532-a3c5-028ed325670d\", \"required\": false, \"dateAdded\": \"2025-03-13T22:14:24+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"fc438791-5351-42a6-8fe8-98bf5b31a0d8\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"6c899c98-0e37-4bb5-97df-5b1d53b40281\", \"required\": false, \"dateAdded\": \"2025-03-13T22:14:24+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 22:14:24', '2025-03-14 02:05:49', NULL, 'cb085e79-589c-4f6b-8349-919e2ed16faa'),
(6, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"d51d78a2-27e3-447a-bce7-b0de5ec24cde\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"032378b9-225f-4ca4-b509-5bf5b952dde2\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T22:55:59+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"66af9589-1520-49a8-982e-6ddca319d308\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"47ee7517-59aa-4532-a3c5-028ed325670d\", \"required\": false, \"dateAdded\": \"2025-03-13T22:55:59+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 22:55:59', '2025-03-13 22:55:59', NULL, '959b935a-8f4d-4952-b4de-2f17a66bc19a'),
(7, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"8221577f-7719-4534-be25-63e51d8149a3\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"e2add2df-ac40-4a63-a77c-b33d2743035a\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"47ee7517-59aa-4532-a3c5-028ed325670d\", \"required\": false, \"dateAdded\": \"2025-03-13T23:09:03+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 23:09:03', '2025-03-13 23:09:03', NULL, '3358fff9-588a-4e8b-a172-5c1f2d41943f'),
(8, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"25275ba3-a9af-4e1d-a02c-705558e9ee19\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"fc6a7918-0089-4f87-b9a9-929c37825f1f\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Quote\", \"width\": 100, \"handle\": \"quote\", \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T23:10:44+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"77c6a620-da05-48cc-9749-6236ddb2d19a\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Author name\", \"width\": 100, \"handle\": \"authorName\", \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T23:11:07+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 23:10:44', '2025-03-13 23:11:07', NULL, '70f17126-7f9b-408c-8a62-1afab6f42ce4'),
(9, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"c7152a66-a2c6-4ff5-8f82-6dfa01b49d27\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"eb6ed327-1f26-4e4d-bc30-faef48980609\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Highlighted text\", \"width\": 100, \"handle\": \"highlightedText\", \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T23:11:48+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 23:11:48', '2025-03-13 23:11:48', NULL, '8fb87cd9-3787-4c07-af07-c95afa2bc5c5'),
(10, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"bcd32204-a4ee-4c66-8b98-08d3b831fc86\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"b3e478af-1cfb-4477-be12-08cf53448ceb\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Sub title\", \"width\": 100, \"handle\": \"subTitle\", \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T23:13:01+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"a9c23139-d423-42de-99b0-8e565396df95\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"825511a6-afc4-457c-a1bd-c476ab5d2e56\", \"required\": false, \"dateAdded\": \"2025-03-13T23:12:12+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"60bc6b13-68c7-4f42-9864-503cfa5a0254\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"485d659b-8c7c-48bc-ad83-f6f8b8b19b95\", \"required\": false, \"dateAdded\": \"2025-03-13T23:12:12+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 23:12:12', '2025-03-13 23:24:36', NULL, '5a4f7fcf-7401-4a8d-9c27-50abe95e3e96'),
(11, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"a385d89e-b9fd-4265-b15d-90ec7d3c1dec\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"717dab41-8e05-4a26-a3fd-ff31e317c4ca\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T23:14:18+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"91fb1656-a4c7-4c31-acce-60bc64eb0f8f\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"62d1b830-f495-4a67-a4b3-e4fb92cc74a8\", \"required\": false, \"dateAdded\": \"2025-03-13T23:14:18+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"4b9b779b-97a7-4623-9b1f-5126efd2ddd7\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"List all inspirations\", \"width\": 100, \"handle\": \"listAllInspirations\", \"warning\": null, \"fieldUid\": \"75968ea4-3e1b-46d8-86ef-1757f6d6cee8\", \"required\": false, \"dateAdded\": \"2025-03-14T06:01:30+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 23:14:18', '2025-03-14 06:01:30', NULL, 'cea0afb8-15fb-401f-a1e0-a61128847225'),
(12, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"b41167de-18f7-402d-bd71-8a052527debe\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"a1b6f67c-4169-4740-8a7f-0553380bc446\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"73a7162d-b07e-405d-be78-96423e43ca89\", \"required\": false, \"dateAdded\": \"2025-03-13T23:56:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"49e3e828-6795-49c5-a82b-3360a0b3664d\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Short description\", \"width\": 100, \"handle\": \"shortDescription\", \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-14T00:12:01+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"eca88837-37fe-4366-9c04-3b186a4046b3\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"47ee7517-59aa-4532-a3c5-028ed325670d\", \"required\": false, \"dateAdded\": \"2025-03-13T23:56:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Requirements\", \"width\": 100, \"handle\": \"requirements\", \"warning\": null, \"fieldUid\": \"47ee7517-59aa-4532-a3c5-028ed325670d\", \"required\": false, \"dateAdded\": \"2025-03-13T23:56:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"50fd66aa-669e-462b-bfb3-183483ca7f53\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Date from\", \"width\": 100, \"handle\": \"dateFrom\", \"warning\": null, \"fieldUid\": \"84aee63b-202b-4dea-8359-9ae287d08930\", \"required\": false, \"dateAdded\": \"2025-03-13T23:56:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"3699bcd1-9095-4053-972b-820dc7fdd9fb\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Date to\", \"width\": 100, \"handle\": \"dateTo\", \"warning\": null, \"fieldUid\": \"84aee63b-202b-4dea-8359-9ae287d08930\", \"required\": false, \"dateAdded\": \"2025-03-13T23:56:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"ee77a16c-2740-4126-b391-d88c9f4ff060\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Date extra notes\", \"width\": 100, \"handle\": \"dateExtraNotes\", \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-14T01:19:19+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"c6ea490e-ad7d-401f-b119-1404e146ac0e\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Registrations open until\", \"width\": 100, \"handle\": \"registrationsOpenUntil\", \"warning\": null, \"fieldUid\": \"84aee63b-202b-4dea-8359-9ae287d08930\", \"required\": false, \"dateAdded\": \"2025-03-13T23:56:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"daaa5d42-b397-4793-8d5e-25ada16deeb1\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Price\", \"width\": 100, \"handle\": \"price\", \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T23:56:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"6cbe1a93-eb4b-48f0-b47c-fc314d657898\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Event is free\", \"width\": 100, \"handle\": \"eventIsFree\", \"warning\": null, \"fieldUid\": \"75968ea4-3e1b-46d8-86ef-1757f6d6cee8\", \"required\": false, \"dateAdded\": \"2025-03-14T01:22:09+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"59560f2d-bf2a-4a28-9c90-837018f49967\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Training place\", \"width\": 100, \"handle\": \"trainingPlace\", \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-13T23:56:46+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Event author\", \"width\": 100, \"handle\": \"eventAuthor\", \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-14T00:12:01+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-13 23:56:46', '2025-03-14 01:22:09', NULL, '1a8a47db-426d-4bda-803a-f1c753fc16ba'),
(13, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"768cd33c-37a6-46fa-8cd4-52f5b2dea284\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"9eab9ff9-f871-4714-b7e2-14dc6eecd027\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"5fd391e7-5e9b-4552-9423-16102d2210cc\", \"required\": false, \"dateAdded\": \"2025-03-14T00:00:56+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"687d963e-1dd2-4530-a0e4-ffaaef2ef1c1\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"1cc501c6-7465-41d2-a392-9870a0a59e48\", \"required\": false, \"dateAdded\": \"2025-03-14T00:00:56+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"4721bfa5-e6ff-4509-8955-aa45e5a79c16\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"List all events\", \"width\": 100, \"handle\": \"listAllEvents\", \"warning\": null, \"fieldUid\": \"75968ea4-3e1b-46d8-86ef-1757f6d6cee8\", \"required\": false, \"dateAdded\": \"2025-03-14T01:07:49+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-14 00:00:56', '2025-03-14 01:07:49', NULL, 'aae596b2-f196-4c54-b550-cd43ad9b48d9'),
(14, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"3fc7abfa-4a4b-427d-8ba3-25a029861e20\", \"name\": \"Content\", \"elements\": [], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-14 06:05:36', '2025-03-14 06:05:36', NULL, 'bcf52a17-65a1-4623-a02b-de0051b5bb2f'),
(15, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"9ea6218a-9c71-41dd-bc88-b7d0c2c8d20a\", \"name\": \"Content\", \"elements\": [], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2025-03-14 06:29:29', '2025-03-14 06:29:29', NULL, 'c093b7d2-66b2-475d-8f8f-1531108d2226'),
(16, 'craft\\elements\\Entry', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"5fc7d926-1ad3-422b-8c09-dcb321fce467\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-03-14T20:40:04+00:00\",\"uid\":\"5a2cfd5b-dc59-4ceb-826c-989c0d83e57c\",\"userCondition\":null,\"elementCondition\":null,\"required\":true},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-03-14T20:43:33+00:00\",\"uid\":\"62aaba0d-fa6b-4032-a7bc-1fcb1777acf5\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":\"phone\",\"label\":\"Phone\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-03-14T20:43:33+00:00\",\"uid\":\"ca837b9f-5f15-4202-b474-6f297b977fba\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"dd5d4e62-a4a2-4de9-b269-49a029773e71\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":\"profession\",\"label\":\"Profession\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-03-14T20:43:33+00:00\",\"uid\":\"87f0883e-9b95-4d59-820c-d7a0f24d57fe\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"dd5d4e62-a4a2-4de9-b269-49a029773e71\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":\"eventTitle\",\"label\":\"Event title\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-03-14T20:43:33+00:00\",\"uid\":\"8a49bd86-d11c-4dfc-81b0-148d170b3c67\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"dd5d4e62-a4a2-4de9-b269-49a029773e71\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-03-14T20:43:33+00:00\",\"uid\":\"990ea861-c0b6-4698-8790-2991f70f896c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"bd66d959-e1e6-497b-a56f-8afd1dec9545\"}]}],\"cardView\":[]}', '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, 'f092f4a0-3ced-4d71-9323-664273979127'),
(17, 'craft\\elements\\Entry', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"c2a6df15-a1ff-4757-9f70-496d39d83cc3\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-03-14T20:20:22+00:00\",\"uid\":\"de5f7b1c-ea93-4cb4-b8bf-061b9dffa35f\",\"userCondition\":null,\"elementCondition\":null,\"required\":true},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-03-14T20:22:02+00:00\",\"uid\":\"adecda5a-83e0-4975-bf15-ee3f40b1de1c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a\"}]}],\"cardView\":[]}', '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, '9fbe3131-da66-4947-866c-97ebe61834b0');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT 1,
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Building blocks', 'buildingBlocks', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":null,\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[{\"uid\":\"ce2a73cc-de2a-4098-9441-0917ccd65347\"},{\"uid\":\"90ac9b7f-48f2-40ad-a8e5-792e63613177\"},{\"uid\":\"4b047672-6c3e-4824-86ab-284a4e4a32bb\"},{\"uid\":\"76b2d286-67bc-4afc-8e4c-26e40162c6b3\"},{\"uid\":\"2d541ab1-b48d-4113-92a8-96a1bf6325be\"},{\"uid\":\"53b78b55-85a7-4079-9f0f-c7a0382407c2\"},{\"uid\":\"1436d17a-03bf-4c1e-9d30-47367529b37a\"},{\"uid\":\"33ab6968-ee12-4c8f-b599-997ea876527e\"},{\"uid\":\"9b561524-debf-4118-bfa9-327310774658\"}],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":false,\"viewMode\":\"blocks\"}', '2025-03-13 20:45:32', '2025-03-14 06:32:36', NULL, '8cd1b229-e07c-46b6-8480-780c5542757d'),
(2, 'SEO Settings', 'seoSettings', 'global', NULL, NULL, 0, 'none', NULL, 'ether\\seo\\fields\\SeoField', '{\"description\":\"\",\"hideSocial\":\"\",\"robots\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"socialImage\":null,\"suffixAsPrefix\":null,\"title\":[{\"key\":\"1\",\"locked\":\"0\",\"template\":\"{title}\"},{\"key\":\"2\",\"locked\":\"1\",\"template\":\" - {{ siteName }}\"}],\"titleSuffix\":null}', '2025-03-13 21:30:55', '2025-03-13 21:30:55', NULL, '928002ce-655c-46bc-97ca-19c15ed7aebc'),
(3, 'Heading', 'heading', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"initialRows\":2,\"multiline\":true,\"placeholder\":null,\"uiMode\":\"normal\"}', '2025-03-13 21:31:54', '2025-03-13 21:32:12', NULL, '5fd391e7-5e9b-4552-9423-16102d2210cc'),
(4, 'Description', 'description', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\ckeditor\\Field', '{\"availableTransforms\":\"\",\"availableVolumes\":\"\",\"ckeConfig\":\"58e5b824-8237-4fc4-87f3-570c3969b621\",\"createButtonLabel\":null,\"defaultTransform\":null,\"purifierConfig\":null,\"purifyHtml\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"showWordCount\":false,\"sourceEditingGroups\":[\"__ADMINS__\"],\"wordLimit\":null}', '2025-03-13 21:32:57', '2025-03-14 21:59:01', NULL, '47ee7517-59aa-4532-a3c5-028ed325670d'),
(5, 'Actions', 'actions', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Table', '{\"addRowLabel\":\"Add a row\",\"columns\":{\"col1\":{\"heading\":\"Link URL\",\"handle\":\"linkUrl\",\"width\":\"\",\"type\":\"singleline\"},\"col2\":{\"heading\":\"Link text\",\"handle\":\"linkText\",\"width\":\"\",\"type\":\"singleline\"},\"col3\":{\"heading\":\"Style\",\"handle\":\"style\",\"width\":\"\",\"type\":\"select\",\"options\":[{\"label\":\"Primary (purple)\",\"value\":\"primary\",\"default\":true},{\"label\":\"Normal link\",\"value\":\"normalLink\",\"default\":false}]}},\"defaults\":[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"primary\"}],\"maxRows\":null,\"minRows\":null,\"staticRows\":false}', '2025-03-13 21:34:05', '2025-03-13 22:19:54', NULL, '6c899c98-0e37-4bb5-97df-5b1d53b40281'),
(6, 'Images', 'images', 'global', NULL, NULL, 0, 'site', NULL, 'verbb\\supertable\\fields\\SuperTableField', '{\"contentTable\":\"\",\"createButtonLabel\":null,\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[{\"uid\":\"561f5795-edf2-4057-bf0c-1eede2181d9d\"}],\"includeTableView\":false,\"maxEntries\":1,\"minEntries\":null,\"pageSize\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":false,\"viewMode\":\"blocks\"}', '2025-03-13 21:34:44', '2025-03-13 21:39:27', NULL, '73a7162d-b07e-405d-be78-96423e43ca89'),
(7, 'Image', 'image', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:41ea246c-1f5f-4cd8-86a8-790cb170ac60\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":true,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:41ea246c-1f5f-4cd8-86a8-790cb170ac60\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2025-03-13 21:38:13', '2025-03-13 21:38:13', NULL, '825511a6-afc4-457c-a1bd-c476ab5d2e56'),
(8, 'Image side', 'imageSide', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Dropdown', '{\"customOptions\":false,\"options\":[{\"label\":\"Left side\",\"value\":\"left\",\"default\":\"1\"},{\"label\":\"Right side\",\"value\":\"right\",\"default\":\"\"}]}', '2025-03-13 22:43:42', '2025-03-13 22:43:42', NULL, '3c629f1c-8092-42de-9b94-f4da68628746'),
(9, 'Editor contents', 'editorContents', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":null,\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[{\"uid\":\"12d93a50-135a-4e0d-9cef-dadc1209904d\"},{\"uid\":\"9bca6d4c-e414-4fbe-bc05-53d304d14380\"},{\"uid\":\"507d02cd-6d18-491c-a393-b0ed79f2f535\"}],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":false,\"viewMode\":\"blocks\"}', '2025-03-13 23:12:06', '2025-03-13 23:20:48', NULL, '485d659b-8c7c-48bc-ad83-f6f8b8b19b95'),
(10, 'Inspirations', 'inspirations', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"branchLimit\":null,\"maintainHierarchy\":false,\"maxRelations\":3,\"minRelations\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"sources\":[\"section:bcba9386-e72b-4149-9cad-8d09a8d484f2\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2025-03-13 23:14:05', '2025-03-13 23:14:05', NULL, '62d1b830-f495-4a67-a4b3-e4fb92cc74a8'),
(11, 'Date', 'date', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Date', '{\"max\":null,\"min\":null,\"minuteIncrement\":30,\"showDate\":true,\"showTime\":false,\"showTimeZone\":false}', '2025-03-13 23:55:20', '2025-03-13 23:55:20', NULL, '84aee63b-202b-4dea-8359-9ae287d08930'),
(12, 'Events', 'events', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"branchLimit\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"sources\":[\"section:22e0a339-a048-4547-94a6-c3d53a4a6523\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2025-03-14 00:00:50', '2025-03-14 00:00:50', NULL, '1cc501c6-7465-41d2-a392-9870a0a59e48'),
(13, 'Lightswitch', 'lightswitch', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Lightswitch', '{\"default\":false,\"offLabel\":null,\"onLabel\":null}', '2025-03-14 01:07:30', '2025-03-14 01:07:30', NULL, '75968ea4-3e1b-46d8-86ef-1757f6d6cee8'),
(14, 'Event', 'event', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"branchLimit\":null,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"sources\":[\"section:22e0a339-a048-4547-94a6-c3d53a4a6523\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, 'bd66d959-e1e6-497b-a56f-8afd1dec9545'),
(15, 'Email', 'email', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Email', '{\"placeholder\":null}', '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, '41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a'),
(16, 'Simple text', 'simpleText', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, 'dd5d4e62-a4a2-4de9-b269-49a029773e71');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `sortOrder` smallint(5) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`scope`)),
  `isPublic` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagetransformindex`
--

CREATE TABLE `imagetransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `transformer` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `transformString` varchar(255) NOT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT 0,
  `inProgress` tinyint(1) NOT NULL DEFAULT 0,
  `error` tinyint(1) NOT NULL DEFAULT 0,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imagetransformindex`
--

INSERT INTO `imagetransformindex` (`id`, `assetId`, `transformer`, `filename`, `format`, `transformString`, `fileExists`, `inProgress`, `error`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 12, 'craft\\imagetransforms\\ImageTransformer', 'lotus-flower-big.png', NULL, '_heroBannerDesktop', 1, 0, 0, '2025-03-26 11:01:24', '2025-03-26 11:01:24', '2025-03-26 11:01:24', '202f68d7-0c9e-4696-adbf-9af241eda1b8'),
(2, 32, 'craft\\imagetransforms\\ImageTransformer', 'valentina_karima_pic_2025-03-19-100716_zead.png', NULL, '_imageWithTextBox', 1, 0, 0, '2025-03-26 11:01:24', '2025-03-26 11:01:24', '2025-03-26 11:01:24', '3b0c3347-2be3-4d5d-b909-34d2e5be3190'),
(3, 46, 'craft\\imagetransforms\\ImageTransformer', 'Embodied-Psychodynamic-Resonance-EPR.png', NULL, '_imageWithTextBox', 1, 0, 0, '2025-03-26 11:01:24', '2025-03-26 11:01:24', '2025-03-26 11:01:24', '729ac7da-b466-4fcc-bcfd-6e1a21648417'),
(4, 75, 'craft\\imagetransforms\\ImageTransformer', 'inspiration-image.jpg', 'jpg', '_inspirationThumbnail', 1, 0, 0, '2025-03-26 11:01:24', '2025-03-26 11:01:24', '2025-03-26 11:01:24', 'cd89f8f6-67b6-4662-8861-426e877a4faf'),
(5, 179, 'craft\\imagetransforms\\ImageTransformer', 'MettaWorkshops_4.png', NULL, '_eventCover', 1, 0, 0, '2025-03-26 11:01:24', '2025-03-26 11:01:24', '2025-03-26 11:01:24', 'e443fdd7-2338-480d-98f6-d91ff480ca05'),
(6, 180, 'craft\\imagetransforms\\ImageTransformer', 'MettaWorkshops_4-mobile.png', NULL, '_eventCoverMobile', 1, 0, 0, '2025-03-26 11:01:24', '2025-03-26 11:01:24', '2025-03-26 11:01:24', '403a47d7-4113-45e0-a088-db0ab2bca48d'),
(7, 463, 'craft\\imagetransforms\\ImageTransformer', 'event_pic_2025-03-19-102235_uobs.png', NULL, '_heroBannerDesktop', 1, 0, 0, '2025-03-26 12:55:59', '2025-03-26 12:55:59', '2025-03-26 12:55:59', 'ed796fbf-5d7e-48ba-9290-0ad990674e4a'),
(8, 179, 'craft\\imagetransforms\\ImageTransformer', 'MettaWorkshops_4.png', NULL, '_120x87_crop_center-center_none', 1, 0, 0, '2025-03-26 12:56:06', '2025-03-26 12:56:06', '2025-03-26 12:56:06', 'a5947572-e976-4102-a252-8df093767569'),
(9, 179, 'craft\\imagetransforms\\ImageTransformer', 'MettaWorkshops_4.png', NULL, '_240x174_crop_center-center_none', 1, 0, 0, '2025-03-26 12:56:06', '2025-03-26 12:56:06', '2025-03-26 12:56:06', 'ca725e2f-bb50-47c5-ad14-4f80577bbe6a'),
(10, 180, 'craft\\imagetransforms\\ImageTransformer', 'MettaWorkshops_4-mobile.png', NULL, '_120x90_crop_center-center_none', 1, 0, 0, '2025-03-26 12:56:07', '2025-03-26 12:56:07', '2025-03-26 12:56:07', 'f1362c1b-606f-4122-96f5-2c12a185691b'),
(11, 180, 'craft\\imagetransforms\\ImageTransformer', 'MettaWorkshops_4-mobile.png', NULL, '_240x181_crop_center-center_none', 1, 0, 0, '2025-03-26 12:56:07', '2025-03-26 12:56:07', '2025-03-26 12:56:07', '12b5dcab-84ec-4ddc-8f8e-2d63e0a2c845'),
(12, 363, 'craft\\imagetransforms\\ImageTransformer', 'images_2025-03-14-222520_wovp.png', NULL, '_imageWithTextBox', 1, 0, 0, '2025-03-27 08:15:30', '2025-03-27 08:15:30', '2025-03-27 08:15:30', 'f51807ff-65f4-4340-a184-9938da1ec5df'),
(13, 381, 'craft\\imagetransforms\\ImageTransformer', 'valentina_karima_pic.png', NULL, '_imageWithTextBox', 1, 0, 0, '2025-03-27 21:22:35', '2025-03-27 21:22:35', '2025-03-27 21:22:35', 'a2ed8e3f-df4c-4951-a773-3c8233ddda4a'),
(14, 267, 'craft\\imagetransforms\\ImageTransformer', 'Embodied-Psychodynamic-Resonance-Session.png', NULL, '_imageWithTextBox', 1, 0, 0, '2025-03-27 21:22:57', '2025-03-27 21:22:57', '2025-03-27 21:22:57', '870d3cae-c13b-4872-82f9-7e52ffab373f'),
(15, 75, 'craft\\imagetransforms\\ImageTransformer', 'inspiration-image.png', NULL, '_inspirationCover', 1, 0, 0, '2025-03-27 21:23:23', '2025-03-27 21:23:23', '2025-03-27 21:23:23', '1fbca295-2b0f-4dc6-954b-9b5a51f33d99');

-- --------------------------------------------------------

--
-- Table structure for table `imagetransforms`
--

CREATE TABLE `imagetransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop','letterbox') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `fill` varchar(11) DEFAULT NULL,
  `upscale` tinyint(1) NOT NULL DEFAULT 1,
  `parameterChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imagetransforms`
--

INSERT INTO `imagetransforms` (`id`, `name`, `handle`, `mode`, `position`, `width`, `height`, `format`, `quality`, `interlace`, `fill`, `upscale`, `parameterChangeTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Hero banner - desktop', 'heroBannerDesktop', 'crop', 'center-center', 2200, NULL, NULL, 100, 'none', NULL, 0, '2025-03-13 21:57:14', '2025-03-13 21:56:56', '2025-03-13 21:57:14', '96144109-10c3-4a0d-a37f-8209502abc15'),
(2, 'Hero banner - mobile', 'heroBannerMobile', 'crop', 'center-center', 1200, NULL, NULL, 100, 'none', NULL, 0, '2025-03-13 21:57:10', '2025-03-13 21:57:10', '2025-03-13 21:57:10', '1fb86694-1ef7-4a8a-8874-cad4b0e765fe'),
(3, 'Image with text box', 'imageWithTextBox', 'crop', 'center-center', 940, NULL, NULL, 80, 'none', NULL, 0, '2025-03-13 22:16:59', '2025-03-13 22:16:59', '2025-03-13 22:16:59', 'f4b8921b-b141-469c-a6c0-bbe3c26cc73f'),
(4, 'Inspiration thumbnail', 'inspirationThumbnail', 'crop', 'center-center', 800, NULL, 'jpg', 80, 'none', NULL, 0, '2025-03-13 23:17:48', '2025-03-13 23:17:48', '2025-03-13 23:17:48', 'f105584b-2750-4689-af12-84d981c927c5'),
(5, 'Inspiration cover', 'inspirationCover', 'crop', 'center-center', 2100, NULL, NULL, 100, 'none', NULL, 0, '2025-03-13 23:20:30', '2025-03-13 23:20:30', '2025-03-13 23:20:30', 'f577f701-0c33-41a7-be8e-657503de63b8'),
(6, 'Event cover', 'eventCover', 'crop', 'center-center', 1800, NULL, NULL, 100, 'none', NULL, 0, '2025-03-14 00:13:59', '2025-03-14 00:13:31', '2025-03-14 00:13:59', 'b15f3341-8d99-4fb7-855b-fafd6719f3f6'),
(7, 'Event cover - mobile', 'eventCoverMobile', 'crop', 'center-center', 750, NULL, NULL, 100, 'none', NULL, 0, '2025-03-14 00:13:55', '2025-03-14 00:13:55', '2025-03-14 00:13:55', 'b2d2cb87-2384-4d1b-af7b-a63fa20a32d3');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '5.6.11', '5.6.0.2', 0, 'xwfoscfkbywa', '3@zqfkzdpiwl', '2025-03-13 20:24:07', '2025-03-14 21:59:37', '5bae964b-3c22-4de0-94a0-c962c08dfa31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'ef37b6a1-7fa9-42d6-93a7-1bd463c06d12'),
(2, 'craft', 'm221101_115859_create_entries_authors_table', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '4806c683-c653-49c4-81ce-300d77cc16f7'),
(3, 'craft', 'm221107_112121_add_max_authors_to_sections', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '5712bf39-cd6b-4508-ad54-fcfa37baf2ed'),
(4, 'craft', 'm221205_082005_translatable_asset_alt_text', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'ccdf974d-858b-42c4-94a9-4aeedc5b7c4a'),
(5, 'craft', 'm230314_110309_add_authenticator_table', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'b3c8b99b-93d6-45e4-b993-5b42bda646f1'),
(6, 'craft', 'm230314_111234_add_webauthn_table', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'b3d7d316-a318-434f-985c-d649994d7ec4'),
(7, 'craft', 'm230503_120303_add_recoverycodes_table', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '23a9faab-8592-47c3-ae7a-e4985f5d731d'),
(8, 'craft', 'm230511_000000_field_layout_configs', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '8d6debaf-7d1e-4685-bb38-1675608b8e97'),
(9, 'craft', 'm230511_215903_content_refactor', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '668719cb-21a2-4626-b86e-106ba7c577f5'),
(10, 'craft', 'm230524_000000_add_entry_type_show_slug_field', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '62242e11-4afc-4833-ade1-8b373d9fc290'),
(11, 'craft', 'm230524_000001_entry_type_icons', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '6fadb0cc-b18e-4ff2-abe0-aff429e048e3'),
(12, 'craft', 'm230524_000002_entry_type_colors', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '0302c370-bb69-4ec9-b7a3-482b9e9d05ce'),
(13, 'craft', 'm230524_220029_global_entry_types', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '08e30ef6-b745-4fdb-9ddc-16fc9e051802'),
(14, 'craft', 'm230531_123004_add_entry_type_show_status_field', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '9686bc9b-b13b-4c2c-bbec-4a1e63ef61dc'),
(15, 'craft', 'm230607_102049_add_entrytype_slug_translation_columns', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'a6f5e830-5383-44f9-a347-c4058a875492'),
(16, 'craft', 'm230616_173810_kill_field_groups', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '208a35f9-90fa-474a-8099-4f5604073b84'),
(17, 'craft', 'm230616_183820_remove_field_name_limit', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '90123d85-ce8e-4d16-b281-e0c17490f943'),
(18, 'craft', 'm230617_070415_entrify_matrix_blocks', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '91a1d194-820c-45af-97fc-a39160cc422b'),
(19, 'craft', 'm230710_162700_element_activity', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '4eabf02e-3abb-4e66-a1d8-2ba87823525f'),
(20, 'craft', 'm230820_162023_fix_cache_id_type', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'd2b05d2c-959e-4890-b765-2a9b879d265e'),
(21, 'craft', 'm230826_094050_fix_session_id_type', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '0ce7b54b-65c9-46ae-a03d-6c1d67e759b5'),
(22, 'craft', 'm230904_190356_address_fields', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '4c62725c-f72e-4f80-aebe-95741603a583'),
(23, 'craft', 'm230928_144045_add_subpath_to_volumes', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'e139ff45-d169-4a9d-a2ac-11e6be4464e4'),
(24, 'craft', 'm231013_185640_changedfields_amend_primary_key', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'f0663f84-b829-4944-865b-48af2b0f0908'),
(25, 'craft', 'm231213_030600_element_bulk_ops', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2402457d-2707-4cee-8591-2690cea5f07a'),
(26, 'craft', 'm240129_150719_sites_language_amend_length', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'a6744956-196d-4a12-b032-4efdb844bdfe'),
(27, 'craft', 'm240206_035135_convert_json_columns', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '0ec3d1f6-74b1-43f3-aa14-a39af903e072'),
(28, 'craft', 'm240207_182452_address_line_3', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'bbe025a0-82aa-4600-afef-fb1c882651b1'),
(29, 'craft', 'm240302_212719_solo_preview_targets', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '76273fd8-0e5d-49d1-be7d-a9a53d1cecb0'),
(30, 'craft', 'm240619_091352_add_auth_2fa_timestamp', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '55238f3b-82da-47d4-b07d-ec7c5172be0b'),
(31, 'craft', 'm240723_214330_drop_bulkop_fk', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'd4759589-6f73-4d86-b476-f18683b96a25'),
(32, 'craft', 'm240731_053543_soft_delete_fields', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '14ea06e0-aa2c-4990-856e-be4ea96e0ebe'),
(33, 'craft', 'm240805_154041_sso_identities', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '6748cad6-8cbc-4b63-ac5f-906ebaaeb211'),
(34, 'craft', 'm240926_202248_track_entries_deleted_with_section', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '8817dd9d-d9c6-4e64-b4cf-9c58d1bf43a9'),
(35, 'craft', 'm241120_190905_user_affiliated_sites', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '9508ebc5-f786-46a2-830a-af3a4dba45bf'),
(36, 'craft', 'm241125_122914_add_viewUsers_permission', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', 'a3a2a697-0d99-4551-a816-ec5c31deafbe'),
(37, 'craft', 'm250119_135304_entry_type_overrides', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-03-13 20:24:07', '826a343e-13fb-44c3-91c9-2e0e0d1d5aca'),
(38, 'plugin:ckeditor', 'Install', '2025-03-13 21:29:58', '2025-03-13 21:29:58', '2025-03-13 21:29:58', '23da2990-2e28-4ded-a6e9-6dd303bea9e1'),
(39, 'plugin:ckeditor', 'm230408_163704_v3_upgrade', '2025-03-13 21:29:58', '2025-03-13 21:29:58', '2025-03-13 21:29:58', '10b3b8db-da21-4e89-9b6a-54051af80eca'),
(40, 'plugin:seo', 'Install', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '3ba2c34f-ded2-40fa-a7a3-2863ac6ffd39'),
(41, 'plugin:seo', 'm180906_152947_add_site_id_to_redirects', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '528b1e53-f992-48e7-a979-14a0fa7c2fb0'),
(42, 'plugin:seo', 'm190114_152300_upgrade_to_new_data_format', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '77778d3c-8d32-4667-88ff-1ca726305746'),
(43, 'plugin:seo', 'm200518_110721_add_order_to_redirects', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '927310c4-a287-4cf9-94c6-14ce4da5c3ab'),
(44, 'plugin:seo', 'm201207_124200_add_product_types_to_sitemap', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '32c3894b-d1f1-4cb7-84df-6c565083c3c7'),
(45, 'plugin:super-table', 'm240115_000000_craft5', '2025-03-13 21:36:40', '2025-03-13 21:36:40', '2025-03-13 21:36:40', '84bfe869-70a2-4f5f-8750-f04abacb0ade');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'mix', 'v1.7.2', '1.0.0', '2025-03-13 20:42:49', '2025-03-13 20:42:49', '2025-03-13 20:42:49', '9dfc5ed1-5001-4920-9550-d606fced0a2e'),
(2, 'ckeditor', '4.6.0', '3.0.0.0', '2025-03-13 21:29:58', '2025-03-13 21:29:58', '2025-03-13 21:29:58', '45e2132f-aaeb-4aa5-9239-7dd98b152bfb'),
(3, 'seo', '5.0.0', '3.2.0', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '2025-03-13 21:30:18', '1f921bc1-87c6-4a29-8924-3de4c8481d97'),
(4, 'super-table', '4.0.4', '4.0.0', '2025-03-13 21:36:40', '2025-03-13 21:36:40', '2025-03-13 21:36:40', '0dfd431f-8fc1-4a3a-8adf-25465802f178');

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.headingLevels.0', '1'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.headingLevels.1', '2'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.headingLevels.2', '3'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.headingLevels.3', '4'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.headingLevels.4', '5'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.headingLevels.5', '6'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.name', '\"Simple\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.options.alignment.options.0', '\"left\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.options.alignment.options.1', '\"right\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.0', '\"heading\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.1', '\"alignment\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.10', '\"indent\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.11', '\"|\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.12', '\"link\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.13', '\"insertImage\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.14', '\"mediaEmbed\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.15', '\"insertTable\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.16', '\"sourceEditing\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.2', '\"underline\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.3', '\"strikethrough\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.4', '\"bold\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.5', '\"italic\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.6', '\"|\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.7', '\"bulletedList\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.8', '\"numberedList\"'),
('ckeditor.configs.58e5b824-8237-4fc4-87f3-570c3969b621.toolbar.9', '\"outdent\"'),
('dateModified', '1741989577'),
('email.fromEmail', '\"poje.tilen@gmail.com\"'),
('email.fromName', '\"Karima Hočevar\"'),
('email.replyToEmail', 'null'),
('email.template', 'null'),
('email.transportSettings.command', '\"/usr/sbin/sendmail -t -i\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.color', '\"green\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.cardView.0', '\"slug\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elementCondition', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.class', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.dateAdded', '\"2025-03-13T23:23:56+00:00\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.disabled', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.id', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.inputType', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.instructions', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.label', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.max', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.min', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.name', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.orientation', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.readonly', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.required', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.size', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.step', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.tip', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.title', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.uid', '\"d9f21ca0-3d73-4f3f-adfa-2e6812cd0b38\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.warning', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.0.width', '100'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.dateAdded', '\"2025-03-13T20:45:35+00:00\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.fieldUid', '\"8cd1b229-e07c-46b6-8480-780c5542757d\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.handle', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.instructions', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.label', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.required', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.tip', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.uid', '\"438d9de0-7df1-456e-9382-f2c3bd5ea318\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.warning', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.elements.1.width', '100'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.name', '\"Content\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.uid', '\"58b8e12c-45b4-46d7-9cf6-b215ce153d76\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.0.userCondition', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elementCondition', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.dateAdded', '\"2025-03-13T21:31:06+00:00\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.elementCondition', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.fieldUid', '\"928002ce-655c-46bc-97ca-19c15ed7aebc\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.handle', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.includeInCards', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.instructions', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.label', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.providesThumbs', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.required', 'false'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.tip', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.uid', '\"3da30d7e-ecb1-4689-b813-cf5e010cefbc\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.userCondition', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.warning', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.elements.0.width', '100'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.name', '\"SEO\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.uid', '\"81803d82-9b39-42fa-854e-6da314786d08\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.fieldLayouts.cec1e7c9-1562-4d1c-aa77-dd5ae2d09d42.tabs.1.userCondition', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.handle', '\"pageSections\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.hasTitleField', 'true'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.icon', '\"shapes\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.name', '\"Page sections\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.showSlugField', 'true'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.showStatusField', 'true'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.slugTranslationKeyFormat', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.slugTranslationMethod', '\"site\"'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.titleFormat', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.titleTranslationKeyFormat', 'null'),
('entryTypes.05bbd45d-9ddc-4134-8cba-c41b83c3c23a.titleTranslationMethod', '\"site\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.color', '\"rose\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elementCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.class', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.dateAdded', '\"2025-03-14T20:40:04+00:00\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.disabled', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.id', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.inputType', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.instructions', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.label', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.max', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.min', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.name', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.orientation', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.readonly', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.required', 'true'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.size', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.step', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.tip', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.title', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.uid', '\"5a2cfd5b-dc59-4ceb-826c-989c0d83e57c\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.warning', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.0.width', '100'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.dateAdded', '\"2025-03-14T20:43:33+00:00\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.fieldUid', '\"41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.handle', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.instructions', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.label', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.required', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.tip', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.uid', '\"62aaba0d-fa6b-4032-a7bc-1fcb1777acf5\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.warning', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.1.width', '100'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.dateAdded', '\"2025-03-14T20:43:33+00:00\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.fieldUid', '\"dd5d4e62-a4a2-4de9-b269-49a029773e71\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.handle', '\"phone\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.instructions', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.label', '\"Phone\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.required', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.tip', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.uid', '\"ca837b9f-5f15-4202-b474-6f297b977fba\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.warning', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.2.width', '100'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.dateAdded', '\"2025-03-14T20:43:33+00:00\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.fieldUid', '\"dd5d4e62-a4a2-4de9-b269-49a029773e71\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.handle', '\"profession\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.includeInCards', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.instructions', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.label', '\"Profession\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.providesThumbs', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.required', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.tip', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.uid', '\"87f0883e-9b95-4d59-820c-d7a0f24d57fe\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.warning', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.3.width', '100'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.dateAdded', '\"2025-03-14T20:43:33+00:00\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.fieldUid', '\"dd5d4e62-a4a2-4de9-b269-49a029773e71\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.handle', '\"eventTitle\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.includeInCards', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.instructions', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.label', '\"Event title\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.providesThumbs', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.required', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.tip', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.uid', '\"8a49bd86-d11c-4dfc-81b0-148d170b3c67\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.warning', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.4.width', '100'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.dateAdded', '\"2025-03-14T20:43:33+00:00\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.elementCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.fieldUid', '\"bd66d959-e1e6-497b-a56f-8afd1dec9545\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.handle', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.includeInCards', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.instructions', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.label', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.providesThumbs', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.required', 'false'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.tip', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.uid', '\"990ea861-c0b6-4698-8790-2991f70f896c\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.userCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.warning', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.elements.5.width', '100'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.name', '\"Content\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.uid', '\"5fc7d926-1ad3-422b-8c09-dcb321fce467\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.fieldLayouts.f092f4a0-3ced-4d71-9323-664273979127.tabs.0.userCondition', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.handle', '\"eventSubscriber\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.hasTitleField', 'true'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.icon', '\"user-graduate\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.name', '\"Event subscriber\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.showSlugField', 'true'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.showStatusField', 'true'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.slugTranslationKeyFormat', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.slugTranslationMethod', '\"site\"'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.titleFormat', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.titleTranslationKeyFormat', 'null'),
('entryTypes.096e6a68-e847-45c2-bfd7-9bb92635af8f.titleTranslationMethod', '\"site\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.color', '\"yellow\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elementCondition', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.dateAdded', '\"2025-03-13T23:09:03+00:00\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.fieldUid', '\"47ee7517-59aa-4532-a3c5-028ed325670d\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.handle', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.instructions', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.label', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.required', 'false'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.tip', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.uid', '\"e2add2df-ac40-4a63-a77c-b33d2743035a\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.warning', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.elements.0.width', '100'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.name', '\"Content\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.uid', '\"8221577f-7719-4534-be25-63e51d8149a3\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.fieldLayouts.3358fff9-588a-4e8b-a172-5c1f2d41943f.tabs.0.userCondition', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.handle', '\"editorText\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.hasTitleField', 'false'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.icon', '\"font\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.name', '\"Editor text\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.showSlugField', 'true'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.showStatusField', 'true'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.slugTranslationKeyFormat', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.slugTranslationMethod', '\"site\"'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.titleFormat', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.titleTranslationKeyFormat', 'null'),
('entryTypes.12d93a50-135a-4e0d-9cef-dadc1209904d.titleTranslationMethod', '\"site\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.color', '\"yellow\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elementCondition', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.dateAdded', '\"2025-03-14T00:00:56+00:00\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.handle', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.instructions', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.label', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.required', 'false'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.tip', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.uid', '\"9eab9ff9-f871-4714-b7e2-14dc6eecd027\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.warning', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.0.width', '100'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.dateAdded', '\"2025-03-14T00:00:56+00:00\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.fieldUid', '\"1cc501c6-7465-41d2-a392-9870a0a59e48\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.handle', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.instructions', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.label', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.required', 'false'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.tip', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.uid', '\"687d963e-1dd2-4530-a0e4-ffaaef2ef1c1\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.warning', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.1.width', '100'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.dateAdded', '\"2025-03-14T01:07:49+00:00\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.fieldUid', '\"75968ea4-3e1b-46d8-86ef-1757f6d6cee8\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.handle', '\"listAllEvents\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.instructions', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.label', '\"List all events\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.required', 'false'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.tip', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.uid', '\"4721bfa5-e6ff-4509-8955-aa45e5a79c16\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.warning', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.elements.2.width', '100'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.name', '\"Content\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.uid', '\"768cd33c-37a6-46fa-8cd4-52f5b2dea284\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.fieldLayouts.aae596b2-f196-4c54-b550-cd43ad9b48d9.tabs.0.userCondition', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.handle', '\"listOfEvents\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.hasTitleField', 'false'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.icon', '\"calendar\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.name', '\"List of events\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.showSlugField', 'true'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.showStatusField', 'true'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.slugTranslationKeyFormat', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.slugTranslationMethod', '\"site\"'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.titleFormat', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.titleTranslationKeyFormat', 'null'),
('entryTypes.1436d17a-03bf-4c1e-9d30-47367529b37a.titleTranslationMethod', '\"site\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.color', '\"yellow\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elementCondition', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.dateAdded', '\"2025-03-13T23:14:18+00:00\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.handle', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.instructions', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.label', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.required', 'false'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.tip', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.uid', '\"717dab41-8e05-4a26-a3fd-ff31e317c4ca\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.warning', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.0.width', '100'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.dateAdded', '\"2025-03-13T23:14:18+00:00\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.fieldUid', '\"62d1b830-f495-4a67-a4b3-e4fb92cc74a8\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.handle', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.instructions', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.label', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.required', 'false'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.tip', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.uid', '\"91fb1656-a4c7-4c31-acce-60bc64eb0f8f\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.warning', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.1.width', '100'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.dateAdded', '\"2025-03-14T06:01:30+00:00\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.fieldUid', '\"75968ea4-3e1b-46d8-86ef-1757f6d6cee8\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.handle', '\"listAllInspirations\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.instructions', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.label', '\"List all inspirations\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.required', 'false'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.tip', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.uid', '\"4b9b779b-97a7-4623-9b1f-5126efd2ddd7\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.warning', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.elements.2.width', '100'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.name', '\"Content\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.uid', '\"a385d89e-b9fd-4265-b15d-90ec7d3c1dec\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.fieldLayouts.cea0afb8-15fb-401f-a1e0-a61128847225.tabs.0.userCondition', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.handle', '\"listOfInspirations\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.hasTitleField', 'false'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.icon', '\"lightbulb\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.name', '\"List of inspirations\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.showSlugField', 'true'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.showStatusField', 'true'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.slugTranslationKeyFormat', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.slugTranslationMethod', '\"site\"'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.titleFormat', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.titleTranslationKeyFormat', 'null'),
('entryTypes.2d541ab1-b48d-4113-92a8-96a1bf6325be.titleTranslationMethod', '\"site\"'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.color', '\"yellow\"'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.fieldLayouts.bcf52a17-65a1-4623-a02b-de0051b5bb2f.tabs.0.elementCondition', 'null'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.fieldLayouts.bcf52a17-65a1-4623-a02b-de0051b5bb2f.tabs.0.name', '\"Content\"'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.fieldLayouts.bcf52a17-65a1-4623-a02b-de0051b5bb2f.tabs.0.uid', '\"3fc7abfa-4a4b-427d-8ba3-25a029861e20\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.fieldLayouts.bcf52a17-65a1-4623-a02b-de0051b5bb2f.tabs.0.userCondition', 'null'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.handle', '\"newsletterSignupForm\"'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.hasTitleField', 'false'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.icon', '\"envelope\"'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.name', '\"Newsletter signup form\"'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.showSlugField', 'true'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.showStatusField', 'true'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.slugTranslationKeyFormat', 'null'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.slugTranslationMethod', '\"site\"'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.titleFormat', 'null'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.titleTranslationKeyFormat', 'null'),
('entryTypes.33ab6968-ee12-4c8f-b599-997ea876527e.titleTranslationMethod', '\"site\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.color', '\"yellow\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elementCondition', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.dateAdded', '\"2025-03-13T22:55:59+00:00\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.handle', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.instructions', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.label', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.required', 'false'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.tip', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.uid', '\"032378b9-225f-4ca4-b509-5bf5b952dde2\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.warning', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.0.width', '100'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.dateAdded', '\"2025-03-13T22:55:59+00:00\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.fieldUid', '\"47ee7517-59aa-4532-a3c5-028ed325670d\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.handle', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.instructions', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.label', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.required', 'false'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.tip', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.uid', '\"66af9589-1520-49a8-982e-6ddca319d308\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.warning', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.elements.1.width', '100'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.name', '\"Content\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.uid', '\"d51d78a2-27e3-447a-bce7-b0de5ec24cde\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.fieldLayouts.959b935a-8f4d-4952-b4de-2f17a66bc19a.tabs.0.userCondition', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.handle', '\"fullTextBox\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.hasTitleField', 'false'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.icon', '\"text\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.name', '\"Full text box\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.showSlugField', 'true'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.showStatusField', 'true'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.slugTranslationKeyFormat', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.slugTranslationMethod', '\"site\"'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.titleFormat', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.titleTranslationKeyFormat', 'null'),
('entryTypes.4b047672-6c3e-4824-86ab-284a4e4a32bb.titleTranslationMethod', '\"site\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.color', '\"yellow\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elementCondition', 'null'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.dateAdded', '\"2025-03-13T23:11:48+00:00\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.handle', '\"highlightedText\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.instructions', 'null'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.label', '\"Highlighted text\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.required', 'false'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.tip', 'null'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.uid', '\"eb6ed327-1f26-4e4d-bc30-faef48980609\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.warning', 'null'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.elements.0.width', '100'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.name', '\"Content\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.uid', '\"c7152a66-a2c6-4ff5-8f82-6dfa01b49d27\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.fieldLayouts.8fb87cd9-3787-4c07-af07-c95afa2bc5c5.tabs.0.userCondition', 'null'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.handle', '\"highlightedText\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.hasTitleField', 'false'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.icon', '\"text\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.name', '\"Highlighted text\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.showSlugField', 'true'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.showStatusField', 'true'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.slugTranslationKeyFormat', 'null'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.slugTranslationMethod', '\"site\"'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.titleFormat', 'null'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.titleTranslationKeyFormat', 'null'),
('entryTypes.507d02cd-6d18-491c-a393-b0ed79f2f535.titleTranslationMethod', '\"site\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.color', '\"yellow\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.dateAdded', '\"2025-03-13T23:56:46+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.fieldUid', '\"73a7162d-b07e-405d-be78-96423e43ca89\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.handle', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.label', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.uid', '\"a1b6f67c-4169-4740-8a7f-0553380bc446\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.0.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.dateAdded', '\"2025-03-14T00:12:01+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.handle', '\"shortDescription\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.label', '\"Short description\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.uid', '\"49e3e828-6795-49c5-a82b-3360a0b3664d\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.1.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.dateAdded', '\"2025-03-13T23:56:46+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.handle', '\"trainingPlace\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.label', '\"Training place\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.uid', '\"59560f2d-bf2a-4a28-9c90-837018f49967\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.10.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.dateAdded', '\"2025-03-14T00:12:01+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.handle', '\"eventAuthor\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.label', '\"Event author\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.uid', '\"0e41c5b3-e535-4aa7-a808-ad4cf9b22978\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.11.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.dateAdded', '\"2025-03-13T23:56:46+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.fieldUid', '\"47ee7517-59aa-4532-a3c5-028ed325670d\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.handle', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.label', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.uid', '\"eca88837-37fe-4366-9c04-3b186a4046b3\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.2.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.dateAdded', '\"2025-03-13T23:56:46+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.fieldUid', '\"47ee7517-59aa-4532-a3c5-028ed325670d\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.handle', '\"requirements\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.label', '\"Requirements\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.uid', '\"dffe5daa-5f43-4e4c-bde7-1f63fafb21af\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.3.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.dateAdded', '\"2025-03-13T23:56:46+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.fieldUid', '\"84aee63b-202b-4dea-8359-9ae287d08930\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.handle', '\"dateFrom\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.label', '\"Date from\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.uid', '\"50fd66aa-669e-462b-bfb3-183483ca7f53\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.4.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.dateAdded', '\"2025-03-13T23:56:46+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.fieldUid', '\"84aee63b-202b-4dea-8359-9ae287d08930\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.handle', '\"dateTo\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.label', '\"Date to\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.uid', '\"3699bcd1-9095-4053-972b-820dc7fdd9fb\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.5.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.dateAdded', '\"2025-03-14T01:19:19+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.handle', '\"dateExtraNotes\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.label', '\"Date extra notes\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.uid', '\"ee77a16c-2740-4126-b391-d88c9f4ff060\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.6.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.dateAdded', '\"2025-03-13T23:56:46+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.fieldUid', '\"84aee63b-202b-4dea-8359-9ae287d08930\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.handle', '\"registrationsOpenUntil\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.label', '\"Registrations open until\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.uid', '\"c6ea490e-ad7d-401f-b119-1404e146ac0e\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.7.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.dateAdded', '\"2025-03-13T23:56:46+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.handle', '\"price\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.label', '\"Price\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.uid', '\"daaa5d42-b397-4793-8d5e-25ada16deeb1\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.8.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.dateAdded', '\"2025-03-14T01:22:09+00:00\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.elementCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.fieldUid', '\"75968ea4-3e1b-46d8-86ef-1757f6d6cee8\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.handle', '\"eventIsFree\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.includeInCards', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.instructions', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.label', '\"Event is free\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.providesThumbs', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.required', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.tip', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.uid', '\"6cbe1a93-eb4b-48f0-b47c-fc314d657898\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.warning', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.elements.9.width', '100'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.name', '\"Content\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.uid', '\"b41167de-18f7-402d-bd71-8a052527debe\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.fieldLayouts.1a8a47db-426d-4bda-803a-f1c753fc16ba.tabs.0.userCondition', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.handle', '\"eventContent\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.hasTitleField', 'false'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.icon', '\"calendar-days\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.name', '\"Event content\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.showSlugField', 'true'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.showStatusField', 'true'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.slugTranslationKeyFormat', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.slugTranslationMethod', '\"site\"'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.titleFormat', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.titleTranslationKeyFormat', 'null'),
('entryTypes.53b78b55-85a7-4079-9f0f-c7a0382407c2.titleTranslationMethod', '\"site\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.color', '\"yellow\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elementCondition', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.dateAdded', '\"2025-03-13T21:38:29+00:00\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.fieldUid', '\"825511a6-afc4-457c-a1bd-c476ab5d2e56\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.handle', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.instructions', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.label', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.required', 'false'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.tip', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.uid', '\"08a88bb4-156c-4633-84f5-5cd9f5b24e0e\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.warning', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.0.width', '100'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.dateAdded', '\"2025-03-13T21:38:29+00:00\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.fieldUid', '\"825511a6-afc4-457c-a1bd-c476ab5d2e56\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.handle', '\"mobileImage\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.instructions', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.label', '\"Mobile image\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.required', 'false'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.tip', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.uid', '\"033d0eef-2816-4a44-8a29-a76c412495ef\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.warning', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.elements.1.width', '100'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.name', '\"Content\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.uid', '\"bd9ee002-eca9-413e-87a7-f58eeb6627d5\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.fieldLayouts.0b4e4a7a-2297-4676-ac76-6ad31121928c.tabs.0.userCondition', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.handle', '\"images\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.hasTitleField', 'false'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.icon', '\"image-polaroid\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.name', '\"Images\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.showSlugField', 'true'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.showStatusField', 'true'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.slugTranslationKeyFormat', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.slugTranslationMethod', '\"site\"'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.titleFormat', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.titleTranslationKeyFormat', 'null'),
('entryTypes.561f5795-edf2-4057-bf0c-1eede2181d9d.titleTranslationMethod', '\"site\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.color', '\"violet\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elementCondition', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.class', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.dateAdded', '\"2025-03-14T20:20:22+00:00\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.disabled', 'false'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.id', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.inputType', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.instructions', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.label', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.max', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.min', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.name', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.orientation', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.readonly', 'false'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.required', 'true'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.size', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.step', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.tip', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.title', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.uid', '\"de5f7b1c-ea93-4cb4-b8bf-061b9dffa35f\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.warning', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.0.width', '100'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.dateAdded', '\"2025-03-14T20:22:02+00:00\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.fieldUid', '\"41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.handle', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.instructions', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.label', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.providesThumbs', 'false');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.required', 'false'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.tip', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.uid', '\"adecda5a-83e0-4975-bf15-ee3f40b1de1c\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.warning', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.elements.1.width', '100'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.name', '\"Content\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.uid', '\"c2a6df15-a1ff-4757-9f70-496d39d83cc3\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.fieldLayouts.9fbe3131-da66-4947-866c-97ebe61834b0.tabs.0.userCondition', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.handle', '\"newsletterSubscriber\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.hasTitleField', 'true'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.icon', '\"address-book\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.name', '\"Newsletter subscriber\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.showSlugField', 'true'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.showStatusField', 'true'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.slugTranslationKeyFormat', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.slugTranslationMethod', '\"site\"'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.titleFormat', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.titleTranslationKeyFormat', 'null'),
('entryTypes.6674e180-5fc8-4991-ba5e-add100694daa.titleTranslationMethod', '\"site\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.color', '\"yellow\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elementCondition', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.dateAdded', '\"2025-03-13T23:13:01+00:00\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.handle', '\"subTitle\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.instructions', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.label', '\"Sub title\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.required', 'false'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.tip', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.uid', '\"b3e478af-1cfb-4477-be12-08cf53448ceb\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.warning', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.0.width', '100'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.dateAdded', '\"2025-03-13T23:12:12+00:00\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.fieldUid', '\"825511a6-afc4-457c-a1bd-c476ab5d2e56\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.handle', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.instructions', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.label', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.required', 'false'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.tip', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.uid', '\"a9c23139-d423-42de-99b0-8e565396df95\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.warning', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.1.width', '100'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.dateAdded', '\"2025-03-13T23:12:12+00:00\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.fieldUid', '\"485d659b-8c7c-48bc-ad83-f6f8b8b19b95\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.handle', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.instructions', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.label', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.required', 'false'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.tip', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.uid', '\"60bc6b13-68c7-4f42-9864-503cfa5a0254\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.warning', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.elements.2.width', '100'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.name', '\"Content\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.uid', '\"bcd32204-a4ee-4c66-8b98-08d3b831fc86\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.fieldLayouts.5a4f7fcf-7401-4a8d-9c27-50abe95e3e96.tabs.0.userCondition', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.handle', '\"inspirationContent\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.hasTitleField', 'false'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.icon', '\"align-justify\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.name', '\"Inspiration content\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.showSlugField', 'true'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.showStatusField', 'true'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.slugTranslationKeyFormat', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.slugTranslationMethod', '\"site\"'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.titleFormat', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.titleTranslationKeyFormat', 'null'),
('entryTypes.76b2d286-67bc-4afc-8e4c-26e40162c6b3.titleTranslationMethod', '\"site\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.color', '\"yellow\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elementCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.dateAdded', '\"2025-03-13T22:14:24+00:00\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.handle', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.instructions', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.label', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.required', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.tip', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.uid', '\"61d1d186-dff7-4cbd-b901-256e496e4472\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.warning', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.0.width', '100'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.dateAdded', '\"2025-03-13T22:14:24+00:00\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.fieldUid', '\"73a7162d-b07e-405d-be78-96423e43ca89\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.handle', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.instructions', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.label', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.required', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.tip', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.uid', '\"96585f50-ea7c-47c9-839b-5d02b5dfd8ab\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.warning', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.1.width', '100'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.dateAdded', '\"2025-03-13T22:43:49+00:00\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.fieldUid', '\"3c629f1c-8092-42de-9b94-f4da68628746\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.handle', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.instructions', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.label', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.required', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.tip', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.uid', '\"5b3cf7ba-6a30-467b-8e4d-220f4e2b9105\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.warning', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.2.width', '100'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.dateAdded', '\"2025-03-14T02:05:49+00:00\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.fieldUid', '\"75968ea4-3e1b-46d8-86ef-1757f6d6cee8\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.handle', '\"fixateImageOnTop\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.includeInCards', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.instructions', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.label', '\"Fixate image on top\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.providesThumbs', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.required', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.tip', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.uid', '\"329bb1a1-e734-46d1-8cb5-c3d843e6e98a\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.warning', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.3.width', '100'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.dateAdded', '\"2025-03-13T22:14:24+00:00\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.handle', '\"boxHeading\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.includeInCards', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.instructions', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.label', '\"Box heading\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.providesThumbs', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.required', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.tip', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.uid', '\"e5c63454-6cc2-464a-857b-f5eb1ee3d2b2\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.warning', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.4.width', '100'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.dateAdded', '\"2025-03-13T22:14:24+00:00\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.elementCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.fieldUid', '\"47ee7517-59aa-4532-a3c5-028ed325670d\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.handle', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.includeInCards', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.instructions', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.label', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.providesThumbs', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.required', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.tip', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.uid', '\"5f2d23e1-9a53-4f0f-8982-2bbfc0814ee8\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.userCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.warning', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.5.width', '100'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.dateAdded', '\"2025-03-13T22:14:24+00:00\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.elementCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.fieldUid', '\"6c899c98-0e37-4bb5-97df-5b1d53b40281\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.handle', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.includeInCards', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.instructions', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.label', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.providesThumbs', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.required', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.tip', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.uid', '\"fc438791-5351-42a6-8fe8-98bf5b31a0d8\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.userCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.warning', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.elements.6.width', '100'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.name', '\"Content\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.uid', '\"8240279b-b7ad-4d85-8069-d6481e79c2d2\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.fieldLayouts.cb085e79-589c-4f6b-8349-919e2ed16faa.tabs.0.userCondition', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.handle', '\"imageWithTextBox\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.hasTitleField', 'false'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.icon', '\"symbols\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.name', '\"Image with text box\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.showSlugField', 'true'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.showStatusField', 'true'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.slugTranslationKeyFormat', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.slugTranslationMethod', '\"site\"'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.titleFormat', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.titleTranslationKeyFormat', 'null'),
('entryTypes.90ac9b7f-48f2-40ad-a8e5-792e63613177.titleTranslationMethod', '\"site\"'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.color', '\"yellow\"'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.fieldLayouts.c093b7d2-66b2-475d-8f8f-1531108d2226.tabs.0.elementCondition', 'null'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.fieldLayouts.c093b7d2-66b2-475d-8f8f-1531108d2226.tabs.0.name', '\"Content\"'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.fieldLayouts.c093b7d2-66b2-475d-8f8f-1531108d2226.tabs.0.uid', '\"9ea6218a-9c71-41dd-bc88-b7d0c2c8d20a\"'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.fieldLayouts.c093b7d2-66b2-475d-8f8f-1531108d2226.tabs.0.userCondition', 'null'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.handle', '\"socialLinks\"'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.hasTitleField', 'false'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.icon', '\"facebook\"'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.name', '\"Social links\"'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.showSlugField', 'true'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.showStatusField', 'true'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.slugTranslationKeyFormat', 'null'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.slugTranslationMethod', '\"site\"'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.titleFormat', 'null'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.titleTranslationKeyFormat', 'null'),
('entryTypes.9b561524-debf-4118-bfa9-327310774658.titleTranslationMethod', '\"site\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.color', '\"yellow\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elementCondition', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.dateAdded', '\"2025-03-13T23:10:44+00:00\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.handle', '\"quote\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.instructions', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.label', '\"Quote\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.required', 'false'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.tip', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.uid', '\"fc6a7918-0089-4f87-b9a9-929c37825f1f\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.warning', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.0.width', '100'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.dateAdded', '\"2025-03-13T23:11:07+00:00\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.handle', '\"authorName\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.instructions', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.label', '\"Author name\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.required', 'false'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.tip', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.uid', '\"77c6a620-da05-48cc-9749-6236ddb2d19a\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.warning', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.elements.1.width', '100'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.name', '\"Content\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.uid', '\"25275ba3-a9af-4e1d-a02c-705558e9ee19\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.fieldLayouts.70f17126-7f9b-408c-8a62-1afab6f42ce4.tabs.0.userCondition', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.handle', '\"quote\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.hasTitleField', 'false'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.icon', '\"quote-left\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.name', '\"Quote\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.showSlugField', 'true'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.showStatusField', 'true'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.slugTranslationKeyFormat', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.slugTranslationMethod', '\"site\"'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.titleFormat', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.titleTranslationKeyFormat', 'null'),
('entryTypes.9bca6d4c-e414-4fbe-bc05-53d304d14380.titleTranslationMethod', '\"site\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.color', '\"yellow\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elementCondition', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.dateAdded', '\"2025-03-13T21:34:46+00:00\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.fieldUid', '\"5fd391e7-5e9b-4552-9423-16102d2210cc\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.handle', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.instructions', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.label', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.required', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.tip', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.uid', '\"890dcf84-fa63-4443-aee1-0058523e7590\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.warning', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.0.width', '100'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.dateAdded', '\"2025-03-13T21:34:46+00:00\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.fieldUid', '\"47ee7517-59aa-4532-a3c5-028ed325670d\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.handle', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.instructions', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.label', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.required', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.tip', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.uid', '\"0d5328b7-613b-4d02-8231-c694170b38b4\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.warning', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.1.width', '100'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.dateAdded', '\"2025-03-13T21:34:46+00:00\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.fieldUid', '\"6c899c98-0e37-4bb5-97df-5b1d53b40281\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.handle', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.instructions', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.label', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.required', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.tip', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.uid', '\"ae02b7a9-733b-48d9-84b7-4821587c306e\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.warning', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.2.width', '100'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.dateAdded', '\"2025-03-13T21:34:46+00:00\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.fieldUid', '\"73a7162d-b07e-405d-be78-96423e43ca89\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.handle', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.includeInCards', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.instructions', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.label', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.providesThumbs', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.required', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.tip', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.uid', '\"cd0615a0-2dd5-48b4-92c8-795928103feb\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.warning', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.elements.3.width', '100'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.name', '\"Content\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.uid', '\"4f74fb80-803e-48dc-84ef-34fa8eba5b63\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.fieldLayouts.7f568ebf-1ef9-4b3b-844a-689670135fe0.tabs.0.userCondition', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.handle', '\"heroBanner\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.hasTitleField', 'false'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.icon', '\"mask\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.name', '\"Hero banner\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.showSlugField', 'true'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.showStatusField', 'true'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.slugTranslationKeyFormat', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.slugTranslationMethod', '\"site\"'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.titleFormat', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.titleTranslationKeyFormat', 'null'),
('entryTypes.ce2a73cc-de2a-4098-9441-0917ccd65347.titleTranslationMethod', '\"site\"'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.columnSuffix', 'null'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.handle', '\"events\"'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.instructions', 'null'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.name', '\"Events\"'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.searchable', 'false'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.allowSelfRelations', 'false'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.branchLimit', 'null'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.maintainHierarchy', 'false'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.maxRelations', 'null'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.minRelations', 'null'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.selectionLabel', 'null'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.showCardsInGrid', 'false'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.showSiteMenu', 'false'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.sources.0', '\"section:22e0a339-a048-4547-94a6-c3d53a4a6523\"'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.targetSiteId', 'null'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.validateRelatedElements', 'false'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.settings.viewMode', '\"list\"'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.translationKeyFormat', 'null'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.translationMethod', '\"none\"'),
('fields.1cc501c6-7465-41d2-a392-9870a0a59e48.type', '\"craft\\\\fields\\\\Entries\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.columnSuffix', 'null'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.handle', '\"imageSide\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.instructions', 'null'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.name', '\"Image side\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.searchable', 'false'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.customOptions', 'false'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.0.__assoc__.0.0', '\"label\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.0.__assoc__.0.1', '\"Left side\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.0.__assoc__.1.0', '\"value\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.0.__assoc__.1.1', '\"left\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.0.__assoc__.2.0', '\"default\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.0.__assoc__.2.1', '\"1\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.1.__assoc__.0.0', '\"label\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.1.__assoc__.0.1', '\"Right side\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.1.__assoc__.1.0', '\"value\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.1.__assoc__.1.1', '\"right\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.1.__assoc__.2.0', '\"default\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.settings.options.1.__assoc__.2.1', '\"\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.translationKeyFormat', 'null'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.translationMethod', '\"none\"'),
('fields.3c629f1c-8092-42de-9b94-f4da68628746.type', '\"craft\\\\fields\\\\Dropdown\"'),
('fields.41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a.columnSuffix', 'null'),
('fields.41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a.handle', '\"email\"'),
('fields.41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a.instructions', 'null'),
('fields.41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a.name', '\"Email\"'),
('fields.41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a.searchable', 'false'),
('fields.41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a.settings.placeholder', 'null'),
('fields.41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a.translationKeyFormat', 'null'),
('fields.41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a.translationMethod', '\"none\"'),
('fields.41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a.type', '\"craft\\\\fields\\\\Email\"'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.columnSuffix', 'null'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.handle', '\"description\"'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.instructions', 'null'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.name', '\"Description\"'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.searchable', 'false'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.availableTransforms', '\"\"'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.availableVolumes', '\"\"'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.ckeConfig', '\"58e5b824-8237-4fc4-87f3-570c3969b621\"'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.createButtonLabel', 'null'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.defaultTransform', 'null'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.purifierConfig', 'null'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.purifyHtml', 'false'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.showUnpermittedFiles', 'false');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.showUnpermittedVolumes', 'false'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.showWordCount', 'false'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.sourceEditingGroups.0', '\"__ADMINS__\"'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.settings.wordLimit', 'null'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.translationKeyFormat', 'null'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.translationMethod', '\"none\"'),
('fields.47ee7517-59aa-4532-a3c5-028ed325670d.type', '\"craft\\\\ckeditor\\\\Field\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.columnSuffix', 'null'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.handle', '\"editorContents\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.instructions', 'null'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.name', '\"Editor contents\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.searchable', 'false'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.createButtonLabel', 'null'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.defaultIndexViewMode', '\"cards\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.entryTypes.0.__assoc__.0.0', '\"uid\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.entryTypes.0.__assoc__.0.1', '\"12d93a50-135a-4e0d-9cef-dadc1209904d\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.entryTypes.1.__assoc__.0.0', '\"uid\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.entryTypes.1.__assoc__.0.1', '\"9bca6d4c-e414-4fbe-bc05-53d304d14380\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.entryTypes.2.__assoc__.0.0', '\"uid\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.entryTypes.2.__assoc__.0.1', '\"507d02cd-6d18-491c-a393-b0ed79f2f535\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.includeTableView', 'false'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.maxEntries', 'null'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.minEntries', 'null'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.pageSize', 'null'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.propagationKeyFormat', 'null'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.propagationMethod', '\"all\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.showCardsInGrid', 'false'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.settings.viewMode', '\"blocks\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.translationKeyFormat', 'null'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.translationMethod', '\"site\"'),
('fields.485d659b-8c7c-48bc-ad83-f6f8b8b19b95.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.columnSuffix', 'null'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.handle', '\"heading\"'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.instructions', 'null'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.name', '\"Heading\"'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.searchable', 'false'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.settings.byteLimit', 'null'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.settings.charLimit', 'null'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.settings.code', 'false'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.settings.initialRows', '2'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.settings.multiline', 'true'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.settings.placeholder', 'null'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.settings.uiMode', '\"normal\"'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.translationKeyFormat', 'null'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.translationMethod', '\"none\"'),
('fields.5fd391e7-5e9b-4552-9423-16102d2210cc.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.columnSuffix', 'null'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.handle', '\"inspirations\"'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.instructions', 'null'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.name', '\"Inspirations\"'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.searchable', 'false'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.allowSelfRelations', 'false'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.branchLimit', 'null'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.maintainHierarchy', 'false'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.maxRelations', '3'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.minRelations', 'null'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.selectionLabel', 'null'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.showCardsInGrid', 'false'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.showSiteMenu', 'false'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.sources.0', '\"section:bcba9386-e72b-4149-9cad-8d09a8d484f2\"'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.targetSiteId', 'null'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.validateRelatedElements', 'false'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.settings.viewMode', '\"list\"'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.translationKeyFormat', 'null'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.translationMethod', '\"none\"'),
('fields.62d1b830-f495-4a67-a4b3-e4fb92cc74a8.type', '\"craft\\\\fields\\\\Entries\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.columnSuffix', 'null'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.handle', '\"actions\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.instructions', 'null'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.name', '\"Actions\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.searchable', 'false'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.addRowLabel', '\"Add a row\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.0.0', '\"col1\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.0.1.__assoc__.0.0', '\"heading\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.0.1.__assoc__.0.1', '\"Link URL\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.0.1.__assoc__.1.0', '\"handle\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.0.1.__assoc__.1.1', '\"linkUrl\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.0.1.__assoc__.2.0', '\"width\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.0.1.__assoc__.2.1', '\"\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.0.1.__assoc__.3.0', '\"type\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.0.1.__assoc__.3.1', '\"singleline\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.1.0', '\"col2\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.1.1.__assoc__.0.0', '\"heading\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.1.1.__assoc__.0.1', '\"Link text\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.1.1.__assoc__.1.0', '\"handle\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.1.1.__assoc__.1.1', '\"linkText\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.1.1.__assoc__.2.0', '\"width\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.1.1.__assoc__.2.1', '\"\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.1.1.__assoc__.3.0', '\"type\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.1.1.__assoc__.3.1', '\"singleline\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.0', '\"col3\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.0.0', '\"heading\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.0.1', '\"Style\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.1.0', '\"handle\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.1.1', '\"style\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.2.0', '\"width\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.2.1', '\"\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.3.0', '\"type\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.3.1', '\"select\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.0', '\"options\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.0.__assoc__.0.0', '\"label\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.0.__assoc__.0.1', '\"Primary (purple)\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.0.__assoc__.1.0', '\"value\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.0.__assoc__.1.1', '\"primary\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.0.__assoc__.2.0', '\"default\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.0.__assoc__.2.1', 'true'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.1.__assoc__.0.0', '\"label\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.1.__assoc__.0.1', '\"Normal link\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.1.__assoc__.1.0', '\"value\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.1.__assoc__.1.1', '\"normalLink\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.1.__assoc__.2.0', '\"default\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.columns.__assoc__.2.1.__assoc__.4.1.1.__assoc__.2.1', 'false'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.defaults.0.__assoc__.0.0', '\"col1\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.defaults.0.__assoc__.0.1', '\"\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.defaults.0.__assoc__.1.0', '\"col2\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.defaults.0.__assoc__.1.1', '\"\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.defaults.0.__assoc__.2.0', '\"col3\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.defaults.0.__assoc__.2.1', '\"primary\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.maxRows', 'null'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.minRows', 'null'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.settings.staticRows', 'false'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.translationKeyFormat', 'null'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.translationMethod', '\"none\"'),
('fields.6c899c98-0e37-4bb5-97df-5b1d53b40281.type', '\"craft\\\\fields\\\\Table\"'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.columnSuffix', 'null'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.handle', '\"images\"'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.instructions', 'null'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.name', '\"Images\"'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.searchable', 'false'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.contentTable', '\"\"'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.createButtonLabel', 'null'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.defaultIndexViewMode', '\"cards\"'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.entryTypes.0.__assoc__.0.0', '\"uid\"'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.entryTypes.0.__assoc__.0.1', '\"561f5795-edf2-4057-bf0c-1eede2181d9d\"'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.includeTableView', 'false'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.maxEntries', '1'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.minEntries', 'null'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.pageSize', 'null'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.propagationKeyFormat', 'null'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.propagationMethod', '\"all\"'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.showCardsInGrid', 'false'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.settings.viewMode', '\"blocks\"'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.translationKeyFormat', 'null'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.translationMethod', '\"site\"'),
('fields.73a7162d-b07e-405d-be78-96423e43ca89.type', '\"verbb\\\\supertable\\\\fields\\\\SuperTableField\"'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.columnSuffix', 'null'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.handle', '\"lightswitch\"'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.instructions', 'null'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.name', '\"Lightswitch\"'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.searchable', 'false'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.settings.default', 'false'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.settings.offLabel', 'null'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.settings.onLabel', 'null'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.translationKeyFormat', 'null'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.translationMethod', '\"none\"'),
('fields.75968ea4-3e1b-46d8-86ef-1757f6d6cee8.type', '\"craft\\\\fields\\\\Lightswitch\"'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.columnSuffix', 'null'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.handle', '\"image\"'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.instructions', 'null'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.name', '\"Image\"'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.searchable', 'false'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.allowedKinds.0', '\"image\"'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.allowSelfRelations', 'false'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.allowSubfolders', 'false'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.allowUploads', 'true'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.branchLimit', 'null'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.defaultUploadLocationSource', '\"volume:41ea246c-1f5f-4cd8-86a8-790cb170ac60\"'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.defaultUploadLocationSubpath', 'null'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.maintainHierarchy', 'false'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.maxRelations', '1'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.minRelations', 'null'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.previewMode', '\"full\"'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.restrictedLocationSource', '\"volume:41ea246c-1f5f-4cd8-86a8-790cb170ac60\"'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.restrictedLocationSubpath', 'null'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.restrictFiles', 'true'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.restrictLocation', 'true'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.selectionLabel', 'null'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.showCardsInGrid', 'false'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.showSiteMenu', 'false'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.showUnpermittedFiles', 'false'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.showUnpermittedVolumes', 'false'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.sources', '\"*\"'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.targetSiteId', 'null'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.validateRelatedElements', 'false'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.settings.viewMode', '\"large\"'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.translationKeyFormat', 'null'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.translationMethod', '\"none\"'),
('fields.825511a6-afc4-457c-a1bd-c476ab5d2e56.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.columnSuffix', 'null'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.handle', '\"date\"'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.instructions', 'null'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.name', '\"Date\"'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.searchable', 'false'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.settings.max', 'null'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.settings.min', 'null'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.settings.minuteIncrement', '30'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.settings.showDate', 'true'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.settings.showTime', 'false'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.settings.showTimeZone', 'false'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.translationKeyFormat', 'null'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.translationMethod', '\"none\"'),
('fields.84aee63b-202b-4dea-8359-9ae287d08930.type', '\"craft\\\\fields\\\\Date\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.columnSuffix', 'null'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.handle', '\"buildingBlocks\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.instructions', 'null'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.name', '\"Building blocks\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.searchable', 'false'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.createButtonLabel', 'null'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.defaultIndexViewMode', '\"cards\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.0.__assoc__.0.0', '\"uid\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.0.__assoc__.0.1', '\"ce2a73cc-de2a-4098-9441-0917ccd65347\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.1.__assoc__.0.0', '\"uid\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.1.__assoc__.0.1', '\"90ac9b7f-48f2-40ad-a8e5-792e63613177\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.2.__assoc__.0.0', '\"uid\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.2.__assoc__.0.1', '\"4b047672-6c3e-4824-86ab-284a4e4a32bb\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.3.__assoc__.0.0', '\"uid\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.3.__assoc__.0.1', '\"76b2d286-67bc-4afc-8e4c-26e40162c6b3\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.4.__assoc__.0.0', '\"uid\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.4.__assoc__.0.1', '\"2d541ab1-b48d-4113-92a8-96a1bf6325be\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.5.__assoc__.0.0', '\"uid\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.5.__assoc__.0.1', '\"53b78b55-85a7-4079-9f0f-c7a0382407c2\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.6.__assoc__.0.0', '\"uid\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.6.__assoc__.0.1', '\"1436d17a-03bf-4c1e-9d30-47367529b37a\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.7.__assoc__.0.0', '\"uid\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.7.__assoc__.0.1', '\"33ab6968-ee12-4c8f-b599-997ea876527e\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.8.__assoc__.0.0', '\"uid\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.entryTypes.8.__assoc__.0.1', '\"9b561524-debf-4118-bfa9-327310774658\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.includeTableView', 'false'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.maxEntries', 'null'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.minEntries', 'null'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.pageSize', 'null'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.propagationKeyFormat', 'null'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.propagationMethod', '\"all\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.showCardsInGrid', 'false'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.settings.viewMode', '\"blocks\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.translationKeyFormat', 'null'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.translationMethod', '\"site\"'),
('fields.8cd1b229-e07c-46b6-8480-780c5542757d.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.columnSuffix', 'null'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.handle', '\"seoSettings\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.instructions', 'null'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.name', '\"SEO Settings\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.searchable', 'false'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.description', '\"\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.hideSocial', '\"\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.robots.0', '\"\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.robots.1', '\"\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.robots.2', '\"\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.robots.3', '\"\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.robots.4', '\"\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.robots.5', '\"\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.socialImage', 'null'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.suffixAsPrefix', 'null'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.0.__assoc__.0.0', '\"key\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.0.__assoc__.0.1', '\"1\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.0.__assoc__.1.0', '\"locked\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.0.__assoc__.1.1', '\"0\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.0.__assoc__.2.0', '\"template\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.0.__assoc__.2.1', '\"{title}\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.1.__assoc__.0.0', '\"key\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.1.__assoc__.0.1', '\"2\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.1.__assoc__.1.0', '\"locked\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.1.__assoc__.1.1', '\"1\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.1.__assoc__.2.0', '\"template\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.title.1.__assoc__.2.1', '\" - {{ siteName }}\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.settings.titleSuffix', 'null'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.translationKeyFormat', 'null'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.translationMethod', '\"none\"'),
('fields.928002ce-655c-46bc-97ca-19c15ed7aebc.type', '\"ether\\\\seo\\\\fields\\\\SeoField\"'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.columnSuffix', 'null'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.handle', '\"event\"'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.instructions', 'null'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.name', '\"Event\"'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.searchable', 'false'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.allowSelfRelations', 'false'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.branchLimit', 'null'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.maintainHierarchy', 'false'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.maxRelations', '1'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.minRelations', 'null'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.selectionLabel', 'null'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.showCardsInGrid', 'false'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.showSiteMenu', 'false'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.sources.0', '\"section:22e0a339-a048-4547-94a6-c3d53a4a6523\"'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.targetSiteId', 'null'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.validateRelatedElements', 'false'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.settings.viewMode', '\"list\"'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.translationKeyFormat', 'null'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.translationMethod', '\"none\"'),
('fields.bd66d959-e1e6-497b-a56f-8afd1dec9545.type', '\"craft\\\\fields\\\\Entries\"'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.columnSuffix', 'null'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.handle', '\"simpleText\"'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.instructions', 'null'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.name', '\"Simple text\"'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.searchable', 'false'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.settings.byteLimit', 'null'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.settings.charLimit', 'null'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.settings.code', 'false'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.settings.initialRows', '4'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.settings.multiline', 'false'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.settings.placeholder', 'null'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.settings.uiMode', '\"normal\"'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.translationKeyFormat', 'null'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.translationMethod', '\"none\"'),
('fields.dd5d4e62-a4a2-4de9-b269-49a029773e71.type', '\"craft\\\\fields\\\\PlainText\"'),
('fs.localFilesystem.hasUrls', 'true'),
('fs.localFilesystem.name', '\"Local filesystem\"'),
('fs.localFilesystem.settings.path', '\"@webroot/assets/uploads\"'),
('fs.localFilesystem.type', '\"craft\\\\fs\\\\Local\"'),
('fs.localFilesystem.url', '\"$PRIMARY_SITE_URL/assets/uploads\"'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.fill', 'null'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.format', 'null'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.handle', '\"heroBannerMobile\"'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.height', 'null'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.interlace', '\"none\"'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.mode', '\"crop\"'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.name', '\"Hero banner - mobile\"'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.position', '\"center-center\"'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.quality', '100'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.upscale', 'false'),
('imageTransforms.1fb86694-1ef7-4a8a-8874-cad4b0e765fe.width', '1200'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.fill', 'null'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.format', 'null'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.handle', '\"heroBannerDesktop\"'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.height', 'null'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.interlace', '\"none\"'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.mode', '\"crop\"'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.name', '\"Hero banner - desktop\"'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.position', '\"center-center\"'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.quality', '100'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.upscale', 'false'),
('imageTransforms.96144109-10c3-4a0d-a37f-8209502abc15.width', '2200'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.fill', 'null'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.format', 'null'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.handle', '\"eventCover\"'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.height', 'null'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.interlace', '\"none\"'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.mode', '\"crop\"'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.name', '\"Event cover\"'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.position', '\"center-center\"'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.quality', '100'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.upscale', 'false'),
('imageTransforms.b15f3341-8d99-4fb7-855b-fafd6719f3f6.width', '1800'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.fill', 'null'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.format', 'null'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.handle', '\"eventCoverMobile\"'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.height', 'null'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.interlace', '\"none\"'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.mode', '\"crop\"'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.name', '\"Event cover - mobile\"'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.position', '\"center-center\"'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.quality', '100'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.upscale', 'false'),
('imageTransforms.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3.width', '750'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.fill', 'null'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.format', '\"jpg\"'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.handle', '\"inspirationThumbnail\"'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.height', 'null'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.interlace', '\"none\"'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.mode', '\"crop\"'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.name', '\"Inspiration thumbnail\"'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.position', '\"center-center\"'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.quality', '80'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.upscale', 'false'),
('imageTransforms.f105584b-2750-4689-af12-84d981c927c5.width', '800'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.fill', 'null'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.format', 'null'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.handle', '\"imageWithTextBox\"'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.height', 'null'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.interlace', '\"none\"'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.mode', '\"crop\"'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.name', '\"Image with text box\"'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.position', '\"center-center\"'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.quality', '80'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.upscale', 'false'),
('imageTransforms.f4b8921b-b141-469c-a6c0-bbe3c26cc73f.width', '940'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.fill', 'null'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.format', 'null'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.handle', '\"inspirationCover\"'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.height', 'null'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.interlace', '\"none\"'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.mode', '\"crop\"'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.name', '\"Inspiration cover\"'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.position', '\"center-center\"'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.quality', '100'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.upscale', 'false'),
('imageTransforms.f577f701-0c33-41a7-be8e-657503de63b8.width', '2100'),
('meta.__names__.05bbd45d-9ddc-4134-8cba-c41b83c3c23a', '\"Page sections\"'),
('meta.__names__.05d9af86-c1bf-46ee-a5fa-37450aa42e78', '\"EPR\"'),
('meta.__names__.0645712b-5f0e-4ede-b288-136194b2d349', '\"Karima Hočevar\"'),
('meta.__names__.096e6a68-e847-45c2-bfd7-9bb92635af8f', '\"Event subscriber\"'),
('meta.__names__.12d93a50-135a-4e0d-9cef-dadc1209904d', '\"Editor text\"'),
('meta.__names__.1436d17a-03bf-4c1e-9d30-47367529b37a', '\"List of events\"'),
('meta.__names__.1cc501c6-7465-41d2-a392-9870a0a59e48', '\"Events\"'),
('meta.__names__.1fb86694-1ef7-4a8a-8874-cad4b0e765fe', '\"Hero banner - mobile\"'),
('meta.__names__.22e0a339-a048-4547-94a6-c3d53a4a6523', '\"Events\"'),
('meta.__names__.2d541ab1-b48d-4113-92a8-96a1bf6325be', '\"List of inspirations\"'),
('meta.__names__.33ab6968-ee12-4c8f-b599-997ea876527e', '\"Newsletter signup form\"'),
('meta.__names__.3c629f1c-8092-42de-9b94-f4da68628746', '\"Image side\"'),
('meta.__names__.41c6d7d1-9c2a-4c1e-abfa-06ae34d3d08a', '\"Email\"'),
('meta.__names__.41ea246c-1f5f-4cd8-86a8-790cb170ac60', '\"Images\"'),
('meta.__names__.47ee7517-59aa-4532-a3c5-028ed325670d', '\"Description\"'),
('meta.__names__.485d659b-8c7c-48bc-ad83-f6f8b8b19b95', '\"Editor contents\"'),
('meta.__names__.4b047672-6c3e-4824-86ab-284a4e4a32bb', '\"Full text box\"'),
('meta.__names__.507d02cd-6d18-491c-a393-b0ed79f2f535', '\"Highlighted text\"'),
('meta.__names__.53b78b55-85a7-4079-9f0f-c7a0382407c2', '\"Event content\"'),
('meta.__names__.561f5795-edf2-4057-bf0c-1eede2181d9d', '\"Images\"'),
('meta.__names__.57c3e1d3-da51-4a25-b8f9-d57bfbe8dcc8', '\"Karima Hočevar\"'),
('meta.__names__.58e5b824-8237-4fc4-87f3-570c3969b621', '\"Simple\"'),
('meta.__names__.5ab75c5d-c8c5-4895-a5dc-1939062b0c25', '\"Newsletter subscribers\"'),
('meta.__names__.5fd391e7-5e9b-4552-9423-16102d2210cc', '\"Heading\"'),
('meta.__names__.62d1b830-f495-4a67-a4b3-e4fb92cc74a8', '\"Inspirations\"'),
('meta.__names__.6674e180-5fc8-4991-ba5e-add100694daa', '\"Newsletter subscriber\"'),
('meta.__names__.6c899c98-0e37-4bb5-97df-5b1d53b40281', '\"Actions\"'),
('meta.__names__.73a7162d-b07e-405d-be78-96423e43ca89', '\"Images\"'),
('meta.__names__.75968ea4-3e1b-46d8-86ef-1757f6d6cee8', '\"Lightswitch\"'),
('meta.__names__.76b2d286-67bc-4afc-8e4c-26e40162c6b3', '\"Inspiration content\"'),
('meta.__names__.825511a6-afc4-457c-a1bd-c476ab5d2e56', '\"Image\"'),
('meta.__names__.84aee63b-202b-4dea-8359-9ae287d08930', '\"Date\"'),
('meta.__names__.8cd1b229-e07c-46b6-8480-780c5542757d', '\"Building blocks\"'),
('meta.__names__.90ac9b7f-48f2-40ad-a8e5-792e63613177', '\"Image with text box\"'),
('meta.__names__.928002ce-655c-46bc-97ca-19c15ed7aebc', '\"SEO Settings\"'),
('meta.__names__.96144109-10c3-4a0d-a37f-8209502abc15', '\"Hero banner - desktop\"'),
('meta.__names__.98b9fa03-bce6-4e8d-934d-53c9202cf2e6', '\"Homepage\"'),
('meta.__names__.9b561524-debf-4118-bfa9-327310774658', '\"Social links\"'),
('meta.__names__.9bca6d4c-e414-4fbe-bc05-53d304d14380', '\"Quote\"'),
('meta.__names__.b04c75fe-adfc-4caa-ba39-1fccca412c0a', '\"Terms of use\"'),
('meta.__names__.b15f3341-8d99-4fb7-855b-fafd6719f3f6', '\"Event cover\"'),
('meta.__names__.b2d2cb87-2384-4d1b-af7b-a63fa20a32d3', '\"Event cover - mobile\"'),
('meta.__names__.bcba9386-e72b-4149-9cad-8d09a8d484f2', '\"Inspirations\"'),
('meta.__names__.bd66d959-e1e6-497b-a56f-8afd1dec9545', '\"Event\"'),
('meta.__names__.bf2f5bc2-6f9e-43bf-a077-04c031ffad09', '\"Privacy policy\"'),
('meta.__names__.c3957b4d-40a6-4289-866b-41ae4874af42', '\"All events\"'),
('meta.__names__.cc7fcca0-3053-4bca-85b8-873f7c668353', '\"Newsletter\"'),
('meta.__names__.ce2a73cc-de2a-4098-9441-0917ccd65347', '\"Hero banner\"'),
('meta.__names__.d0a1cff7-d09f-4010-a16e-1f73ee2993bb', '\"My work\"'),
('meta.__names__.dd5d4e62-a4a2-4de9-b269-49a029773e71', '\"Simple text\"'),
('meta.__names__.efcdaba7-ebcc-4c3b-93af-6444a803da64', '\"Event registrations\"'),
('meta.__names__.f105584b-2750-4689-af12-84d981c927c5', '\"Inspiration thumbnail\"'),
('meta.__names__.f4b8921b-b141-469c-a6c0-bbe3c26cc73f', '\"Image with text box\"'),
('meta.__names__.f577f701-0c33-41a7-be8e-657503de63b8', '\"Inspiration cover\"'),
('meta.__names__.f8b207c1-f9ae-4559-9ed1-c16736ec2a67', '\"All inspirations\"'),
('meta.__names__.fbf1838b-6239-49f2-bcf4-c98412813028', '\"About me\"'),
('plugins.ckeditor.edition', '\"standard\"'),
('plugins.ckeditor.enabled', 'true'),
('plugins.ckeditor.schemaVersion', '\"3.0.0.0\"'),
('plugins.mix.edition', '\"standard\"'),
('plugins.mix.enabled', 'true'),
('plugins.mix.schemaVersion', '\"1.0.0\"'),
('plugins.seo.edition', '\"standard\"'),
('plugins.seo.enabled', 'true'),
('plugins.seo.schemaVersion', '\"3.2.0\"'),
('plugins.super-table.edition', '\"standard\"'),
('plugins.super-table.enabled', 'true'),
('plugins.super-table.schemaVersion', '\"4.0.0\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.defaultPlacement', '\"end\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.enableVersioning', 'true'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.handle', '\"epr\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.maxAuthors', '1'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.name', '\"EPR\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.propagationMethod', '\"all\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"embodied-psychodynamic-resonance\"'),
('sections.05d9af86-c1bf-46ee-a5fa-37450aa42e78.type', '\"single\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.defaultPlacement', '\"end\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.enableVersioning', 'true'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.handle', '\"events\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.maxAuthors', '1'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.name', '\"Events\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.propagationMethod', '\"all\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"event/{slug}\"'),
('sections.22e0a339-a048-4547-94a6-c3d53a4a6523.type', '\"channel\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.defaultPlacement', '\"end\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.enableVersioning', 'true'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.entryTypes.0.uid', '\"6674e180-5fc8-4991-ba5e-add100694daa\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.handle', '\"newsletterSubscribers\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.maxAuthors', '1'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.name', '\"Newsletter subscribers\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.propagationMethod', '\"all\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"newsletter-subscribers/_entry.twig\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"newsletter-subscribers/{slug}\"'),
('sections.5ab75c5d-c8c5-4895-a5dc-1939062b0c25.type', '\"channel\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.defaultPlacement', '\"end\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.enableVersioning', 'true'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.handle', '\"homepage\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.maxAuthors', '1'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.name', '\"Homepage\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.propagationMethod', '\"all\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"__home__\"'),
('sections.98b9fa03-bce6-4e8d-934d-53c9202cf2e6.type', '\"single\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.defaultPlacement', '\"end\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.enableVersioning', 'true'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.handle', '\"termsOfUse\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.maxAuthors', '1'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.name', '\"Terms of use\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.propagationMethod', '\"all\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"terms-of-use\"'),
('sections.b04c75fe-adfc-4caa-ba39-1fccca412c0a.type', '\"single\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.defaultPlacement', '\"end\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.enableVersioning', 'true'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.handle', '\"inspirations\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.maxAuthors', '1'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.name', '\"Inspirations\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.propagationMethod', '\"all\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"inspiration/{slug}\"'),
('sections.bcba9386-e72b-4149-9cad-8d09a8d484f2.type', '\"channel\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.defaultPlacement', '\"end\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.enableVersioning', 'true'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.handle', '\"privacyPolicy\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.maxAuthors', '1'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.name', '\"Privacy policy\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.propagationMethod', '\"all\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"privacy-policy\"'),
('sections.bf2f5bc2-6f9e-43bf-a077-04c031ffad09.type', '\"single\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.defaultPlacement', '\"end\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.enableVersioning', 'true'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.handle', '\"allEvents\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.maxAuthors', '1'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.name', '\"All events\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.propagationMethod', '\"all\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"events\"'),
('sections.c3957b4d-40a6-4289-866b-41ae4874af42.type', '\"single\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.defaultPlacement', '\"end\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.enableVersioning', 'true'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.handle', '\"newsletter\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.maxAuthors', '1'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.name', '\"Newsletter\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.propagationMethod', '\"all\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"newsletter\"'),
('sections.cc7fcca0-3053-4bca-85b8-873f7c668353.type', '\"single\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.defaultPlacement', '\"end\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.enableVersioning', 'true'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.handle', '\"myWork\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.maxAuthors', '1'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.name', '\"My work\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.propagationMethod', '\"all\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"my-work\"'),
('sections.d0a1cff7-d09f-4010-a16e-1f73ee2993bb.type', '\"single\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.defaultPlacement', '\"end\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.enableVersioning', 'true'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.entryTypes.0.uid', '\"096e6a68-e847-45c2-bfd7-9bb92635af8f\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.handle', '\"eventRegistrations\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.maxAuthors', '1'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.name', '\"Event registrations\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.propagationMethod', '\"all\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"event-registrations/_entry.twig\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"event-registrations/{slug}\"'),
('sections.efcdaba7-ebcc-4c3b-93af-6444a803da64.type', '\"channel\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.defaultPlacement', '\"end\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.enableVersioning', 'true'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.handle', '\"allInspirations\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.maxAuthors', '1'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.name', '\"All inspirations\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.propagationMethod', '\"all\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"inspirations\"'),
('sections.f8b207c1-f9ae-4559-9ed1-c16736ec2a67.type', '\"single\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.defaultPlacement', '\"end\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.enableVersioning', 'true'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.entryTypes.0.uid', '\"05bbd45d-9ddc-4134-8cba-c41b83c3c23a\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.handle', '\"aboutMe\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.maxAuthors', '1'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.name', '\"About me\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.propagationMethod', '\"all\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.enabledByDefault', 'true'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.template', '\"index\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.siteSettings.0645712b-5f0e-4ede-b288-136194b2d349.uriFormat', '\"about-me\"'),
('sections.fbf1838b-6239-49f2-bcf4-c98412813028.type', '\"single\"'),
('siteGroups.57c3e1d3-da51-4a25-b8f9-d57bfbe8dcc8.name', '\"Karima Hočevar\"'),
('sites.0645712b-5f0e-4ede-b288-136194b2d349.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.0645712b-5f0e-4ede-b288-136194b2d349.enabled', 'true'),
('sites.0645712b-5f0e-4ede-b288-136194b2d349.handle', '\"default\"'),
('sites.0645712b-5f0e-4ede-b288-136194b2d349.hasUrls', 'true'),
('sites.0645712b-5f0e-4ede-b288-136194b2d349.language', '\"en\"'),
('sites.0645712b-5f0e-4ede-b288-136194b2d349.name', '\"Karima Hočevar\"'),
('sites.0645712b-5f0e-4ede-b288-136194b2d349.primary', 'true'),
('sites.0645712b-5f0e-4ede-b288-136194b2d349.siteGroup', '\"57c3e1d3-da51-4a25-b8f9-d57bfbe8dcc8\"'),
('sites.0645712b-5f0e-4ede-b288-136194b2d349.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"Karima Hočevar\"'),
('system.schemaVersion', '\"5.6.0.2\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.require2fa', 'false'),
('users.requireEmailVerification', 'true'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.altTranslationKeyFormat', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.altTranslationMethod', '\"none\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elementCondition', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.autocomplete', 'false'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.autocorrect', 'true'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.class', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.dateAdded', '\"2025-03-13T21:34:46+00:00\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.disabled', 'false'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.elementCondition', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.id', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.includeInCards', 'false'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.inputType', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.instructions', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.label', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.max', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.min', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.name', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.orientation', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.placeholder', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.providesThumbs', 'false'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.readonly', 'false'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.requirable', 'false'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.size', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.step', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.tip', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.title', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.uid', '\"114d34b5-8768-4ff8-a935-49f3c0d21043\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.userCondition', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.warning', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.elements.0.width', '100'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.name', '\"Content\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.uid', '\"0357924e-066a-4206-94f9-ea29c8ae3bdb\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fieldLayouts.aa95dd58-04ed-4253-9136-c34cb9ae57a0.tabs.0.userCondition', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.fs', '\"localFilesystem\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.handle', '\"images\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.name', '\"Images\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.sortOrder', '1'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.subpath', '\"images\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.titleTranslationKeyFormat', 'null'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.titleTranslationMethod', '\"site\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.transformFs', '\"\"'),
('volumes.41ea246c-1f5f-4cd8-86a8-790cb170ac60.transformSubpath', '\"transforms\"');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text DEFAULT NULL,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(10) UNSIGNED NOT NULL DEFAULT 1024,
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT 0,
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT 0,
  `dateFailed` datetime DEFAULT NULL,
  `error` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recoverycodes`
--

CREATE TABLE `recoverycodes` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `recoveryCodes` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(5) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 7, 13, NULL, 12, 1, '2025-03-13 21:40:20', '2025-03-13 21:40:20', '5fd8546d-509f-431c-b57d-482310d750d4'),
(3, 7, 16, NULL, 12, 1, '2025-03-13 21:40:20', '2025-03-13 21:40:20', 'a60fbccb-a341-4ebb-a3b3-266fda1a3497'),
(5, 7, 22, NULL, 12, 1, '2025-03-13 22:08:41', '2025-03-13 22:08:41', 'e9da57e9-bd6d-4290-b317-de1230a7f869'),
(7, 7, 28, NULL, 12, 1, '2025-03-13 22:08:53', '2025-03-13 22:08:53', '42167358-2f1b-473a-b031-832c3c536379'),
(9, 7, 34, NULL, 32, 1, '2025-03-13 22:19:22', '2025-03-13 22:19:22', '26b63465-4e8e-43ae-b141-b379bf15e8ee'),
(10, 7, 37, NULL, 32, 1, '2025-03-13 22:19:22', '2025-03-13 22:19:22', 'f61c50db-7591-4a7b-95e3-14a864b6b34d'),
(12, 7, 48, NULL, 46, 1, '2025-03-13 22:44:57', '2025-03-13 22:44:57', '206408e8-a6d8-4374-97ed-74e728ac6461'),
(13, 7, 52, NULL, 46, 1, '2025-03-13 22:44:58', '2025-03-13 22:44:58', '81211c5d-94e6-4dd5-a25c-68d3ee6680db'),
(14, 7, 74, NULL, 75, 1, '2025-03-13 23:19:59', '2025-03-13 23:19:59', '15481c91-4f9a-4ea9-9afb-71183b66c540'),
(15, 7, 78, NULL, 75, 1, '2025-03-13 23:20:13', '2025-03-13 23:20:13', '178645a4-3e2a-4d68-9943-b7910f761526'),
(17, 7, 96, NULL, 75, 1, '2025-03-13 23:22:24', '2025-03-13 23:22:24', '6b4ee3f8-195b-494d-8fc6-0060cc868365'),
(18, 7, 106, NULL, 75, 1, '2025-03-13 23:24:25', '2025-03-13 23:24:25', '81540643-fe00-4003-9523-b67a31fe1ba8'),
(19, 7, 122, NULL, 75, 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', 'b9264265-44dc-4283-95c9-ade5c286d16c'),
(20, 7, 131, NULL, 75, 1, '2025-03-13 23:44:21', '2025-03-13 23:44:21', 'd9ec71a1-dc63-4ef7-aeab-8e76e649b54d'),
(21, 7, 140, NULL, 75, 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', 'a4963cd1-54cd-4b9e-95c0-14cb3887fb73'),
(22, 7, 149, NULL, 75, 1, '2025-03-13 23:44:24', '2025-03-13 23:44:24', 'e5f4d89c-e87a-45c0-94b9-1c3b6c10233b'),
(25, 7, 181, NULL, 179, 1, '2025-03-14 00:13:05', '2025-03-14 00:13:05', 'e492f933-3293-4d85-8fc8-6823f1740502'),
(26, 7, 181, NULL, 180, 2, '2025-03-14 00:13:05', '2025-03-14 00:13:05', '0b52761e-c9c4-4e9a-9378-bc81f28ab8b5'),
(27, 7, 184, NULL, 179, 1, '2025-03-14 00:13:05', '2025-03-14 00:13:05', '607c9230-206c-4ea6-9576-f5ea8ed41bb0'),
(28, 7, 184, NULL, 180, 2, '2025-03-14 00:13:05', '2025-03-14 00:13:05', 'cc612986-123c-4d64-8777-bb0544f6b31d'),
(29, 7, 187, NULL, 179, 1, '2025-03-14 00:14:23', '2025-03-14 00:14:23', '1cb73372-402d-489b-ac6a-6409fe7900f7'),
(30, 7, 187, NULL, 180, 2, '2025-03-14 00:14:23', '2025-03-14 00:14:23', '212523e2-510c-43d4-bc9c-f23f8f3ffd00'),
(31, 7, 190, NULL, 179, 1, '2025-03-14 00:14:23', '2025-03-14 00:14:23', 'e5ca4eb5-8595-4a9f-a16c-81deed2935a3'),
(32, 7, 190, NULL, 180, 2, '2025-03-14 00:14:23', '2025-03-14 00:14:23', '3ed2061c-50e3-4903-ad2d-51c19356b577'),
(33, 7, 193, NULL, 179, 1, '2025-03-14 00:14:24', '2025-03-14 00:14:24', '6ac77168-db3d-4ff2-9086-6950fdf5e42e'),
(34, 7, 193, NULL, 180, 2, '2025-03-14 00:14:24', '2025-03-14 00:14:24', 'f72fd851-297f-469c-8c45-2452d4125a7f'),
(35, 7, 196, NULL, 179, 1, '2025-03-14 00:14:24', '2025-03-14 00:14:24', 'cd0a20bf-eac1-4f59-98e4-0d7b80fa8ab2'),
(36, 7, 196, NULL, 180, 2, '2025-03-14 00:14:24', '2025-03-14 00:14:24', '40e0f1e4-b583-4600-b1fb-bdf3dc1edc13'),
(37, 7, 219, NULL, 179, 1, '2025-03-14 01:09:39', '2025-03-14 01:09:39', '9e66a98c-e319-4611-8a68-330da1112594'),
(38, 7, 219, NULL, 180, 2, '2025-03-14 01:09:39', '2025-03-14 01:09:39', 'aa5df6fb-7412-4f7f-8aa9-63d314d6b3b4'),
(39, 7, 222, NULL, 179, 1, '2025-03-14 01:09:40', '2025-03-14 01:09:40', 'f020b2db-8331-4814-beb1-e7d3b87c5ddd'),
(40, 7, 222, NULL, 180, 2, '2025-03-14 01:09:40', '2025-03-14 01:09:40', 'ff7a6097-e500-4fcd-9cb5-3d5583d37498'),
(43, 7, 242, NULL, 32, 1, '2025-03-14 02:00:56', '2025-03-14 02:00:56', '046e4e86-2dbb-431d-b50a-4896c54ec782'),
(45, 7, 249, NULL, 46, 1, '2025-03-14 02:02:53', '2025-03-14 02:02:53', 'a659ad6d-62ed-46c0-9d8e-ab9d82bd657d'),
(46, 7, 252, NULL, 46, 1, '2025-03-14 02:02:53', '2025-03-14 02:02:53', 'f7a9f4e2-9512-4709-8446-153a62d06ac7'),
(48, 7, 268, NULL, 267, 1, '2025-03-14 02:07:50', '2025-03-14 02:07:50', '2e71e390-ec9e-49d0-956a-859a3a9e7285'),
(49, 7, 271, NULL, 267, 1, '2025-03-14 02:07:50', '2025-03-14 02:07:50', 'f880814c-7afd-4600-a5cf-08cc446f1d07'),
(50, 7, 284, NULL, 75, 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '70b62714-fca5-4bbc-9f46-ea5a6fa71602'),
(51, 7, 293, NULL, 75, 1, '2025-03-14 06:02:56', '2025-03-14 06:02:56', '4b60a3b8-4641-433b-a624-59c57c31e0b1'),
(52, 7, 302, NULL, 75, 1, '2025-03-14 06:02:59', '2025-03-14 06:02:59', '25e6a971-74dd-4d14-878e-36237ccf7556'),
(53, 7, 311, NULL, 75, 1, '2025-03-14 06:03:00', '2025-03-14 06:03:00', '333f3ed8-28bb-417e-ac33-f086e87b0945'),
(54, 7, 320, NULL, 75, 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', '8d51b598-fd23-498b-86d5-57e298d9ff41'),
(55, 7, 329, NULL, 75, 1, '2025-03-14 06:03:02', '2025-03-14 06:03:02', 'c1a17155-397a-4a1e-8130-d84a508ea70e'),
(56, 14, 356, NULL, 157, 1, '2025-03-14 22:17:32', '2025-03-14 22:17:32', '24ea9837-5f61-48f1-8b63-3776ae90df04'),
(57, 14, 357, NULL, 157, 1, '2025-03-14 22:17:32', '2025-03-14 22:17:32', '675adfe0-4cbf-4ac8-8a89-9b4fc9fac4bc'),
(58, 14, 358, NULL, 157, 1, '2025-03-14 22:22:03', '2025-03-14 22:22:03', '23c05c26-688a-4c7c-8149-3846f3ce5d44'),
(59, 14, 359, NULL, 157, 1, '2025-03-14 22:22:03', '2025-03-14 22:22:03', '834fc5df-5abc-4bc2-addf-587bc4872230'),
(61, 7, 366, NULL, 363, 1, '2025-03-14 22:25:49', '2025-03-14 22:25:49', 'c2167853-fa90-40db-9531-f0bf7cc8fd50'),
(62, 7, 369, NULL, 363, 1, '2025-03-14 22:25:49', '2025-03-14 22:25:49', '263895af-de1a-4102-961f-e250df4996bb'),
(64, 7, 373, NULL, 363, 1, '2025-03-14 22:26:07', '2025-03-14 22:26:07', '7e16c9b5-e5f5-4893-a94f-35c485a5b338'),
(65, 7, 376, NULL, 363, 1, '2025-03-14 22:26:07', '2025-03-14 22:26:07', '778f5a98-18fc-4aac-8dbb-4e82ff9c4dd3'),
(68, 7, 239, NULL, 381, 1, '2025-03-19 10:06:50', '2025-03-19 10:06:50', '3f6d909a-f02b-45b6-9416-57f558e495a5'),
(69, 7, 387, NULL, 381, 1, '2025-03-19 10:06:50', '2025-03-19 10:06:50', 'f8eefaae-c6e2-4eba-afc0-1eedb6c2cf6c'),
(72, 7, 459, NULL, 453, 1, '2025-03-19 10:18:29', '2025-03-19 10:18:29', '62c8cbbf-36ff-431b-ac17-331510990eb6'),
(76, 7, 466, NULL, 463, 1, '2025-03-19 10:22:41', '2025-03-19 10:22:41', '71778dd2-b50e-42f1-a985-404ac73498e0'),
(80, 7, 473, NULL, 470, 1, '2025-03-19 10:25:51', '2025-03-19 10:25:51', 'a4e65070-a192-4e62-84ef-ed5678dda8ff'),
(83, 7, 449, NULL, 463, 1, '2025-03-19 10:26:20', '2025-03-19 10:26:20', '8dfc3de0-b97b-4275-807f-f8e0bc0f4f1a'),
(84, 7, 479, NULL, 463, 1, '2025-03-19 10:26:20', '2025-03-19 10:26:20', 'd9ba59a8-fc3f-4357-8f6b-499bc0739570'),
(85, 7, 494, NULL, 179, 1, '2025-03-19 10:28:40', '2025-03-19 10:28:40', 'bbe6d244-d173-41d6-826d-a136bf1507cd'),
(86, 7, 494, NULL, 180, 2, '2025-03-19 10:28:40', '2025-03-19 10:28:40', '6c0437a3-d92e-470c-a699-374aa21383b7'),
(87, 7, 497, NULL, 179, 1, '2025-03-19 10:28:40', '2025-03-19 10:28:40', '57d38aeb-1203-45e7-9404-ef204243a2d7'),
(88, 7, 497, NULL, 180, 2, '2025-03-19 10:28:40', '2025-03-19 10:28:40', '56fa46f1-341e-4bce-9703-17f2da25411b'),
(90, 7, 508, NULL, 75, 1, '2025-03-19 10:29:54', '2025-03-19 10:29:54', 'ac47b391-685a-4340-9edc-949d740875d3'),
(92, 7, 513, NULL, 75, 1, '2025-03-19 10:30:30', '2025-03-19 10:30:30', '43ac92dc-d94e-40c7-bf1b-9d252b987c6e'),
(94, 7, 518, NULL, 75, 1, '2025-03-19 10:30:59', '2025-03-19 10:30:59', '6608c652-3f89-4e7f-8f41-470498287742'),
(96, 7, 524, NULL, 75, 1, '2025-03-19 10:31:49', '2025-03-19 10:31:49', '301f96fa-250e-4665-a3a1-e75ad59f2596'),
(98, 7, 529, NULL, 75, 1, '2025-03-19 10:31:59', '2025-03-19 10:31:59', '38efccc6-5f38-4835-89dc-46f7836056a0');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('10bb2257', '@craft/web/assets/pluginstore/dist'),
('129d0a40', '@craft/web/assets/tailwindreset/dist'),
('1588b062', '@craft/web/assets/selectize/dist'),
('19c0122a', '@craft/web/assets/cp/dist'),
('25f11c8c', '@craft/web/assets/axios/dist'),
('2c508c3d', '@craft/web/assets/jqueryui/dist'),
('34c7cf8a', '@craft/web/assets/updater/dist'),
('3becbbb', '@craft/web/assets/updateswidget/dist'),
('3c8f2a28', '@craft/web/assets/jquerytouchevents/dist'),
('3d0489d5', '@craft/web/assets/recententries/dist'),
('3e83e181', '@craft/web/assets/conditionbuilder/dist'),
('3f53463', '@craft/web/assets/d3/dist'),
('42dbd92f', '@bower/jquery/dist'),
('43322ae0', '@craft/web/assets/utilities/dist'),
('4b188296', '@craft/web/assets/tablesettings/dist'),
('4b8d5641', '@craft/web/assets/craftsupport/dist'),
('4be9fe99', '@craft/web/assets/matrix/dist'),
('5222bd10', '@craft/web/assets/feed/dist'),
('5318bcde', '@craft/web/assets/fabric/dist'),
('54d17a55', '@ether/seo/web/assets'),
('5a2bacc0', '@craft/web/assets/timepicker/dist'),
('5deab8c3', '@craft/web/assets/sites/dist'),
('66ad54c9', '@craft/web/assets/picturefill/dist'),
('68f30bcf', '@craft/web/assets/d3/dist'),
('6a24c836', '@craft/web/assets/admintable/dist'),
('6c958415', '@craft/web/assets/velocity/dist'),
('7a92fac5', '@craft/web/assets/clearcaches/dist'),
('7baa8bc9', '@craft/web/assets/garnish/dist'),
('7bf0feb6', '@craft/web/assets/dashboard/dist'),
('7eee183f', '@craft/web/assets/fileupload/dist'),
('80225744', '@craft/web/assets/vue/dist'),
('807aa71b', '@craft/web/assets/editsection/dist'),
('87602fd4', '@craft/web/assets/selectize/dist'),
('8943dd4', '@craft/web/assets/iframeresizer/dist'),
('8ef016f5', '@craft/web/assets/iframeresizer/dist'),
('91958da8', '@craft/web/assets/jquerypayment/dist'),
('91c652ca', '@craft/web/assets/jquerytouchevents/dist'),
('92278141', '@craft/web/assets/axios/dist'),
('94028f1f', '@craft/web/assets/velocity/dist'),
('94cf0525', '@craft/web/assets/sites/dist'),
('95269091', '@craft/ckeditor/web/assets/ckeditor/dist'),
('96386b74', '@craft/web/assets/xregexp/dist'),
('9991cc67', '@craft/web/assets/matrix/dist'),
('9b0700f6', '@craft/web/assets/feed/dist'),
('9b08e34d', '@craft/web/assets/edittransform/dist'),
('a2bca7ca', '@craft/web/assets/timepicker/dist'),
('a4123db2', '@craft/web/assets/craftsupport/dist'),
('a62f503c', '@craft/web/assets/updater/dist'),
('a676ea76', '@craft/web/assets/xregexp/dist'),
('a977e707', '@craft/web/assets/vue/dist'),
('aa4ddde3', '@craft/web/assets/fabric/dist'),
('adce5776', '@craft/web/assets/picturefill/dist'),
('b366866', '@craft/web/assets/theme/dist'),
('b5b67052', '@craft/web/assets/utilities/dist'),
('b78dc147', '@craft/web/assets/admintable/dist'),
('c73b2660', '@bower/jquery/dist'),
('cddcb676', '@craft/web/assets/jqueryui/dist'),
('d3a760dd', '@craft/web/assets/fileupload/dist'),
('d6e43a6', '@craft/web/assets/jquerypayment/dist'),
('d82f43b4', '@craft/web/assets/prismjs/dist'),
('dc64d1ac', '@craft/web/assets/generalsettings/dist'),
('df0c67f0', '@craft/web/assets/recententries/dist'),
('e1b6259e', '@craft/web/assets/updateswidget/dist'),
('e244263d', '@craft/web/assets/dashboard/dist'),
('e41950f2', '@craft/web/assets/tailwindreset/dist'),
('e75145c7', '@craft/web/assets/garnish/dist'),
('eb78381a', '@craft/web/assets/theme/dist'),
('ee8622af', '@craft/web/assets/cp/dist'),
('efb7405b', '@ether/seo/web/assets'),
('efde8e2', '@craft/web/assets/fieldsettings/dist'),
('f17af3f7', '@craft/web/assets/prismjs/dist'),
('f692a4b2', '@craft/web/assets/htmx/dist'),
('fa26501e', '@craft/ckeditor/web/assets/ckeditor/dist');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `canonicalId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 2, 1, 2, 'Applied “Draft 1”'),
(3, 6, 1, 1, NULL),
(4, 2, 1, 3, 'Applied “Draft 1”'),
(5, 6, 1, 2, NULL),
(6, 13, 1, 1, NULL),
(7, 2, 1, 4, 'Applied “Draft 1”'),
(8, 6, 1, 3, NULL),
(9, 13, 1, 2, NULL),
(10, 2, 1, 5, 'Applied “Draft 1”'),
(11, 6, 1, 4, NULL),
(12, 13, 1, 3, NULL),
(13, 2, 1, 6, 'Applied “Draft 1”'),
(14, 33, 1, 1, NULL),
(15, 34, 1, 1, NULL),
(16, 2, 1, 7, 'Applied “Draft 1”'),
(17, 33, 1, 2, NULL),
(18, 2, 1, 8, 'Applied “Draft 1”'),
(19, 33, 1, 3, NULL),
(20, 47, 1, 1, NULL),
(21, 48, 1, 1, NULL),
(22, 2, 1, 9, 'Applied “Draft 1”'),
(23, 6, 1, 5, NULL),
(24, 47, 1, 2, NULL),
(25, 2, 1, 10, 'Applied “Draft 1”'),
(26, 61, 1, 1, NULL),
(27, 2, 1, 11, 'Applied “Draft 1”'),
(28, 61, 1, 2, NULL),
(29, 2, 1, 12, 'Applied “Draft 1”'),
(30, 70, 1, 1, NULL),
(31, 73, 1, 1, ''),
(32, 74, 1, 1, NULL),
(33, 76, 1, 1, NULL),
(34, 73, 1, 2, 'Applied “Draft 1”'),
(35, 74, 1, 2, NULL),
(36, 76, 1, 2, NULL),
(37, 89, 1, 1, NULL),
(38, 90, 1, 1, NULL),
(39, 91, 1, 1, NULL),
(40, 92, 1, 1, NULL),
(41, 93, 1, 1, NULL),
(42, 94, 1, 1, NULL),
(43, 73, 1, 3, 'Applied “Draft 1”'),
(44, 74, 1, 3, NULL),
(45, 2, 1, 13, 'Applied “Draft 1”'),
(46, 6, 1, 6, NULL),
(47, 33, 1, 4, NULL),
(48, 47, 1, 3, NULL),
(49, 61, 1, 3, NULL),
(50, 70, 1, 2, NULL),
(51, 73, 1, 4, ''),
(52, 2, 1, 14, 'Applied “Draft 1”'),
(53, 61, 1, 4, NULL),
(54, 2, 1, 15, ''),
(55, 61, 1, 5, NULL),
(56, 121, 1, 1, NULL),
(57, 122, 1, 1, NULL),
(58, 123, 1, 1, NULL),
(59, 124, 1, 1, NULL),
(60, 125, 1, 1, NULL),
(61, 126, 1, 1, NULL),
(62, 127, 1, 1, NULL),
(63, 128, 1, 1, NULL),
(64, 129, 1, 1, NULL),
(65, 139, 1, 1, NULL),
(66, 140, 1, 1, NULL),
(67, 141, 1, 1, NULL),
(68, 142, 1, 1, NULL),
(69, 143, 1, 1, NULL),
(70, 144, 1, 1, NULL),
(71, 145, 1, 1, NULL),
(72, 146, 1, 1, NULL),
(73, 147, 1, 1, NULL),
(74, 157, 1, 1, ''),
(75, 158, 1, 1, NULL),
(76, 161, 1, 1, NULL),
(77, 162, 1, 1, NULL),
(78, 165, 1, 1, NULL),
(79, 166, 1, 1, NULL),
(80, 2, 1, 16, 'Applied “Draft 1”'),
(81, 70, 1, 3, NULL),
(82, 172, 1, 1, NULL),
(83, 157, 1, 2, 'Applied “Draft 1”'),
(84, 158, 1, 2, NULL),
(85, 181, 1, 1, NULL),
(86, 185, 1, 1, NULL),
(87, 186, 1, 1, NULL),
(88, 187, 1, 1, NULL),
(89, 191, 1, 1, NULL),
(90, 192, 1, 1, NULL),
(91, 193, 1, 1, NULL),
(92, 157, 1, 3, ''),
(93, 157, 1, 4, 'Applied “Draft 1”'),
(94, 158, 1, 3, NULL),
(95, 191, 1, 2, 'Applied “Draft 1”'),
(96, 192, 1, 2, NULL),
(97, 206, 1, 1, NULL),
(98, 206, 1, 2, 'Applied “Draft 1”'),
(99, 210, 1, 1, NULL),
(100, 206, 1, 3, 'Applied “Draft 1”'),
(101, 210, 1, 2, NULL),
(102, 217, 1, 1, NULL),
(103, 218, 1, 1, NULL),
(104, 219, 1, 1, NULL),
(105, 157, 1, 5, 'Applied “Draft 1”'),
(106, 158, 1, 4, NULL),
(107, 157, 1, 6, 'Applied “Draft 1”'),
(108, 158, 1, 5, NULL),
(109, 157, 1, 7, ''),
(110, 158, 1, 6, NULL),
(111, 233, 1, 1, NULL),
(112, 233, 1, 2, 'Applied “Draft 1”'),
(113, 238, 1, 1, NULL),
(114, 239, 1, 1, NULL),
(115, 243, 1, 1, NULL),
(116, 243, 1, 2, 'Applied “Draft 1”'),
(117, 248, 1, 1, NULL),
(118, 249, 1, 1, NULL),
(119, 243, 1, 3, 'Applied “Draft 1”'),
(120, 248, 1, 2, NULL),
(121, 257, 1, 1, NULL),
(122, 257, 1, 2, 'Applied “Draft 1”'),
(123, 261, 1, 1, NULL),
(124, 257, 1, 3, 'Applied “Draft 1”'),
(125, 261, 1, 2, NULL),
(126, 268, 1, 1, NULL),
(127, 272, 1, 1, NULL),
(128, 272, 1, 2, 'Applied “Draft 1”'),
(129, 276, 1, 1, NULL),
(130, 272, 1, 3, 'Applied “Draft 1”'),
(131, 276, 1, 2, NULL),
(132, 283, 1, 1, NULL),
(133, 284, 1, 1, NULL),
(134, 285, 1, 1, NULL),
(135, 286, 1, 1, NULL),
(136, 287, 1, 1, NULL),
(137, 288, 1, 1, NULL),
(138, 289, 1, 1, NULL),
(139, 290, 1, 1, NULL),
(140, 291, 1, 1, NULL),
(141, 301, 1, 1, NULL),
(142, 302, 1, 1, NULL),
(143, 303, 1, 1, NULL),
(144, 304, 1, 1, NULL),
(145, 305, 1, 1, NULL),
(146, 306, 1, 1, NULL),
(147, 307, 1, 1, NULL),
(148, 308, 1, 1, NULL),
(149, 309, 1, 1, NULL),
(150, 319, 1, 1, NULL),
(151, 320, 1, 1, NULL),
(152, 321, 1, 1, NULL),
(153, 322, 1, 1, NULL),
(154, 323, 1, 1, NULL),
(155, 324, 1, 1, NULL),
(156, 325, 1, 1, NULL),
(157, 326, 1, 1, NULL),
(158, 327, 1, 1, NULL),
(159, 337, 1, 1, NULL),
(160, 337, 1, 2, 'Applied “Draft 1”'),
(161, 341, 1, 1, NULL),
(162, 337, 1, 3, 'Applied “Draft 1”'),
(163, 346, 1, 1, NULL),
(164, 349, 1, 1, NULL),
(165, 351, 1, 1, NULL),
(166, 351, 1, 2, NULL),
(167, 354, 1, 1, NULL),
(168, 356, 1, 1, NULL),
(169, 358, 1, 1, NULL),
(170, 349, 1, 2, 'Applied “Draft 1”'),
(171, 365, 1, 1, NULL),
(172, 366, 1, 1, NULL),
(173, 351, 1, 3, 'Applied “Draft 1”'),
(174, 372, 1, 1, NULL),
(175, 373, 1, 1, NULL),
(176, 233, 1, 3, 'Applied “Draft 1”'),
(177, 238, 1, 2, NULL),
(178, 233, 1, 4, 'Applied “Draft 1”'),
(179, 238, 1, 3, NULL),
(180, 239, 1, 2, NULL),
(181, 233, 1, 5, 'Applied “Draft 1”'),
(182, 238, 1, 4, NULL),
(183, 233, 1, 6, 'Applied “Draft 1”'),
(184, 238, 1, 5, NULL),
(185, 233, 1, 7, 'Applied “Draft 1”'),
(186, 238, 1, 6, NULL),
(187, 206, 1, 4, ''),
(188, 210, 1, 3, NULL),
(189, 206, 1, 5, ''),
(190, 210, 1, 4, NULL),
(191, 206, 1, 6, 'Applied “Draft 1”'),
(192, 406, 1, 1, NULL),
(193, 206, 1, 7, 'Applied “Draft 1”'),
(194, 206, 1, 8, 'Applied “Draft 1”'),
(195, 415, 1, 1, NULL),
(196, 206, 1, 9, 'Applied “Draft 1”'),
(197, 420, 1, 1, NULL),
(198, 206, 1, 10, 'Applied “Draft 1”'),
(199, 425, 1, 1, NULL),
(200, 206, 1, 11, ''),
(201, 425, 1, 2, NULL),
(202, 206, 1, 12, ''),
(203, 210, 1, 5, NULL),
(204, 206, 1, 13, ''),
(205, 210, 1, 6, NULL),
(206, 206, 1, 14, 'Applied “Draft 1”'),
(207, 425, 1, 3, NULL),
(208, 206, 1, 15, 'Applied “Draft 1”'),
(209, 206, 1, 16, 'Applied “Draft 1”'),
(210, 443, 1, 1, NULL),
(211, 206, 1, 17, 'Applied “Draft 1”'),
(212, 425, 1, 4, NULL),
(213, 449, 1, 1, NULL),
(214, 206, 1, 18, 'Applied “Draft 1”'),
(215, 425, 1, 5, NULL),
(216, 449, 1, 2, NULL),
(217, 206, 1, 19, 'Applied “Draft 1”'),
(218, 425, 1, 6, NULL),
(219, 449, 1, 3, NULL),
(220, 206, 1, 20, 'Applied “Draft 1”'),
(221, 425, 1, 7, NULL),
(222, 449, 1, 4, NULL),
(223, 206, 1, 21, 'Applied “Draft 1”'),
(224, 425, 1, 8, NULL),
(225, 449, 1, 5, NULL),
(226, 157, 1, 8, 'Applied “Draft 1”'),
(227, 158, 1, 7, NULL),
(228, 217, 1, 2, 'Applied “Draft 1”'),
(229, 218, 1, 2, NULL),
(230, 191, 1, 3, 'Applied “Draft 1”'),
(231, 185, 1, 2, 'Applied “Draft 1”'),
(232, 492, 1, 1, NULL),
(233, 493, 1, 1, NULL),
(234, 494, 1, 1, NULL),
(235, 191, 1, 4, 'Applied “Draft 1”'),
(236, 206, 1, 22, 'Applied “Draft 1”'),
(237, 425, 1, 9, NULL),
(238, 73, 1, 5, 'Applied “Draft 1”'),
(239, 74, 1, 4, NULL),
(240, 76, 1, 3, NULL),
(241, 73, 1, 6, 'Applied “Draft 1”'),
(242, 74, 1, 5, NULL),
(243, 319, 1, 2, 'Applied “Draft 1”'),
(244, 320, 1, 2, NULL),
(245, 321, 1, 2, NULL),
(246, 301, 1, 2, 'Applied “Draft 1”'),
(247, 302, 1, 2, NULL),
(248, 303, 1, 2, NULL),
(249, 319, 1, 3, 'Applied “Draft 1”'),
(250, 320, 1, 3, NULL),
(251, 283, 1, 2, 'Applied “Draft 1”'),
(252, 532, 1, 1, NULL),
(253, 349, 1, 3, 'Applied “Draft 1”'),
(254, 365, 1, 2, NULL),
(255, 349, 1, 4, 'Applied “Draft 1”'),
(256, 365, 1, 3, NULL),
(257, 351, 1, 4, ''),
(258, 372, 1, 2, NULL),
(259, 2, 1, 17, 'Applied “Draft 1”'),
(260, 6, 1, 7, NULL),
(261, 2, 1, 18, 'Applied “Draft 1”'),
(262, 6, 1, 8, NULL),
(263, 2, 1, 19, 'Applied “Draft 1”'),
(264, 6, 1, 9, NULL),
(265, 157, 1, 9, 'Applied “Draft 1”'),
(266, 158, 1, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'email', 0, 1, ' poje tilen gmail com '),
(1, 'firstname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'slug', 0, 1, ''),
(1, 'username', 0, 1, ' admin '),
(2, 'slug', 0, 1, ' homepage '),
(2, 'title', 0, 1, ' homepage '),
(6, 'slug', 0, 1, ' test '),
(6, 'title', 0, 1, ''),
(12, 'alt', 0, 1, ''),
(12, 'extension', 0, 1, ' png '),
(12, 'filename', 0, 1, ' lotus flower big png '),
(12, 'kind', 0, 1, ' image '),
(12, 'slug', 0, 1, ''),
(12, 'title', 0, 1, ' lotus flower big '),
(13, 'slug', 0, 1, ' temp wzwrviyocvukmbisnjumaxczzatvcfmxbivk '),
(13, 'title', 0, 1, ''),
(32, 'alt', 0, 1, ''),
(32, 'extension', 0, 1, ' png '),
(32, 'filename', 0, 1, ' valentina karima pic 2025 03 19 100716 zead png '),
(32, 'kind', 0, 1, ' image '),
(32, 'slug', 0, 1, ''),
(32, 'title', 0, 1, ' pri valentini organizatorji '),
(33, 'slug', 0, 1, ' temp wllpffrugrxdqmovnamvkexnaexohvszrpgw '),
(33, 'title', 0, 1, ''),
(34, 'slug', 0, 1, ' temp wqfkpmeiigkogaevrocvqyknpurobolcgrne '),
(34, 'title', 0, 1, ''),
(46, 'alt', 0, 1, ''),
(46, 'extension', 0, 1, ' png '),
(46, 'filename', 0, 1, ' embodied psychodynamic resonance epr png '),
(46, 'kind', 0, 1, ' image '),
(46, 'slug', 0, 1, ''),
(46, 'title', 0, 1, ' embodied psychodynamic resonance epr '),
(47, 'slug', 0, 1, ' temp ivgtrvwnhslqrskkuotlijerlitrswcubryb '),
(47, 'title', 0, 1, ''),
(48, 'slug', 0, 1, ' temp throwumuetrwuqtlscepzfmyjbsgfaszxget '),
(48, 'title', 0, 1, ''),
(61, 'slug', 0, 1, ' temp mqnaopzelnnvfzadtlrdedlqpprsahoxtnst '),
(61, 'title', 0, 1, ''),
(70, 'slug', 0, 1, ' temp zmicjevjmbqedfisbctolixgaddbotykeern '),
(70, 'title', 0, 1, ''),
(73, 'slug', 0, 1, ' somatic therapy how working with the body can heal the imprints of trauma '),
(73, 'title', 0, 1, ' breath of life '),
(74, 'slug', 0, 1, ' temp kzhawprvltapjlwbeqdntzjgysburoagiffi '),
(74, 'title', 0, 1, ''),
(75, 'alt', 0, 1, ''),
(75, 'extension', 0, 1, ' png '),
(75, 'filename', 0, 1, ' inspiration image png '),
(75, 'kind', 0, 1, ' image '),
(75, 'slug', 0, 1, ''),
(75, 'title', 0, 1, ' inspiration image '),
(76, 'slug', 0, 1, ' temp ltrnpiziojgqcovpahorneinawcfapleghyg '),
(76, 'title', 0, 1, ''),
(89, 'slug', 0, 1, ' temp gxxaeevqoffmfqddlilcqixgdgqigzolzizb '),
(89, 'title', 0, 1, ''),
(90, 'slug', 0, 1, ' temp resbzkrtfrespycbtkdxsbpcpxeyohmwakrl '),
(90, 'title', 0, 1, ''),
(91, 'slug', 0, 1, ' temp auycfssbobkezptllrcpzdrwkeeowurspsda '),
(91, 'title', 0, 1, ''),
(92, 'slug', 0, 1, ' temp qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo '),
(92, 'title', 0, 1, ''),
(93, 'slug', 0, 1, ' temp ixkiejhmdrbwzosclapgbzbpascvfardgbpm '),
(93, 'title', 0, 1, ''),
(94, 'slug', 0, 1, ' temp ktjhedxzmjnznvnobjggdqawxsncoghkhfvb '),
(94, 'title', 0, 1, ''),
(121, 'slug', 0, 1, ' somatic therapy how working with the body can heal the imprints of trauma 2 '),
(121, 'title', 0, 1, ' somatic therapy how working with the body can heal the imprints of trauma '),
(122, 'slug', 0, 1, ' temp kzhawprvltapjlwbeqdntzjgysburoagiffi '),
(122, 'title', 0, 1, ''),
(123, 'slug', 0, 1, ' temp ltrnpiziojgqcovpahorneinawcfapleghyg '),
(123, 'title', 0, 1, ''),
(124, 'slug', 0, 1, ' temp gxxaeevqoffmfqddlilcqixgdgqigzolzizb '),
(124, 'title', 0, 1, ''),
(125, 'slug', 0, 1, ' temp resbzkrtfrespycbtkdxsbpcpxeyohmwakrl '),
(125, 'title', 0, 1, ''),
(126, 'slug', 0, 1, ' temp auycfssbobkezptllrcpzdrwkeeowurspsda '),
(126, 'title', 0, 1, ''),
(127, 'slug', 0, 1, ' temp qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo '),
(127, 'title', 0, 1, ''),
(128, 'slug', 0, 1, ' temp ixkiejhmdrbwzosclapgbzbpascvfardgbpm '),
(128, 'title', 0, 1, ''),
(129, 'slug', 0, 1, ' temp ktjhedxzmjnznvnobjggdqawxsncoghkhfvb '),
(129, 'title', 0, 1, ''),
(139, 'slug', 0, 1, ' somatic therapy how working with the body can heal the imprints of trauma 3 '),
(139, 'title', 0, 1, ' somatic therapy how working with the body can heal the imprints of trauma '),
(140, 'slug', 0, 1, ' temp kzhawprvltapjlwbeqdntzjgysburoagiffi '),
(140, 'title', 0, 1, ''),
(141, 'slug', 0, 1, ' temp ltrnpiziojgqcovpahorneinawcfapleghyg '),
(141, 'title', 0, 1, ''),
(142, 'slug', 0, 1, ' temp gxxaeevqoffmfqddlilcqixgdgqigzolzizb '),
(142, 'title', 0, 1, ''),
(143, 'slug', 0, 1, ' temp resbzkrtfrespycbtkdxsbpcpxeyohmwakrl '),
(143, 'title', 0, 1, ''),
(144, 'slug', 0, 1, ' temp auycfssbobkezptllrcpzdrwkeeowurspsda '),
(144, 'title', 0, 1, ''),
(145, 'slug', 0, 1, ' temp qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo '),
(145, 'title', 0, 1, ''),
(146, 'slug', 0, 1, ' temp ixkiejhmdrbwzosclapgbzbpascvfardgbpm '),
(146, 'title', 0, 1, ''),
(147, 'slug', 0, 1, ' temp ktjhedxzmjnznvnobjggdqawxsncoghkhfvb '),
(147, 'title', 0, 1, ''),
(157, 'slug', 0, 1, ' epr therapy days '),
(157, 'title', 0, 1, ' epr therapy days march 14 15 hannover '),
(158, 'slug', 0, 1, ' temp gbibvotejprtlqudmozjdyqzovcginqztbyg '),
(158, 'title', 0, 1, ''),
(161, 'slug', 0, 1, ' epr therapy days 2 '),
(161, 'title', 0, 1, ' epr therapy days '),
(162, 'slug', 0, 1, ' temp gbibvotejprtlqudmozjdyqzovcginqztbyg '),
(162, 'title', 0, 1, ''),
(165, 'slug', 0, 1, ' epr therapy days 3 '),
(165, 'title', 0, 1, ' epr therapy days '),
(166, 'slug', 0, 1, ' temp gbibvotejprtlqudmozjdyqzovcginqztbyg '),
(166, 'title', 0, 1, ''),
(172, 'slug', 0, 1, ' temp xopquseyyavrehvtihbhsdfwljrfznupasxj '),
(172, 'title', 0, 1, ''),
(179, 'alt', 0, 1, ''),
(179, 'extension', 0, 1, ' png '),
(179, 'filename', 0, 1, ' mettaworkshops 4 png '),
(179, 'kind', 0, 1, ' image '),
(179, 'slug', 0, 1, ''),
(179, 'title', 0, 1, ' metta workshops 4 '),
(180, 'alt', 0, 1, ''),
(180, 'extension', 0, 1, ' png '),
(180, 'filename', 0, 1, ' mettaworkshops 4 mobile png '),
(180, 'kind', 0, 1, ' image '),
(180, 'slug', 0, 1, ''),
(180, 'title', 0, 1, ' metta workshops 4 mobile '),
(181, 'slug', 0, 1, ' temp jkcpzlctmcleljndejycdkwjyudzxdvkuhzu '),
(181, 'title', 0, 1, ''),
(185, 'slug', 0, 1, ' epr therapy days 2 '),
(185, 'title', 0, 1, ' group supervision '),
(186, 'slug', 0, 1, ' temp gbibvotejprtlqudmozjdyqzovcginqztbyg '),
(186, 'title', 0, 1, ''),
(187, 'slug', 0, 1, ' temp jkcpzlctmcleljndejycdkwjyudzxdvkuhzu '),
(187, 'title', 0, 1, ''),
(191, 'slug', 0, 1, ' epr therapy days 3 '),
(191, 'title', 0, 1, ' active coaching '),
(192, 'slug', 0, 1, ' temp gbibvotejprtlqudmozjdyqzovcginqztbyg '),
(192, 'title', 0, 1, ''),
(193, 'slug', 0, 1, ' temp jkcpzlctmcleljndejycdkwjyudzxdvkuhzu '),
(193, 'title', 0, 1, ''),
(206, 'slug', 0, 1, ' all events '),
(206, 'title', 0, 1, ' events '),
(210, 'slug', 0, 1, ' temp uxxcvqxljfugioqzlotnwpuprdhikrfyorhj '),
(210, 'title', 0, 1, ''),
(217, 'slug', 0, 1, ' epr therapy days 4 '),
(217, 'title', 0, 1, ' epr deepening day april 10 11 berlin '),
(218, 'slug', 0, 1, ' temp gbibvotejprtlqudmozjdyqzovcginqztbyg '),
(218, 'title', 0, 1, ''),
(219, 'slug', 0, 1, ' temp jkcpzlctmcleljndejycdkwjyudzxdvkuhzu '),
(219, 'title', 0, 1, ''),
(233, 'slug', 0, 1, ' about me '),
(233, 'title', 0, 1, ' about me '),
(238, 'slug', 0, 1, ' temp lekvchmjekxlrsvnukjweeivpobcycywklae '),
(238, 'title', 0, 1, ''),
(239, 'slug', 0, 1, ' temp ficawdbjdfzmdmyozeuhprhxcxdgwnslfbxk '),
(239, 'title', 0, 1, ''),
(243, 'slug', 0, 1, ' my work '),
(243, 'title', 0, 1, ' my work '),
(248, 'slug', 0, 1, ' temp rdwpgnoshteyuhouyaspadhgmvixaknbgkro '),
(248, 'title', 0, 1, ''),
(249, 'slug', 0, 1, ' temp aybtmzrkapmevafpbszdnqxzgdrdqmcangwh '),
(249, 'title', 0, 1, ''),
(257, 'slug', 0, 1, ' epr '),
(257, 'title', 0, 1, ' how does an epr session look like '),
(261, 'slug', 0, 1, ' temp znuenhitigyhlkyqycfzpwqpxqvzkywxfzci '),
(261, 'title', 0, 1, ''),
(267, 'alt', 0, 1, ''),
(267, 'extension', 0, 1, ' png '),
(267, 'filename', 0, 1, ' embodied psychodynamic resonance session png '),
(267, 'kind', 0, 1, ' image '),
(267, 'slug', 0, 1, ''),
(267, 'title', 0, 1, ' embodied psychodynamic resonance session '),
(268, 'slug', 0, 1, ' temp iauunptaucjccgdgesptjjjmrgysdqjzvxbe '),
(268, 'title', 0, 1, ''),
(272, 'slug', 0, 1, ' all inspirations '),
(272, 'title', 0, 1, ' all inspirations '),
(276, 'slug', 0, 1, ' temp rzezusjzzdecflcqabospcndxjvaresirikl '),
(276, 'title', 0, 1, ''),
(283, 'slug', 0, 1, ' somatic therapy how working with the body can heal the imprints of trauma 4 '),
(283, 'title', 0, 1, ' primer objave '),
(284, 'slug', 0, 1, ' temp kzhawprvltapjlwbeqdntzjgysburoagiffi '),
(284, 'title', 0, 1, ''),
(285, 'slug', 0, 1, ' temp ltrnpiziojgqcovpahorneinawcfapleghyg '),
(285, 'title', 0, 1, ''),
(286, 'slug', 0, 1, ' temp gxxaeevqoffmfqddlilcqixgdgqigzolzizb '),
(286, 'title', 0, 1, ''),
(287, 'slug', 0, 1, ' temp resbzkrtfrespycbtkdxsbpcpxeyohmwakrl '),
(287, 'title', 0, 1, ''),
(288, 'slug', 0, 1, ' temp auycfssbobkezptllrcpzdrwkeeowurspsda '),
(288, 'title', 0, 1, ''),
(289, 'slug', 0, 1, ' temp qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo '),
(289, 'title', 0, 1, ''),
(290, 'slug', 0, 1, ' temp ixkiejhmdrbwzosclapgbzbpascvfardgbpm '),
(290, 'title', 0, 1, ''),
(291, 'slug', 0, 1, ' temp ktjhedxzmjnznvnobjggdqawxsncoghkhfvb '),
(291, 'title', 0, 1, ''),
(301, 'slug', 0, 1, ' somatic therapy how working with the body can heal the imprints of trauma 5 '),
(301, 'title', 0, 1, ' essential states '),
(302, 'slug', 0, 1, ' temp kzhawprvltapjlwbeqdntzjgysburoagiffi '),
(302, 'title', 0, 1, ''),
(303, 'slug', 0, 1, ' temp ltrnpiziojgqcovpahorneinawcfapleghyg '),
(303, 'title', 0, 1, ''),
(304, 'slug', 0, 1, ' temp gxxaeevqoffmfqddlilcqixgdgqigzolzizb '),
(304, 'title', 0, 1, ''),
(305, 'slug', 0, 1, ' temp resbzkrtfrespycbtkdxsbpcpxeyohmwakrl '),
(305, 'title', 0, 1, ''),
(306, 'slug', 0, 1, ' temp auycfssbobkezptllrcpzdrwkeeowurspsda '),
(306, 'title', 0, 1, ''),
(307, 'slug', 0, 1, ' temp qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo '),
(307, 'title', 0, 1, ''),
(308, 'slug', 0, 1, ' temp ixkiejhmdrbwzosclapgbzbpascvfardgbpm '),
(308, 'title', 0, 1, ''),
(309, 'slug', 0, 1, ' temp ktjhedxzmjnznvnobjggdqawxsncoghkhfvb '),
(309, 'title', 0, 1, ''),
(319, 'slug', 0, 1, ' somatic therapy how working with the body can heal the imprints of trauma 6 '),
(319, 'title', 0, 1, ' where to put this '),
(320, 'slug', 0, 1, ' temp kzhawprvltapjlwbeqdntzjgysburoagiffi '),
(320, 'title', 0, 1, ''),
(321, 'slug', 0, 1, ' temp ltrnpiziojgqcovpahorneinawcfapleghyg '),
(321, 'title', 0, 1, ''),
(322, 'slug', 0, 1, ' temp gxxaeevqoffmfqddlilcqixgdgqigzolzizb '),
(322, 'title', 0, 1, ''),
(323, 'slug', 0, 1, ' temp resbzkrtfrespycbtkdxsbpcpxeyohmwakrl '),
(323, 'title', 0, 1, ''),
(324, 'slug', 0, 1, ' temp auycfssbobkezptllrcpzdrwkeeowurspsda '),
(324, 'title', 0, 1, ''),
(325, 'slug', 0, 1, ' temp qxnnbqdofagysbcoehgyxlouwmqskxlzpwpo '),
(325, 'title', 0, 1, ''),
(326, 'slug', 0, 1, ' temp ixkiejhmdrbwzosclapgbzbpascvfardgbpm '),
(326, 'title', 0, 1, ''),
(327, 'slug', 0, 1, ' temp ktjhedxzmjnznvnobjggdqawxsncoghkhfvb '),
(327, 'title', 0, 1, ''),
(337, 'slug', 0, 1, ' newsletter '),
(337, 'title', 0, 1, ' newsletter '),
(341, 'slug', 0, 1, ' temp dhdvmlyvchxqafpfluxcqyxmbkmemjqokfmw '),
(341, 'title', 0, 1, ''),
(346, 'slug', 0, 1, ' temp yizqrsdgtiqthwtkjdbxrmkthyxqfrguapvs '),
(346, 'title', 0, 1, ''),
(349, 'slug', 0, 1, ' privacy policy '),
(349, 'title', 0, 1, ' privacy policy '),
(351, 'slug', 0, 1, ' terms of use '),
(351, 'title', 0, 1, ' terms of use '),
(354, 'slug', 0, 1, ' tilen poje '),
(354, 'title', 0, 1, ' tilen poje '),
(356, 'slug', 0, 1, ' tilen poje '),
(356, 'title', 0, 1, ' tilen poje '),
(358, 'slug', 0, 1, ' tilen poje '),
(358, 'title', 0, 1, ' tilen poje '),
(363, 'alt', 0, 1, ''),
(363, 'extension', 0, 1, ' png '),
(363, 'filename', 0, 1, ' images 2025 03 14 222520 wovp png '),
(363, 'kind', 0, 1, ' image '),
(363, 'slug', 0, 1, ''),
(363, 'title', 0, 1, ' images '),
(365, 'slug', 0, 1, ' temp kupeeppejyszqaknsqsdtjulqzbmgyffxekg '),
(365, 'title', 0, 1, ''),
(366, 'slug', 0, 1, ' temp bvguobncduzxvpkwyzzpbomrmlksxqyutidj '),
(366, 'title', 0, 1, ''),
(372, 'slug', 0, 1, ' temp mxhkufbonqchyytteephffwnecygqwfuhmqq '),
(372, 'title', 0, 1, ''),
(373, 'slug', 0, 1, ' temp aiwxnqouoeptogpffqkbhjtdlwqtaaqfcxiq '),
(373, 'title', 0, 1, ''),
(381, 'alt', 0, 1, ''),
(381, 'extension', 0, 1, ' png '),
(381, 'filename', 0, 1, ' valentina karima pic png '),
(381, 'kind', 0, 1, ' image '),
(381, 'slug', 0, 1, ''),
(381, 'title', 0, 1, ' valentina karima pic '),
(406, 'slug', 0, 1, ' temp dpakdwzxyrketkvubydqdaznauoiwomhdbaq '),
(406, 'title', 0, 1, ''),
(415, 'slug', 0, 1, ' temp ssxznmqusqgtkplllcpfcqfdqgoxlcpztwva '),
(415, 'title', 0, 1, ''),
(420, 'slug', 0, 1, ' temp vfgatbhbsswhuobyijebivekrlpbfukelnhw '),
(420, 'title', 0, 1, ''),
(425, 'slug', 0, 1, ' temp kikokkedfqednquwmpbozzjxhmnsineyxzkp '),
(425, 'title', 0, 1, ''),
(443, 'slug', 0, 1, ' temp ltyscrgquixizmolicbemdoczykmibzqqyib '),
(443, 'title', 0, 1, ''),
(449, 'slug', 0, 1, ' temp gnuaiijypqusdvqqamswbktbisgtefvutxiw '),
(449, 'title', 0, 1, ''),
(453, 'alt', 0, 1, ''),
(453, 'extension', 0, 1, ' png '),
(453, 'filename', 0, 1, ' event pic png '),
(453, 'kind', 0, 1, ' image '),
(453, 'slug', 0, 1, ''),
(453, 'title', 0, 1, ' event pic '),
(463, 'alt', 0, 1, ''),
(463, 'extension', 0, 1, ' png '),
(463, 'filename', 0, 1, ' event pic 2025 03 19 102235 uobs png '),
(463, 'kind', 0, 1, ' image '),
(463, 'slug', 0, 1, ''),
(463, 'title', 0, 1, ' event pic '),
(470, 'alt', 0, 1, ''),
(470, 'extension', 0, 1, ' png '),
(470, 'filename', 0, 1, ' event pic2 png '),
(470, 'kind', 0, 1, ' image '),
(470, 'slug', 0, 1, ''),
(470, 'title', 0, 1, ' event pic2 '),
(492, 'slug', 0, 1, ' epr therapy days 3 2 '),
(492, 'title', 0, 1, ' epr deepening dat '),
(493, 'slug', 0, 1, ' temp gbibvotejprtlqudmozjdyqzovcginqztbyg '),
(493, 'title', 0, 1, ''),
(494, 'slug', 0, 1, ' temp jkcpzlctmcleljndejycdkwjyudzxdvkuhzu '),
(494, 'title', 0, 1, ''),
(532, 'slug', 0, 1, ' bojan sumrak '),
(532, 'title', 0, 1, ' bojan sumrak ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT 0,
  `maxAuthors` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `previewTargets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`previewTargets`)),
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `maxAuthors`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2025-03-13 20:45:36', '2025-03-13 20:45:36', NULL, '98b9fa03-bce6-4e8d-934d-53c9202cf2e6'),
(2, NULL, 'Inspirations', 'inspirations', 'channel', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2025-03-13 23:07:01', '2025-03-13 23:07:01', NULL, 'bcba9386-e72b-4149-9cad-8d09a8d484f2'),
(3, NULL, 'Events', 'events', 'channel', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2025-03-13 23:57:35', '2025-03-13 23:57:35', NULL, '22e0a339-a048-4547-94a6-c3d53a4a6523'),
(4, NULL, 'All events', 'allEvents', 'single', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2025-03-14 01:06:46', '2025-03-14 01:06:46', NULL, 'c3957b4d-40a6-4289-866b-41ae4874af42'),
(5, NULL, 'About me', 'aboutMe', 'single', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2025-03-14 02:00:30', '2025-03-14 02:00:30', NULL, 'fbf1838b-6239-49f2-bcf4-c98412813028'),
(6, NULL, 'My work', 'myWork', 'single', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2025-03-14 02:02:05', '2025-03-14 02:02:05', NULL, 'd0a1cff7-d09f-4010-a16e-1f73ee2993bb'),
(7, NULL, 'EPR', 'epr', 'single', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2025-03-14 02:06:50', '2025-03-14 02:06:50', NULL, '05d9af86-c1bf-46ee-a5fa-37450aa42e78'),
(8, NULL, 'All inspirations', 'allInspirations', 'single', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2025-03-14 06:00:16', '2025-03-14 06:00:16', NULL, 'f8b207c1-f9ae-4559-9ed1-c16736ec2a67'),
(9, NULL, 'Newsletter', 'newsletter', 'single', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2025-03-14 06:04:39', '2025-03-14 06:04:39', NULL, 'cc7fcca0-3053-4bca-85b8-873f7c668353'),
(10, NULL, 'Privacy policy', 'privacyPolicy', 'single', 1, 1, 'all', 'end', '[{\"label\":\"Primary entry page\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, 'bf2f5bc2-6f9e-43bf-a077-04c031ffad09'),
(11, NULL, 'Newsletter subscribers', 'newsletterSubscribers', 'channel', 1, 1, 'all', 'end', '[{\"label\":\"Primary entry page\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, '5ab75c5d-c8c5-4895-a5dc-1939062b0c25'),
(12, NULL, 'Terms of use', 'termsOfUse', 'single', 1, 1, 'all', 'end', '[{\"label\":\"Primary entry page\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, 'b04c75fe-adfc-4caa-ba39-1fccca412c0a'),
(13, NULL, 'Event registrations', 'eventRegistrations', 'channel', 1, 1, 'all', 'end', '[{\"label\":\"Primary entry page\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2025-03-14 21:59:01', '2025-03-14 21:59:01', NULL, 'efcdaba7-ebcc-4c3b-93af-6444a803da64');

-- --------------------------------------------------------

--
-- Table structure for table `sections_entrytypes`
--

CREATE TABLE `sections_entrytypes` (
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections_entrytypes`
--

INSERT INTO `sections_entrytypes` (`sectionId`, `typeId`, `sortOrder`, `name`, `handle`) VALUES
(1, 2, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 1, NULL, NULL),
(6, 2, 1, NULL, NULL),
(7, 2, 1, NULL, NULL),
(8, 2, 1, NULL, NULL),
(9, 2, 1, NULL, NULL),
(10, 2, 1, NULL, NULL),
(11, 16, 1, NULL, NULL),
(12, 2, 1, NULL, NULL),
(13, 15, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', 'index', 1, '2025-03-13 20:45:36', '2025-03-13 20:45:36', 'a543554c-ab09-41ba-86be-9709d711bab8'),
(2, 2, 1, 1, 'inspiration/{slug}', 'index', 1, '2025-03-13 23:07:01', '2025-03-13 23:57:44', 'b8b63997-3436-4d09-a6e3-89717ad1b048'),
(3, 3, 1, 1, 'event/{slug}', 'index', 1, '2025-03-13 23:57:35', '2025-03-13 23:57:35', '0d56dae4-d2ef-4c01-a2ff-992038588aa5'),
(4, 4, 1, 1, 'events', 'index', 1, '2025-03-14 01:06:46', '2025-03-14 01:06:46', 'f95ad7c2-1c01-4cc6-bd47-f1467ad20462'),
(5, 5, 1, 1, 'about-me', 'index', 1, '2025-03-14 02:00:30', '2025-03-14 02:00:30', '5bd1ecd4-97c0-49d1-85df-43b05bf2adcf'),
(6, 6, 1, 1, 'my-work', 'index', 1, '2025-03-14 02:02:05', '2025-03-14 02:02:05', '49d29dd5-2eb0-49ee-821d-695b36c01e96'),
(7, 7, 1, 1, 'embodied-psychodynamic-resonance', 'index', 1, '2025-03-14 02:06:50', '2025-03-14 02:06:50', '8c63a86a-01f5-44fe-aaa5-d41090ac6931'),
(8, 8, 1, 1, 'inspirations', 'index', 1, '2025-03-14 06:00:16', '2025-03-14 06:00:16', 'c60cfe4e-d9ce-4c5e-9f1f-18f0771b7f41'),
(9, 9, 1, 1, 'newsletter', 'index', 1, '2025-03-14 06:04:39', '2025-03-14 06:04:39', 'd7d88c26-ee29-46b7-a928-0fb47fd0ed8a'),
(10, 10, 1, 1, 'privacy-policy', 'index', 1, '2025-03-14 21:59:01', '2025-03-14 21:59:01', '5d9f373f-8ffd-44de-9fed-bf6204cd1e57'),
(11, 11, 1, 1, 'newsletter-subscribers/{slug}', 'newsletter-subscribers/_entry.twig', 1, '2025-03-14 21:59:01', '2025-03-14 21:59:01', '23914ad1-307e-4b92-9884-6dc52f6b2a91'),
(12, 12, 1, 1, 'terms-of-use', 'index', 1, '2025-03-14 21:59:01', '2025-03-14 21:59:01', '8117df62-e386-4ceb-a8b4-b6fff4081f0b'),
(13, 13, 1, 1, 'event-registrations/{slug}', 'event-registrations/_entry.twig', 1, '2025-03-14 21:59:01', '2025-03-14 21:59:01', '18023890-b178-423a-a207-ca96ce5c62bb');

-- --------------------------------------------------------

--
-- Table structure for table `seo_redirects`
--

CREATE TABLE `seo_redirects` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `type` enum('301','302') NOT NULL,
  `siteId` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_sitemap`
--

CREATE TABLE `seo_sitemap` (
  `id` int(11) NOT NULL,
  `group` enum('sections','categories','productTypes','customUrls') NOT NULL,
  `url` varchar(255) NOT NULL,
  `frequency` enum('always','hourly','daily','weekly','monthly','yearly','never') NOT NULL,
  `priority` float NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, '4_KtcJqlOv8jsH2jVpcz1MUr8b2U-cCdehwl9Z-OcFiYkwMWsXR9BLMe4W2mPvSuc5CgKDPWTm-y8j_S7pIv3hFQDP0pdHhsQno-', '2025-03-14 05:59:22', '2025-03-14 10:24:19', '87f98e7b-3eca-490b-85e7-3d1aad45dc7b'),
(4, 1, 'lDHTD01yemTd1IyQKXzzs9gfuAF6If6xKdnToOvsbzACBUjWoPTW_sSOygVVPg87mHYn9-anfxtWowPTXAl1CuAoW2WG2ybb0823', '2025-03-14 10:53:47', '2025-03-14 19:25:55', 'b434e4a6-0654-476f-b6fa-40e0bffbe653'),
(5, 1, 'pbcwM13pA2OKfFbHg7tv8mLfcW5Y0KdtXK4HNJOLdpQvSVJyHbxUAMancugcZdNFny4x1eRCLOBn6R6gQ4ALPyWFXC_2rQi3rr64', '2025-03-14 10:53:57', '2025-03-14 12:03:57', '0a4f3fce-cf6b-4cd8-bd77-d19c702438a4'),
(6, 1, 'vkP1q31V3eo2Fdgpipyx_Yr_YgQ53bVzj7s9dY4gLSaZhwiNvUhO9j2Rfgir0QhHcqFjhzGoGyWoH1i-xdDVIo1-KQQnjQT1dhz5', '2025-03-14 12:03:57', '2025-03-14 12:04:03', '54ef0b13-7ae7-422a-9b3a-16e5d4ba6f02'),
(7, 1, 'utwriCAygYgj2SK5bQn0I-uwZyBP0AGtjjz4NvhEXpu3gqTfEXC-QI3s_f_jnNBZ2tYG-AaKydgydMsuhpF6at_yx-GMriX3Jqxc', '2025-03-14 19:25:55', '2025-03-14 19:58:32', 'ff4ae26a-12f5-4823-836a-01346e2fe15f'),
(8, 1, '4K8sWsdSZgRENVDJs49xV2H7xAvz_WVoi8zniQeFN0ugsgcQRwtHFVwZE6-WxxNk0dOu4p4_1gahFeMSR-9KnhLWF9cOQRA3g8BR', '2025-03-14 19:58:32', '2025-03-14 21:58:47', '5b741a0f-ac58-478a-b7b3-f5b62c624449'),
(9, 1, 'nL3baXxtRJIZqDDBk5C7g5Dp2t-l1pIG_LIm04OAiKzoSrwaPlyVLcsz2smX9dM1_GCf-3RzA0WnXNZ-RAfidpfCOtj7t8oxquck', '2025-03-14 21:58:47', '2025-03-16 11:51:55', '911dbfcf-481a-465e-b250-8bbcae03facc'),
(10, 1, 'WjunlXl8pipUmsf340_2QDwTqipx-5yBXHSM473Q-7kig5M6-era2ziQxV4Frjs8Bpn9mCnCbwn-tnRZQvcFLw45EnCf44-drlxm', '2025-03-16 11:51:55', '2025-03-16 12:03:57', '4e5443e6-0487-4be3-814a-6526daceba46'),
(11, 1, 'inBwkFxbuJM1D2G5sOry5LUW52_tH_kY3gmqVfkkFs8sg0II1DWhn_WJ-z_6SGn4SH9BvB-kQnKC7KNLtKiixOdDnAAF5XXiHitI', '2025-03-16 12:05:05', '2025-03-16 12:05:38', '20014f5b-898c-4602-a991-aca87e5a6080'),
(12, 1, 'VvH_ZaaGVi31fLqJ4GiLJ75KjqPyhMMLx5xCcf6j4ReIJRywdQ9NiU-5uVMynwbCNAmDKQxRb4QwQ1i92pgRYAFr5UVq8Ahkp-rA', '2025-03-19 10:03:46', '2025-03-19 14:36:48', 'a81dca25-c34d-49b8-907e-7b3cb97b5d8b'),
(13, 1, 'P4z-9CL2rGE7uhqvzBAZR0L9_SoGQKuBm5rEcG6JGR_wdsoYoSt6iYTDcR-RBurt4PIo2KeQsE34bTL5BfRPLxjM9BnaaKQivFTk', '2025-03-19 14:36:48', '2025-03-20 07:13:51', 'e004d773-3c34-46ce-b3be-c3c6d97afa5b'),
(14, 1, 'YccoIKu9vXbqvsJjh-Dao3zETw0bdiMiE9ceR7OAyml89hAzlyKyXbMByKPyCkfS4DGkqznpKZSlhLasZNQMaqddHQx7fbp5_Sh4', '2025-03-20 07:13:51', '2025-04-02 13:19:45', '43e44585-fb24-4172-bc79-4cb100ea0a03'),
(15, 1, 'Vs2kiYo7LzDYsTI8DjkU1tj6InbqYOeisSqLRzLeBWcrkDumfR7BhM9ikJdHEvXFtO8TfViFLaxz8_b2ePoiNCOVGqji2suu9ykW', '2025-03-20 09:08:30', '2025-03-20 09:08:30', '18668cd3-9636-48d5-bcbe-1e6cd64bf4e6'),
(16, 1, 'IdEsfPltKsc4x03CDI3lca6PjYDqlo_kmqI6R3tyKIF9QgPVmV1FGIxDS9zvwl9JlA3xemJE1YLFdPI0VcR_Xe3a88pxdfAgdfnG', '2025-03-26 10:23:19', '2025-03-26 11:31:31', '382830a6-fb2a-4123-8642-0d299693e86a'),
(17, 1, 'x7Mw8cHHJvmz0EdL6XgGDazhgvMRVwXuLbWNy0hjKbID2IhkRYDQF_pvznoAzpyKB23jlrcT__DRuwZU4J2YFhw8-6iGi0v5GKFD', '2025-03-26 12:55:59', '2025-03-26 16:28:51', '35e6d3ae-73be-43a7-8425-3f47313b1178'),
(18, 1, 'eUAQbdyoouuuS6JczGb3Ap7cEn-Cp3fHO56Kt4zLDi8r10w-ExAPQGhzurqm2hQKyfI0p0fXLjSgQQ-PZ25oNv8O7fnqgbFAwRaO', '2025-03-26 16:28:51', '2025-03-26 16:29:53', 'ecac5965-34af-42ff-97fc-e4f5960ecbf0'),
(19, 1, '5Ab0vT6W_L1wnZGR2ukEscfrMjSgiP_VmR9mpN_i4DhQIY5BtqRfPty8nWhWT1QlHvlW8eayBfBCV8PFP01WLOJdneXWi9i8N2ni', '2025-04-02 13:19:45', '2025-04-07 08:00:53', '80193d4e-bac5-4bc6-a299-da31c4687e3b'),
(20, 1, 'Dr2FX2-A6aaEOMd0YkR6hZvP_1v6YJ6nO43zCfT9MFMOB-dFKvU210aEsejibgW4ZkpyK85FsZu01ZyFA5EtAkp_BJ-k-I6qtzE6', '2025-04-07 08:00:53', '2025-04-07 08:00:53', 'b9c8e7e3-ad90-4383-bce9-1e2c9d1093ea');

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Karima Hočevar', '2025-03-13 20:24:07', '2025-03-14 21:59:01', NULL, '57c3e1d3-da51-4a25-b8f9-d57bfbe8dcc8');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` varchar(255) NOT NULL DEFAULT 'true',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 0,
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(5) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, '1', 'Karima Hočevar', 'default', 'en', 1, '$PRIMARY_SITE_URL', 1, '2025-03-13 20:24:07', '2025-03-13 21:02:33', NULL, '0645712b-5f0e-4ede-b288-136194b2d349');

-- --------------------------------------------------------

--
-- Table structure for table `sso_identities`
--

CREATE TABLE `sso_identities` (
  `provider` varchar(255) NOT NULL,
  `identityId` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED NOT NULL,
  `rgt` int(10) UNSIGNED NOT NULL,
  `level` smallint(5) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(5) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text DEFAULT NULL,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'btr8ECPpCQ6ULzsC0_eVix8OHgTvl2vi', '[\"preview\\/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"canonicalId\":206,\"siteId\":1,\"draftId\":null,\"revisionId\":null,\"userId\":1}]', NULL, NULL, '2025-03-20 10:10:40', '2025-03-19 10:10:40', '2025-03-19 10:10:40', '3fddbf8d-64d8-48e4-b713-f6718923140d');

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`preferences`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\": \"sl-SI\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `affiliatedSiteId` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT 0,
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT 0,
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `photoId`, `affiliatedSiteId`, `active`, `pending`, `locked`, `suspended`, `admin`, `username`, `fullName`, `firstName`, `lastName`, `email`, `password`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`) VALUES
(1, NULL, NULL, 1, 0, 0, 0, 1, 'admin', NULL, NULL, NULL, 'poje.tilen@gmail.com', '$2y$13$njzsofhskA3R2Y0g03ht..p3aWgR2HhfleKILy9neLpUyBV9gmNe2', '2025-04-07 08:00:53', NULL, NULL, NULL, '2025-03-26 12:55:54', NULL, 1, NULL, NULL, NULL, 0, '2025-03-13 20:24:07', '2025-03-13 20:24:07', '2025-04-07 08:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2025-03-13 21:36:18', '2025-03-13 21:36:18', 'f7ae5aea-feea-43a8-a594-3c37ae392869'),
(2, NULL, NULL, 'Temporary Uploads', NULL, '2025-03-13 22:08:39', '2025-03-13 22:08:39', 'abda571c-0323-48cd-a05b-72de787e62a9'),
(3, 2, NULL, 'user_1', 'user_1/', '2025-03-13 22:08:39', '2025-03-13 22:08:39', '2e80a598-ebdc-4dba-bcc6-dd1f40d1cdba');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fs` varchar(255) NOT NULL,
  `subpath` varchar(255) DEFAULT NULL,
  `transformFs` varchar(255) DEFAULT NULL,
  `transformSubpath` varchar(255) DEFAULT NULL,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text DEFAULT NULL,
  `altTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `altTranslationKeyFormat` text DEFAULT NULL,
  `sortOrder` smallint(5) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `fs`, `subpath`, `transformFs`, `transformSubpath`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `altTranslationMethod`, `altTranslationKeyFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 3, 'Images', 'images', 'localFilesystem', 'images', '', 'transforms', 'site', NULL, 'none', NULL, 1, '2025-03-13 21:36:18', '2025-03-13 21:36:18', NULL, '41ea246c-1f5f-4cd8-86a8-790cb170ac60');

-- --------------------------------------------------------

--
-- Table structure for table `webauthn`
--

CREATE TABLE `webauthn` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `credentialId` varchar(255) DEFAULT NULL,
  `credential` text DEFAULT NULL,
  `credentialName` varchar(255) DEFAULT NULL,
  `dateLastUsed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(5) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(4) DEFAULT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`settings`)),
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"limit\": 10, \"siteId\": 1, \"section\": \"*\"}', 1, '2025-03-13 20:40:21', '2025-03-13 20:40:21', 'd69889a1-5e98-4251-9d30-af6a23c2e9cd'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2025-03-13 20:40:21', '2025-03-13 20:40:21', '87692f93-59dc-4f3a-ac8a-9fe2d4458b5b'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2025-03-13 20:40:21', '2025-03-13 20:40:21', 'e949f514-0dda-4cbb-a4bd-469a251744db'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\": \"https://craftcms.com/news.rss\", \"limit\": 5, \"title\": \"Craft News\"}', 1, '2025-03-13 20:40:21', '2025-03-13 20:40:21', '029fe4ff-3186-4600-8911-381c1ef785fc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wtfimjkjmxlhdetjoudxwqsgbyajfrzghfxx` (`primaryOwnerId`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hajwlipmqiypxncnpkbgvqottjjmjnbyvskb` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `idx_mqavfwydeepeffagzzbxqmxfgsjjdqucvaxm` (`dateRead`),
  ADD KEY `fk_roiawexehuhajhmnnkbesdqdtraxfkwjwdeh` (`pluginId`);

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bkhkatnlfambtcjavijazvmkweijijrftdcq` (`sessionId`,`volumeId`),
  ADD KEY `idx_dnxujulralgbzivymalmweoyyowvcucustcc` (`volumeId`);

--
-- Indexes for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vjqiqepogohxyoqanonjhjrckmqzagskztyd` (`filename`,`folderId`),
  ADD KEY `idx_jgrbzeullffovnkvypvnryccxcrdchgnomwa` (`folderId`),
  ADD KEY `idx_wsbtjwoajfcnrdthpvsjyqojkqvzqbrpbvjx` (`volumeId`),
  ADD KEY `fk_xumhsbbmjqgytmpvjtezqtvddlaewbwaogtu` (`uploaderId`);

--
-- Indexes for table `assets_sites`
--
ALTER TABLE `assets_sites`
  ADD PRIMARY KEY (`assetId`,`siteId`),
  ADD KEY `fk_ydqetvwrfuhbnlwjznvctyfryciycillcbgh` (`siteId`);

--
-- Indexes for table `authenticator`
--
ALTER TABLE `authenticator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blkfgupocaeybxwdgchikynllhvpsgtfpufc` (`userId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_qbanpholmvlelfrbznuirvazycbydyinbokp` (`groupId`),
  ADD KEY `fk_cxxixvxumlgzntpmcwirneqjzawzgbepxhpn` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_iefxpyaylnehivjcjjdbaatanabesqdytqis` (`name`),
  ADD KEY `idx_iblxtuxymgabgltkbxiuxmzgbdxpotqquurx` (`handle`),
  ADD KEY `idx_inkodqchqxqwgylsjlpfgokfdyactfzmzwwz` (`structureId`),
  ADD KEY `idx_lvqwnkhbogqqnkulklswdepimqjmfrnkmrzz` (`fieldLayoutId`),
  ADD KEY `idx_pbvpidexsccebjmvtalirgckwgsytvilebrb` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_cjkkdhmxdsgphvysliwxffgiibohyeuaitna` (`groupId`,`siteId`),
  ADD KEY `idx_cexlvscajnlvpztryvdbggreycbtgbkmqhqo` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `idx_vjyihofrtnqkuiyogkbxgucxavgkmvnnufwm` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_ywmmciauyvhbvkxikkongajjanzcfxbgusma` (`siteId`),
  ADD KEY `fk_iodbgbcneaepwynnzxswvwafeqxocelpgjaj` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`,`layoutElementUid`),
  ADD KEY `idx_gjerbncjzwiduylbenchpogjkomhtrjhgkmh` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_ekbywlmpeaxakyrgerufolsdecahnjmzrjzu` (`siteId`),
  ADD KEY `fk_gsjvdrxqhtkysqgpvyvlvqaoqglrxburmvor` (`fieldId`),
  ADD KEY `fk_mmetveixnasabtwahrvcexgolfzenygvguig` (`userId`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nhcjzzosutdwggpcvydjelqsiqvgbosexuhi` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_dplshdvfluydvsgiisuvehzpwkmjjyolxkiy` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yktrkivrkmtuuqcchxhxiuoddiopttpgmdxl` (`creatorId`,`provisional`),
  ADD KEY `idx_iqdvwuikecbhfkwacgxjmwfttfqwnkjdrzwy` (`saved`),
  ADD KEY `fk_gbqeqbsjpolypacgwmalkchsxkcjlmebxnry` (`canonicalId`);

--
-- Indexes for table `elementactivity`
--
ALTER TABLE `elementactivity`
  ADD PRIMARY KEY (`elementId`,`userId`,`type`),
  ADD KEY `idx_anpwykesldakrodpavayonxbqobmudmeqbzs` (`elementId`,`timestamp`,`userId`),
  ADD KEY `fk_tbjdtwnahpjtyxcdfyewwoyiakymqrafoamq` (`userId`),
  ADD KEY `fk_ocetpmtjnkykmgjnvfqrtwjtilthcgdwuwdn` (`siteId`),
  ADD KEY `fk_xqbvpeqxihnqywnhjyzbctqeambrcdovailq` (`draftId`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vswsvbmmkgnvieduihuvkpbybpofoyvclbzr` (`dateDeleted`),
  ADD KEY `idx_ukcjjhckripbmaupoalbmhixbtzactpregls` (`fieldLayoutId`),
  ADD KEY `idx_iqlocmtgsbogecdmwjzwvtzrgeddkjebtecx` (`type`),
  ADD KEY `idx_osulssgxvmpwrveisxdfdaajftovdfflhzub` (`enabled`),
  ADD KEY `idx_fkqncwctcivbvhzoswovxhmrmsagwroakyqk` (`canonicalId`),
  ADD KEY `idx_ejuugcsxoxeyjkrakldyccgddmfvlqedfwfc` (`archived`,`dateCreated`),
  ADD KEY `idx_hmjbiqaohozteydobwhhmdfkbsmifjdygdjg` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `idx_ethsaztfimisuohsfqrzkngnmbedusuowgue` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`),
  ADD KEY `fk_baxpkeskfdverwyzpxwvuiosfwcxqtprcjio` (`draftId`),
  ADD KEY `fk_xirlonrpbknrzzhjkzsiewjgysidnkkfugoy` (`revisionId`);

--
-- Indexes for table `elements_bulkops`
--
ALTER TABLE `elements_bulkops`
  ADD PRIMARY KEY (`elementId`,`key`),
  ADD KEY `idx_bkmzwuebosapnkzmttnerusvvgclodxvqzbj` (`timestamp`);

--
-- Indexes for table `elements_owners`
--
ALTER TABLE `elements_owners`
  ADD PRIMARY KEY (`elementId`,`ownerId`),
  ADD KEY `fk_bryeoxjnijoxhrrjofplrpmpanboqdxaobfh` (`ownerId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_erfvtnwmgqympcntcbgsapykdhzlbufkzcrv` (`elementId`,`siteId`),
  ADD KEY `idx_bgxjcmablrudefablcftclpsesaewmdxfdva` (`siteId`),
  ADD KEY `idx_tcqxeabznrrjpnouqyrtvcxgiaywexupydmk` (`title`,`siteId`),
  ADD KEY `idx_epggvbfgtgovmobpplnnbnbdenmcfarhwiko` (`slug`,`siteId`),
  ADD KEY `idx_rogcbmhjoftybpbkccqbqiiylhoysgvplgik` (`enabled`),
  ADD KEY `idx_qoinoskdzatyddolqzwqyxlaqllrjnuxohls` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ukgqwhknsrruclsgxkeyuiawjhlkmgkrlvsj` (`postDate`),
  ADD KEY `idx_xgpkkknzjdofjsnyixgizhmafteaqwdhbzwx` (`expiryDate`),
  ADD KEY `idx_ebdmsyqdajoisvxjodxsilvorusasdepyajd` (`sectionId`),
  ADD KEY `idx_incalxkhcknqncviarfsktcqzclpxuekthlf` (`typeId`),
  ADD KEY `idx_ebfioaoanojgqaywgvydwgekoiaywuzrmndd` (`primaryOwnerId`),
  ADD KEY `idx_wwvtirmmgcdclqxejszlsdcpfggewoxzppiw` (`fieldId`),
  ADD KEY `fk_vxlwdshnctcyghotxsmoyhvjunfjbgcvirhv` (`parentId`);

--
-- Indexes for table `entries_authors`
--
ALTER TABLE `entries_authors`
  ADD PRIMARY KEY (`entryId`,`authorId`),
  ADD KEY `idx_tgrpoxqfgjzjmbnoytqlplligkyywtdjumuo` (`authorId`),
  ADD KEY `idx_uzvkhcplbqdtbvwsfufklbbpmwgwtnwvkpkn` (`entryId`,`sortOrder`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_exfzjbtigwiwkdteslldehstncgqqhqlxjzx` (`fieldLayoutId`),
  ADD KEY `idx_jopsigzckzwpoaviynmmlduvybfrpapkegpd` (`dateDeleted`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pcmcpbicbmnpwhbflfrxgawiubfytuvxopck` (`dateDeleted`),
  ADD KEY `idx_kyapbwhixracskseurplnnoxvtywefgtksyp` (`type`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pmuzdlzleguomhqfbvflzidvqnjzdjsveptv` (`handle`,`context`),
  ADD KEY `idx_ndtfgoyeihvqplioicomlbzghhjqtzljkvxa` (`context`),
  ADD KEY `idx_fdtbiqzptrcscemlufvahlkppbcwkolqhhzd` (`dateDeleted`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rlosudfxznnvkuhkqzmwvqplpjnbrylwzgba` (`name`),
  ADD KEY `idx_ygjqyoefviipshfhdqjyujvhaayyotdfayle` (`handle`),
  ADD KEY `idx_egwrczackbsfumdyhvjokezkhyjhcewnetlp` (`fieldLayoutId`),
  ADD KEY `idx_cuoojpxlzvfipiiveqbrdwnpgivaepfokuzk` (`sortOrder`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_qlnqpthbmbgxizizsdesvkldqufptwjdxbgq` (`accessToken`),
  ADD UNIQUE KEY `idx_yvpyzshsdwydnvqxdcfherqdordznzupicol` (`name`),
  ADD KEY `fk_nwcqlltkvgbqydwzadfkjrbpqvlheetpnfrk` (`schemaId`);

--
-- Indexes for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ujggbimxskxgyqtarbmpkhysizvcewxkwlzo` (`assetId`,`transformString`);

--
-- Indexes for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zmzpyuzicefrhiuygopapiveliwgalhyzzfs` (`name`),
  ADD KEY `idx_jxakqjczagyohfjlqygykhvyzgucrrkjdfsz` (`handle`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ekrjddqiyffvsyjljfnngfcclhhssasfrcen` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_eccjkfhcmbyrjymdyzuoawyhoptabnkapqpo` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uevmexenbzoipfotmchcjeorbiysjrqxsacn` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `idx_ybfyhzubppqacgpmfzshmtvfyfwbkclyzxdj` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `recoverycodes`
--
ALTER TABLE `recoverycodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_xvxcifttgaqtjcblajuuaegndftuuvvdsyxx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `idx_logasslxieaucdciulylhrbbpnpycliebvlj` (`sourceId`),
  ADD KEY `idx_qvhadywgwiwoduyzcvcpsodpzjunrxtfnyjo` (`targetId`),
  ADD KEY `idx_txzctkzfdynccpnnqlpjubuovuzlnnvvsern` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_flmcswzeimxrofjjxtgupcerllcyerkvpjgn` (`canonicalId`,`num`),
  ADD KEY `fk_qoaptgvcqwzgddhelhjzdfyhzkgwocukkbxi` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `idx_dhbxfmfgzxphfjzllddvcpuxzmwyockvdwrx` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tqlblxjpbryqlrhkcerzvqcitzitvfemwymp` (`handle`),
  ADD KEY `idx_sahnwmsrbgivlehglkqzcysbsigklcusuuwt` (`name`),
  ADD KEY `idx_myecbvwakozlvwipfnyrsfbmzxghfkatsega` (`structureId`),
  ADD KEY `idx_cmukkcttpksbslkrwsupjjokjjbjapqzivkz` (`dateDeleted`);

--
-- Indexes for table `sections_entrytypes`
--
ALTER TABLE `sections_entrytypes`
  ADD PRIMARY KEY (`sectionId`,`typeId`),
  ADD KEY `fk_wckzcmymaihypfxcjpcboxqzfjiygqrconhh` (`typeId`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_yteujzkwwchmfdztntsmvcirepqalfwuspbe` (`sectionId`,`siteId`),
  ADD KEY `idx_lwluxnuibpdxgqfdrylqtlnqbfalpmzpbnxf` (`siteId`);

--
-- Indexes for table `seo_redirects`
--
ALTER TABLE `seo_redirects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_sitemap`
--
ALTER TABLE `seo_sitemap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ewhnpsjvepicedkpvicxbwneeglajrwpimjw` (`uid`),
  ADD KEY `idx_fnfwsbadvoghqnsmfzmcadyhfuhaznglymqe` (`token`),
  ADD KEY `idx_prgomnccyeekotyvfvuicbxnxhxbvgmfidbi` (`dateUpdated`),
  ADD KEY `idx_soahojlzvtntedliuvvbxcuskpwyndwglise` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_vkwtsgudpsnizeefjfgpxlsurkifabefvorq` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hecosvhcmfykccvbsylgjkzjarxewixubnic` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lgbkrrsyuehyaqdongjgtcerkgbwmqlzcscx` (`dateDeleted`),
  ADD KEY `idx_ijcocavxvwekkwsvfernaplbhixdxbjkrbls` (`handle`),
  ADD KEY `idx_rqbckpdsxwnlilkyntmzakhgtmmybjzprfrd` (`sortOrder`),
  ADD KEY `fk_cjkbmzyhbrmriqmgdfwhfrybkrevzkpurdqv` (`groupId`);

--
-- Indexes for table `sso_identities`
--
ALTER TABLE `sso_identities`
  ADD PRIMARY KEY (`provider`,`identityId`,`userId`),
  ADD KEY `fk_omdxgmlrysjpgcywblomregejhmchmhjoxxj` (`userId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uqzdkfzhjlkdxowpykzipfinqqndkawwkres` (`structureId`,`elementId`),
  ADD KEY `idx_nnkcryjthbikxpdvvusaggugnhceizpoamdn` (`root`),
  ADD KEY `idx_revofjkpoecczjqbewafghasxyuoxgubidza` (`lft`),
  ADD KEY `idx_syqfncomjjltqjlhceuztwybxqdzbzbdmntw` (`rgt`),
  ADD KEY `idx_fwflajhlrjxjifnmaedgmisfmnfqxdxzmoti` (`level`),
  ADD KEY `idx_cyywvagpfuohanlnkllupxwyofibpiyqgtmb` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ewjlekaazlbnccodtndleyyrvmbwrrjrangj` (`dateDeleted`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_edayfoelvbactlbifodplilvigtzfmkinjhp` (`key`,`language`),
  ADD KEY `idx_hqwdslsojabweqmbhxstjtydfpvhiuqvjrmi` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yzjwylchrwylcjvqhjnhnxgpkwnsjqrzadon` (`name`),
  ADD KEY `idx_qsggwjxtmnjpoifiurbezdftdbdelxerpmuj` (`handle`),
  ADD KEY `idx_qdoatnozoucztlrvttenswtvjhcxirnjbuzv` (`dateDeleted`),
  ADD KEY `fk_cnyivefezgqdftiiwldfextpdnphxjjwtpuq` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fzhozmfsyyuvpaqqvjiufxnvjmdxzjztvguw` (`groupId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_cnbjigzwjyyhdxaxyltzplweaueellcjmaul` (`token`),
  ADD KEY `idx_hdpovsiiezisemkjfkbnowmekcucspvabvdo` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vyxiztwzonxrrhdpnmyvufvozkbtlwcrjnle` (`handle`),
  ADD KEY `idx_chhkszelgsqmqqzfdbbrxuuuahascwvtnshq` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_eqwkxubjokdpgreunlacvmzoqabukxsktchy` (`groupId`,`userId`),
  ADD KEY `idx_bbbcjcymorktjindstjmebejwuvflfmnaddi` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_yigdlsnmuhpddeixinskelxhrfjhxkrpfpnp` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_vzfsbnieehblyuvdwtypyrodmeirrccibskq` (`permissionId`,`groupId`),
  ADD KEY `idx_nqyfxuwtxzmyengcsiirmwwzbalccuubmkjz` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_digzszzwkgbreaoguodvyirqytshojfrsxvs` (`permissionId`,`userId`),
  ADD KEY `idx_pvdosybnndyqkcwmyuqlhlllxqtflzdgoweq` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bmgzzcuinqmthnmzpavvqtonykhbikunpoev` (`active`),
  ADD KEY `idx_keuseixzwgtjvjtmwcqfdwtulwuixzvzrzzf` (`locked`),
  ADD KEY `idx_jvfnvfyrhgejsjpmesxrfrfgyitrbmjxmzzk` (`pending`),
  ADD KEY `idx_bfajtetrgsyldpdhiyhganjmooalfzikeklu` (`suspended`),
  ADD KEY `idx_yrjdkyuwjuovuvjzwrxvtncxnfpkudouhnil` (`verificationCode`),
  ADD KEY `idx_eszpjufssolnyfvqeiryfsndymupsyftwyml` (`email`),
  ADD KEY `idx_jpjytoqgozhbjwenganxzeevchpgfujmpgnx` (`username`),
  ADD KEY `fk_rmqquavymesapoueawnfgypyqyujnhebltzc` (`photoId`),
  ADD KEY `fk_wxpjfcjuzensqozsskubfgubjmdnsxzfqiwt` (`affiliatedSiteId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_grxsqjdttdvqjkbxfdrhrksuaasfldkidyvy` (`name`,`parentId`,`volumeId`),
  ADD KEY `idx_bweawooahvhiboekxbmazsjcopardgxvzzvh` (`parentId`),
  ADD KEY `idx_enuzwmzbhkdoitjdacwhnobzcyijuagqtbab` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rqviwfmpqrntnxvuvpkvetmatloplmddioxk` (`name`),
  ADD KEY `idx_cifutzieiqcjfyndxlulfwmcgdgdugmqpbkn` (`handle`),
  ADD KEY `idx_swkgjqysscmurfvyrewipuyyrfcojbvcwihv` (`fieldLayoutId`),
  ADD KEY `idx_veasavtduqqtyxoubgttgtmwuynlhamdonua` (`dateDeleted`);

--
-- Indexes for table `webauthn`
--
ALTER TABLE `webauthn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_uqubbkijihwlyyfnfpybjwdggzasnuqklhhq` (`userId`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xmrufxjcfqymhpjaitojfwvvyomzbrsxxnwe` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authenticator`
--
ALTER TABLE `authenticator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1245;

--
-- AUTO_INCREMENT for table `recoverycodes`
--
ALTER TABLE `recoverycodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `seo_redirects`
--
ALTER TABLE `seo_redirects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_sitemap`
--
ALTER TABLE `seo_sitemap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `webauthn`
--
ALTER TABLE `webauthn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_ocyguphfapxwuhngdwodiwpvdqbwmmtmhjqy` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wtfimjkjmxlhdetjoudxwqsgbyajfrzghfxx` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `fk_roiawexehuhajhmnnkbesdqdtraxfkwjwdeh` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zttkvwenwbexaqjuskxdicqwlnkadadhvziz` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `fk_lsiaeflzgvuxqpnhumqrbzpiugwahfqzppbi` FOREIGN KEY (`sessionId`) REFERENCES `assetindexingsessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wnqjeinhcpswindmfdqgflbkhwzvemuylqzm` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `fk_djlydhouluppfzibxvcigjnxuywfalzczgox` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kxdivifazntsrojyszhmjocbbbgwpsumxodp` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sfuvahbyuypcjbntbsgrthxzpqueaomhaxjp` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xumhsbbmjqgytmpvjtezqtvddlaewbwaogtu` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `assets_sites`
--
ALTER TABLE `assets_sites`
  ADD CONSTRAINT `fk_jgtkhvaeuswwitcuwrkpyzkbcrynhknabljv` FOREIGN KEY (`assetId`) REFERENCES `assets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ydqetvwrfuhbnlwjznvctyfryciycillcbgh` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authenticator`
--
ALTER TABLE `authenticator`
  ADD CONSTRAINT `fk_blkfgupocaeybxwdgchikynllhvpsgtfpufc` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_ctemgtwlmqpvwcmyctubvcnulgyoikcrkytx` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cxxixvxumlgzntpmcwirneqjzawzgbepxhpn` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ecasipttnnbxqjuhtfszfzemrjkilbowumzy` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `fk_ebdccyskaspkdysfzznggyrfmcuzbgvdyjmx` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_pbwsxvechkrpctvxvqilndsbjoxdekwlcyjj` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `fk_ikmoltanpymlowfedzfgomhkzobwtpngyjzv` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mssdkjalgiizkubvxrbhpkqugvhynlfvxljs` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `fk_gyncrijjmvonhrflgprrbjwvdopbvfipublb` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_iodbgbcneaepwynnzxswvwafeqxocelpgjaj` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ywmmciauyvhbvkxikkongajjanzcfxbgusma` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `fk_ekbywlmpeaxakyrgerufolsdecahnjmzrjzu` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_gsjvdrxqhtkysqgpvyvlvqaoqglrxburmvor` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mmetveixnasabtwahrvcexgolfzenygvguig` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_qsonqqghpuljktkbhxmyszbhwabqhyemtwjv` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `fk_nhcjzzosutdwggpcvydjelqsiqvgbosexuhi` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `fk_gbqeqbsjpolypacgwmalkchsxkcjlmebxnry` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yajtmjljjiajtqddbzoftqpjnnjgfnkihbtt` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `elementactivity`
--
ALTER TABLE `elementactivity`
  ADD CONSTRAINT `fk_kcqljdmoklogncfngwzcezyxoefjggztjgoc` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ocetpmtjnkykmgjnvfqrtwjtilthcgdwuwdn` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tbjdtwnahpjtyxcdfyewwoyiakymqrafoamq` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xqbvpeqxihnqywnhjyzbctqeambrcdovailq` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `fk_baxpkeskfdverwyzpxwvuiosfwcxqtprcjio` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_gwuwzhafmceojftaewtopflvxwrzankzwfwd` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hkazzzazubodflphbfryuqvvdmnmqswoyrcg` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_xirlonrpbknrzzhjkzsiewjgysidnkkfugoy` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_owners`
--
ALTER TABLE `elements_owners`
  ADD CONSTRAINT `fk_bryeoxjnijoxhrrjofplrpmpanboqdxaobfh` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yxjznkkfdlwmmmpdgzikeevbmuhveakpnyfr` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `fk_gjpwlmsegmbezvxmqkrqucdpypxcnofxevqs` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rymjqmcyeupwncvkmqbmsrdyhzjyoopzwxdm` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_beumznjdrixqpbdyukxwsteyeojutiqczrhr` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kqduuorbhujpfwicpjvqtnmbkkbmnhqtfngt` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_packsudaitpzzjuqwbryubfesbkmcnsxorcg` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uxktnqsfdulsfvkybmouxgofvwwsafumabho` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vxlwdshnctcyghotxsmoyhvjunfjbgcvirhv` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_xyjncjxpjooxxiljjlawujcmyxjhbnhnrkjp` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entries_authors`
--
ALTER TABLE `entries_authors`
  ADD CONSTRAINT `fk_delerbeyffoiyayjbwxzxavdlcdkjacmjiip` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sscqnqtjljicwamglalnisnprwhfqhzltsuu` FOREIGN KEY (`entryId`) REFERENCES `entries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `fk_brrfrdnosqjzlypswtgzwlsktfvfxixyalqj` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `fk_fakwepzligqzswvwmcsklutefxxixfedszyg` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_imjihuwrxuumqgremklygbepedixjkudxcoe` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `fk_nwcqlltkvgbqydwzadfkjrbpqvlheetpnfrk` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `fk_ckmdfkrrffoeulhdviyurbuosecgqjvnlgat` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jetjlgeqhdhcayungyesavokmqkpvrrhgynv` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_llilmtrqrzflowqwrmphlicqkphdpadilxns` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `fk_qoaptgvcqwzgddhelhjzdfyhzkgwocukkbxi` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_yadqteagxxgtptvkbsqbifpnomctezfqxcsa` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_scwxwxxjobdawlkawqbfnxpftxftqaklypmd` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_entrytypes`
--
ALTER TABLE `sections_entrytypes`
  ADD CONSTRAINT `fk_wckzcmymaihypfxcjpcboxqzfjiygqrconhh` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yimisexcekabrutxpovtwgrxqwwmwcbdaoap` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `fk_uxceiwsioynbdhcytwdrgnleobszvgfnwdnd` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xpywoghdifijbhvyblifnzoszvsguurlfyxo` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_inopobakueqgillejzehjdkilhhmtkbbonpw` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `fk_pirymldqtzhhdkiwnoouyjzvqdrnyzgavvgo` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `fk_cjkbmzyhbrmriqmgdfwhfrybkrevzkpurdqv` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sso_identities`
--
ALTER TABLE `sso_identities`
  ADD CONSTRAINT `fk_omdxgmlrysjpgcywblomregejhmchmhjoxxj` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `fk_iuxutljxlukjrxhxjpxtkgvuyzibzftlrmvm` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `fk_cnyivefezgqdftiiwldfextpdnphxjjwtpuq` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_jjggolwqcwijwshrjwnlykwcfuhauxyfeexe` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xacslgaklfuiibmsrjbwavcdwckykjbfixfc` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `fk_ddbpyoforpolsjbcxjtbswyjtriwlglnocfl` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ywfhqbmmttvsrycwjlyrjtgujedrtfhonwxo` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `fk_axapkxanxgpygekyacntdmsvnjnwyqtmhdez` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uolaswuuooyouoxucxxcqrheauthlxrjxfao` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `fk_etwgslsnvowtobbjyfsvyfnohvdltsagxqgx` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_oqnvrvfranymysdwagfrxaydeqwwkljoxfmd` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `fk_szhtfsqxjtkfjmjndkcrtvpdrjdoqgrxqgcg` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_nrburskfmkohpsqkaanwtoxnohlxfjnwjkkg` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rmqquavymesapoueawnfgypyqyujnhebltzc` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_wxpjfcjuzensqozsskubfgubjmdnsxzfqiwt` FOREIGN KEY (`affiliatedSiteId`) REFERENCES `sites` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `fk_hbkfadnaaeuvyhbdzkwowuxwecpukqrpvdly` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_quuzrhovpwrsgkmsxuobmdhujnqklqacscmz` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `fk_saclqgswirlehqmwnyphssszzikglhcvwxej` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `webauthn`
--
ALTER TABLE `webauthn`
  ADD CONSTRAINT `fk_uqubbkijihwlyyfnfpybjwdggzasnuqklhhq` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `fk_fhuyxozedtpbmvarshcomfvkygfmtsvzgove` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
