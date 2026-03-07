
async function loadComponents() {
    try {
        const headerRes = await fetch('includes/header.html');
        const headerHtml = await headerRes.text();
        document.getElementById('header-placeholder').innerHTML = headerHtml;

        const footerRes = await fetch('includes/footer.html');
        const footerHtml = await footerRes.text();
        document.getElementById('footer-placeholder').innerHTML = footerHtml;
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