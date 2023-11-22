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
          <a href="home.jsp" data-active="0">
            <div class="icon">
              <i class='bx bx-tachometer'></i>
              <i class='bx bxs-tachometer'></i>
            </div>
            <span class="link hide">Dashboard</span>
          </a>
        </li>
        <li class="tooltip-element" data-tooltip="1">
          <a href="home2.jsp" data-active="1">
            <div class="icon">
              <i class='bx bx-folder'></i>
              <i class='bx bxs-folder'></i>
            </div>
            <span class="link hide">Add Product</span>
          </a>
        </li>
        <li class="tooltip-element" data-tooltip="2">
          <a href="home3.jsp" class="active" data-active="2">
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
          <a href="home5" data-active="4">
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
    <h2>My Product Status</h2>
     <h1>GreenTeck Product Status</h1>
   <div class="container" style="max-width: 1100px">
  <ul class="responsive-table">
    <li class="table-header">
      <div class="col col-1">Product Id</div>
      <div class="col col-2">Customer Name</div>
      <div class="col col-3">Product Name</div>
      <div class="col col-4">Date/Time</div>
      <div class="col col-5">Status</div>
    </li>    
    <%@page import="java.sql.*" %>
      <%@page import="com.connection.ConnectionServlet" %>
      <%
      try{
    	  String userid=(String)session.getAttribute("id");
    	  Connection con= ConnectionServlet.getcon();
    	  Statement st= con.createStatement();
			ResultSet rs =st.executeQuery("select *from producttab where producttab.userid='"+userid+"'");
	    	  while(rs.next())
    	  {
      %>
      <li class="table-row">
      <div class="col col-1"><%=rs.getString(1) %></div>
      <div class="col col-2"><%=rs.getString(9) %></div>
      <div class="col col-3"><%=rs.getString(2) %></div>
      <div class="col col-4"><%=rs.getString(14) %></div>
      <div class="col col-5"><%=rs.getString(16) %> </div>
      </li>
      
       <%
    	  }}
      catch(Exception e)
      {}
      %>
      
  </ul>
</div>

<br><br>

    <p class="copyright">
      &copy; 2023 - <span>GreenTeck</span> All Rights Reserved.
    </p>
    </section>
  </main>

  <script src="js/home.js"></script>
</body>

</html>