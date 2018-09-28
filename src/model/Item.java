package model;

public class Item {
	
	private int id;
	private String name;
	private Category category;
	private int quantity;
	private String tags;
	private Customer customer;
	private String image_url;
	private boolean for_sale;
	private float price;
	private boolean negotiable;
	private String comments;
	private String date_posted;
	private int fav_count;
	private Status status;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the category
	 */
	public Category getCategory() {
		return category;
	}
	/**
	 * @param category the category to set
	 */
	public void setCategory(Category category) {
		this.category = category;
	}
	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}
	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	/**
	 * @return the tags
	 */
	public String getTags() {
		return tags;
	}
	/**
	 * @param tags the tags to set
	 */
	public void setTags(String tags) {
		this.tags = tags;
	}
	/**
	 * @return the image_url
	 */
	public String getImage_url() {
		return image_url;
	}
	/**
	 * @param image_url the image_url to set
	 */
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	/**
	 * @return the for_sale
	 */
	public boolean isFor_sale() {
		return for_sale;
	}
	/**
	 * @param for_sale the for_sale to set
	 */
	public void setFor_sale(boolean for_sale) {
		this.for_sale = for_sale;
	}
	/**
	 * @return the price
	 */
	public float getPrice() {
		return price;
	}
	/**
	 * @param price the price to set
	 */
	public void setPrice(float price) {
		this.price = price;
	}
	/**
	 * @return the negotiable
	 */
	public boolean isNegotiable() {
		return negotiable;
	}
	/**
	 * @param negotiable the negotiable to set
	 */
	public void setNegotiable(boolean negotiable) {
		this.negotiable = negotiable;
	}
	/**
	 * @return the status
	 */
	public Status getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(Status status) {
		this.status = status;
	}
	/**
	 * @return the fav_count
	 */
	public int getFav_count() {
		return fav_count;
	}
	/**
	 * @param fav_count the fav_count to set
	 */
	public void setFav_count(int fav_count) {
		this.fav_count = fav_count;
	}
	/**
	 * @return the date_posted
	 */
	public String getDate_posted() {
		return date_posted;
	}
	/**
	 * @param date_posted the date_posted to set
	 */
	public void setDate_posted(String date_posted) {
		this.date_posted = date_posted;
	}
	/**
	 * @return the comments
	 */
	public String getComments() {
		return comments;
	}
	/**
	 * @param comments the comments to set
	 */
	public void setComments(String comments) {
		this.comments = comments;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	
	

}
