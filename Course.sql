USE college;

-- create table

CREATE TABLE Course(courseId INT PRIMARY KEY AUTO_INCREMENT, cNAME VARCHAR(255), Fee INTEGER); 

-- alter table

ALTER TABLE Course CHANGE COLUMN cNAME cname VARCHAR(255);
ALTER TABLE Course CHANGE COLUMN Fee Fee INTEGER NOT null ;

-- about table
DESC Course;

-- inserting values

INSERT INTO Course(courseId,cname,Fee) VALUES(1000,'Maths', 20000);
INSERT INTO Course(cname,Fee) VALUES('PD', 15000);
INSERT INTO Course(cname,Fee) VALUES('Java', 30000);
INSERT INTO Course(cname,Fee) VALUES('Python', 25000);
INSERT INTO Course(cname,Fee) VALUES('Enterperuner', 9000);

-- showing values

SELECT * FROM course;

-- deleting colums

DELETE FROM course WHERE courseId = 1001;
DELETE FROM course WHERE courseId = 1002;
DELETE FROM course WHERE courseId = 1003;
DELETE FROM course WHERE courseId = 1004;

-- student table creation
/* table created with foreign key */

CREATE TABLE Student (rollNO INT PRIMARY KEY, fName VARCHAR(25), lName VARCHAR(25),
								phoneNo INT NOT NULL,
								email VARCHAR(25) NOT NULL,
								cId INT,
								UNIQUE (phoneNo,email),
								CONSTRAINT fk_cId FOREIGN KEY(cId) REFERENCES course(courseId));

-- describe table 'student'
DESC student;
SELECT * FROM student

-- Faculty table creation.
/* table created with foreign key and unique constraint*/

CREATE TABLE Faculty (fID INT PRIMARY KEY, fName VARCHAR(25) NOT null, Desig VARCHAR(25),
								Qualification VARCHAR(50),
								phoneNo INT NOT NULL,
								UNIQUE (phoneNo),
								cId INT,
								CONSTRAINT fk_courId FOREIGN KEY(cId) REFERENCES course(courseId));

-- describe table 'student'
DESC Faculty;

-- creation of Book table

CREATE TABLE Book(Bid INT PRIMARY KEY, bName VARCHAR(255),
						UNIQUE(bName),
						Author VARCHAR(30),
						Publisher VARCHAR(30),
						Price FLOAT,
						Qty INT); 
DESC book;

-- creation of Library table

CREATE TABLE Library(LId INT PRIMARY KEY, fName VARCHAR(25),
								BookId int,
								IssueDate DATE,
								RetutnDate DATE,
								rollNo INT,
								CONSTRAINT fk_bookId FOREIGN KEY(BookId) REFERENCES book(Bid),
								CONSTRAINT fk_rollno FOREIGN KEY(rollNo) REFERENCES student(rollNO));
DESC library;

-- creation of address table

CREATE TABLE address(AdId int PRIMARY KEY,
							houseNo VARCHAR(10),
							street VARCHAR(10),
							city VARCHAR(20),
							state VARCHAR(25),
							pincode INT,
							rNo INT,
							cONSTRAINT fk_rno FOREIGN KEY(rNo) REFERENCES student(rollNO));
DESC address;

-- inserting values in course table

INSERT INTO course VALUES(101,'CSE',100000);
INSERT INTO course VALUES(102,'EE',75000);
INSERT INTO course VALUES(103,'Mech',80000);

-- inserting values in student table

INSERT INTO student VALUES(1001,'Tinsley','Spence',817871,'osrin@verizon.net',101);
INSERT INTO student VALUES(1002,'Cillian','Roach',341985,'ivoibs@sbcglobal.net',102);
INSERT INTO student VALUES(1003,'Lyanna','Santiago',600182 ,'symbolic@comcast.net',102);
INSERT INTO student VALUES(1004,'Beckham','McMahon',524825 ,'mcast@outlook.com',101);
INSERT INTO student VALUES(1005,'Belen','Barrera',130557 ,'webteam@verizon.net',103);
INSERT INTO student VALUES(1006,'Makai','Wall',239081 ,'bcevc@sbcglobal.net',103);
INSERT INTO student VALUES(1007,'Jayda','Parks',817871,'seebs@yahoo.com',101);
INSERT INTO student VALUES(1008,'Gianni','Cantrell',128889,'daveed@hotmail.com',102);
INSERT INTO student VALUES(1009,'Yamileth','Orr',390298,'srour@aol.com',101);
INSERT INTO student VALUES(1010,'Benicio','Kent',640503,'matty@me.com',103);
INSERT INTO student VALUES(1011,'Jazmine','Stevens',672795 ,'lbecchi@yahoo.ca',101);
INSERT INTO student VALUES(1012,'Zachary','Holt',168713,'bulletin@gmail.com',102);
INSERT INTO student VALUES(1013,'Adelynn','Vargas',895716,'stevelim@optonline.net',101);
INSERT INTO student VALUES(1014,'Ryker','Hull',142795,'kiddailey@att.net',103);
INSERT INTO student VALUES(1015,'Andi','Medrano',588691,'mugwump@verizon.net',103);
INSERT INTO student VALUES(1016,'Arian','Hinton',221613,'errxn@yahoo.com',103);
INSERT INTO student VALUES(1017,'Jaelynn','Schultz',345118,'sfoskett@yahoo.com',102);
INSERT INTO student VALUES(1018,'Cody','Shepherd',583757,'monopole@me.com',102);
INSERT INTO student VALUES(1019,'Katalina','Humphrey',182481,'marnanel@yahoo.com',102);
INSERT INTO student VALUES(1020,'Krew','Gallegos',955501,'carroll@optonline.net',102);
INSERT INTO student VALUES(1021,'Ari','Beltran',149469,'bader@outlook.com',102);
INSERT INTO student VALUES(1022,'Ricky','Tang',399239,'denism@aol.com',102);
INSERT INTO student VALUES(1023,'Belle','Conway',255886,'sherzodr@outlook.com',102);
INSERT INTO student VALUES(1024,'Orlando','Watts',876867,'barnett@me.com',101);
INSERT INTO student VALUES(1025,'Melissa','Walls',464778,'lcheng@sbcglobal.net',101);

SELECT * FROM student;

-- inserting values in

INSERT INTO address (AdId, houseNo, street, city, state, pincode, rNo) VALUES
(1, '101', 'Maple St', 'Springfield', 'IL', '62701', 1001),
(2, '102', 'Oak St', 'Springfield', 'IL', '62701', 1002),
(3, '103', 'Pine St', 'Springfield', 'IL', '62701', 1003),
(4, '104', 'Birch St', 'Springfield', 'IL', '62701', 1004),
(5, '105', 'Cedar St', 'Springfield', 'IL', '62701', 1005),
(6, '106', 'Elm St', 'Springfield', 'IL', '62701', 1006),
(7, '107', 'Willow St', 'Springfield', 'IL', '62701', 1007),
(8, '108', 'Maple St', 'Springfield', 'IL', '62701', 1008),
(9, '109', 'Oak St', 'Springfield', 'IL', '62701', 1009),
(10, '110', 'Pine St', 'Springfield', 'IL', '62701', 1010),
(11, '111', 'Birch St', 'Springfield', 'IL', '62701', 1011),
(12, '112', 'Cedar St', 'Springfield', 'IL', '62701', 1012),
(13, '113', 'Elm St', 'Springfield', 'IL', '62701', 1013),
(14, '114', 'Willow St', 'Springfield', 'IL', '62701', 1014),
(15, '115', 'Maple St', 'Springfield', 'IL', '62701', 1015),
(16, '116', 'Oak St', 'Springfield', 'IL', '62701', 1016),
(17, '117', 'Pine St', 'Springfield', 'IL', '62701', 1017),
(18, '118', 'Birch St', 'Springfield', 'IL', '62701', 1018),
(19, '119', 'Cedar St', 'Springfield', 'IL', '62701', 1019),
(20, '120', 'Elm St', 'Springfield', 'IL', '62701', 1020),
(21, '121', 'Willow St', 'Springfield', 'IL', '62701', 1021),
(22, '122', 'Maple St', 'Springfield', 'IL', '62701', 1022),
(23, '123', 'Oak St', 'Springfield', 'IL', '62701', 1023),
(24, '124', 'Pine St', 'Springfield', 'IL', '62701', 1024),
(25, '125', 'Birch St', 'Springfield', 'IL', '62701', 1025);

SELECT * FROM address;

-- inserting 100 books
DELETE FROM book WHERE Bid=0;

INSERT INTO book (Bid, bName, Author, Publisher, Price, Qty) VALUES

(302,'Book 2', 'Author B', 'Publisher Y', 14.99, 10),
(303,'Book 3', 'Author C', 'Publisher Z', 24.99, 3),
(304,'Book 4', 'Author D', 'Publisher X', 9.99, 8),
(305,'Book 5', 'Author E', 'Publisher Y', 29.99, 7),
(306,'Book 6', 'Author F', 'Publisher Z', 12.99, 15),
(307,'Book 7', 'Author G', 'Publisher X', 16.50, 9),
(308,'Book 8', 'Author H', 'Publisher Y', 13.99, 11),
(309,'Book 9', 'Author I', 'Publisher Z', 25.99, 6),
(310,'Book 10', 'Author J', 'Publisher X', 8.99, 12),
(311,'Book 11', 'Author K', 'Publisher Y', 22.50, 7),
(312,'Book 12', 'Author L', 'Publisher Z', 10.99, 14),
(313,'Book 13', 'Author M', 'Publisher X', 11.50, 16),
(314,'Book 14', 'Author N', 'Publisher Y', 23.99, 8),
(315,'Book 15', 'Author O', 'Publisher Z', 17.99, 4),
(316,'Book 16', 'Author P', 'Publisher X', 19.00, 10),
(317,'Book 17', 'Author Q', 'Publisher Y', 14.75, 9),
(318,'Book 18', 'Author R', 'Publisher Z', 21.99, 5),
(319,'Book 19', 'Author S', 'Publisher X', 18.50, 7),
(320,'Book 20', 'Author T', 'Publisher Y', 26.99, 6),
(321,'Book 21', 'Author U', 'Publisher Z', 24.99, 9),
(322,'Book 22', 'Author V', 'Publisher X', 13.99, 8),
(323,'Book 23', 'Author W', 'Publisher Y', 9.50, 12),
(324,'Book 24', 'Author X', 'Publisher Z', 28.00, 3),
(325,'Book 25', 'Author Y', 'Publisher X', 15.99, 11),
(326,'Book 26', 'Author Z', 'Publisher Y', 30.99, 4),
(327,'Book 27', 'Author AA', 'Publisher Z', 21.00, 5),
(328,'Book 28', 'Author BB', 'Publisher X', 18.99, 6),
(329,'Book 29', 'Author CC', 'Publisher Y', 16.75, 8),
(330,'Book 30', 'Author DD', 'Publisher Z', 23.75, 7),
(331,'Book 31', 'Author EE', 'Publisher X', 20.50, 5),
(332,'Book 32', 'Author FF', 'Publisher Y', 25.99, 10),
(333,'Book 33', 'Author GG', 'Publisher Z', 19.50, 4),
(334,'Book 34', 'Author HH', 'Publisher X', 22.99, 9),
(335,'Book 35', 'Author II', 'Publisher Y', 26.50, 7),
(336,'Book 36', 'Author JJ', 'Publisher Z', 15.50, 12),
(337,'Book 37', 'Author KK', 'Publisher X', 29.99, 6),
(338,'Book 38', 'Author LL', 'Publisher Y', 13.50, 14),
(339,'Book 39', 'Author MM', 'Publisher Z', 12.99, 8),
(340,'Book 40', 'Author NN', 'Publisher X', 27.99, 5),
(341,'Book 41', 'Author OO', 'Publisher Y', 31.50, 6),
(342,'Book 42', 'Author PP', 'Publisher Z', 10.50, 10),
(343,'Book 43', 'Author QQ', 'Publisher X', 28.99, 7),
(412,'Book 44', 'Author RR', 'Publisher Y', 18.99, 4),
(344,'Book 45', 'Author SS', 'Publisher Z', 15.99, 9),
(345,'Book 46', 'Author TT', 'Publisher X', 26.00, 11),
(346,'Book 47', 'Author UU', 'Publisher Y', 9.99, 13),
(347,'Book 48', 'Author VV', 'Publisher Z', 30.00, 8),
(348,'Book 49', 'Author WW', 'Publisher X', 11.99, 7),
(349,'Book 50', 'Author XX', 'Publisher Y', 29.50, 5),
(350,'Book 51', 'Author YY', 'Publisher Z', 18.50, 6),
(351,'Book 52', 'Author ZZ', 'Publisher X', 24.00, 9),
(352,'Book 53', 'Author AAA', 'Publisher Y', 12.50, 4),
(353,'Book 54', 'Author BBB', 'Publisher Z', 23.50, 10),
(354,'Book 55', 'Author CCC', 'Publisher X', 31.99, 8),
(355,'Book 56', 'Author DDD', 'Publisher Y', 17.99, 6),
(356,'Book 57', 'Author EEE', 'Publisher Z', 25.50, 5),
(357,'Book 58', 'Author FFF', 'Publisher X', 10.99, 12),
(358,'Book 59', 'Author GGG', 'Publisher Y', 22.50, 14),
(359,'Book 60', 'Author HHH', 'Publisher Z', 20.00, 8),
(360,'Book 61', 'Author III', 'Publisher X', 16.50, 7),
(361,'Book 62', 'Author JJJ', 'Publisher Y', 14.50, 10),
(362,'Book 63', 'Author KKK', 'Publisher Z', 11.00, 9),
(363,'Book 64', 'Author LLL', 'Publisher X', 21.50, 5),
(364,'Book 65', 'Author MMM', 'Publisher Y', 29.00, 7),
(365,'Book 66', 'Author NNN', 'Publisher Z', 27.50, 6),
(366,'Book 67', 'Author OOO', 'Publisher X', 17.50, 11),
(367,'Book 68', 'Author PPP', 'Publisher Y', 19.00, 9),
(368,'Book 69', 'Author QQQ', 'Publisher Z', 13.50, 8),
(369,'Book 70', 'Author RRR', 'Publisher X', 24.50, 10),
(370,'Book 71', 'Author SSS', 'Publisher Y', 18.00, 5),
(371,'Book 72', 'Author TTT', 'Publisher Z', 28.99, 6),
(372,'Book 73', 'Author UUU', 'Publisher X', 16.99, 7),
(373,'Book 74', 'Author VVV', 'Publisher Y', 25.75, 9),
(374,'Book 75', 'Author WWW', 'Publisher Z', 20.75, 8),
(375,'Book 76', 'Author XXX', 'Publisher X', 23.75, 11),
(376,'Book 77', 'Author YYY', 'Publisher Y', 31.75, 4),
(378,'Book 78', 'Author ZZZ', 'Publisher Z', 15.75, 6),
(379,'Book 79', 'Author AAAA', 'Publisher X', 13.25, 14),
(380,'Book 80', 'Author BBBB', 'Publisher Y', 18.99, 7),
(381,'Book 81', 'Author CCCC', 'Publisher Z', 28.50, 5),
(382,'Book 82', 'Author DDDD', 'Publisher X', 14.99, 12),
(383,'Book 83', 'Author EEEE', 'Publisher Y', 26.50, 9),
(384,'Book 84', 'Author FFFF', 'Publisher Z', 19.50, 8),
(385,'Book 85', 'Author GGGG', 'Publisher X', 12.50, 10),
(386,'Book 86', 'Author HHHH', 'Publisher Y', 30.00, 6),
(387,'Book 87', 'Author IIII', 'Publisher Z', 24.75, 5),
(388,'Book 88', 'Author JJJJ', 'Publisher X', 17.99, 7),
(389,'Book 89', 'Author KKKK', 'Publisher Y', 27.75, 8),
(390,'Book 90', 'Author LLLL', 'Publisher Z', 11.50, 9),
(391,'Book 91', 'Author MMMM', 'Publisher X', 22.99, 10),
(392,'Book 92', 'Author NNNN', 'Publisher Y', 27.50, 8),
(393,'Book 93', 'Author OOOO', 'Publisher Z', 14.99, 7),
(394,'Book 94', 'Author PPPP', 'Publisher X', 30.00, 6),
(395,'Book 95', 'Author QQQQ', 'Publisher Y', 12.99, 12),
(396,'Book 96', 'Author RRRR', 'Publisher Z', 19.99, 5),
(397,'Book 97', 'Author SSSS', 'Publisher X', 18.75, 9),
(398,'Book 98', 'Author TTTT', 'Publisher Y', 29.50, 6),
(399,'Book 99', 'Author UUUU', 'Publisher Z', 21.25, 8);
(400,'Book 100', 'Author VVVz', 'Publisher X', 16.50, 11);

SELECT * FROM book;

-- inserting values in faculty

INSERT INTO faculty (fID, fName, Desig, Qualification, PhoneNo,cId) VALUES
(700, 'Dr. Priya Sharma', 'Professor', 'PhD in Computer Science', 123456,101),
(701, 'Mr. Anil Mehta', 'Assistant Professor', 'M.Tech in Mechanical Engineering', 234067,102),
(702, 'Ms. Radhika Sinha', 'Lecturer', 'M.Sc in Physics', 34507876,101),
(703, 'Dr. Varun Khanna', 'Professor', 'PhD in Electrical Engineering', 456089,103),
(704, 'Mr. Suresh Iyer', 'Associate Professor', 'M.Phil in Mathematics', 1560890,103),
(705, 'Ms. Anita Patel', 'Lecturer', 'M.A in English', 608901,103),
(706, 'Dr. Neha Gupta', 'Professor', 'PhD in Chemistry', 780012,101),
(707, 'Mr. Ramesh Tiwari', 'Assistant Professor', 'M.Tech in Civil Engineering', 090123,102),
(708, 'Ms. Swati Verma', 'Lecturer', 'MCA in Computer Applications', 001234,102),
(709, 'Dr. Pankaj Jain', 'Professor', 'PhD in Biotechnology', 234507,102),
(710, 'Ms. Kavita Malhotra', 'Associate Professor', 'M.Ed in Education', 345078,101),
(711, 'Mr. Rajesh Bhatia', 'Lecturer', 'M.Com in Finance', 456780,103),
(712, 'Dr. Sangeeta Rao', 'Professor', 'PhD in Psychology', 560890,101),
(713, 'Ms. Meera Nair', 'Assistant Professor', 'MFA in Fine Arts', 670901,101),
(714, 'Mr. Amit Kumar', 'Lecturer', 'MBA in Business Administration', 789010,102);

SELECT * FROM faculty;

-- complex queries

-- retreieve students and thier corresponding addresses

SELECT s.rollNO, s.Fname, s.lName, s.phoneNo, s.Email,
			a.houseNo, a.street, a.City, a.State, a.Pincode
FROM student s
JOIN address a ON s.rollNO = a.rNo;

-- Get faculty and their course details

SELECT f.fname, f.desig, f.qualification, f.phoneno, c.cname, c.fee
FROM faculty f
JOIN course c ON f.cid = c.courseid;

-- find all students enrolled in a specific course and their corresponding and their corresponding faculty

SELECT s.fname AS studentfirstname, s.lname AS studentlastname, s.phoneno, s.email,
			f.fname AS facultyname, f.desig, c.cname AS coursename
FROM student s
JOIN course c ON s.cid = c.courseid
JOIN faculty f ON c.courseid= f.cid
WHERE c.cname = 'CSE';

-- retreieve the total quantity and price of all books

SELECT SUM(b.qty) AS totalquantity, SUM(b.price) AS totalprice
FROM book b;

-- find students and their course information along with the faculty teaching the course

SELECT s.fname AS studentfirstname, s.lname AS studentlastname, s.phoneno, s.email,
			c.cname AS coursename, c.fee, f.fname AS facultyname, f.desig
FROM student s
JOIN course c ON s.cid = c.courseid
JOIN faculty f ON f.cid = c.courseid;

-- number of students in each course

SELECT cname, COUNT(*) AS noofstudents
FROM student s JOIN course c ON s.cid=c.courseid
GROUP BY cid;