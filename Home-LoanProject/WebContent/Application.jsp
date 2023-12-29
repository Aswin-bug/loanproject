<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Loan Application - Employment Details</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            padding-top: 56px; /* Adjust the height of the navbar */
        }
        .navbar {
            background-color: #3F8EFC; /* Set your desired background color */
        }
        .navbar a {
            color: white;
        }
        .application-container {
            max-width: 400px;
            margin: 50px auto;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .form-group input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <a class="navbar-brand" href="#">Your Organization</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#"  onclick="window.location.href='Home-page.jsp'; return false;">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"   onclick="if (confirm('Are you sure you want to Logout?')) return window.location.href='Login.jsp';">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="window.location.href='Calculator.jsp'; return false;">Calculator</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="#" onclick="window.location.href='FAQ.jsp'; return false;">FAQ</a>
                </li> 
            </ul>
        </div>
    </nav>

    <!-- Application Container -->
    <div class="container application-container">
        <h2>Employment Details</h2>
        
        <!-- Employment Details Form -->
        <form action="ApplicationServlet" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="employmentType">Type of Employment:</label>
                <select name="employmentType" required>
                    <option value="salaried">Salaried</option>
                    <option value="self-employed">Self-Employed</option>
                </select>
            </div>
            <div class="form-group">
                <label for="employerName">Employee Name:</label>
                <input type="text" name="employerName" required pattern="[A-Za-z]+" title="Only alphabets are allowed">
            </div>
            <div class="form-group">
                <label for="organizationType">Organization Type:</label>
                <select name="organizationType" required>
                    <option value="government">Government</option>
                    <option value="private">Private</option>
                    <option value="ngo">NGO</option>
                </select>
            </div>
            <div class="form-group">
                <label for="retirementAge">Retirement Age:</label>
                <input type="number" name="retirementAge" required min="50" max="60">
            </div>
            <div class="form-group text-center">
                <!-- Submit Button -->
                <input type="submit" value="Next">
            </div>
        </form>

        <script>
            function validateForm() {
                var employmentType = document.forms["myForm"]["employmentType"].value;
                var employerName = document.forms["myForm"]["employerName"].value;
                var organizationType = document.forms["myForm"]["organizationType"].value;
                var retirementAge = document.forms["myForm"]["retirementAge"].value;

                 if (employmentType != "salaried" && employmentType != "self-employed") {
                    alert("Employment Type should be either 'salaried' or 'self-employed'");
                    return false;
                } 

                if (!/^[a-zA-Z]+$/.test(employerName)) {
                    alert("Employer Name should contain only alphabets");
                    return false;
                }

                 if (organizationType != "government" && organizationType != "private" && organizationType != "ngo") {
                    alert("Organization Type should be either 'government', 'private', or 'ngo'");
                    return false;
                } 

                if (retirementAge < 50 || retirementAge > 60) {
                    alert("Retirement Age should be between 50 and 60");
                    return false;
                }
            }
        </script>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
