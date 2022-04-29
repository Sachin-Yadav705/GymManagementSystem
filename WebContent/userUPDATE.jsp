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
<s:form action="SearchUsertoUPDATE" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="userid"  label="Enter Id To Search"></s:textfield>
<s:submit cssClass="btn" value="search" id="submit"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>
<c:if test="${usr ne null}">
<fieldset>
 <legend align="center"><h1>Update Details</h1></legend>
<s:form action="UpdateUser" method="post">
<s:hidden name="userid" value="%{#request.usr.userid}"></s:hidden>
<s:textfield cssClass="label" name="name" label="Enter Name" value="%{#request.usr.name}"></s:textfield>
<s:textfield cssClass="label" name="address" label="Enter Address" value="%{#request.usr.address}"></s:textfield>
<s:textfield cssClass="label" name="phno" label="Enter phone No." value="%{#request.usr.phno}"></s:textfield>
<s:textfield cssClass="label" name="email" label="Enter email" value="%{#request.usr.email}"></s:textfield>
<s:textfield cssClass="label" name="password" label="Enter Password" value="%{#request.usr.password}"></s:textfield>

<s:submit cssClass="btn" value="UPDATE"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>
</div></div>

</section>
<script src="js/main.js"></script>
</body>
</html>