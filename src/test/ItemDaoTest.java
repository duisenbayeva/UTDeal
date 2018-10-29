package test;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;

import dao.CustomerDao;
import dao.CustomerDaoImpl;
import dao.ItemDAO;
import dao.ItemDAOImpl;
import model.Category;
import model.Customer;
import model.Item;

public class ItemDaoTest {

	public ItemDAO itemDao = new ItemDAOImpl();
	CustomerDao customerDao = new CustomerDaoImpl();

	@Test
	public void updateItemTest() {
		
		Customer c = new Customer();
		c.setFirst_name("first_name");
		c.setLast_name("last_name");
		c.setUsername((int)(Math.random()*100)+"");
		c.setPassword("password");
		c.setCell_phone("777");
		customerDao.register(c);

		Item i = new Item();
		i.setId(111);
		i.setName("test object");
		i.setCategory(new Category(1));
		i.setQuantity(2);
		i.setTags("test tags");
		i.setCustomer(c);
		i.setFor_sale(true);
		i.setPrice(2.95F);
		i.setNegotiable(true);
		i.setComments("tets comments");
		i.setDate_posted("10/29/2018");
		i.setStatus(true);

		int status = itemDao.updateItem(i);
		System.out.println("status=" + status);

		List<Item> items = itemDao.fetchPostedItems(c.getUsername());
		System.out.println("items=" + items);

		for (int j = 0; j < items.size(); j++) {
			System.out.println("item j =" + items.get(j).toString());
			if (items.get(j).getId() == 111) {
				assertTrue("wrong element", "test object" == items.get(j).getName());
			}
		}

	}

}
