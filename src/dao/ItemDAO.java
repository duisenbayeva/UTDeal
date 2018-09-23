package dao;



import java.util.List;

import model.Customer;
import model.Item;
import model.ItemFilter;

public interface ItemDAO {
	
	void addItem(Item i);
	void updateItem(Item i);
	void deleteItem(int id);
	List<Item> fetchPostedItems(Customer cust);
	List<Item> fetchFavItems(Customer cust);
	List<Item> getAllItems();
	List<Item> getFilteredItems(ItemFilter filter);
	
}
