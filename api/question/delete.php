<?php
require_once '../subject/db_connect.php';

$data = json_decode(file_get_contents("php://input"), true);

if (empty($data['id'])) {
    echo json_encode(['success' => false, 'message' => 'Question ID is required.']);
    exit;
}

$id = intval($data['id']);

$stmt = $conn->prepare("DELETE FROM questions WHERE id = ?");
$stmt->bind_param("i", $id);

if ($stmt->execute()) {
    echo json_encode(['success' => true, 'message' => 'Question deleted successfully.']);
} else {
    echo json_encode(['success' => false, 'message' => 'Failed to delete question.']);
}

$stmt->close();
$conn->close();
?>
