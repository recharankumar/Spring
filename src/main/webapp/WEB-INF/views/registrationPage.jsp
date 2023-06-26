<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign In Page</title>
     	<link rel="shortcut icon" type="image/jpg" href="https://play-lh.googleusercontent.com/R6PyCHkiSk4O4WEWPCF6j86S_26AzBEenRF_19QFQw1eFV-OnJYtiYgK_1QF-FuNX7eg=w240-h480-rw"/>
        	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
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
<style type="text/css">
	.buttonSubmit {
	 color: white;
	 background-color: #FFC0CB;
	 font-size: 1.5em;
	 border: 1px solid #660;
	 padding: 4px;
				  }
</style>
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
	    padding: 8px 12px;
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
<style>
      div {
        margin-bottom: 10px;
      }
      label {
        display: inline;
        width: 150px;
        text-align: center;
      }
</style>

<style> 
   	input[type=text] {
   	    display: block;
   	    width:220px;
   	    height:20px;
   	    background: rgba(0,0,0,0.3);
   	    outline: none;
   	    border: 0.5px solid #FF1493;
   	    margin-bottom:10px;
   	    padding-left:10px;
   	    border-radius:5px;
  		background-color:	white;
  		color: black;
  		font-family:Lucida Console;
   					}
</style>

<style>
	.header {
  		padding: 0.1px;
  		text-align: center;
    	left: 50%;
    	margin-left: -740px;
  		background: #1abc9c;
  		color: white;
  		font-size: 25px;
			}
</style>

<style type="text/css">
.main{
width:20px;
padding:170px;
position:absolute;
top:300px;
left: 300px;
transform: translate(-50%,-50%);
background-color: rgba(0, 0, 0, 0.1);
    
backdrop-filter: blur(5px);


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
   <div class="main">
<div  id="centerwrap">
	<form:form action="/save" method="post" modelAttribute="userform">  
	<div>
	<h5>Create an account</h5></br>
	<label for="username" style="color: #FF1493"><ion-icon name="person-add"></ion-icon></label>
	
	<form:input type="text" path="username" placeholder="User Name" /></div></br></br>
	<form:errors path="username" />
	<div><label for="pwd" style="color: #FF1493"><ion-icon name="lock-closed"></ion-icon>
	</label>
	<form:input type="text" path="password" placeholder="Password"/></div></br></br>
	<form:errors path="password" />
	<div><label for="conformpassword" style="color: #FF1493"><ion-icon name="lock-open"></ion-icon></label>
	<form:input type="text" path="confirmPassword" placeholder="Conform Password"/></div></br>
	<form:errors path="confirmPassword" />
	<center>
		<button class="pushable" type="submit" value="submit"> 
			<span class="front"><a style="color:white;text-decoration: none" action="/save" method="post">Submit</a>
			</span>
		</button>
	
		<button class="pushable" type="reset" value="submit" >
			<span class="front"><a style="color:white;text-decoration: none">Reset</a>
			</span>
		</button>
	</center>
	</form:form></br>

	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

<style type="text/css">

*{
	 margin: 0;
	 padding: 0;
	 font-family:'popping',sans-serif;

}
#centerwrap { 
    position: absolute;
    top: 10px;
    left: 158%;
    margin-left: -500px; 


    } 
    
  </div>	
</div>	
</body>
</html>