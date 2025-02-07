<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Job Portal</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous">
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
</style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand fs-1 fw-medium" href="#">Job Portal Web App</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNav" aria-controls="navbarNav"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewpolicy">View Policy</a></li> <!-- New "View Policy" link -->
                    <li class="nav-item"><a class="nav-link"
                       href="https://www.linkedin.com/in/jai-anand-51047b243/">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="row">
            <!-- View All Jobs Card -->
            <div class="col-md-6 mb-5">
                <a href="/viewalljobs" class="card card-hover text-decoration-none">
                    <div class="card-body text-center bg-warning">
                        <h5 class="card-title">View All Jobs</h5>
                    </div>
                </a>
            </div>

            <!-- Add Job Card -->
            <div class="col-md-6 mb-5">
                <a href="/addjob" class="card card-hover text-decoration-none">
                    <div class="card-body text-center bg-primary text-white">
                        <h5 class="card-title">Add Job</h5>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</body>
</html>
