-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2025 at 06:52 AM
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
-- Database: `tasks`
--

-- --------------------------------------------------------

--
-- Table structure for table `eauprebalance`
--


--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `Desciption` text DEFAULT NULL,
  `status` enum('Pending','In Proccess','Completed') NOT NULL DEFAULT 'Pending',
  `created_att` timestamp NOT NULL DEFAULT current_timestamp(),
  `Due_date` date DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `Desciption`, `status`, `created_att`, `Due_date`, `userid`) VALUES
(1, 'Create database ', 'Create databse name it Tasks', 'Completed', '2025-03-14 06:31:21', '2025-03-21', 1),
(2, 'Create two table  ', 'Create users and table tasks ', 'Completed', '2025-03-14 06:33:58', '2025-03-21', 1),
(3, 'select data   ', 'select data from table ', 'In Proccess', '2025-03-14 06:33:58', '2025-03-21', 1),
(4, 'select perform crud    ', 'create insert and udpate and delete and truncate', 'Pending', '2025-03-14 06:33:58', '2025-03-21', 1),
(5, 'test', 'test', 'Pending', '2025-03-14 06:45:44', '2025-01-05', 1),
(6, 'tijaabo', 'Test', 'Pending', '2025-03-14 08:10:46', '2025-03-14', 1),
(7, 'New Task Title', 'New Task Description', 'Pending', '2025-03-14 08:14:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `tel` int(11) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `created_att` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `tel`, `PASSWORD`, `created_att`) VALUES
(1, 'mohamed ahmed', 'mohamed@golis.so', 7722240, 'Admin@123', '2025-03-14'),
(5, 'khalid Yahye', 'khalid@golis.so', 7722240, 'Admin@123', '2025-03-14'),
(6, 'Yasin Omar', 'yasin@golis.so', 7722240, 'Admin@123', '2025-03-14'),
(7, 'mohamud mohamed ali', 'mohamud@golis.so', 7722240, 'Admin@123', '2025-03-14'),
(11, 'Muna ahmed', 'Muna@golis.so', 7792544, 'Admin@123', '2025-03-14'),
(12, 'Yusra Omar', 'Yusra@golis.so', 775454, 'Admin@123', '2025-03-14'),
(13, 'qamar mohamed ali', 'qamar@golis.so', 7777779, 'Admin@123', '2025-03-14'),
(17, 'Ahmed abdullahi', 'Ahmed@golis.so', 7792544, 'Admin@123', '0000-00-00'),
(18, 'najax Omar', 'najax@golis.so', 775454, 'Admin@123', '0000-00-00'),
(19, 'omar mohamed ali', 'omarmohamed@golis.so', 7777779, 'Admin@123', '0000-00-00'),
(23, 'bukhaari abdullahi', 'bukhari@golis.so', 7792544, 'Admin@123', '2025-05-01'),
(24, 'sayd Omar', 'sayd@golis.so', 775454, 'sayd@123', '2023-02-01'),
(25, 'yasir mohamed ali', 'yasir@golis.so', 7777779, 'Admin@123', '2025-03-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
