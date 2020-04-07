package com.no1.cz.domain;

import java.util.Date;

public class Books {
    private Integer booksId;

    private String booksName;
    
    private String booksWriter;
    
    private String booksConcern;
    
    private Date booksConcerndate;
    
    private double booksPrice;
    
    private Integer booksNum;
    
    private String booksImages;
    
    private BooksCategory booksCategory;
    
    private Business booksBusiness;
    
    private String booksIntroduce;

	public Integer getBooksId() {
		return booksId;
	}

	public void setBooksId(Integer booksId) {
		this.booksId = booksId;
	}

	public String getBooksName() {
		return booksName;
	}

	public void setBooksName(String booksName) {
		this.booksName = booksName;
	}

	public String getBooksWriter() {
		return booksWriter;
	}

	public void setBooksWriter(String booksWriter) {
		this.booksWriter = booksWriter;
	}

	public String getBooksConcern() {
		return booksConcern;
	}

	public void setBooksConcern(String booksConcern) {
		this.booksConcern = booksConcern;
	}

	public Date getBooksConcerndate() {
		return booksConcerndate;
	}

	public void setBooksConcerndate(Date booksConcerndate) {
		this.booksConcerndate = booksConcerndate;
	}

	public double getBooksPrice() {
		return booksPrice;
	}

	public void setBooksPrice(double booksPrice) {
		this.booksPrice = booksPrice;
	}

	public Integer getBooksNum() {
		return booksNum;
	}

	public void setBooksNum(Integer booksNum) {
		this.booksNum = booksNum;
	}

	public String getBooksImages() {
		return booksImages;
	}

	public void setBooksImages(String booksImages) {
		this.booksImages = booksImages;
	}

	public BooksCategory getBooksCategory() {
		return booksCategory;
	}

	public void setBooksCategory(BooksCategory booksCategory) {
		this.booksCategory = booksCategory;
	}

	public Business getBooksBusiness() {
		return booksBusiness;
	}

	public void setBooksBusiness(Business booksBusiness) {
		this.booksBusiness = booksBusiness;
	}

	public String getBooksIntroduce() {
		return booksIntroduce;
	}

	public void setBooksIntroduce(String booksIntroduce) {
		this.booksIntroduce = booksIntroduce;
	}

	@Override
	public String toString() {
		return "Books [booksId=" + booksId + ", booksName=" + booksName + ", booksWriter=" + booksWriter
				+ ", booksConcern=" + booksConcern + ", booksConcerndate=" + booksConcerndate + ", booksPrice="
				+ booksPrice + ", booksNum=" + booksNum + ", booksImages=" + booksImages + ", booksCategory="
				+ booksCategory + ", booksBusiness=" + booksBusiness + ", booksIntroduce=" + booksIntroduce + "]";
	}

	public Books(Integer booksId, String booksName, String booksWriter, String booksConcern, Date booksConcerndate,
			double booksPrice, Integer booksNum, String booksImages, BooksCategory booksCategory,
			Business booksBusiness, String booksIntroduce) {
		super();
		this.booksId = booksId;
		this.booksName = booksName;
		this.booksWriter = booksWriter;
		this.booksConcern = booksConcern;
		this.booksConcerndate = booksConcerndate;
		this.booksPrice = booksPrice;
		this.booksNum = booksNum;
		this.booksImages = booksImages;
		this.booksCategory = booksCategory;
		this.booksBusiness = booksBusiness;
		this.booksIntroduce = booksIntroduce;
	}

	public Books() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}