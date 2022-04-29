<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="/struts-tags" prefix="s" %>
 <%@include file="adminLOGdash.jsp" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
 
<c:if test="${adm ne null}">
<fieldset>
 <legend align="center"><h1>Update Details</h1></legend>
<s:form action="AdminUpdateForm" method="post" style="padding-left: 50px;">
<s:hidden name="adminid" cssClass="label" value="%{#request.adm.adminid}"></s:hidden>
<s:textfield name="name" cssClass="label" label="Enter Name" value="%{#request.adm.name}"></s:textfield>
<s:textfield name="address" cssClass="label" label="Enter Address" value="%{#request.adm.address}"></s:textfield>
<s:textfield name="phno" cssClass="label" label="Enter phone No." value="%{#request.adm.phno}"></s:textfield>
<s:textfield name="email" cssClass="label" label="Enter email" value="%{#request.adm.email}"></s:textfield>
<s:textfield name="password" cssClass="label" label="Enter Password" value="%{#request.adm.password}"></s:textfield>
</fieldset>
<s:submit cssClass="btn" value="UPDATE"></s:submit>
</s:form>
</c:if>




</div>
</div> 
</section>
</body>
</html>