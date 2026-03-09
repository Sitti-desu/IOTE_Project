<?php
header('Content-Type: application/json; charset=utf-8');
include 'db.php';

try {
    $sql = "SELECT id, title, description, image, category, link, created_at
            FROM projects
            ORDER BY created_at DESC";
    $stmt = $conn->query($sql);
    $projects = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($projects, JSON_UNESCAPED_UNICODE);
} catch(PDOException $e) {
    echo json_encode([
        "status" => "error",
        "message" => $e->getMessage()
    ], JSON_UNESCAPED_UNICODE);
}

$conn = null;
?>