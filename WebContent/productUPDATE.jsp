<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="/struts-tags" prefix="s" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@include file="adminLOGdash.jsp" %>
     <%@include file="PRODUCT.jsp" %>
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
<c:if test="${pro eq null}">
<fieldset>
 <legend align="center"><h1>search Product</h1></legend>
<s:form action="SearchProducttoUPDATE" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="proid"  label="Enter Id To Search" id="proupdt"></s:textfield>
<s:submit cssClass="btn" value="search" id="submit"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>
<c:if test="${pro ne null}">
<fieldset>
 <legend align="center"><h1>Update Details</h1></legend>
<s:form action="UpdatePRODUCT" method="post">
<s:hidden name="proid" value="%{#request.pro.proid}"></s:hidden>
<s:textfield cssClass="label" name="proname" label="Product Name" value="%{#request.pro.proname}"></s:textfield>
<s:textfield cssClass="label" name="proprice" label="Price" value="%{#request.pro.proprice}"></s:textfield>
<s:textfield cssClass="label" name="prodescription" label="Desription" value="%{#request.pro.prodescription}"></s:textfield>
<s:textfield cssClass="label" name="prodiscount" label="Discount" value="%{#request.pro.prodiscount}"></s:textfield>


<s:submit cssClass="btn" value="UPDATE"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>
</div></div>

   </section>
   
   <script src="js/main.js"></script>
</body>
</html>