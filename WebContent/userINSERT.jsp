<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
     <%@include file="adminLOGdash.jsp" %>
      <%@include file="USER.jsp" %>
      <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">

 <script src="js/jquery-3.3.1.min.js"></script>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>user details</title>
</head>
<body>
<section>
<div class="wrap-contact100">	 
<div class="form">
<fieldset>
 <legend align="center"><h1 >USER FORM</h1></legend>
<s:form action="insertuser" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="name" label="Enter Name" id="uname"></s:textfield>
<s:textfield cssClass="label" name="address" label="Enter Address" id="add"></s:textfield>
<s:textfield cssClass="label" name="phno" label="Enter phone No." id="ph"></s:textfield>
<s:textfield cssClass="label" name="email" label="Enter email" id="Emal"></s:textfield>
<s:password cssClass="label" name="password" label="Enter Password" id="pswd"></s:password>
<s:submit cssClass="btn" value="Register User" id="submit"  align="center"></s:submit>
</s:form>
</fieldset>
</div>
</div> 

</section>

<script src="js/main.js"></script>

</body>
</html>