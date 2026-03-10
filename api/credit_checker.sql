CREATE TABLE curriculums (
    id INT AUTO_INCREMENT PRIMARY KEY,
    curriculum_name VARCHAR(255) NOT NULL,
    total_credits INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    curriculum_id INT NOT NULL,
    course_code VARCHAR(20) NOT NULL,
    course_name_th VARCHAR(255) NOT NULL,
    course_name_en VARCHAR(255) DEFAULT NULL,
    credits INT NOT NULL,
    year_level INT DEFAULT NULL,
    semester INT DEFAULT NULL,
    course_type VARCHAR(100) DEFAULT NULL,
    course_group VARCHAR(100) DEFAULT NULL,
    FOREIGN KEY (curriculum_id) REFERENCES curriculums(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO curriculums (curriculum_name, total_credits) VALUES
('หลักสูตรวิศวกรรมศาสตรบัณฑิต สาขาวิชาวิศวกรรมไอโอทีและสารสนเทศ', 138),
('หลักสูตรสองปริญญา วท.บ.ฟิสิกส์อุตสาหกรรม และ วศ.บ.วิศวกรรมระบบไอโอทีและสารสนเทศ', 165);

/*
ตัวอย่างเพิ่มวิชาเองภายหลัง

INSERT INTO courses
(curriculum_id, course_code, course_name_th, course_name_en, credits, year_level, semester, course_type, course_group)
VALUES
(1, '060123101', 'แคลคูลัส 1', 'Calculus 1', 3, 1, 1, 'บังคับ', 'core'),
(1, '060123102', 'ฟิสิกส์วิศวกรรม', 'Engineering Physics', 3, 1, 1, 'บังคับ', 'core'),
(1, '060123103', 'เขียนโปรแกรมเบื้องต้น', 'Introduction to Programming', 3, 1, 1, 'บังคับ', 'core');
*/

/*INSERT INTO courses
(curriculum_id, course_code, course_name_th, course_name_en, credits, year_level, semester, course_type, course_group)
VALUES
-- ปี 1 ภาค 1
(1, '01006030', 'แคลคูลัส 1', 'CALCULUS 1', 3, 1, 1, 'บังคับ', 'core'),
(1, '01006020', 'ฟิสิกส์ทั่วไป 1', 'GENERAL PHYSICS 1', 3, 1, 1, 'บังคับ', 'core'),
(1, '01006021', 'ปฏิบัติการฟิสิกส์ทั่วไป 1', 'GENERAL PHYSICS LABORATORY 1', 1, 1, 1, 'บังคับ', 'core'),
(1, '01006012', 'การเขียนโปรแกรมคอมพิวเตอร์', 'COMPUTER PROGRAMMING', 3, 1, 1, 'บังคับ', 'core'),
(1, '01236611', 'พื้นฐานระบบไอโอที', 'INTRODUCTION TO INTERNET OF THINGS', 3, 1, 1, 'บังคับ', 'core'),
(1, '01236604', 'วงจรไฟฟ้าและอิเล็กทรอนิกส์', 'CIRCUITS AND ELECTRONICS', 3, 1, 1, 'บังคับ', 'core'),
(1, '01236605', 'ปฏิบัติการวงจรไฟฟ้าและอิเล็กทรอนิกส์', 'CIRCUITS AND ELECTRONICS LABORATORY', 1, 1, 1, 'บังคับ', 'core'),
(1, '90642036', 'เตรียมความพร้อมสำหรับวิศวกร', 'PRE-ACTIVITIES FOR ENGINEERS', 1, 1, 1, 'บังคับ', 'core'),
(1, '90641008', 'พื้นฐานทักษะการสื่อสารภาษาอังกฤษ', 'INTRODUCTION TO ENGLISH COMMUNICATION SKILLS', 0, 1, 1, 'เงื่อนไข', 'english'),
(1, '01236610', 'ปฏิบัติการเขียนแบบสามมิติทางวิศวกรรม', 'ENGINEERING 3D DRAWING IN PRACTICE', 1, 1, 1, 'บังคับ', 'core'),
(1, '90641007', 'พลเมืองดิจิทัล', 'DIGITAL CITIZEN', 3, 1, 1, 'บังคับ', 'general'),

-- ปี 1 ภาค 2
(1, '01006031', 'แคลคูลัส 2', 'CALCULUS 2', 3, 1, 2, 'บังคับ', 'core'),
(1, '01006022', 'ฟิสิกส์ทั่วไป 2', 'GENERAL PHYSICS 2', 3, 1, 2, 'บังคับ', 'core'),
(1, '01006023', 'ปฏิบัติการฟิสิกส์ทั่วไป 2', 'GENERAL PHYSICS LABORATORY 2', 1, 1, 2, 'บังคับ', 'core'),
(1, '01236602', 'คณิตศาสตร์ดิสครีต', 'DISCRETE MATHEMATICS', 3, 1, 2, 'บังคับ', 'core'),
(1, '01236613', 'การเขียนโปรแกรมเชิงวัตถุ', 'OBJECT-ORIENTED PROGRAMMING', 3, 1, 2, 'บังคับ', 'core'),
(1, '01236619', 'การออกแบบเชิงปฏิสัมพันธ์', 'INTERACTION DESIGN', 3, 1, 2, 'บังคับ', 'core'),
(1, '01236601', 'ความน่าจะเป็นและสถิติ', 'PROBABILITY AND STATISTICS', 3, 1, 2, 'บังคับ', 'core'),
(1, '90642118', 'ซอฟต์แวร์ประยุกต์สำหรับธุรกิจ', 'APPLICATION SOFTWARE FOR BUSINESS', 2, 1, 2, 'บังคับ', 'general'),
(1, '90641004', 'โครงงานกลุ่ม 1', 'TEAM-PROJECT 1', 1, 1, 2, 'บังคับ', 'project'),

-- ปี 2 ภาค 1
(1, '01236600', 'พีชคณิตเชิงเส้นและสมการเชิงอนุพันธ์', 'LINEAR ALGEBRA AND DIFFERENTIAL EQUATIONS', 3, 2, 1, 'บังคับ', 'core'),
(1, '01236615', 'หลักการระบบการสื่อสาร', 'PRINCIPLE OF COMMUNICATION SYSTEMS', 3, 2, 1, 'บังคับ', 'core'),
(1, '01236626', 'การวิเคราะห์และออกแบบระบบ', 'SYSTEM ANALYSIS AND DESIGN', 3, 2, 1, 'บังคับ', 'core'),
(1, '01236614', 'โครงสร้างข้อมูลและอัลกอริทึม', 'DATA STRUCTURE AND ALGORITHM', 3, 2, 1, 'บังคับ', 'core'),
(1, '01236603', 'พื้นฐานการออกแบบระบบดิจิทัล', 'FUNDAMENTAL OF DIGITAL SYSTME DESIGN', 3, 2, 1, 'บังคับ', 'core'),
(1, '01236609', 'ปฏิบัติการออกแบบระบบดิจิทัล', 'DIGITAL SYSTEM DESIGN LABORATORY', 1, 2, 1, 'บังคับ', 'core'),
(1, '90641009', 'ทักษะการสื่อสารภาษาอังกฤษระหว่างวัฒนธรรม 1', 'INTERCULTURAL COMMUNICATION SKILLS IN ENGLISH 1', 3, 2, 1, 'บังคับ', 'english'),

-- ปี 2 ภาค 2
(1, '01236616', 'การสื่อสารข้อมูลและเครือข่ายในระบบไอโอที', 'DATA COMMUNICATIONS AND IOT NETWORKS', 3, 2, 2, 'บังคับ', 'core'),
(1, '01236617', 'เซ็นเซอร์และระบบไซเบอร์กายภาพ', 'SENSORS AND CYBER PHYSICAL SYSTEM', 3, 2, 2, 'บังคับ', 'core'),
(1, '01236618', 'การพัฒนาแอปพลิเคชันบนเว็บและโมไบล์', 'WEB AND MOBILE APPLICATION DEVELOPMENT', 3, 2, 2, 'บังคับ', 'core'),
(1, '01236627', 'สถาปัตยกรรมคอมพิวเตอร์และระบบปฏิบัติการ', 'COMPUTER ARCHITECTURE AND OPERATING SYSTEM', 3, 2, 2, 'บังคับ', 'core'),
(1, '01236630', 'ระบบฐานข้อมูล', 'DATABASE SYSTEM', 3, 2, 2, 'บังคับ', 'core'),
(1, '01236628', 'การดำเนินการระบบคลาวด์เชิงปฏิบัติ', 'CLOUD OPERATIONS IN PRACTICES', 1, 2, 2, 'บังคับ', 'core'),
(1, '90641005', 'โครงงานกลุ่ม 2', 'TEAM-PROJECT 2', 1, 2, 2, 'บังคับ', 'project'),
(1, '90641010', 'ทักษะการสื่อสารภาษาอังกฤษระหว่างวัฒนธรรม 2', 'INTERCULTURAL COMMUNICATION SKILLS IN ENGLISH 2', 3, 2, 2, 'บังคับ', 'english'),

-- ปี 3 ภาค 1
(1, '01236612', 'ไมโครคอนโทรลเลอร์และระบบสมองกลฝังตัว', 'MICROCONTROLLER AND EMBEDDED SYSTEMS', 3, 3, 1, 'บังคับ', 'core'),
(1, '01236621', 'ปัญญาประดิษฐ์ของทุกสรรพสิ่ง', 'ARTIFICIAL INTELLIGENCE OF THINGS', 3, 3, 1, 'บังคับ', 'core'),
(1, '01236622', 'ระบบความมั่นคงปลอดภัยทางไซเบอร์', 'CYBER SECURITY SYSTEMS', 3, 3, 1, 'บังคับ', 'core'),
(1, '01236629', 'ระบบสื่อสารไร้สายสำหรับไอโอที', 'WIRELESS COMMUNICATION FOR IOT SYSTEM', 3, 3, 1, 'บังคับ', 'core'),
(1, '01236623', 'ปฏิบัติการระบบไอโอทีและสารสนเทศ 1', 'IOT AND INFORMATION ENGINEERING LABORATORY 1', 1, 3, 1, 'บังคับ', 'lab'),
(1, '01236625', 'สัมมนากับผู้เชี่ยวชาญ', 'SEMINAR WITH PROFESSIONALS', 0, 3, 1, 'บังคับ', 'seminar'),
(1, '90644xxx', 'วิชาเลือกด้านภาษาและการสื่อสาร', 'LANGUAGE AND COMMUNICATION COURSES', 3, 3, 1, 'เลือก', 'language'),
(1, '909644xx', 'วิชาเลือกด้านภาษาและการสื่อสาร', 'LANGUAGE AND COMMUNICATION COURSES', 3, 3, 1, 'เลือก', 'language'),

-- ปี 3 ภาค 2
(1, '01236620', 'พีแอลซีและไอโอทีในอุตสาหกรรม', 'PLC AND INDUSTRIAL INTERNET OF THINGS', 3, 3, 2, 'บังคับ', 'core'),
(1, '0123xxxx', 'หมวดวิชาบังคับเลือก', 'IOT MAJOR ELECTIVE', 3, 3, 2, 'เลือก', 'major_elective'),
(1, '0123xxxx', 'หมวดวิชาบังคับเลือก', 'IOT MAJOR ELECTIVE', 3, 3, 2, 'เลือก', 'major_elective'),
(1, 'xxxxxxxx', 'หมวดวิชาเลือกเสรี', 'FREE ELECTIVE', 3, 3, 2, 'เลือก', 'free_elective'),
(1, '01236624', 'ปฏิบัติการระบบไอโอทีและสารสนเทศ 2', 'IOT AND INFORMATION ENGINEERING LABORATORY 2', 1, 3, 2, 'บังคับ', 'lab'),
(1, '90641006', 'โครงงานกลุ่ม 3', 'TEAM PROJECT 3', 1, 3, 2, 'บังคับ', 'project'),
(1, '9064xxxx', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'GENERAL EDUCATION COURSE', 3, 3, 2, 'เลือก', 'general_elective'),
(1, '90964xxx', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'GENERAL EDUCATION COURSE', 3, 3, 2, 'เลือก', 'general_elective'),
(1, '9064xxxx', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'GENERAL EDUCATION COURSE', 3, 3, 2, 'เลือก', 'general_elective'),
(1, '90964xxx', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'GENERAL EDUCATION COURSE', 3, 3, 2, 'เลือก', 'general_elective'),

-- ปี 3 ภาค 3
(1, '01006004', 'การฝึกงานอุตสาหกรรม', 'INDUSTRIAL TRAINING', 0, 3, 3, 'บังคับ', 'training'),

-- ปี 4 ภาค 1 : แผนโครงงาน
(1, '01236606', 'โครงงานวิศวกรรมไอโอทีและสารสนเทศ 1', 'IOT AND INFORMATION ENGINEERING PROJECT 1', 3, 4, 1, 'บังคับ', 'project_track'),
(1, '0123proj1', 'หมวดวิชาเลือกเฉพาะสาขา', 'ELECTIVE', 3, 4, 1, 'เลือก', 'major_elective'),
(1, '0123proj2', 'หมวดวิชาเลือกเฉพาะสาขา', 'ELECTIVE', 3, 4, 1, 'เลือก', 'major_elective'),
(1, 'freeproj1', 'หมวดวิชาเลือกเสรี', 'FREE ELECTIVE', 3, 4, 1, 'เลือก', 'free_elective'),

-- ปี 4 ภาค 2 : แผนโครงงาน
(1, '01236608', 'การออกแบบความคิดรวบยอดทางวิศวกรรมไอโอที', 'IOT ENGINEERING CAPSTONE DESIGN', 1, 4, 2, 'บังคับ', 'project_track'),
(1, '01236607', 'โครงงานวิศวกรรมไอโอทีและสารสนเทศ 2', 'IOT AND INFORMATION ENGINEERING PROJECT 2', 3, 4, 2, 'บังคับ', 'project_track'),
(1, '0123proj3', 'หมวดวิชาเลือกเฉพาะสาขา', 'ELECTIVE', 3, 4, 2, 'เลือก', 'major_elective'),

-- ปี 4 ภาค 1 : แผนสหกิจ / ฝึกงานต่างประเทศ
(1, '01006029', 'สหกิจศึกษา', 'CO-OPERATIVE EDUCATION', 6, 4, 1, 'บังคับ', 'coop_track'),
(1, '01006005', 'การปฏิบัติการฝึกงานต่างประเทศ', 'OVERSEA TRAINING', 6, 4, 1, 'บังคับ', 'coop_track'),
(1, '01006302', 'STUDY ABROAD', 'STUDY ABROAD', 6, 4, 1, 'บังคับ', 'coop_track'),

-- ปี 4 ภาค 2 : แผนสหกิจ / ฝึกงานต่างประเทศ
(1, '0123coop1', 'หมวดวิชาเลือกสาขา', 'ELECTIVE', 3, 4, 2, 'เลือก', 'major_elective'),
(1, '0123coop2', 'หมวดวิชาเลือกสาขา', 'ELECTIVE', 3, 4, 2, 'เลือก', 'major_elective'),
(1, '0123coop3', 'หมวดวิชาเลือกสาขา', 'ELECTIVE', 3, 4, 2, 'เลือก', 'major_elective'),
(1, 'freecoop1', 'หมวดวิชาเลือกเสรี', 'FREE ELECTIVE', 3, 4, 2, 'เลือก', 'free_elective');*/

/*
INSERT INTO courses
(curriculum_id, course_code, course_name_th, course_name_en, credits, year_level, semester, course_type, course_group)
VALUES
-- ปี 1 ภาค 1
(2, '05016201', 'แคลคูลัส 1', 'CALCULUS 1', 3, 1, 1, 'บังคับ', 'core'),
(2, '05206500', 'ชีววิทยาทั่วไป', 'GENERAL BIOLOGY', 3, 1, 1, 'บังคับ', 'core'),
(2, '05366001', 'ฟิสิกส์และการประยุกต์ 1', 'PHYSICS AND APPLICATIONS 1', 3, 1, 1, 'บังคับ', 'core'),
(2, '05366002', 'ปฏิบัติการฟิสิกส์และการประยุกต์ 1', 'PHYSICS AND APPLICATIONS LABORATORY 1', 1, 1, 1, 'บังคับ', 'lab'),
(2, '05366022', 'การเขียนโปรแกรมคอมพิวเตอร์', 'COMPUTER PROGRAMMING', 3, 1, 1, 'บังคับ', 'core'),
(2, '05206501', 'ปฏิบัติการชีววิทยาทั่วไป', 'GENERAL BIOLOGY LABORATORY', 1, 1, 1, 'บังคับ', 'lab'),
(2, '05366043', 'การเขียนแบบและการฝึกงานวิศวกรรม', 'DRAWING AND ENGINEERING WORKSHOP', 1, 1, 1, 'บังคับ', 'core'),
(2, '90644007', 'ภาษาอังกฤษพื้นฐาน 1', 'FOUNDATION ENGLISH 1', 3, 1, 1, 'บังคับ', 'english'),
(2, '90641001', 'โรงเรียนสร้างเสน่ห์', 'CHARM SCHOOL', 2, 1, 1, 'บังคับ', 'general'),
(2, '90641003', 'กีฬาและนันทนาการ', 'SPORT AND RECREATION ACTIVITIES', 1, 1, 1, 'บังคับ', 'general'),

-- ปี 1 ภาค 2
(2, '05016202', 'แคลคูลัส 2', 'CALCULUS 2', 3, 1, 2, 'บังคับ', 'core'),
(2, '05366003', 'ฟิสิกส์และการประยุกต์ 2', 'PHYSICS AND APPLICATIONS 2', 3, 1, 2, 'บังคับ', 'core'),
(2, '05366004', 'ปฏิบัติการฟิสิกส์และการประยุกต์ 2', 'PHYSICS AND APPLICATIONS LABORATORY 2', 1, 1, 2, 'บังคับ', 'lab'),
(2, '05366021', 'ทฤษฎีวงจรไฟฟ้าและอิเล็กทรอนิกส์พื้นฐาน', 'ELECTRICAL CIRCUIT THEORY AND BASIC ELECTRONICS', 3, 1, 2, 'บังคับ', 'core'),
(2, '05366025', 'อิเล็กทรอนิกส์ดิจิตอล', 'DIGITAL ELECTRONICS', 3, 1, 2, 'บังคับ', 'core'),
(2, '90644008', 'ภาษาอังกฤษพื้นฐาน 2', 'FOUNDATION ENGLISH 2', 3, 1, 2, 'บังคับ', 'english'),
(2, '90641002', 'ความฉลาดทางดิจิทัล', 'DIGITAL INTELLIGENCE QUOTIENT', 3, 1, 2, 'บังคับ', 'general'),
(2, '90xxxxxx_y1s2', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'ELECTIVE TOPICS FOR FACULTY COURSE REQUIREMENT', 3, 1, 2, 'เลือก', 'general_elective'),

-- ปี 2 ภาค 1
(2, '05366020', 'คณิตศาสตร์สำหรับนักฟิสิกส์', 'MATHEMATICS FOR PHYSICISTS', 3, 2, 1, 'บังคับ', 'core'),
(2, '05366038', 'สถิติในงานอุตสาหกรรม', 'INDUSTRIAL STATISTICS', 3, 2, 1, 'บังคับ', 'core'),
(2, '05366032', 'สนามแม่เหล็กไฟฟ้า', 'ELECTROMAGNETICS FIELD', 3, 2, 1, 'บังคับ', 'core'),
(2, '05366036', 'ไมโครคอนโทรลเลอร์และการเชื่อมต่อ', 'MICROCONTROLLER AND INTERFACING', 3, 2, 1, 'บังคับ', 'core'),
(2, '05366034', 'เซ็นเซอร์และทรานสดิวเซอร์', 'SENSORS AND TRANSDUCERS', 3, 2, 1, 'บังคับ', 'core'),
(2, '05366023', 'วงจรอิเล็กทรอนิกส์', 'ELECTRONICS CIRCUITS', 3, 2, 1, 'บังคับ', 'core'),
(2, '05366039', 'ปฏิบัติการฟิสิกส์ระดับกลาง 1', 'INTERMEDIATE PHYSICS LABORATORY 1', 1, 2, 1, 'บังคับ', 'lab'),
(2, '90642036', 'เตรียมความพร้อมสำหรับวิศวกร', 'PRE-ACTIVITIES FOR ENGINEERS', 1, 2, 1, 'บังคับ', 'general'),
(2, '01236255', 'พื้นฐานระบบไอโอที', 'INTRODUCTION TO INTERNET OF THINGS', 3, 2, 1, 'บังคับ', 'iot'),
(2, '01236258', 'การสื่อสารพื้นฐาน', 'PRINCIPLES OF COMMUNICATIONS', 3, 2, 1, 'บังคับ', 'iot'),

-- ปี 2 ภาค 2
(2, '05366024', 'ปฏิบัติการอิเล็กทรอนิกส์', 'ELECTRONICS LABORATORY', 1, 2, 2, 'บังคับ', 'lab'),
(2, '05366028', 'กลศาสตร์', 'MECHANICS', 3, 2, 2, 'บังคับ', 'core'),
(2, '05366030', 'ฟิสิกส์ยุคใหม่', 'MODERN PHYSICS', 3, 2, 2, 'บังคับ', 'core'),
(2, '05366033', 'คลื่นและทัศนศาสตร์', 'WAVES AND OPTICS', 3, 2, 2, 'บังคับ', 'core'),
(2, '05366040', 'ปฏิบัติการฟิสิกส์ระดับกลาง 2', 'INTERMEDIATE PHYSICS LABORATORY 2', 1, 2, 2, 'บังคับ', 'lab'),
(2, '90642118', 'โปรแกรมคอมพิวเตอร์ประยุกต์ทางธุรกิจ', 'APPLICATION SOFTWARE FOR BUSINESS', 2, 2, 2, 'บังคับ', 'general'),
(2, '01236257', 'การเขียนโปรแกรมเชิงวัตถุและโครงสร้างข้อมูล', 'OBJECT-ORIENTED PROGRAMMING AND DATA STRUCTURE', 3, 2, 2, 'บังคับ', 'core'),
(2, '01236261', 'การพัฒนาแอพพลิเคชันบนโมไบล์', 'MOBILE APPLICATION DEVELOPMENT', 3, 2, 2, 'บังคับ', 'core'),
(2, '01236262', 'การออกแบบเชิงปฏิสัมพันธ์', 'INTERACTION DESIGN', 3, 2, 2, 'บังคับ', 'core'),

-- โปรแกรมที่ 1 : แผนการทำโครงงานพิเศษ
-- ปี 3 ภาค 1
(2, '05106030', 'เคมีทั่วไป', 'GENERAL CHEMISTRY', 3, 3, 1, 'บังคับ', 'core'),
(2, '05106042', 'ปฏิบัติการเคมีทั่วไป', 'GENERAL CHEMISTRY LABORATORY', 1, 3, 1, 'บังคับ', 'lab'),
(2, '05366035', 'ฟิสิกส์และเทคโนโลยีของสิ่งประดิษฐ์สารกึ่งตัวนำ', 'PHYSICS AND TECHNOLOGY OF SEMICONDUCTOR DEVICES', 3, 3, 1, 'บังคับ', 'core'),
(2, '05366031', 'ฟิสิกส์เชิงความร้อนและเชิงสถิติ', 'THERMAL AND STATISTICAL PHYSICS', 3, 3, 1, 'บังคับ', 'core'),
(2, '05366080', 'สัมมนา', 'SEMINAR', 1, 3, 1, 'บังคับ', 'seminar'),
(2, '05366041', 'ปฏิบัติการฟิสิกส์อุตสาหกรรม 1', 'INDUSTRIAL PHYSICS LABORATORY 1', 1, 3, 1, 'บังคับ', 'lab'),
(2, '05366027', 'ปฏิบัติการอิเล็กทรอนิกส์ดิจิตอล', 'ELECTRONIC DIGITAL LABORATORY', 1, 3, 1, 'บังคับ', 'lab'),
(2, '90xxxxxx_p1_y3s1', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'ELECTIVE TOPICS FOR FACULTY COURSE REQUIREMENT', 3, 3, 1, 'เลือก', 'general_elective'),
(2, 'xxxxxxxx_p1_y3s1', 'วิชาเลือกเสรี (1)', 'FREE ELECTIVE', 3, 3, 1, 'เลือก', 'free_elective'),
(2, '01236264', 'ปัญญาประดิษฐ์ในทุกสรรพสิ่ง', 'ARTIFICIAL INTELLIGENCE OF THINGS', 3, 3, 1, 'บังคับ', 'iot'),

-- ปี 3 ภาค 2
(2, '05366029', 'กลศาสตร์ควอนตัมและเทคโนโลยีควอนตัม', 'QUANTUM MECHANICS AND QUANTUM TECHNOLOGY', 3, 3, 2, 'บังคับ', 'core'),
(2, '05366037', 'การวัดและเครื่องมือวัด', 'MEASUREMENT AND INSTRUMENTATION', 3, 3, 2, 'บังคับ', 'core'),
(2, '05366042', 'ปฏิบัติการฟิสิกส์อุตสาหกรรม 2', 'INDUSTRIAL PHYSICS LABORATORY 2', 1, 3, 2, 'บังคับ', 'lab'),
(2, '0535xxxx_0123xxxx_p1_e1', 'วิชาเลือก (1)', 'ELECTIVE', 3, 3, 2, 'เลือก', 'major_elective'),
(2, '90xxxxxx_lang_p1', 'วิชาเลือกทางภาษาและการสื่อสาร', 'ELECTIVE TOPICS FOR LANGUAGE AND COMMUNICATION', 3, 3, 2, 'เลือก', 'language'),
(2, '90xxxxxx_gen_p1', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'FREE ELECTIVE TOPICS IN GENERAL EDUCATION', 3, 3, 2, 'เลือก', 'general_elective'),
(2, '01236265', 'ระบบความมั่นคงทางไซเบอร์', 'CYBER SECURITY SYSTEMS', 3, 3, 2, 'บังคับ', 'iot'),
(2, '01236263', 'ระบบไอโอทีในอุตสาหกรรม', 'INDUSTRIAL INTERNET OF THINGS', 3, 3, 2, 'บังคับ', 'iot'),
(2, '01236259', 'ระบบโครงข่ายไอโอทีและการสื่อสารข้อมูล', 'IoT NETWORKS AND DATA COMMUNICATIONS', 3, 3, 2, 'บังคับ', 'iot'),

-- ปี 3 ภาคพิเศษ
(2, '05366090', 'ฝึกงาน', 'INDUSTRIAL TRAINING', 0, 3, 3, 'บังคับ', 'training'),

-- ปี 4 ภาค 1 : แผนโครงงาน
(2, '05366091', 'โครงงานพิเศษ 1', 'SPECIAL PROJECT 1', 3, 4, 1, 'บังคับ', 'project_track'),
(2, '0535xxxx_0123xxxx_p1_e2', 'วิชาเลือก (2)', 'ELECTIVE', 3, 4, 1, 'เลือก', 'major_elective'),
(2, '0535xxxx_0123xxxx_p1_e3', 'วิชาเลือก (3)', 'ELECTIVE', 3, 4, 1, 'เลือก', 'major_elective'),
(2, 'xxxxxxxx_p1_y4s1', 'วิชาเลือกเสรี (2)', 'FREE ELECTIVE', 3, 4, 1, 'เลือก', 'free_elective'),
(2, '0123xxxx_mandatory1', 'วิชาบังคับเลือกทางวิศวกรรมระบบไอโอทีและสารสนเทศ (1)', 'IoT AND INFORMATION MANDATORY ELECTIVE', 3, 4, 1, 'เลือก', 'mandatory_elective'),

-- ปี 4 ภาค 2 : แผนโครงงาน
(2, '05366092', 'โครงงานพิเศษ 2', 'SPECIAL PROJECT 2', 3, 4, 2, 'บังคับ', 'project_track'),
(2, '90xxxxxx_gen_p1_y4s2', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'FREE ELECTIVE TOPICS IN GENERAL EDUCATION', 3, 4, 2, 'เลือก', 'general_elective'),
(2, '0123xxxx_mandatory2', 'วิชาบังคับเลือกทางวิศวกรรมระบบไอโอทีและสารสนเทศ (2)', 'IoT AND INFORMATION MANDATORY ELECTIVE', 3, 4, 2, 'เลือก', 'mandatory_elective'),
(2, '0123xxxx_mandatory3', 'วิชาบังคับเลือกทางวิศวกรรมระบบไอโอทีและสารสนเทศ (3)', 'IoT AND INFORMATION MANDATORY ELECTIVE', 3, 4, 2, 'เลือก', 'mandatory_elective'),

-- โปรแกรมที่ 2 : แผนสหกิจ / ฝึกงานต่างประเทศ
-- ปี 3 ภาค 1
(2, '05106030_coop', 'เคมีทั่วไป', 'GENERAL CHEMISTRY', 3, 3, 1, 'บังคับ', 'coop_track'),
(2, '05106042_coop', 'ปฏิบัติการเคมีทั่วไป', 'GENERAL CHEMISTRY LABORATORY', 1, 3, 1, 'บังคับ', 'coop_track'),
(2, '05366035_coop', 'ฟิสิกส์และเทคโนโลยีของสิ่งประดิษฐ์สารกึ่งตัวนำ', 'PHYSICS AND TECHNOLOGY OF SEMICONDUCTOR DEVICES', 3, 3, 1, 'บังคับ', 'coop_track'),
(2, '05366031_coop', 'ฟิสิกส์เชิงความร้อนและเชิงสถิติ', 'THERMAL AND STATISTICAL PHYSICS', 3, 3, 1, 'บังคับ', 'coop_track'),
(2, '05366080_coop', 'สัมมนา', 'SEMINAR', 1, 3, 1, 'บังคับ', 'coop_track'),
(2, '05366041_coop', 'ปฏิบัติการฟิสิกส์อุตสาหกรรม 1', 'INDUSTRIAL PHYSICS LABORATORY 1', 1, 3, 1, 'บังคับ', 'coop_track'),
(2, '05366027_coop', 'ปฏิบัติการอิเล็กทรอนิกส์ดิจิตอล', 'ELECTRONIC DIGITAL LABORATORY', 1, 3, 1, 'บังคับ', 'coop_track'),
(2, '90xxxxxx_p2_y3s1', 'วิชาเลือกตามเกณฑ์ของคณะ', 'ELECTIVE TOPICS FOR FACULTY COURSE REQUIREMENT', 3, 3, 1, 'เลือก', 'general_elective'),
(2, 'xxxxxxxx_p2_y3s1', 'วิชาเลือกเสรี (1)', 'FREE ELECTIVE', 3, 3, 1, 'เลือก', 'free_elective'),
(2, '01236264_coop', 'ปัญญาประดิษฐ์ในทุกสรรพสิ่ง', 'ARTIFICIAL INTELLIGENCE OF THINGS', 3, 3, 1, 'บังคับ', 'coop_track'),

-- ปี 3 ภาค 2
(2, '05366029_coop', 'กลศาสตร์ควอนตัมและเทคโนโลยีควอนตัม', 'QUANTUM MECHANICS AND QUANTUM TECHNOLOGY', 3, 3, 2, 'บังคับ', 'coop_track'),
(2, '05366037_coop', 'การวัดและเครื่องมือวัด', 'MEASUREMENT AND INSTRUMENTATION', 3, 3, 2, 'บังคับ', 'coop_track'),
(2, '05366042_coop', 'ปฏิบัติการฟิสิกส์อุตสาหกรรม 2', 'INDUSTRIAL PHYSICS LABORATORY 2', 1, 3, 2, 'บังคับ', 'coop_track'),
(2, '0535xxxx_0123xxxx_p2_e1', 'วิชาเลือก (1)', 'ELECTIVE', 3, 3, 2, 'เลือก', 'major_elective'),
(2, '9064xxxx_lang_p2', 'กลุ่มวิชาด้านภาษาและการสื่อสาร', 'LANGUAGE AND COMMUNICATION COURSE REQUIREMENT', 3, 3, 2, 'เลือก', 'language'),
(2, '01236265_coop', 'ระบบความมั่นคงทางไซเบอร์', 'CYBER SECURITY SYSTEMS', 3, 3, 2, 'บังคับ', 'coop_track'),
(2, '01236263_coop', 'ระบบไอโอทีในอุตสาหกรรม', 'INDUSTRIAL INTERNET OF THINGS', 3, 3, 2, 'บังคับ', 'coop_track'),
(2, '01236259_coop', 'ระบบโครงข่ายไอโอทีและการสื่อสารข้อมูล', 'IoT NETWORKS AND DATA COMMUNICATIONS', 3, 3, 2, 'บังคับ', 'coop_track'),
(2, '0123xxxx_mandatory1_coop', 'วิชาบังคับเลือกทางวิศวกรรมระบบไอโอทีและสารสนเทศ (1)', 'IoT AND INFORMATION MANDATORY ELECTIVE', 3, 3, 2, 'เลือก', 'mandatory_elective'),

-- ปี 3 ภาคพิเศษ
(2, '05366090_coop', 'ฝึกงาน', 'INDUSTRIAL TRAINING', 0, 3, 3, 'บังคับ', 'training'),

-- ปี 4 ภาค 1 : แผนสหกิจ / ฝึกงานต่างประเทศ
(2, '05366093', 'สหกิจศึกษา', 'CO-OPERATIVE EDUCATION', 6, 4, 1, 'บังคับ', 'coop_track'),
(2, '05366094', 'การฝึกงานต่างประเทศ', 'OVERSEA TRAINING', 6, 4, 1, 'บังคับ', 'coop_track'),

-- ปี 4 ภาค 2 : แผนสหกิจ / ฝึกงานต่างประเทศ
(2, '90xxxxxx_p2_y4s2_a', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'FREE ELECTIVE TOPICS IN GENERAL EDUCATION', 3, 4, 2, 'เลือก', 'general_elective'),
(2, '90xxxxxx_p2_y4s2_b', 'วิชาเลือกหมวดวิชาศึกษาทั่วไป', 'FREE ELECTIVE TOPICS IN GENERAL EDUCATION', 3, 4, 2, 'เลือก', 'general_elective'),
(2, 'xxxxxxxx_p2_y4s2', 'วิชาเลือกเสรี (2)', 'FREE ELECTIVE', 3, 4, 2, 'เลือก', 'free_elective'),
(2, '0535xxxx_0123xxxx_p2_e2', 'วิชาเลือก (2)', 'ELECTIVE', 3, 4, 2, 'เลือก', 'major_elective'),
(2, '0535xxxx_0123xxxx_p2_e3', 'วิชาเลือก (3)', 'ELECTIVE', 3, 4, 2, 'เลือก', 'major_elective'),
(2, '0123xxxx_mandatory2_coop', 'วิชาบังคับเลือกทางวิศวกรรมระบบไอโอทีและสารสนเทศ (2)', 'IoT AND INFORMATION MANDATORY ELECTIVE', 3, 4, 2, 'เลือก', 'mandatory_elective'),
(2, '0123xxxx_mandatory3_coop', 'วิชาบังคับเลือกทางวิศวกรรมระบบไอโอทีและสารสนเทศ (3)', 'IoT AND INFORMATION MANDATORY ELECTIVE', 3, 4, 2, 'เลือก', 'mandatory_elective');
*/