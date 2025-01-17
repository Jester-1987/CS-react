-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 17, 2025 at 11:24 AM
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

--
-- Dumping data for table `forum_posts`
--

INSERT INTO `forum_posts` (`id`, `title`, `author`, `content`, `publish_date`) VALUES
(3, 'The Hidden Gems of the SNES Library', 'RetroGamer92', 'While everyone remembers the big hits on the SNES, there were so many underrated games that flew under the radar. One of my favorites is Secret of Evermore. It doesn\'t get as much love as Secret of Mana, but the quirky story and fun combat system make it a blast to play. Another one is Demon\'s Crest—the dark, gothic atmosphere mixed with platforming made it stand out in the crowded SNES library.\r\n\r\nThere’s also Tetris Attack, which is a brilliant puzzle game that was overshadowed by Dr. Mario and other more popular puzzle games. If you like competitive, fast-paced gameplay, it’s perfect for any SNES collection. The last one I\'ll mention is EarthBound. Sure, it has a cult following, but when it first released, it was a bit of a hidden gem. The quirky humor and unique gameplay were ahead of its time.\r\n\r\nWhat hidden SNES gems do you all recommend? I\'d love to hear your thoughts!', '2025-01-17 14:58:21'),
(4, 'Sega Genesis: My First Console', 'ClassicGamer_87', 'The Sega Genesis was the first console I ever owned, and it still holds a special place in my heart. I can still remember the hours I spent playing Sonic the Hedgehog, Streets of Rage 2, and Shining Force. The music and graphics for its time were incredible, and it really felt like a revolution compared to other systems.\n\nThe 16-bit era may not have had the flashy graphics of today&#39;s consoles, but the gameplay was top-notch. Sonic had its signature speed, Altered Beast had its raw energy, and Phantasy Star IV had a deep, engaging story. The Genesis definitely had its hits and misses, but it paved the way for so many of the great franchises we know today.\n\nDoes anyone else have nostalgic memories of the Genesis? Any lesser-known games you think people should check out?', '2025-01-17 15:12:55'),
(5, 'PlayStation 1: The Game-Changer', 'PSX_Master', 'I don’t think we can talk about the early days of 3D gaming without mentioning the PlayStation 1. Sony completely changed the game with its leap into the world of polygons and CD-based storage. The PlayStation gave us games like Final Fantasy VII, Metal Gear Solid, and Crash Bandicoot, which were all major turning points in gaming history.\n\nOne thing I always loved about the PS1 was its versatility—there was literally something for everyone. You had platformers, RPGs, racing games, and even niche titles like Vagrant Story and Tomba! It was such an exciting time to be a gamer, and looking back, I don&#39;t think any console quite captured that sense of innovation and excitement.\n\nWhat do you think made the PS1 such a game-changer? And what were your favorite games from that era?', '2025-01-17 15:13:47'),
(6, 'The Mighty NES: A Revolution in Gaming', 'GameBoyPro', 'The NES was my introduction to the world of video games, and honestly, I think it was the catalyst that turned gaming into what it is today. Sure, the graphics might look primitive by today’s standards, but when you compare Super Mario Bros., The Legend of Zelda, and Metroid to anything else at the time, they were groundbreaking.\n\nIt’s hard to imagine what the gaming landscape would look like if Nintendo hadn’t revived the industry with the NES after the crash of 1983. Every kid had a Duck Hunt or Mario cartridge, and those 8-bit tunes are still stuck in my head to this day. And who could forget the challenge of Contra? The 30 lives code will forever be etched in my memory!\n\nDo you think the NES truly shaped modern gaming, or was it just the beginning of a bigger trend?', '2025-01-17 15:20:34'),
(7, 'The Sega Master System: The Underdog of the 80s', 'RetroJunkie85', 'When people talk about the Sega Master System, I feel like it’s always overlooked, but it was such a great console for its time. Yes, it had stiff competition from the NES, but Alex Kidd in Miracle World and Phantasy Star were fantastic games that made the Master System stand out. The graphics were a step ahead of the NES, and the sound quality was far better than most people give it credit for.\n\nOne of my personal favorites was Wonder Boy III: The Dragon’s Trap. The game’s mix of platforming and RPG elements made it so unique for its time. It’s a shame that it didn’t get the same recognition as Nintendo’s offerings. Sega was ahead of its time in terms of the console hardware, but poor marketing and the dominance of the NES led to its fall in North America.\n\nAnyone else have a soft spot for the Master System? What games from that console do you remember the most?', '2025-01-17 15:23:37');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
