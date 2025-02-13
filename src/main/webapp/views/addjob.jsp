<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Application</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="style1.css">

    <style>
        h2 {
            font-size: 16px;
            margin-bottom: 5px;
        }
        p {
            font-size: 12px;
            margin: 0;
        }
    </style>

    <!-- JavaScript for Validation -->
    <script>
        function validatePostId() {
            const postId = document.getElementById("postId").value;
            if (!/^\d+$/.test(postId)) { // Check if the value is not an integer
                alert("Post ID must be an integer!"); // Show a prompt
                return false; // Prevent form submission
            }
            return true; // Allow form submission
        }
    </script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="container">
        <a class="navbar-brand fs-1 fw-medium" href="#">Job Application</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">About</a></li>
                <li class="nav-item"><a class="nav-link" href="https://www.linkedin.com/in/jai-anand-51047b243/">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h2 class="mb-3 text-center fs-3 font-weight-bold">Post a New Job</h2>

                    <form:form action="handleForm" method="post" modelAttribute="jobPost" onsubmit="return validatePostId()">
                        <!-- Post ID -->
                        <div class="mb-1">
                            <label for="postId" class="form-label">Post ID</label>
                            <form:input path="postId" cssClass="form-control" id="postId" required="true"/>
                            <form:errors path="postId" cssClass="text-danger"/>
                        </div>

                        <!-- Post Profile -->
                        <div class="mb-1">
                            <label for="postProfile" class="form-label">Post Profile</label>
                            <form:input path="postProfile" cssClass="form-control" id="postProfile" required="true"/>
                            <form:errors path="postProfile" cssClass="text-danger"/>
                        </div>

                        <!-- Post Description -->
                        <div class="mb-1">
                            <label for="postDesc" class="form-label">Post Description</label>
                            <form:textarea path="postDesc" cssClass="form-control" id="postDesc" rows="2" required="true"/>
                            <form:errors path="postDesc" cssClass="text-danger"/>
                        </div>

                        <!-- Required Experience -->
                        <div class="mb-1">
                            <label for="reqExperience" class="form-label">Required Experience</label>
                            <form:input path="reqExperience" type="number" cssClass="form-control" id="reqExperience" required="true"/>
                            <form:errors path="reqExperience" cssClass="text-danger"/>
                        </div>

                        <!-- Tech Stack -->
                        <div class="mb-2">
                            <label for="postTechStack" class="form-label">Tech Stack</label>
                            <form:select path="postTechStack" cssClass="form-select" multiple="true" id="postTechStack" required="true">
                                <form:option value="Java">Java</form:option>
                                <form:option value="JavaScript">JavaScript</form:option>
                                <form:option value="Swift">Swift</form:option>
                                <form:option value="TypeScript">TypeScript</form:option>
                                <form:option value="Go">Go</form:option>
                                <form:option value="Kotlin">Kotlin</form:option>
                                <form:option value="Rust">Rust</form:option>
                                <form:option value="PHP">PHP</form:option>
                                <form:option value="HTML5">HTML5</form:option>
                                <form:option value="CSS3">CSS3</form:option>
                                <form:option value="React">React</form:option>
                                <form:option value="Angular">Angular</form:option>
                                <form:option value="Django">Django</form:option>
                                <form:option value="Flask">Flask</form:option>
                                <form:option value="Node.js">Node.js</form:option>
                                <form:option value="Docker">Docker</form:option>
                                <form:option value="Kubernetes">Kubernetes</form:option>
                                <form:option value="AWS">AWS</form:option>
                                <form:option value="Machine Learning">Machine Learning</form:option>
                                <form:option value="Cybersecurity">Cybersecurity</form:option>
                            </form:select>
                            <form:errors path="postTechStack" cssClass="text-danger"/>
                        </div>

                        <!-- Submit Button -->
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form:form>

                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-BOvWN0A8wEtzZZjynUoEOpTnrZem1FsA3n5q/3pj+Y5w45rXRB+BvsMAqE8/HtfU"
        crossorigin="anonymous"></script>

</body>
</html>