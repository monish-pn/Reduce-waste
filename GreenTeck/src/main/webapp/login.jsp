
<!DOCTYPE html>
<html lang="en">
<head>
    <title>IPL LOGIN</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <link rel="stylesheet" type="text/css" href="css/style1.css">
    <link rel="stylesheet" href="css/login1.css">
 
    <!--<title>Login & Registration Form</title>-->
</head>
<body>

   <input type="hidden" id="status" value="<%= request.getAttribute("status") %>" >

<header>
		<a href="index.jsp" class="logo">
			<img class="logo" src="img/logo/teck.png">
		</a>
		<div class="bx bx-menu" id="menu-icon"></div>

		<ul class="navbar">
			<li><a href="index.jsp">Home</a></li>
			<li><a href="index.jsp">About </a></li>
			<li><a href="login.jsp">Login </a></li>
			<li><a href="index.jsp">Contact Us</a></li>
		</ul>
	</header>
	
	<table>
	<tr>
	<td>
    <div class="container"  >
        <div class="forms">
            <div class="form login">
                <span class="title">Login</span>
                <form action="LogServlet" method="post">
                    <div class="input-field">
                        <input type="text" name="email" placeholder="Enter your email" required>
                        <i class="uil uil-envelope icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" name= "pass" class="password" placeholder="Enter your password" required>
                        <i class="uil uil-lock icon"></i>
                        <i class="uil uil-eye-slash showHidePw"></i>
                    </div>

                    <div class="checkbox-text">
                        <div class="checkbox-content">
                            <input type="checkbox" id="logCheck">
                            <label for="logCheck" class="text">Remember me</label>
                        </div>

                    </div>

                    <div class="input-field button">
                        <input type="submit" name="signup" id="signup" class="form-submit" value="Login">
                    </div>
                </form>

                <div class="login-signup">
                    <span class="text">Not a member?
                        <a href="registration.jsp" class="text signup-link">Signup Now</a>
                    </span>
                </div>
            </div>
            </div>
            </div>
        <td>
     <div style="margin-left: 240px;" class="container">
    <img src="img/gri.jpg" height="450px" width="400px">
    </div>
    </td>
    </tr>
</table>
    <script src="js/loginscript.js"></script>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
      <script type="text/javascript">
       var status = document.getElementById("status").value;
       if(status == "failed")
    	   {
           swal("Sorry", "please check your email and password","error");
           }
      </script>

</body>
</html>
