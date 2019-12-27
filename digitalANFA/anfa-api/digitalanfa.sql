-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2019 at 08:16 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitalanfa`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `row_id` int(11) NOT NULL,
  `category_id` int(128) NOT NULL,
  `category_title` varchar(256) NOT NULL,
  `createdDate` date NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(256) DEFAULT NULL,
  `modifiedDate` date DEFAULT current_timestamp(),
  `modifiedBy` varchar(256) DEFAULT NULL,
  `isDeleted` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`row_id`, `category_id`, `category_title`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES
(1, 1, 'user_type', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(2, 2, 'news_type', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(3, 3, 'club_division', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(4, 4, 'gender', '2019-12-16', 'Adminn', '0000-00-00', '', 'No'),
(5, 5, 'nationality', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(6, 6, 'status', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(7, 7, 'tournament_type', '2019-12-16', 'Admin', '0000-00-00', '', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `category_value`
--

CREATE TABLE `category_value` (
  `row_id` int(11) NOT NULL,
  `cvalue_id` int(128) NOT NULL,
  `category_id` int(128) DEFAULT NULL,
  `category_value` varchar(256) NOT NULL,
  `createdDate` date NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(256) DEFAULT NULL,
  `modifiedDate` date DEFAULT current_timestamp(),
  `modifiedBy` varchar(256) DEFAULT NULL,
  `isDeleted` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_value`
--

INSERT INTO `category_value` (`row_id`, `cvalue_id`, `category_id`, `category_value`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES
(1, 100, 1, 'Admin', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(2, 101, 1, 'Editor', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(3, 102, 2, 'Competition', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(4, 103, 2, 'ANFA', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(5, 104, 2, 'Development', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(6, 105, 2, 'Mens Football', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(7, 106, 2, 'Womens Football', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(8, 107, 3, 'A Division', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(9, 108, 3, 'B Division', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(10, 109, 3, 'C Division', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(11, 110, 4, 'Male', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(12, 111, 4, 'Female', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(13, 112, 4, 'Others', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(15, 113, 5, 'Nepali', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(16, 114, 5, 'Indian', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(17, 115, 5, 'Bangladeshis', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(18, 116, 5, 'Sri Lankan', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(19, 117, 5, 'Maldivian ', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(20, 118, 5, 'Pakistani', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(21, 119, 5, 'Bhutanese', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(22, 120, 5, 'Others', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(23, 121, 6, 'Active', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(24, 122, 6, 'Inactive', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(25, 123, 7, 'League', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(26, 124, 7, 'Knockout', '2019-12-16', 'Admin', '0000-00-00', '', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `row_id` int(11) NOT NULL,
  `club_id` int(128) NOT NULL,
  `cvalue_id` int(128) NOT NULL,
  `club_name` varchar(256) NOT NULL,
  `club_description` text NOT NULL,
  `club_founded_date` varchar(256) DEFAULT NULL,
  `club_address` varchar(256) DEFAULT NULL,
  `club_email` varchar(256) DEFAULT NULL,
  `club_affiliation` varchar(256) DEFAULT NULL,
  `home_jersey_color` varchar(256) NOT NULL,
  `away_jersey_color` varchar(256) NOT NULL,
  `club_sponsor` varchar(256) DEFAULT NULL,
  `kit_sponsor` varchar(256) DEFAULT NULL,
  `club_logo` varchar(256) DEFAULT NULL,
  `createdDate` date NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(256) DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `modifiedBy` varchar(256) DEFAULT NULL,
  `isDeleted` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`row_id`, `club_id`, `cvalue_id`, `club_name`, `club_description`, `club_founded_date`, `club_address`, `club_email`, `club_affiliation`, `home_jersey_color`, `away_jersey_color`, `club_sponsor`, `kit_sponsor`, `club_logo`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES
(1, 1, 107, 'Armed Police Club', 'The Armed Police Force Club, commonly known as the APF Club, is a departmental armed police sporting club of Nepal. They currently play in the top division of the country.', '2001 A.D.', 'Swoyambhu,Kathmandu', 'computersection@apf.gov.np', 'ANFA', '\'Grey', 'White', 'Agni Mahindra', 'Kelme', 'apf.png', '2019-12-19', 'Admin', '0000-00-00', NULL, NULL),
(2, 2, 107, 'Brigade Boys Club', 'Brigade Boys Club is a Nepalese football club from Lalitpur that was established in 1987, which plays in the town of Kathmandu. They play in the Nepalese first division, the Nepal A- Division League.', NULL, 'Manbhawan, Lalitpur', NULL, 'ANFA', 'Red', 'Yellow', NULL, 'Attsh', 'bbc.png', '2019-12-19', 'Admin', '0000-00-00', NULL, NULL),
(3, 3, 107, 'Chyasal Youth Club', 'Founded in 1981 Chyasal Youth Club was established with a mission, Sports for health and fitness for the community and national pride. They Place in the A divison flight of Nepali A division league.', '1981 A.D.', 'Chyasal, Lalitpur', 'info@chyasalyouthclub.com', 'ANFA', 'Green', 'Red', NULL, 'Attsh', 'cyc.png', '2019-12-19', 'Admin', '0000-00-00', NULL, NULL),
(4, 4, 107, 'Friends Club', 'Friends Club is situated in Kopundole Lalitpur. This club is known for nurturing young talent of Nepalese Football. Friends Club has produced more than 200 national football players till date. It remained only a football club that every now and then organized certain social activities.\r\n', '1972 A.D.', 'Kupondole, Lalitpur', 'friendsclubkopundole@gmail.com', 'ANFA', 'Blue', 'Red', 'Nepal Investment Bank Ltd.', 'Attsh', 'fc.png', '2019-12-19', 'Admin', NULL, NULL, NULL),
(5, 5, 107, 'Himalayan Sherpa Club', 'Himalayan Sherpa Club is a topflight association football club from Nepal.. Himalayan Sherpa Club has won the title of Sindhu Gold Cup, Sayapatri Gold Cup, Butwol and 1st runners up in All Star Cup in Aabu Khaireni.\r\n', '', 'Hattigauda, Kathmandu', 'ktsherpa@gmail.com', 'ANFA', 'Orange', 'White', 'Yeti Airlines', 'Kelme', 'hsc.png', '2019-12-19', 'Admin', NULL, NULL, NULL),
(6, 6, 107, 'Jawalakhel Youth Club', 'Established in 2029 B.S. Jawalakhel Youth Club is a social organization with focus on Sports and Social services. JYC is also social organization as it has been conducting various activities like Blood Donation, Health Camp, and Environment Awareness Program.', '1952 A.D.', 'Jawalakhel, Lalitpur', 'info@jyc.com.np', 'ANFA', 'Blue', 'Red', 'Prabhu Bank', 'Li Ning', 'jyc.png', '2019-12-19', 'Admin', NULL, NULL, NULL),
(7, 7, 107, 'Machindra Club', 'Established in 1973, Machhindra FC is a top flight Nepali football team from the central Kathmandu neighborhood of Keltole. The club finished in 6th place in the 2005/06 Martyrs League.\r\n', '1973 A.D.', 'MasanGalli, Kathmandu', 'machhindraclub1973@gmail.com', 'ANFA', 'Red', 'White', 'San Miguel', 'Kelme', 'mc.png', '2019-12-19', 'Admin', NULL, NULL, NULL),
(8, 8, 107, 'Manang Marshyandi Club', 'Manang Marshyangdi Club is based in Swayambhu, Kathmandu. They play in the Nepalese first division, the Nepal A- Division League. They are in top spot for winning National League Championships and hey have won 7 National Leagues Championships Title.\r\n', '1982 A.D.', 'Nayabazar, Kathmandu', 'manangmarshyangdi@gmail.com', 'ANFA', 'Sky Blue', 'Green/White', NULL, 'Kelme', 'mmc.png', '2019-12-19', 'Admin', NULL, NULL, NULL),
(9, 9, 107, 'Nepal Police Club', 'Nepal Police Club formerly known as Mahendra Police Club is departmental police football and cricket club of Nepal. They currently play in the top division of the country.\r\n', '1952 A.D.', 'Maharajgunj, Kathmandu', 'info@nepalpolice.gov.np', 'ANFA', 'Red ', 'Blue', 'Nepal Telecom ', 'Kelme', 'npc.png', '2019-12-19', 'Admin', NULL, NULL, NULL),
(10, 10, 107, 'New Road Team', 'N.R.T. was established in 1991 BS (1934 AD). It has distinction to be a pioneer in the sport who has camouflaged a football team that mobilized youth against the autocratic Rana regime that ruled for 104 years.', '1934 A.D.', 'Tripureshwor, Kathmandu', 'kkm@nrt.org.np', 'ANFA', 'Green', 'Blue', NULL, 'Kelme', 'nrt.png', '2019-12-19', 'Admin', NULL, NULL, NULL),
(11, 11, 107, 'Sankata Club', 'Sankata Boys Sports Club , established in 1954 is a Nepali footbal club, which plays in the town of Kathmandu. They generally play in the Nepali first division games.\r\n', '1977 A.D.', 'Sankata Temple', NULL, 'ANFA', 'Marron', 'Red', NULL, 'Kelme', 'sc.png', '2019-12-19', 'Admin', NULL, NULL, NULL),
(12, 12, 107, 'Saraswati Youth Club', 'Saraswoti Youth Club is a topflight association football club from Nepal. They play at 25,000 capacity Dasarath Rangasala Stadium.', '1977 A.D.', 'Airport, Kathmandu', 'uttamsab@yahoo.com', 'ANFA', 'Green', 'Blue', NULL, 'Kelme', 'syc.png', '2019-12-19', 'Admin', NULL, NULL, NULL),
(13, 13, 107, 'Three Star Club', 'Three Star Club is a Nepali football club based in Patan, Lalitpur. The club had a modest beginning in 2031B.S. A group of enthusiastic young people of Patan Durbar Square, Mangal Bazar established the club for sports development, social service, personality development and brotherhood.\r\n', '1974 A.D.', 'MangalBazar, Lalitpur', 'thrstarclub@yahoo.com', 'ANFA', 'Blue', 'White', 'Ruslan Vodka', 'Addidas', 'tsc.png', '2019-12-19', 'Admin', NULL, NULL, NULL),
(14, 14, 107, 'Tribhuwan Army Club', 'Nepal Army Club, previously known as Tribhuvan Army Club, is the departmental Army sporting club of Nepal. They currently play in the top division of the country.\r\n', '1951 A.D.', 'Lagankhel, Lalitpur', 'dte-dpr@nepalarmy.mil.np ', 'ANFA', 'Green', 'Red', 'Pulsar Nepal', 'Kelme', 'tac.png', '2019-12-19', 'Admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `row_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `cvalue_id` int(128) DEFAULT NULL,
  `news_title` varchar(256) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(256) NOT NULL,
  `createdDate` date NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(256) DEFAULT NULL,
  `modifiedDate` date DEFAULT current_timestamp(),
  `modifiedBy` varchar(256) DEFAULT NULL,
  `isDeleted` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`row_id`, `news_id`, `cvalue_id`, `news_title`, `news_description`, `news_image`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES
(1, 1, 102, 'Qatar Airways to sponsors ANFA fro 2019-20 Season', '\r\n\r\nThe Qatar Airways \'A\' Division Martyr\'s Memorial League is the biggest annual football event in Nepal starting from 14 December 2019 to 15 February 2020.\r\n\r\nThe partnership will see the Qatar Airways logo featuring on all 14 league club shirts, as well as providing brand awareness through perimeter boards, stadium flags, LED screens and online digital content as well as other activity.\r\n\r\nQatar Airways Group Chief Executive, His Excellency Mr. Akbar Al Baker said: \"We are very pleased to announce this new partnership, which will see Qatar Airways increase its exposure in Nepal whilst supporting the development of football in the country. We are continually striving to boost our global sporting sponsorship portfolio, and this partnership is just one more example of our dedication to sport and our belief in its power to bring people together.\"\r\n\r\nANFA President Mr. Karma Tsering Sherpa said: \"We are extremely grateful for the support of the award winning global brand, Qatar Airways, and we look forward with great anticipation to an exciting two months of football in the Qatar Airways \'A\' Division Martyr\'s Memorial League. This agreement builds upon our existing collaboration with the Qatar Football Association and we are delighted to forge even closer ties with Qatar with this partnership.\"\r\n\r\nMr. Mohamad El Eman, Country Director of the Qatar Airways said: \"We are very proud to keep our feet in Nepal now. I hope this sponsorship will bring and have more and more success in Nepal. We must thank ANFA for giving us the opportunity.\" \r\n\r\nThe Qatar Airways will provide ANFA a total of 150, 000 USD for the league as per the agreement.  \r\n\r\nThis is the first time that an international company has sponsored football tournament in Nepal.\r\n\r\n', 'QatarAirlines.jpg', '2019-12-12', 'Admin', '0000-00-00', NULL, NULL),
(2, 2, 102, 'Machhindra rolled over Brigade Boys in League opener\r\n', 'Yogesh Gurung and Dipak Rai grabbed a goal each in the half as Machhindra Club rolled over Brigade Boys Club in the inaugural match of the Qatar Airways Martyr\'s Memorial \'A\' Division League 2019/2020 that got underway today at the ANFA Complex, Satdobato.\r\n\r\nYogesh Gurung opened the scoring, heading in from a free kick after a well-timed run to the near post in the 30th minute.\r\n\r\nDipak Rai then doubled the lead for Machhindra in the 50th minute. Ranjit Dhimal set up Rai who drove the ball home from the edge of the area.\r\n\r\n', 'McVsBBc.jpeg', '2019-12-14', 'Admin', '0000-00-00', NULL, NULL),
(3, 3, 102, 'Army, Chyasal register win\r\n', 'Santosh Shahukhala scored twice to steer Chyasal Youth Club a 2-0 win over Sankata Club while Dinesh Hemjan late goal guided Tribhuwan Army 2-1 victory over Friends Club today in the ongoing Qatar Airways Martyr\'s Memorial\'A\'Division matches held at ANFA Complex and Dasrath Stadium.\r\n\r\nArmy made immediate threat to the opponents post, that found Nawayug Shrestha score an one- on-one from outside of the box beating Friends goalie Dev Limbu. Shakti Rai equalized for Friends in the 51st minute but Dinesh Hemjan\'s right footer strike following Bharat Khawash corner in the 81st minute helped Army earn important three points from first match.\r\n\r\nMeanwhile at Dasarath Stadium, Santosh Shahukhala scored in the 42nd and 86th minute as Chyasal Youth Club registered win against Sankata Club', 'Army&CycWin.jpeg', '2019-12-16', 'Admin', '0000-00-00', NULL, NULL),
(4, 4, 102, 'Three Star, Jawalakhel plays goalless; Bimal shines as MMC beat APF 2-0\r\n', 'Three Star Club and Jawalakhel Youth Club played out a goalless draw in their first match of the Qatar Airways Martyr\'s Memorial \'A\' Division League clash on Wednesday at the ANFA Complex.\r\n\r\nBoth sides landed numerous chances to break the deadlock but a goal eluded them.\r\n\r\nLikewise, Bimal Rana scored a brace as Manang Marshyandi Club beat Armed Police Force 2-0 in the other match of the day that was held at the Dasrath Stadium.\r\n\r\nRana scored in the 28th and 34th minute to help Manang win.\r\n\r\nThere is no league matches scheduled tomorrow. On, 20 December Chyasal Youth Club will play Machhindra Club at ANFA Complex at 12:00 PM while Brigade Boys will face Friends Club at Dashrath Stadium at 3:00 PM. ', 'tscDraw.jpeg', '2019-12-18', 'Admin', '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `row_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `user_password` varchar(256) DEFAULT NULL,
  `user_type` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `row_id` (`row_id`);

--
-- Indexes for table `category_value`
--
ALTER TABLE `category_value`
  ADD PRIMARY KEY (`cvalue_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `cvalue_id` (`cvalue_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `cvalue_id` (`cvalue_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_value`
--
ALTER TABLE `category_value`
  MODIFY `cvalue_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_value`
--
ALTER TABLE `category_value`
  ADD CONSTRAINT `category_value_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `club_ibfk_1` FOREIGN KEY (`cvalue_id`) REFERENCES `category_value` (`cvalue_id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`cvalue_id`) REFERENCES `category_value` (`cvalue_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
