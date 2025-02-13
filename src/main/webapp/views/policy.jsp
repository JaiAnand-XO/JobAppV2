<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Part-Time Working Policy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="style1.css">
    <style>
        .card-hover:hover {
            transform: translateY(-5px);
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .scrolling-text {
            padding: 10px;
            font-weight: bold;
        }

        .section {
            background-color: rgba(44, 62, 80, 0.85);
            padding: 25px;
            margin-bottom: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        }

        .section h2 {
            font-size: 2em;
            color: #3498db;
        }

        p {
            color: #ecf0f1;
            font-size: 1.2em;
            line-height: 1.8;
        }

        /* Floating Action Button */
        .floating-btn {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #3498db;
            color: white;
            border: none;
            padding: 15px 25px;
            border-radius: 50px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .floating-btn:hover {
            background-color: #2980b9;
        }

        /* Breadcrumbs Styling */
        .breadcrumb {
            background-color: transparent;
            padding: 0;
        }

        .breadcrumb-item a {
            color: #3498db;
        }

        .breadcrumb-item a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand fs-1 fw-medium" href="#">Job Application</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewpolicy">View Policy</a></li>
                    <li class="nav-item"><a class="nav-link"
                        href="https://www.linkedin.com/in/jai-anand-51047b243/">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <!-- Policy Section -->
        <div class="section">
            <h2>Part-Time Working Policy</h2>
            <p>The part-time working policy allows employees to work a flexible number of hours per week. The key factors to consider include:</p>
            <ul>
                <li>Working hours typically up to 20 hours per week.</li>
                <li>Part-time work is available in various industries including retail, hospitality, and customer service.</li>
                <li>Employees are entitled to the same benefits as full-time workers, proportionate to the hours worked.</li>
            </ul>

            <h2>Eligibility</h2>
            <p>Eligibility for part-time work may vary based on the nature of the role. Employees should check with their respective employers or HR departments for specific eligibility criteria.</p>

            <h2>Rights and Responsibilities</h2>
            <p>Part-time workers are entitled to rights such as sick leave, holiday pay, and protection against unfair dismissal. Employers must ensure part-time workers have access to the same opportunities as full-time workers, where applicable.</p>
        </div>

        <!-- Section for Additional Information -->
        <div class="section">
            <h2>Additional Information</h2>
            <p>For more information, you can refer to government guidelines and regulations regarding part-time employment. Always ensure to check the latest regulations and updates regarding employment rights.</p>
        </div>
    </div>

    <!-- Floating Back Button -->
    <a href="home" class="floating-btn">Go Back</a>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>
