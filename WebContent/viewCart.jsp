 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@include file="UserLOGdash.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section>
<div class="cartlist">
<h1> Your Cart Details Is</h1>
<table border=1 width="100%" align="center">
<s:iterator value="cartlist" var="ab">
<tr>

<td>${ab.proid}</td>
<td>${ab.proname}</td>
<td>${ab.proprice}</td>
<td>${ab.prodescription}</td>
<td>${ab.prodiscount}</td>
<td><img src="data:image/jpg;base64,${ab.imgstr}" width="100" height="100"/></td>
<td><a href="deletefromcartaction?proid=${ab.proid}">Delete Product</a></td>

</tr>
</s:iterator>

<tr><td colspan="4">Total Amount is : </td><td>${total}</td></tr>
</table>
<button><a href="paymentINSERT.jsp">Check Out items</a></button>
</div>
</section>
</body>


</html>