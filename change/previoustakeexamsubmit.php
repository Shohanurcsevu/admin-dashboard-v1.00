<?php
require_once '../subject/db_connect.php';

$data = json_decode(file_get_contents("php://input"), true);

if (empty($data['exam_id']) || !isset($data['performance'])) {
    echo json_encode(['success' => false, 'message' => 'Required data missing.']);
    exit;
}

$exam_id = intval($data['exam_id']);
$performance = $data['performance'];

// Get exam details to verify IDs
$exam_stmt = $conn->prepare("SELECT subject_id, lesson_id, topic_id FROM exams WHERE id = ?");
$exam_stmt->bind_param("i", $exam_id);
$exam_stmt->execute();
$exam_details = $exam_stmt->get_result()->fetch_assoc();
$exam_stmt->close();

if (!$exam_details) {
    echo json_encode(['success' => false, 'message' => 'Invalid Exam ID.']);
    exit;
}

// Get the latest attempt number and increment it
$attempt_stmt = $conn->prepare("SELECT MAX(attempt_number) as max_attempt FROM performance WHERE exam_id = ?");
$attempt_stmt->bind_param("i", $exam_id);
$attempt_stmt->execute();
$last_attempt = $attempt_stmt->get_result()->fetch_assoc()['max_attempt'];
$new_attempt_number = $last_attempt ? $last_attempt + 1 : 1;
$attempt_stmt->close();

$subject_id = $exam_details['subject_id'];
$lesson_id = $exam_details['lesson_id'];
$topic_id = $exam_details['topic_id'] ? intval($exam_details['topic_id']) : NULL;
$selected_answers_json = json_encode($performance['selected_answers']);
$score = $performance['score'];
$score_with_negative = $performance['score_with_negative'];
$right_answers = $performance['right_answers'];
$wrong_answers = $performance['wrong_answers'];
$unanswered = $performance['unanswered'];
$time_used_seconds = $performance['time_used_seconds'];
$time_left_seconds = $performance['time_left_seconds'];

$stmt = $conn->prepare("INSERT INTO performance (subject_id, lesson_id, topic_id, exam_id, attempt_number, selected_answers, score, score_with_negative, right_answers, wrong_answers, unanswered, time_used_seconds, time_left_seconds) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

$stmt->bind_param("iiiiisddiiiii", 
    $subject_id, 
    $lesson_id, 
    $topic_id,
    $exam_id, 
    $new_attempt_number,
    $selected_answers_json,
    $score,
    $score_with_negative,
    $right_answers,
    $wrong_answers,
    $unanswered,
    $time_used_seconds,
    $time_left_seconds
);

if ($stmt->execute()) {
    // --- MODIFIED: Return the new performance record's ID ---
    $new_attempt_id = $conn->insert_id;
    $performance['attempt_id'] = $new_attempt_id; // Add the new ID to the performance data
    $performance['attempt_number'] = $new_attempt_number;
    $performance['attempt_time'] = date('Y-m-d H:i:s');
    
    echo json_encode([
        'success' => true, 
        'message' => 'Exam submitted successfully.',
        'data' => $performance
    ]);
} else {
    echo json_encode(['success' => false, 'message' => 'Failed to submit exam results: ' . $stmt->error]);
}

$stmt->close();
$conn->close();
?>
