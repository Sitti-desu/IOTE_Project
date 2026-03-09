<?php
include 'db.php';
header('Content-Type: application/json; charset=utf-8');

try {
    if (isset($_GET['id']) && $_GET['id'] !== '') {
        $id = intval($_GET['id']);

        $stmt = $conn->prepare("SELECT * FROM projects WHERE id = ?");
        $stmt->execute([$id]);

        $project = $stmt->fetch(PDO::FETCH_ASSOC);

        echo json_encode($project ?: [], JSON_UNESCAPED_UNICODE);
    } else {
        $stmt = $conn->query("SELECT * FROM projects ORDER BY created_at DESC, id DESC");
        $projects = $stmt->fetchAll(PDO::FETCH_ASSOC);

        echo json_encode($projects, JSON_UNESCAPED_UNICODE);
    }
} catch (PDOException $e) {
    echo json_encode([
        "error" => $e->getMessage()
    ], JSON_UNESCAPED_UNICODE);
}
?>