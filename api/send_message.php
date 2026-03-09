<?php
// ตั้งค่าให้รับส่งข้อมูลเป็น JSON และอนุญาตให้ส่งแบบ POST
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");

require 'db.php'; // ดึงไฟล์เชื่อมต่อฐานข้อมูล PDO ของคุณมาใช้เลย!

// รับค่า JSON ที่ส่งมาจากหน้าบ้าน (JavaScript)
$data = json_decode(file_get_contents("php://input"));

// เช็คว่าส่งข้อมูลมาครบไหม
if (!empty($data->faculty_id) && !empty($data->sender_name) && !empty($data->sender_email) && !empty($data->message)) {
    try {
        // เตรียมคำสั่ง SQL บันทึกข้อมูล
        $stmt = $conn->prepare("INSERT INTO faculty_messages (faculty_id, sender_name, sender_email, message) VALUES (:faculty_id, :sender_name, :sender_email, :message)");
        
        // ผูกค่าตัวแปรป้องกันการโดนแฮก (SQL Injection) แบบเดียวกับที่คุณทำเป๊ะ!
        $stmt->bindParam(':faculty_id', $data->faculty_id);
        $stmt->bindParam(':sender_name', $data->sender_name);
        $stmt->bindParam(':sender_email', $data->sender_email);
        $stmt->bindParam(':message', $data->message);

        if ($stmt->execute()) {
            echo json_encode(["status" => "success", "message" => "ส่งข้อความสำเร็จ! ระบบบันทึกข้อมูลแล้ว"]);
        } else {
            echo json_encode(["status" => "error", "message" => "ไม่สามารถบันทึกข้อมูลได้"]);
        }
    } catch(PDOException $e) {
        // ดักจับ Error เผื่อตารางพังหรือฐานข้อมูลมีปัญหา
        echo json_encode(["status" => "error", "message" => "เกิดข้อผิดพลาด: " . $e->getMessage()]);
    }
} else {
    // ถ้ากรอกข้อมูลไม่ครบ
    echo json_encode(["status" => "error", "message" => "กรุณากรอกข้อมูลให้ครบทุกช่อง"]);
}
?>