const quizData = [
    {
        question: "Imagine your team must create a smart solution for a modern city. What do you want to build first?",
        options: [
            {
                title: "A smart sensor device",
                text: "I want to create hardware that can detect and respond to real-world conditions.",
                type: "iot"
            },
            {
                title: "A web or mobile application",
                text: "I want people to interact with the solution through a clean digital product.",
                type: "software"
            },
            {
                title: "A data dashboard with insights",
                text: "I want to understand the data and turn it into useful decisions.",
                type: "data"
            },
            {
                title: "A connected system architecture",
                text: "I want all devices and platforms to communicate smoothly together.",
                type: "network"
            }
        ]
    },
    {
        question: "When you face a difficult problem, what feels most natural to you?",
        options: [
            {
                title: "Test it in real life",
                text: "I like experimenting and learning from devices or prototypes directly.",
                type: "iot"
            },
            {
                title: "Write logic step by step",
                text: "I prefer solving problems through code and clear workflows.",
                type: "software"
            },
            {
                title: "Look for patterns in information",
                text: "I want to analyze what the data is telling me.",
                type: "data"
            },
            {
                title: "See how all parts connect",
                text: "I think in terms of systems, communication, and integration.",
                type: "network"
            }
        ]
    },
    {
        question: "Which project sounds most exciting to you?",
        options: [
            {
                title: "Smart farming or smart home device",
                text: "Something physical, intelligent, and connected to the environment.",
                type: "iot"
            },
            {
                title: "A useful app or platform",
                text: "A digital solution that people can use every day.",
                type: "software"
            },
            {
                title: "AI recommendation or prediction tool",
                text: "A system that makes sense of data and becomes smarter.",
                type: "data"
            },
            {
                title: "Cloud and communication platform",
                text: "A backbone system that keeps everything connected and scalable.",
                type: "network"
            }
        ]
    },
    {
        question: "In a team project, which role would you most likely choose?",
        options: [
            {
                title: "Builder",
                text: "I want to assemble, test, and improve the real system.",
                type: "iot"
            },
            {
                title: "Developer",
                text: "I want to implement the program and user-facing features.",
                type: "software"
            },
            {
                title: "Analyst",
                text: "I want to interpret results and turn them into insight.",
                type: "data"
            },
            {
                title: "Connector",
                text: "I want to make all components work together as one system.",
                type: "network"
            }
        ]
    },
    {
        question: "Which learning path feels closest to your future self?",
        options: [
            {
                title: "Smart devices and embedded systems",
                text: "I enjoy the idea of devices, sensors, and real engineering systems.",
                type: "iot"
            },
            {
                title: "Software and application development",
                text: "I want to create platforms, systems, and digital products.",
                type: "software"
            },
            {
                title: "Data, AI, and intelligent decisions",
                text: "I want to use information to create smarter technology.",
                type: "data"
            },
            {
                title: "Physics + innovation + technology",
                text: "I want a path that connects scientific depth with engineering.",
                type: "physiot"
            }
        ]
    }
];

const resultMap = {
    iot: {
        title: "Your Future Role: Smart Systems Builder",
        description: "You are drawn to connected devices, sensors, and real-world innovation. This path fits students who enjoy building and testing intelligent systems. IoTE emphasizes smart sensors, communication networks, software, and data/AI integration, which closely supports this direction. :contentReference[oaicite:1]{index=1}",
        focus: [
            "Embedded Systems",
            "Smart Sensors",
            "IoT Integration",
            "Networking Basics"
        ],
        programs: [
            "B.Eng. in IoT and Information Engineering",
            "Focus on hardware + software integration"
        ]
    },
    software: {
        title: "Your Future Role: Software & Application Developer",
        description: "You think in logic, flow, and user experience. This path matches students who enjoy building applications, websites, and software systems. The program’s career outcomes include Application Developer, Programmer, Software Engineer, Front-End, Back-End, and Full-Stack roles. :contentReference[oaicite:2]{index=2}",
        focus: [
            "Programming",
            "Web / App Development",
            "Database Design",
            "System Logic"
        ],
        programs: [
            "B.Eng. in IoT and Information Engineering",
            "Focus on software and digital product development"
        ]
    },
    data: {
        title: "Your Future Role: Data & AI Explorer",
        description: "You are motivated by insight, patterns, and smarter decision-making. This path fits learners who enjoy analysis and intelligent systems. The department highlights data science, AI-related knowledge, and careers such as Data Scientist and Data Engineer. :contentReference[oaicite:3]{index=3}",
        focus: [
            "Python",
            "Data Analysis",
            "AI Basics",
            "Visualization"
        ],
        programs: [
            "B.Eng. in IoT and Information Engineering",
            "Possible path toward Data Scientist / Data Engineer roles"
        ]
    },
    network: {
        title: "Your Future Role: Network & Cloud Connector",
        description: "You naturally think in terms of communication, infrastructure, and system integration. This path fits students who want devices, applications, and services to work together efficiently. The official program lists Network Engineer and Cloud Engineer among career possibilities. :contentReference[oaicite:4]{index=4}",
        focus: [
            "Networking",
            "Cloud Basics",
            "System Integration",
            "Infrastructure Thinking"
        ],
        programs: [
            "B.Eng. in IoT and Information Engineering",
            "Focus on communication systems and platforms"
        ]
    },
    physiot: {
        title: "Your Future Role: PhysIoT Innovation Path",
        description: "You are interested in combining science, engineering, and innovation. This direction aligns with the Dual Degree and Industrial Physics pathway, which the department presents as a bridge between smart sensors, embedded systems, scientific thinking, and future technology. :contentReference[oaicite:5]{index=5}",
        focus: [
            "Smart Sensors",
            "Applied Physics",
            "Instrumentation",
            "Engineering Integration"
        ],
        programs: [
            "Dual Degree: B.Eng. IoT System and Information + B.Sc. Industrial Physics",
            "Industrial Physics for science-driven technology work"
        ]
    }
};

let currentQuestion = 0;
let score = {
    iot: 0,
    software: 0,
    data: 0,
    network: 0,
    physiot: 0
};

const quizStartScreen = document.getElementById("quizStartScreen");
const quizScreen = document.getElementById("quizScreen");
const quizResultScreen = document.getElementById("quizResultScreen");
const startQuizBtn = document.getElementById("startQuizBtn");
const restartQuizBtn = document.getElementById("restartQuizBtn");

const currentQuestionNumber = document.getElementById("currentQuestionNumber");
const totalQuestionNumber = document.getElementById("totalQuestionNumber");
const quizProgressFill = document.getElementById("quizProgressFill");
const quizQuestionTitle = document.getElementById("quizQuestionTitle");
const quizOptions = document.getElementById("quizOptions");

const resultTitle = document.getElementById("resultTitle");
const resultDescription = document.getElementById("resultDescription");
const resultFocusList = document.getElementById("resultFocusList");
const resultProgramList = document.getElementById("resultProgramList");

totalQuestionNumber.textContent = quizData.length;

startQuizBtn.addEventListener("click", () => {
    quizStartScreen.classList.add("hidden");
    quizScreen.classList.remove("hidden");
    renderQuestion();
});

restartQuizBtn.addEventListener("click", () => {
    currentQuestion = 0;
    score = { iot: 0, software: 0, data: 0, network: 0, physiot: 0 };
    quizResultScreen.classList.add("hidden");
    quizStartScreen.classList.remove("hidden");
});

function renderQuestion() {
    const q = quizData[currentQuestion];
    currentQuestionNumber.textContent = currentQuestion + 1;
    quizProgressFill.style.width = `${((currentQuestion + 1) / quizData.length) * 100}%`;
    quizQuestionTitle.textContent = q.question;

    quizOptions.innerHTML = q.options.map((option, index) => `
        <button class="quiz-option-btn" data-type="${option.type}">
            <strong>${option.title}</strong>
            <span>${option.text}</span>
        </button>
    `).join("");

    document.querySelectorAll(".quiz-option-btn").forEach((btn) => {
        btn.addEventListener("click", () => {
            const type = btn.dataset.type;
            score[type] += 1;
            currentQuestion += 1;

            if (currentQuestion < quizData.length) {
                renderQuestion();
            } else {
                showResult();
            }
        });
    });
}

function showResult() {
    quizScreen.classList.add("hidden");
    quizResultScreen.classList.remove("hidden");

    const sorted = Object.entries(score).sort((a, b) => b[1] - a[1]);
    const topType = sorted[0][0];
    const result = resultMap[topType];

    resultTitle.textContent = result.title;
    resultDescription.innerHTML = result.description;

    resultFocusList.innerHTML = result.focus.map(item => `<li>${item}</li>`).join("");
    resultProgramList.innerHTML = result.programs.map(item => `<li>${item}</li>`).join("");
}