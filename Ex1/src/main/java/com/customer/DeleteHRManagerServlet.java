package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteHRManagerServlet")
public class DeleteHRManagerServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id = request.getParameter("cusid");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil1.deleteHRManager(id);
		
		if( isTrue == true)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("HRMInsert.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			
			List<Customer> cusDetails = CustomerDBUtil1.getcustomerDetails(id);
			request.setAttribute("cusDetails",cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
	}	
}


