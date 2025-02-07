<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>London Part-Time Working Policy</title>
    <link rel="stylesheet" href="/static/css/styles.css">
    <style>
        /* Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #f1c40f; /* Yellow text color */
            overflow-x: hidden;
            background-color: #111; /* Prevents white space at the bottom */
            height: 100%;
        }

        /* Full-screen video background */
        .video-background {
            position: fixed;
            top: 50%;
            left: 50%;
            width: 100%;
            height: 100%;
            object-fit: cover;
            transform: translate(-50%, -50%);
            animation: zoomBackground 15s ease-in-out infinite;
            z-index: -1;
        }

        /* Video animation for zoom */
        @keyframes zoomBackground {
            0% {
                transform: translate(-50%, -50%) scale(1.05);
            }
            50% {
                transform: translate(-50%, -50%) scale(1.1);
            }
            100% {
                transform: translate(-50%, -50%) scale(1.05);
            }
        }

        /* Dark gradient overlay */
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.6));
            z-index: 0;
        }

        /* Content container */
        .container {
            position: relative;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            z-index: 1;
            animation: fadeInContainer 2s ease-out;
        }

        /* Fade-in effect for container */
        @keyframes fadeInContainer {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        /* Title styling */
        .title {
            text-align: center;
            font-size: 3.5em;
            color: #f1c40f;
            margin-bottom: 40px;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-weight: bold;
            text-shadow: 3px 3px 10px rgba(0, 0, 0, 0.7);
            animation: slideInTitle 2s ease-out;
        }

        /* Slide-in animation for title */
        @keyframes slideInTitle {
            0% {
                transform: translateY(-50px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* Section Styling */
        h2 {
            color: #f1c40f;
            font-size: 2.5em;
            font-weight: 600;
            margin-bottom: 20px;
            letter-spacing: 1px;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.7);
        }

        p {
            font-size: 1.2em;
            margin-bottom: 20px;
            color: #f1c40f;
            line-height: 1.8;
            text-align: justify;
            font-weight: 300;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.7);
        }

        .section {
            background-color: rgba(44, 62, 80, 0.85);
            padding: 25px;
            margin-bottom: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            color: #f1c40f;
            opacity: 0;
            transform: translateY(50px);
            animation: fadeInSection 1.5s forwards;
        }

        /* Fade-in animation for sections */
        @keyframes fadeInSection {
            0% {
                opacity: 0;
                transform: translateY(50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .section:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.4);
        }

        .section h3 {
            font-size: 1.6em;
            font-weight: bold;
            color: #f1c40f;
            margin-bottom: 15px;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.7);
        }

        ul {
            padding-left: 20px;
        }

        ul li {
            font-size: 1.1em;
            color: #f1c40f;
            list-style-type: square;
            margin-bottom: 10px;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.7);
        }

        .key-points {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 25px;
        }

        .key-point {
            padding: 20px;
            background-color: #2c3e50;
            border: 2px solid #f1c40f;
            border-radius: 12px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
            text-align: center;
            opacity: 0;
            animation: fadeInKeyPoint 1.5s forwards;
        }

        /* Fade-in animation for key points */
        @keyframes fadeInKeyPoint {
            0% {
                opacity: 0;
                transform: translateY(30px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .key-point:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }

        .key-point h3 {
            color: #f1c40f;
            font-size: 1.3em;
            font-weight: 600;
            text-shadow: 1px 1px 6px rgba(0, 0, 0, 0.7);
        }

        footer {
            text-align: center;
            margin-top: 50px;
            font-size: 1.2em;
            color: #f1c40f;
            background-color: #2c3e50;
            padding: 15px;
            border-radius: 8px;
            letter-spacing: 1px;
        }

        footer a {
            color: #f1c40f;
            text-decoration: none;
            font-weight: bold;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <!-- Video background -->
    <video class="video-background" autoplay muted loop>
        <source src="${pageContext.request.contextPath}/static/londonvid.mp4" type="video/mp4">
        <!-- Fallback message -->
        Your browser does not support the video tag.
    </video>

    <!-- Dark gradient overlay -->
    <div class="overlay"></div>

    <div class="container">
        <h1 class="title">Part-Time Working Policy</h1>

        <!-- Section 1: What is Part-Time Work? -->
        <div class="section">
            <h2>What is Part-Time Work?</h2>
            <p>Part-time work refers to working fewer hours than a full-time job, often 20 hours per week. It is a flexible option ideal for students and individuals who have other commitments.</p>
        </div>

        <!-- Section 2: Why is Part-Time Work Popular for Students? -->
        <div class="section">
            <h2>Why is it Popular for Students?</h2>
            <p>Part-time jobs are great for students looking to earn extra income without compromising their studies. These jobs offer flexibility and valuable work experience while maintaining academic balance.</p>
        </div>

        <!-- Section 3: Key Points About Part-Time Jobs -->
        <div class="section">
            <h2>Key Points to Know:</h2>
            <div class="key-points">
                <div class="key-point">
                    <h3>Working Hours</h3>
                    <p>Part-time jobs typically involve working for 20 hours a week, which can vary from evenings, weekends, or even shifts depending on the employer.</p>
                </div>

                <div class="key-point">
                    <h3>Types of Part-Time Jobs</h3>
                    <p>Common part-time jobs include:</p>
                    <ul>
                        <li>Retail Jobs</li>
                        <li>Hospitality</li>
                        <li>Tutoring</li>
                        <li>Delivery Jobs</li>
                    </ul>
                </div>

                <div class="key-point">
                    <h3>Things to Keep in Mind</h3>
                    <p>Make sure to balance work with study, and remember that living in London can be expensive. Proper budgeting will help ensure financial stability during part-time work.</p>
                </div>
            </div>
        </div>

        <!-- Footer Section -->
        <footer>
            <p>&copy; 2025 Part-Time Job Guide | All Rights Reserved</p>
            <p>For more info, visit <a href="https://www.gov.uk/part-time-worker-rights" target="_blank">UK Government</a></p>
        </footer>
    </div>
</body>

</html>
