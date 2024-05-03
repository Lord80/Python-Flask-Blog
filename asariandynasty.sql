-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 02:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asariandynasty`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'Ser Lord', '123456789', 'Hey i am Ser Lord\r\nThis is a first test message', '2024-04-25 10:30:58', 'test12@gmail.com'),
(2, 'norain', '2323232323', 'Now we have programmed it to do whatever is written in that if block when made post request. First we will fetch the data from contact form and then post it to the database table.', '2024-04-25 10:34:29', 'norain1@gmail.com'),
(3, 'Syrain', '8988989898', 'Hey, Ser lord i need your help in coding', '2024-04-26 17:50:51', 'syardin10@gmail.com'),
(4, 'Syrain', '8988989898', 'Hey, Ser lord i need your help in coding', '2024-04-26 17:51:06', 'syardin10@gmail.com'),
(5, 'Kal', '1236547896', 'Not interested in messaging', '2024-04-26 19:41:43', 'kals2948@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(15) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `img_file` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'My First blog post', 'This is my first post', 'first-post', 'This blog post is my first blog post, testing the working of edit setting', '2024-04-30 18:49:19', 'about-bg.jpg'),
(2, 'Mastering the Art of Time Management', 'Unlock productivity and reclaim your day.', 'second-post', 'Learn practical strategies and proven techniques to effectively manage your time, boost productivity, and achieve your goals. From prioritization tips to time-blocking methods, this comprehensive guide will help you take control of your schedule and make the most out of every day.', '2024-04-28 11:21:46', 'post-bg.jpg'),
(3, 'The Power of Positive Thinking: Transform Your Mindset, Change Your Life', 'Harness the strength of optimism for success and fulfillment.', 'third-post', 'Discover the profound impact of cultivating a positive mindset on your overall well-being and success. Explore evidence-backed strategies to reframe negative thoughts, overcome obstacles, and unlock your full potential. Embrace optimism as a tool for resilience and personal growth.', '2024-04-28 11:22:35', 'post-bg.jpg'),
(4, 'Navigating the World of Freelancing: Tips for Success', 'From passion project to thriving career.', 'fourth-post', 'Delve into the dynamic realm of freelancing and learn how to turn your skills and passions into a rewarding career. Gain insights into building a strong portfolio, finding clients, managing finances, and maintaining work-life balance. Whether you\'re a seasoned freelancer or just starting out, this guide has something for everyone.', '2024-04-28 11:23:14', 'post-bg.jpg'),
(5, 'Mindful Living: Cultivating Presence in a Busy World', 'Find peace and purpose in each moment.', 'fifth-post', 'Explore the transformative practice of mindfulness and its profound effects on mental health, stress reduction, and overall well-being. Discover practical techniques to incorporate mindfulness into your daily life, from meditation and breathing exercises to mindful eating and digital detox. Embrace the power of presence and live each moment to the fullest.', '2024-04-28 11:23:52', 'post-bg.jpg'),
(6, 'The Science of Happiness: Unlocking the Secrets to a Fulfilling Life', 'Discover what truly makes us happy.', 'sixth-post', 'Dive into the fascinating research behind happiness and uncover the key factors that contribute to a fulfilling life. From the psychology of joy to the role of relationships and gratitude, explore evidence-based strategies to cultivate happiness and resilience. Embark on a journey toward greater well-being and discover actionable steps to lead a happier, more meaningful life.\r\n\r\n\r\n\r\n\r\n\r\n', '2024-04-28 11:24:33', 'post-bg.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
