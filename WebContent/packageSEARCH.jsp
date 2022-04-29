<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="/struts-tags" prefix="s" %>
 <%@include file="adminLOGdash.jsp" %>
     <%@include file="PACKAGE.jsp" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<section>
<div class="wrap-contact100">	 
<div class="form">
<c:if test="${pack eq null}">
<fieldset>
 <legend align="center"><h1>Search Package</h1></legend>
<br><br>
<s:form action="SearchPACkId" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="packid"  label="Enter Id To Search" id="PackSerch"></s:textfield>
<s:submit  cssClass="btn" align="center" id="submit" value="Search"></s:submit>
</s:form>
</fieldset>
</c:if>

<c:if test="${pack ne null}">
<fieldset>
 <legend align="center"><h1>Package Details</h1></legend>

<br><br>
<table border="1" >
<tr>
<th> Package Name</th>
<th>Category</th>
<th>fee</th>
<th>Duration</th>   
<th>Description</th>   

</tr>
<tr>

<td><c:out value="${pack.packname}"></c:out></td>
<td><c:out value="${pack.packcategory}"></c:out></td>
<td><c:out value="${pack.packfee}"></c:out></td>
<td><c:out value="${pack.packduration}"></c:out></td>
<td><c:out value="${pack.packdescription}"></c:out></td>

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