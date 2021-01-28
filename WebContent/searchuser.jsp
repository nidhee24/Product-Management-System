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
  <a href="login.jsp">Log Out</a>
</div>
<br>
<br>

<form method="post">
<p>Search for user: <input type="text" name="uname"/></p>
<input type="submit" value="Search"  class="button"/>
</form>
<br>

<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/group_project" user="root" password="12345"></sql:setDataSource>
<sql:query dataSource="${dbCon}" var="result">
<c:set var= "uname1" value='${param.uname}'/>
select * from group_project.product1 where username=?;
 <sql:param value="${uname1}" />
</sql:query>




<c:forEach var="col" items="${result.rows}">
<table border="1">
<tr>
<td>Username</td>
<td>ProductName</td>
<td>Serial_No</td>
<td>Date</td>
<td>Claim</td>
</tr>
<tr>
<td><c:out value="${col.Username}"></c:out> </td>
<td><c:out value="${col.ProductName}"></c:out> </td>
<td><c:out value="${col.Serial_No}"></c:out> </td>
<td><c:out value="${col.Date}"></c:out> </td>
<td><c:out value="${col.Claim}"></c:out> </td>
</tr>
</table>

</c:forEach>


</center>
</body>
</html>