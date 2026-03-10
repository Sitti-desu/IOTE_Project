-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2026 at 12:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot_kmitl_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `curriculums`
--

CREATE TABLE `curriculums` (
  `id` int(11) NOT NULL,
  `curriculum_name` varchar(255) NOT NULL,
  `total_credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curriculums`
--

INSERT INTO `curriculums` (`id`, `curriculum_name`, `total_credits`) VALUES
(1, 'หลักสูตรวิศวกรรมศาสตรบัณฑิต สาขาวิชาวิศวกรรมไอโอทีและสารสนเทศ', 138),
(2, 'หลักสูตรสองปริญญา วท.บ.ฟิสิกส์อุตสาหกรรม และ วศ.บ.วิศวกรรมระบบไอโอทีและสารสนเทศ', 165);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curriculums`
--
ALTER TABLE `curriculums`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curriculums`
--
ALTER TABLE `curriculums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/************************************************************************/

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2026 at 12:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot_kmitl_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `curriculum_id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_name_th` varchar(255) NOT NULL,
  `course_name_en` varchar(255) DEFAULT NULL,
  `credits` int(11) NOT NULL,
  `year_level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course_type` varchar(100) DEFAULT NULL,
  `course_group` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `curriculum_id`, `course_code`, `course_name_th`, `course_name_en`, `credits`, `year_level`, `semester`, `course_type`, `course_group`) VALUES
(6, 1, '01006030', 'แคลคูลัส 1', 'CALCULUS 1', 3, 1, 1, 'บังคับ', 'core'),
(7, 1, '01006020', 'ฟิสิกส์ทั่วไป 1', 'GENERAL PHYSICS 1', 3, 1, 1, 'บังคับ', 'core'),
(8, 1, '01006021', 'ปฏิบัติการฟิสิกส์ทั่วไป 1', 'GENERAL PHYSICS LABORATORY 1', 1, 1, 1, 'บังคับ', 'core'),
(9, 1, '01006012', 'การเขียนโปรแกรมคอมพิวเตอร์', 'COMPUTER PROGRAMMING', 3, 1, 1, 'บังคับ', 'core'),
(10, 1, '01236611', 'พื้นฐานระบบไอโอที', 'INTRODUCTION TO INTERNET OF THINGS', 3, 1, 1, 'บังคับ', 'core'),
(11, 1, '01236604', 'วงจรไฟฟ้าและอิเล็กทรอนิกส์', 'CIRCUITS AND ELECTRONICS', 3, 1, 1, 'บังคับ', 'core'),
(12, 1, '01236605', 'ปฏิบัติการวงจรไฟฟ้าและอิเล็กทรอนิกส์', 'CIRCUITS AND ELECTRONICS LABORATORY', 1, 1, 1, 'บังคับ', 'core'),
(13, 1, '90642036', 'เตรียมความพร้อมสำหรับวิศวกร', 'PRE-ACTIVITIES FOR ENGINEERS', 1, 1, 1, 'บังคับ', 'core'),
(14, 1, '90641008', 'พื้นฐานทักษะการสื่อสารภาษาอังกฤษ', 'INTRODUCTION TO ENGLISH COMMUNICATION SKILLS', 0, 1, 1, 'เงื่อนไข', 'english'),
(15, 1, '01236610', 'ปฏิบัติการเขียนแบบสามมิติทางวิศวกรรม', 'ENGINEERING 3D DRAWING IN PRACTICE', 1, 1, 1, 'บังคับ', 'core'),
(16, 1, '90641007', 'พลเมืองดิจิทัล', 'DIGITAL CITIZEN', 3, 1, 1, 'บังคับ', 'general'),
(17, 1, '01006031', 'แคลคูลัส 2', 'CALCULUS 2', 3, 1, 2, 'บังคับ', 'core'),
(18, 1, '01006022', 'ฟิสิกส์ทั่วไป 2', 'GENERAL PHYSICS 2', 3, 1, 2, 'บังคับ', 'core'),
(19, 1, '01006023', 'ปฏิบัติการฟิสิกส์ทั่วไป 2', 'GENERAL PHYSICS LABORATORY 2', 1, 1, 2, 'บังคับ', 'core'),
(20, 1, '01236602', 'คณิตศาสตร์ดิสครีต', 'DISCRETE MATHEMATICS', 3, 1, 2, 'บังคับ', 'core'),
(21, 1, '01236613', 'การเขียนโปรแกรมเชิงวัตถุ', 'OBJECT-ORIENTED PROGRAMMING', 3, 1, 2, 'บังคับ', 'core'),
(22, 1, '01236619', 'การออกแบบเชิงปฏิสัมพันธ์', 'INTERACTION DESIGN', 3, 1, 2, 'บังคับ', 'core'),
(23, 1, '01236601', 'ความน่าจะเป็นและสถิติ', 'PROBABILITY AND STATISTICS', 3, 1, 2, 'บังคับ', 'core'),
(24, 1, '90642118', 'ซอฟต์แวร์ประยุกต์สำหรับธุรกิจ', 'APPLICATION SOFTWARE FOR BUSINESS', 2, 1, 2, 'บังคับ', 'general'),
(25, 1, '90641004', 'โครงงานกลุ่ม 1', 'TEAM-PROJECT 1', 1, 1, 2, 'บังคับ', 'project'),
(26, 1, '01236600', 'พีชคณิตเชิงเส้นและสมการเชิงอนุพันธ์', 'LINEAR ALGEBRA AND DIFFERENTIAL EQUATIONS', 3, 2, 1, 'บังคับ', 'core'),
(27, 1, '01236615', 'หลักการระบบการสื่อสาร', 'PRINCIPLE OF COMMUNICATION SYSTEMS', 3, 2, 1, 'บังคับ', 'core'),
(28, 1, '01236626', 'การวิเคราะห์และออกแบบระบบ', 'SYSTEM ANALYSIS AND DESIGN', 3, 2, 1, 'บังคับ', 'core'),
(29, 1, '01236614', 'โครงสร้างข้อมูลและอัลกอริทึม', 'DATA STRUCTURE AND ALGORITHM', 3, 2, 1, 'บังคับ', 'core'),
(30, 1, '01236603', 'พื้นฐานการออกแบบระบบดิจิทัล', 'FUNDAMENTAL OF DIGITAL SYSTME DESIGN', 3, 2, 1, 'บังคับ', 'core'),
(31, 1, '01236609', 'ปฏิบัติการออกแบบระบบดิจิทัล', 'DIGITAL SYSTEM DESIGN LABORATORY', 1, 2, 1, 'บังคับ', 'core'),
(32, 1, '90641009', 'ทักษะการสื่อสารภาษาอังกฤษระหว่างวัฒนธรรม 1', 'INTERCULTURAL COMMUNICATION SKILLS IN ENGLISH 1', 3, 2, 1, 'บังคับ', 'english'),
(33, 1, '01236616', 'การสื่อสารข้อมูลและเครือข่ายในระบบไอโอที', 'DATA COMMUNICATIONS AND IOT NETWORKS', 3, 2, 2, 'บังคับ', 'core'),
(34, 1, '01236617', 'เซ็นเซอร์และระบบไซเบอร์กายภาพ', 'SENSORS AND CYBER PHYSICAL SYSTEM', 3, 2, 2, 'บังคับ', 'core'),
(35, 1, '01236618', 'การพัฒนาแอปพลิเคชันบนเว็บและโมไบล์', 'WEB AND MOBILE APPLICATION DEVELOPMENT', 3, 2, 2, 'บังคับ', 'core'),
(36, 1, '01236627', 'สถาปัตยกรรมคอมพิวเตอร์และระบบปฏิบัติการ', 'COMPUTER ARCHITECTURE AND OPERATING SYSTEM', 3, 2, 2, 'บังคับ', 'core'),
(37, 1, '01236630', 'ระบบฐานข้อมูล', 'DATABASE SYSTEM', 3, 2, 2, 'บังคับ', 'core'),
(38, 1, '01236628', 'การดำเนินการระบบคลาวด์เชิงปฏิบัติ', 'CLOUD OPERATIONS IN PRACTICES', 1, 2, 2, 'บังคับ', 'core'),
(39, 1, '90641005', 'โครงงานกลุ่ม 2', 'TEAM-PROJECT 2', 1, 2, 2, 'บังคับ', 'project'),
(40, 1, '90641010', 'ทักษะการสื่อสารภาษาอังกฤษระหว่างวัฒนธรรม 2', 'INTERCULTURAL COMMUNICATION SKILLS IN ENGLISH 2', 3, 2, 2, 'บังคับ', 'english'),
(41, 1, '01236612', 'ไมโครคอนโทรลเลอร์และระบบสมองกลฝังตัว', 'MICROCONTROLLER AND EMBEDDED SYSTEMS', 3, 3, 1, 'บังคับ', 'core'),
(42, 1, '01236621', 'ปัญญาประดิษฐ์ของทุกสรรพสิ่ง', 'ARTIFICIAL INTELLIGENCE OF THINGS', 3, 3, 1, 'บังคับ', 'core'),
(43, 1, '01236622', 'ระบบความมั่นคงปลอดภัยทางไซเบอร์', 'CYBER SECURITY SYSTEMS', 3, 3, 1, 'บังคับ', 'core'),
(44, 1, '01236629', 'ระบบสื่อสารไร้สายสำหรับไอโอที', 'WIRELESS COMMUNICATION FOR IOT SYSTEM', 3, 3, 1, 'บังคับ', 'core'),
(45, 1, '01236623', 'ปฏิบัติการระบบไอโอทีและสารสนเทศ 1', 'IOT AND INFORMATION ENGINEERING LABORATORY 1', 1, 3, 1, 'บังคับ', 'lab'),
(46, 1, '01236625', 'สัมมนากับผู้เชี่ยวชาญ', 'SEMINAR WITH PROFESSIONALS', 0, 3, 1, 'บังคับ', 'seminar'),
(47, 1, '90644xxx', 'วิชาเลือกด้านภาษาและการสื่อสาร', 'LANGUAGE AND COMMUNICATION COURSES', 3, 3, 1, 'เลือก', 'language'),
(48, 1, '909644xx', 'วิชาเลือกด้านภาษาและการสื่อสาร', 'LANGUAGE AND COMMUNICATION COURSES', 3, 3, 1, 'เลือก', 'language'),
(49, 1, '01236620', 'พีแอลซีและไอโอทีในอุตสาหกรรม', 'PLC AND INDUSTRIAL INTERNET OF THINGS', 3, 3, 2, 'บังคับ', 'core'),
(50, 1, '0123xxxx', 'หมวดวิชาบังคับเลือก', 'IOT MAJOR ELECTIVE', 3, 3, 2, 'เลือก', 'major_elective'),
(51, 1, '0123xxxx', 'หมวดวิชาบังคับเลือก', 'IOT MAJOR ELECTIVE', 3, 3, 2, 'เลือก', 'major_elective'),
(52, 1, 'xxxxxxxx', 'หมวดวิชาเลือกเสรี', 'FREE ELECTIVE', 3, 3, 2, 'เลือก', 'free_elective'),
(53, 1, '01236624', 'ปฏิบัติการระบบไอโอทีและสารสนเทศ 2', 'IOT AND INFORMATION ENGINEERING LABORATORY 2', 1, 3, 2, 'บังคับ', 'lab'),
(54, 1, '90641006', 'โครงงานกลุ่ม 3', 'TEAM PROJECT 3', 1, 3, 2, 'บังคับ', 'project'),
(55, 1, '9064xxxx', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'GENERAL EDUCATION COURSE', 3, 3, 2, 'เลือก', 'general_elective'),
(56, 1, '90964xxx', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'GENERAL EDUCATION COURSE', 3, 3, 2, 'เลือก', 'general_elective'),
(57, 1, '01006004', 'การฝึกงานอุตสาหกรรม', 'INDUSTRIAL TRAINING', 0, 3, 3, 'บังคับ', 'training'),
(58, 1, '01236606', 'โครงงานวิศวกรรมไอโอทีและสารสนเทศ 1', 'IOT AND INFORMATION ENGINEERING PROJECT 1', 3, 4, 1, 'บังคับ', 'project_track'),
(59, 1, '0123xxxx', 'หมวดวิชาเลือกเฉพาะสาขา', 'ELECTIVE', 3, 4, 1, 'เลือก', 'major_elective'),
(60, 1, '0123xxxx', 'หมวดวิชาเลือกเฉพาะสาขา', 'ELECTIVE', 3, 4, 1, 'เลือก', 'major_elective'),
(61, 1, 'xxxxxxxx', 'หมวดวิชาเลือกเสรี', 'FREE ELECTIVE', 3, 4, 1, 'เลือก', 'free_elective'),
(62, 1, '01236608', 'การออกแบบความคิดรวบยอดทางวิศวกรรมไอโอที', 'IOT ENGINEERING CAPSTONE DESIGN', 1, 4, 2, 'บังคับ', 'project_track'),
(63, 1, '01236607', 'โครงงานวิศวกรรมไอโอทีและสารสนเทศ 2', 'IOT AND INFORMATION ENGINEERING PROJECT 2', 3, 4, 2, 'บังคับ', 'project_track'),
(64, 1, '0123xxxx', 'หมวดวิชาเลือกเฉพาะสาขา', 'ELECTIVE', 3, 4, 2, 'เลือก', 'major_elective'),
(65, 1, '01006029', 'สหกิจศึกษา', 'CO-OPERATIVE EDUCATION', 6, 4, 1, 'บังคับ', 'coop_track'),
(66, 1, '01006005', 'การปฏิบัติการฝึกงานต่างประเทศ', 'OVERSEA TRAINING', 6, 4, 1, 'บังคับ', 'coop_track'),
(67, 1, '01006302', 'STUDY ABROAD', 'STUDY ABROAD', 6, 4, 1, 'บังคับ', 'coop_track'),
(68, 1, '0123xxxx', 'หมวดวิชาเลือกสาขา', 'ELECTIVE', 3, 4, 2, 'เลือก', 'major_elective'),
(69, 1, '0123xxxx', 'หมวดวิชาเลือกสาขา', 'ELECTIVE', 3, 4, 2, 'เลือก', 'major_elective'),
(70, 1, '0123xxxx', 'หมวดวิชาเลือกสาขา', 'ELECTIVE', 3, 4, 2, 'เลือก', 'major_elective'),
(71, 1, 'xxxxxxxx', 'หมวดวิชาเลือกเสรี', 'FREE ELECTIVE', 3, 4, 2, 'เลือก', 'free_elective'),
(72, 2, '05016201', 'แคลคูลัส 1', 'CALCULUS 1', 3, 1, 1, 'บังคับ', 'core'),
(73, 2, '05206500', 'ชีววิทยาทั่วไป', 'GENERAL BIOLOGY', 3, 1, 1, 'บังคับ', 'core'),
(74, 2, '05366001', 'ฟิสิกส์และการประยุกต์ 1', 'PHYSICS AND APPLICATIONS 1', 3, 1, 1, 'บังคับ', 'core'),
(75, 2, '05366002', 'ปฏิบัติการฟิสิกส์และการประยุกต์ 1', 'PHYSICS AND APPLICATIONS LABORATORY 1', 1, 1, 1, 'บังคับ', 'lab'),
(76, 2, '05366022', 'การเขียนโปรแกรมคอมพิวเตอร์', 'COMPUTER PROGRAMMING', 3, 1, 1, 'บังคับ', 'core'),
(77, 2, '05206501', 'ปฏิบัติการชีววิทยาทั่วไป', 'GENERAL BIOLOGY LABORATORY', 1, 1, 1, 'บังคับ', 'lab'),
(78, 2, '05366043', 'การเขียนแบบและการฝึกงานวิศวกรรม', 'DRAWING AND ENGINEERING WORKSHOP', 1, 1, 1, 'บังคับ', 'core'),
(79, 2, '90644007', 'ภาษาอังกฤษพื้นฐาน 1', 'FOUNDATION ENGLISH 1', 3, 1, 1, 'บังคับ', 'english'),
(80, 2, '90641001', 'โรงเรียนสร้างเสน่ห์', 'CHARM SCHOOL', 2, 1, 1, 'บังคับ', 'general'),
(81, 2, '90641003', 'กีฬาและนันทนาการ', 'SPORT AND RECREATION ACTIVITIES', 1, 1, 1, 'บังคับ', 'general'),
(82, 2, '05016202', 'แคลคูลัส 2', 'CALCULUS 2', 3, 1, 2, 'บังคับ', 'core'),
(83, 2, '05366003', 'ฟิสิกส์และการประยุกต์ 2', 'PHYSICS AND APPLICATIONS 2', 3, 1, 2, 'บังคับ', 'core'),
(84, 2, '05366004', 'ปฏิบัติการฟิสิกส์และการประยุกต์ 2', 'PHYSICS AND APPLICATIONS LABORATORY 2', 1, 1, 2, 'บังคับ', 'lab'),
(85, 2, '05366021', 'ทฤษฎีวงจรไฟฟ้าและอิเล็กทรอนิกส์พื้นฐาน', 'ELECTRICAL CIRCUIT THEORY AND BASIC ELECTRONICS', 3, 1, 2, 'บังคับ', 'core'),
(86, 2, '05366025', 'อิเล็กทรอนิกส์ดิจิตอล', 'DIGITAL ELECTRONICS', 3, 1, 2, 'บังคับ', 'core'),
(87, 2, '90644008', 'ภาษาอังกฤษพื้นฐาน 2', 'FOUNDATION ENGLISH 2', 3, 1, 2, 'บังคับ', 'english'),
(88, 2, '90641002', 'ความฉลาดทางดิจิทัล', 'DIGITAL INTELLIGENCE QUOTIENT', 3, 1, 2, 'บังคับ', 'general'),
(89, 2, '90xxxxxx', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'ELECTIVE TOPICS FOR FACULTY COURSE REQUIREMENT', 3, 1, 2, 'เลือก', 'general_elective'),
(90, 2, '05366020', 'คณิตศาสตร์สำหรับนักฟิสิกส์', 'MATHEMATICS FOR PHYSICISTS', 3, 2, 1, 'บังคับ', 'core'),
(91, 2, '05366038', 'สถิติในงานอุตสาหกรรม', 'INDUSTRIAL STATISTICS', 3, 2, 1, 'บังคับ', 'core'),
(92, 2, '05366032', 'สนามแม่เหล็กไฟฟ้า', 'ELECTROMAGNETICS FIELD', 3, 2, 1, 'บังคับ', 'core'),
(93, 2, '05366036', 'ไมโครคอนโทรลเลอร์และการเชื่อมต่อ', 'MICROCONTROLLER AND INTERFACING', 3, 2, 1, 'บังคับ', 'core'),
(94, 2, '05366034', 'เซ็นเซอร์และทรานสดิวเซอร์', 'SENSORS AND TRANSDUCERS', 3, 2, 1, 'บังคับ', 'core'),
(95, 2, '05366023', 'วงจรอิเล็กทรอนิกส์', 'ELECTRONICS CIRCUITS', 3, 2, 1, 'บังคับ', 'core'),
(96, 2, '05366039', 'ปฏิบัติการฟิสิกส์ระดับกลาง 1', 'INTERMEDIATE PHYSICS LABORATORY 1', 1, 2, 1, 'บังคับ', 'lab'),
(97, 2, '90642036', 'เตรียมความพร้อมสำหรับวิศวกร', 'PRE-ACTIVITIES FOR ENGINEERS', 1, 2, 1, 'บังคับ', 'general'),
(98, 2, '01236255', 'พื้นฐานระบบไอโอที', 'INTRODUCTION TO INTERNET OF THINGS', 3, 2, 1, 'บังคับ', 'iot'),
(99, 2, '01236258', 'การสื่อสารพื้นฐาน', 'PRINCIPLES OF COMMUNICATIONS', 3, 2, 1, 'บังคับ', 'iot'),
(100, 2, '05366024', 'ปฏิบัติการอิเล็กทรอนิกส์', 'ELECTRONICS LABORATORY', 1, 2, 2, 'บังคับ', 'lab'),
(101, 2, '05366028', 'กลศาสตร์', 'MECHANICS', 3, 2, 2, 'บังคับ', 'core'),
(102, 2, '05366030', 'ฟิสิกส์ยุคใหม่', 'MODERN PHYSICS', 3, 2, 2, 'บังคับ', 'core'),
(103, 2, '05366033', 'คลื่นและทัศนศาสตร์', 'WAVES AND OPTICS', 3, 2, 2, 'บังคับ', 'core'),
(104, 2, '05366040', 'ปฏิบัติการฟิสิกส์ระดับกลาง 2', 'INTERMEDIATE PHYSICS LABORATORY 2', 1, 2, 2, 'บังคับ', 'lab'),
(105, 2, '90642118', 'โปรแกรมคอมพิวเตอร์ประยุกต์ทางธุรกิจ', 'APPLICATION SOFTWARE FOR BUSINESS', 2, 2, 2, 'บังคับ', 'general'),
(106, 2, '01236257', 'การเขียนโปรแกรมเชิงวัตถุและโครงสร้างข้อมูล', 'OBJECT-ORIENTED PROGRAMMING AND DATA STRUCTURE', 3, 2, 2, 'บังคับ', 'core'),
(107, 2, '01236261', 'การพัฒนาแอพพลิเคชันบนโมไบล์', 'MOBILE APPLICATION DEVELOPMENT', 3, 2, 2, 'บังคับ', 'core'),
(108, 2, '01236262', 'การออกแบบเชิงปฏิสัมพันธ์', 'INTERACTION DESIGN', 3, 2, 2, 'บังคับ', 'core'),
(109, 2, '05106030', 'เคมีทั่วไป', 'GENERAL CHEMISTRY', 3, 3, 1, 'บังคับ', 'core'),
(110, 2, '05106042', 'ปฏิบัติการเคมีทั่วไป', 'GENERAL CHEMISTRY LABORATORY', 1, 3, 1, 'บังคับ', 'lab'),
(111, 2, '05366035', 'ฟิสิกส์และเทคโนโลยีของสิ่งประดิษฐ์สารกึ่งตัวนำ', 'PHYSICS AND TECHNOLOGY OF SEMICONDUCTOR DEVICES', 3, 3, 1, 'บังคับ', 'core'),
(112, 2, '05366031', 'ฟิสิกส์เชิงความร้อนและเชิงสถิติ', 'THERMAL AND STATISTICAL PHYSICS', 3, 3, 1, 'บังคับ', 'core'),
(113, 2, '05366080', 'สัมมนา', 'SEMINAR', 1, 3, 1, 'บังคับ', 'seminar'),
(114, 2, '05366041', 'ปฏิบัติการฟิสิกส์อุตสาหกรรม 1', 'INDUSTRIAL PHYSICS LABORATORY 1', 1, 3, 1, 'บังคับ', 'lab'),
(115, 2, '05366027', 'ปฏิบัติการอิเล็กทรอนิกส์ดิจิตอล', 'ELECTRONIC DIGITAL LABORATORY', 1, 3, 1, 'บังคับ', 'lab'),
(118, 2, '01236264', 'ปัญญาประดิษฐ์ในทุกสรรพสิ่ง', 'ARTIFICIAL INTELLIGENCE OF THINGS', 3, 3, 1, 'บังคับ', 'iot'),
(119, 2, '05366029', 'กลศาสตร์ควอนตัมและเทคโนโลยีควอนตัม', 'QUANTUM MECHANICS AND QUANTUM TECHNOLOGY', 3, 3, 2, 'บังคับ', 'core'),
(120, 2, '05366037', 'การวัดและเครื่องมือวัด', 'MEASUREMENT AND INSTRUMENTATION', 3, 3, 2, 'บังคับ', 'core'),
(121, 2, '05366042', 'ปฏิบัติการฟิสิกส์อุตสาหกรรม 2', 'INDUSTRIAL PHYSICS LABORATORY 2', 1, 3, 2, 'บังคับ', 'lab'),
(125, 2, '01236265', 'ระบบความมั่นคงทางไซเบอร์', 'CYBER SECURITY SYSTEMS', 3, 3, 2, 'บังคับ', 'iot'),
(126, 2, '01236263', 'ระบบไอโอทีในอุตสาหกรรม', 'INDUSTRIAL INTERNET OF THINGS', 3, 3, 2, 'บังคับ', 'iot'),
(127, 2, '01236259', 'ระบบโครงข่ายไอโอทีและการสื่อสารข้อมูล', 'IoT NETWORKS AND DATA COMMUNICATIONS', 3, 3, 2, 'บังคับ', 'iot'),
(128, 2, '05366090', 'ฝึกงาน', 'INDUSTRIAL TRAINING', 0, 3, 3, 'บังคับ', 'training'),
(129, 2, '05366091', 'โครงงานพิเศษ 1', 'SPECIAL PROJECT 1', 3, 4, 1, 'บังคับ', 'project_track'),
(130, 2, '0535xxxx', 'วิชาเลือก (2)', 'ELECTIVE', 3, 4, 1, 'เลือก', 'major_elective'),
(131, 2, '0535xxxx', 'วิชาเลือก (3)', 'ELECTIVE', 3, 4, 1, 'เลือก', 'major_elective'),
(132, 2, 'xxxxxxxx', 'วิชาเลือกเสรี (2)', 'FREE ELECTIVE', 3, 4, 1, 'เลือก', 'free_elective'),
(133, 2, '0123xxxx', 'วิชาบังคับเลือกทางวิศวกรรมระบบไอโอทีและสารสนเทศ (1)', 'IoT AND INFORMATION MANDATORY ELECTIVE', 3, 4, 1, 'เลือก', 'mandatory_elective'),
(134, 2, '05366092', 'โครงงานพิเศษ 2', 'SPECIAL PROJECT 2', 3, 4, 2, 'บังคับ', 'project_track'),
(135, 2, '90xxxxxx', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'FREE ELECTIVE TOPICS IN GENERAL EDUCATION', 3, 4, 2, 'เลือก', 'general_elective'),
(136, 2, '0123xxxx', 'วิชาบังคับเลือกทางวิศวกรรมระบบไอโอทีและสารสนเทศ (2)', 'IoT AND INFORMATION MANDATORY ELECTIVE', 3, 4, 2, 'เลือก', 'mandatory_elective'),
(137, 2, '0123xxxx', 'วิชาบังคับเลือกทางวิศวกรรมระบบไอโอทีและสารสนเทศ (3)', 'IoT AND INFORMATION MANDATORY ELECTIVE', 3, 4, 2, 'เลือก', 'mandatory_elective'),
(138, 2, '05106030', 'เคมีทั่วไป', 'GENERAL CHEMISTRY', 3, 3, 1, 'บังคับ', 'coop_track'),
(139, 2, '05106042', 'ปฏิบัติการเคมีทั่วไป', 'GENERAL CHEMISTRY LABORATORY', 1, 3, 1, 'บังคับ', 'coop_track'),
(140, 2, '05366035', 'ฟิสิกส์และเทคโนโลยีของสิ่งประดิษฐ์สารกึ่งตัวนำ', 'PHYSICS AND TECHNOLOGY OF SEMICONDUCTOR DEVICES', 3, 3, 1, 'บังคับ', 'coop_track'),
(141, 2, '05366031', 'ฟิสิกส์เชิงความร้อนและเชิงสถิติ', 'THERMAL AND STATISTICAL PHYSICS', 3, 3, 1, 'บังคับ', 'coop_track'),
(142, 2, '05366080', 'สัมมนา', 'SEMINAR', 1, 3, 1, 'บังคับ', 'coop_track'),
(144, 2, '05366027', 'ปฏิบัติการอิเล็กทรอนิกส์ดิจิตอล', 'ELECTRONIC DIGITAL LABORATORY', 1, 3, 1, 'บังคับ', 'coop_track'),
(145, 2, '90xxxxxx', 'วิชาเลือกตามเกณฑ์ของคณะ', 'ELECTIVE TOPICS FOR FACULTY COURSE REQUIREMENT', 3, 3, 1, 'เลือก', 'general_elective'),
(146, 2, 'xxxxxxxx', 'วิชาเลือกเสรี (1)', 'FREE ELECTIVE', 3, 4, 1, 'เลือก', 'free_elective'),
(158, 2, '05366093', 'สหกิจศึกษา', 'CO-OPERATIVE EDUCATION', 6, 4, 1, 'บังคับ', 'coop_track'),
(159, 2, '05366094', 'การฝึกงานต่างประเทศ', 'OVERSEA TRAINING', 6, 4, 1, 'บังคับ', 'coop_track'),
(167, 1, '9064xxxx', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'GENERAL EDUCATION COURSE', 3, 3, 2, 'เลือก', 'general_elective'),
(168, 1, '90964xxx', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'GENERAL EDUCATION COURSE', 3, 3, 2, 'เลือก', 'general_elective');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
