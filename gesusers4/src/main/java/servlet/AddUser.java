package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import beans.Utilisateur;
import dao.UtilisateurDao;
import forms.AddUserForm;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/add")

public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String ADD_USER_VIEW = "/WEB-INF/ajouterUtilisateur.jsp";
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher(ADD_USER_VIEW).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AddUserForm form = new AddUserForm(request);
		
		if(form.ajouter())
		{
			response.sendRedirect("list");
		}
		else
		{
			request.setAttribute("status", form.getStatus());
			request.setAttribute("statusMessage", form.getStatusMessage());
			request.setAttribute("utilisateur", form.getUtilisateur());
			request.setAttribute("erreurs", form.getErreurs());

			getServletContext().getRequestDispatcher(ADD_USER_VIEW).forward(request, response);
		}
	}

}
