<?php
require_once '../subject/db_connect.php';

$sql = "
    SELECT 
        s.id AS subject_id, 
        s.subject_name,
        l.id AS lesson_id,
        l.lesson_name,
        l.py_bcs_ques,
        COUNT(q.id) AS total_questions
    FROM 
        subjects s
    LEFT JOIN 
        lessons l ON s.id = l.subject_id
    LEFT JOIN 
        questions q ON l.id = q.lesson_id
    GROUP BY 
        s.id, l.id
    ORDER BY 
        s.subject_name, l.lesson_name;
";

$result = $conn->query($sql);
$subjects = [];

if ($result) {
    while ($row = $result->fetch_assoc()) {
        if (!isset($subjects[$row['subject_id']])) {
            $subjects[$row['subject_id']] = [
                'subject_id' => $row['subject_id'],
                'subject_name' => $row['subject_name'],
                'lessons' => []
            ];
        }
        if ($row['lesson_id']) {
             $subjects[$row['subject_id']]['lessons'][] = [
                'lesson_id' => $row['lesson_id'],
                'lesson_name' => $row['lesson_name'],
                'py_bcs_ques' => $row['py_bcs_ques'],
                'total_questions' => $row['total_questions']
            ];
        }
    }
}

echo json_encode(['success' => true, 'data' => array_values($subjects)]);
$conn->close();
?>
