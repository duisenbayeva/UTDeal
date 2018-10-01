package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomerDao;
import dao.CustomerDaoImpl;
import dao.ItemDAO;
import dao.ItemDAOImpl;
import domain.login.Login;
import model.Customer;
import model.Item;

/**
 * Servlet implementation class Login
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginController() {}
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerDao customerDao = new CustomerDaoImpl();
		ItemDAO itemDAO = new ItemDAOImpl();
		
		String username = request.getParameter("username");
		String pass = request.getParameter("password");
		String submitType = request.getParameter("submit");
		Login login = new Login(username, pass);
		Customer c = customerDao.validateCustomer(login);
		
		if(submitType.equals("login") && c!=null && c.getFirst_name()!=null){
			request.setAttribute("message", "Hello "+c.getFirst_name());
			request.setAttribute("userId", c.getUsername());
			request.getSession().setAttribute("user", c);
			request.getSession().setAttribute("username", c.getUsername());
			request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
		}else if(submitType.equals("register")){
			c.setFirst_name(request.getParameter("first_name"));
			c.setLast_name(request.getParameter("last_name"));
			c.setUsername(request.getParameter("username"));
			c.setPassword(request.getParameter("password"));
			c.setCell_phone(request.getParameter("cell_phone"));
			customerDao.register(c);
			request.setAttribute("successMessage", "Registration done, please login!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			request.setAttribute("message", "Data Not Found! Please register!");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}

	}

}
