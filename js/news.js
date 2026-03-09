async function loadAllNews() {
    const newsGrid = document.getElementById("allNewsGrid");
    if (!newsGrid) return;

    try {
        const response = await fetch("api/get_news.php");
        const data = await response.json();

        if (!Array.isArray(data) || data.length === 0) {
            newsGrid.innerHTML = `<div class="news-preview-empty">No news available.</div>`;
            return;
        }

        newsGrid.innerHTML = data.map((item) => {
            const id = item.id || "";
            const image = item.image ? item.image.replace(/\\/g, "/") : "images/aj1.png";
            const title = item.title || "Untitled News";
            const description = item.description || "";
            const category = item.category || "News";

            return `
                <article class="news-preview-card">
                    <img src="${image}" alt="${title}" class="news-preview-image">
                    <div class="news-preview-content">
                        <span class="news-preview-category">${category}</span>
                        <h3>${title}</h3>
                        <p>${description}</p>
                        <a href="news-detail.html?id=${id}" class="news-preview-link">Read More →</a>
                    </div>
                </article>
            `;
        }).join("");

    } catch (error) {
        newsGrid.innerHTML = `<div class="news-preview-empty">Unable to load news.</div>`;
        console.error("All news error:", error);
    }
}

document.addEventListener("DOMContentLoaded", loadAllNews);