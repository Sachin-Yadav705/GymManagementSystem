<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
    <%@include file="adminLOGdash.jsp" %>
     <%@include file="PRODUCT.jsp" %>
     <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css"> 
 <script src="js/jquery-3.3.1.min.js"></script>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
 
</head>
<body>
<section>

<div class="wrap-contact100">	 
<div class="form">
<fieldset>
 <legend align="center"><h1>PRODUCT FORM</h1></legend>

<s:form action="insertproduct" method="post" enctype="multipart/form-data" style="padding-left: 50px;">
<s:textfield cssClass="label" name="proname" label="Product Name" ></s:textfield>
<s:textfield cssClass="label" name="proprice" label="Enter Price" ></s:textfield>
<s:textarea cssClass="label" name="prodescription" label="Description" ></s:textarea>
<s:textfield cssClass="label" name="prodiscount" label="Discount" placeholder="%" ></s:textfield>
<s:file name="fileUpload" label="Select a file to upload" size="30" />
<s:submit cssClass="btn" value="PROCEED" align="center" ></s:submit>
</s:form>
</fieldset>
</div>
</div> 

    </section>
   <script src="js/main.js"></script> 
</body>
</html>