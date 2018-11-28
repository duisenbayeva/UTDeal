package test;

import dao.CustomerDao;
import dao.CustomerDaoImpl;
import dao.ItemDAO;
import dao.ItemDAOImpl;
import model.Customer;
import org.junit.Test;

import static org.junit.Assert.assertTrue;

    public class EditProfileDaoTest {
        public ItemDAO itemDao = new ItemDAOImpl();
        public CustomerDao customerDao = new CustomerDaoImpl();

        @Test
        public void EditProfileTest() {
            //Assume the database is empty and register a object
            Customer c = new Customer();
            c.setFirst_name("Alexa");
            c.setLast_name("Amazon");
            c.setUsername("axa123456");
            c.setPassword("Axa123456");
            c.setCell_phone("123456789");
            customerDao.register(c);
            System.out.println();
            System.out.println("The entered record is ");
            System.out.println("First Name "+c.getFirst_name());
            System.out.println("Last Name "+c.getLast_name());
            System.out.println("User Name "+c.getUsername());
            System.out.println("Phone "+c.getCell_phone());

            //Update the registered object
            c.setLast_name("Echo");
            c.setCell_phone("987654321");
            customerDao.updateProfile(c);
            System.out.println();
            System.out.println();
            System.out.println("After Edit Profile ");
            System.out.println("First Name "+c.getFirst_name());
            System.out.println("Last Name "+c.getLast_name());
            System.out.println("User Name "+c.getUsername());
            System.out.println("Phone "+c.getCell_phone());

            Customer details = customerDao.getUserDetails(c.getUsername());

            assertTrue("Echo".equals( details.getLast_name()));
           //assertTrue("123456789".equals( details.getLast_name()));
                }
            }





