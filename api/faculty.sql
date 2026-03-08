SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- 1. ลบตารางเก่าทิ้งไปก่อน
DROP TABLE IF EXISTS `faculty`;

-- 2. สร้างตารางใหม่ พร้อมกำหนด Primary Key และ AUTO_INCREMENT
CREATE TABLE `faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(150) NOT NULL,
  `position` varchar(100) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `department` enum('Physics','IoT') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 3. ยัดข้อมูลคณาจารย์ทั้งหมด (อัปเดตโฟลเดอร์เป็น Prof.IOTE และ Prof.Physics)
INSERT INTO `faculty` (`fullname`, `position`, `image_path`, `department`) VALUES
('ผศ.ดร.พิกุลแก้ว ตังติสานนท์', 'หัวหน้าภาควิชาวิศวกรรมสารสนเทศ', 'images/Prof.IOTE/iot_01.png', 'IoT'),
('ศ.ดร.บุณย์ชนะ ภู่ระหงษ์', 'ผู้ประสานงานสาขาวิชาวิศวกรรมสารสนเทศ', 'images/Prof.IOTE/iot_02.png', 'IoT'),
('ศ.ดร.อภิรัฐ ศิริธราธิวัตร', 'รองหัวหน้าภาควิชา (ฝ่ายวิจัยและนวัตกรรม)', 'images/Prof.IOTE/iot_03.png', 'IoT'),
('ศ.ดร.บุณย์ชนะ ภู่ระหงษ์', 'ผู้ประสานงานสาขาวิชาวิศวกรรมสารสนเทศ', 'images/Prof.IOTE/iot_04.png', 'IoT'),
('ผศ.ดร.นัชนันท์ รุ่งเหมือนฟ้า', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_05.png', 'IoT'),
('ผศ.ดร.เกล็ดดาว สัตย์เจริญ', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_06.png', 'IoT'),
('ผศ.นิจจารีย์ สัตยารักษ์', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_07.png', 'IoT'),
('ผศ.ดร.ธนวิชญ์ อนุวุฒิพินิจ', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_08.png', 'IoT'),
('ดร.สุวิไล พุ่มโพธิ์', 'รองหัวหน้าภาควิชา (ฝ่ายกิจการภายนอก)', 'images/Prof.IOTE/iot_09.png', 'IoT'),
('ผศ.ดร.อรรถพล ป้อมสถิตย์', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_10.png', 'IoT'),
('ผศ.ดร.พนารัตน์ เชิญถนอมวงศ์', 'อาจารย์ประจำภาควิชา (ผู้ช่วยฝ่ายกิจการภายนอก)', 'images/Prof.IOTE/iot_11.png', 'IoT'),
('ผศ.สรพงษ์ วชิรรัตนพรกุล', 'อาจารย์ผู้รับผิดชอบหลักสูตร', 'images/Prof.IOTE/iot_12.png', 'IoT'),
('ผศ.ไพศาล สิทธิโอภาสกุล', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_13.png', 'IoT'),
('รศ.ดร.อรรถสิทธิ์ หล่าสกุล', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_14.png', 'IoT'),
('ศ.ดร.ปิติเขต สู้รักษา', 'อาจารย์ประจำหลักสูตร', 'images/Prof.IOTE/iot_15.png', 'IoT'),
('นายธนาตย์ จอมใจเอกชน', 'เจ้าหน้าที่วิศวกร', 'images/Prof.IOTE/iot_16.png', 'IoT'),
('นายธีรสิทธิ์ โก้ทอง', 'เจ้าหน้าที่วิศวกร', 'images/Prof.IOTE/iot_17.png', 'IoT'),
('รศ.ดร.ภัทรียา ดำรงศักดิ์', 'หัวหน้าภาควิชาฟิสิกส์', 'images/Prof.Physics/phy_01.png', 'Physics'),
('รศ.ดร.สาหร่าย เล็กชะอุ่ม', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_02.png', 'Physics'),
('รศ.ดร.รัชนก สมพรเสน่ห์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_03.png', 'Physics'),
('ผศ.ดร.ศ.ทิพวรรณ คล้ายบุญมี', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_04.png', 'Physics'),
('รศ.ดร.อาภาภรณ์ สกุลการะเวก', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_05.png', 'Physics'),
('ดร.พิชชานันท์ ธีเศรษฐ์โศภน', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_06.png', 'Physics'),
('ผศ.ดร.เมตยา กีติวรรณ', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_07.png', 'Physics'),
('ผศ.ธนภรณ์ ลีลาวัฒนานนท์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_08.png', 'Physics'),
('ผศ.สุรศักดิ์ พิพัฒน์ศาสตร์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_09.png', 'Physics'),
('ผศ.ดร.ประธาน บุรณศิริ', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_10.png', 'Physics'),
('อ.ธรรมรัตน์ แต่งตั้ง', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_11.png', 'Physics'),
('อ.สุรชาติ กมลดิลก', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_12.png', 'Physics'),
('ผศ.ดร.ณัฐพร พรหมรส', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_13.png', 'Physics'),
('รศ.ดร.เชษฐา รัตนพันธ์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_14.png', 'Physics'),
('รศ.ดร.กฤษกร โล่เจริญรัตน์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_15.png', 'Physics'),
('ผศ.ดร.ภาณุพล โขลนกระทก', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_16.png', 'Physics'),
('ผศ.ดร.พิศาล สุขวิสูตร', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_17.png', 'Physics'),
('ดร.ชินพรรธน์ รัตนศิริวิทย์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_18.png', 'Physics'),
('ดร.ภีรยุทธ์ ศรีนวลจันทร์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_19.png', 'Physics'),
('ดร.วิทูรย์ ยินดีสุข', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_20.png', 'Physics'),
('ดร.ณัฏกฤษ สมดอก', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_21.png', 'Physics'),
('ดร.สัญจกร ต้นนุกิจ', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_22.png', 'Physics'),
('ดร.เฉลิมพล รุจรดาวงศ์', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_23.png', 'Physics'),
('ดร.ยงยุทธ แก้วจำรัส', 'อาจารย์ประจำภาควิชา', 'images/Prof.Physics/phy_24.png', 'Physics'),
('นางสาวสายสุดาวัลย์ สุทธิญาณ', 'นักวิทยาศาสตร์', 'images/Prof.Physics/phy_25.png', 'Physics'),
('นางพิมพร อ่อนละออ', 'นักวิทยาศาสตร์', 'images/Prof.Physics/phy_26.png', 'Physics'),
('น.ส.นลิตา สว่างจิตต์', 'นักวิทยาศาสตร์', 'images/Prof.Physics/phy_27.png', 'Physics'),
('นางสาวเกศณี เกตุนวม', 'เจ้าหน้าที่บริหารงานทั่วไป', 'images/Prof.Physics/phy_28.png', 'Physics'),
('นายวีระพันธ์ ทิพาพงศ์', 'นักวิทยาศาสตร์', 'images/Prof.Physics/phy_29.png', 'Physics'),
('นายชวนนท์ มะโน', 'นักวิทยาศาสตร์', 'images/Prof.Physics/phy_30.png', 'Physics'),
('นายสาโรจน์ ชูอำไพ', 'ผู้ปฏิบัติงานวิทยาศาสตร์', 'images/Prof.Physics/phy_31.png', 'Physics');

COMMIT;