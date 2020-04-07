package com.no1.cz.domain;

import java.util.Date;

public class Cart {
    private Integer cartId;

    private User userId;

    private Books booksId;

    private Integer booksQuantity;

    private Integer cartChecked;

    private Date creatTime;

    private Date updateTime;
    
    private double cartPrice;

	public Integer getCartId() {
		return cartId;
	}

	public void setCartId(Integer cartId) {
		this.cartId = cartId;
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

	public Integer getBooksQuantity() {
		return booksQuantity;
	}

	public void setBooksQuantity(Integer booksQuantity) {
		this.booksQuantity = booksQuantity;
	}

	public Integer getCartChecked() {
		return cartChecked;
	}

	public void setCartChecked(Integer cartChecked) {
		this.cartChecked = cartChecked;
	}

	public Date getCreatTime() {
		return creatTime;
	}

	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public double getCartPrice() {
		return cartPrice;
	}

	public void setCartPrice(double cartPrice) {
		this.cartPrice = cartPrice;
	}

	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", userId=" + userId + ", booksId=" + booksId + ", booksQuantity="
				+ booksQuantity + ", cartChecked=" + cartChecked + ", creatTime=" + creatTime + ", updateTime="
				+ updateTime + ", cartPrice=" + cartPrice + "]";
	}

	public Cart(Integer cartId, User userId, Books booksId, Integer booksQuantity, Integer cartChecked, Date creatTime,
			Date updateTime, double cartPrice) {
		super();
		this.cartId = cartId;
		this.userId = userId;
		this.booksId = booksId;
		this.booksQuantity = booksQuantity;
		this.cartChecked = cartChecked;
		this.creatTime = creatTime;
		this.updateTime = updateTime;
		this.cartPrice = cartPrice;
	}

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}