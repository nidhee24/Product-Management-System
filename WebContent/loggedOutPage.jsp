<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<c:out var ="1" value=" You are successfully Logged Out."/>



<%
System.out.println("Successfully Logged Out.");

	Thread.sleep(3000);	

%>
<c:out value=" You are successfully Logged Out."/>



<c:redirect url="Home.jsp"/>
</body>
</html>