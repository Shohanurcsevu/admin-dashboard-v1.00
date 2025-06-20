<?php
require_once '../subject/db_connect.php';

$action = isset($_GET['action']) ? $_GET['action'] : 'list';

switch ($action) {
    case 'list':
        list_lessons($conn);
        break;
    case 'create':
        create_lesson($conn);
        break;
    case 'get_single':
        get_lesson($conn);
        break;
    case 'update':
        update_lesson($conn);
        break;
    case 'delete':
        delete_lesson($conn);
        break;
    default:
        echo json_encode(['success' => false, 'message' => 'Invalid action for lessons.']);
        break;
}

function list_lessons($conn) {
    $subject_id = isset($_GET['subject_id']) ? intval($_GET['subject_id']) : 0;

    // --- MODIFIED: Added LEFT JOIN and COUNT to get created_topics ---
    $sql = "SELECT l.*, s.subject_name, COUNT(t.id) as created_topics 
            FROM lessons l 
            JOIN subjects s ON l.subject_id = s.id
            LEFT JOIN topics t ON l.id = t.lesson_id";
    
    $params = [];
    $types = '';

    if ($subject_id > 0) {
        $sql .= " WHERE l.subject_id = ?";
        $params[] = $subject_id;
        $types .= 'i';
    }

    $sql .= " GROUP BY l.id ORDER BY l.id ASC";
    
    $stmt = $conn->prepare($sql);
    if (!empty($params)) {
        $stmt->bind_param($types, ...$params);
    }
    
    $stmt->execute();
    $result = $stmt->get_result();
    $lessons = [];
    while ($row = $result->fetch_assoc()) {
        $lessons[] = $row;
    }
    
    echo json_encode(['success' => true, 'data' => $lessons]);
    $stmt->close();
}

function get_lesson($conn) {
    $id = isset($_GET['id']) ? intval($_GET['id']) : 0;
    $stmt = $conn->prepare("SELECT * FROM lessons WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $lesson = $result->fetch_assoc();
    echo json_encode(['success' => true, 'data' => $lesson]);
    $stmt->close();
}

function create_lesson($conn) {
    $data = json_decode(file_get_contents('php://input'), true);
    $stmt = $conn->prepare("INSERT INTO lessons (subject_id, lesson_name, expected_topics, start_page, end_page, py_bcs_ques) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("isiiii", $data['subject_id'], $data['lesson_name'], $data['expected_topics'], $data['start_page'], $data['end_page'], $data['py_bcs_ques']);
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Lesson created successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to create lesson.']);
    }
    $stmt->close();
}

function update_lesson($conn) {
    $data = json_decode(file_get_contents('php://input'), true);
    $stmt = $conn->prepare("UPDATE lessons SET subject_id = ?, lesson_name = ?, expected_topics = ?, start_page = ?, end_page = ?, py_bcs_ques = ? WHERE id = ?");
    $stmt->bind_param("isiiiii", $data['subject_id'], $data['lesson_name'], $data['expected_topics'], $data['start_page'], $data['end_page'], $data['py_bcs_ques'], $data['id']);
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Lesson updated successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to update lesson.']);
    }
    $stmt->close();
}

function delete_lesson($conn) {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = intval($data['id']);
    $stmt = $conn->prepare("DELETE FROM lessons WHERE id = ?");
    $stmt->bind_param("i", $id);
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Lesson deleted successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to delete lesson.']);
    }
    $stmt->close();
}

$conn->close();
?>
