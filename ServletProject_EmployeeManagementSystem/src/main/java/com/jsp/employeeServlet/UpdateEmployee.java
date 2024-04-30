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

@WebServlet("/updateEmp")
public class UpdateEmployee extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int employeeId = Integer.parseInt(req.getParameter("employeeId"));
		
		SessionFactory sessionFactory = new Configuration().configure().addAnnotatedClass(Employee.class).buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		Employee employee = session.get(Employee.class, employeeId);
		
		transaction.commit();
		session.close();
		
		req.setAttribute("emp", employee);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("UpdateEmp.jsp");
		requestDispatcher.forward(req, resp);
		
	}
}
