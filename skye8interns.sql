-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 09:28 PM
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
-- Database: `skye8interns`
--

-- --------------------------------------------------------

--
-- Table structure for table `logbooks`
--

CREATE TABLE `logbooks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(75) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logbooks`
--

INSERT INTO `logbooks` (`id`, `user_id`, `title`, `description`, `date`) VALUES
(1, 9, 'Design sprint', 'I joined a design sprint to produce design a card game.', '2023-03-07'),
(2, 10, 'Configuring a network', 'I configured a large network so that it could support 254 computers.', '2023-03-07'),
(3, 4, 'Frontend creation', 'I constructed the various pages required for our websites frontend.', '2022-03-08'),
(4, 1, 'API programming', 'I created a few APIs required to connect our analysis programs to our mobile apps.', '2022-03-06'),
(5, 7, 'Backend modifications', 'I fixed a few bugs in the backend code we created and made a few other checks.', '2022-03-07'),
(6, 5, 'Database management backend code', 'I constructed php codes required for populating our database from html pages.', '2022-03-06'),
(7, 8, 'Backend logic flow design', 'We wrote some javascript and php codes representing the flow of logic and and data as certain functionalities are used.', '2022-03-07'),
(8, 6, 'CSS creation and modification', 'I assisted in creating the CSS fot the entire webapp and took care of its responsiveness.', '2022-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `user_id`, `date_created`, `title`, `content`, `score`) VALUES
(1, 4, '2022-03-02', 'Create a basic design', 'Design any basic application of your choice on figma. All views and transitions should be represented.', 7),
(2, 4, '2022-03-02', 'Mobile app API', 'Create a small mobile app making use of a python script to analyse any data set of your choice to provide information.', 4),
(3, 10, '2022-03-02', 'Camera system establishment', 'Create a prototype of a functional surveillance camera system. Make sure central computers can communicate with all cameras.', 7),
(4, 10, '2022-03-04', 'Create a basic design', 'Design any basic application of your choice on figma. All views and transitions should be represented.', 5),
(5, 5, '2022-03-04', 'Create a basic design', 'Design any basic application of your choice on figma. All views and transitions should be represented.', 5),
(6, 5, '2022-03-02', 'Database creation', 'Create and normalize a database which will store any basic informations for a shop. Populate all the tables you create, enforce necessary relationships and keep for a future webapp various teams will create.', 9),
(7, 8, '2022-03-04', 'Create a basic design', 'Design any basic application of your choice on figma. All views and transitions should be represented.', 3),
(8, 8, '2022-03-03', 'Backend introduction', 'Install PHP, MySQL and npm on your computer. To test if your installation works, create a webapp which accepts numerical input from a webpage, applies the formula for the area of a circle and displays the correct answer back on the webpage.', 6),
(9, 7, '2022-03-03', 'Backend introduction', 'Install PHP, MySQL and npm on your computer. To test if your installation works, create a webapp which accepts numerical input from a webpage, applies the formula for the area of a circle and displays the correct answer back on the webpage.', 6),
(10, 7, '2022-03-03', 'Create a basic design', 'Design any basic application of your choice on figma. All views and transitions should be represented.', 3),
(11, 9, '2022-03-03', 'Create a basic design', 'Design any basic application of your choice on figma. All views and transitions should be represented.', 5),
(12, 9, '2022-03-02', 'Camera system establishment', 'Create a prototype of a functional surveillance camera system. Make sure central computers can communicate with all cameras.', 4),
(13, 6, '2022-03-02', 'Mobile app API', 'Create a small mobile app making use of a python script to analyse any data set of your choice to provide information.', 2),
(14, 6, '2022-03-03', 'Create a basic design', 'Design any basic application of your choice on figma. All views and transitions should be represented.', 6),
(15, 1, '2022-03-04', 'Create a basic design', 'Design any basic application of your choice on figma. All views and transitions should be represented.', 9),
(16, 1, '2022-03-03', 'Mobile app API', 'Create a small mobile app making use of a python script to analyse any data set of your choice to provide information.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `role`) VALUES
(1, 'Njong Smith', 'njong@gmail.com', '678345123', 'Intern'),
(2, 'Nfor Andrew', 'drew@yahoo.com', '677426338', 'Admin'),
(3, 'Soh Leon', 'juvi@hotmail.com', '671543987', 'Admin'),
(4, 'Kouete Fokam', 'fokam123@gmail.com', '671524523', 'Intern'),
(5, 'Fred John', 'johnfred98@gmail.com', '675945234', 'Intern'),
(6, 'Lourdson Kongnyuy', 'lrdsnkg@gmail.com', '679429328', 'Intern'),
(7, 'Donald Wanachi', 'donald45@gmail.com', '679429318', 'Intern'),
(8, 'Tiana Muso', 'mstiana@gmail.com', '679424536', 'Intern'),
(9, 'Ferdinand Twatika', 'twatikafd@yahoo.com', '671431526', 'Intern'),
(10, 'Billy Jamgu', 'jamjamb@gmail.com', '674431721', 'Intern');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logbooks`
--
ALTER TABLE `logbooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logbooks`
--
ALTER TABLE `logbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logbooks`
--
ALTER TABLE `logbooks`
  ADD CONSTRAINT `logbooks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
