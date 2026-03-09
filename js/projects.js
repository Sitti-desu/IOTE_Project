async function loadAllProjects() {
    const projectsGrid = document.getElementById("allProjectsGrid");
    if (!projectsGrid) return;

    try {
        const response = await fetch("api/get_projects.php");
        const text = await response.text();
        console.log("projects api raw:", text);

        const data = JSON.parse(text);

        if (!Array.isArray(data) || data.length === 0) {
            projectsGrid.innerHTML = `<div class="projects-lab-empty">No projects available.</div>`;
            return;
        }

        projectsGrid.innerHTML = data.map((item) => {
            const id = item.id || "";
            const image = item.image ? item.image.replace(/\\/g, "/") : "images/aj1.png";
            const title = item.title || "Project";
            const description = item.description || "";
            const category = item.category || "Project";

            return `
                <div class="projects-lab-card">
                    <img src="${image}" alt="${title}">
                    <div class="projects-lab-content">
                        <div class="news-preview-category">${category}</div>
                        <h3>${title}</h3>
                        <p>${description}</p>
                        <a href="project-detail.html?id=${id}" class="projects-lab-readmore">Read More →</a>
                    </div>
                </div>
            `;
        }).join("");

    } catch (error) {
        console.error("All projects error:", error);
        projectsGrid.innerHTML = `<div class="projects-lab-empty">Unable to load projects.</div>`;
    }
}

document.addEventListener("DOMContentLoaded", loadAllProjects);