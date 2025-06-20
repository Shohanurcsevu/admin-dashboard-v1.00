<?php
require_once 'subject/db_connect.php'; // Re-use the existing db connection

// The main SQL query to fetch exams with all related details and question count
$sql = "SELECT 
            e.id, 
            e.exam_title, 
            e.duration, 
            e.total_marks,
            s.subject_name, 
            l.lesson_name, 
            t.topic_name,
            (SELECT COUNT(*) FROM questions WHERE exam_id = e.id) as total_questions
        FROM exams e
        JOIN subjects s ON e.subject_id = s.id
        JOIN lessons l ON e.lesson_id = l.id
        JOIN topics t ON e.topic_id = t.id";

$params = [];
$types = '';
$where_clauses = [];

// Dynamically add WHERE clauses based on provided filters
if (!empty($_GET['subject_id'])) {
    $where_clauses[] = "e.subject_id = ?";
    $params[] = intval($_GET['subject_id']);
    $types .= 'i';
}
if (!empty($_GET['lesson_id'])) {
    $where_clauses[] = "e.lesson_id = ?";
    $params[] = intval($_GET['lesson_id']);
    $types .= 'i';
}
if (!empty($_GET['topic_id'])) {
    $where_clauses[] = "e.topic_id = ?";
    $params[] = intval($_GET['topic_id']);
    $types .= 'i';
}

if (!empty($where_clauses)) {
    $sql .= " WHERE " . implode(' AND ', $where_clauses);
}

$sql .= " ORDER BY e.id DESC";

$stmt = $conn->prepare($sql);

// Bind parameters if any exist
if (!empty($params)) {
    $stmt->bind_param($types, ...$params);
}

$stmt->execute();
$result = $stmt->get_result();
$exams = [];
while ($row = $result->fetch_assoc()) {
    $exams[] = $row;
}

echo json_encode(['success' => true, 'data' => $exams]);
$stmt->close();
$conn->close();
?>
