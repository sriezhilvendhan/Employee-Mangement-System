<%@page import="com.jsp.employeeServlet.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Update.css">
<link rel="icon" type="icon" href="https://cdn-icons-png.flaticon.com/128/11302/11302025.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	<style type="text/css">
	</style>
</head>
<body>
	<%
		Employee employee = (Employee) request.getAttribute("emp");
	%>
	
	<form action="saveUpdatedEmp" method="post" id="updateform">
	<h1>Update Employee</h1>
	<div class="webform-component employee-name" >
            <label for="field0" >
              Employee ID
            </label>
            
            <input id="field0" name="employeeId" type="number" value="<%=employee.getEmployeeId()%>" readonly="true"/>
          
        </div>
	<%-- <input type="number" name="employeeId" value="<%=employee.getEmployeeId()%>" readonly="true"> --%>
	
	<%-- <input type="text" name="employeeName" value="<%=employee.getEmployeeName()%>"> --%>
	<div class="webform-component Employee-name" >
            <label for="field1">
              Employee Name 
            </label>
            
            <input id="field1" name="employeeName" type="text" value="<%=employee.getEmployeeName()%>" />
          
        </div>
	
	<%-- <input type="number" name="employeeAge" value="<%=employee.getEmployeeAge()%>"> --%>
	<div class="webform-component employee-age" >      
            <label for="field2">
              Employee Age
            </label>
            
            <input id="field2" name="employeeAge" type="number" maxlength="2" value="<%=employee.getEmployeeAge()%>"/>
        </div>
	<div class="webform-component role" >    
            <label for="field3">
              Employee Department
            </label>
            
            <select id="field3" name="employeeDepartment" value="<%=employee.getEmployeeDepartment()%>">
              <option selected="selected">
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
</div>       
	<%-- <input type="email" name="employeeEmail" value="<%=employee.getEmployeeEmail()%>"> --%>
	 <div class="webform-component  email-address" >          
            <label for="field5" >
              Email Address
            </label>
           
            <input id="field5" name="employeeEmail" type="email" value="<%=employee.getEmployeeEmail()%>"/>
        </div> 

	<%-- <input type="number" name="employeeSalary" value="<%=employee.getEmployeeSalary()%>"> --%>
	<div class="webform-component  last-name" >
            <label for="field15">
              Employee Salary
            </label>
            
            <input id="field15" name="employeeSalary" type="number" value="<%=employee.getEmployeeSalary()%>"/>
        </div>
	
	<%-- <input type="text" name="employeeAddress" value="<%=employee.getEmployeeAddress()%>"> --%>
	<div class="webform-component--resource-format" >
            <label for="field13" >
              Employee Address
            </label>
            <!-- <textarea rows="7" cols="50" placeholder="Enter your Address"></textarea> -->
             <input id="field13" name="employeeAddress" type="text" value="<%=employee.getEmployeeAddress()%>"/>
          </div>
	<!-- <input type="submit" value="Update"> -->
	<br>
	<button id="btn" value="Update" style="background-color: #D1E0DB;font-weight: bold;">&nbsp Update</button>
	<br> <a href="index.jsp" id="btn"
			style="display: flex; align-items: center; justify-content: center; ;font-weight: bold;text-decoration: none;margin-top: -10px"><i class="fa-solid fa-arrow-left"></i> &nbsp back</a>
	</form>
</body>
</html>