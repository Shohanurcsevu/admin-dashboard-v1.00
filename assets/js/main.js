let loadPage;

document.addEventListener('DOMContentLoaded', () => {
    const mainContent = document.getElementById('main-content');
    const headerContainer = document.getElementById('header-container');
    const sidebarContainer = document.getElementById('sidebar-container');

    const loadComponent = async (url, element) => {
        try {
            const response = await fetch(url);
            if (!response.ok) throw new Error(`Failed to fetch ${url}`);
            element.innerHTML = await response.text();
        } catch (error) {
            console.error(error);
            element.innerHTML = `<p class="text-red-500 text-center">Error loading component.</p>`;
            throw error;
        }
    };

    const loadPageScript = (page) => {
        const existingScript = document.getElementById('page-specific-script');
        if (existingScript) existingScript.remove();
        const pageScripts = {
            'dashboard': 'assets/js/dashboard.js',
            'subject': 'assets/js/subject.js',
            'lesson': 'assets/js/lesson.js',
            'topic': 'assets/js/topic.js',
            'exam': 'assets/js/exam.js',
            'import-questions': 'assets/js/import-questions.js',
            'questions-list': 'assets/js/questions-list.js',
            'take-exam-list': 'assets/js/take-exam-list.js',
            'take-exam-interface': 'assets/js/take-exam-interface.js',
            'check-performance': 'assets/js/check-performance.js',
            'performance-review': 'assets/js/performance-review.js',
            'custom-exam-builder': 'assets/js/custom-exam-builder.js',
            'custom-exam-topics': 'assets/js/custom-exam-topics.js',
            'custom-exams': 'assets/js/custom-exams.js',
            'custom-exam-from-lessons': 'assets/js/custom-exam-from-lessons.js',
            'model-test-builder': 'assets/js/model-test-builder.js'
        };
        if (pageScripts[page]) {
            const script = document.createElement('script');
            script.src = pageScripts[page];
            script.id = 'page-specific-script';
            script.defer = true;
            document.body.appendChild(script);
        }
    };

    loadPage = async (page, params = '') => {
        mainContent.innerHTML = '<div class="text-center p-10">Loading...</div>';
        const url = new URL(window.location);
        url.searchParams.set('page', page);
        for(let key of Array.from(url.searchParams.keys())) { if(key !== 'page') url.searchParams.delete(key); }
        if(params) {
            const searchParams = new URLSearchParams(params.startsWith('?') ? params.substring(1) : params);
            searchParams.forEach((value, key) => url.searchParams.set(key, value));
        }
        window.history.pushState({page, params}, '', url);
        
        try {
           await loadComponent(`pages/${page}.html`, mainContent);
           const headerTitleElement = document.querySelector('#header-container h1');
           if (headerTitleElement) {
               headerTitleElement.textContent = page.replace(/-/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
           }
           document.querySelectorAll('.nav-link').forEach(link => {
               const navLinkPage = link.dataset.page;
               const parentPages = {
                   'take-exam-interface': 'take-exam-list', 'performance-review': 'check-performance', 'questions-list': 'import-questions'
               };
               const parentPage = parentPages[page];
               if (navLinkPage === page || navLinkPage === parentPage) {
                   link.classList.add('bg-gray-700');
               } else {
                   link.classList.remove('bg-gray-700');
               }
           });
           loadPageScript(page);
        } catch (e) {
            mainContent.innerHTML = `<p class="text-red-500 p-6 text-center"><b>404 Not Found:</b><br>Could not load page content for <b>'${page}'</b>.</p>`;
        }
    };

    window.loadPage = loadPage;

    const initDashboard = async () => {
        await Promise.all([
            loadComponent('components/header.html', headerContainer),
            loadComponent('components/sidebar.html', sidebarContainer)
        ]);
        if (typeof initSidebarToggle === 'function') initSidebarToggle();
        const initialParams = new URLSearchParams(window.location.search);
        const initialPage = initialParams.get('page') || 'dashboard';
        initialParams.delete('page');
        await loadPage(initialPage, '?' + initialParams.toString());

        sidebarContainer.addEventListener('click', (e) => {
            const navLink = e.target.closest('.nav-link');
            if (navLink && navLink.dataset.page) {
                e.preventDefault();
                loadPage(navLink.dataset.page);
            }
        });
        
        window.onpopstate = (event) => {
            if (event.state) {
                loadPage(event.state.page, event.state.params);
            } else {
                const fallbackParams = new URLSearchParams(window.location.search);
                const fallbackPage = fallbackParams.get('page') || 'dashboard';
                fallbackParams.delete('page');
                loadPage(fallbackPage, '?' + fallbackParams.toString());
            }
        };
    };

    initDashboard();
});
