<jsp:useBean id="register_course" class="model.Course" scope="request"/>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ThankYou</title>
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

        .navbar {
            background-color: #1E3B2F; /* Darker Pine Green for navbar */
        }
	th,
	td{
	color: #ffffff;
	}
        h2,
        h4 {
            color: #ffffff; /* White text color for headings */
        }

        .btn-outline-dark {
            color: #ffffff; /* White text color for button */
            border-color: #ffffff; /* White border color for button */
        }

        .btn-outline-dark:hover {
            background-color: #ffffff; /* White background color on button hover */
            color: #183028; /* Pine Green text color on button hover */
        }
        input[type=button]{
	background-color: rgb(0, 128, 128);
	margin-top: 30px;
}
input[type=button]:hover {
    background-color: #737373;
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
  <div class="container" >
 	<h2 style="text-align: center"> Thank you for registration</h2><br>
	<div style="text-align: center">
		<h5>We appreciate your interest in our courses. We have send you a details information email about the selected course. </h5>
		<h4><i>"Start a fulfilling learning journey with us"</i></h4>
	 </div><br>
	
	<h5>Session register Information</h5>
	<p>Thank you for your registration.You have been enrolled
	<jsp:getProperty name="register_course" property="course"/>
	,with user name was <jsp:getProperty name="register_course" property="user_name"/>
	</p>

	<table border="1" width="100%">
	
	<thead height="50px;" class="thead-dark table-bordered">
		<tr>
			<th scope="col">Name</th>
			<th scope="col">Email</th>
			<th scope="col">Phone Number</th>
			<th scope="col">Address</th>
			<th scope="col">Course</th>
		</tr>
	</thead>
	
	<tbody height="70px;" class="table-group-divider table-bordered">
		<tr>
			<td><jsp:getProperty name="register_course" property="user_name"/></td>
			<td><jsp:getProperty name="register_course" property="email"/></td>
			<td><jsp:getProperty name="register_course" property="ph_number"/></td>
			<td><jsp:getProperty name="register_course" property="address"/></td>
			<td><jsp:getProperty name="register_course" property="course"/></td>
		</tr>
	</tbody>
	</table>
	<div class="text-center">
		<input type="button" value="Go Back" onclick="javascript:history.back()" style="width: 18%;" >
	</div>
  </div>

</body>
</html>