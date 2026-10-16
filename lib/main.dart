<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>مُنزل فيديوهات تيك توك الاحترافي</title>
    <!-- أيقونات FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --bg-color: #0f172a;
            --card-bg: #1e293b;
            --input-bg: #0f172a;
            --primary-gradient: linear-gradient(135deg, #00f2fe 0%, #4facfe 100%);
            --tiktok-pink: #ff0050;
            --tiktok-cyan: #00f2fe;
            --text-main: #f8fafc;
            --text-muted: #94a3b8;
            --border-color: #334155;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: var(--bg-color);
            color: var(--text-main);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .app-container {
            background-color: var(--card-bg);
            border: 1px solid var(--border-color);
            border-radius: 20px;
            padding: 30px;
            width: 100%;
            max-width: 600px;
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.5), 0 8px 10px -6px rgba(0, 0, 0, 0.5);
        }

        .header {
            text-align: center;
            margin-bottom: 25px;
        }

        .header i {
            font-size: 45px;
            background: linear-gradient(45deg, var(--tiktok-cyan), var(--tiktok-pink));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 10px;
        }

        .header h1 {
            font-size: 24px;
            font-weight: 700;
        }

        .header p {
            color: var(--text-muted);
            font-size: 14px;
            margin-top: 5px;
        }

        .input-group {
            position: relative;
            margin-bottom: 20px;
        }

        .input-group input {
            width: 100%;
            padding: 16px 45px 16px 100px;
            background-color: var(--input-bg);
            border: 2px solid var(--border-color);
            border-radius: 12px;
            color: #fff;
            font-size: 15px;
            outline: none;
            transition: all 0.3s ease;
        }

        .input-group input:focus {
            border-color: var(--tiktok-cyan);
            box-shadow: 0 0 12px rgba(0, 242, 254, 0.2);
        }

        .input-icon {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--text-muted);
            font-size: 18px;
        }

        .paste-btn {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            background: #334155;
            color: #fff;
            border: none;
            padding: 8px 14px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 12px;
            font-weight: 600;
            transition: background 0.2s;
        }

        .paste-btn:hover {
            background: #475569;
        }

        .action-btn {
            width: 100%;
            padding: 16px;
            border: none;
            border-radius: 12px;
            background: linear-gradient(90deg, var(--tiktok-pink), #ff2a74);
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            transition: transform 0.2s, opacity 0.2s;
        }

        .action-btn:hover {
            opacity: 0.95;
            transform: translateY(-2px);
        }

        .action-btn:disabled {
            opacity: 0.5;
            cursor: not-allowed;
            transform: none;
        }

        /* Spinner */
        .spinner {
            display: none;
            width: 20px;
            height: 20px;
            border: 3px solid rgba(255,255,255,0.3);
            border-radius: 50%;
            border-top-color: #fff;
            animation: spin 1s ease-in-out infinite;
        }

        @keyframes spin {
            to { transform: rotate(360deg); }
        }

        /* Result Section */
        #resultContainer {
            margin-top: 25px;
            display: none;
            animation: fadeIn 0.4s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .author-card {
            display: flex;
            align-items: center;
            gap: 12px;
            background-color: var(--input-bg);
            padding: 12px;
            border-radius: 12px;
            margin-bottom: 15px;
        }

        .author-card img {
            width: 45px;
            height: 45px;
            border-radius: 50%;
            object-fit: cover;
        }

        .author-info h4 {
            font-size: 15px;
        }

        .author-info p {
            font-size: 12px;
            color: var(--text-muted);
        }

        .video-title {
            font-size: 14px;
            line-height: 1.5;
            margin-bottom: 15px;
            color: #cbd5e1;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 10px;
            margin-bottom: 20px;
            text-align: center;
        }

        .stat-box {
            background-color: var(--input-bg);
            padding: 10px;
            border-radius: 8px;
            font-size: 12px;
            color: var(--text-muted);
        }

        .stat-box i {
            color: var(--tiktok-cyan);
            margin-bottom: 4px;
            display: block;
        }

        .stat-box span {
            display: block;
            color: #fff;
            font-weight: bold;
            font-size: 14px;
        }

        video {
            width: 100%;
            border-radius: 12px;
            margin-bottom: 15px;
            background: #000;
            max-height: 350px;
        }

        .download-options {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px;
        }

        .dl-btn {
            padding: 12px;
            border-radius: 10px;
            text-decoration: none;
            color: #fff;
            font-size: 13px;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: opacity 0.2s;
        }

        .dl-btn:hover {
            opacity: 0.85;
        }

        .btn-mp4 { background: #22c55e; grid-column: span 2; font-size: 15px; padding: 14px; }
        .btn-mp3 { background: #eab308; }
        .btn-cover { background: #3b82f6; }

        .error-msg {
            background-color: rgba(239, 68, 68, 0.1);
            border: 1px solid #ef4444;
            color: #ef4444;
            padding: 12px;
            border-radius: 10px;
            font-size: 14px;
            text-align: center;
            margin-top: 15px;
            display: none;
        }
    </style>
</head>
<body>

<div class="app-container">
    <div class="header">
        <i class="fa-brands fa-tiktok"></i>
        <h1>تحميل فيديوهات TikTok</h1>
        <p>قم بتنزيل الفيديوهات والصوتيات بدون علامة مائية وبأعلى جودة</p>
    </div>

    <div class="input-group">
        <i class="fa-solid fa-link input-icon"></i>
        <input type="text" id="videoUrl" placeholder="الصق رابط فيديو تيك توك هنا...">
        <button class="paste-btn" onclick="pasteClipboard()"><i class="fa-regular fa-clipboard"></i> لصق</button>
    </div>

    <button class="action-btn" id="submitBtn" onclick="processVideo()">
        <span id="btnText"><i class="fa-solid fa-wand-magic-sparkles"></i> معالجة الرابط</span>
        <div class="spinner" id="spinner"></div>
    </button>

    <div class="error-msg" id="errorBox"></div>

    <!-- قسم عرض النتائج -->
    <div id="resultContainer">
        <div class="author-card">
            <img id="authorAvatar" src="" alt="Avatar">
            <div class="author-info">
                <h4 id="authorName">اسم المستخدم</h4>
                <p id="authorHandle">@username</p>
            </div>
        </div>

        <p class="video-title" id="videoDesc"></p>

        <div class="stats-grid">
            <div class="stat-box">
                <i class="fa-solid fa-heart"></i>
                <span id="likesCount">0</span>
                الإعجابات
            </div>
            <div class="stat-box">
                <i class="fa-solid fa-comment"></i>
                <span id="commentsCount">0</span>
                التعليقات
            </div>
            <div class="stat-box">
                <i class="fa-solid fa-share"></i>
                <span id="sharesCount">0</span>
                المشاركات
            </div>
        </div>

        <video id="videoPreview" controls></video>

        <div class="download-options">
            <a id="dlVideo" class="dl-btn btn-mp4" target="_blank" download="tiktok.mp4">
                <i class="fa-solid fa-circle-down"></i> تحميل الفيديو (بدون علامة مائية)
            </a>
            <a id="dlAudio" class="dl-btn btn-mp3" target="_blank" download="audio.mp3">
                <i class="fa-solid fa-music"></i> تحميل الصوت (MP3)
            </a>
            <a id="dlCover" class="dl-btn btn-cover" target="_blank" download="cover.jpg">
                <i class="fa-solid fa-image"></i> تحميل الغلاف
            </a>
        </div>
    </div>
</div>

<script>
    // وظيفة لصق الرابط تلقائياً من الحافظة
    async function pasteClipboard() {
        try {
            const text = await navigator.clipboard.readText();
            document.getElementById('videoUrl').value = text;
        } catch (err) {
            alert('يرجى السماح بصلاحية الوصول للحافظة أو اللصق يدوياً.');
        }
    }

    // تنسيق الأرقام الكبيرة (مثال: 120000 -> 120K)
    function formatNumber(num) {
        if (!num) return '0';
        return Math.abs(num) > 999999 
            ? (Math.abs(num)/1000000).toFixed(1) + 'M' 
            : Math.abs(num) > 999 
            ? (Math.abs(num)/1000).toFixed(1) + 'K' 
            : num;
    }

    // الوظيفة الرئيسية لمعالجة الفيديو
    async function processVideo() {
        const urlInput = document.getElementById('videoUrl').value.trim();
        const btn = document.getElementById('submitBtn');
        const btnText = document.getElementById('btnText');
        const spinner = document.getElementById('spinner');
        const errorBox = document.getElementById('errorBox');
        const resultContainer = document.getElementById('resultContainer');

        if (!urlInput) {
            showError('يرجى إدخال رابط فيديو تيك توك صحيح.');
            return;
        }

        // إخفاء الأخطاء والنتائج القديمة وتفعيل حالة التحميل
        errorBox.style.display = 'none';
        resultContainer.style.display = 'none';
        btn.disabled = true;
        btnText.style.display = 'none';
        spinner.style.display = 'block';

        try {
            const formData = new FormData();
            formData.append('url', urlInput);
            formData.append('hd', '1');

            const response = await fetch('https://www.tikwm.com/api/', {
                method: 'POST',
                body: formData
            });

            const data = await response.json();

            if (data.code === 0) {
                const videoData = data.data;

                // تعبئة بيانات المستخدم
                document.getElementById('authorAvatar').src = videoData.author.avatar;
                document.getElementById('authorName').innerText = videoData.author.nickname;
                document.getElementById('authorHandle').innerText = `@${videoData.author.unique_id}`;

                // الوصف والإحصائيات
                document.getElementById('videoDesc').innerText = videoData.title || 'بدون عنوان';
                document.getElementById('likesCount').innerText = formatNumber(videoData.digg_count);
                document.getElementById('commentsCount').innerText = formatNumber(videoData.comment_count);
                document.getElementById('sharesCount').innerText = formatNumber(videoData.share_count);

                // معاينة الفيديو
                const videoPlayer = document.getElementById('videoPreview');
                videoPlayer.src = videoData.play;

                // روابط التحميل
                document.getElementById('dlVideo').href = videoData.play;
                document.getElementById('dlAudio').href = videoData.music;
                document.getElementById('dlCover').href = videoData.cover;

                // إظهار النتائج
                resultContainer.style.display = 'block';
            } else {
                showError('لم نتمكن من جلب الفيديو. تأكد من أن الرابط صحيح وأن الفيديو غير خاص.');
            }
        } catch (error) {
            showError('حدث خطأ في الاتصال بالخادم. حاول مرة أخرى لاحقاً.');
        } finally {
            // إعادة زر التشغيل لحالته
            btn.disabled = false;
            btnText.style.display = 'inline-flex';
            spinner.style.display = 'none';
        }
    }

    function showError(message) {
        const errorBox = document.getElementById('errorBox');
        errorBox.innerText = message;
        errorBox.style.display = 'block';
    }
</script>

</body>
</html>
