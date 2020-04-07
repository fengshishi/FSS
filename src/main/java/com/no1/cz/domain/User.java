package com.no1.cz.domain;


import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class User {
//	user_id	int
	private int userId;
//	user_name	varchar
	private String userName;
//	user_pwd	varchar
	private String userPwd;
//	user_email	varchar
	private String userEmail;
//	user_phone	double
	private String userPhone;
//	create_time	timestamp
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone="GMT+8")
	private String createTime;
//	update_time	timestamp
	private String updateTime;

    
	private List<Answers> answersList;
	private List<Address> addressList;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
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
	public List<Answers> getAnswersList() {
		return answersList;
	}
	public void setAnswersList(List<Answers> answersList) {
		this.answersList = answersList;
	}
	public List<Address> getAddressList() {
		return addressList;
	}
	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}
	public User(int userId, String userName, String userPwd, String userEmail, String userPhone, String createTime,
			String updateTime, List<Answers> answersList, List<Address> addressList) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.answersList = answersList;
		this.addressList = addressList;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd + ", userEmail=" + userEmail
				+ ", userPhone=" + userPhone + ", createTime=" + createTime + ", updateTime=" + updateTime
				+ ", answersList=" + answersList + ", addressList=" + addressList + "]";
	}
    
    
}
