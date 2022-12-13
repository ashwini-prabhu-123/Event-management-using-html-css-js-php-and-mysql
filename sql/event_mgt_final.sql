-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 01:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_mgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `comiccon`
--

CREATE TABLE `comiccon` (
  `subev_id` int(10) NOT NULL,
  `subev_name` varchar(100) NOT NULL,
  `subev_details` varchar(100) NOT NULL,
  `subev_price` int(100) NOT NULL,
  `subev_date` date NOT NULL,
  `img_link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comiccon`
--

INSERT INTO `comiccon` (`subev_id`, `subev_name`, `subev_details`, `subev_price`, `subev_date`, `img_link`) VALUES
(1, 'Comics', 'Best of comic books & coolest creators...signed and delivered!', 100, '2022-12-14', 'https://img.freepik.com/free-vector/comic-bright-composition-with-explosive-halftone-rays_225004-794https://img.freepik.com/free-vector/comic-bright-composition-with-explosive-halftone-rays_225004-794.jpg?w=2000'),
(2, 'CosPlay', 'Cosplay your heart out and see some of the best cosplayers in the world', 200, '2022-12-15', 'https://img.etimg.com/thumb/width-1200,height-900,imgsize-538045,resizemode-1,msid-66810252/magazines/panache/get-your-cosplay-game-right-delhi-gears-up-for-the-8th-edition-of-comic-con.jpg'),
(3, 'OpenMic', 'An open mic or open mike is a live show at a venue such as a coffeehouse, nightclub, comedy club, or', 250, '2022-12-15', 'https://static.vecteezy.com/system/resources/thumbnails/002/185/651/small/open-mic-neon-signs-style-text-free-vector.jpg'),
(4, 'Gaming', 'Esports to table-top gaming,\r\nit\'s all here', 500, '2022-12-16', 'https://play3r.net/wp-content/uploads/2018/09/ZBR05528.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(10) NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `event_date` date NOT NULL,
  `event_price` int(5) NOT NULL,
  `event_details` varchar(1000) NOT NULL,
  `img_link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_date`, `event_price`, `event_details`, `img_link`) VALUES
(1, 'Invencia', '2022-12-01', 500, 'Catch Divine(Gully Gang) perform live on the 27th May & Ananya Birla perform live on the 28th May at Bangalore\'s Biggest Cultural Fest Invincia 2022.', 'https://res.cloudinary.com/dwzmsvp7f/image/fetch/q_75,f_auto,w_1316/https%3A%2F%2Fmedia.insider.in%2Fimage%2Fupload%2Fc_crop%2Cg_custom%2Fv1653290280%2Frmbn3w0dnjjca3gnwrjs.jpg'),
(2, 'ComicCon', '2022-12-22', 799, 'Comic Con India, the country\'s greatest pop-culture celebration will be back with its 2022 editions soon. From celebrity guests to awesome merchandise, from mind-blowing experiences, to India\'s (and the world\'s) best cosplayers.', 'https://upload.wikimedia.org/wikipedia/en/7/7b/New_Comic_Con_Header_Final_copy.png'),
(3, 'SundaySoulSante', '2022-12-25', 499, 'Sunday Soul Sante is a platform for visual and performing artists. We bridge the entertainment and retail space of India by bringing people, products, artisans and performers from various walks of life together.', 'https://pbs.twimg.com/profile_images/1104699077890056197/-OcZ13LA_400x400.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `invencia`
--

CREATE TABLE `invencia` (
  `subev_id` int(10) NOT NULL,
  `subev_name` varchar(100) NOT NULL,
  `subev_details` varchar(100) NOT NULL,
  `subev_price` int(5) NOT NULL,
  `subev_date` date NOT NULL,
  `img_link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invencia`
--

INSERT INTO `invencia` (`subev_id`, `subev_name`, `subev_details`, `subev_price`, `subev_date`, `img_link`) VALUES
(1, 'BGMI', 'BGMI is a PvP Shooting game.Team of 4 is required to participate.', 75, '2022-12-15', 'https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2021/09/01/158180-untitled-design-2021-09-01t145729780.jpg?itok=qJvSqCw0'),
(2, 'Dance', 'Dance is a performing art form and movement of body.Solo, Duo, Group can participate.', 200, '2022-12-16', 'https://img.freepik.com/free-vector/silhouettes-people-dancing-abstract-background-with-glowing-lights-stars_1048-14343.jpg?w=2000'),
(3, 'Singing', 'Singing is the act of creating musical sounds with the voice.', 50, '2022-12-10', 'https://images.unsplash.com/photo-1516280440614-37939bbacd81?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2luZ2luZ3xlbnwwfHwwfHw%3D&w=1000&q=80'),
(4, 'Treasure Hunt', 'Treasure hunt is a game of searching hidden objects. Team of 5 is required to participate.', 50, '2022-12-22', 'https://escapetrails.co/wp-content/uploads/2020/03/Treasure-hunt.jpg'),
(5, 'Hackathon', ' A codefest where Participants has to work on codes at an accelerated pace.', 150, '2022-12-08', 'https://edison365.com/wp-content/uploads/2022/03/How-do-hackathons-work.png'),
(6, 'DJ Night', 'A DJ is a person who plays recorded music for an audience', 0, '2022-12-16', 'https://upload.wikimedia.org/wikipedia/commons/3/32/Wikipedia_space_ibiza%2803%29.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subev_reg`
--

CREATE TABLE `subev_reg` (
  `subev_reg_id` int(50) NOT NULL,
  `subev_reg_eventname` varchar(100) NOT NULL,
  `subev_name` varchar(100) NOT NULL,
  `subev_reg_uname` varchar(100) NOT NULL,
  `subev_reg_uemail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subev_reg`
--

INSERT INTO `subev_reg` (`subev_reg_id`, `subev_reg_eventname`, `subev_name`, `subev_reg_uname`, `subev_reg_uemail`) VALUES
(1, 'Invencia', 'BGMI', 'uname', 'abcd@gmail.com'),
(2, 'Invencia', 'Dance', 'abcd', 'abcd@gmail.com'),
(3, 'Invencia', 'Singing', 'abcd', 'abcd@gmail.com'),
(9, 'Invencia', 'Dance', 'abcd', 'ab@gmail.com'),
(10, 'Invencia', 'FootBall', 'abcd', 'ab@gmail.com'),
(11, 'Invencia', 'BGMI', 'abcd', 'ab@gmail.com'),
(12, 'Invencia', 'BGMI', 'abcd', 'ggg@tgmail.com'),
(13, 'Invencia', 'BGMI', 'abcd', 'teja@gmail.com'),
(14, 'ComicCon', 'CosPlay', 'abcd', 'ab@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sundaysoulsante`
--

CREATE TABLE `sundaysoulsante` (
  `subev_id` int(10) NOT NULL,
  `subev_name` varchar(100) NOT NULL,
  `subev_details` varchar(100) NOT NULL,
  `subev_price` int(10) NOT NULL,
  `subev_date` date NOT NULL,
  `img_link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sundaysoulsante`
--

INSERT INTO `sundaysoulsante` (`subev_id`, `subev_name`, `subev_details`, `subev_price`, `subev_date`, `img_link`) VALUES
(1, 'Painting', 'Painting is the practice of applying paint, pigment, color or other medium to a solid surface', 100, '2022-12-14', 'https://media.yogems.com/ece90ab0-9980-11e9-a8ac-ff3fe5e1e222.jpg'),
(2, 'Photography', 'Photography contests is a great way for photographers to get recognition and benchmark', 150, '2022-12-16', 'https://i0.wp.com/www.nrtec.in/wp-content/uploads/2018/12/photography-contest-NEC.jpg?resize=1170%2C780&ssl=1'),
(3, 'HandCrafts', 'HandCraft movement was an national trend in the decorative and fine arts that develop', 50, '2022-12-16', 'https://www.re-thinkingthefuture.com/wp-content/uploads/2020/12/A2685-10-Lost-Wooden-Crafts-of-India.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pno` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pno`, `user_password`) VALUES
(1, 'admin', 'admin@gmail.com', '100', 'admin'),
(11, 'gh', 'gh@gmail.com', '4141', 'asdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comiccon`
--
ALTER TABLE `comiccon`
  ADD PRIMARY KEY (`subev_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `invencia`
--
ALTER TABLE `invencia`
  ADD PRIMARY KEY (`subev_id`);

--
-- Indexes for table `subev_reg`
--
ALTER TABLE `subev_reg`
  ADD PRIMARY KEY (`subev_reg_id`);

--
-- Indexes for table `sundaysoulsante`
--
ALTER TABLE `sundaysoulsante`
  ADD PRIMARY KEY (`subev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comiccon`
--
ALTER TABLE `comiccon`
  MODIFY `subev_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invencia`
--
ALTER TABLE `invencia`
  MODIFY `subev_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subev_reg`
--
ALTER TABLE `subev_reg`
  MODIFY `subev_reg_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sundaysoulsante`
--
ALTER TABLE `sundaysoulsante`
  MODIFY `subev_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
