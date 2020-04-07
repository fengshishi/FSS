package com.no1.cz.domain;

public class Details {
	//detail_id	int
	private Integer detailId;
	//detail_books	int
	private Cart detailCart;
	//detail_price	double
	private double detailPrice;
	//detail_num	int
	private Integer detailNum;
	//detail_order	int
	private String detailOrder;
	public Integer getDetailId() {
		return detailId;
	}
	public void setDetailId(Integer detailId) {
		this.detailId = detailId;
	}
	public Cart getDetailCart() {
		return detailCart;
	}
	public void setDetailCart(Cart detailCart) {
		this.detailCart = detailCart;
	}
	public double getDetailPrice() {
		return detailPrice;
	}
	public void setDetailPrice(double detailPrice) {
		this.detailPrice = detailPrice;
	}
	public Integer getDetailNum() {
		return detailNum;
	}
	public void setDetailNum(Integer detailNum) {
		this.detailNum = detailNum;
	}
	public String getDetailOrder() {
		return detailOrder;
	}
	public void setDetailOrder(String detailOrder) {
		this.detailOrder = detailOrder;
	}
	@Override
	public String toString() {
		return "Details [detailId=" + detailId + ", detailCart=" + detailCart + ", detailPrice=" + detailPrice
				+ ", detailNum=" + detailNum + ", detailOrder=" + detailOrder + "]";
	}
	public Details(Integer detailId, Cart detailCart, double detailPrice, Integer detailNum, String detailOrder) {
		super();
		this.detailId = detailId;
		this.detailCart = detailCart;
		this.detailPrice = detailPrice;
		this.detailNum = detailNum;
		this.detailOrder = detailOrder;
	}
	public Details() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
