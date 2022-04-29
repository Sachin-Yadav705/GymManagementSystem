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
 <legend align="center"><h1>search ATTENDANCE</h1></legend>
<s:form action="SearchAttenTOUpdate" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="attid"  label="Enter Id To Search"  id="Attendupdt"></s:textfield>
<s:submit cssClass="btn" value="Search" id="submit"  align="center"></s:submit>

</s:form>
</fieldset>
</c:if>
 
<c:if test="${att ne null}">
<fieldset>
 <legend align="center"><h1>Update Details</h1></legend>
<s:form action="AdminUpdateForm" method="post">
<s:hidden name="attid" value="%{#request.att.attid}"></s:hidden>
<s:textfield  cssClass="label" name="usid" label="USER ID" value="%{#request.att.usid}"></s:textfield>
<s:textfield cssClass="label" name="attdate" label="Date" value="%{#request.att.attdate}"></s:textfield>
<s:textfield cssClass="label" name="status" label="status" value="%{#request.att.status}"></s:textfield>
<s:submit cssClass="btn" value="UPDATE"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>
</div></div>


</section>
<script src="js/main.js"></script>
</body>
</html>