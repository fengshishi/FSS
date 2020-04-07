package com.no1.cz.domain;

public class BooksCategory {

	private Integer categoryId;
	private String categoryName;
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	@Override
	public String toString() {
		return "BooksCategory [categoryId=" + categoryId + ", categoryName=" + categoryName + "]";
	}
	public BooksCategory(Integer categoryId, String categoryName) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
	}
	public BooksCategory() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
