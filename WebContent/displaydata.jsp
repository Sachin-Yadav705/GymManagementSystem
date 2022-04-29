<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@include file="UserLOGdash.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>

<section>
<div class="shopping">

<s:iterator value="prolst" var="abb">
<div class="product">

 <img src="data:image/jpg;base64,${abb.imgstr}" width="150" height="150"/>
<h1>${abb.proname}</h1>
<p class="price">${abb.proprice}</p>
<h3>${abb.prodiscount}% </h3>
<p class="des">${abb.prodescription}</p> 

<p>
<button>
<a href="addtocartaction?proid=${abb.proid}">Add to Cart</a>
</button>
</p> 


</div>
</s:iterator>
<div class="pagination">
<a href="#">&laquo;</a>
<c:forEach var="i" begin="1" end="${count}">
<a href="viewalldata?pageno=${i}">${i}</a>
</c:forEach>
<a href="#">&raquo;</a>
</div></div>
</section>


</body>

</html>