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
    },
    {
        question: "ถ้าคุณได้ทำโปรเจกต์ที่เชื่อมวิทยาศาสตร์กับวิศวกรรม คุณอยากทำอะไร?",
        options: [
            {
                title: "ระบบตรวจวัดด้วยเซ็นเซอร์และอุปกรณ์จริง",
                text: "ชอบการวัดค่า ทดลอง และสร้างอุปกรณ์อัจฉริยะ",
                type: "physiot"
            },
            {
                title: "แพลตฟอร์มซอฟต์แวร์หรือแอปสำหรับผู้ใช้",
                text: "ชอบสร้างระบบที่คนใช้งานได้ง่าย",
                type: "software"
            },
            {
                title: "ระบบวิเคราะห์ข้อมูลและ AI",
                text: "ชอบหาความหมายจากข้อมูลจำนวนมาก",
                type: "data"
            },
            {
                title: "ระบบสื่อสารและเครือข่ายขนาดใหญ่",
                text: "ชอบออกแบบการเชื่อมต่อของหลายระบบ",
                type: "network"
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
        title: "เส้นทางของคุณ: วิศวกรรมไอโอทีและระบบสมองกลฝังตัว",
        description: `
            คุณเด่นด้านการสร้างระบบที่เชื่อมโลกจริงกับโลกดิจิทัล ชอบอุปกรณ์อัจฉริยะ เซ็นเซอร์ 
            ไมโครคอนโทรลเลอร์ และการพัฒนาระบบที่ทำงานได้จริง เหมาะกับแนวทางการเรียนที่เน้น
            ฮาร์ดแวร์ ดีไวซ์ ระบบสมองกลฝังตัว และการประยุกต์ใช้ IoT ในงานจริง
        `,
        focus: [
            "พื้นฐานระบบไอโอที (Introduction to Internet of Things)",
            "ไมโครคอนโทรลเลอร์และระบบสมองกลฝังตัว (Microcontroller and Embedded Systems)",
            "ระบบไซเบอร์ทางกายภาพและเซ็นเซอร์ (Cyber-Physical System and Sensor)",
            "ระบบไอโอทีในอุตสาหกรรม (Industrial Internet of Things)",
            "ปฏิบัติระบบไอโอทีและสารสนเทศ"
        ],
        programs: [
            "หลักสูตรวิศวกรรมศาสตรบัณฑิต สาขาวิชาวิศวกรรมไอโอทีและสารสนเทศ",
            "แนวทางอาชีพ: IoT Engineer / Embedded System Engineer / R&D Engineer"
        ]
    },

    software: {
        title: "เส้นทางของคุณ: วิศวกรรมซอฟต์แวร์และแอปพลิเคชัน",
        description: `
            คุณชอบออกแบบระบบ คิดเป็นลำดับขั้นตอน และสร้างโปรแกรมที่ใช้งานได้จริง 
            เหมาะกับแนวทางการเรียนที่เน้นการเขียนโปรแกรม การพัฒนาเว็บและแอปพลิเคชัน
            รวมถึงการออกแบบประสบการณ์ผู้ใช้
        `,
        focus: [
            "การเขียนโปรแกรมคอมพิวเตอร์ (Computer Programming)",
            "การเขียนโปรแกรมเชิงวัตถุและโครงสร้างข้อมูล",
            "การพัฒนาแอพพลิเคชันบนโมไบล์ (Mobile Application Development)",
            "การพัฒนาแอปพลิเคชันบนเว็บ (Web Application Development)",
            "วิศวกรรมซอฟต์แวร์ (Software Engineering)",
            "การออกแบบเชิงปฏิสัมพันธ์ (Interaction Design)"
        ],
        programs: [
            "หลักสูตรวิศวกรรมศาสตรบัณฑิต สาขาวิชาวิศวกรรมไอโอทีและสารสนเทศ",
            "แนวทางอาชีพ: Software Developer / Application Developer / Information Engineer"
        ]
    },

    data: {
        title: "เส้นทางของคุณ: ข้อมูล ปัญญาประดิษฐ์ และระบบอัจฉริยะ",
        description: `
            คุณสนใจการวิเคราะห์ข้อมูล การมองหารูปแบบ และการใช้ AI เพื่อช่วยตัดสินใจ 
            เหมาะกับแนวทางการเรียนที่เน้น Data Analytics, Machine Learning และ
            การประยุกต์ใช้ AI กับระบบ IoT และระบบอัจฉริยะ
        `,
        focus: [
            "การวิเคราะห์ข้อมูล (Data Analytics)",
            "การเรียนรู้ของเครื่อง (Machine Learning)",
            "ปัญญาประดิษฐ์ในทุกสรรพสิ่ง (Artificial Intelligence of Things)",
            "การมองเห็นของเครื่องจักรและคอมพิวเตอร์",
            "ระบบฐานข้อมูล (Database System)",
            "สถิติวิศวกรรม"
        ],
        programs: [
            "หลักสูตรวิศวกรรมศาสตรบัณฑิต สาขาวิชาวิศวกรรมไอโอทีและสารสนเทศ",
            "แนวทางอาชีพ: Data Engineer / Data Scientist / AI Engineer"
        ]
    },

    network: {
        title: "เส้นทางของคุณ: ระบบเครือข่าย การสื่อสาร และคลาวด์",
        description: `
            คุณมองเห็นภาพรวมของระบบและการเชื่อมต่อ สนใจการออกแบบโครงสร้างพื้นฐาน
            ด้านเครือข่าย การสื่อสารข้อมูล และ Cloud Infrastructure
            เหมาะกับการพัฒนาระบบขนาดใหญ่และระบบ IoT ที่เชื่อมต่ออุปกรณ์จำนวนมาก
        `,
        focus: [
            "การสื่อสารพื้นฐาน (Principles of Communications)",
            "ระบบโครงข่ายไอโอทีและการสื่อสารข้อมูล",
            "การออกแบบและการปฏิบัติการเชื่อมโยงระบบโครงข่าย",
            "ระบบสื่อสารไร้สายสำหรับระบบไอโอที",
            "ระบบความมั่นคงทางไซเบอร์ (Cyber Security Systems)",
            "การประมวลผลคลาวด์และเอดจ์ (Cloud and Edge Computing)"
        ],
        programs: [
            "หลักสูตรวิศวกรรมศาสตรบัณฑิต สาขาวิชาวิศวกรรมไอโอทีและสารสนเทศ",
            "แนวทางอาชีพ: Network Engineer / Cloud Engineer / Infrastructure Engineer"
        ]
    },

    physiot: {
        title: "เส้นทางของคุณ: โครงการสองปริญญา PhysIoTE",
        description: `
            คุณสนใจการเชื่อมโยงวิทยาศาสตร์ ฟิสิกส์ และเทคโนโลยีเข้าด้วยกัน 
            เหมาะกับการเรียนแบบบูรณาการที่รวมความรู้ด้านฟิสิกส์ เครื่องมือวัด
            และเทคโนโลยี IoT เพื่อสร้างนวัตกรรมและระบบอัจฉริยะในโลกจริง
        `,
        focus: [
            "Measurement and Instrumentation",
            "Sensors and Transducers",
            "Cyber-Physical Systems",
            "Microcontroller and Embedded Systems",
            "Industrial Internet of Things",
            "Physics and Applications"
        ],
        programs: [
            "โครงการสองปริญญา: วท.บ. ฟิสิกส์อุตสาหกรรม + วศ.บ. วิศวกรรมระบบไอโอทีและสารสนเทศ",
            "แนวทางอาชีพ: Instrumentation Engineer / IoT R&D Engineer / Smart Device Innovation"
        ]
    }
};

