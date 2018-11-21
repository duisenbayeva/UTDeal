package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.sql.Date;
import java.util.List;

import db.DbManager;
import model.Category;
import model.Customer;
import model.Item;
import model.ItemFilter;

public class ItemDAOImpl implements ItemDAO{
	
	static Connection conn;
	static PreparedStatement ps;
	DbManager db = new DbManager();

	@Override
	public int saveItem(Item i) {
		int status = 0, j=0;
		int id=(int)(Math.random()*1000);

        Calendar calendar = Calendar.getInstance();
        Date sqlDate=new Date(calendar.getTime().getTime());
        
        
		System.out.println("id generated="+id);
		try{
			conn = db.getConnection();				
			ps =conn.prepareStatement("insert into item(id,name,category,quantity,tags,net_id,"
					+ "photo,for_sale,price,negotiable,comments,date_posted,fav_count, status) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(++j, id);
			ps.setString(++j, i.getName());
			ps.setInt(++j, i.getCategory().getId());
			ps.setInt(++j, i.getQuantity());
			ps.setString(++j, i.getTags());
			ps.setString(++j, i.getCustomer().getUsername());
			ps.setString(++j, i.getImage_url());
			ps.setBoolean(++j, i.getFor_sale());
			ps.setFloat(++j, i.getPrice());
			ps.setBoolean(++j, i.getNegotiable());
			ps.setString(++j, i.getComments());
			ps.setDate(++j, sqlDate);
			ps.setInt(++j, i.getFav_count());
			ps.setBoolean(++j, i.getStatus());
			System.out.println("before executing ");
			status = ps.executeUpdate();
			System.out.println("after executing ");
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return status;
		
	}


	@Override
	public int deleteItem(int id) {
		int status = 0;
		try{
			conn = db.getConnection();				
			ps =conn.prepareStatement("delete from item id=?");
			ps.setInt(1, id);
			
			System.out.println("before executing ");
			status = ps.executeUpdate();
			System.out.println("after executing ");
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return status;
		
	}

	@Override
	public List<Item> fetchPostedItems(String username) {
		
		List<Item> list = new ArrayList<>();
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("select * from item where net_id=?");
			ps.setString(1, username);

			ResultSet rs = ps.executeQuery();
			Item i = null;
			while(rs.next()){
				i = new Item();
				i.setId(rs.getInt(1));
				i.setName(rs.getString(2));
//				i.setCategory(rs.getString(3));
				i.setCategory(null);
				i.setQuantity(rs.getInt(4));
				i.setTags(rs.getString(5));
//				i.setCustomer(rs.getString(6));
				i.setCustomer(null);
				i.setImage_url(rs.getString(7));
				i.setFor_sale(rs.getBoolean(8));
				i.setPrice(rs.getFloat(9));
				i.setNegotiable(rs.getBoolean(10));
				i.setComments(rs.getString(11));
				i.setDate_posted(rs.getString(12));
				i.setFav_count(rs.getInt(13));
//				i.setStatus(rs.getString(14));
				i.setStatus(rs.getBoolean(14));
				list.add(i);
			}
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		
		return list;
	}

	@Override
	public List<Item> fetchFavItems(String username) {
		
//		if(cust.getFavList()==null)cust.setFavList(new ArrayList<Item>());
//		cust.getFavList().add(i);
//		return cust.getFavList();
		
		List<Item> list = new ArrayList<>();
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("select * from item right join favorite where "
					+ "tem.net_id=favorite.net_id and net_id=?");
			ps.setString(1, username);

			ResultSet rs = ps.executeQuery();
			Item i = null;
			while(rs.next()){
				i = new Item();
				i.setId(rs.getInt(1));
				i.setName(rs.getString(2));
//				i.setCategory(rs.getString(3));
				i.setCategory(null);
				i.setQuantity(rs.getInt(4));
				i.setTags(rs.getString(5));
//				i.setCustomer(rs.getString(6));
				i.setCustomer(null);
				i.setImage_url(rs.getString(7));
				i.setFor_sale(rs.getBoolean(8));
				i.setPrice(rs.getFloat(9));
				i.setNegotiable(rs.getBoolean(10));
				i.setComments(rs.getString(11));
				i.setDate_posted(rs.getString(12));
				i.setFav_count(rs.getInt(13));
//				i.setStatus(rs.getString(14));
				i.setStatus(rs.getBoolean(14));
				list.add(i);
			}
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		
		return list;
	}

	@Override
	public List<Item> getAllItems() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> getFilteredItems(ItemFilter filter) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> getTrendingItems() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int updateItem(Item i) {
		int status = 0, j=0;
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("update item set name=?, category=?, quantity=?, tags=?, net_id=?, photo=?, for_sale=?, price=?, negotiable=?, comments=?, status=?  where id=?");
		
			ps.setString(++j, i.getName());
			ps.setInt(++j, i.getCategory().getId());
			ps.setInt(++j, i.getQuantity());
			ps.setString(++j, i.getTags());
			ps.setString(++j, i.getCustomer().getUsername());
			ps.setString(++j, i.getImage_url());
			ps.setBoolean(++j, i.getFor_sale());
			ps.setFloat(++j, i.getPrice());
			ps.setBoolean(++j, i.getNegotiable());
			ps.setString(++j, i.getComments());
			ps.setBoolean(++j, i.getStatus());
			ps.setInt(++j, i.getId());
			
			status = ps.executeUpdate();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	} 

	@Override
	public Item getItemDetails(int itemId) {
		// TODO Auto-generated method stub
		
		Item i = new Item();
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("select * from item where id=?");
			ps.setInt(1, itemId);

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				i.setId(Integer.parseInt(rs.getString(1)));
				i.setName(rs.getString(2));
				i.setCategory(new Category(Integer.parseInt(rs.getString(3))));
				i.setQuantity(Integer.parseInt(rs.getString(4)));
				i.setTags(rs.getString(5));
				i.setCustomer(new Customer(rs.getString(6)));
				i.setImage_url(rs.getString(7));
				System.out.println("check2"+((rs.getString(8)).equals("1")?true:false));
				i.setFor_sale((rs.getString(8)).equals("1")?true:false);
				i.setPrice(Integer.parseInt(rs.getString(9)));
				i.setNegotiable((rs.getString(10)).equals("1")?true:false);
				i.setComments(rs.getString(11));
				i.setDate_posted(rs.getString(12));
				i.setFav_count(Integer.parseInt(rs.getString(13)));
				i.setStatus((rs.getString(14)).equals("1")?true:false);
			}
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return i;
	}


	@Override
	public void addToFavorites(Item i, Customer c) {
//		if(c.getFavList()==null)c.setFavList(new ArrayList<Item>());
//		c.getFavList().add(i);     
		System.out.println("add to favorites start");
        
		try{
			conn = db.getConnection();				
			ps =conn.prepareStatement("insert into favorite(net_id,item_id) "
					+ "values(?,?)");
			ps.setString(1, c.getUsername());
			ps.setInt(2, i.getId());
			
			System.out.println("before executing ");
			ps.executeUpdate();
			System.out.println("after executing ");
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		System.out.println("Adding item to favorites");
		
	}

	@Override
	public List<Item> getAutoComplete(String query, int categoryId) {
		// TODO Auto-generated method stub
		
		List<Item> res = new ArrayList<Item>();
		
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("select distinct tags from item where tags like ? and category=?");
			ps.setString(1, "%"+query+"%");
			ps.setInt(2, categoryId);
		
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Item i = new Item();
				//i.setId(Integer.parseInt(rs.getString(1)));
				i.setName(rs.getString(1));
				res.add(i);
			}
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return res;
		
	}


	@Override
	public List<Item> getSearchedItems(String tag) {
		// TODO Auto-generated method stub
		
		List<Item> res = new ArrayList<Item>();
		
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("select * from item where tags like ? or name like ?");
			ps.setString(1, "%"+tag+"%");
			ps.setString(2, "%"+tag+"%");
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Item i = new Item();
				i.setId(Integer.parseInt(rs.getString(1)));
				i.setName(rs.getString(2));
				i.setCategory(new Category(Integer.parseInt(rs.getString(3))));
				i.setQuantity(Integer.parseInt(rs.getString(4)));
				i.setTags(rs.getString(5));
				i.setCustomer(new Customer(rs.getString(6)));
				i.setImage_url(rs.getString(7));
				System.out.println("check2"+((rs.getString(8)).equals("1")?true:false));
				i.setFor_sale((rs.getString(8)).equals("1")?true:false);
				i.setPrice(Integer.parseInt(rs.getString(9)));
				i.setNegotiable((rs.getString(10)).equals("1")?true:false);
				i.setComments(rs.getString(11));
				i.setDate_posted(rs.getString(12));
				i.setFav_count(Integer.parseInt(rs.getString(13)));
				i.setStatus((rs.getString(14)).equals("1")?true:false);
				res.add(i);
			}
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return res;
	
	}

	

}
