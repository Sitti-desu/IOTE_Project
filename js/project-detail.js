async function loadProjectDetail() {
    const container = document.getElementById("projectDetailContainer");
    if (!container) return;

    const params = new URLSearchParams(window.location.search);
    const id = params.get("id");

    if (!id) {
        container.innerHTML = `<div class="project-detail-error">Project ID is missing.</div>`;
        return;
    }

    try {
        const response = await fetch(`api/get_projects.php?id=${encodeURIComponent(id)}`);
        const data = await response.json();

        if (!data || !data.id) {
            container.innerHTML = `<div class="project-detail-error">Project not found.</div>`;
            return;
        }

        const image = data.image ? data.image.replace(/\\/g, "/") : "images/aj1.png";
        const title = data.title || "Untitled Project";
        const description = data.description || "No description available.";
        const category = data.category || "Project";
        const createdAt = data.created_at || data.date || "";

        container.innerHTML = `
            <article class="project-detail-card">
                <img src="${image}" alt="${title}" class="project-detail-image">

                <div class="project-detail-body">
                    <div class="project-detail-category">${category}</div>

                    <h1 class="project-detail-title">${title}</h1>

                    <div class="project-detail-date">
                        <i class="far fa-calendar-alt"></i> ${createdAt}
                    </div>

                    <div class="project-detail-content">${description}</div>

                    <div class="project-detail-back-wrapper">
                        <a href="javascript:history.back()" class="project-detail-back-btn">
                            ← Back to Projects
                        </a>
                    </div>
                </div>
            </article>
        `;
    } catch (error) {
        console.error("Project detail error:", error);
        container.innerHTML = `<div class="project-detail-error">Unable to load project detail.</div>`;
    }
}

document.addEventListener("DOMContentLoaded", loadProjectDetail);