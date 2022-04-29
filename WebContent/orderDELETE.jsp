<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
   <%@include file="adminLOGdash.jsp" %>
   <%@include file="ORDER.jsp" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">
    
    <script src="js/jquery-3.3.1.min.js"></script>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
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
<c:if test="${ord eq null}">
<fieldset>
 <legend align="center"><h1>search order</h1></legend>
<s:form action="SearchOrdertoDELETE" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="orderid"  label="Enter Valid Id " id="OrderDel"></s:textfield>
<s:submit cssClass="btn" value="Search" id="submit"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>

<c:if test="${ord ne null}">
<fieldset>
 <legend align="center"><h1>Order Details</h1></legend><br><br>

	
<table border=1 >
<tr>
<th>User id</th>
<th>Date</th>
<th>Amount</th>
<th>Delivery Address</th>   
<th>Status</th>
<th>Function</th>
</tr>
<tr>

<td><c:out value="${ord.usid}"></c:out></td>
<td><c:out value="${ord.orddate}"></c:out></td>
<td><c:out value="${ord.ordamt}"></c:out></td>
<td><c:out value="${ord.orddeladdress}"></c:out></td>
<td><c:out value="${ord.ordstatus}"></c:out></td>
<td><a href="OrderdeleteAction?orderid=${ord.orderid}" cssClass="btn"  align="center">Delete</a></td>
</tr>
</table>
</fieldset>
</c:if>
</div></div>


</section>
<script src="js/main.js"></script>
</body>
</html>