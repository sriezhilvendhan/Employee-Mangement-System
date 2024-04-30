<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add employee</title>
<link rel="stylesheet" href="AddEmployee.css">
<link rel="icon" type="icon"
	href="https://cdn-icons-png.flaticon.com/128/11302/11302025.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
#btn {
	margin-top: 3px;
}

a:hover {
	color: white;
}
</style>
</head>
<body>
	<form action="Addition" method="post">
		<h1>
			&nbsp<i class="fa-solid fa-user-plus"></i> <br>Add An Employee
		</h1>
		<div class="webform-component employee-name">
			<label for="field0"> Employee ID </label> <input id="field0"
				name="employeeId" type="number" value="" required
				placeholder="e.g: 1234" />

		</div>

		<div class="webform-component Employee-name">
			<label for="field1"> Employee Name </label> <input id="field1"
				name="employeeName" type="text" value="" required
				placeholder="e.g: Ezhil" />

		</div>


		<div class="webform-component employee-age">
			<label for="field2"> Employee Age </label> <input id="field2"
				name="employeeAge" type="number" maxlength="2" value="" required
				placeholder="e.g: 23" />
		</div>

		<div class="webform-component role">
			<label for="field3"> Employee Department </label> <select id="field3"
				name="employeeDepartment">
				<option value="" selected="selected">Please select</option>
				<option value="Finance">Finance</option>
				<option value="Sales">Sales</option>
				<option value="Quality Assurance">Quality Assurance</option>
				<option value="Marketing">Marketing</option>
				<option value="IT">IT</option>
				<option value="Accounting">Accounting</option>
				<option value="Security">Security</option>
				<option value="Human Resources">Human Resources</option>
				<option value="None of the above">None of the above</option>
			</select>
		</div>

		<div class="webform-component  email-address">
			<label for="field5"> Email Address </label> <input id="field5"
				name="employeeEmail" type="email" value="" required
				placeholder="e.g:  sriezhilrajini@gmail.com" />
		</div>


		<div class="webform-component  last-name">
			<label for="field15"> Employee Salary(LPA) </label> <input id="field15"
				name="employeeSalary" type="number" value="" required
				placeholder="e.g: 6,50,000 LPA" />
		</div>

		<div class="webform-component--resource-format">
			<label for="field13"> Employee Address </label>
			<!-- <textarea rows="7" cols="50" placeholder="Enter your Address"></textarea> -->
			<input id="field13" name="employeeAddress" type="text" value=""
				required placeholder="Enter your Address" />
		</div>
		<br>
		<!-- <input id="button" type="submit"  value="Submit" /> -->
		<button id="btn">
			<i class="fa-solid fa-user-plus"></i>&nbsp Add
		</button>
		<br> <a href="index.jsp" id="btn"
			style="display: flex; align-items: center; justify-content: center; color: #0C133B; background-color: white;font-weight: bold;"><i class="fa-solid fa-arrow-left"></i> &nbsp back</a>
	</form>
</body>
</html>