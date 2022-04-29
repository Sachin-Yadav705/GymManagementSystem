<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@include file="adminLOGdash.jsp" %>
    <%@include file="ATTENDANCE.jsp" %>
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
<c:if test="${att eq null}">
<fieldset>
 <legend align="center"><h1>SEARCH ATTENDANCE</h1></legend><br><br>
<s:form  action="SearchATTENDANCE" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="attid" label="ENTER ID:" id="AttSerch"></s:textfield>
<s:submit cssClass="btn" value="Search" id="submit"  align="center"></s:submit>
</fieldset>
</s:form>
</c:if>

<c:if test="${att ne null}">
<fieldset>
 <legend align="center"><h1>ATTENDANCE DETAILS</h1></legend><br><br>
<table border="1"  align="center">
<tr>
<th>USER ID</th>
<th>DATE</th>
<th>STATUS</th>

</tr>
<tr>
<td><c:out value="${att.usid}"></c:out></td>
<td><c:out value="${att.attdate}"></c:out></td>
<td><c:out value="${att.status}"></c:out></td>
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