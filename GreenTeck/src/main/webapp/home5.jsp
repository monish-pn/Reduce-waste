<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GreenTeck Home</title>
  <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="css/home.css">
 
 <style>
		* {
			box-sizing: border-box;
			margin: 0;
			padding: 0;
		}

		body {
			font-family: 'Poppins', sans-serif;
			background-color: #f2f2f2;
		}

		header {
			background-color:#68B01C;
			padding: 20px;
			text-align: center;
		}

		h1 {
			font-size: 36px;
			margin-bottom: 10px;
			color: white;
		}

		p {
			font-size: 18px;
			line-height: 1.5;
			margin-bottom: 20px;
			color: black;
		}

		.container {
			max-width: 800px;
			margin-left: 100px;
			margin-top: 60px;
			padding: 20px;
			background-color:#acd481;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
		}
		
		.container:hover{
			padding: 22px;
			max-width: 820px;

		}

		.video-container {
			position: relative;
			padding-bottom: 56.25%;
			padding-top: 30px;
			height: 0;
			overflow: hidden;
		}

		.video-container iframe {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			border: none;
		}

		@media only screen and (max-width: 600px) {
			h1 {
				font-size: 24px;
			}

			p {
				font-size: 16px;
			}

			.container {
				padding: 10px;
			}
		}
	</style>
 
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
          <img src="./img/face-1.png" alt="">
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
  
  <header>
		<h1>L E A R N</h1>
		<p>Watch and learn more about waste</p>
	</header>

	<div class="container">
		<div class="video-container">
			<iframe src="https://www.youtube.com/embed/oFlsjRXbnSk" allowfullscreen></iframe>
		</div>
		
		<p>Have you ever thought about where your leftover food goes after you throw it in the trash? Or the consequences that this has for our planet? Composting is an eco-friendly alternative to throwing your food in the landfill.</p>
		
	</div>
	<div class="container">
		<div class="video-container">
			<iframe src="https://www.youtube.com/embed/dRXNo7Ieky8" allowfullscreen></iframe>
		</div>
		<p>Highfields Center for Composting presents an animated teaching guide for starting a compost program in your school. In this brief video, students will learn about compost, the importance of closing the loop on their food system and how to separate food scraps effectively.</p>
		
	</div>
	<div class="container">
		<div class="video-container">
			<iframe src="https://www.youtube.com/embed/J9tmw9KBCKo" allowfullscreen></iframe>
		</div>
		<p>This USDA video encourages consumers to reduce food waste by composting food scraps.  Food scraps can be recycled into compost, an organic aterial that can be added to soil to help plants grow. Set up a home compost bin or drop your food waste at a local compost center.</p>
	</div>
  
  <span>GreenTeck</span> All Rights Reserved.
  </main>

  <script src="js/home.js"></script>
   <script src="js/register.js"></script>
</body>

</html>