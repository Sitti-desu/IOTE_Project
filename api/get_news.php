<?php
header('Content-Type: application/json; charset=utf-8');

include 'db.php';

try {

    $sql = "SELECT id, title, description, image, category, link, created_at 
            FROM news 
            ORDER BY created_at DESC 
            LIMIT 3";

    $stmt = $conn->query($sql);

    $news = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($news, JSON_UNESCAPED_UNICODE);

} catch(PDOException $e) {

    echo json_encode([
        "status" => "error",
        "message" => $e->getMessage()
    ]);
}

$conn = null;
?>