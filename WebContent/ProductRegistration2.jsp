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
<sql:setDataSource var="dbCon1" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/group_project" user="root" password="12345"></sql:setDataSource>
<c:out value = "${name1}"/> 
<form method="post">

<sql:query dataSource="${dbCon1}" var="Product">
select * from group_project.product;
</sql:query>

<p>Product Name: <select name="product_name" >
<c:forEach var="row" items="${Product.rows}">
  <option value="${row.Product}" ><c:out value="${row.Product}"/></option>
</c:forEach>
</select>
</p>


<p>Serial number: <input type="text" name="serial"></p>
<p>Purchase year: <input type="number" name="year"></p>
<p>Purchase month: <input type="number" name="month"></p>
<p>Purchase day: <input type="number" name="day"></p>

<p>Claim? <input type="number" name="claim"></p>
<p><input type="submit" name="submit" value="Add Product"></p>
</form> 

<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/group_project" user="root" password="12345"></sql:setDataSource>


<br>
<c:choose>

       	<c:when test = "${empty param.product_name}">
            product name should not be empty
         </c:when>
         
         <c:when test = "${empty param.serial}">
            serial number should not be empty.
         </c:when>
         <c:when test = "${empty param.year ||empty param.month ||empty param.day} ">
         Date should not be empty.
         </c:when>
<c:otherwise>

<sql:update dataSource="${dbCon}" var="result">

<c:set var="product1" value='${param.product_name}'/>
<c:set var="serial" value='${param.serial}'/>
<c:set var="year" value='${param.year}'/>
<c:set var="month" value='${param.month}'/>
<c:set var="day" value='${param.day}'/>

insert into group_project.product1 values(?,?,?,?"\/"?"\/"?,?);

<sql:param value="${name1}" />
 <sql:param value="${product1}" />
 <sql:param value="${serial}" />
 <sql:param value="${year}" />
  <sql:param value="${month}" />
   <sql:param value="${day}" />
   <sql:param value="${claim}"/>
  
</sql:update>

</c:otherwise>

</c:choose>

<c:if test="${not empty result}">
<c:redirect url="RegisteredProduct.jsp"/>
</c:if>

</body>
</html>