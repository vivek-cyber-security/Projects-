create database royaldb;
\c royaldb;



--
-- Table structure for table `tbladmin`
--

CREATE TABLE admin (
  ID SERIAL PRIMARY KEY,
  AName VARCHAR(120),
  UName VARCHAR(120),
  MobNumber BIGINT,
  Email VARCHAR(200),
  Pwd VARCHAR(120),
  ARegdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


--
-- Dumping data for table `tbladmin`
--


INSERT INTO admin (AName, UName, MobNumber, Email, Pwd, ARegdate) 
VALUES 
('Admin', 'admin', 5689784589, 'admin@gmail.com', md5('Test@123'), '2020-01-21 11:48:13');


--
-- Table structure for table `tblbooking`
--

CREATE TABLE booking (
  ID SERIAL PRIMARY KEY,
  BID INT NULL,
  SID INT NULL,
  UID INT NULL,
  BFrom DATE NULL,
  BTo DATE NULL,
  EventType VARCHAR(200) NULL,
  Nuofguest INT NULL,
  Msg TEXT NULL,
  BDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  Rmark VARCHAR(200) NULL,
  Status VARCHAR(200) NULL,
  UpdateDate TIMESTAMP NULL DEFAULT NULL
);

--
-- Dumping data for table `tblbooking`
--


INSERT INTO booking 
(BID, SID, UID, BFrom, BTo, EventType, Nuofguest, Msg, BDate, Rmark, Status, UpdateDate) 
VALUES
(422701608, 1, 3, '2022-02-17', '2022-02-19', 'Wedding', 200, 'rytriyu
uytuyi

joyuutuyfh', '2022-02-16 06:58:08', 'Approved', 'Approved', '2022-02-16 07:32:01'),
(697339619, 2, 4, '2022-02-20', '2022-02-22', 'Anniversary', 200, 'NA', '2022-02-19 15:24:38', 'Your booking is cancelled', 'Cancelled', '2022-02-19 15:59:38'),
(347642822, 4, 5, '2022-02-27', '2022-02-28', 'Pre Engagement', 25, 'NA', '2022-02-19 17:51:30', 'Approved', 'Approved', '2022-02-19 17:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE contact (
  ID SERIAL PRIMARY KEY,
  Name VARCHAR(200),
  Email VARCHAR(200),
  Msg TEXT,
  EnqDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  IsRead INT
);

--
-- Dumping data for table `tblcontact`
--
INSERT INTO contact (Name, Email, Msg, EnqDate, IsRead) VALUES
('Kiran', 'kran@gmail.com', 'cost of volvo place pritampura to dwarka', '2021-07-05 07:26:24', 1),
('Sarita Pandey', 'sar@gmail.com', 'huiyuihhjjkhkjvhknv iyi tuyvuoiup', '2021-07-09 12:48:40', 1),
('Test', 'test@gmail.com', 'Want to know price of forest cake', '2021-07-16 12:51:06', 1),
('Anuj', 'ak330@gmail.com', 'This is for testing.', '2021-07-18 14:35:50', 1),
('Meenu Kumari', 'meenu@gmail.com', 'gugjhjhgjhgjwerte', '2022-02-15 06:30:58', NULL),
('Anuj', 'ak@gmail.com', 'Testing', '2022-02-19 16:04:18', 1),
('Anuj', 'akj@gmail.com', 'This is for testing.', '2022-02-19 17:53:03', 1);


--
-- Table structure for table `tbleventtype`
--

CREATE TABLE eventtype (
  ID SERIAL PRIMARY KEY,
  EvtType VARCHAR(200),
  CreateDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


--
-- Dumping data for table `tbleventtype`
--

INSERT INTO eventtype (EvtType, CreateDate) VALUES
('Anniversary', '2020-01-22 07:01:39'),
('Birthday Party', '2020-01-22 07:02:34'),
('Charity', '2020-01-22 07:02:43'),
('Cocktail', '2020-01-22 07:03:00'),
('College', '2020-01-22 07:03:11'),
('Community', '2020-01-22 07:03:24'),
('Concert', '2020-01-22 07:03:35'),
('Engagement', '2020-01-22 07:03:51'),
('Get Together', '2020-01-22 07:04:04'),
('Government', '2020-01-22 07:04:15'),
('Night Club', '2020-01-22 07:04:26'),
('Post Wedding', '2020-01-22 07:05:01'),
('Pre Engagement', '2020-01-22 07:05:18'),
('Religious', '2020-01-22 07:05:27'),
('Sangeet', '2020-01-22 07:05:43'),
('Social', '2020-01-22 07:05:58'),
('Wedding', '2020-01-22 07:06:07');

--
-- Table structure for table `tblpage`
--


CREATE TABLE page (
  ID SERIAL PRIMARY KEY,
  PType VARCHAR(100),
  PTitle TEXT,
  PDescription TEXT,
  Email VARCHAR(200),
  MobNumber BIGINT,
  UpdateDate TIMESTAMP DEFAULT NULL
);




--
-- Dumping data for table `tblpage`
--

INSERT INTO page (PType, PTitle, PDescription, Email, MobNumber, UpdateDate) VALUES ('aboutus', 'About Us', '<b>Online Banquet Booking System</b><div><b>OBBS is one of the Internet largest and trusted Online Banquet Booking Service. OBBShas done several placements locally  globally for top artists.</b></div><div><b><br></b></div><div><b>Test data for testing.</b></div>', NULL, NULL, '2022-02-19 17:54:36');

INSERT INTO page (PType, PTitle, PDescription, Email, MobNumber, UpdateDate) VALUES ('contactus', 'Contact Us', 'D-204, Hole Town South West,Delhi-110096,India', 'info@gmail.com', 1234567899, '2022-02-19 17:54:52');



--
-- Table structure for table `tblservice`
--
CREATE TABLE service (
  ID SERIAL PRIMARY KEY,
  SName VARCHAR(200),
  SDescription VARCHAR(250) NOT NULL,
  SPrice VARCHAR(200),
  CreateDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


--
-- Dumping data for table `tblservice`
--
INSERT INTO service (SName, SDescription, SPrice, CreateDate) VALUES
('Wedding DJ', 'We install the DJ equipment before your ceremony or after your wedding breakfast', '800', '2020-01-24 07:17:43');

INSERT INTO service (SName, SDescription, SPrice, CreateDate) VALUES
('Party DJ', 'We install the DJ equipment 1 hour before your selected event start time', '700', '2020-01-24 07:18:32');


--
-- Create indexes for booking
--

CREATE INDEX idx_service_id ON booking (SID);
CREATE INDEX idx_event_type ON booking (EventType);


--
-- Table structure for table `user`
--

CREATE TABLE users(
  ID SERIAL PRIMARY KEY, 
  FName VARCHAR(200), 
  MobNumber BIGINT, 
  Email VARCHAR(200) UNIQUE, 
  Pwd VARCHAR(200), 
  RegDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--
-- Dumping data for table `users`
--
INSERT INTO users (FName, MobNumber, Email, Pwd, RegDate) VALUES
('Anvi', 9879878979, 'anvi@gmail.com', md5('Anvi@123'), '2022-02-15 09:15:51'),
('hkjhkj', 4579878687, 'rewati@yutuy', md5('Rewati@123'), '2022-02-15 09:16:44'),
('Reetu Singh', 5465465464, 'reetu@gmail.com', md5('Reetu@123'), '2022-02-15 12:07:55'),
('John Doe', 1234569879, 'John@gmail.com', md5('John@123'), '2022-02-19 15:17:04'),
('Anuj Singh', 1236985211, 'akj@gmail.com', md5('Ak@123'), '2022-02-19 17:50:28');


















