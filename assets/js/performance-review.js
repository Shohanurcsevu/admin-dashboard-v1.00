function initializePerformanceReviewPage() {
    const API_URL = 'api/performance/attempt-details.php';
    const params = new URLSearchParams(window.location.search);
    const attemptId = params.get('attempt_id');

    const bengaliNumbers = ['০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯'];
    const toBengali = (num) => num.toString().split('').map(digit => bengaliNumbers[digit]).join('');
    const optionLabels = { 'A': 'ক', 'B': 'খ', 'C': 'গ', 'D': 'ঘ' };

    function renderReview(data) {
        const { performance, exam, questions } = data;
        
        // Populate Header
        document.getElementById('review-exam-title').textContent = exam.exam_title;
        document.getElementById('review-breadcrumb').textContent = `${exam.subject_name || 'N/A'} > ${exam.lesson_name || 'N/A'} > ${exam.topic_name || 'N/A'}`.replace(/ > N\/A/g, '');
        
        // Populate Summary Cards
        document.getElementById('review-final-score').textContent = parseFloat(performance.score_with_negative).toFixed(2);
        document.getElementById('review-correct').textContent = performance.right_answers;
        document.getElementById('review-wrong').textContent = performance.wrong_answers;
        document.getElementById('review-unanswered').textContent = performance.unanswered;
        document.getElementById('review-time-used').textContent = new Date(performance.time_used_seconds * 1000).toISOString().substr(14, 5);

        // Populate Questions
        const container = document.getElementById('review-questions-container');
        container.innerHTML = '';
        const userAnswers = JSON.parse(performance.selected_answers);

        questions.forEach((q, index) => {
            const userAnswer = userAnswers[q.id] || null;
            const isCorrect = userAnswer === q.answer;
            const isWrong = userAnswer !== null && !isCorrect;
            const correctOptionKey = q.answer;

            // --- NEW: Logic to create the status badge ---
            let statusBadgeHTML = '';
            if (isCorrect) {
                statusBadgeHTML = `<div class="flex items-center text-xs font-bold text-green-800 bg-green-100 px-3 py-1 rounded-full">
                                       <span class="material-symbols-outlined text-base mr-1">check_circle</span> Correct Answer
                                   </div>`;
            } else if (isWrong) {
                statusBadgeHTML = `<div class="flex items-center text-xs font-bold text-red-800 bg-red-100 px-3 py-1 rounded-full">
                                       <span class="material-symbols-outlined text-base mr-1">cancel</span> Wrong Answer
                                   </div>`;
            } else {
                statusBadgeHTML = `<div class="flex items-center text-xs font-bold text-gray-700 bg-gray-200 px-3 py-1 rounded-full">
                                       <span class="material-symbols-outlined text-base mr-1">help</span> Unanswered
                                   </div>`;
            }

            let questionCardHTML = `
                <div class="border rounded-lg p-4 bg-gray-50">
                    <div class="flex justify-between items-start mb-4">
                        <p class="text-gray-800 font-semibold pr-4">${toBengali(index + 1)}. ${q.question}</p>
                        <div class="flex-shrink-0">
                            ${statusBadgeHTML}
                        </div>
                    </div>
                    <div class="space-y-2 text-sm">
            `;

            const sortedOptions = Object.entries(JSON.parse(q.options)).sort((a, b) => a[0].localeCompare(b[0]));
            
            sortedOptions.forEach(([key, value]) => {
                let classes = 'flex items-center p-3 rounded-lg border';
                let icon = '';

                // Style the user's selected option
                if (key === userAnswer) {
                    if(isCorrect) {
                        classes += ' bg-green-100 border-green-400 font-bold';
                        icon = '<span class="material-symbols-outlined text-green-600 mr-2">check_circle</span>';
                    } else { // isWrong
                        classes += ' bg-red-100 border-red-400 font-bold';
                        icon = '<span class="material-symbols-outlined text-red-600 mr-2">cancel</span>';
                    }
                } 
                // Separately highlight the correct option if the user was wrong or didn't answer
                else if (key === correctOptionKey) {
                    classes += ' bg-green-50 border-green-300';
                    icon = '<span class="material-symbols-outlined text-green-600 mr-2">check_circle</span>';
                } 
                // All other non-selected, non-correct options
                else {
                    classes += ' bg-white';
                }

                questionCardHTML += `<div class="${classes}">${icon}<strong>${optionLabels[key]}.</strong><span class="ml-2">${value}</span></div>`;
            });

            questionCardHTML += `</div></div>`;
            container.innerHTML += questionCardHTML;
        });
    }

    async function loadAttemptDetails() {
        if (!attemptId) return;
        try {
            const response = await fetch(`${API_URL}?attempt_id=${attemptId}`);
            const result = await response.json();
            if (result.success) {
                renderReview(result.data);
            } else {
                document.getElementById('review-questions-container').innerHTML = `<p class="text-red-500 text-center">${result.message}</p>`;
            }
        } catch (error) { console.error('Fetch Details Error:', error); }
    }

    document.getElementById('back-to-performance-btn').addEventListener('click', () => {
        if(window.loadPage) window.loadPage('check-performance');
    });

    loadAttemptDetails();
}
initializePerformanceReviewPage();
