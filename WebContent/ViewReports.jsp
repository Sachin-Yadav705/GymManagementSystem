<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css1/style.css">
</head>
<body>
<h1> View All Reports</h1>
<table border="1" id="customers">
<tr>
<th>USER</th>
<th>ADMIN</th>
<th>ATTENDANCE</th>
<th>ORDER</th>   
<th>PACKAGE</th>
<th>PAYMENT</th>
<th>PRODUCT</th>
</tr>
<tr>

<td><ul><li><a href="userViewAction">View ALL USER</a></li></ul></td>
<td><ul><li><a href="adminViewAction">View ALL ADMIN</a></li></ul></td>
<td><ul><li><a href="ATTENDANCEViewAction">View ALL ATTENDANCE</a></li></ul></td>
<td><ul><li><a href="orderViewAction">View ALL ORDER</a></li></ul></td> 
<td><ul><li><a href="PackageViewAction">View ALL Package</a></li></ul></td>
<td><ul><li><a href="PaymentViewAction">View ALL Payment</a></li></ul></td>
<td><ul><li><a href="ProductViewAction">View ALL Product</a></li></ul></td>
</tr>


<tr>
<td><a href="userINSERT.jsp">INSERT USER</a></td>
<td><a href="adminINSERT.jsp">INSERT ADMIN</a></td>
<td><a href="attendanceINSERT.jsp">INSERT ATTENDANCE</a></td>
<td><a href="orderINSERT.jsp">INSERT ORDER</a></td>
<td><a href="packageINSERT.jsp">INSERT Package</a></td>
<td><a href="paymentINSERT.jsp">INSERT Payment</a></td>
<td><a href="productINSERT.jsp">INSERT Product</a></td>
</tr>

<tr>
<td><a href="userSEARCH.jsp">SEARCH USER</a></td>
<td><a href="adminSEARCH.jsp">SEARCH ADMIN</a></td>
<td><a href="attendanceSEARCH.jsp">SEARCH ATTENDANCE</a></td>
<td><a href="orderSEARCH.jsp">SEARCH ORDER</a></td>
<td><a href="packageSEARCH.jsp">SEARCH Package</a></td>
<td><a href="paymentSEARCH.jsp">SEARCH Payment</a></td>
<td><a href="productSEARCH.jsp">SEARCH Product</a></td>
</tr>


<tr>
<td><a href="userUPDATE.jsp">UPDATE USER</a></td>
<td><a href="adminUPDATE.jsp">UPDATE ADMIN</a></td>
<td><a href="attendanceUPDATE.jsp">UPDATE ATTENDANCE</a></td>
<td><a href="orderUPDATE.jsp">UPDATE ORDER</a></td>
<td><a href="packageUPDATE.jsp">UPDATE Package</a></td>
<td><a href="paymentUPDATE.jsp">UPDATE Payment</a></td>
<td><a href="productUPDATE.jsp">UPDATE Product</a></td>
</tr>

<tr>
<td><a href="userDELETE.jsp">DELETE USER</a></td>
<td><a href="adminDELETE.jsp">DELETE ADMIN</a></td>
<td><a href="attendanceDELETE.jsp">DELETE ATTENDANCE</a></td>
<td><a href="orderDELETE.jsp">DELETE ORDER</a></td>
<td><a href="packageDELETE.jsp">DELETE Package</a></td>
<td><a href="paymentDELETE.jsp">DELETE Payment</a></td>
<td><a href="productDELETE.jsp">DELETE Product</a></td>
</tr>





</table>
</body>
</html>