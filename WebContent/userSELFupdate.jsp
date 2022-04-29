<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="/struts-tags" prefix="s" %>
        <%@include file="UserLOGdash.jsp" %> 
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Update</title>
</head>
<body>
<section>
<div class="wrap-contact100">	 
<div class="form">

<c:if test="${usr ne null}">
<fieldset>
 <legend align="center"><h1>Update Details</h1></legend>
<s:form action="UpdateUserself" method="post">
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

</div>
</div>
</section>
</body>
</html>