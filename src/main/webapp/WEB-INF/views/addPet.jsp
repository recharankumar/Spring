<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Pet</title>
<link rel="shortcut icon" type="image/jpg" href="https://play-lh.googleusercontent.com/R6PyCHkiSk4O4WEWPCF6j86S_26AzBEenRF_19QFQw1eFV-OnJYtiYgK_1QF-FuNX7eg=w240-h480-rw"/>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>


</head>
	<style>
		body {
  			background-image: url('https://t3.ftcdn.net/jpg/02/98/20/18/360_F_298201821_e90YxH0f6FBwOvcKhynlwF8sNYxlCMsg.jpg');
 			background-repeat: no-repeat;
  			background-attachment: fixed;
  			background-size: 100% 100%;
  			backgroubd-filter: blur(8px);
  			background-webkit-filter: blur(8px);
            }
   
	</style>
	  	
	<style>
.menu-bar{
padding: 0.1px;
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
<style>
.main{
width:30px;
padding:180px;
position:absolute;
top:300px;
left: 750px;
transform: translate(-50%,-50%);
background-color: rgba(0, 0, 0, 0.1);
    
backdrop-filter: blur(5px);
}
</style>
<style>
  		.pushable {
    		background: #287566;
    		border-radius: 12px;
    		border: none;
    		padding: 0;
    		cursor: pointer;
    		outline-offset: 4px;
  				  }
  		.front {
    		display: block;
    		padding: 5px 12px;
    		border-radius: 12px;
    		font-size: 1rem;
    		background: #23ccab;
    		color: #23ccab;
    		transform: translateY(-6px);
  				}

  		.pushable:active .front {
    		transform: translateY(-2px);
  								}
	</style>
	<style> 
   	input[type=text] {
   	    display: block;
   	    width:220px;
   	    height:20px;
   	    background: rgba(0,0,0,0.3);
   	    outline: none;
   	    border: 5px solid #23ccab;
   	    margin-bottom:10px;
   	    padding-left:10px;
   	    border-radius:5px;
  		background-color:	white;
  		color: black;
  		font-family:Lucida Console;
  		text-align: left;
   					}
</style>
 <style type="text/css">
        div {
            text-align: center;
        }
  
        #heading {
            font-weight: 700;
        }
    </style>
    <style>
    #centerwrap { 
    position: absolute;
    top: -30px;
    left: 150%;
    margin-left: -500px; 
}
    </style>
<body>
<div class="menu-bar">
<ul>
		<li class="active" >PET SHOP</li>
		<li><ion-icon name="home"></ion-icon><a href="#">Home</a></li>
		<li><a href="#">My Pet</a></li>
		<li class="active"><a href="/add">Add Pet</a></li>
		<li style="margin-left: 520px"><ion-icon name="log-out"></ion-icon>
		<a href="#">Logout</a></li>
  	</ul>
  	</div>
	

<form:form action="/savepet" method="post" modelAttribute="addpet">

<center><div class="main">
<div  id="centerwrap">
<h3 style="text-align: left">Pet Information</h3>,</br></br>
	<h5 style="text-align: left">Pet Name:</h5>
	<form:input type="text" path="Petname" /></br></br>
	<h5 style="text-align: left">Age:</h5>
	<form:input type="text" path="Petage" /></br></br>
	<h5 style="text-align: left">Place:</h5>
	<form:input type="text" path="Petplace" /></br></br>
	<form:button class="pushable" type="submit" value="add"><span class="front"><a style="color:white;text-decoration: none">Add Pet</a></span></form:button>
   
    <button class="pushable" type="reset" value="submit" >
			<span class="front"><a style="color:white;text-decoration: none">Reset</a>
			</span>
		</button>
</form:form>
</center>
<style type="text/css">
		*{
 			margin: 0;
 			padding: 0;
 			font-family:'popping',sans-serif;

		}
	</div>	
</body>
</html>