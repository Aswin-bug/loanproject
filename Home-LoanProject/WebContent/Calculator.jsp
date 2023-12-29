<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator Page</title>
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
        .calculator-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
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
                <li class="nav-item active">
                    <a class="nav-link" href="#"  onclick="window.location.href='Home-page.jsp'; return false;">Home</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link" href="#"   onclick="if (confirm('Are you sure you want to Logout?')) return window.location.href='Login.jsp';">Logout</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="#">Calculator</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="window.location.href='Application.jsp'; return false;">Application</a>
                </li>
               
                 <li class="nav-item">
                    <a class="nav-link" href="#" onclick="window.location.href='FAQ.jsp'; return false;">FAQ</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main Content - Calculator -->
    <div class="container calculator-container">
        <h2>Calculator</h2>

        <!-- Eligibility Calculator -->
        <div class="calculator-submodule">
            <h3>Eligibility Calculator</h3>
            <form action="EligibilityCalculatorServlet" method="post" onsubmit="return validateEligibilityForm()">
                <div class="form-group">
                    <label for="monthlyIncome">Monthly Income:</label>
                    <input type="text" name="monthlyIncome" required>
                </div>
                <div class="form-group">
                    <label for="interestRate">Rate of Interest:</label>
                    <input type="text" name="interestRate"  placeholder="0.6" required>
                </div>
                <div class="form-group">
                    <input type="submit" value="Calculate">
                </div>
            </form>
            <div class="result">
                <label>Eligibility Amount:</label>
                <span>${requestScope.eligibilityAmount}</span>
            </div>
        </div>

        <!-- EMI Calculator -->
        <div class="calculator-submodule">
            <h3>EMI Calculator</h3>
            <form action="EMICalculatorServlet" method="post" onsubmit="return validateEMIForm()">
                <div class="form-group">
                    <label for="loanAmount">Loan Amount:</label>
                    <input type="text" name="loanAmount" required>
                </div>
                <div class="form-group">
                    <label for="loanTenure">Loan Tenure (in months):</label>
                    <input type="text" name="loanTenure" required>
                </div>
                <div class="form-group">
                    <label for="interestRate">Rate of Interest:</label>
                    <input type="text" name="interestRate" placeholder="8.5" required>
                </div>
                <div class="form-group">
                    <input type="submit" value="Calculate">
                </div>
            </form>
            <div class="result">
                <label>EMI:</label>
                <span>${requestScope.emiParam}</span>
            </div>
        </div>
    </div>

    <script>
    function validateEligibilityForm() {
        // Validate monthly income and interest rate
        var monthlyIncome = parseFloat(document.getElementsByName("monthlyIncome")[0].value);
        var interestRate = parseFloat(document.getElementsByName("interestRate")[0].value);

        if (monthlyIncome <= 0 || monthlyIncome <= 1000 || interestRate <= 0 || interestRate > 5) {
            alert("Please enter valid details for Monthly Income and Interest Rate.");
            return false;
        }

        return true;
    }

    function validateEMIForm() {
        // Validate loan amount, loan tenure, and interest rate
        var loanAmount = parseFloat(document.getElementsByName("loanAmount")[0].value);
        var loanTenure = parseInt(document.getElementsByName("loanTenure")[0].value);
        var interestRate = parseFloat(document.getElementsByName("interestRate")[0].value);

        if (loanAmount < 100000 || loanAmount > 2000000 || loanTenure < 12 || loanTenure > 180 || interestRate < 5) {
            alert("Please enter valid details, Loan Amount should be between 100,000 and 1,500,000, Loan Tenure should be between 12 and 180, and Interest Rate should not be less than 5.");
            return false;
        }

        return true;
    }

</script>
</body>
</html>
