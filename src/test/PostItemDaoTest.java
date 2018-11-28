package test;

import dao.CustomerDao;
import dao.CustomerDaoImpl;
import dao.ItemDAO;
import dao.ItemDAOImpl;
import model.Category;
import model.Customer;
import model.Item;
import org.junit.Test;

import java.util.List;


import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class PostItemDaoTest {
    public ItemDAO itemDao = new ItemDAOImpl();
    CustomerDao customerDao = new CustomerDaoImpl();

    @Test
    public void PostItemTest() {
        Customer c = new Customer();
        c.setFirst_name("first_name");
        c.setLast_name("last_name");
        c.setUsername((int)(Math.random()*100)+"");
        c.setPassword("password");
        c.setCell_phone("123456789");
        customerDao.register(c);

        Item i = new Item();
        i.setId(123);
        i.setName("Chair Test");
        i.setCategory(new Category(1));
        i.setQuantity(2);
        i.setTags("chair furniture");
        i.setCustomer(c);
        i.setFor_sale(true);
        i.setPrice(20.00F);
        i.setNegotiable(true);
        i.setComments("chair test comments");
        i.setDate_posted("11/19/2018");
        i.setStatus(true);

        int status = itemDao.saveItem(i);
        System.out.println("status for first posted item=" + status);

        List<Item> items = itemDao.fetchPostedItems(c.getUsername());
        System.out.println("items=" + items);

        assertTrue("Chair Test".equals( items.get(0).getName()));

    }
}


