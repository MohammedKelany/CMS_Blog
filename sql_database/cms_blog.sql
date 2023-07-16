-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 12:47 PM
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
-- Database: `cms_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(1, 'mohammd', 'mohammed1fathy1@gmail.com', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(2, 'mohammd Fathy', '0a97f7e7038b@drmail.in', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(4, 'mohammd weer', '0f6057ac6a87@drmail.in', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(5, 'mohammd weerwww', 'm.ali01192@dmu.edu.eg', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'TV'),
(2, 'DESIGN'),
(3, 'SPORTS'),
(4, 'MARKETING'),
(6, 'GAMING');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `img` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `category_name`, `username`, `title`, `sub_title`, `body`, `img`, `created_at`, `status`) VALUES
(8, 5, 2, 'DESIGN', 'Mohammed Fathy', 'Modi explicabo quia facilis quidem consectetur urna pretium, bibendum! Amet elit? Tempora duis  My name', 'Proin gravida. Mus dolorem potenti diam laoreet hymenaeos hymenaeos ornare, nunc aliquid!', 'Ullam etiam ullamco. Voluptatibus aut eaque! Egestas wisi! Eveniet in! Et? Ea quisquam fuga phasellus voluptate. Tincidunt. Ac wisi natus iure adipisicing quidem morbi vel, justo? Vivamus proident. Voluptates, facilis omnis ante sequi, augue adipiscing ducimus fames veniam. Dictum, primis totam tenetur sodales fusce, iste. Interdum dolores cum habitant egestas cillum sed nobis donec, deserunt, accusamus tempore, lacus primis anim! Consectetur venenatis euismod quisquam diam eiusmod molestias voluptates? Felis ullamcorper sunt aspernatur! Pretium neque egestas incididunt morbi tincidunt provident voluptatum, morbi laoreet magnam, justo? Laboris fugiat repellat fuga deleniti saepe, iusto! Nesciunt sapien aliquam platea consequatur. Iusto quaerat culpa occaecat.', 'moon.png', '2023-06-22 23:22:13', 0),
(11, 6, 2, 'DESIGN', 'momomomo', 'sssRerum, illo mauris minim incidunt tincidunt dignissimos, integer, odio, aut libero praesent minima nullam asperiores, nostra lacinia euismod mi pharetra? Illo? Consectetur pellentesque pariatur? Magnam voluptate nesciunt, nisl consectetur vehicula! Ips', 'ssRerum, illo mauris minim incidunt tincidunt dignissimos, integer, odio, aut libero praesent minima nullam asperiores, nostra lacinia euismod mi pharetra? Illo? Consectetur pellentesque pariatur? Magnam voluptate nesciunt, nisl consectetur vehicula! Ipsa', 'Rerum, illo mauris minim incidunt tincidunt dignissimos, integer, odio, aut libero praesent minima nullam asperiores, nostra lacinia euismod mi pharetra? Illo? Consectetur pellentesque pariatur? Magnam voluptate nesciunt, nisl consectetur vehicula! Ipsa cumque mollitia cillum? Fermentum, fames dictumst eveniet minus eu primis dolor, dis impedit velit, fuga facilisis aperiam excepteur ullam. Condimentum animi numquam eu tempore! Adipisicing feugiat excepteur sunt veritatis pretium accumsan at molestiae cubilia pretium. Rutrum culpa libero, interdum porro odio ac lectus eu in lorem gravida cupidatat nihil doloribus? Posuere, similique esse officia! Consectetuer possimus duis, consectetuer bibendum? Aliquip inventore soluta habitasse magna, ut? Maecenas et, inventore, potenti.', 'moon.png', '2023-06-23 00:17:46', 1),
(16, 5, 1, 'DESIGN', 'Mohammed Fathy Ali', 'tittle', 'sub title', 'body', 'moon.png', '2023-06-24 19:31:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `created_at`) VALUES
(5, 'Mohammed Fathy Ali', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'mohammed1fathy1@gmail.com', '2023-06-22 15:43:25'),
(6, 'momomomo', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '0a97f7e7038b@drmail.in', '2023-06-23 00:09:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
