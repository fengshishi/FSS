package com.no1.cz.domain;

import java.util.List;

public class ylBookCategory {
//	yl_category_id	int
	private Integer ylcategoryId;
//	yl_category_name	varchar
	private String ylcategoryName;
	private List<ylBook>  ylbookList;
	public Integer getYlcategoryId() {
		return ylcategoryId;
	}
	public void setYlcategoryId(Integer ylcategoryId) {
		this.ylcategoryId = ylcategoryId;
	}
	public String getYlcategoryName() {
		return ylcategoryName;
	}
	public void setYlcategoryName(String ylcategoryName) {
		this.ylcategoryName = ylcategoryName;
	}
	public List<ylBook> getYlbookList() {
		return ylbookList;
	}
	public void setYlbookList(List<ylBook> ylbookList) {
		this.ylbookList = ylbookList;
	}
	public ylBookCategory() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ylBookCategory(Integer ylcategoryId, String ylcategoryName, List<ylBook> ylbookList) {
		super();
		this.ylcategoryId = ylcategoryId;
		this.ylcategoryName = ylcategoryName;
		this.ylbookList = ylbookList;
	}
	@Override
	public String toString() {
		return "ylBookCategory [ylcategoryId=" + ylcategoryId + ", ylcategoryName=" + ylcategoryName + ", ylbookList="
				+ ylbookList + "]";
	}
	


}
