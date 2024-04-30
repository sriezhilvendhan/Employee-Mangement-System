<%@page import="java.util.List"%>
<%@page import="com.jsp.employeeServlet.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
<link rel="stylesheet" type="text/css" href="EmployeeUpdate.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100..700;1,100..700&display=swap"
	rel="stylesheet">
</head>
<body>
	<%List<Object[]> list = (List<Object[]>) request.getAttribute("list");%>
	<h1>Employee Update Details</h1>
	<br>
	<table bgcolor="#eee7df" cellspacing="5px" cellpadding="5px">
	<tr bgcolor="fbd3b7">
		<th id="left">Employee Id</th>
		<th>Employee Name</th>
		<th>Employee Age</th>
		<th>Employee Department</th>
		<th>Employee Email</th>
		<th>Employee Salary</th>
		<th id="right">Employee Address</th>
		<th>Update</th>
	</tr>
	<%
	for(Object[] obj : list)
	{					
	%>
	<tr align="center">
		<td> <%=obj[0]%> </td>
		<td> <%=obj[1]%> </td>
		<td> <%=obj[2]%> </td>
		<td> <%=obj[3]%> </td>
		<td> <%=obj[4]%> </td>
		<td> <%=obj[5]%> </td>
		<td> <%=obj[6]%> </td>
		<td id="btn"><a href="updateEmp?employeeId=<%=obj[0]%>">Update</a></td>
	</tr>
	<%
		}%>
	</table>
	<br> <a id="back" href="index.jsp"><i
			class="fa-solid fa-arrow-left"></i>&nbsp Back</a>
</body>
</html>