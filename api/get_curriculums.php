<?php
header('Content-Type: application/json; charset=utf-8');
require_once 'db.php';

try {
    $stmt = $conn->query("SELECT id, curriculum_name, total_credits FROM curriculums ORDER BY id ASC");
    $curriculums = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        "success" => true,
        "curriculums" => $curriculums
    ], JSON_UNESCAPED_UNICODE);

} catch (PDOException $e) {
    echo json_encode([
        "success" => false,
        "message" => $e->getMessage()
    ], JSON_UNESCAPED_UNICODE);
}
?>