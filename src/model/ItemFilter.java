package model;

public class ItemFilter {
	
	private String name;
	private Category category;
	private String tags;
	private boolean for_sale;
	private float price;
	private String date_posted;
	private OrderColumn oColumn;
	private OrderType oType;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public boolean isFor_sale() {
		return for_sale;
	}
	public void setFor_sale(boolean for_sale) {
		this.for_sale = for_sale;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDate_posted() {
		return date_posted;
	}
	public void setDate_posted(String date_posted) {
		this.date_posted = date_posted;
	}
	public OrderColumn getoColumn() {
		return oColumn;
	}
	public void setoColumn(OrderColumn oColumn) {
		this.oColumn = oColumn;
	}
	public OrderType getoType() {
		return oType;
	}
	public void setoType(OrderType oType) {
		this.oType = oType;
	}
	
	
}
