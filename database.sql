-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 06:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `hypertexthome` longtext DEFAULT NULL,
  `hypertextabout` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `hypertexthome`, `hypertextabout`) VALUES
(1, 'Hakari Atsuko', 'Hakari Atsuko (秤アツコ) is one of the students studying in Arius Branch School who wields a Submachine Gun.', '<h4>Introduction</h4>\r\n<p>One of the four members of Arius Branch School\'s elite Arius Squad. She\'s silent and always communicates through sign language, but perhaps there\'s more to this than meets the eye. Her squadmates call her \"princess,\" and Saori in particular seems very protective of her.</p>\r\n<p><img class=\"rounded\" src=\"https://cdn.donmai.us/sample/b8/9a/__saori_atsuko_misaki_and_hiyori_blue_archive_drawn_by_famepeera__sample-b89ab73ae89669c06026efd0d957504c.jpg\" width=\"749\" height=\"421\" /></p>\r\n<h4>Personality</h4>\r\n<p>Atsuko may be very silent, but she has a kind heart. Compared to the rest of the Arius Squad and possibly all of Arius, Atsuko appears to be the kindest, having a personality that can be considered quite exceptional in Arius.</p>\r\n<p><img class=\"rounded\" src=\"https://i.ytimg.com/vi/Kvkl7RvqkmU/hq720.jpg?sqp=-oaymwE7CK4FEIIDSFryq4qpAy0IARUAAAAAGAElAADIQj0AgKJD8AEB-AH-CYAC0AWKAgwIABABGE4gRyhlMA8=&amp;rs=AOn4CLCLaaoA-BsTzG__0_-F4g9FNUvWRw\" /></p>\r\n<h4>Appearance</h4>\r\n<p>Atsuko has lavender colored hair, tied into loose side braids using orange ribbons. Although normally covered by a mask, her eyes are a dark red.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(6) UNSIGNED NOT NULL,
  `topic` varchar(255) NOT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `title` longtext NOT NULL,
  `hypertext` longtext DEFAULT NULL,
  `shortdesc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `topic`, `docname`, `title`, `hypertext`, `shortdesc`, `created_at`) VALUES
(11, 'example-blog', 'Example Blog Post', 'Chapter 4: Kyrie for the Forgotten Gods', '<h4>Prologue</h4>\r\n<p><img class=\"rounded\" src=\"https://r.res.easebar.com/pic/20230216/287f54c1-22a4-49b8-aa0e-eb7f37655cac.png\" /></p>\r\n<p>As Arius Squad is cornered by Arius students, Saori attempts to sacrifice herself using the halo-destroying bomb and wipe out their pursuers, allowing the rest of the Squad to escape. However, Atsuko stops her, deciding to surrender. She explains to a distraught Saori that it\'s the best choice, as the other option would be to continue a repeated cycle of running away and hiding for the rest of their lives. Atsuko also notes that this is the first time she\'ll be making her own choice. She bargains with Beatrice to let the others loose and makes Beatrice swear on her name to fulfill this promise, to which she agrees. After receiving a new mask, she is escorted away by Arius students for the ritual at sunrise the next day.</p>\r\n<h4>Enigmatic Seekers</h4>\r\n<p>Beatrice thanks Black Suit for his defense system that saved the life of the sacrifice&mdash;the countermeasure that saved Atsuko\'s life after Azusa used the halo-destroying bomb.</p>\r\n<h4>Choices and Decisions</h4>\r\n<p>As Saori begs Sensei for assistance, she reveals her circumstances and motives. From a young age, Atsuko was destined to become a sacrifice for Beatrice\'s ritual. However, Saori was told that she could change Atsuko\'s fate if she followed Beatrice\'s orders and executed the entire attack on the Treaty of Eden. Having failed though, Arius Squad ran away. Later, Saori also notes that Atsuko met with Beatrice more often than she did.</p>\r\n<h4>Old Story</h4>\r\n<p>Misaki and Hiyori explain that Atsuko was known as the \"princess\" for being the descendant of a past Arius student council president, a hereditary position. The Squad had admired Atsuko\'s beauty and grace since childhood. Misaki also mentions that Atsuko often smiled before she put on the mask.</p>\r\n<p>However, after the end of the Arius Civil War, rumors spread that Beatrice would sacrifice Atsuko. Unable to accept this, Saori somehow took Atsuko in, which Misaki speculated was because of some secret agreement she made with Beatrice. At this point, Atsuko put on a mask, no longer spoke, and joined Saori, Misaki, Hiyori, and later, Azusa, in training. The five would later become known as Arius Squad.</p>', 'Blue Archive\'s latest update continues the Kyrie of the Forgotten Gods storyline', '2024-01-29 05:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `blog_id` int(6) UNSIGNED DEFAULT NULL,
  `tag_id` int(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`blog_id`, `tag_id`) VALUES
(11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `id` int(6) UNSIGNED NOT NULL,
  `project` varchar(255) NOT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `title` longtext NOT NULL,
  `hypertext` longtext DEFAULT NULL,
  `shortdesc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_tags`
--

CREATE TABLE `doc_tags` (
  `doc_id` int(6) UNSIGNED DEFAULT NULL,
  `tag_id` int(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linktree`
--

CREATE TABLE `linktree` (
  `id` int(11) NOT NULL,
  `platform_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `linktree`
--

INSERT INTO `linktree` (`id`, `platform_name`, `url`) VALUES
(1, 'facebook', 'https://www.facebook.com/'),
(2, 'instagram', 'https://www.instagram.com/'),
(3, 'twitter', 'https://twitter.com/home'),
(4, 'youtube', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(6) UNSIGNED NOT NULL,
  `tag_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`) VALUES
(4, 'example-tag'),
(5, 'example-tag-2'),
(6, 'example-tag-3');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(6) UNSIGNED NOT NULL,
  `content_id` int(6) UNSIGNED DEFAULT NULL,
  `content_type` enum('blog','doc') NOT NULL,
  `views_count` int(6) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `content_id`, `content_type`, `views_count`) VALUES
(68, 0, 'blog', 1),
(69, 11, 'blog', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_tags`
--
ALTER TABLE `doc_tags`
  ADD KEY `doc_id` (`doc_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `linktree`
--
ALTER TABLE `linktree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `linktree`
--
ALTER TABLE `linktree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD CONSTRAINT `blog_tags_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `blog_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `doc_tags`
--
ALTER TABLE `doc_tags`
  ADD CONSTRAINT `doc_tags_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `docs` (`id`),
  ADD CONSTRAINT `doc_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
