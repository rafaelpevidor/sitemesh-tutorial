package br.com.psystems.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.psystems.model.User;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Map<String, User> users;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//FIXME tem o comando cmd?
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		boolean isLoginValid = false;
		
		User user = getUsers().get(login);
		if (null != user) {
			if (password.equals(user.getPassword())) {
				isLoginValid = true;
			} 
		}
		
		if (isLoginValid) {
			request.getSession().setAttribute("user", user);
			response.sendRedirect("app/home.jsp");
		} else {
			request.setAttribute("msg", "Login ou senha inválidos!");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private Map<String, User> getUsers() {
		if (null == users) {
			users = new HashMap<String, User>();
			users.put(
					"admin", 
					new User("Administrador", "admin", "admin", "Usuário administrador do sistema. Possui privilégios especiais para executar a função de administrador.")
			);
			users.put("user", new User("Usuário do Sistema", "user", "123", "Usuário do sistema. Não possui privilégios."));
		}
		return users;
	}

}