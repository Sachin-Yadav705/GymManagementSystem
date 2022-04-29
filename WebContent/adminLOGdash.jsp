<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
     <title>Welcome Admin</title>
    <link rel="stylesheet" href="ADMINLOGIN/css/ADMINDash.css">
	<link href="fontawesome/css/all.css" rel="stylesheet">
	  </head>
  <body>

  <div class="header">
     <img src="ADMINLOGIN/images/logo10.png" alt="">

     <p>Welcome To Admin Panel</p>
     
       <c:if test="${loginid_sess ne null}">
	
	<h5> ${adminnm_sess}</h5>
	
	</c:if>
         
         <div class="dropdown">
     
  <div class="dropbtn"><i class="fas fa-user-circle"></i></div>
  <div class="dropdown-content">
    <a href="SearchAdminTOUpdate?adminid=${loginid_sess}">EDIT PROFILE</a>
    <a href="adminlogoutAction">LOGOUT<i class="fas fa-sign-out-alt"></i></a>
    
  </div>
</div>

  </div>
    <div class="sidebar">
    
  <ul>
    <li><a href="adminHome.jsp"><i class="fas fa-home"></i>Home</a></li>
    <li><a href="PACKAGE.jsp"><i class="fas fa-box-open"></i>Packages</a></li>
    <li><a href="PRODUCT.jsp"><i class="fas fa-dumbbell"></i>Products</a></li>
    <li><a href="USER.jsp"><i class="fas fa-users"></i>Members Info</a></li>
    <li><a href="ATTENDANCE.jsp"><i class="fas fa-clipboard-list"></i>Attendances</a></li>
    <li><a href="ORDER.jsp"><i class="fas fa-shopping-cart"></i>Orders</a></li>
    <li><a href="PAYMENT.jsp"><i class="fas fa-dollar-sign"></i>Payments</a></li>
  </ul>
</div>

<div class="image"><img src="ADMINLOGIN/images/ee.jpg" alt=""></div>

  <!-- <section> 
  
  </section>
    -->
</body>
</html>