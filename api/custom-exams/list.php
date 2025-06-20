<?php
require_once '../subject/db_connect.php';

// This query fetches exams that are considered "custom" because they are not
// linked to a specific topic (topic_id is NULL).
// It uses LEFT JOINs to gracefully handle cases where subject or lesson might also be null.
$sql = "SELECT 
            e.id, 
            e.exam_title, 
            e.duration, 
            e.total_marks,
            s.subject_name, 
            l.lesson_name, 
            (SELECT COUNT(*) FROM questions WHERE exam_id = e.id) as total_questions
        FROM exams e
        LEFT JOIN subjects s ON e.subject_id = s.id
        LEFT JOIN lessons l ON e.lesson_id = l.id
        WHERE e.topic_id IS NULL
        ORDER BY e.id DESC";

$result = $conn->query($sql);
$exams = [];
if ($result) {
    while ($row = $result->fetch_assoc()) {
        $exams[] = $row;
    }
} else {
    // Handle potential query errors
    // You can log the error: error_log($conn->error);
}

echo json_encode(['success' => true, 'data' => $exams]);
$conn->close();
?>
