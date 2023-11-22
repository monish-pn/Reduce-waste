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
          <a href="home2.jsp"  data-active="1">
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
          <a href="home4.jsp" class="active" data-active="3">
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
          <a href="home5.jsp" data-active="4">
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
    <h1>My Profile</h1>
    <%@page import="java.sql.*" %>
      <%@page import="com.connection.ConnectionServlet" %>
      <%
      try{
    	  String uemail=(String)session.getAttribute("uemail");
    	  Connection con= ConnectionServlet.getcon();
    	  Statement st= con.createStatement();
			ResultSet rs =st.executeQuery("select *from usertab where usertab.uemail='"+uemail+"'");
	    	  while(rs.next())
    	  {
      %>

<form action="RegServlet" method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Personal and Login Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Full Name</label>
                            <input type="text" name="uname" id="myInput" name="myInput" placeholder="<%=rs.getString(2)%>" disabled>
                        </div>
                        
                        <div class="input-field">
                            <label>Email</label>
                            <input type="text" name="uemail" placeholder="<%=rs.getString(3) %>" disabled>
                        </div>

                        <div class="input-field">
                            <label>Mobile Number</label>
                            <input type="text" name="umobile" placeholder="<%=rs.getString(4) %>" disabled>
                        </div>
                        
                        <div class="input-field">
                            <label>Password</label>
                            <input type="password" name="upass" placeholder="<%=rs.getString(5) %>" disabled>
                        </div>

                        <div class="input-field">
                            <label>Occupation</label>
                            <input type="text" name="uocc" placeholder="<%=rs.getString(6) %>" disabled>
                        </div>
                        
                        <div class="input-field">
                            <label>City</label>
                            <input type="text" name="ucity" placeholder="<%=rs.getString(7) %>" disabled>
                        </div>
                        
                        <div class="input-field" style=" width: calc(100% / 3 - 15px)">
                            <label>Full Address</label>
                            <input type="text" name="uadds" placeholder="<%=rs.getString(8) %>" disabled>
                        </div>
                        
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Identity Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Company/Organisation URL</label>
                            <input type="text" name="curl" placeholder="<%=rs.getString(9) %>" disabled>
                        </div>

                        <div class="input-field">
                            <label>Name of Company/Organisation </label>
                            <input type="text" name="cname" placeholder="<%=rs.getString(10) %>" disabled>
                        </div>

                        <div class="input-field">
                            <label>Approved by Company/Organisation </label>
                            <input type="text" name="cappl" placeholder="<%=rs.getString(11) %>" disabled>
                        </div>

                        <div class="input-field" style=" width: calc(100% / 3 - 15px)" >
                            <label>Address of Company/Organisation </label>
                            <input type="text" name="cadds" placeholder="<%=rs.getString(12) %>" disabled>
                        </div>

                        <div class="input-field">
                            <label>Type of Waste Preferred/Produced </label>
                            <input type="text" name="cadds" placeholder="<%=rs.getString(13) %>" disabled>
                        </div>

                        <div class="input-field">
                            <label>Type of Product Customer</label>
                            <input type="text" name="cadds" placeholder="<%=rs.getString(14) %>" disabled>
                        </div>
                        
                        <div class="input-field" >
                            <label>Phone Number of Company/Organisation </label>
                            <input type="text" name="cadds" placeholder="<%=rs.getString(15) %>" disabled>
                        </div>
                        
                    </div>
                </div> 
            </div>
        </form>

    <%
    	  }}
      catch(Exception e)
      {}
      %>
      
    </section>
  </main>

  <script src="js/home.js"></script>
</body>

</html>