<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
    <%@include file="ORDER.jsp" %>
     <%@include file="adminLOGdash.jsp" %>
      <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">
      <script src="js/jquery-3.3.1.min.js"></script>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ORDER DETAILS</title>
</head>
<body>
<section>

<div class="wrap-contact100">	 
<div class="form">
<fieldset>
 <legend align="center"><h1>order FORM</h1></legend>


<s:form action="insertorder" method="post" style="padding-left: 50px;">

<%-- <s:textfield cssClass="label" name="usid" label="Enter USER ID" id="submit"></s:textfield> --%>
 <%-- <s:textfield cssClass="label" name="orddate" label="Date"></s:textfield>  --%>
<s:date  name="orddate" />
<%-- <s:textfield cssClass="label" name="ordamt" label="Amount" id="submit"></s:textfield> --%>
<s:textfield cssClass="label" name="orddeladdress" label="Delivery Address" id="submit"></s:textfield>
<s:textfield cssClass="label" name="ordstatus" label="Status" id="submit"></s:textfield>

<s:submit cssClass="btn" value="Confirm Order" id="submit" align="center"></s:submit>
</s:form>
</fieldset>
</div>
</div> 

</section>
<script src="js/main.js"></script>
</body>
</html>