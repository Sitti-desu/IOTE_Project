const curriculumSelect = document.getElementById("curriculumSelect");
const searchCourseInput = document.getElementById("searchCourse");

const totalCreditsEl = document.getElementById("totalCredits");
const earnedCreditsEl = document.getElementById("earnedCredits");
const remainingCreditsEl = document.getElementById("remainingCredits");
const creditStatusEl = document.getElementById("creditStatus");
const creditProgressFill = document.getElementById("creditProgressFill");
const creditProgressText = document.getElementById("creditProgressText");

const allCoursesZone = document.getElementById("allCoursesZone");
const selectedCoursesZone = document.getElementById("selectedCoursesZone");
const allCoursesCount = document.getElementById("allCoursesCount");
const selectedCoursesCount = document.getElementById("selectedCoursesCount");

const moveAllToSelectedBtn = document.getElementById("moveAllToSelectedBtn");
const moveAllToAvailableBtn = document.getElementById("moveAllToAvailableBtn");
const celebrationPopup = document.getElementById("celebrationPopup");

let hasCelebrated = false;
let allCourses = [];
let selectedCourseIds = [];
let curriculumTotalCredits = 0;
let draggedCourseId = null;

document.addEventListener("DOMContentLoaded", () => {
    loadCurriculums();

    curriculumSelect.addEventListener("change", handleCurriculumChange);
    searchCourseInput.addEventListener("input", renderDualLists);

    moveAllToSelectedBtn.addEventListener("click", moveAllToSelected);
    moveAllToAvailableBtn.addEventListener("click", moveAllToAvailable);

    setupDropZones();
});

function loadCurriculums() {
    fetch("api/get_curriculums.php")
        .then(response => response.json())
        .then(data => {
            if (!data.success) return;

            data.curriculums.forEach(curriculum => {
                const option = document.createElement("option");
                option.value = curriculum.id;
                option.textContent = `${curriculum.curriculum_name} (${curriculum.total_credits} หน่วยกิต)`;
                option.dataset.totalCredits = curriculum.total_credits;
                curriculumSelect.appendChild(option);
            });
        })
        .catch(error => console.error("โหลดหลักสูตรไม่สำเร็จ:", error));
}

function handleCurriculumChange() {
    const curriculumId = curriculumSelect.value;
    const selectedOption = curriculumSelect.options[curriculumSelect.selectedIndex];

    resetAll();

    if (!curriculumId) {
        renderDualLists();
        return;
    }

    curriculumTotalCredits = parseInt(selectedOption.dataset.totalCredits || "0", 10);
    totalCreditsEl.textContent = curriculumTotalCredits;

    fetch(`api/get_courses.php?curriculum_id=${curriculumId}`)
        .then(response => response.json())
        .then(data => {
            if (!data.success) {
                renderDualLists();
                return;
            }

            allCourses = data.courses.map(course => ({
                ...course,
                id: parseInt(course.id, 10),
                credits: parseInt(course.credits, 10),
                year_level: parseInt(course.year_level, 10) || 0,
                semester: parseInt(course.semester, 10) || 0
            }));

            renderDualLists();
            updateSummary();
        })
        .catch(error => {
            console.error("โหลดวิชาไม่สำเร็จ:", error);
            renderDualLists();
        });
}

function setupDropZones() {
    [allCoursesZone, selectedCoursesZone].forEach(zone => {
        zone.addEventListener("dragover", (e) => {
            e.preventDefault();
            zone.classList.add("drag-over");
        });

        zone.addEventListener("dragleave", () => {
            zone.classList.remove("drag-over");
        });

        zone.addEventListener("drop", (e) => {
            e.preventDefault();
            zone.classList.remove("drag-over");

            if (draggedCourseId === null) return;

            if (zone.id === "selectedCoursesZone") {
                addToSelected(draggedCourseId);
            } else {
                removeFromSelected(draggedCourseId);
            }

            draggedCourseId = null;
        });
    });
}

function addToSelected(courseId) {
    if (!selectedCourseIds.includes(courseId)) {
        selectedCourseIds.push(courseId);
        renderDualLists();
        updateSummary();
    }
}

function removeFromSelected(courseId) {
    selectedCourseIds = selectedCourseIds.filter(id => id !== courseId);
    renderDualLists();
    updateSummary();
}

function renderDualLists() {
    const keyword = searchCourseInput.value.trim().toLowerCase();

    if (!allCourses.length) {
        allCoursesZone.innerHTML = `<div class="drop-zone-empty">กรุณาเลือกหลักสูตรก่อน</div>`;
        selectedCoursesZone.innerHTML = `<div class="drop-zone-empty">ลากวิชามาวางที่นี่</div>`;
        allCoursesCount.textContent = `0 วิชา`;
        selectedCoursesCount.textContent = `0 วิชา`;
        return;
    }

    const filteredAllCourses = allCourses.filter(course => {
        const matchKeyword =
            !keyword ||
            course.course_code.toLowerCase().includes(keyword) ||
            course.course_name_th.toLowerCase().includes(keyword) ||
            (course.course_name_en && course.course_name_en.toLowerCase().includes(keyword));

        return matchKeyword && !selectedCourseIds.includes(course.id);
    });

    const filteredSelectedCourses = allCourses.filter(course => {
        const matchKeyword =
            !keyword ||
            course.course_code.toLowerCase().includes(keyword) ||
            course.course_name_th.toLowerCase().includes(keyword) ||
            (course.course_name_en && course.course_name_en.toLowerCase().includes(keyword));

        return matchKeyword && selectedCourseIds.includes(course.id);
    });

    allCoursesCount.textContent = `${filteredAllCourses.length} วิชา`;
    selectedCoursesCount.textContent = `${filteredSelectedCourses.length} วิชา`;

    renderCourseList(allCoursesZone, filteredAllCourses, "ลากไปฝั่งขวาเพื่อเลือก");
    renderCourseList(selectedCoursesZone, filteredSelectedCourses, "ลากกลับมาฝั่งซ้ายเพื่อลบ");
}

function renderCourseList(container, courses, actionText) {
    if (!courses.length) {
        container.innerHTML = `<div class="drop-zone-empty">ไม่มีรายวิชา</div>`;
        return;
    }

    const list = document.createElement("div");
    list.className = "course-pill-list";

    courses
        .sort((a, b) => {
            if (a.year_level !== b.year_level) return a.year_level - b.year_level;
            if (a.semester !== b.semester) return a.semester - b.semester;
            return a.course_code.localeCompare(b.course_code);
        })
        .forEach(course => {
            const item = document.createElement("div");
            item.className = "course-pill";
            item.draggable = true;
            item.dataset.id = course.id;

            item.innerHTML = `
                <div>
                    <div class="course-pill-code">${course.course_code}</div>
                    <div class="course-pill-name">
                        ${course.course_name_th}
                        <br>
                        <small>ปี ${course.year_level || "-"} / เทอม ${course.semester || "-"}</small>
                    </div>
                </div>
                <div class="course-pill-credit">${course.credits} หน่วยกิต</div>
                <div class="course-pill-action">${actionText}</div>
            `;

            item.addEventListener("dragstart", () => {
                draggedCourseId = parseInt(course.id, 10);
                item.classList.add("dragging");
            });

            item.addEventListener("dragend", () => {
                item.classList.remove("dragging");
            });

            item.addEventListener("dblclick", () => {
                if (selectedCourseIds.includes(course.id)) {
                    removeFromSelected(course.id);
                } else {
                    addToSelected(course.id);
                }
            });

            list.appendChild(item);
        });

    container.innerHTML = "";
    container.appendChild(list);
}

function moveAllToSelected() {
    if (!allCourses.length) return;

    selectedCourseIds = allCourses.map(course => course.id);
    renderDualLists();
    updateSummary();
}

function moveAllToAvailable() {
    selectedCourseIds = [];
    renderDualLists();
    updateSummary();
}

function updateSummary() {
    const earnedCredits = allCourses
        .filter(course => selectedCourseIds.includes(course.id))
        .reduce((sum, course) => sum + course.credits, 0);

    const remainingCredits = Math.max(curriculumTotalCredits - earnedCredits, 0);
    const progressPercent = curriculumTotalCredits > 0
        ? Math.min((earnedCredits / curriculumTotalCredits) * 100, 100)
        : 0;

    earnedCreditsEl.textContent = earnedCredits;
    remainingCreditsEl.textContent = remainingCredits;
    creditProgressFill.style.width = `${progressPercent}%`;
    creditProgressText.textContent = `${progressPercent.toFixed(0)}%`;

    const statusCard = creditStatusEl.closest(".credit-summary-card");

    creditProgressFill.classList.remove("completed");
    if (statusCard) statusCard.classList.remove("completed-card");

    if (curriculumTotalCredits > 0 && earnedCredits >= curriculumTotalCredits) {
        creditStatusEl.textContent = "ครบแล้ว";
        creditStatusEl.style.color = "#1f9d55";

        setTimeout(() => {
            creditProgressFill.classList.add("completed");
            if (statusCard) statusCard.classList.add("completed-card");
        }, 50);

        if (!hasCelebrated) {
            showCelebration();
            hasCelebrated = true;
        }
    } else {
        creditStatusEl.textContent = "ยังไม่ครบ";
        creditStatusEl.style.color = "#e67e22";
        hasCelebrated = false;
    }
}

function resetAll() {
    allCourses = [];
    selectedCourseIds = [];
    curriculumTotalCredits = 0;
    hasCelebrated = false;

    totalCreditsEl.textContent = "0";
    earnedCreditsEl.textContent = "0";
    remainingCreditsEl.textContent = "0";
    creditStatusEl.textContent = "ยังไม่ครบ";
    creditStatusEl.style.color = "#e67e22";
    creditProgressFill.style.width = "0%";
    creditProgressText.textContent = "0%";
}

function showCelebration() {
    if (!celebrationPopup) return;

    celebrationPopup.classList.add("show");

    setTimeout(() => {
        celebrationPopup.classList.remove("show");
    }, 1800);
}