package com.no1.cz.domain;

public class Status {
	//status_id	int
	private Integer statusId;
	//status_name	varchar
	private String statusName;
	public Integer getStatusId() {
		return statusId;
	}
	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	@Override
	public String toString() {
		return "Status [statusId=" + statusId + ", statusName=" + statusName + "]";
	}
	public Status(Integer statusId, String statusName) {
		super();
		this.statusId = statusId;
		this.statusName = statusName;
	}
	public Status() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
