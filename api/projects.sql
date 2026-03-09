CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    image VARCHAR(255) DEFAULT NULL,
    category VARCHAR(100) DEFAULT 'Project',
    link VARCHAR(255) DEFAULT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO projects (title, description, image, category, link) VALUES
(
'IoT Projects',
'Design and develop connected devices, sensor systems, and smart applications for real-world problem solving.',
'images/doraemon1.png',
'Project',
'projects.html'
),
(
'Cyber Lab',
'Explore hands-on learning in modern laboratories equipped for networking, software, and system experimentation.',
'images/aj2.png',
'Lab',
'projects.html'
),
(
'Smart Systems',
'Combine hardware, software, and data to create intelligent systems that support future technology solutions.',
'images/aj3.png',
'Project',
'projects.html'
),
(
'Embedded System Design',
'Develop embedded controllers and smart device prototypes through hardware and software integration.',
'images/aj1.png',
'Lab',
'projects.html'
),
(
'Network & Security Practice',
'Learn networking and cybersecurity concepts through practical experiments and system configuration.',
'images/aj2.png',
'Lab',
'projects.html'
),
(
'AI and Data Applications',
'Apply data analysis and intelligent algorithms to solve real-world engineering problems.',
'images/aj3.png',
'Project',
'projects.html'
);