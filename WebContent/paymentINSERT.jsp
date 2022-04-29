<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
      <%@include file="UserLOGdash.jsp" %> 
      
       <link rel="stylesheet" href="USERLOGIN/css/UserLOGdash.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
</head>
<body>
<section>

<div class="wrap-contact100">	 
<div class="form">

<h1>TOTAL AMOUNT:${Totalrs}</h1>

<s:form action="insertpayment" method="post">
<%-- <s:textfield cssClass="label" name="usid" label="Enter USER ID"></s:textfield> --%>
<%-- <s:textfield cssClass="label" name="orderid" label="ORDER ID"></s:textfield> --%>
<%-- <s:textfield cssClass="label" name="payamt" label="AMOUNT"></s:textfield> --%>
   <s:textfield cssClass="label" name="orddeladdress" label="Address"></s:textfield>

<br><s:radio cssClass="label" label = "Payment Mode" name = "paymode" list="{'Debit or Credit Card','Paytm'}" />
<s:submit cssClass="btn" value="FINISH"  align="center"></s:submit>
</s:form>

</div>
</div>
</section>
<script src="js/main.js"></script>
</body>
</html>