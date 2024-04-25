package servlet;

import java.io.IOException;
import beans.Utilisateur;
import dao.UtilisateurDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteUser extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		if (id.matches("[0-9]+")) 
		{
			UtilisateurDao.supprimer(Integer.parseInt(id));
		} 
		response.sendRedirect("list");
	}
}
