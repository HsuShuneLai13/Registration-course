<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
        
       body {
            background-color: #183028; /* Pine Green background color */
            
        }

        
        .login-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f7fdfd;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-check-label {
            padding-left: 0;
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
<!--Login Section-->
    <div class="container mt-5 login-container">
        <h2 class="text-center">Login</h2>
        
        <form action="login" method = "get">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="userName" placeholder="Enter your name" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="userPass" placeholder="Enter your password" required>
            </div>
            <div class="input-group mb-4 d-flex justify-content-between">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">Remember Me</label>
                </div>
                
                <div class="forgot">
                    <a href="#" class="forgot-password">Forgot Password?</a>
                </div>
            </div>
            
            
            <button type="submit" class="btn btn-primary btn-block" value="Login">Login</button>
            <div class="text-left mt-3">
                Don't have an account? <a href="Signup.jsp">Sign Up</a>
            </div>
        </form>
        
    </div>-->
    
	
   
</body>
</html>