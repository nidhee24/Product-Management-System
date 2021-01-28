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
<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/group_project" user="root" password="12345"></sql:setDataSource>
<sql:query dataSource="${dbCon}" var="result">
            SELECT * FROM group_project.user;     
        </sql:query>

<table border="1">
<tr>
<td>Name</td>
<td>Username</td>
<td>Password</td>
<td>Email</td>
<td>Address</td>
<td>Contact No</td>
</tr>

<c:forEach var="col" items="${result.rows}">
<tr>
<td><c:out value="${col.Name}"></c:out> </td>
<td><c:out value="${col.Username}"></c:out> </td>
<td><c:out value="${col.Password}"></c:out> </td>
<td><c:out value="${col.Email}"></c:out> </td>
<td><c:out value="${col.Address}"></c:out> </td>
<td><c:out value="${col.Contact_No}"></c:out> </td>
</tr>
</c:forEach>
</body>
</html>