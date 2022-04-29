<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="/struts-tags" prefix="s" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@include file="UserLOGdash.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<section>
<div class="shopping">

<s:iterator value="packlist" var="pk">
<div class="package">


<h1>${pk.packname}</h1>
<p class="price">${pk.packfee}&nbsp; &nbsp; 
${pk.packcategory}</p> 
<p class="month">${pk.packduration}&nbsp;Month</p>
<p class="des">${pk.packdescription}</p>

<p><button><a href="#">Select</a></button></p>


</div>
</s:iterator>

 

</body>
</html>