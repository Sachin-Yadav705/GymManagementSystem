<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="adminLOGdash.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section> 
<span><h1>MEMBERS</h1></span>
  <div class="cards">
    
    <div class="card">

      <img src="ADMINLOGIN/images/ui.png">
      <a href="userINSERT.jsp">Add</a>
    </div>

    <div class="card">
      <img src="ADMINLOGIN/images/interface.png">
      <a href="userSEARCH.jsp">Search</a>
    </div>

    <div class="card">
      <img src="ADMINLOGIN/images/web.png">
      <a href="userUPDATE.jsp">Update</a>
    </div>

    <div class="card">
      <img src="ADMINLOGIN/images/button.png">
      <a href="userDELETE.jsp">Delete</a>
    </div>

    <div class="card">
      <img src="ADMINLOGIN/images/analytics.png">
      <a href="userViewAction">Report</a>
    </div>
  </section>
</body>
</html>