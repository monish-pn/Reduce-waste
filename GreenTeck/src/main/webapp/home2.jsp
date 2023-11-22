<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GreenTeck Home</title>
  <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="css/home.css">
 
</head>

<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>" >

  <nav>
    <div class="sidebar-top">
      <span class="shrink-btn">
        <i class='bx bx-chevron-left'></i>
      </span>
      <img src="./img/logo/teck.png" class="logo" alt="">
      <h3 class="hide">GreenTeck</h3>
    </div>

    <div class="search">
      <i class='bx bx-search'></i>
      <input type="text" class="hide" placeholder="Quick Search ...">
    </div>

    <div class="sidebar-links">
      <ul>
       
        <li class="tooltip-element" data-tooltip="0">
          <a href="home.jsp"  data-active="0">
            <div class="icon">
              <i class='bx bx-tachometer'></i>
              <i class='bx bxs-tachometer'></i>
            </div>
            <span class="link hide">Dashboard</span>
          </a>
        </li>
        <li class="tooltip-element" data-tooltip="1">
          <a href="home2.jsp" class="active" data-active="1">
            <div class="icon">
              <i class='bx bx-folder'></i>
              <i class='bx bxs-folder'></i>
            </div>
            <span class="link hide">Add Product</span>
          </a>
        </li>
        <li class="tooltip-element" data-tooltip="2">
          <a href="home3.jsp" data-active="2">
            <div class="icon">
              <i class='bx bx-message-square-detail'></i>
              <i class='bx bxs-message-square-detail'></i>
            </div>
            <span class="link hide">Product Status</span>
          </a>
        </li>
        <li class="tooltip-element" data-tooltip="3">
          <a href="home4.jsp" data-active="3">
            <div class="icon">
              <i class='bx bx-user'></i>
              <i class='bx bxs-user'></i>
            </div>
            <span class="link hide">Profile</span>
          </a>
        </li>
      </ul>

      <h4 class="hide">Shortcuts</h4>

      <ul>
        <li class="tooltip-element" data-tooltip="0">
          <a href="home.jsp" data-active="4">
            <div class="icon">
              <i class='bx bx-notepad'></i>
              <i class='bx bxs-notepad'></i>
            </div>
            <span class="link hide">Learn</span>
          </a>
        </li>
        <li class="tooltip-element" data-tooltip="1">
          <a href="#" data-active="5">
            <div class="icon">
              <i class='bx bx-help-circle'></i>
              <i class='bx bxs-help-circle'></i>
            </div>
            <span class="link hide">Help</span>
          </a>
        </li>
        <li class="tooltip-element" data-tooltip="2">
          <a href="#" data-active="6">
            <div class="icon">
              <i class='bx bx-cog'></i>
              <i class='bx bxs-cog'></i>
            </div>
            <span class="link hide">Settings</span>
          </a>
        </li>
      </ul>
    </div>

    <div class="sidebar-footer">
      <a href="#" class="account tooltip-element" data-tooltip="0">
        <i class='bx bx-user'></i>
      </a>
      <div class="admin-user tooltip-element" data-tooltip="1">
        <div class="admin-profile hide">
          <img src="./img/face-1.jpg" alt="">
          <div class="admin-info">
            <h3><%= session.getAttribute("uname") %></h3>
            <h5><%= session.getAttribute("uemail") %></h5>
          </div>
        </div>
        <a href="logout" class="log-out">
          <i class='bx bx-log-out'></i>
        </a>
      </div>
    </div>
  </nav>


  <main>
  <section id="Dashboard">
    <h1>Add New Product</h1>
    
    <div class="container">
        <header>Product</header>

        <form action="AddProductServlet" method="">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Product Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Name Of Product</label>
                            <input type="text" id="myInput" name="pname" placeholder="Enter product name " required>
                        </div>
                        
                        <div class="input-field">
                            <label>Type of Waste Product </label>
                            <select name="ptype" required>
                                <option disabled selected>Select Choice</option>
                                <option>Organic waste</option>
                                <option>Inorganic waste</option>
                                <option>Food Waste</option>
                                <option>Plastic</option>
                                <option>Solid</option>
                                <option>Liquid</option> 
                                <option>E-waste</option>
                                <option>Hazardous</option>  
                                <option>Other</option>                               
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Product in KG</label>
                            <input type="text" name="pkg" placeholder="In KG only" required>
                        </div>
                        
                        <div class="input-field">
                            <label>Type of Transportation Required </label>
                            <select name="ptra" required>
                                <option disabled selected>Select Choice</option>
                                <option>Cargo trucks-4-wheeler</option>
                                <option>Cargo trucks-6-wheeler</option>
                                <option>Cargo trucks-10-wheeler</option>
                                <option>Refrigerated trucks</option>
                                <option>Flatbed trucks</option>
                                <option>Tanker trucks</option>
                                <option>Container ships</option>
                                <option>Cargo planes</option>
                                <option>Oil tankers</option>
                                <option>Cargo vans</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Max wait time</label>
                            <input type="text" name="pmaxtime" placeholder="In days" required>
                        </div>
                        
                        <div class="input-field">
                            <label>Does the product need to be filtered</label>
                            <select name="pfilter" required>
                                <option disabled selected>Select Choice</option>
                                <option>YES</option>
                                <option>NO</option>
                            </select>
                        </div>
                        
                        <div class="input-field" style=" width: calc(100% / 1 - 15px)">
                            <label>Product pick-up Address</label>
                            <input type="text" name="padds" placeholder="Enter your Address" required>
                        </div>
                        
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Contact Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Name</label>
                            <input type="text" name="pcname" placeholder="Enter Your Nmae">
                        </div>

                        <div class="input-field">
                            <label>Mobile Number </label>
                            <input type="text" name="pcmobile" placeholder="Enter your Number" required>
                        </div>

                        <div class="input-field">
                            <label>Mail ID </label>
                            <input type="text" name="pcmail" placeholder="E-Mail" required>
                        </div>

                        <div class="input-field" style=" width: calc(100% / 1 - 15px)" >
                            <label>Other Product Details-1</label>
                            <input type="text" name="ppd1" placeholder="">
                        </div>
                        
                        <div class="input-field" style=" width: calc(100% / 2 - 15px)" >
                            <label>Other Product Details-2</label>
                            <input type="text" name="ppd2" placeholder="">
                        </div>
                        
                        <div class="input-field">
                            <label>User ID </label>
                            <input type="text" name="userid" value="<%= session.getAttribute("id") %>" readonly>
                        </div>
                       
                        <button class="sumbit" type="submit" >
                            <span class="btnText">Add Product</span>
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
    	   swal("Congrats", "Added Product Created Sucessfully","success");
    	   }
       if(status == "failed")
    	   {
           swal("Sorry", "please check your email and password","error");
           }
       status="null";
      </script>
    <br><br><br>
    <p class="copyright">
      &copy; 2023 - <span>GreenTeck</span> All Rights Reserved.
    </p>
    </section>
  </main>

  <script src="js/home.js"></script>
   <script src="js/register.js"></script>
</body>

</html>