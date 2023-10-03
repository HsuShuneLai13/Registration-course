<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
        
       body {
            background-color: #183028; /* Pine Green background color */
            color: #ffffff; /* White text color */
        }

        
        
    </style>
</head>
<body>
<!-- navigation -->
    <nav class="navbar navbar-expand-lg navbar-light sticky-top">

        <!-- collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav mr-auto mt-2 mt-sm-0">
                <li class="nav-item">
                    <a class="nav-link active" href="index.html"><span class="mylink" style="color: #ffffff;">Home</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="training"><span class="mylink" style="color: #ffffff;">Course Registration</span></a>
                </li>
            </ul>
            <!--Login and Signup Links -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="Login.jsp" class="nav-link" style="color: #ffffff;">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Signup.jsp" style="color: #ffffff;">Sign Up</a>
                </li>
            </ul>
        </div>
    </nav> <br>
    <div style="text-align: center">
        <h2>Welcome to Admin Dashboard </h2>
    </div><br>
    <img src="https://elements-cover-images-0.imgix.net/cb6728e5-406d-4ac4-8607-f9be7bee2794?auto=compress%2Cformat&fit=max&w=900&s=1551c16e3ae530098d7ad0e1e4dd2231" width="800px" style="display: block; margin: 0 auto;">
    
<br><br>
    <div style="text-align: center">
        <a href="Select" class="btn btn-outline-dark btn-lg mybtn1" role="button">View Student Information</a>
    </div><br>

</body>
</html>