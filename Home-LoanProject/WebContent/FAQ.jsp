<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
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
                    <a class="nav-link" href="#" onclick="window.location.href='Home-page.jsp'; return false;">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"   onclick="if (confirm('Are you sure you want to Logout?')) return window.location.href='Login.jsp';">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"  onclick="window.location.href='Calculator.jsp'; return false;" >Calculator</a>
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
    <br><br>
    <div class="faq-container">
        <h1>Home Loan FAQ</h1>
<br><br>
        <div class="question">
            <strong>Q: How can I apply for a home loan?</strong>
            <div class="answer">
                A: To apply for a home loan, you can visit our online application portal and fill out the application form. Make sure to provide all the required documents for a smooth process.
            </div>
        </div>
<br>
        <div class="question">
            <strong>Q: What is the minimum credit score required for a home loan?</strong>
            <div class="answer">
                A: The minimum credit score requirement may vary, but generally, a higher credit score increases your chances of approval. Contact our loan officers for specific details based on your situation.
            </div>
        </div>
<br>
        <div class="question">
            <strong>Q: How long does the approval process take?</strong>
            <div class="answer">
                A: The approval process duration can vary. After submitting your application, our team will review it, and you will be notified of the status. The process typically takes a few weeks.
            </div>
        </div>
    <br>    
       <div class="question">
    <strong>Q: What factors determine the interest rate on a home loan?</strong>
    <div class="answer">
        A: The interest rate is influenced by factors such as your credit score, loan amount, down payment, and current market conditions. Our loan specialists can provide personalized information based on your financial profile.
    </div>
</div>
<br>
<div class="question">
    <strong>Q: Can I repay my home loan, and are there any penalties?</strong>
    <div class="answer">
        A: Yes, you can repay your home loan. However, some loans may have repayment penalties. It's essential to review your loan agreement or consult with our customer service to understand the terms and conditions regarding repayment.
    </div>
</div>
<br>
<div class="question">
    <strong>Q: What documents do I need to submit with my home loan application?</strong>
    <div class="answer">
        A: Commonly required documents include proof of identity, address, income statements, property documents, and bank statements. Specific document requirements may vary, and our application portal will guide you through the submission process.
    </div>
</div>
<br>
<div class="question">
    
    <strong>Q: How can I check the status of my home loan application?</strong>
   <div class="answer">
        A: You can track the status of your application by logging into your online account on our website. Additionally, our customer service team is available to provide updates and address any inquiries you may have during the process.
    </div>
    
</div>
       

    </div>
</body>
</html>
