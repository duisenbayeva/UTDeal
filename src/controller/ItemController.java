package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ItemDAO;
import dao.ItemDAOImpl;
import model.Category;
import model.Customer;
import model.Item;
import model.Status;

/**
 * Servlet implementation class ItemController
 */
@WebServlet("/ItemController")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemController() {
    	
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ItemDAO itemDao = new ItemDAOImpl();
		
		String submitType = request.getParameter("submit").trim();
		
		System.out.println("submitType "+submitType);
		
		if(submitType.equals("getPostedItems")) {
			String username = request.getParameter("username");
			System.out.println("inside if");
			List<Item> items = itemDao.fetchPostedItems(username);
			System.out.println("posted items "+items.toString());
			request.setAttribute("items", items);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		
		if(submitType.equals("saveItem")) {
			Item item = new Item();
			item.setName(request.getParameter("name"));
			item.setCategory(new Category(Integer.parseInt(request.getParameter("category"))));
			item.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			item.setFav_count(Integer.parseInt(request.getParameter("fav_count")));
			item.setCustomer(new Customer(request.getParameter("customer")));
			item.setImage_url(request.getParameter("image_url"));
			item.setComments(request.getParameter("comments"));
			item.setDate_posted(request.getParameter("date_posted"));
			item.setFor_sale(Boolean.parseBoolean(request.getParameter("for_sale")));
			item.setNegotiable(Boolean.parseBoolean(request.getParameter("negotiable")));
			item.setPrice(Float.parseFloat(request.getParameter("price")));
			item.setStatus(new Status(Integer.parseInt(request.getParameter("status"))));
			
			
			System.out.println(item.toString());
			itemDao.saveItem(item);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		if(submitType.equals("updateItem")) {
			Item item = new Item();
			item.setId(Integer.parseInt(request.getParameter("id")));
			item.setName(request.getParameter("name"));
			item.setCategory(new Category(Integer.parseInt(request.getParameter("category"))));
			item.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			item.setFav_count(Integer.parseInt(request.getParameter("fav_count")));
			item.setCustomer(new Customer(request.getParameter("customer")));
			item.setImage_url(request.getParameter("image_url"));
			item.setComments(request.getParameter("comments"));
			item.setDate_posted(request.getParameter("date_posted"));
			item.setFor_sale(Boolean.parseBoolean(request.getParameter("for_sale")));
			item.setNegotiable(Boolean.parseBoolean(request.getParameter("negotiable")));
			item.setPrice(Float.parseFloat(request.getParameter("price")));
			item.setStatus(new Status(Integer.parseInt(request.getParameter("status"))));
			
			
			System.out.println(item.toString());
			itemDao.updateItem(item);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
	}

}
