package com.no1.cz.domain;

public class Address {
	private Integer addressId;
	private User userId;
	private String addressName;
	private String addressProvice;
	private String addressCity;
	private String addressXianqu;
	private String addressDetail;
	private String addressPhone;
	
	public Integer getAddressId() {
		return addressId;
	}
	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}
	public String getAddressProvice() {
		return addressProvice;
	}
	public void setAddressProvice(String addressProvice) {
		this.addressProvice = addressProvice;
	}
	public String getAddressCity() {
		return addressCity;
	}
	public void setAddressCity(String addressCity) {
		this.addressCity = addressCity;
	}
	public String getAddressXianqu() {
		return addressXianqu;
	}
	public void setAddressXianqu(String addressXianqu) {
		this.addressXianqu = addressXianqu;
	}
	public String getAddressDetail() {
		return addressDetail;
	}
	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}
	public String getAddressPhone() {
		return addressPhone;
	}
	public void setAddressPhone(String addressPhone) {
		this.addressPhone = addressPhone;
	}
	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", userId=" + userId + ", addressName=" + addressName
				+ ", addressProvice=" + addressProvice + ", addressCity=" + addressCity + ", addressXianqu="
				+ addressXianqu + ", addressDetail=" + addressDetail + ", addressPhone=" + addressPhone + "]";
	}
	public Address(Integer addressId, User userId, String addressName, String addressProvice, String addressCity,
			String addressXianqu, String addressDetail, String addressPhone) {
		super();
		this.addressId = addressId;
		this.userId = userId;
		this.addressName = addressName;
		this.addressProvice = addressProvice;
		this.addressCity = addressCity;
		this.addressXianqu = addressXianqu;
		this.addressDetail = addressDetail;
		this.addressPhone = addressPhone;
	}
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
