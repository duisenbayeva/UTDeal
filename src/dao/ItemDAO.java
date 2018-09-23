package dao;



import java.util.List;

import model.Customer;
import model.Item;

public interface ItemDAO {
	
	void addItem(Item i);
	void updateItem(Item i);
	void deleteItem(int id);
	List<Item> fetchPostedItems(Customer cust);
	List<Item> fetchFavItems(Customer cust);
	
}
