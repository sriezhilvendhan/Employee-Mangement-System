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

@WebServlet("/deleteEmp")
public class DeleteEmployee extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int employeeId = Integer.parseInt(req.getParameter("employeeId"));
		
		SessionFactory sessionFactory = new Configuration().configure().addAnnotatedClass(Employee.class).buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		Employee employee = session.get(Employee.class, employeeId);
		
		session.delete(employee);
		
		transaction.commit();
		session.close();
		
		String message = " &nbsp Employee data has been deleted successfully";
		req.setAttribute("message", message);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("Result.jsp");
		requestDispatcher.forward(req, resp);
		
	}
}
