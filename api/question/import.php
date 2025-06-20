<?php
require_once '../subject/db_connect.php';

$data = json_decode(file_get_contents("php://input"), true);

if (empty($data['exam_id']) || empty($data['questions']) || !is_array($data['questions'])) {
    echo json_encode(['success' => false, 'message' => 'Exam ID and questions array are required.']);
    exit;
}

$exam_id = intval($data['exam_id']);
$questions = $data['questions'];

// First, get subject_id, lesson_id, topic_id from the exam
$exam_stmt = $conn->prepare("SELECT subject_id, lesson_id, topic_id FROM exams WHERE id = ?");
$exam_stmt->bind_param("i", $exam_id);
$exam_stmt->execute();
$exam_result = $exam_stmt->get_result();
if ($exam_result->num_rows === 0) {
    echo json_encode(['success' => false, 'message' => 'Exam not found.']);
    exit;
}
$exam_details = $exam_result->fetch_assoc();
$exam_stmt->close();

$subject_id = $exam_details['subject_id'];
$lesson_id = $exam_details['lesson_id'];
$topic_id = $exam_details['topic_id'];

// Prepare statement for inserting questions
$stmt = $conn->prepare("INSERT INTO questions (subject_id, lesson_id, topic_id, exam_id, question, options, answer, explanation) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

$conn->begin_transaction();
$success = true;
$error_message = '';

// --- MODIFIED: Added validation inside the loop ---
foreach ($questions as $index => $q) {
    // Validate required fields for each question
    if (empty($q['question']) || empty($q['options']) || !is_array($q['options']) || empty($q['answer'])) {
        $success = false;
        $error_message = "Import failed: Question #" . ($index + 1) . " is missing a required field (question, options, or answer).";
        break; // Exit loop on first error
    }

    $options_json = json_encode($q['options']);
    // Ensure explanation exists, default to empty string if not
    $explanation = isset($q['explanation']) ? $q['explanation'] : '';

    $stmt->bind_param("iiiissss", $subject_id, $lesson_id, $topic_id, $exam_id, $q['question'], $options_json, $q['answer'], $explanation);
    
    if (!$stmt->execute()) {
        $success = false;
        $error_message = "Database error on question #" . ($index + 1) . ": " . $stmt->error;
        break; 
    }
}

if ($success) {
    $conn->commit();
    echo json_encode(['success' => true, 'message' => 'Questions imported successfully.']);
} else {
    $conn->rollback();
    echo json_encode(['success' => false, 'message' => $error_message]);
}

$stmt->close();
$conn->close();
?>
