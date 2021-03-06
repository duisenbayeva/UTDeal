package model;

import java.util.List;

/**
 * 
 * @author mehra
 *
 */
public class Customer {

	private String username;
	private String password;
	private String first_name;
	private String last_name;
	private String cell_phone;
	private List<Item> favList;
	private List<Item> postedList;
	
	
	public Customer() {
		super();
	}
	public Customer(String username) {
		super();
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCell_phone() {
		return cell_phone;
	}
	public void setCell_phone(String cell_phone) {
		this.cell_phone = cell_phone;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public List<Item> getFavList() {
		return favList;
	}
	public void setFavList(List<Item> favList) {
		this.favList = favList;
	}
	public List<Item> getPostedList() {
		return postedList;
	}
	public void setPostedList(List<Item> postedList) {
		this.postedList = postedList;
	}
	
	
	
	
}

