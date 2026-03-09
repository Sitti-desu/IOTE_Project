const quizData = [
{
    question: "ถ้าเมืองในอนาคตต้องการระบบอัจฉริยะ คุณอยากเริ่มสร้างอะไรเป็นอย่างแรก?",
    options: [
        {
            title: "อุปกรณ์เซ็นเซอร์อัจฉริยะ",
            text: "อยากสร้างอุปกรณ์ที่ตรวจจับสิ่งรอบตัวได้จริง",
            type: "iot"
        },
        {
            title: "แอปพลิเคชันบนมือถือ",
            text: "อยากสร้างแอปให้คนใช้งานได้ง่าย",
            type: "software"
        },
        {
            title: "แดชบอร์ดวิเคราะห์ข้อมูล",
            text: "อยากดูข้อมูลแล้วนำไปใช้ตัดสินใจ",
            type: "data"
        },
        {
            title: "ระบบเชื่อมต่อทุกอย่างเข้าด้วยกัน",
            text: "อยากให้ทุกอุปกรณ์สื่อสารกันได้",
            type: "network"
        }
    ]
},

{
    question: "เวลาคุณเจอปัญหาที่ยาก วิธีไหนที่คุณชอบมากที่สุด?",
    options: [
        {
            title: "ทดลองกับอุปกรณ์จริง",
            text: "ลองทำ ลองวัด แล้วดูผลลัพธ์",
            type: "iot"
        },
        {
            title: "เขียนโค้ดแก้ปัญหา",
            text: "แก้ปัญหาด้วยโปรแกรม",
            type: "software"
        },
        {
            title: "วิเคราะห์ข้อมูล",
            text: "ดูข้อมูลเพื่อหาคำตอบ",
            type: "data"
        },
        {
            title: "ดูภาพรวมของระบบ",
            text: "มองว่าทุกส่วนทำงานร่วมกันยังไง",
            type: "network"
        }
    ]
},

{
    question: "โปรเจกต์แบบไหนที่คุณคิดว่าน่าสนใจที่สุด?",
    options: [
        {
            title: "บ้านอัจฉริยะ",
            text: "บ้านที่ควบคุมไฟ อุณหภูมิ และอุปกรณ์ได้",
            type: "iot"
        },
        {
            title: "แอปที่ช่วยแก้ปัญหาคน",
            text: "เช่น แอปสุขภาพ หรือแอปการเรียน",
            type: "software"
        },
        {
            title: "ระบบ AI แนะนำสิ่งต่างๆ",
            text: "เช่น ระบบแนะนำหนัง เพลง หรือสินค้า",
            type: "data"
        },
        {
            title: "ระบบ Cloud ขนาดใหญ่",
            text: "ระบบที่รองรับผู้ใช้จำนวนมาก",
            type: "network"
        }
    ]
},

{
    question: "ถ้าทำงานเป็นทีม คุณอยากทำหน้าที่อะไร?",
    options: [
        {
            title: "คนสร้างอุปกรณ์",
            text: "ประกอบ ทดลอง และปรับปรุงระบบจริง",
            type: "iot"
        },
        {
            title: "คนเขียนโปรแกรม",
            text: "สร้างระบบและฟีเจอร์ต่างๆ",
            type: "software"
        },
        {
            title: "คนวิเคราะห์ข้อมูล",
            text: "หาความหมายจากข้อมูล",
            type: "data"
        },
        {
            title: "คนออกแบบระบบ",
            text: "วางโครงสร้างให้ทุกอย่างทำงานร่วมกัน",
            type: "network"
        }
    ]
},

{
    question: "เวลาคุณเรียนรู้เทคโนโลยีใหม่ คุณสนใจอะไรมากที่สุด?",
    options: [
        {
            title: "อุปกรณ์และเซ็นเซอร์",
            text: "อยากรู้ว่ามันทำงานยังไง",
            type: "iot"
        },
        {
            title: "ภาษาโปรแกรม",
            text: "อยากเขียนโค้ดสร้างโปรแกรม",
            type: "software"
        },
        {
            title: "ข้อมูลและ AI",
            text: "อยากใช้ข้อมูลสร้างสิ่งใหม่",
            type: "data"
        },
        {
            title: "ระบบเครือข่าย",
            text: "อยากรู้ว่าอินเทอร์เน็ตและระบบสื่อสารทำงานยังไง",
            type: "network"
        }
    ]
},

{
    question: "ถ้าได้ทำโปรเจกต์ใหญ่ คุณอยากทำด้านไหน?",
    options: [
        {
            title: "สร้างอุปกรณ์ IoT",
            text: "เช่น เครื่องวัดคุณภาพอากาศ",
            type: "iot"
        },
        {
            title: "สร้างเว็บไซต์หรือแอป",
            text: "ที่คนใช้ได้จริง",
            type: "software"
        },
        {
            title: "วิเคราะห์ข้อมูลจำนวนมาก",
            text: "เพื่อหาความรู้ใหม่",
            type: "data"
        },
        {
            title: "สร้างระบบที่เชื่อมต่อทุกอย่าง",
            text: "เช่น Smart City",
            type: "network"
        }
    ]
},

{
    question: "คุณคิดว่าเทคโนโลยีในอนาคตควรช่วยอะไรคนมากที่สุด?",
    options: [
        {
            title: "ทำให้ชีวิตสะดวกขึ้น",
            text: "เช่น บ้านหรืออุปกรณ์อัจฉริยะ",
            type: "iot"
        },
        {
            title: "ทำให้การใช้งานง่ายขึ้น",
            text: "ผ่านแอปและแพลตฟอร์ม",
            type: "software"
        },
        {
            title: "ช่วยตัดสินใจจากข้อมูล",
            text: "เช่น AI และระบบวิเคราะห์",
            type: "data"
        },
        {
            title: "เชื่อมต่อทุกอย่างเข้าด้วยกัน",
            text: "ทำให้โลกเชื่อมต่อกันมากขึ้น",
            type: "network"
        }
    ]
},

{
    question: "เวลาคุณเห็นเทคโนโลยีใหม่ คุณสนใจอะไรเป็นอันดับแรก?",
    options: [
        {
            title: "มันมีอุปกรณ์อะไรอยู่ข้างใน",
            text: "อยากรู้ว่ามันทำงานยังไง",
            type: "iot"
        },
        {
            title: "ซอฟต์แวร์ทำงานยังไง",
            text: "อยากรู้โค้ดและระบบ",
            type: "software"
        },
        {
            title: "ข้อมูลที่มันใช้",
            text: "อยากรู้ว่ามันวิเคราะห์อะไร",
            type: "data"
        },
        {
            title: "มันเชื่อมต่อกับอะไรบ้าง",
            text: "อยากรู้โครงสร้างระบบ",
            type: "network"
        }
    ]
},

{
    question: "ถ้าคุณต้องสร้างเทคโนโลยีเพื่อช่วยโลก คุณอยากทำอะไร?",
    options: [
        {
            title: "ระบบตรวจวัดสิ่งแวดล้อม",
            text: "เช่น เซ็นเซอร์วัดอากาศหรืออุณหภูมิ",
            type: "iot"
        },
        {
            title: "แอปช่วยแก้ปัญหาสังคม",
            text: "เช่น แอปช่วยการศึกษา",
            type: "software"
        },
        {
            title: "ระบบ AI วิเคราะห์ข้อมูลโลก",
            text: "เพื่อช่วยวางแผนอนาคต",
            type: "data"
        },
        {
            title: "โครงสร้างระบบขนาดใหญ่",
            text: "เช่น Smart City หรือ Smart Transport",
            type: "network"
        }
    ]
},

{
    question: "ถ้าเลือกเส้นทางการเรียนในอนาคต คุณอยากเน้นด้านไหน?",
    options: [
        {
            title: "อุปกรณ์อัจฉริยะและ IoT",
            text: "สร้างอุปกรณ์และระบบจริง",
            type: "iot"
        },
        {
            title: "ซอฟต์แวร์และแอปพลิเคชัน",
            text: "สร้างแพลตฟอร์มและโปรแกรม",
            type: "software"
        },
        {
            title: "ข้อมูลและ AI",
            text: "วิเคราะห์ข้อมูลและสร้างระบบอัจฉริยะ",
            type: "data"
        },
        {
            title: "ฟิสิกส์ + เทคโนโลยี",
            text: "ผสมผสานวิทยาศาสตร์กับนวัตกรรม",
            type: "physiot"
        }
    ]
}
];

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

const resultMap = {
    iot: {
        title: "เส้นทางของคุณ: นักสร้างระบบอัจฉริยะ",
        description: "คุณเหมาะกับการทำงานด้านอุปกรณ์อัจฉริยะ เซ็นเซอร์ และระบบที่เชื่อมต่อกับโลกจริง ชอบการลงมือสร้าง ทดลอง และพัฒนาสิ่งที่ใช้งานได้จริง",
        focus: [
            "Embedded Systems",
            "Smart Sensors",
            "IoT Integration",
            "พื้นฐานระบบเครือข่าย"
        ],
        programs: [
            "วิศวกรรมระบบไอโอทีและสารสนเทศ",
            "แนวทางการเรียนด้านอุปกรณ์อัจฉริยะและระบบจริง"
        ]
    },

    software: {
        title: "เส้นทางของคุณ: นักพัฒนาซอฟต์แวร์และแอปพลิเคชัน",
        description: "คุณชอบคิดเป็นลำดับขั้นตอน ชอบสร้างระบบ โปรแกรม หรือแอปที่คนใช้งานได้จริง เหมาะกับสายพัฒนาซอฟต์แวร์และผลิตภัณฑ์ดิจิทัล",
        focus: [
            "Programming",
            "Web / App Development",
            "Database",
            "System Design"
        ],
        programs: [
            "วิศวกรรมระบบไอโอทีและสารสนเทศ",
            "แนวทางการเรียนด้านซอฟต์แวร์และแอปพลิเคชัน"
        ]
    },

    data: {
        title: "เส้นทางของคุณ: นักสำรวจข้อมูลและ AI",
        description: "คุณสนใจการวิเคราะห์ข้อมูล การมองหารูปแบบ และการใช้ AI เพื่อช่วยตัดสินใจ เหมาะกับสายที่ชอบคิด วิเคราะห์ และสร้างระบบอัจฉริยะจากข้อมูล",
        focus: [
            "Data Analysis",
            "Python",
            "AI Basics",
            "Data Visualization"
        ],
        programs: [
            "วิศวกรรมระบบไอโอทีและสารสนเทศ",
            "แนวทางการเรียนด้านข้อมูล ปัญญาประดิษฐ์ และระบบอัจฉริยะ"
        ]
    },

    network: {
        title: "เส้นทางของคุณ: นักเชื่อมต่อระบบและเครือข่าย",
        description: "คุณมองเห็นภาพรวมของระบบ ชอบให้ทุกส่วนทำงานร่วมกันได้อย่างลื่นไหล เหมาะกับสายเครือข่าย Cloud และการออกแบบโครงสร้างระบบ",
        focus: [
            "Networking",
            "Cloud Basics",
            "System Integration",
            "Infrastructure"
        ],
        programs: [
            "วิศวกรรมระบบไอโอทีและสารสนเทศ",
            "แนวทางการเรียนด้านเครือข่ายและระบบเชื่อมต่อ"
        ]
    },

    physiot: {
        title: "เส้นทางของคุณ: สาย PhysIoT และนวัตกรรม",
        description: "คุณสนใจการเชื่อมโยงวิทยาศาสตร์ ฟิสิกส์ และเทคโนโลยีเข้าด้วยกัน เหมาะกับสายที่ต้องการต่อยอดความรู้เชิงวิทยาศาสตร์ไปสู่นวัตกรรมและงานวิศวกรรมยุคใหม่",
        focus: [
            "Applied Physics",
            "Smart Sensors",
            "Instrumentation",
            "Engineering Integration"
        ],
        programs: [
            "แนวทาง PhysIoT / Industrial Physics",
            "เส้นทางที่เชื่อมฟิสิกส์กับเทคโนโลยีและนวัตกรรม"
        ]
    }
};

