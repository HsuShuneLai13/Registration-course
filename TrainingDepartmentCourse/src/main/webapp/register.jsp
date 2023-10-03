<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="styles.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  	<style>
  	body {
    background-color: #183028;
    color: #000000;
}
h1 {
    color: #ffffff;
    text-align: center;
    margin-bottom: 30px; 
}
  	.container{
  	display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    }
    .form-container {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    margin-bottom: 60px;
    background-color: #f7fdfd;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
  	</style>

    <title>Register course</title><br>
</head>

<body>
    <!-- navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top" style="background:#1E3B2F;">
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
<h1>Register For Courses</h1>
    <div class="container">
        
        <div class="form-container">
            <form action="registerSession" method="post">
                <label for="name">Name</label>
                <input type="text" name="name" placeholder="Enter your name" required>

                <label for="email">E-mail</label>
                <input type="email" name="email" placeholder="Enter your email" required>

                <label for="ph_number">Phone number</label>
                <input type="ph_number" name="ph_number" placeholder="Enter your phone number" required>

                <label for="address">Address</label>
                <input type="address" name="address" placeholder="Enter your address" required>

                <label for="course">Select Courses</label>
				<select name="course">
				    <%
				    if (request.getAttribute("mycourses") != null) {
				        List<String> courses = (List<String>) request.getAttribute("mycourses");
				        for (int i = 0; i < courses.size(); i++) {
				    %>
				            <option value="<%=courses.get(i)%>"><%=courses.get(i)%></option>
				    <%
				        }
				    }
				    %>
				</select>


                <input type="submit" value="Submit">
            </form>
        </div>
    </div>
</body>

</html>