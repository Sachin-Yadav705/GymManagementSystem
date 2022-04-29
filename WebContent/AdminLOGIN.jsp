<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN ADMIN</title>
<link rel="stylesheet" href="ADMINLOGIN/css/style.css" type="text/css" media="all" />
</head>
<body>
<section class="w3l-forms-23">
		<div class="forms23-block-hny">
			<div class="wrapper">
				<h1>ADMIN LOGIN</h1>
				
				<div class="d-grid forms23-grids">
					<div class="form23">
						<div class="main-bg">
							<h6 class="sec-one">Fitness Hour</h6>
							<div class="speci-login first-look">
								<img src="ADMINLOGIN/images/user.png" alt="" class="img-responsive">
							</div>
						</div>
						<div class="bottom-content">

<s:form action="LoginAdmin" method="post">    
   
	 <s:textfield cssClass="input-form" name="adminid"  placeholder="Your Register Id"/>   
   	<s:textfield cssClass="input-form" name="password" type="password" placeholder="Your Password" required="required"/>
   
      <s:submit value="Login" cssClass="btn btn-primary btn-block btn-large"/>
   </s:form>    
   <p>Not a admin yet? <a href="adminINSERT.jsp">Join Now!</a></p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	
</body>
</html>