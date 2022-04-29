<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="USERLOGIN/css/UserLOGdash.css">
	<link href="fontawesome/css/all.css" rel="stylesheet">
</head>
<body>

<nav>
					<div class="leftmenu">
		 				<img src="USERLOGIN/Images/logo10.png">
					</div>

       <div class="rightmenu">
		<ul>
			<li><a id="home" href="userHome.jsp">home</a></li>
			<li><a href="Viewallpack">Packages</a></li>
			<li><a href="viewalldata">Products</a></li>
			<!-- <li><a href="#section4" >services</a></li> -->
			<li><a href="yourorderAction" >Your Orders</a></li>
			
		</ul>
	</div>


<div class="cart"><a href="viewalldatacart"><i class="fas fa-shopping-cart"></i></a></div>  
	   <div class="dropdown">
  <div class="dropbtn"><i class="fas fa-user"></i></div>
  <div class="dropdown-content">
    <a href="SearchUsertoSELFUPDATE?userid=${userid_sess}">EDIT PROFILE</a>
    
    <a href="UserlogoutAction">LOGOUT<i class="fas fa-sign-out-alt"></i></a>
    
  </div>
</div>
	
	</nav>
	
	
		  <div class="image">
		<img src="USERLOGIN/Images/home.jpg" alt="">
		
	
		</div> 
	 
 <section>
	
</section>  
 
 <footer>
	                               
	<div class="footer_about_trainer">
		<h2>About Trainer</h2>
		
	</div>

	<div class="footer_social">
		<h2>Follow us</h2>
		<a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-google-plus"></i></a>
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
		
	</div>

	<div class="footer_contactus">
		<h2>Reach US</h2>
		  <ul class="footer-info">
                            <li>
                                <i class="fa fa-phone"></i>
                                <span>Phone:</span>
                                (12) 345 6789
                            </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <span>Email:</span>
                                Colorlib.info@gmail.com
                            </li>
                            <li>
                                <i class="fa fa-map-marker"></i>
                                <span>Address</span>
                                Iris Watson, Box 283 8562, NY
                            </li>
                        </ul>
	</div>

	


	
</footer>

<div class="copyright">
		<p>The Gym &copy; 2020 Fitness Hour Pvt. Ltd.</p>
	</div>



</body>
</html>