<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="FindEmployeeByDepartment.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<form action="FindByDept">
		<label>Enter Employee Department : </label>
		<!-- <input name="employeeDepartment" type="text" value=""> -->
		 <select name="employeeDepartment" required="required">
              <option value="" selected="selected" >
                Please select	
              </option>
              <option value="Finance" >
                Finance
              </option>
              <option value="Sales" >
                Sales
              </option>
              <option value="Quality Assurance" >
                Quality Assurance
              </option>
              <option value="Marketing" >
                Marketing
              </option>
              <option value="IT" >
                IT
              </option>
              <option value="Accounting" >
                Accounting
              </option>
              <option value="Security" >
                Security
              </option>
              <option value="Human Resources" >
                Human Resources
              </option>
              <option value="None of the above" >
                None of the above
              </option>
            </select>  
		<input id="button" type="submit" value="Search">
	</form>
		<a id="back" href="FindEmployee.jsp"><i class="fa-solid fa-arrow-left"></i>&nbsp BACK</a>
</body>
</html>