<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@include file="adminLOGdash.jsp" %>
     <%@include file="PAYMENT.jsp" %>
     <link rel="stylesheet" href="ADMINLOGIN/css/form-design.css">
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

<c:if test="${pay eq null}">
<fieldset>
 <legend align="center"><h1>search Payment</h1></legend>
<s:form action="SearchPaymenttoUPDATE" method="post" style="padding-left: 50px;">
<s:textfield cssClass="label" name="payid"  label="Enter Id To Search"></s:textfield>
<s:submit cssClass="btn" value="search"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>
<c:if test="${pay ne null}">
<fieldset>
 <legend align="center"><h1>Update Details</h1></legend>
<s:form action="UpdatePAYMENT" method="post">
<s:hidden name="payid" value="%{#request.pay.payid}"></s:hidden>
<s:textfield cssClass="label" name="usid" label="USER ID" value="%{#request.pay.usid}"></s:textfield>
<s:textfield cssClass="label" name="orderid" label="ORDER ID" value="%{#request.pay.orderid}"></s:textfield>
<s:textfield cssClass="label" name="payamt" label="AMOUNT" value="%{#request.pay.payamt}"></s:textfield>
<s:textfield cssClass="label" name="paydate" label="DATE" value="%{#request.pay.paydate}"></s:textfield>
<s:textfield cssClass="label" name="paymode" label="MODE" value="%{#request.pay.paymode}"></s:textfield>

<s:submit cssClass="btn" value="UPDATE"  align="center"></s:submit>
</s:form>
</fieldset>
</c:if>
</div>
</div>

</section>
<script src="js/main.js"></script>
</body>
</html>