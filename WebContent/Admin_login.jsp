<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.nav {
  overflow: hidden;
  background-color: #55CBA6;
}

.nav a {
  float: right;
  display: block;
  color: #333;
  text-align: center;
  padding: 20px 22px;
  
}

.nav a:hover {
  background-color: #1B9871;
  color: white;
}


.header {
  background-color: #1B9871;
  padding: 20px;
  text-align: center;
}

.body {
  background-color: #D6E9E3;
  padding: 30px;
  text-align: center;
}

.h1{
	color: white;
	font-family: verdana;
  	font-size: 150%;
}

.h2 {
	color: black;
	font-family: courier;
  	font-size: 100%;
}

.button {
  background-color: #1B9871; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
}

.button:hover {
background-color: #55CBA6;
color:black;
}

</style>
</head>
<body class="body">
<center>
<div class="header">
<h1 class="h1">ABC Production Company</h1>
</div>


<div class="nav">
  <a href="loggedout.jsp">Log out</a>
  
</div>
<br>
<br>
 <%
  	System.out.println("name");
%>
		
 <form method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Login Page</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Username: </label></td>
                        <td><input type="text" name="uname"/></td>
                    </tr>
                    
                    <tr>
                        <td><label>Password: </label></td>
                        <td><input type="text" name="password"/></td>
                    </tr>
                     </tbody>
            </table><br>
                    <input type="submit" value="login" class="button"/></td>
                   </center> 
               
        </form>
        
       
        <c:if test = "${not empty param.uname || not empty param.password}">
        
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/group_project"
                           user="root"  password="12345"/>
 
 
        <sql:query dataSource="${dbsource}" var="result">
       	<c:set var= "uname1" value='${param.uname}'/>
        	<c:set var ="password1" value = '${param.password}'/>  
            SELECT count(*) FROM group_project.admin_login where Admin_Username=? and Admin_Password= ?; 
           <sql:param value="${uname1}" />
            <sql:param value="${password1}" />       
        </sql:query>
         
       <c:choose>
         <c:when test = "${result.rowsByIndex[0][0]==1}">
     		<c:redirect url="AdminPage.jsp"/>
     	
<c:set var="uname1" value="${param.uname}" scope="request"/>


         </c:when>
         
         <c:otherwise>
         Please enter valid user id
         </c:otherwise>
 </c:choose>
        
        </c:if>
</body>
</html>