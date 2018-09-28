package dao;



import java.util.List;

import model.Customer;
import model.Item;
import model.ItemFilter;

public interface ItemDAO {
	
	public int saveItem(Item i);
	public int deleteItem(int id);
	List<Item> fetchPostedItems(Customer cust);
	List<Item> fetchFavItems(Customer cust);
	List<Item> getAllItems();
	List<Item> getFilteredItems(ItemFilter filter);
	List<Item> getTrendingItems();
	
	
}
