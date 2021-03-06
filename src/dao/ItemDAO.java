package dao;



import java.util.List;

import model.Category;
import model.Customer;
import model.Item;
import model.ItemFilter;

public interface ItemDAO {
	
	public int saveItem(Item i);
	public int updateItem(Item i);
	public int deleteItem(int id);
	public Item getItemDetails(int itemId);
	public void addToFavorites(Item i, Customer c);
	List<Item> fetchPostedItems(String username);
	List<Item> fetchFavItems(String username);
	List<Item> getAllItems();
	List<Item> getFilteredItems(ItemFilter filter);
	List<Item> getTrendingItems();
	List<Item> getAutoComplete(String query, int categoryId);
	List<Item> getSearchedItems(String tag);
	List<Category> getCategories();

	
	
}
