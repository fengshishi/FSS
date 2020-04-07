package com.no1.cz.domain;

public class SuperAdmin {
//	superadmin_id	int
	private int superadminId;
//	superadmin_name	varchar
	private String superadminName;
//	superadmin_pwd	varchar
	private String superadminPwd;
	public int getSuperadminId() {
		return superadminId;
	}
	public void setSuperadminId(int superadminId) {
		this.superadminId = superadminId;
	}
	public String getSuperadminName() {
		return superadminName;
	}
	public void setSuperadminName(String superadminName) {
		this.superadminName = superadminName;
	}
	public String getSuperadminPwd() {
		return superadminPwd;
	}
	public void setSuperadminPwd(String superadminPwd) {
		this.superadminPwd = superadminPwd;
	}
	public SuperAdmin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SuperAdmin(int superadminId, String superadminName, String superadminPwd) {
		super();
		this.superadminId = superadminId;
		this.superadminName = superadminName;
		this.superadminPwd = superadminPwd;
	}
	@Override
	public String toString() {
		return "SuperAdmin [superadminId=" + superadminId + ", superadminName=" + superadminName + ", superadminPwd="
				+ superadminPwd + "]";
	}

}
