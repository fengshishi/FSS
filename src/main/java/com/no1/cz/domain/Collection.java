package com.no1.cz.domain;

public class Collection {
	//collection_id	int
	private Integer collectionId;
	//user_id	int
	private User userId;
	//books_id	int
	private Books booksId;
	//collection_name	varchar
	private String collectionName;
	//collection_price	double
	private double collectionPrice;
	public Integer getCollectionId() {
		return collectionId;
	}
	public void setCollectionId(Integer collectionId) {
		this.collectionId = collectionId;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}
	public Books getBooksId() {
		return booksId;
	}
	public void setBooksId(Books booksId) {
		this.booksId = booksId;
	}
	public String getCollectionName() {
		return collectionName;
	}
	public void setCollectionName(String collectionName) {
		this.collectionName = collectionName;
	}
	public double getCollectionPrice() {
		return collectionPrice;
	}
	public void setCollectionPrice(double collectionPrice) {
		this.collectionPrice = collectionPrice;
	}
	@Override
	public String toString() {
		return "Collection [collectionId=" + collectionId + ", userId=" + userId + ", booksId=" + booksId
				+ ", collectionName=" + collectionName + ", collectionPrice=" + collectionPrice + "]";
	}
	public Collection(Integer collectionId, User userId, Books booksId, String collectionName, double collectionPrice) {
		super();
		this.collectionId = collectionId;
		this.userId = userId;
		this.booksId = booksId;
		this.collectionName = collectionName;
		this.collectionPrice = collectionPrice;
	}
	public Collection() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
