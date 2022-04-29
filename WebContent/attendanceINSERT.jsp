<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
    <%@include file="adminLOGdash.jsp" %>
    <%@include file="ATTENDANCE.jsp" %>
     <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">
     <script src="js/jquery-3.3.1.min.js"></script>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ATTENDANCE</title>
</head>
<body> 
<section>

<div class="wrap-contact100">	 
<div class="form">
 <fieldset>
 <legend align="center"><h1>MEMBER ATTENDANCE</h1></legend>
<br>
<s:form  action="insertattendance" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="usid" label="MEMBER ID" id="AttUsrid"></s:textfield><br>
 <s:radio cssClass="label" name="status" label="Status" id="Attstatus"  list="{'Present','Absent'}"/>
<s:textfield cssClass="label" name="attdate" label="Date"></s:textfield>

<s:submit cssClass="btn" value="Submit"  id="submit" align="center"></s:submit>
</fieldset>
</s:form>
</div>
</div> 
	  

</section>
<script src="js/main.js"></script>

</body>
</html>