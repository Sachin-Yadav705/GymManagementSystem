<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s" %>
   <%@include file="adminLOGdash.jsp" %>
   <%@include file="ORDER.jsp" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">
    <script src="js/jquery-3.3.1.min.js"></script> 
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Order</title>
</head>
<body>
<section>
<div class="wrap-contact100">	 
<div class="form">

<c:if test="${ord eq null}">
<fieldset>
 <legend align="center"><h1>search ORDER</h1></legend>
<s:form action="SearchOrderTOUpdate" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="orderid"  label="Enter VALID Id " id="OrderUpdt"></s:textfield>
<s:submit cssClass="btn" value="search"  align="center" id="submit"></s:submit>
</s:form>
</fieldset>
</c:if>
 
<c:if test="${ord ne null}">
<fieldset>
 <legend align="center"><h1>Update Details</h1></legend>
<s:form action="ORDERUpdateForm" method="post">
<s:hidden name="orderid" value="%{#request.ord.orderid}"></s:hidden>
<s:textfield cssClass="label" name="usid" label="Enter user ID" value="%{#request.ord.usid}"></s:textfield>
<s:textfield cssClass="label" name="orddate" label="DATE" value="%{#request.ord.orddate}"></s:textfield>
<s:textfield cssClass="label" name="ordamt" label="Amount" value="%{#request.ord.ordamt}"></s:textfield>
<s:textfield cssClass="label" name="orddeladdress" label="Address" value="%{#request.ord.orddeladdress}"></s:textfield>
<s:textfield cssClass="label" name="ordstatus" label="Status" value="%{#request.ord.ordstatus}"></s:textfield>

<s:submit cssClass="btn" value="UPDATE"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>
</div></div>

</section>
<script src="js/main.js"></script>

</body>
</html>