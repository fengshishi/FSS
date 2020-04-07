package com.no1.cz.domain;

import java.sql.Date;

public class ylBookDate {

//	yl_date_id	int
	private Integer yldateId;
//	yl_date_year	date
	private Date    yldateYear;
//	yl_date_book	varchar
	private String  yldateBook;
//	yl_book_writer	varchar
	private String  ylbookWriter;
//	yl_book_concern	varchar
	private String  ylbookConcern;
//	yl_book_price	double
	private Double  ylbookPrice;
//	yl_book_category	varchar
	private String  ylbookCategory;
	public Integer getYldateId() {
		return yldateId;
	}
	public void setYldateId(Integer yldateId) {
		this.yldateId = yldateId;
	}
	public Date getYldateYear() {
		return yldateYear;
	}
	public void setYldateYear(Date yldateYear) {
		this.yldateYear = yldateYear;
	}
	public String getYldateBook() {
		return yldateBook;
	}
	public void setYldateBook(String yldateBook) {
		this.yldateBook = yldateBook;
	}
	public String getYlbookWriter() {
		return ylbookWriter;
	}
	public void setYlbookWriter(String ylbookWriter) {
		this.ylbookWriter = ylbookWriter;
	}
	public String getYlbookConcern() {
		return ylbookConcern;
	}
	public void setYlbookConcern(String ylbookConcern) {
		this.ylbookConcern = ylbookConcern;
	}
	public Double getYlbookPrice() {
		return ylbookPrice;
	}
	public void setYlbookPrice(Double ylbookPrice) {
		this.ylbookPrice = ylbookPrice;
	}
	public String getYlbookCategory() {
		return ylbookCategory;
	}
	public void setYlbookCategory(String ylbookCategory) {
		this.ylbookCategory = ylbookCategory;
	}
	public ylBookDate() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ylBookDate(Integer yldateId, Date yldateYear, String yldateBook, String ylbookWriter, String ylbookConcern,
			Double ylbookPrice, String ylbookCategory) {
		super();
		this.yldateId = yldateId;
		this.yldateYear = yldateYear;
		this.yldateBook = yldateBook;
		this.ylbookWriter = ylbookWriter;
		this.ylbookConcern = ylbookConcern;
		this.ylbookPrice = ylbookPrice;
		this.ylbookCategory = ylbookCategory;
	}
	@Override
	public String toString() {
		return "ylBookDate [yldateId=" + yldateId + ", yldateYear=" + yldateYear + ", yldateBook=" + yldateBook
				+ ", ylbookWriter=" + ylbookWriter + ", ylbookConcern=" + ylbookConcern + ", ylbookPrice=" + ylbookPrice
				+ ", ylbookCategory=" + ylbookCategory + "]";
	}
	
	


}
