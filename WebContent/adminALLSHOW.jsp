<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title> 
</head>
<body>
<h1>View All Reports</h1>


<display:table id="displayadmin"  name="lsadmin"  pagesize="10"  export="true" requestURI="" keepStatus="true"   style="width : 100%;" class=" table table-condensed  table-hover">
	<display:column style="width: 10%" title="&nbsp;SNo"  >						
	${displayadmin_rowNum}		 	 	
	</display:column>
	
	 
	
	<display:column property="adminid" title="ADMIN Id" style="width : 5%" />
    <display:column property="name" title="Name" style="width : 15%" />
    <display:column property="address" title="Address" style="width : 20%" />
    <display:column property="phno" title="Phone no." style="width : 15%" />
    <display:column property="password" title="Password" style="width : 20%" />
    <display:column property="email" title="Email" style="width : 10%" />
   
    <display:setProperty name="paging.banner.placement"  value="bottom" />
    <display:setProperty name="export.excel.filename" value="Articles.xls"/>
  	<display:setProperty name="export.pdf.filename" value="Articles.pdf"/>
  	<display:setProperty name="export.rtf.filename" value="Articles.rtf"/>
  	<display:setProperty name="export.csv.filename" value="Articles.csv"/>	 
    <display:footer>  
	</display:footer>  
	
</display:table>

<a href="ViewReports.jsp">Go Back</a>

</body>
</html>