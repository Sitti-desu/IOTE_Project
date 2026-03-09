async function loadAllProjects() {
    const projectsGrid = document.getElementById("allProjectsGrid");
    if (!projectsGrid) return;

    try {
        const response = await fetch("api/get_projects.php");
        const data = await response.json();

        if (!Array.isArray(data) || data.length === 0) {
            projectsGrid.innerHTML = `<div class="projects-lab-empty">No projects available.</div>`;
            return;
        }

        projectsGrid.innerHTML = data.map((item) => {
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
                    </div>
                </div>
            `;
        }).join("");

    } catch (error) {
        projectsGrid.innerHTML = `<div class="projects-lab-empty">Unable to load projects.</div>`;
        console.error("All projects error:", error);
    }
}

document.addEventListener("DOMContentLoaded", () => {
    loadAllProjects();
});