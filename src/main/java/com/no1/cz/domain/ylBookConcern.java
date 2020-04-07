package com.no1.cz.domain;

public class ylBookConcern {
//	yl_concern_id	int
	private Integer ylconcernId;
//	yl_concern_name	varchar
	private String ylconcernName;
//	yl_concern_book	int
	private ylBook ylconcernBook;
//	yl_concern_num	int
	private Integer ylconcernNum;
	public Integer getYlconcernId() {
		return ylconcernId;
	}
	public void setYlconcernId(Integer ylconcernId) {
		this.ylconcernId = ylconcernId;
	}
	public String getYlconcernName() {
		return ylconcernName;
	}
	public void setYlconcernName(String ylconcernName) {
		this.ylconcernName = ylconcernName;
	}
	public ylBook getYlconcernBook() {
		return ylconcernBook;
	}
	public void setYlconcernBook(ylBook ylconcernBook) {
		this.ylconcernBook = ylconcernBook;
	}
	public Integer getYlconcernNum() {
		return ylconcernNum;
	}
	public void setYlconcernNum(Integer ylconcernNum) {
		this.ylconcernNum = ylconcernNum;
	}
	public ylBookConcern() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ylBookConcern(Integer ylconcernId, String ylconcernName, ylBook ylconcernBook, Integer ylconcernNum) {
		super();
		this.ylconcernId = ylconcernId;
		this.ylconcernName = ylconcernName;
		this.ylconcernBook = ylconcernBook;
		this.ylconcernNum = ylconcernNum;
	}
	@Override
	public String toString() {
		return "ylBookConcern [ylconcernId=" + ylconcernId + ", ylconcernName=" + ylconcernName + ", ylconcernBook="
				+ ylconcernBook + ", ylconcernNum=" + ylconcernNum + "]";
	}
	
	


}
