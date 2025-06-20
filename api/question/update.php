<?php
require_once '../subject/db_connect.php';

$data = json_decode(file_get_contents("php://input"), true);

if (empty($data['id'])) {
    echo json_encode(['success' => false, 'message' => 'Question ID is required.']);
    exit;
}

$id = intval($data['id']);
$question_text = $data['question'];
$options_json = json_encode($data['options']);
$answer = $data['answer'];
$explanation = $data['explanation'];

$stmt = $conn->prepare("UPDATE questions SET question = ?, options = ?, answer = ?, explanation = ? WHERE id = ?");
$stmt->bind_param("ssssi", $question_text, $options_json, $answer, $explanation, $id);

if ($stmt->execute()) {
    echo json_encode(['success' => true, 'message' => 'Question updated successfully.']);
} else {
    echo json_encode(['success' => false, 'message' => 'Failed to update question.']);
}

$stmt->close();
$conn->close();
?>
