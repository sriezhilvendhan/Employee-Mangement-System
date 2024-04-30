<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="salary.css">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form action="FindBySal">
		<label>Enter Employee Salary Range  </label>
		<br>
		<br>
		<p>From</p> <input name="employeeSalary1" type="number" value="" required>
		<p>TO</p> <input name="employeeSalary2" type="number" value="" required>
		<br>
		<br>
		<input id="button" type="submit" value="Search">
	</form>
	<br>
	<br>
		<a id="back" href="FindEmployee.jsp"><i class="fa-solid fa-arrow-left"></i>&nbsp BACK</a>
</body>
</html>