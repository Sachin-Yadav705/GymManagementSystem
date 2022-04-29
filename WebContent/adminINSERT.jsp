<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
    <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN</title>
</head>
<body>
 
<div class="form"> 
<center><h1 style="margin-top: 50px;">ADMIN FORM</h1></center>
<s:head/>
<s:form action="insertadmin" method="post" name="form" style="padding-left: 500px;">

<s:textfield cssClass="label" name="name" label="Enter Name" ></s:textfield>
<s:textfield cssClass="label" name="address" label="Enter Address" ></s:textfield>
<s:textfield cssClass="label" name="phno" label="Enter phone No." ></s:textfield>
<s:textfield cssClass="label" name="email" label="Enter email"></s:textfield>
<s:textfield cssClass="label" name="password" label="Enter Password"></s:textfield>

<s:submit cssClass="btn" value="Register Here" align="center"></s:submit>
</s:form>

</div>



</body>
</html>