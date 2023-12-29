<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Loan Application - Personal Details</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
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
        .personal-details-container {
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
        .form-group input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .form-group input[type="submit"],
        .form-group input[type="reset"] {
            width: 48%; /* Equally share the space */
            margin-right: 4%; /* Add a small margin between buttons */
        }
        .form-group input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }
        .form-group input[type="reset"] {
            background-color: #f44336;
            color: #fff;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #45a049;
        }
        .form-group input[type="reset"]:hover {
            background-color: #d32f2f;
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
                    <a class="nav-link" href="#"  onclick="window.location.href='Home-page.jsp';return false;">Home</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link" href="#"   onclick="if (confirm('Are you sure you want to Logout?')) return window.location.href='Login.jsp';">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="window.location.href='Calculator.jsp';return false;">Calculator</a>
                </li>
                
                 <li class="nav-item">
                    <a class="nav-link" href="#" onclick="window.location.href='FAQ.jsp'; return false;">FAQ</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Personal Details Container -->
    <div class="container personal-details-container">
        <h2>Personal Details</h2>
        
        <!-- Personal Details Form -->
        <form action="ApplicationServlet" method="post">
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" name="firstName" required>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" name="lastName" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <input type="tel" name="phoneNumber" required>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <input type="date" name="dob" placeholder="Date/Month/Year"required>
            </div>
            <div class="form-group">
                <label for="aadharNumber">Aadhar Number:</label>
                <input type="tel" name="aadharNumber" required>
            </div>
            <div class="form-group">
                <label for="panNumber">PAN Number:</label>
                <input type="text" name="panNumber" required>
            </div>
            <div class="form-group">
                <label for="nationality">Nationality:</label>
                <input type="text" name="nationality" required>

            </div>
    <div class="form-group" style="display: flex; justify-content: space-between;">
    <!-- Reset Button -->
    <input type="reset" value="Reset" style="width: 55%;">

    <!-- Submit Button -->
    <input type="submit" value="Submit" style="width: 55%;">
</div>

            
        </form>
    </div>

</body>
</html>
