<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="/struts-tags" prefix="s" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@include file="adminLOGdash.jsp" %>
      <%@include file="USER.jsp" %>
     <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section>
<div class="wrap-contact100">	 
<div class="form">
<c:if test="${usr eq null}">
<fieldset>
 <legend align="center"><h1>search user</h1></legend>
<s:form action="SearchIDtoDELETE" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="userid"  label="Enter Id To Search"></s:textfield>
<s:submit cssClass="btn" value="Search"></s:submit>
</s:form>
</fieldset>
</c:if>

<c:if test="${usr ne null}">
<fieldset>
 <legend align="center"><h1>User Details</h1></legend>


<table border=1 align=center>
<tr>
<th>Name</th>
<th>Address</th>
<th>Phone</th>
<th>Email</th>   
<th>Password</th>
<th>Function</th>
</tr>
<tr>
<td><c:out value="${usr.name}"></c:out></td>
<td><c:out value="${usr.address}"></c:out></td>
<td><c:out value="${usr.phno}"></c:out></td>
<td><c:out value="${usr.email}"></c:out></td>
<td><c:out value="${usr.password}"></c:out></td>
<td><a href="userdeleteAction?userid=${usr.userid}" cssClass="btn"  align="center">Delete</a></td>
</tr>
</table>
</fieldset>
</c:if>
</div>
</div>

</section>
<script src="js/main.js"></script>
</body>
</html>