package com.jsp.employeeServlet;

import java.io.IOException;
import java.util.List;

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
import org.hibernate.query.NativeQuery;

@WebServlet("/FindByDept")
public class FindEmployeeByDepartment extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String employeeDepartment = req.getParameter("employeeDepartment");

		SessionFactory sf = new Configuration().configure().addAnnotatedClass(Employee.class).buildSessionFactory();
		Session session  = sf.openSession();
		Transaction transaction = session.beginTransaction();

		NativeQuery nativeQuery = session.createNativeQuery("select * from employee where employeeDepartment='"+employeeDepartment+"'");
		List<Object[]> list = (List<Object[]>)nativeQuery.list();

		req.setAttribute("list", list);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("FindEmployeeResult.jsp");
		requestDispatcher.forward(req, resp);
	}
}
