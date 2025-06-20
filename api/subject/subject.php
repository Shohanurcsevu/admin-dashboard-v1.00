<?php
require_once 'db_connect.php';

// Get the action from the request, default to 'list'
$action = isset($_GET['action']) ? $_GET['action'] : 'list';

switch ($action) {
    case 'list':
        list_subjects($conn);
        break;
    case 'get_single':
        get_subject($conn);
        break;
    case 'create':
        create_subject($conn);
        break;
    case 'update':
        update_subject($conn);
        break;
    case 'delete':
        delete_subject($conn);
        break;
    default:
        echo json_encode(['success' => false, 'message' => 'Invalid action.']);
        break;
}

// Function to get all subjects with a count of their lessons
function list_subjects($conn) {
    // --- MODIFIED: Added LEFT JOIN and COUNT to get created_lessons ---
    $sql = "SELECT s.*, COUNT(l.id) AS created_lessons
            FROM subjects s
            LEFT JOIN lessons l ON s.id = l.subject_id
            GROUP BY s.id
            ORDER BY s.id ASC";
    
    $result = $conn->query($sql);
    $subjects = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $subjects[] = $row;
        }
    }
    echo json_encode(['success' => true, 'data' => $subjects]);
}

// Function to get a single subject by ID
function get_subject($conn) {
    if (!isset($_GET['id'])) {
        echo json_encode(['success' => false, 'message' => 'Subject ID not provided.']);
        return;
    }
    $id = intval($_GET['id']);
    $stmt = $conn->prepare("SELECT * FROM subjects WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0) {
        echo json_encode(['success' => true, 'data' => $result->fetch_assoc()]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Subject not found.']);
    }
    $stmt->close();
}


// Function to create a new subject
function create_subject($conn) {
    $data = json_decode(file_get_contents('php://input'), true);
    
    $stmt = $conn->prepare("INSERT INTO subjects (subject_name, book_name, total_lessons, total_pages, start_date, end_date, category) VALUES (?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssiisss", $data['subject_name'], $data['book_name'], $data['total_lessons'], $data['total_pages'], $data['start_date'], $data['end_date'], $data['category']);
    
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Subject created successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Error: ' . $stmt->error]);
    }
    $stmt->close();
}

// Function to update an existing subject
function update_subject($conn) {
    $data = json_decode(file_get_contents('php://input'), true);
    
    $stmt = $conn->prepare("UPDATE subjects SET subject_name = ?, book_name = ?, total_lessons = ?, total_pages = ?, start_date = ?, end_date = ?, category = ? WHERE id = ?");
    $stmt->bind_param("ssiisssi", $data['subject_name'], $data['book_name'], $data['total_lessons'], $data['total_pages'], $data['start_date'], $data['end_date'], $data['category'], $data['id']);
    
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Subject updated successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Error: ' . $stmt->error]);
    }
    $stmt->close();
}

// Function to delete a subject
function delete_subject($conn) {
    $data = json_decode(file_get_contents('php://input'), true);

    if (!isset($data['id'])) {
        echo json_encode(['success' => false, 'message' => 'Subject ID not provided.']);
        return;
    }

    $id = intval($data['id']);
    $stmt = $conn->prepare("DELETE FROM subjects WHERE id = ?");
    $stmt->bind_param("i", $id);
    
    if ($stmt->execute()) {
        if ($stmt->affected_rows > 0) {
            echo json_encode(['success' => true, 'message' => 'Subject deleted successfully.']);
        } else {
            echo json_encode(['success' => false, 'message' => 'Subject not found or already deleted.']);
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Error: ' . $stmt->error]);
    }
    $stmt->close();
}

$conn->close();
?>
