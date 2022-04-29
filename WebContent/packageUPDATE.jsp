<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="/struts-tags" prefix="s" %>
 <%@include file="adminLOGdash.jsp" %>
     <%@include file="PACKAGE.jsp" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<section>
<div class="wrap-contact100">	 
<div class="form">
<c:if test="${pack eq null}">
<fieldset>
 <legend align="center"><h1>search Package</h1></legend>
<br><br>
<s:form action="SearchPackagetoUPDATE" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="packid"  label="Enter Id To Search" id="PackUpdt"></s:textfield>
<s:submit  cssClass="btn" align="center" id="submit" value="Search"></s:submit>
</s:form>
</fieldset>
</c:if>

<c:if test="${pack ne null}">
<fieldset>
 <legend align="center"><h1>Update Details</h1></legend>
<br><br>
<s:form action="Updatepack" method="post">
<s:hidden name="packid" value="%{#request.pack.packid}"></s:hidden>
<s:select cssClass="label" name="packname" label="Package Name" id="packname" list="{'Weakly','Monthly','Quarterly','Half Yearly','Annually'}" value="%{#request.pack.packname}"></s:select>
<s:select cssClass="label" name="packcategory" label="category" id="packcat" list="{'Fit','Supreme','Premium','Platinum'}" value="%{#request.pack.packcategory}"></s:select>
<s:textfield cssClass="label" name="packfee" label="Fee" id="packfee" value="%{#request.pack.packfee}"></s:textfield>
<s:select cssClass="label" name="packduration" label="Duration(Month)" id="packtime" list="{'1','3','6','8','12'}" value="%{#request.pack.packduration}"></s:select>
<s:textarea cssClass="label" name="packdescription" label="Description" id="packdescpt"  value="%{#request.pack.packdescription}"></s:textarea>

<s:submit  cssClass="btn" align="center" value="UPDATE"></s:submit>
</s:form>
</fieldset>
</c:if>
</div></div>

</section>
<script src="js/main.js"></script>
</body>
</html>