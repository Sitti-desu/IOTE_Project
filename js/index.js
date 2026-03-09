console.log("index.js loaded");
let indexSlide = 0;

const indexSlides = document.querySelectorAll(".index-slide");
const indexDots = document.querySelectorAll(".index-dot");

function showIndexSlide(n) {
    if (!indexSlides.length) return;

    if (n >= indexSlides.length) {
        indexSlide = 0;
    } else if (n < 0) {
        indexSlide = indexSlides.length - 1;
    } else {
        indexSlide = n;
    }

    indexSlides.forEach((slide, i) => {
        slide.classList.toggle("active", i === indexSlide);
    });

    indexDots.forEach((dot, i) => {
        dot.classList.toggle("active", i === indexSlide);
    });
}

function changeIndexSlide(n) {
    showIndexSlide(indexSlide + n);
}

function goIndexSlide(n) {
    showIndexSlide(n);
}

if (indexSlides.length) {
    showIndexSlide(0);

    setInterval(() => {
        showIndexSlide(indexSlide + 1);
    }, 5000);
}

async function loadFacultyPreview() {
    const facultyGrid = document.getElementById("facultyPreviewGrid");
    if (!facultyGrid) return;

    try {
        const response = await fetch("api/get_faculty.php");
        const result = await response.json();
        const data = result.data;

        if (!Array.isArray(data) || data.length === 0) {
            facultyGrid.innerHTML = `<div class="faculty-preview-empty">No faculty data available.</div>`;
            return;
        }

        const previewFaculty = data.slice(0, 5);

        facultyGrid.innerHTML = previewFaculty.map((faculty) => {
            const image = faculty.image_path ? faculty.image_path.replace(/\\/g, "/") : "images/aj1.png";
            const name = faculty.fullName || "Faculty Member";
            const position = faculty.position || "Instructor";
            const description = faculty.department || "IoT Department";

            return `
                <div class="faculty-preview-card">
                    <img src="${image}" alt="${name}" class="faculty-preview-image">
                    <div class="faculty-preview-content">
                        <h3>${name}</h3>
                        <div class="faculty-preview-position">${position}</div>
                        <p>${description}</p>
                    </div>
                </div>
            `;
        }).join("");

    } catch (error) {
        facultyGrid.innerHTML = `<div class="faculty-preview-empty">Unable to load faculty data.</div>`;
        console.error("Faculty preview error:", error);
    }
}

async function loadNewsPreview() {
    const newsGrid = document.getElementById("newsPreviewGrid");
    if (!newsGrid) return;

    try {
        const response = await fetch("api/get_news.php");
        const data = await response.json();

        if (!Array.isArray(data) || data.length === 0) {
            newsGrid.innerHTML = `<div class="news-preview-empty">No news available.</div>`;
            return;
        }

        newsGrid.innerHTML = data.map((item) => {
            const image = item.image ? item.image.replace(/\\/g, "/") : "images/aj1.png";
            const title = item.title || "Untitled News";
            const description = item.description || "";
            const category = item.category || "News";
            const link = item.link || "#";

            return `
                <article class="news-preview-card">
                    <img src="${image}" alt="${title}" class="news-preview-image">
                    <div class="news-preview-content">
                        <span class="news-preview-category">${category}</span>
                        <h3>${title}</h3>
                        <p>${description}</p>
                        <a href="${link}" class="news-preview-link">Read More →</a>
                    </div>
                </article>
            `;
        }).join("");

    } catch (error) {
        newsGrid.innerHTML = `<div class="news-preview-empty">Unable to load news.</div>`;
        console.error("News preview error:", error);
    }
}

async function loadProjectsPreview() {
    const projectsGrid = document.getElementById("projectsLabGrid");
    if (!projectsGrid) return;

    try {
        const response = await fetch("api/get_projects.php");
        const data = await response.json();

        if (!Array.isArray(data) || data.length === 0) {
            projectsGrid.innerHTML = `<div class="projects-lab-empty">No projects available.</div>`;
            return;
        }

        const previewProjects = data.slice(0, 3);

        projectsGrid.innerHTML = previewProjects.map((item) => {
            const image = item.image ? item.image.replace(/\\/g, "/") : "images/aj1.png";
            const title = item.title || "Project";
            const description = item.description || "";

            return `
                <div class="projects-lab-card">
                    <img src="${image}" alt="${title}">
                    <div class="projects-lab-content">
                        <h3>${title}</h3>
                        <p>${description}</p>
                    </div>
                </div>
            `;
        }).join("");

    } catch (error) {
        projectsGrid.innerHTML = `<div class="projects-lab-empty">Unable to load projects.</div>`;
        console.error("Projects preview error:", error);
    }
}

loadFacultyPreview();
loadNewsPreview();
loadProjectsPreview();