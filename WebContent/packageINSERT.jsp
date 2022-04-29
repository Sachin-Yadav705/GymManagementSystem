<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
     <%@include file="adminLOGdash.jsp" %>
     <%@include file="PACKAGE.jsp" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Package Details</title>
<link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">
<script src="js/jquery-3.3.1.min.js"></script>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
  
<section>
<div class="wrap-contact100">	 
<div class="form">
<fieldset>
 <legend align="center"><h1>ADD Package</h1></legend>
<s:form action="insertpackage" method="post" style="padding-left: 50px;">
<s:select cssClass="label" name="packname" label="Package Name" id="packname" list="{'Weakly','Monthly','Quarterly','Half Yearly','Annually'}"></s:select>
<s:select cssClass="label" name="packcategory" label="category" id="packcat" list="{'Fit','Supreme','Premium','Platinum'}"></s:select>
<s:textfield cssClass="label" name="packfee" label="Fee" id="packfee"></s:textfield>
<s:select cssClass="label" name="packduration" label="Duration(Month)" id="packtime" list="{'1','3','6','8','12'}"></s:select>
<s:textarea cssClass="label" name="packdescription" label="Description" id="packdescpt"></s:textarea>
<s:submit cssClass="btn" align="center" id="submit"></s:submit>
</fieldset>
</s:form>
</div>
</div> 
</section>

<script src="js/main.js"></script>

</body>
</html>