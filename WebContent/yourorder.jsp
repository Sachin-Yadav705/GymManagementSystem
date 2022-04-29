<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
       <%@taglib uri="/struts-tags" prefix="s" %>
      <%@include file="UserLOGdash.jsp" %>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section>
<div class="cartlist">
<table border="1" align="center" class="table table-striped">
<tr>
<th  scope="col">USER ID</th>
<th  scope="col">ORDER DATE</th>
<th  scope="col">AMOUNT</th>
<th  scope="col">Delivery Address</th>
<th  scope="col">Status</th>

</tr>
<s:iterator value="ordlist" var="oder">
<tr>
<td><c:out value="${oder.usid}"></c:out></td>
 <td><c:out value="${oder.orddate}"></c:out></td>
<td><c:out value="${oder.ordamt}"></c:out></td>
<td><c:out value="${oder.orddeladdress}"></c:out></td>
<td><c:out value="${oder.ordstatus}"></c:out></td> 
</tr>
</s:iterator>
</table>
</div>
</section>
</body>
</html>