<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>ABC Production Company</title>
<link rel="stylesheet" href="style.css">
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
</style>
</head>
<body class="body">
<center>

<div class="header">
<h1 class="h1">ABC Production Company</h1>
</div>


<div class="nav">
  
  <a href="login.jsp">Login</a>
  <a href="UserRegisterPage.jsp">Registration</a>
</div>

<div class="row">
<div class="column out">
    <h2>Wanna Become a member?</h2>
    <p>Register yourself today!</p>
  </div>
  
  <div class="column between">
    <h2>Welcome</h2>
    <p>
    Welcome to ABC Production Company.<br> Our Company has many products that you can register<br> and purchase, and also claims for it if not satisfied.
    </p> </div>  
    </div>  
	
	<div class="column out">
    <h2>Being Member!</h2>
    <p>Become first to get Update of latest products!</p>
    </div>
  </div>
  
</body>
</html>