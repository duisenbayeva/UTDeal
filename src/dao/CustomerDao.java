package dao;

import domain.login.Login;
import model.Customer;

/**
 * 
 * @author mehra
 * The methods that we need to save and retrieve data from the database
 */
public interface CustomerDao {

	/**
	 * 
	 * @param c
	 * @return
	 */
	public int register(Customer c);
	
	/*
	 * Retrieve the Customer object from the database
	 */
	public Customer validateCustomer(Login login);

	public Customer getUserDetails(String username);

	public void updateProfile(Customer user);

	
	//public Customer getCustomer(String username, String pass); This method does not needed as we have the Login object

	
}

