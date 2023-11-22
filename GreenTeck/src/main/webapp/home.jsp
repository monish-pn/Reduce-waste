<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GreenTeck Home</title>
  <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
   <link rel="stylesheet" href="css/dashboard.css">
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
          <a href="#Dashboard" class="active" data-active="0">
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
    <h1>My Dashboard</h1>
    <h2>GreenTeck Dasboard</h2>
    
   <div class="container" style="max-width: 1250px">
  <ul class="responsive-table">
    <li class="table-header">
      <div class="col col-1">Product Id</div>
      <div class="col col-2">Customer Name</div>
      <div class="col col-3">Product Name</div>
      <div class="col col-4">Details</div>
      <div class="col col-5">Status</div>
      <div class="col col-6">Date/Time</div>
      <div class="col col-7">BUY NOW</div>
    </li>    
    <%@page import="java.sql.*" %>
      <%@page import="com.connection.ConnectionServlet" %>
      <%
      try{
    	  String userid=(String)session.getAttribute("id");
    	  Connection con= ConnectionServlet.getcon();
    	  Statement st= con.createStatement();
			ResultSet rs =st.executeQuery("select *from producttab where producttab.userid<>'"+userid+"'");
	    	  while(rs.next())
    	  {
      %>
      <li class="table-row">
      <div class="col col-1"><%=rs.getString(1) %></div>
      <div class="col col-2"><%=rs.getString(9) %></div>
      <div class="col col-3"><%=rs.getString(2) %></div>
      <div class="col col-4">

 <div class="">
	<a class="button" href="#popup1">Details</a>
</div>

<div id="popup1" class="overlay">
	<div class="popup">
		<h2>Product Details</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
			<ul >
			<li style="padding: 0px;">Product Name : <%=rs.getString(2) %></li>
			<li style="padding: 0px;">Product Type : <%=rs.getString(3) %></li>
			<li style="padding: 0px;">Product in KG : <%=rs.getString(4) %></li>
			<li style="padding: 0px;">Product Transportation : <%=rs.getString(5) %></li>
			<li style="padding: 0px;">Product Max wait time : <%=rs.getString(6) %></li>
			<li style="padding: 0px;">Product Filter required : <%=rs.getString(7) %></li>
			<li style="padding: 0px;">Product Address : <%=rs.getString(8) %></li>
			<li style="padding: 0px;">Product Dealer Name : <%=rs.getString(9) %></li>
			<li style="padding: 0px;">Product Dealer Number : <%=rs.getString(10) %></li>
			<li style="padding: 0px;">Product Dealer Email : <%=rs.getString(11) %></li>
			<li style="padding: 0px;">Product Details-1 : <%=rs.getString(12) %></li>
			<li style="padding: 0px;">Product Details-2 : <%=rs.getString(13) %></li>
			</ul>
		</div>
	</div>
</div>
      </div>
      <div class="col col-5"><%=rs.getString(16) %> </div>
      <div class="col col-6"><%=rs.getString(14) %></div>
      <div class="col col-7"><a href="#popup2"> <u> BUY NOW </u></a></div>
      <div id="popup2" class="overlay">
	<div class="popup">
		<h2>Product Details</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
		<div class="cd-popup-container"><br>
       <br><p>Are you sure you want to BUY this element?</p>
        <ul class="cd-buttons">
         <li style="padding: 0px;"><a  href="BuyNowServlet?pid=<%=rs.getString(1)%>">Yes</a></li>
         <li style="padding: 0px;" ><a href="#0">No</a></li>
        </ul>
        </div> 
		</div>
	</div>
</div>
      </li>
      
       <%
    	  }}
      catch(Exception e)
      {}
      %>
      
  </ul>
</div>
<br><br>
</section>

 <section id="Dashboard">
 
   <center><img src= "img/logo8.png" height=120px width=120px></center>
       <h2>Green Pathway Dasboard</h2>
   
   <div class="container" style="max-width: 1250px;height: 10000px">
  <ul class="responsive-table">
    <li class="table-header">
      <div class="col col-1">Product Id</div>
      <div class="col col-2">Customer Name</div>
      <div class="col col-3">Product Type</div>
      <div class="col col-4">Details</div>
      <div class="col col-5">Status</div>
      <div class="col col-6">Date/Time</div>
      <div class="col col-7">BUY NOW</div>
    </li>    
    <%@page import="java.sql.*" %>
      <%@page import="com.connection.GreenPathwayServlet" %>
      <%
      try{
    	  Connection con= ConnectionServlet.getcon();
    	  Connection conobject= DriverManager.getConnection("jdbc:mysql://192.168.20.17:3306/gpschema","iplprojectuser","projectipluser@#D");
		    PreparedStatement pstobject = conobject.prepareCall("SELECT * FROM transsidetable WHERE StatusFlag=?");
			pstobject.setInt(1,2);
			ResultSet rsetobject = pstobject.executeQuery();
    	  while(rsetobject.next())
    	  {
      %>
      <li class="table-row">
      <div class="col col-1"><%=rsetobject.getString("UserName") %></div>
      <div class="col col-4">

 <button id="detailsBtn">Details</button>
<div id="detailsPopup">
  <span id="detailsContent"></span>
  <button id="closeBtn">Close</button>
</div>

<div id="detailsContentHTML" style="display:none;">
  <h2>Details Content</h2>
  <p>Here are some details.</p>
</div>


      </div>
      <div class="col col-5"> online </div>
      <div class="col col-7"><a href="GreenPathwayServlet?value=<%=rsetobject.getString("UserName") %>"><u>BUY NOW</u></a></div>
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