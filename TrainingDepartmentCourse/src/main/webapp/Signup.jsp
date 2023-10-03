<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
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

        .signup-container {
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
            <!-- Login and Signup Links -->
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
    
    <!-- SignUp Section -->
    <div class="container mt-5 signup-container">
        <h2 class="text-center">Sign Up</h2>
        <form id="signup-form" action="registerSession" method="post">
            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" class="form-control" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="password">Choose a Password:</label>
                <input type="password" class="form-control" name="password" placeholder="Enter your password" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirmed Password:</label>
                <input type="password" class="form-control" name="confirmPassword" placeholder="Confirm your password" required>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="keep-signed-in" name="keep-signed-in">
                <label class="form-check-label" for="keep-signed-in">Keep me signed in</label>
            </div>
            <button type="submit" class="btn btn-primary btn-block mt-3">Sign Up</button>
        </form>
        <div class="text-center mt-3">
            <a href="index.html">Go Back</a>
        </div>
    </div>

    <div class="mb-2">
        <span class="text-danger">
            <% String warning = (String) request.getAttribute("Message");
                if (warning != null) { %>
                <%= warning %>
            <% } %>
        </span>
    </div>

    <!-- JavaScript -->
    <script>
        document.getElementById("signup-form").addEventListener("submit", function (event) {
            event.preventDefault();
            // alert("Signup button clicked. You can implement your signup functionality.");

            // Uncomment the line below to submit the form
            // document.getElementById("signup-form").submit();

            // Add this line to redirect after successful signup
            window.location.href = "training";
        });
    </script>
</body>
</html>
