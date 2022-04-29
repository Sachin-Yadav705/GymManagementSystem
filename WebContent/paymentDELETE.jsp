<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@include file="adminLOGdash.jsp" %>
     <%@include file="PAYMENT.jsp" %>
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

<c:if test="${pay eq null}">
<fieldset>
 <legend align="center"><h1>search PAYMENT</h1></legend>
<s:form action="SearchpaytoDELETE" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="payid"  label="Enter Id To Search"></s:textfield>
<s:submit cssClass="btn" value="Search"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>

<c:if test="${pay ne null}">
<fieldset>
 <legend align="center"><h1>PAYMENT Details</h1></legend>
<br><br>

<table border=1 >
<tr>
<th>USER ID</th>
<th>ORDER ID</th>
<th>AMOUNT</th>
<th>DATE</th>   
<th>MODE</th>
<th>Function</th>
</tr>
<tr>

<td><c:out value="${pay.usid}"></c:out></td>
<td><c:out value="${pay.orderid}"></c:out></td>
<td><c:out value="${pay.payamt}"></c:out></td>
<td><c:out value="${pay.paydate}"></c:out></td>
<td><c:out value="${pay.paymode}"></c:out></td>
<td><a href="PaymentdeleteAction?payid=${pay.payid}" cssClass="btn"  align="center">Delete</a></td>
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