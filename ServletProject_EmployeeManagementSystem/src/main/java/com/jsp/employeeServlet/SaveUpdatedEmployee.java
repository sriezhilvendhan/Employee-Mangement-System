package com.jsp.employeeServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

@WebServlet("/saveUpdatedEmp")
public class SaveUpdatedEmployee extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int employeeId = Integer.parseInt(req.getParameter("employeeId"));
		String employeeName = req.getParameter("employeeName");
		int employeeAge = Integer.parseInt(req.getParameter("employeeAge"));
		String employeeDepartment = req.getParameter("employeeDepartment");
		String employeeEmail = req.getParameter("employeeEmail");
		String employeeAddress = req.getParameter("employeeAddress");
		int employeeSalary = Integer.parseInt(req.getParameter("employeeSalary"));

		Employee employee = new Employee();
		employee.setEmployeeId(employeeId);
		employee.setEmployeeName(employeeName);
		employee.setEmployeeAge(employeeAge);
		employee.setEmployeeDepartment(employeeDepartment);
		employee.setEmployeeEmail(employeeEmail);
		employee.setEmployeeAddress(employeeAddress);
		employee.setEmployeeSalary(employeeSalary);

		SessionFactory sf = new Configuration().configure().addAnnotatedClass(Employee.class).buildSessionFactory();
		Session session  = sf.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(employee);
		transaction.commit();
		session.close();

		String message = " &nbsp Employee data has been updated successfully";
		req.setAttribute("message", message);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("Result.jsp");
		requestDispatcher.forward(req, resp);
	}
}
