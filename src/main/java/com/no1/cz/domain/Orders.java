package com.no1.cz.domain;

import java.util.List;

public class Orders {
	//order_id	int
	private String orderId;
	//order_user	int
	private User orderUser;
	//order_name	varchar
	private String orderName;
	//order_phone	varchar
	private String orderPhone;
	//order_address	varchar
	private String orderAddress;
	//order_status	int
	private Status orderStatus;
	//order_price	double
	private double orderPrice;
	// 从属于订单的订单明细集合
	private List<Details> detailList;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public User getOrderUser() {
		return orderUser;
	}
	public void setOrderUser(User orderUser) {
		this.orderUser = orderUser;
	}
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public String getOrderPhone() {
		return orderPhone;
	}
	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}
	public String getOrderAddress() {
		return orderAddress;
	}
	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}
	public Status getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(Status orderStatus) {
		this.orderStatus = orderStatus;
	}
	public double getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(double orderPrice) {
		this.orderPrice = orderPrice;
	}
	public List<Details> getDetailList() {
		return detailList;
	}
	public void setDetailList(List<Details> detailList) {
		this.detailList = detailList;
	}
	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", orderUser=" + orderUser + ", orderName=" + orderName + ", orderPhone="
				+ orderPhone + ", orderAddress=" + orderAddress + ", orderStatus=" + orderStatus + ", orderPrice="
				+ orderPrice + ", detailList=" + detailList + "]";
	}
	public Orders(String orderId, User orderUser, String orderName, String orderPhone, String orderAddress,
			Status orderStatus, double orderPrice, List<Details> detailList) {
		super();
		this.orderId = orderId;
		this.orderUser = orderUser;
		this.orderName = orderName;
		this.orderPhone = orderPhone;
		this.orderAddress = orderAddress;
		this.orderStatus = orderStatus;
		this.orderPrice = orderPrice;
		this.detailList = detailList;
	}
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
