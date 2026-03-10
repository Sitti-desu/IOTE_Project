<?php
header('Content-Type: application/json; charset=utf-8');
require_once 'db.php';

try {
    if (!isset($_GET['curriculum_id']) || $_GET['curriculum_id'] === '') {
        echo json_encode([
            "success" => false,
            "message" => "ไม่พบ curriculum_id"
        ], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $curriculumId = (int) $_GET['curriculum_id'];

    $stmt = $conn->prepare("
        SELECT 
            id,
            curriculum_id,
            course_code,
            course_name_th,
            course_name_en,
            credits,
            year_level,
            semester,
            course_type,
            course_group
        FROM courses
        WHERE curriculum_id = ?
        ORDER BY year_level ASC, semester ASC, course_code ASC
    ");
    $stmt->execute([$curriculumId]);
    $courses = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        "success" => true,
        "courses" => $courses
    ], JSON_UNESCAPED_UNICODE);

} catch (PDOException $e) {
    echo json_encode([
        "success" => false,
        "message" => $e->getMessage()
    ], JSON_UNESCAPED_UNICODE);
}
?>