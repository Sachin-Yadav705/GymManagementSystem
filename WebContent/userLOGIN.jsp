 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="USERLOGIN/style.css">
<link href="fontawesome/css/all.css" rel="stylesheet">
</head>
<body>
<div class="login">
<div class="avatar">
						<img src="USERLOGIN/Images/user login.png" alt="AVATAR">
					</div>
<h1>Member LOGIN</h1>
<s:form action="UserLoginAction" method="post" cssClass="form">  
     
	<s:textfield cssClass="input" name="userid"  placeholder="USER ID"  />   <br>
   	<s:textfield cssClass="input" name="password" type="password" placeholder="PASSWORD" required="required"  />
   
   <s:submit value="Login" cssClass="btn btn-primary btn-block btn-large" /> 
   </s:form>  
   <div class="text">
						<a class="txt2" href="#">
							Create your Account
							<i class="fas fa-long-arrow-alt-right"></i>
						</a>
   </div>
   </div>
</body>
</html>