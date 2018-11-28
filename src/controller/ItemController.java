package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

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
@MultipartConfig
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

		String submitType = null;
		String username = null;
		int itemId = 0;
		String query = null;
		int categoryId= 0;
		String queryAuto = null;
		String pname=null;
		String tags = null;
		int quantity = 0;
		int id=0;
		String comment=null;
		Boolean for_sale = null;
		Boolean negotiable = null;
		Boolean status = null;
		float price = 0;
		String img_url = null;
		
		if(request.getContentType().toLowerCase().indexOf("multipart/form-data") > -1) {
			List<FileItem> multipart = null;
			try {
				multipart = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(new ServletRequestContext(request));
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			for (FileItem item : multipart) {
	            if (!item.isFormField())
	            {
	            	String path="home/assets/img/item/";
	                
	            	int index = item.getName().lastIndexOf('/');
	            	int len = item.getName().length();
	                String fileName =item.getName().substring(index+1, len);
	                
	                img_url = path+fileName;
	                FileOutputStream out = null;
	                
	                InputStream filecontent = null;
	                  
	                out = new FileOutputStream(new File(path + fileName));
	               
	                filecontent = item.getInputStream();
	           
	       
		              int read = 0;
		              final byte[] bytes = new byte[1024];
		       
		              while ((read = filecontent.read(bytes)) != -1) {
		                  out.write(bytes, 0, read);
		                
		              }
		              
		              
		              out.close();
	            }
	            
	          
	            if (item.isFormField()) { 
	 
					if (item.getFieldName().equals("submit")) {
					     submitType = item.getString();
					}
					if (item.getFieldName().equals("username")) {
					     username = item.getString();
					}
					if (item.getFieldName().equals("itemId")) {
					     itemId = Integer.parseInt(item.getString());
					}
					if (item.getFieldName().equals("Search")) {
					     query = item.getString();
					}
					if (item.getFieldName().equals("category")) {
					     categoryId = Integer.parseInt(item.getString());
					}
					if (item.getFieldName().equals("q")) {
					     queryAuto= item.getString();
					}
					if (item.getFieldName().equals("id")) {
					     id = Integer.parseInt(item.getString());
					}
					if (item.getFieldName().equals("quantity")) {
					     quantity = Integer.parseInt(item.getString());
					}
					if (item.getFieldName().equals("tags")) {
					     tags = item.getString();
					}
					if (item.getFieldName().equals("pname")) {
					     pname = item.getString();
					}
					if (item.getFieldName().equals("comment")) {
					     comment = item.getString();
					}
					if (item.getFieldName().equals("for_sale")) {
					     for_sale = Boolean.parseBoolean(item.getString());
					}
					if (item.getFieldName().equals("negotiable")) {
					     negotiable = Boolean.parseBoolean(item.getString());
					}
					if (item.getFieldName().equals("status")) {
					     status = Boolean.parseBoolean(item.getString());
					}
					if (item.getFieldName().equals("price")) {
					     price = Float.parseFloat(item.getString());
					}
					
	            }
			}
		}	
		
		else {
			submitType = request.getParameter("submit");
		}
	
		System.out.println("submitType "+submitType);
		
		
		if(submitType.equals("getPostedItems")) {
		
			System.out.println("inside if");
			List<Item> items = itemDao.fetchPostedItems(username);
			System.out.println("posted items "+items.toString());
			request.setAttribute("items", items);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		
		else if(submitType.equals("getFavoriteItems")) {
			
			System.out.println("inside if");
			List<Item> items = itemDao.fetchFavItems(username);
			System.out.println("fav items "+items.toString());
			request.setAttribute("fav_items", items);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		
		else if(submitType.equals("saveItem")) {
			Item item = new Item();
			item.setName(pname);
			item.setCategory(new Category(categoryId));
			//if(request.getParameter("quantity")!=null)
			item.setQuantity(quantity);
			item.setTags(tags);			
			//if(request.getParameter("fav_count")!=null)item.setFav_count(Integer.parseInt(request.getParameter("fav_count")));
			item.setCustomer(new Customer(request.getSession().getAttribute("username").toString()));
			//if(request.getParameter("image_url")!=null)
			int ind = img_url.lastIndexOf("home");
			item.setImage_url(img_url.substring(ind, img_url.length()));
			item.setComments(comment);
			//item.setDate_posted(request.getParameter("date_posted"));
			//if(request.getParameter("for_sale")!=null)
			item.setFor_sale(for_sale);
			item.setNegotiable(negotiable);
			item.setPrice(price);
		//	item.setStatus(status);
			
			//System.out.println("check"+Boolean.parseBoolean(request.getParameter("for_sale")));
			itemDao.saveItem(item);
//			List<Item> items = itemDao.fetchPostedItems(request.getSession().getAttribute("username").toString());
//			System.out.println("Getting list of posted items"+items);
//			request.getServletContext().setAttribute("postedItems", items);
			request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
		}
		
		
		
		else if(submitType.equals("editItem")) {

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
			map.put("image_url", item.getImage_url());
			map.put("status", Boolean.toString(item.getStatus()));
			map.put("negotiable", Boolean.toString(item.getNegotiable()));
			
			System.out.println("bool"+item.getFor_sale()+" "+Boolean.toString(item.getFor_sale()));
			request.setAttribute("itemDetails", map);
			request.getRequestDispatcher("updateItem.jsp").forward(request, response);
		}
		
		
		else if(submitType.equals("updateItem")) {
			Item item = new Item();
			item.setId(itemId);
			item.setName(pname);
			item.setCategory(new Category(categoryId));
			item.setQuantity(quantity);
			item.setTags(tags);	
			item.setCustomer(new Customer(request.getSession().getAttribute("username").toString()));
			int ind = img_url.lastIndexOf("home");
			item.setImage_url(img_url.substring(ind, img_url.length()));
			item.setComments(comment);
			item.setFor_sale(for_sale);
			item.setNegotiable(negotiable);
			item.setPrice(price);
			item.setStatus(status);
			
			System.out.println(item.toString());
			itemDao.updateItem(item);
			request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
		}
		
		else if(submitType.equals("deleteItem")) {
			int stat = itemDao.deleteItem(id);
			request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
		}
		
		else if(submitType.equals("addToFavorites")) {
			System.out.println("add to favorites controller");
			Item item = new Item();
			item.setId(itemId);
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

			queryAuto = request.getParameter("q");
			categoryId = Integer.parseInt(request.getParameter("category"));
			List<Item>  res = itemDao.getAutoComplete(queryAuto, categoryId);
			Gson gson = new Gson();
			String element = gson.toJson(
                    res,new TypeToken<ArrayList<Item>>() {}.getType());
			System.out.println(element);
			response.getWriter().append(element);
			
		}
		
		
		else if(submitType.equals("searchItem")){

			System.out.println("query"+query);
			List<Item>  res = itemDao.getSearchedItems(query);
			System.out.println("query"+res.size());
			request.setAttribute("itemDetails", res);
			request.setAttribute("searchQuery",query);
			request.setAttribute("isSearch","true");
			request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
			
		}
		
		else {
		
			Item item = itemDao.getItemDetails(itemId);
			
//			HashMap<String,String> map = new HashMap<String,String>();
//			map.put("product_name", item.getName());
//			map.put("category_name", item.getCategory().getName());
//			map.put("quantity", Integer.toString(item.getQuantity()));
//			map.put("tags", item.getTags());
//			map.put("price", Float.toString(item.getPrice()));
//			map.put("comments", item.getComments());
//			map.put("image_url", item.getImage_url());
//			map.put("itemId", Integer.toString(item.getId()));
//			map.put("for_sale",Boolean.toString(item.getFor_sale()));
//			map.put("status", Boolean.toString(item.getStatus()));
//			map.put("negotiable", Boolean.toString(item.getNegotiable()));
			
			request.setAttribute("itemId", itemId);
			request.getRequestDispatcher("itemPage.jsp").forward(request, response);
		}	
	
	}

}
