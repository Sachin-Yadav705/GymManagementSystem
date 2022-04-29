<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:if test="${adm eq null}">
<fieldset>
 <legend align="center"><h1>SEARCH ADMIN</h1></legend>
<s:form  action="SearchAdmin" method="post" style="padding-left: 50px;">
<s:textfield name="adminid" label="ENTER VALID ID OF ADMIN:"></s:textfield>
<s:submit value="SUBMIT"></s:submit></fieldset>
</s:form>
</c:if>


<c:if test="${adm ne null}">
<fieldset>
 <legend align="center"><h1>ADMIN DETAILS</h1></legend>
<table border="1">
<tr>
<th>NAME</th>
<th>ADDRESS</th>
<th>PHONE NO.</th>
<th>PASSWORD</th>
<th>EMAIL</th>
</tr>
<tr>
<td><c:out value="${adm.name}"></c:out></td>
<td><c:out value="${adm.address}"></c:out></td>
<td><c:out value="${adm.phno}"></c:out></td>
<td><c:out value="${adm.password}"></c:out></td>
<td><c:out value="${adm.email}"></c:out></td>
</tr>
</table>
</c:if>
</fieldset>
</body>
</html>