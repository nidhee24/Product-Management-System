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
  <a href="login.jsp">User Login</a>
  <a href="register.jsp">User Registration</a>
  <a href="Admin_login.jsp">Admin Login</a>
</div>
<br>
<br>
<h3>Register yourself</h3>
<form method="post">
<table border="0" cellspacing="2" cellpadding="5">
	<tbody>
	   	<tr>
		<td><label>Username:</label></td>
		<td><input type="text" name="uname"></td>
		</tr>
	
		<tr>
		<td><label>Password: </label></td>
		<td><input type="password" name="pword"></td>
		</tr>

		<tr>
		<td><label>Cellphone No:</label></td>
		<td><input type="text" name="cell"></td>
		</tr>
		
		<tr>
		<td><label>Email: </label></td>
		<td><input type="text" name="email"></td>
		</tr>
		
		<tr>
		<td><label>Name:</label></td>
		<td><input type="text" name="name"></td>
		</tr>
		
		<tr>
		<td><label>Address: </label></td>
		<td><input type="text" name="address"></td>
		</tr>
		
		
		
</tbody>
</table>
<br>
<center>
		<input type="submit" name="submit" value="Register" align="center" class="button">
		</center>
</form>


<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/group_project" user="root" password="12345"></sql:setDataSource>


<br>
<c:choose>

 		<c:when test = "${empty param.uname}">
           username should not be empty
         </c:when>
         
         <c:when test = "${empty param.pword}">
            Password should not be empty.
         </c:when>
         <c:when test = "${empty param.cell}">
         CellPhone number should not be empty.
         </c:when>
      	<c:when test = "${empty param.email}">
         Email address should not be empty.
         </c:when>   
         <c:when test = "${empty param.name}">
         Name should not be empty.
         </c:when>
         <c:when test = "${empty param.address}">
         Address should not be empty.
         </c:when>
         
<c:otherwise>
<c:if test = "${not empty param.uname || not empty param.pword}">
<sql:update dataSource="${dbCon}" var="empRec">
<c:set var="username1" value='${param.uname}'/>
<c:set var="password1" value='${param.pword}'/>
<c:set var="cellno1" value='${param.cell}'/>
<c:set var="email1" value='${param.email}'/>
<c:set var="name1" value='${param.name}'/>
<c:set var="address1" value='${param.address}'/>

insert into group_project.user (username,password,cellphone_no,email,name,address) values(?,?,?,?,?,?);
<sql:param value="${username1}" />
 <sql:param value="${password1}" />
 <sql:param value="${cellno1}" />
 <sql:param value="${email1}" />
 <sql:param value="${name1}" />
 <sql:param value="${address1}" />
 


</sql:update>
</c:if>
</c:otherwise>

</c:choose>

<br>

<form method="post" action="login.jsp">
<h5>Already a member? Please log in!</h5>
<p><input type="submit" name="submit" value="Login" class="button"></p>
</form>
</center>
</body>
</html>