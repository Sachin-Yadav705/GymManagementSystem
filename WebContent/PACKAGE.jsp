<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@include file="adminLOGdash.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <section> 
 <span><h1>Packages</h1></span>
 
   <div class="cards">
    
    <div class="card">

      <img src="ADMINLOGIN/images/ui.png">
      <a href="packageINSERT.jsp">Add</a>
    </div>

    <div class="card">
      <img src="ADMINLOGIN/images/interface.png">
      <a href="packageSEARCH.jsp">Search</a>
    </div>

    <div class="card">
      <img src="ADMINLOGIN/images/web.png">
      <a href="packageUPDATE.jsp">Update</a>
    </div>

    <div class="card">
      <img src="ADMINLOGIN/images/button.png">
      <a href="packageDELETE.jsp">Delete</a>
    </div>

    <div class="card">
      <img src="ADMINLOGIN/images/analytics.png">
      <a href="PackageViewAction">Report</a>
    </div>
  </section>
</body>
</html>