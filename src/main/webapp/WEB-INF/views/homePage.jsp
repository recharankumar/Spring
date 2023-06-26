<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
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
  			display:grid;
  			place-items:center;
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
.table{
width:600px;
padding:0px;
position:absolute;
top:150px;
height:20vh;
box-shadow: -1px 12px 12px -6px rgba(0,0,0,0.5);
}
.table, td , th{
font-family:Franklin Gothic Medium;
padding:20px;
border:1px solid lightgray;
}
td{
front-size:30px;
}
tr{
background-color: white;
}
tr:hover{
background-color: #23ccab;
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
<body>

<div class="menu-bar">
<form:form action="/buy" method="post" modelAttribute="mypet">
<ul>
		<li class="active" >PET SHOP</li>
		<li class="active"><ion-icon name="home"></ion-icon><a href="#">Home</a></li>
		<li><a href="#">My Pet</a></li>
		<li><a href="/add">Add Pet</a></li>
		<li style="margin-left: 570px"><ion-icon name="log-out"></ion-icon>
		<a href="#">Logout</a></li>
  	</ul>
  	</div>
 
<h1>Welcome ${userdetails.username}</h1></br></br>
<h3>Pet Details
</h3>


<table class="table"  align="center" style="width:50%;text-align:center;border-collapse:collapse;background-color:gold;">
<tr style="background-color:#1ec9a8;color:white;">
<th>Pet id</th>
<th>pet Name</th>
<th>pet age</th>
<th>pet place</th>
<th>Buy</th>
</tr>
<c:forEach items="${petsList}" var="pet">
<tr>
<td>${pet.petid}</td>
<td>${pet.petname}</td>
<td>${pet.petage}</td>
<td>${pet.petplace}</td>
<td><button class="pushable"> 
				<span class="front"><a style="color:white;text-decoration: none" href="#">Buy</a></span></button></td>
</tr>
</c:forEach>

</table>
<style type="text/css">
		*{
 			margin: 0;
 			padding: 0;
 			font-family:'popping',sans-serif;
 			box-sizing:border-box;

		}
</form:form>
</body>
</html>