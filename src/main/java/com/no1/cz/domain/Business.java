package com.no1.cz.domain;


import com.fasterxml.jackson.annotation.JsonFormat;

public class Business {
//	business_id	int
	private int businessId;
//	business_name	varchar
	private String businessName;
//	business_pwd	varchar
	private String businessPwd;
//	business_email	varchar
	private String businessEmail;
//	business_phone	varchar
	private String businessPhone;
//	create_time	timestamp
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone="GMT+8")
	private String createTime;
//	update_time	timestamp
	private String updateTime;
	public int getBusinessId() {
		return businessId;
	}
	public void setBusinessId(int businessId) {
		this.businessId = businessId;
	}
	public String getBusinessName() {
		return businessName;
	}
	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}
	public String getBusinessPwd() {
		return businessPwd;
	}
	public void setBusinessPwd(String businessPwd) {
		this.businessPwd = businessPwd;
	}
	public String getBusinessEmail() {
		return businessEmail;
	}
	public void setBusinessEmail(String businessEmail) {
		this.businessEmail = businessEmail;
	}
	public String getBusinessPhone() {
		return businessPhone;
	}
	public void setBusinessPhone(String businessPhone) {
		this.businessPhone = businessPhone;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public Business() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Business(int businessId, String businessName, String businessPwd, String businessEmail, String businessPhone,
			String createTime, String updateTime) {
		super();
		this.businessId = businessId;
		this.businessName = businessName;
		this.businessPwd = businessPwd;
		this.businessEmail = businessEmail;
		this.businessPhone = businessPhone;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "Business [businessId=" + businessId + ", businessName=" + businessName + ", businessPwd=" + businessPwd
				+ ", businessEmail=" + businessEmail + ", businessPhone=" + businessPhone + ", createTime=" + createTime
				+ ", updateTime=" + updateTime + "]";
	}
	
	

}
