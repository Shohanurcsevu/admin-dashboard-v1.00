function initializeDashboardPage() {
    // --- URLs ---
    const METRICS_API_URL = 'api/dashboard-metrics.php';
    const EXAMS_API_URL = 'api/dashboard-exams.php';
    const SUBJECT_API_URL = 'api/exam/subjects.php';
    const LESSON_API_URL = 'api/exam/lessons.php';
    const TOPIC_API_URL = 'api/exam/topics.php';

    // --- DOM Elements ---
    const subjectFilter = document.getElementById('exam-subject-filter');
    const lessonFilter = document.getElementById('exam-lesson-filter');
    const topicFilter = document.getElementById('exam-topic-filter');
    const examCardsContainer = document.getElementById('exam-cards-container');

    // --- Section 1: Summary Cards Logic ---
    function animateCount(element, targetValue) {
        const end = parseInt(targetValue, 10);
        if (isNaN(end)) { element.textContent = targetValue; return; }
        const duration = 1200;
        let startTime = null;

        function animation(currentTime) {
            if (startTime === null) startTime = currentTime;
            const progress = currentTime - startTime;
            const currentNumber = Math.min(Math.floor(progress / duration * end), end);
            element.textContent = currentNumber;
            if (progress < duration) requestAnimationFrame(animation);
            else element.textContent = end;
        }
        requestAnimationFrame(animation);
    }
    
    async function fetchAndDisplayMetrics() {
        try {
            const response = await fetch(METRICS_API_URL);
            const result = await response.json();
            if (result.success) {
                const metrics = result.data;
                const elements = {
                    subjects: document.getElementById('total-subjects'),
                    lessons: document.getElementById('total-lessons'),
                    topics: document.getElementById('total-topics'),
                    exams: document.getElementById('total-exams'),
                    questions: document.getElementById('total-questions')
                };
                for (const key in elements) {
                    if (elements[key]) animateCount(elements[key], metrics[key]);
                }
            }
        } catch (error) { console.error("Error fetching metrics:", error); }
    }


    // --- Section 2: Exam Selection Logic ---
    async function populateDropdown(url, selector, placeholder, isDependent = false) {
        selector.innerHTML = `<option value="0">${placeholder}</option>`;
        if (isDependent) selector.disabled = true;
        try {
            const response = await fetch(url);
            const result = await response.json();
            if (result.success && result.data.length > 0) {
                result.data.forEach(item => {
                    selector.innerHTML += `<option value="${item.id}">${item.subject_name || item.lesson_name || item.topic_name}</option>`;
                });
                if (isDependent) selector.disabled = false;
            }
        } catch (error) { console.error(`Dropdown Error for ${placeholder}:`, error); }
    }

    function renderChart(canvasId, history) {
        const ctx = document.getElementById(canvasId);
        if (!ctx || !history || history.length === 0) return;

        const labels = history.map(h => `Attempt ${h.attempt}`);
        const data = history.map(h => h.score);
        
        if (Chart.getChart(canvasId)) {
            Chart.getChart(canvasId).destroy();
        }

        new Chart(ctx, {
            type: 'line',
            data: { labels: labels, datasets: [{ label: 'Score', data: data, borderColor: 'rgba(59, 130, 246, 0.5)', backgroundColor: 'rgba(59, 130, 246, 0.1)', borderWidth: 2, fill: true, tension: 0.4 }] },
            options: {
                responsive: true, maintainAspectRatio: false,
                scales: { y: { beginAtZero: true, ticks: { font: { size: 10 } } }, x: { ticks: { font: { size: 10 } } } },
                plugins: { legend: { display: false }, tooltip: { callbacks: { label: (context) => `Score: ${context.raw}` } } }
            }
        });
    }

    async function fetchAndDisplayExams() {
        let url = `${EXAMS_API_URL}?`;
        const params = new URLSearchParams();
        if (subjectFilter.value > 0) params.append('subject_id', subjectFilter.value);
        if (lessonFilter.value > 0) params.append('lesson_id', lessonFilter.value);
        if (topicFilter.value > 0) params.append('topic_id', topicFilter.value);
        url += params.toString();

        examCardsContainer.innerHTML = '<p class="text-gray-500 col-span-full text-center">Loading exams...</p>';
        
        try {
            const response = await fetch(url);
            const result = await response.json();
            examCardsContainer.innerHTML = '';
            if (result.success && result.data.length > 0) {
                result.data.forEach(exam => {
                    const breadcrumb = exam.subject_name ? `${exam.subject_name} > ${exam.lesson_name} > ${exam.topic_name}` : 'Custom Model Test';
                    const history = exam.performance_history;
                    const lastScore = history.length > 0 ? history[history.length - 1].score.toFixed(2) : 'N/A';

                    const card = `
                        <div class="bg-white p-5 rounded-lg shadow-md flex flex-col hover:shadow-lg transition-shadow">
                            <h3 class="text-lg font-bold text-gray-800 truncate">${exam.exam_title}</h3>
                            <p class="text-xs text-gray-500 mb-4 truncate">${breadcrumb}</p>
                            <div class="flex-grow space-y-2 text-sm text-gray-600 mb-4">
                                <p class="flex items-center"><span class="material-symbols-outlined text-base mr-2">timer</span>${exam.duration} Minutes</p>
                                <p class="flex items-center"><span class="material-symbols-outlined text-base mr-2">help</span>${exam.total_questions} Questions</p>
                                <p class="flex items-center"><span class="material-symbols-outlined text-base mr-2">military_tech</span>${parseFloat(exam.total_marks).toFixed(0)} Marks</p>
                            </div>
                            <div class="mt-auto border-t pt-4">
                                <div class="flex justify-between items-center mb-2">
                                    <span class="text-sm font-medium text-gray-500">Last Score:</span>
                                    <span class="text-lg font-bold ${lastScore === 'N/A' ? 'text-gray-400' : 'text-blue-600'}">${lastScore}</span>
                                </div>
                                <div class="h-24"><canvas id="chart-exam-${exam.id}"></canvas></div>
                            </div>
                            <button class="take-exam-btn mt-4 w-full bg-blue-600 text-white font-semibold py-2 px-4 rounded-lg hover:bg-blue-700 transition-colors" data-id="${exam.id}">Take Exam</button>
                        </div>
                    `;
                    examCardsContainer.innerHTML += card;
                });
                result.data.forEach(exam => {
                    if (exam.performance_history.length > 0) renderChart(`chart-exam-${exam.id}`, exam.performance_history);
                });
            } else {
                examCardsContainer.innerHTML = `<p class="text-gray-500 col-span-full text-center py-8">No exams found for the selected filters.</p>`;
            }
        } catch (error) { 
            console.error('Fetch Exams Error:', error);
            examCardsContainer.innerHTML = `<p class="text-red-500 col-span-full text-center py-8">Failed to load exams.</p>`;
        }
    }
    
    // --- Event Listeners & Initial Load ---
    // --- FIX: This function was empty. It has now been implemented correctly. ---
    function setupEventListeners() {
        if (!subjectFilter || !lessonFilter || !topicFilter || !examCardsContainer) {
            console.error("One or more filter/container elements are missing.");
            return;
        }

        subjectFilter.addEventListener('change', () => {
            populateDropdown(`${LESSON_API_URL}?subject_id=${subjectFilter.value}`, lessonFilter, 'All Lessons', true);
            topicFilter.innerHTML = '<option value="0">All Topics</option>';
            topicFilter.disabled = true;
            fetchAndDisplayExams();
        });

        lessonFilter.addEventListener('change', () => {
            populateDropdown(`${TOPIC_API_URL}?lesson_id=${lessonFilter.value}`, topicFilter, 'All Topics', true);
            fetchAndDisplayExams();
        });

        topicFilter.addEventListener('change', fetchAndDisplayExams);

        examCardsContainer.addEventListener('click', (e) => {
            const takeExamBtn = e.target.closest('.take-exam-btn');
            if (takeExamBtn) {
                const examId = takeExamBtn.dataset.id;
                if (window.loadPage) {
                    window.loadPage('take-exam-interface', `?exam_id=${examId}`);
                }
            }
        });
    }

    function initializePage() {
        fetchAndDisplayMetrics();
        populateDropdown(SUBJECT_API_URL, subjectFilter, 'All Subjects');
        fetchAndDisplayExams();
        setupEventListeners();
    }
    
    initializePage();
}

initializeDashboardPage();
