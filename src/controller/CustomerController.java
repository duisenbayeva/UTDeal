package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomerDao;
import dao.CustomerDaoImpl;
import domain.login.Login;
import model.Customer;

/**
 * Servlet implementation class Login
 */
@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CustomerController() {}
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerDao customerDao = new CustomerDaoImpl();
		
		String username = request.getParameter("username");
		String submitType = request.getParameter("submit").trim();
		
		System.out.println("username"+username);
		System.out.println("username"+submitType);
		
		if(submitType.equals("editProfile")) {
			
			System.out.println("inside if");
			Customer c = customerDao.getUserDetails(username);
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("first_name", c.getFirst_name());
			map.put("last_name", c.getLast_name());
			map.put("cell_phone", c.getCell_phone());
			map.put("password", c.getPassword());
			map.put("username", c.getUsername());
			request.setAttribute("userDetails", map);
			request.getRequestDispatcher("editProfile.jsp").forward(request, response);
		}
		
		if(submitType.equals("updateProfile")) {
			Customer user = new Customer();
			user.setFirst_name(request.getParameter("first_name"));
			user.setLast_name(request.getParameter("last_name"));
			user.setUsername(request.getParameter("username"));
			user.setPassword(request.getParameter("password"));
			user.setCell_phone(request.getParameter("cell_phone"));
			
			System.out.println(user.getFirst_name()+" "+user.getLast_name()+" "+user.getCell_phone()+" "+user.getPassword()+" "+user.getUsername());
			customerDao.updateProfile(user);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		

	}

}
