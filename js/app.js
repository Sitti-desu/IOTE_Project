
async function loadComponents() {
    try {
        const noCache = '?v=' + new Date().getTime(); 
        const headerRes = await fetch('includes/header.html' + noCache);
        const headerHtml = await headerRes.text();
        document.getElementById('header-placeholder').innerHTML = headerHtml;

        const footerRes = await fetch('includes/footer.html' + noCache);
        const footerHtml = await footerRes.text();
        document.getElementById('footer-placeholder').innerHTML = footerHtml;
        
        // ✨ เพิ่มคำสั่งนี้: เรียกฟังก์ชันเซนเซอร์ตรวจจับตอนโหลดเว็บเสร็จ ✨
        initFloatingMenuObserver();
    } catch (error) {
        console.error("Error loading components:", error);
    }
}

loadComponents();

function toggleDropdown(event, dropdownId) {
    event.preventDefault();
    const dropdown = document.getElementById(dropdownId);
    dropdown.classList.toggle("show");
}

function toggleMobileMenu() {
    const navMenu = document.getElementById("nav-menu");
    navMenu.classList.toggle("active");
}

// คลิกที่อื่นเพื่อปิด Dropdown
window.onclick = function(event) {
    if (!event.target.matches('.dropbtn') && !event.target.matches('.mobile-menu-btn')) {
        const dropdowns = document.getElementsByClassName("dropdown-menu");
        for (let i = 0; i < dropdowns.length; i++) {
            if (dropdowns[i].classList.contains('show')) {
                dropdowns[i].classList.remove('show');
            }
        }
    }
}

document.addEventListener("DOMContentLoaded", () => {
    // Accordion สำหรับ TCAS
    const acc = document.getElementsByClassName("accordion");
    for (let i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function() {
            this.classList.toggle("active");
            let panel = this.nextElementSibling;
            if (panel.style.maxHeight) {
                panel.style.maxHeight = null;
                panel.classList.remove("show-border");
            } else {
                panel.style.maxHeight = panel.scrollHeight + 40 + "px";
                panel.classList.add("show-border");
            } 
        });
    }
});

// ระบบ Tab เลือกหลักสูตร
function openProgram(evt, programName, fee, desc) {
    let programContents = document.getElementsByClassName("program-content");
    for (let i = 0; i < programContents.length; i++) {
        programContents[i].style.display = "none";
    }

    let tabBtns = document.getElementsByClassName("tab-btn");
    for (let i = 0; i < tabBtns.length; i++) {
        tabBtns[i].className = tabBtns[i].className.replace(" active", "");
    }

    document.getElementById(programName).style.display = "block";
    evt.currentTarget.className += " active";

    // อัปเดตราคาตอนกดเปลี่ยนหลักสูตร
    const feeElement = document.getElementById("tuition-fee");
    const descElement = document.getElementById("tuition-desc");
    
    if(feeElement && descElement) {
        feeElement.style.opacity = 0; 
        setTimeout(() => {
            feeElement.innerText = fee;
            descElement.innerHTML = desc;
            feeElement.style.opacity = 1;
            
            // ✨ แก้สีตรงนี้ให้เข้ากับพื้นหลังสีขาว ✨
            if(fee === "฿45,000") {
                feeElement.style.color = "#E67E22"; // หลักสูตรสองปริญญา ให้เป็นสีส้มทอง
            } else {
                feeElement.style.color = "#1d1d1f"; // หลักสูตรปกติ ให้กลับมาเป็นสีดำเข้ม
            }
        }, 200);
    }
}
/* ปุ่มเลื่อนสไลด์ */
let currentIndex = 0;

function moveSlide(direction) {
    const slider = document.getElementById('imageSlider'); // ต้องตรงกับ id ใน HTML
    const slides = document.querySelectorAll('.slide');
    const totalSlides = slides.length;

    currentIndex += direction;

    if (currentIndex >= totalSlides) {
        currentIndex = 0;
    } else if (currentIndex < 0) {
        currentIndex = totalSlides - 1;
    }

    // เลื่อนรูป
    const offset = -currentIndex * 100;
    slider.style.transform = `translateX(${offset}%)`;
}

function copyEmail(element) {
    const emailToCopy = "iote@kmitl.ac.th";
    
    // สั่งคัดลอกลง Clipboard
    navigator.clipboard.writeText(emailToCopy).then(() => {
        // หา Tooltip ที่ซ่อนอยู่ข้างในปุ่มที่โดนกด
        const tooltip = element.querySelector('.copy-tooltip');
        
        // สั่งให้โชว์
        tooltip.classList.add('show');
        
        // ตั้งเวลาให้ซ่อนไปเองหลังผ่านไป 2 วินาที (2000 ms)
        setTimeout(() => {
            tooltip.classList.remove('show');
        }, 2000);
    }).catch(err => {
        console.error('ไม่สามารถคัดลอกข้อความได้: ', err);
    });
}

document.addEventListener("DOMContentLoaded", () => {
    const iotContainer = document.getElementById('iot-faculty-container');
    if (iotContainer) {
        loadFaculty();
    }
});

async function loadFaculty() {
    try {
        const response = await fetch('api/get_faculty.php');
        const result = await response.json();

        const iotContainer = document.getElementById('iot-faculty-container');
        const phyContainer = document.getElementById('physics-faculty-container');
        
        // กันเหนียว เผื่อไปหน้าอื่นที่ไม่มีกล่องนี้จะได้ไม่ Error
        if (!iotContainer || !phyContainer) return; 

        iotContainer.innerHTML = '';
        phyContainer.innerHTML = '';

        if (result.status === 'success') {
            result.data.forEach(ajarn => {
                const emailText = ajarn.email ? ajarn.email : "";
                const expText = ajarn.expertise ? ajarn.expertise : "";
                const eduText = ajarn.education ? ajarn.education : "ยังไม่มีข้อมูลประวัติการศึกษาในระบบ";
                
                const card = `
                    <div class="tab-btn faculty-card" 
                         onclick="openProfileModal(this)" 
                         data-id="${ajarn.id}" 
                         data-name="${ajarn.fullname}" 
                         data-pos="${ajarn.position}" 
                         data-img="${ajarn.image_path}" 
                         data-edu="${eduText}" 
                         data-email="${emailText}" 
                         data-expertise="${expText}" 
                         /* ... โค้ดส่วน CSS ด้านหลังเหมือนเดิม ... */
                         style="text-align: center; display: flex; flex-direction: column; align-items: center; background: var(--card-bg); cursor: pointer; transition: transform 0.3s;">
                        <img src="${ajarn.image_path}" onerror="this.src='https://via.placeholder.com/150x200'" style="width: 160px; height: 220px; border-radius: 16px; object-fit: cover; margin-bottom: 15px; border: 4px solid var(--bg-body); box-shadow: 0 8px 20px rgba(0,0,0,0.08);">
                        <h3 style="font-size: 1.2rem; color: var(--text-main); margin-bottom: 5px;">${ajarn.fullname}</h3>
                        <p style="font-size: 0.95rem; color: var(--text-muted); margin: 0;">${ajarn.position}</p>
                        ${expText ? `<p style="font-size: 0.8rem; color: var(--primary-color); margin-top: 10px; font-weight: bold;"><i class="fas fa-star"></i> ${expText}</p>` : ''}
                    </div>
                `;
                
                if (ajarn.department === 'IoT') {
                    iotContainer.innerHTML += card;
                } else {
                    phyContainer.innerHTML += card;
                }
            });

            // ตะโกนบอก AOS ให้สแกนหน้าเว็บใหม่
            setTimeout(() => {
                if (typeof AOS !== 'undefined') {
                    AOS.refresh();
                }
            }, 100);
        }
    } catch (error) {
        console.error("Error loading faculty:", error);
    }
}

function openFilterModal() {
    document.getElementById('filterModal').style.display = 'flex';
}

function closeFilterModal() {
    document.getElementById('filterModal').style.display = 'none';
}

function applyFilter() {
    const checkboxes = document.querySelectorAll('.exp-cb:checked');
    const selectedExpGroups = Array.from(checkboxes).map(cb => cb.value); 
    const cards = document.querySelectorAll('.faculty-card');

    // 1. ซ่อน/โชว์การ์ดอาจารย์แต่ละคน
    cards.forEach(card => {
        if (selectedExpGroups.length === 0) {
            card.style.display = 'flex';
            return;
        }

        const cardExp = card.getAttribute('data-expertise');
        if (!cardExp) {
            card.style.display = 'none'; 
            return;
        }

        const cardExpLower = cardExp.toLowerCase();
        const hasMatch = selectedExpGroups.some(group => {
            const keywords = group.split(','); 
            return keywords.some(kw => cardExpLower.includes(kw.toLowerCase().trim()));
        });

        if (hasMatch) {
            card.style.display = 'flex';
        } else {
            card.style.display = 'none';
        }
    });

    // 2. ✨ เพิ่มโค้ดส่วนนี้: ตรวจสอบและซ่อนกล่อง Section ที่ว่างเปล่า ✨
    const iotContainer = document.getElementById('iot-faculty-container');
    const phyContainer = document.getElementById('physics-faculty-container');

    // ฟังก์ชันช่วยเช็คความว่างเปล่า
    const toggleEmptySection = (container) => {
        if (!container) return; // ป้องกัน Error ถ้าหาล่องไม่เจอ
        
        // นับจำนวนการ์ดอาจารย์ที่ยัง "โชว์อยู่" ในกล่องนี้
        const visibleCards = Array.from(container.querySelectorAll('.faculty-card')).filter(card => card.style.display !== 'none');
        
        // หากล่อง <section class="outline-border"> ที่ครอบ container นี้อยู่
        const parentSection = container.closest('.outline-border');
        
        if (parentSection) {
            if (visibleCards.length === 0) {
                parentSection.style.display = 'none'; // ซ่อนทั้งกรอบขาวถ้าไม่มีอาจารย์เลย
            } else {
                parentSection.style.display = 'block'; // โชว์กรอบขาวกลับมาถ้ามีอาจารย์
            }
        }
    };

    // สั่งเช็คทั้ง 2 ภาควิชา
    toggleEmptySection(iotContainer);
    toggleEmptySection(phyContainer);

    closeFilterModal();
}
// ==========================================
// ระบบ Popup ประวัติ และ ส่งข้อความหาอาจารย์
// ==========================================
function openProfileModal(element) {
    document.getElementById('modal-img').src = element.getAttribute('data-img');
    document.getElementById('modal-name').innerText = element.getAttribute('data-name');
    document.getElementById('modal-pos').innerText = element.getAttribute('data-pos');
    document.getElementById('modal-faculty-id').value = element.getAttribute('data-id');

    // 1. จัดการส่วนของ Email
    const email = element.getAttribute('data-email');
    const emailLink = document.getElementById('modal-email-link');
    const emailText = document.getElementById('modal-email-text');
    
    if (email && email !== "null") {
        emailText.innerText = email;
        emailLink.href = `mailto:${email}`; // ทำให้พอกดปุ๊บ เปิดแอปส่งเมลทันที
        emailLink.style.display = 'inline-flex';
    } else {
        emailLink.style.display = 'none'; // ซ่อนปุ่มถ้าไม่มีอีเมล
    }

    // 2. จัดการส่วนของประวัติการศึกษา (แปลงข้อความยาวๆ ให้ขึ้นบรรทัดใหม่)
    let eduRaw = element.getAttribute('data-edu');
    
    // โค้ดดักจับคำเพื่อแยก ป.ตรี ป.โท ป.เอก
    let formattedEdu = eduRaw
        .replace(/(Ph\.D\.|D\.Eng\.|Doctor|วิทยาศาสตรดุษฎีบัณฑิต|ปรัชญาดุษฎีบัณฑิต|วิศวกรรมศาสตรดุษฎีบัณฑิต|ปร\.ด\.|วศ\.ด\.)/gi, '<br><strong style="color:var(--primary-color);">🎓 ป.เอก:</strong> $1')
        .replace(/(M\.Eng\.|M\.Sc\.|M\.A\.|M\.S\.|วศ\.ม\.|วท\.ม\.)/gi, '<br><strong style="color:var(--primary-color);">🎓 ป.โท:</strong> $1')
        .replace(/(B\.Eng\.|B\.Sc\.|อส\.บ\.|วศ\.บ\.|วท\.บ\.|กศ\.บ\.|ปริญญาตรี|ปวส\.)/gi, '<br><strong style="color:var(--primary-color);">🎓 ป.ตรี:</strong> $1');

    // ลบตัวเชื่อม "และ", "," ที่ติดมาตรงรอยต่อบรรทัดให้คลีนขึ้น
    formattedEdu = formattedEdu.replace(/, <br>/g, '<br>').replace(/ และ <br>/g, '<br>').replace(/และ <br>/g, '<br>');
    
    // ลบ <br> ตัวแรกสุดทิ้ง (ถ้ามี) เพื่อไม่ให้บรรทัดบนสุดเว้นว่าง
    if (formattedEdu.startsWith('<br>')) {
        formattedEdu = formattedEdu.substring(4);
    }

    // เอาไปแสดงผลแบบ HTML
    document.getElementById('modal-edu').innerHTML = formattedEdu;
    
    // โชว์หน้าต่าง
    document.getElementById('profileModal').style.display = 'flex';
}

function closeProfileModal() {
    document.getElementById('profileModal').style.display = 'none';
    document.getElementById('contact-faculty-form').reset(); // ล้างฟอร์มตอนปิด
}

async function submitMessage(event) {
    event.preventDefault(); // ป้องกันหน้าเว็บกระตุกรีเฟรช
    
    const btn = document.getElementById('btn-submit-msg');
    btn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> กำลังส่งข้อมูล...';
    btn.disabled = true;

    // รวบรวมข้อมูลจากฟอร์ม
    const data = {
        faculty_id: document.getElementById('modal-faculty-id').value,
        sender_name: document.getElementById('sender-name').value,
        sender_email: document.getElementById('sender-email').value,
        message: document.getElementById('sender-msg').value
    };

    try {
        // ยิงข้อมูลไปที่ API (ที่เรากำลังจะสร้างในสเต็ป 3)
        const response = await fetch('api/send_message.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(data)
        });
        
        const result = await response.json();
        
        if(result.status === 'success') {
            alert('🎉 ส่งข้อความสำเร็จ! ข้อมูลถูกส่งเข้าฐานข้อมูลแล้ว รอการติดต่อกลับจากอาจารย์นะครับ');
            closeProfileModal();
        } else {
            alert('❌ เกิดข้อผิดพลาด: ' + result.message);
        }
    } catch (error) {
        alert('❌ ไม่สามารถเชื่อมต่อกับเซิร์ฟเวอร์ได้ กรุณาลองใหม่');
    }
    
    // คืนค่าปุ่มกลับมาเหมือนเดิม
    btn.innerHTML = '<i class="fas fa-paper-plane"></i> ส่งข้อความหาอาจารย์';
    btn.disabled = false;
}

// ==========================================
// ระบบ Floating Menu (iPhone Style)
// ==========================================

// ฟังก์ชันเปิด/ปิด เมนูและหมุนเกียร์
function toggleIosMenu() {
    const menu = document.getElementById('ios-nav-popup');
    const gear = document.getElementById('ios-gear-toggle');
    
    // สลับคลาสเพื่อแสดง/ซ่อน และหมุนเกียร์
    menu.classList.toggle('show');
    gear.classList.toggle('spin');
}

// ฟังก์ชันเลื่อนหน้าจอขึ้นบนสุดแบบนุ่มนวล (Smooth Scroll)
function scrollToTop() {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
    
    // หลังจากกดเลื่อนขึ้น ให้พับเมนูเก็บด้วยความเรียบร้อย
    toggleIosMenu();
}

// ออปชันเสริม: คลิกที่ว่างบนหน้าจอแล้วให้เมนูหุบเก็บเอง
document.addEventListener('click', function(event) {
    const menu = document.getElementById('ios-nav-popup');
    const gear = document.getElementById('ios-gear-toggle');
    
    // ✨ เพิ่มบรรทัดนี้: เช็คก่อนว่าปุ่มเกียร์โหลดเสร็จโผล่มาบนจอหรือยัง ป้องกัน Error โค้ดพัง ✨
    if (menu && gear) {
        if (menu.classList.contains('show') && !gear.contains(event.target) && !menu.contains(event.target)) {
            toggleIosMenu();
        }
    }
});

// ==========================================
// เซนเซอร์ซ่อน/โชว์ Floating Menu อัตโนมัติ
// ==========================================
function initFloatingMenuObserver() {
    const floatMenu = document.querySelector('.ios-float-menu');
    const headerObj = document.getElementById('header-placeholder');
    const footerObj = document.getElementById('footer-placeholder');
    
    if (!floatMenu || !headerObj || !footerObj) return;

    // ตรวจสอบตอนโหลดหน้าเว็บครั้งแรก
    checkVisibility();

    // ตรวจสอบตลอดเวลาที่เราไถหน้าจอ (Scroll)
    window.addEventListener('scroll', checkVisibility);

    function checkVisibility() {
        // หาพิกัดของ Header และ Footer ว่าอยู่ตรงไหนของจอ
        const headerRect = headerObj.getBoundingClientRect();
        const footerRect = footerObj.getBoundingClientRect();
        
        // เช็คว่ามันโผล่เข้ามาในพื้นที่หน้าจอ (Viewport) หรือไม่
        const headerInView = (headerRect.bottom > 0 && headerRect.top < window.innerHeight);
        const footerInView = (footerRect.bottom > 0 && footerRect.top < window.innerHeight);
        
        if (headerInView || footerInView) {
            // ✨ ถ้าเห็น Header หรือ Footer -> สั่งซ่อนปุ่มเกียร์ ✨
            floatMenu.classList.remove('show-btn'); 
            
            // ถ้าเมนูกำลังกางอยู่ ให้พับเก็บให้เรียบร้อยด้วย
            const menuPopup = document.getElementById('ios-nav-popup');
            const gearBtn = document.getElementById('ios-gear-toggle');
            if (menuPopup && menuPopup.classList.contains('show')) {
                menuPopup.classList.remove('show');
                gearBtn.classList.remove('spin');
            }
        } else {
            // ✨ ถ้าไม่เห็นทั้งคู่ (อยู่กลางเว็บ) -> สั่งโชว์ปุ่มเกียร์ ✨
            floatMenu.classList.add('show-btn'); 
        }
    }
}