<!DOCTYPE html>
<!--=== Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="css/registration.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <!--<title>Responsive Regisration Form </title>--> 
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>" >
<!--header--->
	<header>
		<a href="index.jsp" class="logo">
			<img class="logo" src="img/logo/teck.png">
		</a>
	</header>
	
    <div class="container">
        <header>Registration</header>

        <form action="RegServlet" method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Personal and Login Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Full Name</label>
                            <input type="text" name="uname" id="myInput" name="myInput" placeholder="Enter your name" required>
                        </div>
                        
                        <div class="input-field">
                            <label>Email</label>
                            <input type="text" name="uemail" placeholder="Enter your email" required>
                        </div>

                        <div class="input-field">
                            <label>Mobile Number</label>
                            <input type="text" name="umobile" placeholder="Enter mobile number" required>
                        </div>
                        
                        <div class="input-field">
                            <label>Password</label>
                            <input type="password" name="upass" placeholder="Create a Password" required>
                        </div>

                        <div class="input-field">
                            <label>Occupation</label>
                            <input type="text" name="uocc" placeholder="Enter your occupation" required>
                        </div>
                        
                        <div class="input-field">
                            <label>City</label>
                            <input type="text" name="ucity" placeholder="Enter your city" required>
                        </div>
                        
                        <div class="input-field" style=" width: calc(100% / 1 - 15px)">
                            <label>Full Address</label>
                            <input type="text" name="uadds" placeholder="Enter your Address" required>
                        </div>
                        
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Identity Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Company/Organisation URL</label>
                            <input type="text" name="curl" placeholder="Enter Company/Organisation URL">
                        </div>

                        <div class="input-field">
                            <label>Name of Company/Organisation </label>
                            <input type="text" name="cname" placeholder="Name of Company/Organisation" required>
                        </div>

                        <div class="input-field">
                            <label>Approved by Company/Organisation </label>
                            <input type="text" name="cappl" placeholder="Approved by Company/Organisation" required>
                        </div>

                        <div class="input-field" style=" width: calc(100% / 1 - 15px)" >
                            <label>Address of Company/Organisation </label>
                            <input type="text" name="cadds" placeholder="Enter Address of Company/Organisation" required>
                        </div>

                        <div class="input-field">
                            <label>Type of Waste Preferred/Produced </label>
                            <select name="corir" required>
                                <option disabled selected>Select Choice</option>
                                <option>Organic waste</option>
                                <option>Inorganic waste</option>
                                <option>Other</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Type of Product Customer</label>
                            <select name="ctype" required>
                                <option disabled selected>Select Choice</option>
                                <option>Waste Producers</option>
                                <option>Waste Management Company</option>
                            </select>
                        </div>
                        
                        <div class="input-field" >
                            <label>Phone Number of Company/Organisation </label>
                            <input type="text" name="cmobile" placeholder="Phone Number of Company/Organisation" required>
                        </div>
                        
                        <button class="sumbit" type="submit" >
                            <span class="btnText">Submit</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                        
                    </div>
                </div> 
            </div>
        </form>
    </div>

    <script src="js/register.js"></script>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
      <script type="text/javascript">
       var status = document.getElementById("status").value;
       if(status == "success")
    	   {
    	   swal("Congrats", "Account Created Sucessfully","success");
    	   }
       if(status == "failed")
    	   {
           swal("Sorry", "please check your email and password","error");
           }
       status="null";
      </script>
    
</body>
</html>