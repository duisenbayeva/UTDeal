package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

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
		
		else if(submitType.equals("getFavoriteItems")) {
			String username = request.getParameter("username");
			System.out.println("inside if");
			List<Item> items = itemDao.fetchFavItems(username);
			System.out.println("fav items "+items.toString());
			request.setAttribute("fav_items", items);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		
		else if(submitType.equals("saveItem")) {
			Item item = new Item();
			item.setName(request.getParameter("pname"));
			item.setCategory(new Category(Integer.parseInt(request.getParameter("category"))));
			if(request.getParameter("quantity")!=null)item.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			item.setTags(request.getParameter("tags"));			
			if(request.getParameter("fav_count")!=null)item.setFav_count(Integer.parseInt(request.getParameter("fav_count")));
			item.setCustomer(new Customer(request.getSession().getAttribute("username").toString()));
			if(request.getParameter("image_url")!=null)item.setImage_url(request.getParameter("image_url"));
			item.setComments(request.getParameter("comment"));
			item.setDate_posted(request.getParameter("date_posted"));
			if(request.getParameter("for_sale")!=null)item.setFor_sale(Boolean.parseBoolean(request.getParameter("for_sale")));
			item.setNegotiable(Boolean.parseBoolean(request.getParameter("negotiable")));
			item.setPrice(Float.parseFloat(request.getParameter("price")));
			item.setStatus(Boolean.parseBoolean(request.getParameter("status")));
			
			System.out.println("check"+Boolean.parseBoolean(request.getParameter("for_sale")));
			itemDao.saveItem(item);
//			List<Item> items = itemDao.fetchPostedItems(request.getSession().getAttribute("username").toString());
//			System.out.println("Getting list of posted items"+items);
//			request.getServletContext().setAttribute("postedItems", items);
			request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
		}
		
		
		
		else if(submitType.equals("editItem")) {
			
			int itemId = Integer.parseInt(request.getParameter("itemId"));
			System.out.println("check"+request.getParameter("itemId"));
			Item item = itemDao.getItemDetails(itemId);
			
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("product_name", item.getName());
			map.put("category_id", Integer.toString(item.getCategory().getId()));
			map.put("quantity", Integer.toString(item.getQuantity()));
			map.put("tags", item.getTags());
			map.put("price", Float.toString(item.getPrice()));
			map.put("comments", item.getComments());
			map.put("itemId", Integer.toString(item.getId()));
			map.put("for_sale",Boolean.toString(item.getFor_sale()));
			map.put("status", Boolean.toString(item.getStatus()));
			map.put("negotiable", Boolean.toString(item.getNegotiable()));
			
			System.out.println("bool"+item.getFor_sale()+" "+Boolean.toString(item.getFor_sale()));
			request.setAttribute("itemDetails", map);
			request.getRequestDispatcher("updateItem.jsp").forward(request, response);
		}
		
		else if(submitType.equals("updateItem")) {
			Item item = new Item();
			item.setId(Integer.parseInt(request.getParameter("itemId")));
			item.setName(request.getParameter("pname"));
			item.setCategory(new Category(Integer.parseInt(request.getParameter("category"))));
			if(request.getParameter("quantity")!=null)item.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			item.setTags(request.getParameter("tags"));			
			if(request.getParameter("fav_count")!=null)item.setFav_count(Integer.parseInt(request.getParameter("fav_count")));
			item.setCustomer(new Customer(request.getSession().getAttribute("username").toString()));
			if(request.getParameter("image_url")!=null)item.setImage_url(request.getParameter("image_url"));
			item.setComments(request.getParameter("comment"));
			if(request.getParameter("for_sale")!=null)item.setFor_sale(Boolean.parseBoolean(request.getParameter("for_sale")));
			item.setNegotiable(Boolean.parseBoolean(request.getParameter("negotiable")));
			item.setPrice(Float.parseFloat(request.getParameter("price")));
			item.setStatus(Boolean.parseBoolean(request.getParameter("status")));
			
			System.out.println(item.toString());
			itemDao.updateItem(item);
			request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
		}
		
		else if(submitType.equals("deleteItem")) {
			int status = itemDao.deleteItem(Integer.parseInt(request.getParameter("id")));
			request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
		}
		
		else if(submitType.equals("addToFavorites")) {
			System.out.println("add to favorites controller");
			Item item = new Item();
			item.setId(Integer.parseInt(request.getParameter("itemId")));
			//item.setId(366);
//			item.setName(request.getParameter("pname"));
//			item.setCategory(new Category(Integer.parseInt(request.getParameter("category"))));
//			if(request.getParameter("quantity")!=null)item.setQuantity(Integer.parseInt(request.getParameter("quantity")));
//			item.setTags(request.getParameter("tags"));			
//			if(request.getParameter("fav_count")!=null)item.setFav_count(Integer.parseInt(request.getParameter("fav_count")));
//			
//			if(request.getParameter("image_url")!=null)item.setImage_url(request.getParameter("image_url"));
//			item.setComments(request.getParameter("comment"));
//			if(request.getParameter("for_sale")!=null)item.setFor_sale(Boolean.parseBoolean(request.getParameter("for_sale")));
//			item.setNegotiable(Boolean.parseBoolean(request.getParameter("negotiable")));
//			item.setPrice(Float.parseFloat(request.getParameter("price")));
//			item.setStatus(Boolean.parseBoolean(request.getParameter("status")));
//			
			System.out.println(item.toString());
			itemDao.addToFavorites(item,(Customer)request.getSession().getAttribute("user"));
			request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
		}
		
		else if(submitType.equals("autocomplete")){

			int categoryId = Integer.parseInt(request.getParameter("category"));
			String query = request.getParameter("q");
			System.out.println(categoryId+" "+query);
			List<Item>  res = itemDao.getAutoComplete(query, categoryId);
			Gson gson = new Gson();
			String element = gson.toJson(
                    res,new TypeToken<ArrayList<Item>>() {}.getType());
			System.out.println(element);
			response.getWriter().append(element);
			
		}
		
		
		else if(submitType.equals("searchItem")){

			String query = request.getParameter("Search");
			System.out.println("query"+query);
			List<Item>  res = itemDao.getSearchedItems(query);
			System.out.println("query"+res.size());
			request.setAttribute("itemDetails", res);
			request.setAttribute("searchQuery",query);
			request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
			
		}
	
	}

}
