package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Metier.Users;
import Servives.UsersService;


public class AddUsersServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UsersService S= new UsersService();
 
     
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String numero = request.getParameter("numero");
		
		Users p = new Users(nom, prenom, email, numero);
		S.add(p);
		
		request.getRequestDispatcher("/liste.jsp").forward(request, response);
	}

}
