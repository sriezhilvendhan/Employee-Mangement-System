<%@ page import="com.jsp.employeeServlet.AddEmployee" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Result.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<%
	String message = (String)request.getAttribute("message");
	%>
	<div id="msg">
	<img alt="verify" src="https://cdn0.iconfinder.com/data/icons/simplie-essential-action/22/action_039-checkmark-check-done-verify-512.png" height="50px" width="50px">
	<h1><%=message %></h1>
	</div>
	<!-- <span id="btn">
	<i class="fa-solid fa-house"> &nbsp <a href="index.jsp">Home</a>
	</span> -->
	<a id="home" href="index.jsp"><i class="fa-solid fa-house"></i>&nbsp HOME</a>
</body>
</html>