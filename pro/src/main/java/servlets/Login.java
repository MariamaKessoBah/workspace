package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet 
{
	private static final String VUE_CONNEXION = "/WEB-INF/connexion.html";
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		getServletContext().getRequestDispatcher(VUE_CONNEXION).forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		if ("admin".equals(login)&& "passer".equals(password)) 
		{
			out.print("Connexion réussie");
		} 
		else {
			out.print("Echec de la connexion");
		}
	}
}
