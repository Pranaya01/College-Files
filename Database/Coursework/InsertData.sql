#Designation
INSERT INTO Designation VALUES (1, 'Tour Guide');
INSERT INTO Designation VALUES (2, 'Travel Agent');
INSERT INTO Designation VALUES (3, 'Receptionist');
INSERT INTO Designation VALUES (4, 'Accountant');
INSERT INTO Designation VALUES (5, 'IT Director');
#Staff
INSERT INTO Staff VALUES (1, 'Ananta Tamang', 'Kathmandu','9851025639',1);
INSERT INTO Staff VALUES (2, 'Biraj Maharjan', 'Kathmandu','984108597',1);
INSERT INTO Staff VALUES (3, 'Alan Neupane', 'Hetauda', '9851025639',1);
INSERT INTO Staff VALUES (4, 'Santosh Shahukhala', 'Lalitpur', '9851037096',1);
INSERT INTO Staff VALUES (5, 'Kamal Shrestha', 'Kathmandu', '9841025369',2);
INSERT INTO Staff VALUES (6, 'Rejin Subba', 'Kathmandu', '9849078956',2);
INSERT INTO Staff VALUES (7, 'Abhishek Rijal', 'Nuwakot', '9849078596',3);
INSERT INTO Staff VALUES (8, 'Rupesh KC', 'Nuwakot', '9802578569',3);
INSERT INTO Staff VALUES (9, 'Sunil Bal', 'Lalitpur', '9841258963',4);
INSERT INTO Staff VALUES (10, 'Bikesh Kuthu', 'Bhaktapur', '9843609875',4);
INSERT INTO Staff VALUES (11, 'Dinesh Rajbanshi', 'Lalitpur', '9836789545',5);
INSERT INTO Staff VALUES (12, 'Bishal Shrestha', 'Kathmandu', '9851084957',5);
#Package
INSERT INTO Package VALUES ('PK1','Pokhara', '10-Jan-2020', '15-Jan-2020', 5,'Easy');
INSERT INTO Package VALUES ('PK2', 'Mt.Everst', '12-Jan-2020', '25-Jan-2020', 13, 'Hard');
INSERT INTO Package VALUES ('PK3', 'ABC', '1-Feb-2020', '7-Feb-2020', 7, 'Moderate');
INSERT INTO Package VALUES ('PK4', 'Ghandruk', '10-Feb-2020', '14-Feb-2020', 4, 'Moderate');
INSERT INTO Package VALUES ('PK5', 'Lumbini', '20-Feb-2020', '24-Feb-2020', 5, 'Easy');
#Destination
INSERT INTO destination VALUES (1, 'Pokhara');
INSERT INTO destination VALUES (2, 'Mt.Everest');
INSERT INTO destination VALUES (3, 'ABC');
INSERT INTO destination VALUES (4,'Ghandruk');
INSERT INTO destination VALUES (5,'Lumbini');
#Customer
INSERT INTO Customer VALUES (1, 'PK1', 'Arun Man Joshi', 'Tripureshwor', '9851055037', 'joshiarunman@gmail.com');
INSERT INTO Customer VALUES (2, 'PK1', 'Sanjib Shilpakar', 'Mangal Bazar',  '9851037368', 'sanjibsports@gmail.com');
INSERT INTO Customer VALUES (3, 'PK2', 'Meghraj KC', 'Bhanimandal', '9851028178', 'kcmegraj@gmail.com');
INSERT INTO Customer VALUES (4, 'PK2', 'Mangal Maharjan', 'Gwarko', '9841468250', 'mangalm@gmail.com');
INSERT INTO Customer VALUES (5, 'PK3', 'Ram Shrestha Boss', 'Bhaisipati', '9851859674', 'ram.bossgmail.com');
INSERT INTO Customer VALUES (6, 'PK3', 'Mukesh Nakarmi', 'Sundhara', '9851859674', 'mukeshnakarmi01@gmail.com');
INSERT INTO Customer VALUES (7, 'PK4', 'Krishna Awale', 'Thecho', '9851055063', 'awalekrishna@gmail.com');
INSERT INTO Customer VALUES (8, 'PK4', 'Utsav Shakya', 'Kupondole', '9843608596', 'utsavs@gmail.com');
INSERT INTO Customer VALUES (9, 'PK5', 'Mikchhen Tamang', 'Hattiban', '9841589677', 'tamangmikcchen@gmail.com');
INSERT INTO Customer VALUES (10,'PK5', 'Bikram Lama', 'Chayasal', '9841859674', 'lamabikram@gmail.com');





#Tour Guide
INSERT INTO TourGuide VALUES (1, 'PK1');
INSERT INTO TourGuide VALUES (2, 'PK2');
INSERT INTO TourGuide VALUES (3, 'PK3');
INSERT INTO TourGuide VALUES (4, 'PK4');
INSERT INTO TourGuide VALUES (1, 'PK5');
#PackageDestination
INSERT INTO PackageDestination VALUES ('PK1', 1);
INSERT INTO PackageDestination VALUES ('PK2', 2);
INSERT INTO PackageDestination VALUES ('PK3', 3);
INSERT INTO PackageDestination VALUES ('PK4', 4);
INSERT INTO PackageDestination VALUES ('PK5', 5);
#Activity
INSERT INTO Activity VALUES (1, 'Driving to Destination from Kathmandu', 'Bus');
INSERT INTO Activity VALUES (2, 'Fully day Sightseeing in Pokhara and enjoy boating in Phewa Lake', 'Bus/Walk/Boating');
INSERT INTO Activity VALUES (3, 'Visit Tal Barahi Temple and market visit', 'Bus/Walk');
INSERT INTO Activity VALUES (4, 'Driving back to Kathmandu', 'Bus');
INSERT INTO Activity VALUES (5, 'Fly Kathmandu to Lukla. Trek to Phadking', 'Flight/Walk');
INSERT INTO Activity VALUES (6,'Trek from Phadking to Namche Bazaar','Walk');
INSERT INTO Activity VALUES (7,'Acclimatization day in Namche Bazaar', 'Walk');
INSERT INTO Activity VALUES (8,'Trek from Namche Bazaar to Tengboche', 'Walk');
INSERT INTO Activity VALUES (9, 'Trek from Tengboche to Periche', 'Walk');
INSERT INTO Activity VALUES (10, 'Acclimitization Day. Potentially Trek from Pheriche to Dingboche', 'Walk');
INSERT INTO Activity VALUES (11, 'Trek from Pheriche to Lobuche', 'Walk');
INSERT INTO Activity VALUES (12,'Hike from Lobuche to Gorak Shep', 'Walk');
INSERT INTO Activity VALUES (13, 'Gorak Shep to Kala Patthar, then onto Dingboche', 'Walk');
INSERT INTO Activity VALUES (14, 'Hike back to Namche Bazaar from Dingbocheg', 'Walk');
INSERT INTO Activity VALUES (15, 'Hike from Namche Bazaar to Lukla', 'Walk');
INSERT INTO Activity VALUES (16, 'Fly back from Lukla to Kathmandu', 'Flight/Walk');
INSERT INTO Activity VALUES (17, 'Drive to Nayapul and trek to Ghandruk', 'Bus/Walk');
INSERT INTO Activity VALUES (18, 'Trek from Ghandruk to Sinuwa', 'Walk');
INSERT INTO Activity VALUES (19, 'Trek from Sinuwa to Deurali', 'Walk');
INSERT INTO Activity VALUES (20, 'Trek from Deurali to Annapurna', 'Walk');
INSERT INTO Activity VALUES (21, 'Trek from Annapurna Base Camp to Bamboo', 'Walk');
INSERT INTO Activity VALUES (22, 'Trek from Bamboo to Jhinu Hot Spring', 'Walk');
INSERT INTO Activity VALUES (23,'Trek from Jhinu Hot Spring to Nayapul and Drive to Pokhara', 'Walk/Bus');
INSERT INTO Activity VALUES (24,'Trek to Ghandruk, plore the Ghandruk Village', 'Bus/Walk');
INSERT INTO Activity VALUES (25,'View the beautiful sunrise and Himalayas. Trek Down to Pokhara', 'Bus/Walk');
INSERT INTO Activity VALUES (26,'Drive from Kathmandu to Lumbini', 'Bus');
INSERT INTO Activity VALUES (27,'Lumbini Garden for worship', 'Walk');
INSERT INTO Activity VALUES (28,'Drive to Tilaurakot (Kapilvastu) covering major shrines such as: Gotihawa, Niglihawa and Kundan', 'Bus/Walk');
INSERT INTO Activity VALUES (29,'Drive from Lumbini to Kathmandu', 'Bus');



#PackageDays
INSERT INTO PackageDays VALUES ('Day1', 'PK1', 'Kathmandu to Pokhara', 'Moderate','Complete');
INSERT INTO PackageDays VALUES ('Day2', 'PK1', 'Stay in Pokhara', 'Easy', 'Complete');
INSERT INTO PackageDays VALUES ('Day3', 'PK1', 'Stay in Pokhara', 'Easy', 'Complete');
INSERT INTO PackageDays VALUES ('Day4', 'PK1', 'Pokhara to Kathmandu', 'Moderate', 'Complete');
INSERT INTO PackageDays VALUES ('Day1', 'PK2', 'Kathmandu to Lukla', 'Easy', 'Complete');
INSERT INTO PackageDays VALUES ('Day2', 'PK2', 'Phadking to Namche Bazar', 'Moderate', 
'Complete');
INSERT INTO PackageDays VALUES ('Day3', 'PK2', 'Staying in Namche Bazar', 'Easy',
'Complete');
INSERT INTO PackageDays VALUES ('Day4', 'PK2', 'Namche to Tengboche', 'Hard',
'Complete');
INSERT INTO PackageDays VALUES ('Day5', 'PK2', 'Tengboche to Dingboche', 'Hard',
'Complete');;
INSERT INTO PackageDays VALUES ('Day6', 'PK2', 'Dingboche to Pheriche', 'Hard',
'Complete');
INSERT INTO PackageDays VALUES ('Day7', 'PK2', 'Pheriche to Lobuche', 'Hard', 
'Complete');
INSERT INTO PackageDays VALUES ('Day8', 'PK2', 'Lobuche to Gorak Shep', 'Hard', 
'Complete');
INSERT INTO PackageDays VALUES ('Day9', 'PK2', 'Gorak Shep to Kala Patthar, then onto Dingboche', 'Hard',
'Complete');
INSERT INTO PackageDays VALUES ('Day10', 'PK2', 'Dingboche to NamcheBazar', 'Hard',
'Complete');
INSERT INTO PackageDays VALUES ('Day11', 'PK2', 'NamcheBazar to Lukla', 'Hard',
'Complete');
INSERT INTO PackageDays VALUES ('Day12', 'PK2', 'Lukla to Kathmandu', 'Moderate',
'Complete');
INSERT INTO PackageDays VALUES ('Day1', 'PK3', 'Kathmandu to Pokhara', 'Easy', 'Remaining');
INSERT INTO PackageDays VALUES ('Day2', 'PK3', 'Pokhara to Nayapul', 'Moderate', 'Remaining');
INSERT INTO PackageDays VALUES ('Day3', 'PK3', 'Nayapul to Ghandruk', 'Hard', 'Remaining');
INSERT INTO PackageDays VALUES ('Day4', 'PK3', 'Ghandruk to Sinuwa', 'Hard', 'Remaining');
INSERT INTO PackageDays VALUES ('Day5', 'PK3', 'Sinuwa to Deurali', 'Hard', 'Remaining');
INSERT INTO PackageDays VALUES ('Day6', 'PK3', 'Deurali to Annapurna Base Camp', 'Hard', 'Remaining');
INSERT INTO PackageDays VALUES ('Day7', 'PK3', 'Annapurna Base Camp to Bamboo', 'Hard', 'Remaining');
INSERT INTO PackageDays VALUES ('Day8', 'PK3', 'Bamboo to Jhinu Hot Spring', 'Hard', 'Remaining');
INSERT INTO PackageDays VALUES ('Day9', 'PK3', 'Jhinu Hot Spring to Nayapul', 'Hard', 'Remaining');
INSERT INTO PackageDays VALUES ('Day10', 'PK3', 'Nayapul to Pokhara', 'Moderate', 'Remaining');
INSERT INTO PackageDays VALUES ('Day11', 'PK3', 'Pokhara to Kathmandu', 'Easy', 'Remaining');
INSERT INTO PackageDays VALUES ('Day1', 'PK4', 'Kathmandu to Pokhara', 'Easy', 'Remaining');
INSERT INTO PackageDays VALUES ('Day2', 'PK4', 'Explore in Ghandruk', 'Moderate', 'Remaining');
INSERT INTO PackageDays VALUES ('Day3', 'PK4', 'Ghandruk to Pokhara', 'Moderate', 'Remaining');
INSERT INTO PackageDays VALUES ('Day4', 'PK4', 'Pokhara to Kathmandu', 'Easy', 'Remaining');
INSERT INTO PackageDays VALUES ('Day1', 'PK5', 'Kathmandu to Lumbini', 'Easy', 'Remaining');
INSERT INTO PackageDays VALUES ('Day2', 'PK5', 'Lumbini to Bhairahawa', 'Easy', 'Remaining');
INSERT INTO PackageDays VALUES ('Day3', 'PK5', 'Bhairahawa to Tilaurakot', 'Moderate', 'Remaining');
INSERT INTO PackageDays VALUES ('Day4', 'PK5', 'Bhairahawa to Kathmandu', 'Moderate', 'Remaining');
#PackageActivity
INSERT INTO PackageActivity VALUES ('Day1', 'PK1', 1, 1);
INSERT INTO PackageActivity VALUES ('Day2', 'PK1', 2, 1);
INSERT INTO PackageActivity VALUES ('Day3', 'PK1', 3, 1);
INSERT INTO PackageActivity VALUES ('Day4', 'PK1', 4, 1);
INSERT INTO PackageActivity VALUES ('Day1', 'PK2', 5, 2);
INSERT INTO PackageActivity VALUES ('Day2', 'PK2', 6, 2);
INSERT INTO PackageActivity VALUES ('Day3', 'PK2', 7, 2);
INSERT INTO PackageActivity VALUES ('Day4', 'PK2', 8, 2);
INSERT INTO PackageActivity VALUES ('Day5', 'PK2', 9, 2);
INSERT INTO PackageActivity VALUES ('Day6', 'PK2', 10, 2);
INSERT INTO PackageActivity VALUES ('Day7', 'PK2', 11, 2);
INSERT INTO PackageActivity VALUES ('Day8', 'PK2', 12, 2);
INSERT INTO PackageActivity VALUES ('Day9', 'PK2', 13, 2);
INSERT INTO PackageActivity VALUES ('Day10', 'PK2', 14, 2);
INSERT INTO PackageActivity VALUES ('Day11', 'PK2', 15, 2);
INSERT INTO PackageActivity VALUES ('Day12', 'PK2', 16, 2);
INSERT INTO PackageActivity VALUES ('Day1', 'PK3', 1, 3);
INSERT INTO PackageActivity VALUES ('Day2', 'PK3', 17, 3);
INSERT INTO PackageActivity VALUES ('Day3', 'PK3', 18, 3);
INSERT INTO PackageActivity VALUES ('Day4', 'PK3', 19, 3);
INSERT INTO PackageActivity VALUES ('Day5', 'PK3', 20, 3);
INSERT INTO PackageActivity VALUES ('Day6', 'PK3', 21, 3);
INSERT INTO PackageActivity VALUES ('Day7', 'PK3', 22,3);
INSERT INTO PackageActivity VALUES ('Day8', 'PK3', 23, 3);
INSERT INTO PackageActivity VALUES ('Day9', 'PK3', 4, 3);
INSERT INTO PackageActivity VALUES ('Day1', 'PK4', 1, 4);
INSERT INTO PackageActivity VALUES ('Day2', 'PK4', 24, 4);
INSERT INTO PackageActivity VALUES ('Day3', 'PK4', 25, 4);
INSERT INTO PackageActivity VALUES ('Day4','PK4',4, 4);
INSERT INTO PackageActivity VALUES ('Day1', 'PK5', 26, 1);
INSERT INTO PackageActivity VALUES ('Day2', 'PK5', 27,1);
INSERT INTO PackageActivity VALUES ('Day3', 'PK5', 28, 1);
INSERT INTO PackageActivity VALUES ('Day4', 'PK5', 29, 1);
