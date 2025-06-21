<?php
// FILE: api/custom-exam/from-lessons.php
// Handles requests from the "Builder (from Lessons)" page.
require_once '../subject/db_connect.php';

$data = json_decode(file_get_contents("php://input"), true);

if (empty($data['new_exam_details']) || empty($data['source_lessons']) || !is_array($data['source_lessons'])) {
    echo json_encode(['success' => false, 'message' => 'Missing required exam details or source lessons.']);
    exit;
}

$new_exam = $data['new_exam_details'];
$source_lessons = $data['source_lessons'];

$conn->begin_transaction();

try {
    $stmt = $conn->prepare("INSERT INTO exams (subject_id, lesson_id, topic_id, exam_title, duration, instructions, total_marks, pass_mark, negative_mark_value) VALUES (?, NULL, NULL, ?, ?, ?, ?, ?, 0.5)");
    $stmt->bind_param("isissd", 
        $new_exam['subject_id'], 
        $new_exam['exam_title'], 
        $new_exam['duration'], 
        $new_exam['instructions'], 
        $new_exam['total_marks'], 
        $new_exam['pass_mark']
    );
    $stmt->execute();
    $new_exam_id = $conn->insert_id;
    if ($new_exam_id == 0) throw new Exception("Failed to create the new exam entry in the database.");
    $stmt->close();

    $insert_q_stmt = $conn->prepare("INSERT INTO questions (subject_id, lesson_id, topic_id, exam_id, question, options, answer, explanation) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $all_fetched_question_ids = [];
    foreach ($source_lessons as $source) {
        $source_lesson_id = intval($source['lesson_id']);
        $question_count = intval($source['question_count']);

        if ($question_count > 0) {
            $fetch_sql = "SELECT id, subject_id, topic_id, question, options, answer, explanation FROM questions WHERE lesson_id = ?";
            $fetch_params = [$source_lesson_id]; $fetch_types = "i";
            if (!empty($all_fetched_question_ids)) {
                $placeholders = str_repeat('?,', count($all_fetched_question_ids) - 1) . '?';
                $fetch_sql .= " AND id NOT IN ($placeholders)";
                foreach ($all_fetched_question_ids as $id) { $fetch_params[] = $id; $fetch_types .= 'i'; }
            }
            $fetch_sql .= " ORDER BY RAND() LIMIT ?";
            $fetch_params[] = $question_count; $fetch_types .= 'i';

            $fetch_q_stmt = $conn->prepare($fetch_sql);
            $fetch_q_stmt->bind_param($fetch_types, ...$fetch_params);
            $fetch_q_stmt->execute();
            $questions_result = $fetch_q_stmt->get_result();
            
            while ($q_row = $questions_result->fetch_assoc()) {
                $all_fetched_question_ids[] = $q_row['id'];
                $insert_q_stmt->bind_param("iiiissss",
                    $new_exam['subject_id'],
                    $source_lesson_id,
                    $q_row['topic_id'],
                    $new_exam_id,
                    $q_row['question'],
                    $q_row['options'],
                    $q_row['answer'],
                    $q_row['explanation']
                );
                $insert_q_stmt->execute();
            }
            $fetch_q_stmt->close();
        }
    }
    $insert_q_stmt->close();

    $conn->commit();
    echo json_encode(['success' => true, 'message' => 'Custom exam from lessons created successfully!']);

} catch (Exception $e) {
    $conn->rollback();
    echo json_encode(['success' => false, 'message' => 'An error occurred during exam creation: ' . $e->getMessage()]);
}

$conn->close();
?>
