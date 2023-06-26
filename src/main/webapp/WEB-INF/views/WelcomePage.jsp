<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
	<head>
    	<title>Welcome Page</title>
    	<link rel="shortcut icon" type="image/jpg" href="https://play-lh.googleusercontent.com/R6PyCHkiSk4O4WEWPCF6j86S_26AzBEenRF_19QFQw1eFV-OnJYtiYgK_1QF-FuNX7eg=w240-h480-rw"/>
	   <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
	</head>
 	<style>
      	button {
        	display: inline-block;
        	background-color: #ffffff;
        	padding: 20px;
        	width: 200px;
        	color: #ffffff;
        	text-align: center;
      			}
    </style>
	<style>
		body {
  			background-image: url('https://sp-ao.shortpixel.ai/client/q_glossy,ret_img/https://www.pinkpaws.co.in/wp-content/uploads/2020/07/banner4-Pet-store.jpg');
  			background-repeat: no-repeat;
  			background-attachment: fixed;
  			background-size: 100% 100%;
  			backgroubd-filter: blur(8px);
  			background-webkit-filter: blur(8px);
  
			 }
   	</style>
	<style>
		.header {
  			padding: 0.1px;
  			text-align: center;
    		left: 50%;
    		margin-left: -630px;
  			background: #1abc9c;
 	 		color: white;
  			font-size: 25px;
				}
	</style>
	<style>
.menu-bar{
padding: 5px;
background:#1abc9c;
text-align:center;
}
.menu-bar ul{

display:inline-flex;
list-style:none;
color: #fff;
}
.menu-bar ul li{

width:180px;
margin:5px;
padding:5px;
}
.menu-bar ul li a{
text-decoration:none;
color:#fff;
}
.active, .menu-bar ul li:hover
{

background:#23ccab;
border-radius:3px;
}
.menu-bar .ion{

margin-right:8px;
}

</style>
<body>
<div class="menu-bar">
<ul>
		<li class="active" >PET SHOP</li>
		<li style="margin-left: 1110px"><ion-icon name="log-out"></ion-icon>
		<a href="#">Logout</a></li>
  	</ul>
  	</div>
	</div>
		<div id="centerwrap"> 
	<center><h5 id="blink">
        IF YOU ARE A NEW USER PLEASE CREATE AN ACCOUNT
    		</h5></center>
      		<script type="text/javascript">
        var blink = document.getElementById('blink');
 		setInterval(function () {
            blink.style.opacity = (blink.style.opacity == 0 ? 1 : 0);
        						}, 1000); 
    </script></br>
    <center><style>
  			.pushable {
    			background: hsl(340deg 100% 32%);
				border-radius: 12px;
				border: none;
				padding: 0;
				cursor: pointer;
				outline-offset: 4px;
  					  }
  			.front {
			    display: block;
			    padding: 8px 2px;
			    border-radius: 12px;
			    font-size: 1rem;
			    background: hsl(340deg 100% 47%);
			    color: white;
			    transform: translateY(-6px);
  					}

  			.pushable:active .front {
    			transform: translateY(-2px);
  									}
			</style>
				<button class="pushable">
  				<span class="front">
  				<ion-icon name="create"></ion-icon>
				<a style="color:white;text-decoration: none"  href="/registration" >Create An Account</a></span></button></center></br></br>
	
			<center>
				<blink><h5>EXSISTING USER ACCOUNT CAN LOGIN HERE</h5></blink></br>
			</center>

			<center>
				<style>
 					 .pushable {
						    background: hsl(340deg 100% 32%);
						    border-radius: 12px;
						    border: none;
						    padding: 0;
						    cursor: pointer;
						    outline-offset: 4px;
  								}
  					.front {
    						display: block;
						    padding: 8px 2px;
						    border-radius: 12px;
						    font-size: 1rem;
						    background: hsl(330deg 100% 47%);
						    color: pink;
						    transform: translateY(-6px);
  							}

 					 .pushable:active .front {
    						transform: translateY(-2px);
  							}
			</style>

			<button class="pushable">
  				<span class="front"><ion-icon name="log-in"></ion-icon>
					<a style="color:white;text-decoration: none" href="/login" >Login To User Account</a>
				</span>
			</button></center></br></br>
	
	

			<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
			<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
			
			<center>	
				<h1 style="color:white;font-size: 50px;">Its all about the pets</h1>
			</center>
		<style type="text/css">

				*{
					 margin: 0;
					 padding: 0;
					 font-family:'popping',sans-serif;

				 }
				#centerwrap { 
				    position: absolute;
				    top: 170px;
				    left: 45%;
				    margin-left: -500px; 
				            } 
       <style type="text/css"> 

</div>
</body>
</html>