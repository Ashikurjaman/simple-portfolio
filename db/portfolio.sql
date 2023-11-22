-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 06:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `details`, `created_at`, `updated_at`) VALUES
(1, 'About Me\r\nMy name is Start Bootstrap and I help brands grow.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit dolorum itaque qui unde quisquam consequatur autem. Eveniet quasi nobis aliquid cumque officiis sed rem iure ipsa! Praesentium ratione atque dolorem?', '2023-06-23 10:17:12', '2023-06-23 10:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_06_23_044417_create__contacts', 1),
(3, '2023_06_23_044455_create__experinces', 1),
(4, '2023_06_23_044512_create__educations', 1),
(5, '2023_06_23_044525_create__skills', 1),
(6, '2023_06_23_044539_create__languages', 1),
(7, '2023_06_23_044553_create__resumes', 1),
(8, '2023_06_23_044619_create_abouts', 1),
(9, '2023_06_23_044629_create__projects', 1),
(10, '2023_06_23_044647_create__seoproperites', 1),
(11, '2023_06_23_044658_create__socials', 1),
(12, '2023_06_23_044744_create__heropropertiess', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `_contacts`
--

CREATE TABLE `_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `massage` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_educations`
--

CREATE TABLE `_educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `duration` varchar(50) NOT NULL,
  `institutionName` varchar(50) NOT NULL,
  `field` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_educations`
--

INSERT INTO `_educations` (`id`, `duration`, `institutionName`, `field`, `details`, `created_at`, `updated_at`) VALUES
(1, '2015 - 2017', ' Barnett College Fairfield, NY', '\r\nMaster\'s\r\nWeb Development\r\n', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2023-06-23 10:20:43', '2023-06-23 10:20:43'),
(2, '2011 - 2015', ' ULA Los Angeles, CA', '\r\nUndergraduate\r\nComputer Science\r\n', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2023-06-23 10:20:43', '2023-06-23 10:20:43'),
(3, '2011 - 2015', ' ULA Los Angeles, CA', '\r\nUndergraduate\r\nComputer Science\r\n', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2023-06-23 10:20:43', '2023-06-23 10:20:43'),
(4, '2015 - 2017', ' Barnett College Fairfield, NY', '\r\nMaster\'s\r\nWeb Development\r\n', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2023-06-23 10:20:43', '2023-06-23 10:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `_experinces`
--

CREATE TABLE `_experinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `duration` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_experinces`
--

INSERT INTO `_experinces` (`id`, `duration`, `title`, `designation`, `details`, `created_at`, `updated_at`) VALUES
(1, '2019 - Present', 'Web Developer', 'Stark Industries\r\nLos Angeles, CA', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2023-06-23 10:21:52', '2023-06-23 10:21:52'),
(2, '2019 - Present', 'Web Developer', 'Stark Industries\r\nLos Angeles, CA', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2023-06-23 10:21:52', '2023-06-23 10:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `_heropropertiess`
--

CREATE TABLE `_heropropertiess` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyLine` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `shortTitle` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_languages`
--

CREATE TABLE `_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_projects`
--

CREATE TABLE `_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `previewLink` varchar(300) NOT NULL,
  `thumbnailLink` varchar(300) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_resumes`
--

CREATE TABLE `_resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `downloadLink` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_seoproperites`
--

CREATE TABLE `_seoproperites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pageName` enum('home','resume','projects','contact') NOT NULL,
  `title` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `ogSiteName` varchar(100) NOT NULL,
  `ogUrl` varchar(500) NOT NULL,
  `ogTitle` varchar(500) NOT NULL,
  `ogDescription` varchar(500) NOT NULL,
  `ogImage` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_skills`
--

CREATE TABLE `_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_socials`
--

CREATE TABLE `_socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `twitterLink` varchar(100) NOT NULL,
  `githubLink` varchar(100) NOT NULL,
  `LinkedInLink` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `_contacts`
--
ALTER TABLE `_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_educations`
--
ALTER TABLE `_educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_experinces`
--
ALTER TABLE `_experinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_heropropertiess`
--
ALTER TABLE `_heropropertiess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_languages`
--
ALTER TABLE `_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_projects`
--
ALTER TABLE `_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_resumes`
--
ALTER TABLE `_resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_seoproperites`
--
ALTER TABLE `_seoproperites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_skills`
--
ALTER TABLE `_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_socials`
--
ALTER TABLE `_socials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_contacts`
--
ALTER TABLE `_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_educations`
--
ALTER TABLE `_educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `_experinces`
--
ALTER TABLE `_experinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `_heropropertiess`
--
ALTER TABLE `_heropropertiess`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_languages`
--
ALTER TABLE `_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_projects`
--
ALTER TABLE `_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_resumes`
--
ALTER TABLE `_resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_seoproperites`
--
ALTER TABLE `_seoproperites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_skills`
--
ALTER TABLE `_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_socials`
--
ALTER TABLE `_socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
