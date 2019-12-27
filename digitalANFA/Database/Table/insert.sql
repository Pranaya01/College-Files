/* Inserting data into news */
INSERT INTO news (row_id, news_title, news_description, news_image, createdDate, createdBy, modifiedDate, modifiedBy, isDeleted)
VALUES
(1, "Qatar Airways to sponsors ANFA fro 2019-20 Season", "The Qatar Airways 'A' Division Martyr's Memorial League is the biggest annual football event in Nepal starting from 14 December 2019 to 15 February 2020.
This is the first time that an international company has sponsored football tournament in Nepal.", "img.png", "","Pranaya Pradhan", "", "", "No");


/*Inserting data in tournament table*/
INSERT INTO Tournaments (row_id, tournament_id, tournament_name, season, title_sponsor, organizer, createdDate, createdBy, modifiedDate, modifiedBy, isDeleted) VALUES
(1,1,'Qatar Airways A Division League', '2019-20', 'Qatar Airways', 'ANFA', '2019-12-19', 'Pranaya Pradhan', '', '', 'No');

/* Inserting data in category table */
INSERT INTO category (row_id, category_id, category_title, createdDate, createdBy, modifiedDate, modifiedBy, isDeleted) 
VALUES 
(1, 1, 'user_type', '2019-12-16','Admin', '', '', 'No'),
(2, 2, 'news_type', '2019-12-16','Admin', '', '', 'No'),
(3,3, 'club_division', '2019-12-16', 'Pranaya Pradhan', '', '', 'No'),
(4,4, 'gender', '2019-12-16', 'Adminn', '', '', 'No'),
(5,5, 'nationality', '2019-12-16', 'Admin', '', '', 'No'),
(6,6, 'status', '2019-12-16', 'Admin', '', '', 'No'),
(7,7, 'tournament_type', '2019-12-16', 'Admin', '', '', 'No');


/* Inserting data into category value */
INSERT INTO category_value (row_id , cvalue_id, category_id, category_title, createdDate, createdBy, modifiedDate, modifiedBy, isDeleted) 
VALUES 
(1,100, 1, 'Admin', '2019-12-16', 'Admin','','','No'),
(2,101,1, 'Editor', '2019-12-16', 'Admin', '', '', 'No'),
(3,102,2, 'Competition', '2019-12-16', 'Admin', '', '', 'No'),
(4,103,2, 'ANFA', '2019-12-16', 'Admin', '', '', 'No'),
(5,104,2, 'Development', '2019-12-16', 'Admin', '', '', 'No'),
(6,105,2, 'Mens Football', '2019-12-16', 'Admin', '', '', 'No'),
(7,106,2, 'Womens Football', '2019-12-16', 'Admin', '', '', 'No'),
(8,107,3,'A Division', '2019-12-16', 'Admin', '', '', 'No'),
(9,108,3, 'B Division', '2019-12-16', 'Admin', '', '', 'No'),
(10,109,3, 'C Division', '2019-12-16', 'Admin', '', '', 'No'),
(11,110,4, 'Male', '2019-12-16', 'Admin', '', '', 'No'),
(12,111,4, 'Female', '2019-12-16', 'Admin', '', '', 'No'),
(13,112,4, 'Others', '2019-12-16', 'Admin', '', '', 'No'),
(15,113,5, 'Nepali', '2019-12-16', 'Admin', '', '', 'No'),
(16,114,5, 'Indian', '2019-12-16', 'Admin', '', '', 'No'),
(17,115,5, 'Bangladeshis', '2019-12-16', 'Admin', '', '', 'No'),
(18,116,5, 'Sri Lankan', '2019-12-16', 'Admin', '', '', 'No'),
(19,117,5, 'Maldivian ', '2019-12-16', 'Admin', '', '', 'No'),
(20,118,5, 'Pakistani', '2019-12-16', 'Admin', '', '', 'No'),
(21,119,5, 'Bhutanese', '2019-12-16', 'Admin', '', '', 'No'),
(22,120,5, 'Others', '2019-12-16', 'Admin', '', '', 'No'),
(23,121,6, 'Active', '2019-12-16', 'Admin', '', '', 'No'),
(24,122,6, 'Inactive', '2019-12-16', 'Admin', '', '', 'No'),
(25,123,7, 'League', '2019-12-16', 'Admin', '', '', 'No'),
(26,124,7, 'Knockout', '2019-12-16', 'Admin', '', '', 'No');

INSERT INTO `club` (`row_id`, ``cvalue_id`, `club_name`, `club_description`, `club_founded_date`, `club_address`, `club_email`, `club_affiliation`, `home_jersey_color`, `away_jersey_color`, `sponsor`, `kit_sponsor`, `club_logo`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) 
VALUES ('1', '107', 'Armed Police Force', 'The Armed Police Force Club, commonly known as the APF Club, is a departmental armed police sporting club of Nepal. They currently play in the top division of the country.\r\n', '2001 A.D.', 'Swoyambhu,Kathmandu', 'computersection@apf.gov.np', 'ANFA', 'Grey', 'White', 'Agni Mahindra','Kelme', 'apg.png', '2019-12-19', 'Admin', '', ''), 
('2', '107', 'Brigade Boys Club', '\r\n\r\n', '', 'r', '', 'ANFA', 'Red', 'Yellow', '', 'Attsh', 'bbc.png', '2019-12-19', 'Admin', '', '', ''), 
('3', '107', 'Chyasal Youth Club', '\r\n\r\n', '1981 A.D.', 'Chyasal, lalitpur', '', 'ANFA', 'Green', 'Red','', 'Attsh', 'cyc.png', '2019-12-19', 'Admin', '', '');

/*4-5*/
INSERT INTO `club` (`row_id`, `club_id`, `cvalue_id`, `club_name`, `club_description`, `club_founded_date`, `club_address`, `club_email`, `club_affiliation`, `home_jersey_color`, `away_jersey_color`, `club_sponsor`, `kit_sponsor`, `club_logo`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES ('4', NULL, '107', 'Friends Club', 'Friends Club is situated in Kopundole Lalitpur. This club is known for nurturing young talent of Nepalese Football. Friends Club has produced more than 200 national football players till date. It remained only a football club that every now and then organized certain social activities.\r\n', '1972 A.D.', 'Kupondole, Lalitpur', 'friendsclubkopundole@gmail.com', 'ANFA', 'Blue', 'Red', 'Nepal Investment Bank Ltd.', 'Attsh', 'fc.png', '2019-12-19', 'Admin', NULL, NULL, NULL), ('5', NULL, '107', 'Himalayan Sherpa Club', 'Himalayan Sherpa Club is a topflight association football club from Nepal.. Himalayan Sherpa Club has won the title of Sindhu Gold Cup, Sayapatri Gold Cup, Butwol and 1st runners up in All Star Cup in Aabu Khaireni.\r\n', NULL, 'Hattigauda, Kathmandu', 'ktsherpa@gmail.com', 'ANFA', 'Orange', 'White', 'Yeti Airlines', 'Kelme', 'hsc.png', '2019-12-19', 'Admin', NULL, NULL, NULL);
INSERT INTO `club` (`row_id`, `club_id`, `cvalue_id`, `club_name`, `club_description`, `club_founded_date`, `club_address`, `club_email`, `club_affiliation`, `home_jersey_color`, `away_jersey_color`, `club_sponsor`, `kit_sponsor`, `club_logo`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES ('6', NULL, '107', 'Jawalakhel Youth Club', 'Established in 2029 B.S. Jawalakhel Youth Club is a social organization with focus on Sports and Social services. JYC is also social organization as it has been conducting various activities like Blood Donation, Health Camp, and Environment Awareness Program.', '1952 A.D.', 'Jawalakhel, Lalitpur', 'info@jyc.com.np', 'ANFA', 'Blue', 'Red', 'Prabhu Bank', 'Li Ning', 'jyc.png', '2019-12-19', 'Admin', NULL, NULL, NULL), ('7', NULL, '107', 'Machindra Club', 'Established in 1973, Machhindra FC is a top flight Nepali football team from the central Kathmandu neighborhood of Keltole. The club finished in 6th place in the 2005/06 Martyrs League.\r\n', '1973 A.D.', 'MasanGalli, Kathmandu', 'machhindraclub1973@gmail.com', 'ANFA', 'Red', 'White', 'San Miguel', 'Kelme', 'mc.png', '2019-12-19', 'Admin', NULL, NULL, NULL);
INSERT INTO `club` (`row_id`, `club_id`, `cvalue_id`, `club_name`, `club_description`, `club_founded_date`, `club_address`, `club_email`, `club_affiliation`, `home_jersey_color`, `away_jersey_color`, `club_sponsor`, `kit_sponsor`, `club_logo`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES ('8', NULL, '107', 'Manang Marshyandi Club', 'Manang Marshyangdi Club is based in Swayambhu, Kathmandu. They play in the Nepalese first division, the Nepal A- Division League. They are in top spot for winning National League Championships and hey have won 7 National Leagues Championships Title.\r\n', '1982 A.D.', 'Nayabazar, Kathmandu', 'manangmarshyangdi@gmail.com', 'ANFA', 'Sky Blue', 'Green/White', NULL, 'Kelme', 'mmc.png', '2019-12-19', 'Admin', NULL, NULL, NULL), ('9', NULL, '107', 'Nepal Police Club', 'Nepal Police Club formerly known as Mahendra Police Club is departmental police football and cricket club of Nepal. They currently play in the top division of the country.\r\n', '1952 A.D.', 'Maharajgunj, Kathmandu', 'info@nepalpolice.gov.np', 'ANFA', 'Red ', 'Blue', 'Nepal Telecom ', 'Kelme', 'npc.png', '2019-12-19', 'Admin', NULL, NULL, NULL);
INSERT INTO `club` (`row_id`, `club_id`, `cvalue_id`, `club_name`, `club_description`, `club_founded_date`, `club_address`, `club_email`, `club_affiliation`, `home_jersey_color`, `away_jersey_color`, `club_sponsor`, `kit_sponsor`, `club_logo`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES ('10', NULL, '107', 'New Road Team', 'N.R.T. was established in 1991 BS (1934 AD). It has distinction to be a pioneer in the sport who has camouflaged a football team that mobilized youth against the autocratic Rana regime that ruled for 104 years.', '1934 A.D.', 'Tripureshwor, Kathmandu', 'kkm@nrt.org.np', 'ANFA', 'Green', 'Blue', NULL, 'Kelme', 'nrt.png', '2019-12-19', 'Admin', NULL, NULL, NULL), ('11', NULL, '107', 'Sankata Club', 'Sankata Boys Sports Club , established in 1954 is a Nepali footbal club, which plays in the town of Kathmandu. They generally play in the Nepali first division games.\r\n', '1977 A.D.', 'Sankata Temple', NULL, 'ANFA', 'Marron', 'Red', NULL, 'Kelme', 'sc.png', '2019-12-19', 'Admin', NULL, NULL, NULL), ('12', NULL, '107', 'Saraswati Youth Club', 'Saraswoti Youth Club is a topflight association football club from Nepal. They play at 25,000 capacity Dasarath Rangasala Stadium.', '1977 A.D.', 'Airport, Kathmandu', 'uttamsab@yahoo.com', 'ANFA', 'Green', 'Blue', NULL, 'Kelme', 'syc.png', '2019-12-19', 'Admin', NULL, NULL, NULL), ('13', NULL, '107', 'Three Star Club', 'Three Star Club is a Nepali football club based in Patan, Lalitpur. The club had a modest beginning in 2031B.S. A group of enthusiastic young people of Patan Durbar Square, Mangal Bazar established the club for sports development, social service, personality development and brotherhood.\r\n', '1974 A.D.', 'MangalBazar, Lalitpur', 'thrstarclub@yahoo.com', 'ANFA', 'Blue', 'White', 'Ruslan Vodka', 'Addidas', 'tsc.png', '2019-12-19', 'Admin', NULL, NULL, NULL), ('14 ', NULL, '107', 'Tribhuwan Army Club', 'Nepal Army Club, previously known as Tribhuvan Army Club, is the departmental Army sporting club of Nepal. They currently play in the top division of the country.\r\n', '1951 A.D.', 'Lagankhel, Lalitpur', 'dte-dpr@nepalarmy.mil.np ', 'ANFA', 'Green', 'Red', 'Pulsar Nepal', 'Kelme', 'tac.png', '2019-12-19', 'Admin', NULL, NULL, NULL);

/*Inserting data in news table */
INSERT INTO `news` (`row_id`, `news_id`, `cvalue_id`, `news_title`, `news_description`, `news_image`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) 
VALUES ('2', NULL, '102', 'Machhindra rolled over Brigade Boys in League opener\r\n', 'Yogesh Gurung and Dipak Rai grabbed a goal each in the half as Machhindra Club rolled over Brigade Boys Club in the inaugural match of the Qatar Airways Martyr\'s Memorial \'A\' Division League 2019/2020 that got underway today at the ANFA Complex, Satdobato.\r\n\r\nYogesh Gurung opened the scoring, heading in from a free kick after a well-timed run to the near post in the 30th minute.\r\n\r\nDipak Rai then doubled the lead for Machhindra in the 50th minute. Ranjit Dhimal set up Rai who drove the ball home from the edge of the area.\r\n\r\n', 'McVsBBc.jpeg', '2019-12-14', 'Admin', 'current_timestamp()', NULL, NULL), 
('3', NULL, '102', 'Army, Chyasal register win\r\n', 'Santosh Shahukhala scored twice to steer Chyasal Youth Club a 2-0 win over Sankata Club while Dinesh Hemjan late goal guided Tribhuwan Army 2-1 victory over Friends Club today in the ongoing Qatar Airways Martyr\'s Memorial\'A\'Division matches held at ANFA Complex and Dasrath Stadium.\r\n\r\nArmy made immediate threat to the opponents post, that found Nawayug Shrestha score an one- on-one from outside of the box beating Friends goalie Dev Limbu. Shakti Rai equalized for Friends in the 51st minute but Dinesh Hemjan\'s right footer strike following Bharat Khawash corner in the 81st minute helped Army earn important three points from first match.\r\n\r\nMeanwhile at Dasarath Stadium, Santosh Shahukhala scored in the 42nd and 86th minute as Chyasal Youth Club registered win against Sankata Club', 'Army&CycWin', '2019-12-16', 'Admin', 'current_timestamp()', NULL, NULL);

INSERT INTO `users` (`row_id`, `user_id`, `username`, `cvalue_id`, `FirstName`, `LastName`, `Email`, `user_password`) VALUES ('1', NULL, 'pranaya10', '100', 'Pranaya', 'Pradhan', 'pradhanpranaya8@gmail.com', 'nepal123'), ('2', NULL, 'Aayush07', '101', 'Aayush', 'Joshi', 'joshiaayush@gmail.com', 'aayush123');