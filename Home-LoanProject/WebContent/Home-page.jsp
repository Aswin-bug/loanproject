<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
     <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        *{
        margin: 0;
        padding: 0;
        font-family:sans-serif;
        }
        
      .background{
      width:100%;
      height:100vh;
        background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url(./images/background.jpg);
		background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
        }
        .navbar{
        width: 85%;
        margin:auto;
        padding: 30px 0 ;
        display: flex;
        align-items:center;
        }
        .logo{
        width:120px;
        cursor: pointer;
        }
        .navbar ul li{
        list-style: none;
        display: inline-block;
        margin: 0 15px;
        position: relative;}
         .navbar ul li a{
        text-decoration: none;
        color: #fff;
        text-transform: uppercase;}
        .navbar ul li::after{
        content: '';
        height: 3px;
        width: 0%;
        background: #009688;
        position: absolute;
        left: 0;
        bottom: -10px;
        transition: 0.5s;}
         .navbar ul li:hover::after{
         width: 100%;
         }
         .content{
         width: 100%;
         position: absolute;
         top: 45%;
         transform: translateY(-50%);
         text-align: center;
         color: #fff;
         }
         .content h1{
         font-size:70px;
         margin-top:80px;
         }
         .content p{
         margin-:20px auto;
         font-weight: 100;
         line-height: 25px;
         }
         button{
         height:50px;
         width:200px;
         padding 15px 0;
         text-align: center
         margin:20px 10px;
         border-radius: 30px;
         font-weight:bold;
         border:2px solid #009688;
         background: transparent;
         color: #fff;
         cursor:pointer;
         position:relative;
         overflow:hidden;}
         span{
         background: #009688;
         height:100%;
         width:0;
         border-radius:25px;
         position: absolute;
         left:0;
         bottom:0;
         z-index:-1;
         transition:0.5s;}
         button:hover span{
         width:100%;
         }
         button:hover {
         border:none;
         }

    </style>
</head>
<body>
	<div class="background">
	
	<div class="navbar">
	<img src="logo.png" class="logo">
	<ul>
	
	<li><i class='bx bxs-home' style="color:white;"></i><a href="#"> Home</a></li>
	<li><i class='bx bx-log-in' style="color:white;"></i><a href="#" onclick="if (confirm('Are you sure you want to Logout?')) return window.location.href='Login.jsp';"> Logout</a></li>
	<li><i class='bx bxs-calculator' style="color:white;"></i><a href="#" onclick="window.location.href='Calculator.jsp'; return false;"> Calculator</a></li>
	<li><a href="#" onclick="window.location.href='FAQ.jsp'; return false;">FAQ ?</a></li>
	</ul>
	</div>
	<div>
	<div class="content">
	<h1>BUILD YOUR HOUSE</h1>
	<p>Own your Home</p>
	<div>
	<button type="button" onclick="window.location.href='Application.jsp'; return false;"><span></span>APPLY LOAN </button>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<button type="button"><span></span> LOAN TRACKER</button>  
  </div>
    </div>
	</div>
	</div>
	
</body>
</html>
