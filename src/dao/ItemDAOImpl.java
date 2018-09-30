package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.DbManager;
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
		try{
			conn = db.getConnection();				
			ps =conn.prepareStatement("insert into item values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(++j, i.getName());
			ps.setInt(++j, i.getCategory().getId());
			ps.setInt(++j, i.getQuantity());
			ps.setString(++j, i.getTags());
			ps.setString(++j, i.getCustomer().getUsername());
			ps.setString(++j, i.getImage_url());
			ps.setBoolean(++j, i.isFor_sale());
			ps.setFloat(++j, i.getPrice());
			ps.setBoolean(++j, i.isNegotiable());
			ps.setString(++j, i.getComments());
			ps.setString(++j, i.getDate_posted());
			ps.setInt(++j, i.getFav_count());
			ps.setString(++j, i.getStatus().toString());
			status = ps.executeUpdate();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
		
	}


	@Override
	public int deleteItem(int id) {
		// TODO Auto-generated method stub
		return 0;
		
	}

	@Override
	public List<Item> fetchPostedItems(String username) {
		// TODO Auto-generated method stub
		
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
				i.setStatus(null);
				list.add(i);
			}
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		
		return list;
	}

	@Override
	public List<Item> fetchFavItems(Customer cust) {
		// TODO Auto-generated method stub
		return null;
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
			ps =conn.prepareStatement("insert into item values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(++j, i.getId());
			ps.setString(++j, i.getName());
			ps.setInt(++j, i.getCategory().getId());
			ps.setInt(++j, i.getQuantity());
			ps.setString(++j, i.getTags());
			ps.setString(++j, i.getCustomer().getUsername());
			ps.setString(++j, i.getImage_url());
			ps.setBoolean(++j, i.isFor_sale());
			ps.setFloat(++j, i.getPrice());
			ps.setBoolean(++j, i.isNegotiable());
			ps.setString(++j, i.getComments());
			ps.setString(++j, i.getDate_posted());
			ps.setInt(++j, i.getFav_count());
			ps.setString(++j, i.getStatus().toString());
			status = ps.executeUpdate();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	} 

	
	
	

}
