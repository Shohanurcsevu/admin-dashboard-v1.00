function initializeTakeExamInterface() {
    const API_URL = 'api/take-exam/';
    const params = new URLSearchParams(window.location.search);
    const examId = params.get('exam_id');
    
    let examData = {};
    let userAnswers = {};
    let timerInterval;

    const resultModal = document.getElementById('result-modal');
    const closeResultModalBtn = document.getElementById('close-result-modal-btn');
    const submitExamBtn = document.getElementById('submit-exam-btn');
    const questionsArea = document.getElementById('questions-area');

    const shuffle = (array) => array.sort(() => Math.random() - 0.5);
    const bengaliNumbers = ['০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯'];
    const toBengali = (num) => num.toString().split('').map(digit => bengaliNumbers[digit]).join('');
    const optionLabels = { 'A': 'ক', 'B': 'খ', 'C': 'গ', 'D': 'ঘ' };

    function renderExam(data) {
        examData = data;
        const details = data.details;
        document.getElementById('exam-title').textContent = details.exam_title;
        document.getElementById('exam-breadcrumb').textContent = `${details.subject_name || ''} > ${details.lesson_name || ''} > ${details.topic_name || ''}`.replace(/ > $/, '').replace(/^ > | > $/, '');
        document.getElementById('exam-duration').textContent = `${details.duration} mins`;
        document.getElementById('exam-total-questions').textContent = data.questions.length;
        document.getElementById('exam-total-marks').textContent = details.total_marks;
        document.getElementById('exam-pass-mark').textContent = details.pass_mark;
        document.getElementById('exam-instructions').textContent = details.instructions;

        questionsArea.innerHTML = '';
        shuffle(data.questions).forEach((q, index) => {
            const sortedOptions = Object.entries(q.options).sort((a, b) => a[0].localeCompare(b[0]));
            const questionHTML = `
                <div class="border rounded-lg p-4 bg-gray-50">
                    <p class="text-gray-800 font-semibold">${toBengali(index + 1)}. ${q.question}</p>
                    <div class="mt-4 grid grid-cols-1 sm:grid-cols-2 gap-2 text-sm">
                        ${sortedOptions.map(([key, value]) => `
                            <button class="option-btn p-3 text-left rounded-lg border bg-white hover:bg-blue-100 hover:border-blue-400" data-question-id="${q.id}" data-option-key="${key}">
                                <strong>${optionLabels[key]}.</strong> ${value}
                            </button>
                        `).join('')}
                    </div>
                </div>
            `;
            questionsArea.innerHTML += questionHTML;
        });

        startTimer(details.duration * 60);
    }

    function startTimer(duration) {
        let timer = duration;
        const timerEl = document.getElementById('timer');
        timerInterval = setInterval(() => {
            const minutes = Math.floor(timer / 60);
            const seconds = timer % 60;
            if(timerEl) timerEl.textContent = `${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
            if (--timer < 0) {
                clearInterval(timerInterval);
                if(timerEl) timerEl.textContent = "00:00";
                showToast('Time is up! Submitting exam automatically.', 'error');
                submitExam();
            }
        }, 1000);
    }

    function handleOptionClick(e) {
        const btn = e.target.closest('.option-btn');
        if (!btn || btn.disabled) return;
        
        const questionId = btn.dataset.questionId;
        const optionKey = btn.dataset.optionKey;
        
        userAnswers[questionId] = optionKey;
        
        const parent = btn.parentElement;
        parent.querySelectorAll('.option-btn').forEach(b => {
            b.disabled = true;
            b.classList.remove('bg-blue-200', 'border-blue-500');
            b.classList.add('bg-gray-100', 'text-gray-500');
        });
        btn.classList.remove('bg-gray-100', 'text-gray-500');
        btn.classList.add('bg-blue-200', 'border-blue-500');
    }
    
    function displayExamResult(performanceData) {
        document.getElementById('result-exam-title').textContent = examData.details.exam_title;
        document.getElementById('result-attempt-time').textContent = new Date(performanceData.attempt_time).toLocaleString();
        document.getElementById('result-total-questions').textContent = examData.questions.length;
        document.getElementById('result-correct').textContent = performanceData.right_answers;
        document.getElementById('result-wrong').textContent = performanceData.wrong_answers;
        document.getElementById('result-unanswered').textContent = performanceData.unanswered;
        document.getElementById('result-score').textContent = performanceData.score.toFixed(2);
        document.getElementById('result-final-score').textContent = performanceData.score_with_negative.toFixed(2);
        
        const timeUsed = new Date(performanceData.time_used_seconds * 1000).toISOString().substr(14, 5);
        const timeLeft = new Date(performanceData.time_left_seconds * 1000).toISOString().substr(14, 5);
        document.getElementById('result-time-used').textContent = `${timeUsed} minutes`;
        document.getElementById('result-time-left').textContent = `${timeLeft} minutes`;

        resultModal.classList.remove('hidden');
        resultModal.classList.add('flex');
    }

    async function submitExam() {
        clearInterval(timerInterval);
        submitExamBtn.disabled = true;
        submitExamBtn.innerHTML = `<span class="material-symbols-outlined mr-2 animate-spin">autorenew</span>Submitting...`;

        let right = 0, wrong = 0, unanswered = 0;
        examData.questions.forEach(q => {
            if (!userAnswers[q.id]) { unanswered++; } 
            else if (userAnswers[q.id] === q.answer) { right++; } 
            else { wrong++; }
        });

        const score = right * 1;
        const scoreWithNegative = score - (wrong * 0.5);
        const timerEl = document.getElementById('timer');
        const timeLeft = timerEl ? timerEl.textContent.split(':') : ['0','0'];
        const timeLeftSeconds = parseInt(timeLeft[0]) * 60 + parseInt(timeLeft[1]);
        
        const performance = {
            selected_answers: userAnswers,
            score: score,
            // --- FIX: Explicitly assign the camelCase variable to the snake_case property ---
            score_with_negative: scoreWithNegative,
            right_answers: right,
            wrong_answers: wrong,
            unanswered: unanswered,
            time_used_seconds: (examData.details.duration * 60) - timeLeftSeconds,
            time_left_seconds: timeLeftSeconds
        };

        try {
            const response = await fetch(`${API_URL}submit.php`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ exam_id: examId, performance: performance })
            });
            const result = await response.json();
            if (result.success && result.data && result.data.attempt_id) {
                closeResultModalBtn.dataset.attemptId = result.data.attempt_id;
                displayExamResult(result.data);
            } else {
                 showToast(result.message || 'Submission successful, but could not get performance ID.', 'error');
                 delete closeResultModalBtn.dataset.attemptId;
                 displayExamResult(performance);
            }
        } catch(e) {
            showToast('Network error during submission.', 'error');
        } finally {
            submitExamBtn.disabled = false;
            submitExamBtn.innerHTML = `<span class="material-symbols-outlined mr-2">check_circle</span>Submit Exam`;
        }
    }
    
    function showToast(message, type = 'success') {
        const toastContainer = document.getElementById('toast-container');
        if(!toastContainer) return;
        const toast = document.createElement('div');
        let bgColor, icon;
        switch (type) {
            case 'error': bgColor = 'bg-red-500'; icon = 'error'; break;
            default: bgColor = 'bg-green-500'; icon = 'check_circle'; break;
        }
        toast.className = `flex items-center text-white p-4 rounded-lg shadow-lg mb-2 ${bgColor}`;
        toast.innerHTML = `<span class="material-symbols-outlined mr-3">${icon}</span> ${message}`;
        toastContainer.appendChild(toast);
        setTimeout(() => { toast.style.opacity = '0'; toast.style.transition = 'opacity 0.5s ease'; setTimeout(() => toast.remove(), 500); }, 3000);
    }

    if(closeResultModalBtn) {
        closeResultModalBtn.addEventListener('click', (e) => {
            if(resultModal) {
                resultModal.classList.add('hidden');
                resultModal.classList.remove('flex');
            }
            const attemptId = e.currentTarget.dataset.attemptId;
            if (window.loadPage && attemptId) {
                window.loadPage('performance-review', `?attempt_id=${attemptId}`);
            } else {
                window.loadPage('take-exam-list');
            }
        });
    }

    if(questionsArea) questionsArea.addEventListener('click', handleOptionClick);
    if(submitExamBtn) submitExamBtn.addEventListener('click', submitExam);
    
    async function loadExam() {
        if (!examId) return;
        try {
            const response = await fetch(`${API_URL}start.php?exam_id=${examId}`);
            const result = await response.json();
            if (result.success) renderExam(result.data);
            else showToast(result.message, 'error');
        } catch(e) { showToast('Failed to load exam details.', 'error'); }
    }

    loadExam();
}
initializeTakeExamInterface();
