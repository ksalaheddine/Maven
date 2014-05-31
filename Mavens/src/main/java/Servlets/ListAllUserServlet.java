package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Servives.UsersService;
import web.UsersBean;


public class ListAllUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UsersService S= new UsersService();
		UsersBean U = new UsersBean();
		U.setUsersList(S.getAll());
		S.getAll();
		
		request.setAttribute("msg", U);
		request.getRequestDispatcher("/liste.jsp").forward(request, response);
		
	}


}
