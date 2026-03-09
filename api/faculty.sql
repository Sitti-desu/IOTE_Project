-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2026 at 01:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `position` varchar(100) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `department` enum('Physics','IoT') NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `education` text DEFAULT NULL,
  `expertise` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `fullname`, `position`, `image_path`, `department`, `email`, `education`, `expertise`) VALUES
(1, 'ผศ.ดร.พิกุลแก้ว ตังติสานนท์', 'หัวหน้าภาควิชาวิศวกรรมสารสนเทศ', 'images/Prof.IOTE/iot_01.png', 'IoT', 'pikulkaew.ta@kmitl.ac.th', 'B.Eng. (Electronics Engineering) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Web Application, Mobile Application, Information Security'),
(2, 'ศ.ดร.บุณย์ชนะ ภู่ระหงษ์', 'ผู้ประสานงานสาขาวิชาวิศวกรรมสารสนเทศ', 'images/Prof.IOTE/iot_02.png', 'IoT', 'boonchana.pu@kmitl.ac.th', 'อส.บ. (เทคโนโลยีอิเล็กทรอนิกส์) และ วศ.ม. (วิศวกรรมสารสนเทศ) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Microprocessor Application, Microcontroller, Robotics, IoT, Smart System'),
(3, 'ศ.ดร.อภิรัฐ ศิริธราธิวัตร', 'รองหัวหน้าภาควิชา (ฝ่ายวิจัยและนวัตกรรม)', 'images/Prof.IOTE/iot_03.png', 'IoT', NULL, 'B.Eng. Electrical Engineering (มหาวิทยาลัยขอนแก่น) และระดับปริญญาเอกในช่วงปี 1995–1999', 'Power Loss Reduction, Battery Energy Storage, Swarm Algorithms'),
(4, 'ผศ.ดร.วันวิสา ชัชวงษ์', 'รองหัวหน้าภาควิชา (ฝ่ายการเงิน)', 'images/Prof.IOTE/iot_04.png', 'IoT', 'vanvisa.ch@kmitl.ac.th', 'อส.บ. เกียรตินิยมอันดับ 2 (เทคโนโลยีอิเล็กทรอนิกส์), วศ.ม. (วิศวกรรมสารสนเทศ) และ วศ.ด. (วิศวกรรมไฟฟ้า) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Delay Chrominance Equalizer, Bernstein Polynomials'),
(5, 'ผศ.ดร.นัชนันท์ รุ่งเหมือนฟ้า', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_05.png', 'IoT', 'natchanai.ro@kmitl.ac.th', 'B.Eng. (Electronics Engineering), M.Eng. (Control Engineering) และ D.Eng. (Electrical Engineering) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Immittance Function Simulators, Active Analog Filters, Chaotic Circuits'),
(6, 'ผศ.ดร.เกล็ดดาว สัตย์เจริญ', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_06.png', 'IoT', 'kleddao.sa@kmitl.ac.th', 'B.Sc. in Management Technology (KMITL), M.A. (Political Science), M.Sc. in Computing และ Ph.D. in Computer Science จาก University of Buckingham สหราชอาณาจักร', 'Management of Accounting and Control Systems'),
(7, 'ผศ.นิจจารีย์ สัตยารักษ์', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_07.png', 'IoT', 'nitjaree.sa@kmitl.ac.th', 'อส.บ. (เทคโนโลยีอิเล็กทรอนิกส์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Medical Image Processing, Diabetic Retinopathy Analysis'),
(8, 'ผศ.ดร.ธนวิชญ์ อนุวุฒิพินิจ', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_08.png', 'IoT', 'pinit.ta@kmitl.ac.th', 'B.Eng. (Information Engineering), M.Eng. (Information Engineering) และ D.Eng. (Electrical Engineering) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'IoT Portable Water Quality Monitoring'),
(9, 'ดร.สุวิไล พุ่มโพธิ์', 'รองหัวหน้าภาควิชา (ฝ่ายกิจการภายนอก)', 'images/Prof.IOTE/iot_09.png', 'IoT', 'suwilai.ph@kmitl.ac.th', 'B.Eng. (Electronics Engineering) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Immittance Function Simulators'),
(10, 'ผศ.ดร.อรรถพล ป้อมสถิตย์', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_10.png', 'IoT', 'auttapon.po@kmitl.ac.th', 'B.Eng. (Electronics Engineering), M.Eng. (Information Engineering) และ D.Eng. (Electrical Engineering) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Cyber Security, Internetworking Design, Information Security'),
(11, 'ผศ.ดร.พนารัตน์ เชิญถนอมวงศ์', 'อาจารย์ประจำภาควิชา (ผู้ช่วยฝ่ายกิจการภายนอก)', 'images/Prof.IOTE/iot_11.png', 'IoT', 'panarat.ch@kmitl.ac.th', 'วศ.บ. (โทรคมนาคม) KMITL, วศ.ม. (วิศวกรรมไฟฟ้า) KMITL และ D.Eng. (International Development Engineering) จาก Tokyo Institute of Technology ประเทศญี่ปุ่น', 'IT for Agriculture, Visible Light Communication, Infrared Technology'),
(12, 'ผศ.สรพงษ์ วชิรรัตนพรกุล', 'อาจารย์ผู้รับผิดชอบหลักสูตร', 'images/Prof.IOTE/iot_12.png', 'IoT', 'sorapong.wa@kmitl.ac.th', 'ปวส. สาขาอิเล็กทรอนิกส์, อส.บ. (เทคโนโลยีอิเล็กทรอนิกส์) KMITL และ วศ.ม. (วิศวกรรมไฟฟ้า) KMITL', 'RFID, Animal Identification Systems, Biometrics'),
(13, 'ผศ.ไพศาล สิทธิโอภาสกุล', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_13.png', 'IoT', 'paisan-si@kmitl.ac.th', 'อส.บ. (เทคโนโลยีคอมพิวเตอร์อุตสาหกรรม) และ วศ.ม. (วิศวกรรมไฟฟ้า) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Wireless Communication, Microprocessor Applications, Digital Filter'),
(14, 'รศ.ดร.อรรถสิทธิ์ หล่าสกุล', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_14.png', 'IoT', 'attasit.la@kmitl.ac.th', 'อส.บ. (เทคโนโลยีอิเล็กทรอนิกส์) KMITL, วศ.ม. (วิศวกรรมไฟฟ้า) KMITL และ D.Eng. (Electrical Engineering) Tokai University ประเทศญี่ปุ่น', 'Digital Processing, Image Watermarking, Embedded Systems, Machine Learning'),
(15, 'ศ.ดร.ปิติเขต สู้รักษา', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_15.png', 'IoT', 'pitikhate.so@kmitl.ac.th', 'กศ.บ. (ฟิสิกส์) มศว, วท.ม. (ฟิสิกส์) มศว, M.S. (Electrical Engineering) George Washington Univ และ Ph.D. (Electrical Engineering) Univ of Houston สหรัฐอเมริกา', 'Control Systems, Automation & Robotics, Chaotic Systems'),
(16, 'นายธนาตย์ จอมใจเอกชน', 'เจ้าหน้าที่วิศวกร', 'images/Prof.IOTE/iot_16.png', 'IoT', NULL, NULL, NULL),
(17, 'นายธีรสิทธิ์ โก้ทอง', 'เจ้าหน้าที่วิศวกร', 'images/Prof.IOTE/iot_17.png', 'IoT', NULL, NULL, NULL),
(18, 'รศ.ดร.ภัทรียา ดำรงศักดิ์', 'หัวหน้าภาควิชาฟิสิกส์', 'images/Prof.Physics/phy_01.png', 'Physics', 'pattareeya.da@kmitl.ac.th', 'Doctor of Philosophy สาขา Engineering Materials จาก University of Southampton ประเทศอังกฤษ', 'Optical Spectroscopy, Silicon Photovoltaics, Fluorescent Concentrators'),
(19, 'รศ.ดร.สาหร่าย เล็กชะอุ่ม', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_02.png', 'Physics', 'sarai.le@kmitl.ac.th', 'วศ.ม. (นิวเคลียร์เทคโนโลยี) จุฬาลงกรณ์มหาวิทยาลัย', 'Stirling Engine, Tissue Simulation, Measuring Method, IoT Technology'),
(20, 'รศ.ดร.รัชนก สมพรเสน่ห์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_03.png', 'Physics', 'ratchanok.so@kmitl.ac.th', 'Doctor of Philosophy สาขา Physics จาก University at Buffalo, The State University of NY', 'Nanoelectronics, 2D Materials, Graphene, Quantum Transport'),
(21, 'ผศ.ดร.ศ.ทิพวรรณ คล้ายบุญมี', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_04.png', 'Physics', 's.tipawan.kh@kmitl.ac.th', 'วท.บ., วท.ม. และ ปร.ด. สาขาฟิสิกส์ประยุกต์ สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Applied Physics'),
(22, 'รศ.ดร.อาภาภรณ์ สกุลการะเวก', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_05.png', 'Physics', 'aparporn.sa@kmitl.ac.th', 'วิทยาศาสตรดุษฎีบัณฑิต (ฟิสิกส์) จากจุฬาลงกรณ์มหาวิทยาลัย', 'Thin Film, Thermoelectric Material, Thermal Property, Material Science'),
(23, 'ดร.พิชชานันท์ ธีเศรษฐ์โศภน', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_06.png', 'Physics', 'pichanan.te@kmitl.ac.th', 'วท.บ. ฟิสิกส์ (ม.เกษตรศาสตร์), วท.ม. ฟิสิกส์เชิงเคมี (ม.มหิดล) และ Ph.D. Energy จาก AIT', 'Physics, Chemical Physics, Energy'),
(24, 'ผศ.ดร.เมตยา กีติวรรณ', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_07.png', 'Physics', 'mettaya.ki@kmitl.ac.th', 'Ph.D. (Materials Processing) จาก Tohoku University ประเทศญี่ปุ่น', 'Nano-Coating by Rotary CVD, Microwave Processing of Materials'),
(25, 'ผศ.ธนภรณ์ ลีลาวัฒนานนท์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_08.png', 'Physics', 'tanaporn.le@kmitl.ac.th', 'วท.ม. (เทคโนโลยีสารสนเทศ) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Modeling and Simulation, Surface Plasmons, Optical Data Communication'),
(26, 'ผศ.สุรศักดิ์ พิพัฒน์ศาสตร์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_09.png', 'Physics', 'surasak.pi@kmitl.ac.th', 'ปริญญาตรี และ วท.ม. (ฟิสิกส์ประยุกต์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Optics, Energy, Photonic Crystals'),
(27, 'ผศ.ดร.ประธาน บุรณศิริ', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_10.png', 'Physics', 'prathan.bu@kmitl.ac.th', 'Doctor of Philosophy สาขา Electrical Engineering จาก University of Dayton สหรัฐอเมริกา', 'Quantitative Phase Imaging, Digital Holography, Nonlinear Optics, Metamaterial'),
(28, 'อ.ธรรมรัตน์ แต่งตั้ง', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_11.png', 'Physics', NULL, NULL, 'Fiber Optics, Quantum Key Distribution, RMS Periodic Signals'),
(29, 'อ.สุรชาติ กมลดิลก', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_12.png', 'Physics', 'kamoldiloks@gmail.com', 'วท.ม. (ฟิสิกส์ประยุกต์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Fiber Optics, Optiwave, Computer Vision in Agriculture (YOLOv5s)'),
(30, 'ผศ.ดร.ณัฐพร พรหมรส', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_13.png', 'Physics', 'kpnathap@kmitl.ac.th หรือ nathaporn.pr@kmitl.ac.th', 'Doctor of Engineering (Applied Science for Electronics and Materials) จาก Kyushu University ประเทศญี่ปุ่น', 'Thin Film, Thermoelectric Material, Material Characterization'),
(31, 'รศ.ดร.เชษฐา รัตนพันธ์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_14.png', 'Physics', 'chesta.ru@kmitl.ac.th', 'ปรัชญาดุษฎีบัณฑิต (ฟิสิกส์ประยุกต์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Synthesis, Characterization, Thermoelectric Materials, Energy Storage'),
(32, 'รศ.ดร.กฤษกร โล่เจริญรัตน์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_15.png', 'Physics', 'kitsakorn.lo@kmitl.ac.th', 'Ph.D. สาขา Physical Materials Science จาก Japan Advanced Institute of Science and Technology (JAIST) ประเทศญี่ปุ่น', 'Cancer, Plasmonics, Nanoparticles'),
(33, 'ผศ.ดร.ภาณุพล โขลนกระทก', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_16.png', 'Physics', 'bhanupol.kl@kmitl.ac.th', 'วิศวกรรมศาสตรดุษฎีบัณฑิต (วิศวกรรมไฟฟ้า) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Measurement and Instrumentations, Forensic Science, Image Processing'),
(34, 'ผศ.ดร.พิศาล สุขวิสูตร', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_17.png', 'Physics', 'pisan.su@kmitl.ac.th', 'B.Sc., M.Sc. และ Ph.D. สาขาฟิสิกส์ จากมหาวิทยาลัยสงขลานครินทร์', 'Physics, Alloy Synthesis via Ball Milling for Wastewater Treatment'),
(35, 'ดร.ชินพรรธน์ รัตนศิริวิทย์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_18.png', 'Physics', 'woraka.ne@kmitl.ac.th', 'Ph.D. Physics จาก North Carolina State University สหรัฐอเมริกา', 'Surface Plasmonic Resonance, Optical Sensor, Smart Farming'),
(36, 'ดร.ภีรยุทธ์ ศรีนวลจันทร์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_19.png', 'Physics', 'keerayoot.sr@kmitl.ac.th', 'วท.ม. (ฟิสิกส์ประยุกต์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Electronic Nose, Gas Monitoring via IoT, Refractive Index Sensors'),
(37, 'ดร.วิทูรย์ ยินดีสุข', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_20.png', 'Physics', 'witoon.yi@kmitl.ac.th', 'Doctor of Philosophy/Engineering Science จาก The University of Electro-Communications ประเทศญี่ปุ่น', 'Solar Cells, Quantum Dots, SILAR Methods'),
(38, 'ดร.ณัฏกฤษ สมดอก', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_21.png', 'Physics', 'nuttakrit.so@kmitl.ac.th', 'วท.ม. (ฟิสิกส์ประยุกต์) และ ปร.ด. (ฟิสิกส์ประยุกต์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Semiconductor Electronics, Device Physics, Flexible Thermoelectrics'),
(39, 'ดร.สัญจกร ต้นนุกิจ', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_22.png', 'Physics', 'Lunchakurn.ta@kmitl.ac.th', NULL, NULL),
(40, 'ดร.เฉลิมพล รุจรดาวงศ์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_23.png', 'Physics', 'chalermpol.ru@kmitl.ac.th', 'B.Eng. (Electronics Engineering) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Material Phase, Thermoelectric Properties of Ca12Al14O33'),
(41, 'ดร.ยงยุทธ แก้วจำรัส', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_24.png', 'Physics', 'yongyut.ka@kmitl.ac.th', 'วท.บ. (ฟิสิกส์ประยุกต์) KMITL, วศ.ม. (วิศวกรรมไมโครอิเล็กทรอนิกส์) KMITL และ ปร.ด. (วิศวกรรมไฟฟ้า) KMITL', 'Multi-Dimensional Hall Sensor, Capacitive Sensing Method'),
(42, 'นางสาวสายสุดาวัลย์ สุทธิญาณ', 'นักวิทยาศาสตร์', 'images/Prof.Physics/phy_25.png', 'Physics', NULL, NULL, NULL),
(43, 'นางพิมพร อ่อนละออ', 'นักวิทยาศาสตร์', 'images/Prof.Physics/phy_26.png', 'Physics', NULL, NULL, NULL),
(44, 'น.ส.นลิตา สว่างจิตต์', 'นักวิทยาศาสตร์', 'images/Prof.Physics/phy_27.png', 'Physics', NULL, NULL, NULL),
(45, 'นางสาวเกศณี เกตุนวม', 'เจ้าหน้าที่บริหารงานทั่วไป', 'images/Prof.Physics/phy_28.png', 'Physics', NULL, NULL, NULL),
(46, 'นายวีระพันธ์ ทิพาพงศ์', 'นักวิทยาศาสตร์', 'images/Prof.Physics/phy_29.png', 'Physics', NULL, NULL, NULL),
(47, 'นายชวนนท์ มะโน', 'นักวิทยาศาสตร์', 'images/Prof.Physics/phy_30.png', 'Physics', NULL, NULL, NULL),
(48, 'นายสาโรจน์ ชูอำไพ', 'ผู้ปฏิบัติงานวิทยาศาสตร์', 'images/Prof.Physics/phy_31.png', 'Physics', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
