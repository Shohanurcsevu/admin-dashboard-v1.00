<?php
require_once '../subject/db_connect.php';

$action = isset($_GET['action']) ? $_GET['action'] : 'list';

switch ($action) {
    case 'list': list_exams($conn); break;
    case 'get_single': get_exam($conn); break;
    case 'create': create_exam($conn); break;
    case 'update': update_exam($conn); break;
    case 'delete': delete_exam($conn); break;
    default: echo json_encode(['success' => false, 'message' => 'Invalid action for exams.']); break;
}

function list_exams($conn) {
    // MODIFIED: Changed to LEFT JOINs to include exams with NULL IDs (custom exams)
    $sql = "SELECT e.*, s.subject_name, l.lesson_name, t.topic_name,
                   (SELECT COUNT(*) FROM questions WHERE exam_id = e.id) as total_questions
            FROM exams e
            LEFT JOIN subjects s ON e.subject_id = s.id
            LEFT JOIN lessons l ON e.lesson_id = l.id
            LEFT JOIN topics t ON e.topic_id = t.id";

    $params = [];
    $types = '';
    
    // MODIFIED: Removed the strict base condition to allow all exams to be shown by default.
    $where_clauses = [];

    // Add filtering logic from the UI. This will still work as expected.
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

    // Combine all conditions if any exist
    if (!empty($where_clauses)) {
        $sql .= " WHERE " . implode(' AND ', $where_clauses);
    }
    
    $sql .= " ORDER BY e.id ASC";
    
    $stmt = $conn->prepare($sql);
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
}

function get_exam($conn) {
    $id = isset($_GET['id']) ? intval($_GET['id']) : 0;
    // MODIFIED: Use LEFT JOIN here as well to fetch details for custom exams
    $stmt = $conn->prepare("SELECT e.*, s.subject_name, l.lesson_name, t.topic_name 
                            FROM exams e
                            LEFT JOIN subjects s ON e.subject_id = s.id
                            LEFT JOIN lessons l ON e.lesson_id = l.id
                            LEFT JOIN topics t ON e.topic_id = t.id
                            WHERE e.id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    echo json_encode(['success' => true, 'data' => $result->fetch_assoc()]);
    $stmt->close();
}

function create_exam($conn) {
    $data = json_decode(file_get_contents('php://input'), true);
    $stmt = $conn->prepare("INSERT INTO exams (subject_id, lesson_id, topic_id, exam_title, duration, instructions, total_marks, pass_mark, negative_mark_value) VALUES (?, ?, ?, ?, ?, ?, ?, ?, 0.5)");
    $stmt->bind_param("iiisissd", $data['subject_id'], $data['lesson_id'], $data['topic_id'], $data['exam_title'], $data['duration'], $data['instructions'], $data['total_marks'], $data['pass_mark']);
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Exam created successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to create exam.']);
    }
    $stmt->close();
}

function update_exam($conn) {
    $data = json_decode(file_get_contents('php://input'), true);
    $stmt = $conn->prepare("UPDATE exams SET subject_id = ?, lesson_id = ?, topic_id = ?, exam_title = ?, duration = ?, instructions = ?, total_marks = ?, pass_mark = ? WHERE id = ?");
    $stmt->bind_param("iiisissdi", $data['subject_id'], $data['lesson_id'], $data['topic_id'], $data['exam_title'], $data['duration'], $data['instructions'], $data['total_marks'], $data['pass_mark'], $data['id']);
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Exam updated successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to update exam.']);
    }
    $stmt->close();
}

function delete_exam($conn) {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = intval($data['id']);
    $stmt = $conn->prepare("DELETE FROM exams WHERE id = ?");
    $stmt->bind_param("i", $id);
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Exam deleted successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to delete exam.']);
    }
    $stmt->close();
}

$conn->close();
?>
