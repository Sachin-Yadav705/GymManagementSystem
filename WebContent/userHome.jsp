<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="UserLOGdash.jsp" %> 
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section>

<div class="image">
		<img src="USERLOGIN/Images/home.jpg" alt="">
		
		<c:if test="${loginid_sess ne null}">
	<h2>WELCOME <span>${loginid_sess}<span></h2>

</c:if>
 <h1>It's <span>gym</span> time. Let's go</h1>
  	 	  <h3>We are ready to <span>fit you</span></h3>
		</div>
		</section>
</body>
</html>