 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<link rel="stylesheet" href="ADMINLOGIN/css/ADMINDash.css">
	<link href="fontawesome/css/all.css" rel="stylesheet">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title> 
</head>
<body>
<div class="header">
     <img src="ADMINLOGIN/images/logo10.png" alt="">

     <p>Welcome To Admin Panel</p>
     
       <c:if test="${loginid_sess ne null}">
	
	<h5> ${adminnm_sess}</h5>
	
	</c:if>
         
         <div class="dropdown">
     
  <div class="dropbtn"><i class="fas fa-user-circle"></i></div>
  <div class="dropdown-content">
    <a href="SearchAdminTOUpdate?adminid=${loginid_sess}">EDIT PROFILE</a>
    <a href="adminlogoutAction">LOGOUT<i class="fas fa-sign-out-alt"></i></a>
    
  </div>
</div>

  </div>
<div class="table_section">
<a href="ATTENDANCE.jsp"><img src="ADMINLOGIN/images/arrow.png"></a>
<h1>View All Reports</h1>

<display:table id="DisplayATT"  name="attlist"  pagesize="10"  export="true" requestURI="" keepStatus="true"   style="width : 100%;" class=" table table-dark table-striped table-condensed    table-hover">
	<display:column style="width: 10%" title="&nbsp;SNo"  >						
	${DisplayATT_rowNum}		 	 	
	</display:column>
	
	<display:column property="attid" title="ATTENDANCE Id" style="width : 5%" />
    <display:column property="usid" title="User Id" style="width : 15%" />
    <display:column property="attdate" title="DATE" style="width : 20%" />
    <display:column property="status" title="STATUS" style="width : 15%" />
    
   
    <display:setProperty name="paging.banner.placement"  value="bottom" />
    <display:setProperty name="export.excel.filename" value="Articles.xls"/>
  	<display:setProperty name="export.pdf.filename" value="Articles.pdf"/>
  	<display:setProperty name="export.rtf.filename" value="Articles.rtf"/>
  	<display:setProperty name="export.csv.filename" value="Articles.csv"/>	 
    <display:footer>  
	</display:footer>  
	
</display:table>

</div>
</body>
</html>