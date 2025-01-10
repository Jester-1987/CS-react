-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2025 at 11:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `level9`
--

-- --------------------------------------------------------

--
-- Table structure for table `consoles`
--

CREATE TABLE `consoles` (
  `consoleID` int(11) NOT NULL,
  `consoleName` varchar(50) NOT NULL,
  `manufacturer` varchar(50) NOT NULL,
  `consolePrice` decimal(10,2) NOT NULL,
  `consoleReleaseYear` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consoles`
--

INSERT INTO `consoles` (`consoleID`, `consoleName`, `manufacturer`, `consolePrice`, `consoleReleaseYear`) VALUES
(1, 'Nintendo Entertainment System', 'Nintendo', 100.00, '1985'),
(2, 'Super Nintendo Entertainment System', 'Nintendo', 110.00, '1991'),
(3, 'Nintendo 64', 'Nintendo', 120.00, '1996'),
(4, 'GameCube', 'Nintendo', 130.00, '2001'),
(5, 'Wii', 'Nintendo', 140.00, '2006'),
(6, 'WiiU', 'Nintendo', 140.00, '2012'),
(7, 'Game Boy', 'Nintendo', 50.00, '1989'),
(8, 'Game Boy Color', 'Nintendo', 60.00, '1998'),
(9, 'Game Boy Advance', 'Nintendo', 70.00, '2001'),
(10, 'Nintendo DS', 'Nintendo', 70.00, '2004'),
(11, 'Nintendo DSLite', 'Nintendo', 70.00, '2006'),
(12, 'PlayStation', 'Sony', 150.00, '1994'),
(13, 'PlayStation 2', 'Sony', 160.00, '2000'),
(14, 'PlayStation 3', 'Sony', 170.00, '2006'),
(15, 'PlayStation Portable', 'Sony', 100.00, '2004'),
(16, 'PlayStation Vita', 'Sony', 120.00, '2011'),
(17, 'Xbox', 'Microsoft', 150.00, '2002'),
(18, 'Xbox 360', 'Microsoft', 170.00, '2005'),
(19, 'Master System', 'Sega', 110.00, '1992'),
(20, 'Genesis', 'Sega', 110.00, '1989'),
(21, 'GameGear', 'Sega', 50.00, '1991'),
(22, 'Mega CD', 'Sega', 120.00, '1992'),
(23, 'GameGear', 'Sega', 50.00, '1991'),
(24, 'Sega CD', 'Sega', 120.00, '1992'),
(25, '32X', 'Sega', 60.00, '1994'),
(26, 'Mega CD', 'Sega Saturn', 130.00, '1995'),
(27, 'Dreamcast', 'Sega', 150.00, '1999');

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `publish_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `gameID` int(11) NOT NULL,
  `gameName` varchar(100) NOT NULL,
  `gameConsole` varchar(50) NOT NULL,
  `gamePrice` decimal(10,2) NOT NULL,
  `gameReleaseYear` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`gameID`, `gameName`, `gameConsole`, `gamePrice`, `gameReleaseYear`) VALUES
(1, 'The Legend of Zelda', 'NES', 10.00, '1987'),
(2, 'Super Mario Bros.', 'NES', 10.00, '1985'),
(3, 'Super Mario Bros. 2', 'NES', 10.00, '1988'),
(4, 'Super Mario Bros. 3', 'NES', 10.00, '1990'),
(5, 'Metroid', 'NES', 10.00, '1987'),
(6, 'Mega Man', 'NES', 10.00, '1987'),
(7, 'Super Metroid', 'SNES', 15.00, '1994'),
(8, 'Super Mario World', 'SNES', 15.00, '1990'),
(9, 'Star Fox', 'SNES', 15.00, '1993'),
(10, 'Donkey Kong Country', 'SNES', 15.00, '1994'),
(11, 'The Legend of Zelda: A Link to the Past', 'SNES', 15.00, '1992'),
(12, 'Chrono Trigger', 'SNES', 15.00, '1995'),
(13, 'GoldenEye 007', 'N64', 20.00, '1997'),
(14, 'Star Fox 64', 'N64', 20.00, '1997'),
(15, 'Star Mario 64', 'N64', 20.00, '1996'),
(16, 'Mario Kart 64', 'N64', 20.00, '1996'),
(17, 'The Legend of Zelda: Ocarina of Time', 'N64', 20.00, '1998'),
(18, 'The Legend of Zelda: Majora\'s Mask', 'N64', 20.00, '1999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consoles`
--
ALTER TABLE `consoles`
  ADD PRIMARY KEY (`consoleID`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consoles`
--
ALTER TABLE `consoles`
  MODIFY `consoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
