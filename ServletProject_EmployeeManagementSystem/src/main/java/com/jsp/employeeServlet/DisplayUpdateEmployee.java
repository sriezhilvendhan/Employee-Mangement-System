package com.jsp.employeeServlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
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


@WebServlet("/UpdateEmployee")
public class DisplayUpdateEmployee extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		SessionFactory sf = new Configuration().configure().addAnnotatedClass(Employee.class).buildSessionFactory();
		Session session  = sf.openSession();
		Transaction transaction = session.beginTransaction();

		NativeQuery nativeQuery = session.createNativeQuery("select * from employee");
		List<Object[]> list = (List<Object[]>)nativeQuery.list();

		req.setAttribute("list",list);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("UpdateEmployee.jsp");
		requestDispatcher.forward(req, resp);
	}
}
