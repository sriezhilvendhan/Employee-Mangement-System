<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="FindEmployeeByName.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<form action="FindByName">
		<label>Enter Employee Name : </label>
		<input name="employeeName" type="text" value="" required>
		<input id="button" type="submit" value="Search">
	</form>
		<a id="back" href="FindEmployee.jsp"><i class="fa-solid fa-arrow-left"></i>&nbsp BACK</a>
</body>
</html>