<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
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

.column {
  float: left;
  padding: 10px;
}


.column.out {
  width: 25%;
}


.column.between {
  width: 50%;
}


.row:after {
  content: "";
  display: table;
  clear: both;
}


@media screen and (max-width: 600px) {
  .column.out, .column.between {
    width: 100%;
  }
}

.footer {
  background-color: #F1F1F1;
  text-align: center;
  padding: 10px;
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
</head>
<body class="body">
<center>

<div class="header">
<h1 class="h1">ABC Production Company</h1>
</div>


<div class="nav">
  <a href="login.jsp">Log out</a>
  
</div>
<br>
<form method="post" action="searchuser.jsp">
	<input type="submit" value="Search User" class="button" />
</form>
<br><br>

<form method="post" action="userslist.jsp">
	<input type="submit" value="List of Existing users" class="button"/>
</form>
<br><br>

<form method="post" action="productlist.jsp">
	<input type="submit" value="List of Existing Products" class="button"/>
</form>
<br><br>

<form method="post" action="searchproduct.jsp">
	<input type="submit" value="Search Product" class="button"/>
</form>
</center>

</body>
</html>