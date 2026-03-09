-- สร้างตารางข่าว
CREATE TABLE news (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    image VARCHAR(255),
    category VARCHAR(100),
    link VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- เพิ่มข่าวตัวอย่าง
INSERT INTO news (title, description, image, category, link) VALUES
(
'New Student Admissions for Academic Year 2026',
'Learn more about application details, important dates, and admission requirements for future IoTE students.',
'images/aj1.png',
'Admissions',
'admissions.html'
),

(
'Student Innovation and Lab-Based Learning',
'Discover how students build practical skills through projects, experiments, and collaborative learning experiences.',
'images/aj2.png',
'Activities',
'performance.html'
),

(
'Explore the Future of Smart Technology with IoTE',
'See how the department supports learning in IoT, software, networking, and intelligent system development.',
'images/aj3.png',
'Department',
'aboutiote.html'
),

(
'IoTE Research and Innovation Projects',
'Students and researchers collaborate on cutting-edge IoT technologies and smart systems.',
'images/aj1.png',
'Research',
'aboutiote.html'
),

(
'IoTE Student Showcase',
'Explore innovative student projects presented during the annual IoTE technology showcase event.',
'images/aj2.png',
'Events',
'performance.html'
);