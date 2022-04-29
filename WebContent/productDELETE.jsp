<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="/struts-tags" prefix="s" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@include file="adminLOGdash.jsp" %>
    <%@include file="PRODUCT.jsp" %>
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
<c:if test="${pro eq null}">
<fieldset>
 <legend align="center"><h1>search Product</h1></legend>
<s:form action="SearchProducttoDELETE" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="proid"  label="Enter Id To Search" id="prodel"></s:textfield>
<s:submit cssClass="btn" value="Search" id="submit"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>

<c:if test="${pro ne null}">
<fieldset>
 <legend align="center"><h1>Product Details</h1></legend>

<table border=1 >
<tr>
<th>Name</th>
<th>PRICE</th>
<th>Description</th>
<th>Discount</th>   
<th>Function</th>
</tr>
<tr>
<td><c:out value="${pro.proname}"></c:out></td>
<td><c:out value="${pro.proprice}"></c:out></td>
<td><c:out value="${pro.prodescription}"></c:out></td>
<td><c:out value="${pro.prodiscount}"></c:out></td>
<td><a href="PRODUCTdeleteAction?proid=${pro.proid}" cssClass="btn"  align="center">Delete</a></td>
</tr>
</table>
</fieldset>
</c:if>
</div></div>

    </section>
    <script src="js/main.js"></script>
</body>
</html>