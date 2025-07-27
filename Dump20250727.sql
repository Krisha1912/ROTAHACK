-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: rotaract_club_db
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `announcement_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `message` text,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`announcement_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Welcome New Members','We’re excited to onboard new faces!',1,'2025-07-25 18:01:44'),(2,'Blood Camp Success','Thanks to everyone who donated!',3,'2025-07-25 18:01:44'),(3,'Plantation Drive on Sunday','Join us at 9AM sharp.',2,'2025-07-25 18:01:44'),(4,'Art Competition Entry','Submissions close this Friday.',4,'2025-07-25 18:01:44'),(5,'Core Team Meetup','Saturday evening in Room 305.',6,'2025-07-25 18:01:44'),(6,'Annual Meet Tickets','Collect yours by 25th Feb.',1,'2025-07-25 18:01:44'),(7,'Website Launch','Official site is now live.',5,'2025-07-25 18:01:44'),(8,'New Roles Open','Apply by next week.',2,'2025-07-25 18:01:44'),(9,'Event Photos Uploaded','Check media gallery.',4,'2025-07-25 18:01:44'),(10,'Feedback Survey','Help us improve!',3,'2025-07-25 18:01:44');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `query_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text,
  `submitted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`query_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Rahul Shah','rahul@gmail.com','Join Club','I want to volunteer.','2025-07-25 18:01:59'),(2,'Mansi Gupta','mansi@yahoo.com','Event Info','When is the next event?','2025-07-25 18:01:59'),(3,'Dev Joshi','dev@outlook.com','Donate','How can I donate?','2025-07-25 18:01:59'),(4,'Ananya Roy','ananya@gmail.com','Feedback','Great website!','2025-07-25 18:01:59'),(5,'Vivek Sinha','vivek@rediff.com','Media Access','Can I download photos?','2025-07-25 18:01:59'),(6,'Nidhi Kapoor','nidhi@gmail.com','Suggestion','Add a newsletter section.','2025-07-25 18:01:59'),(7,'Kiran Rao','kiran@gmail.com','Workshop','Is registration open?','2025-07-25 18:01:59'),(8,'Ajay Das','ajay@ymail.com','BOD Query','Can I contact a member?','2025-07-25 18:01:59'),(9,'Ritika Jain','ritika@yahoo.com','Annual Meet','How to buy tickets?','2025-07-25 18:01:59'),(10,'Mehul Patel','mehul@gmail.com','Collab Request','Can we collaborate with your club?','2025-07-25 18:01:59');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Prajapati Divya Snehalkumar','divyaprajapati1126@gmail.com','hello','2025-07-26 16:21:31'),(2,'Prajapati Divya Snehalkumar','divyaprajapati1126@gmail.com','122','2025-07-26 20:39:12');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `donation_id` int NOT NULL AUTO_INCREMENT,
  `donor_name` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `message` text,
  `donated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES (1,'Amit Sharma',500.00,'Keep up the good work!','2025-07-25 18:01:32'),(2,'Neha Verma',1000.00,'In memory of my father.','2025-07-25 18:01:32'),(3,'Rohan Gupta',750.00,'Great initiative!','2025-07-25 18:01:32'),(4,'Sneha Desai',1200.00,'Helping hands.','2025-07-25 18:01:32'),(5,'Ketan Patel',300.00,'All the best!','2025-07-25 18:01:32'),(6,'Riya Shah',1500.00,'Proud to support.','2025-07-25 18:01:32'),(7,'Jay Mehta',250.00,'Small help.','2025-07-25 18:01:32'),(8,'Priya Nair',900.00,'Good effort.','2025-07-25 18:01:32'),(9,'Vikram Soni',1800.00,'Support for medical camp.','2025-07-25 18:01:32'),(10,'Alisha Sheikh',400.00,'Happy to help.','2025-07-25 18:01:32');
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_photos`
--

DROP TABLE IF EXISTS `event_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_photos` (
  `photo_id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `uploaded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`photo_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `event_photos_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_photos`
--

LOCK TABLES `event_photos` WRITE;
/*!40000 ALTER TABLE `event_photos` DISABLE KEYS */;
INSERT INTO `event_photos` VALUES (1,1,'uploads/events/cleanup1.jpg','2025-07-25 18:01:07'),(2,1,'uploads/events/cleanup2.jpg','2025-07-25 18:01:07'),(3,2,'uploads/events/bloodcamp1.jpg','2025-07-25 18:01:07'),(4,3,'uploads/events/food1.jpg','2025-07-25 18:01:07'),(5,4,'uploads/events/youth1.jpg','2025-07-25 18:01:07'),(6,5,'uploads/events/tree1.jpg','2025-07-25 18:01:07'),(7,6,'uploads/events/donation1.jpg','2025-07-25 18:01:07'),(8,7,'uploads/events/medical1.jpg','2025-07-25 18:01:07'),(9,8,'uploads/events/art1.jpg','2025-07-25 18:01:07'),(10,9,'uploads/events/defense1.jpg','2025-07-25 18:01:07');
/*!40000 ALTER TABLE `event_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `event_date` date DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`event_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Cleanliness Drive','Beach cleanup with volunteers.','2024-10-01','Juhu Beach',2,'2025-07-25 18:00:53'),(2,'Blood Donation Camp','Organized in college campus.','2024-10-10','New LJ Campus',3,'2025-07-25 18:00:53'),(3,'Food Distribution','Helping underprivileged.','2024-11-05','Ahmedabad',4,'2025-07-25 18:00:53'),(4,'Youth Leadership','Training for students.','2024-11-20','Community Hall',2,'2025-07-25 18:00:53'),(5,'Tree Plantation','Green initiative event.','2024-12-01','City Park',6,'2025-07-25 18:00:53'),(6,'Donation Rally','Fund collection on foot.','2024-12-15','Main Road',3,'2025-07-25 18:00:53'),(7,'Medical Camp','Free health checkup.','2025-01-10','Village Area',5,'2025-07-25 18:00:53'),(8,'Art Competition','Theme: Unity in Diversity.','2025-01-25','Auditorium',4,'2025-07-25 18:00:53'),(9,'Self Defense Workshop','Training for women.','2025-02-05','College Gym',2,'2025-07-25 18:00:53'),(10,'Annual Meet','Year-end review and celebration.','2025-03-01','Banquet Hall',1,'2025-07-25 18:00:53');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `media_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `type` enum('photo','video') DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `uploaded_by` int DEFAULT NULL,
  `uploaded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`media_id`),
  KEY `uploaded_by` (`uploaded_by`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'Beach Cleanup Video','video','uploads/media/cleanup.mp4',2,'2025-07-25 18:01:20'),(2,'Blood Camp Poster','photo','uploads/media/bloodposter.jpg',3,'2025-07-25 18:01:20'),(3,'Food Distribution Album','photo','uploads/media/foodalbum.jpg',4,'2025-07-25 18:01:20'),(4,'Youth Seminar Snaps','photo','uploads/media/youthsnaps.jpg',6,'2025-07-25 18:01:20'),(5,'Plantation Event Video','video','uploads/media/plantvideo.mp4',3,'2025-07-25 18:01:20'),(6,'Donation Drive Collage','photo','uploads/media/donationcollage.jpg',1,'2025-07-25 18:01:20'),(7,'Medical Camp Photos','photo','uploads/media/medicamp.jpg',5,'2025-07-25 18:01:20'),(8,'Annual Meet Highlights','video','uploads/media/annualmeet.mp4',1,'2025-07-25 18:01:20'),(9,'Defense Workshop Video','video','uploads/media/defense.mp4',2,'2025-07-25 18:01:20'),(10,'Art Competition Photos','photo','uploads/media/artcomp.jpg',4,'2025-07-25 18:01:20');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('member','bod','core_team','admin','visitor') DEFAULT 'member',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Divya Prajapati','divya@rotaract.com','123456','admin'),(2,'Raj Patel','raj@rotaract.com','abc123','bod'),(3,'Simran Mehta','simran@rotaract.com','pass123','core_team'),(4,'Aryan Shah','aryan@rotaract.com','testpass','member'),(5,'Neha Verma','neha@rotaract.com','neha123','visitor'),(6,'Prajapati Divya Snehalkumar','divyaprajapati1126@gmail.com','1234','member');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (5,'Admin'),(3,'BOD'),(4,'Core Team'),(2,'Member'),(1,'Visitor');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profiles` (
  `profile_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,1,'Riya Shah','riya@rotaract.com','9876543210','uploads/riya.jpg','Admin'),(2,2,'Yash Patel','yash@rotaract.com','9876543211','uploads/yash.jpg','Core Team Lead'),(3,3,'Mira Desai','mira@rotaract.com','9876543212','uploads/mira.jpg','BOD Treasurer'),(4,4,'Karan Joshi','karan@rotaract.com','9876543213','uploads/karan.jpg','Member'),(5,5,'Aarti Mehta','aarti@rotaract.com','9876543214','uploads/aarti.jpg','Member'),(6,6,'Jay Soni','jay@rotaract.com','9876543215','uploads/jay.jpg','Core Team PR'),(7,7,'Shruti Rao','shruti@rotaract.com','9876543216','uploads/shruti.jpg','BOD Secretary'),(8,8,'Rahul Kapadia','rahul@rotaract.com','9876543217','uploads/rahul.jpg','Member'),(9,9,'Simran Vyas','simran@rotaract.com','9876543218','uploads/simran.jpg','Admin'),(10,10,'Visitor Guest','guest@rotaract.com','9876543219','uploads/guest.jpg','Visitor');
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin1','$2b$10$adminhash1',5,'active','2025-07-25 17:59:55'),(2,'core1','$2b$10$corehash1',4,'active','2025-07-25 17:59:55'),(3,'bod1','$2b$10$bodhash1',3,'active','2025-07-25 17:59:55'),(4,'member1','$2b$10$memberhash1',2,'active','2025-07-25 17:59:55'),(5,'member2','$2b$10$memberhash2',2,'active','2025-07-25 17:59:55'),(6,'core2','$2b$10$corehash2',4,'active','2025-07-25 17:59:55'),(7,'bod2','$2b$10$bodhash2',3,'active','2025-07-25 17:59:55'),(8,'member3','$2b$10$memberhash3',2,'active','2025-07-25 17:59:55'),(9,'admin2','$2b$10$adminhash2',5,'active','2025-07-25 17:59:55'),(10,'visitor1','$2b$10$visitorhash1',1,'active','2025-07-25 17:59:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-27  6:18:41
