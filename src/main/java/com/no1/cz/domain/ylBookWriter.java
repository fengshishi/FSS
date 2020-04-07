package com.no1.cz.domain;

public class ylBookWriter {
//	yl_writer_id	int
	private Integer ylwriterId;
//	yl_writer_name	varchar
	private String ylwriterName;
//	yl_writer_gender	varchar
	private String ylwriterGender;
//	yl_writer_age	int
	private Integer ylwriterAge;
//	yl_writer_nationality	varchar
	private String ylwriterNationality;
//	yl_writer_book	int
	private ylBook ylwriterbook;
	
	
	public Integer getYlwriterId() {
		return ylwriterId;
	}
	public void setYlwriterId(Integer ylwriterId) {
		this.ylwriterId = ylwriterId;
	}
	public String getYlwriterName() {
		return ylwriterName;
	}
	public void setYlwriterName(String ylwriterName) {
		this.ylwriterName = ylwriterName;
	}
	public String getYlwriterGender() {
		return ylwriterGender;
	}
	public void setYlwriterGender(String ylwriterGender) {
		this.ylwriterGender = ylwriterGender;
	}
	public Integer getYlwriterAge() {
		return ylwriterAge;
	}
	public void setYlwriterAge(Integer ylwriterAge) {
		this.ylwriterAge = ylwriterAge;
	}
	public String getYlwriterNationality() {
		return ylwriterNationality;
	}
	public void setYlwriterNationality(String ylwriterNationality) {
		this.ylwriterNationality = ylwriterNationality;
	}
	public ylBook getYlwriterbook() {
		return ylwriterbook;
	}
	public void setYlwriterbook(ylBook ylwriterbook) {
		this.ylwriterbook = ylwriterbook;
	}
	public ylBookWriter() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ylBookWriter(Integer ylwriterId, String ylwriterName, String ylwriterGender, Integer ylwriterAge,
			String ylwriterNationality, ylBook ylwriterbook) {
		super();
		this.ylwriterId = ylwriterId;
		this.ylwriterName = ylwriterName;
		this.ylwriterGender = ylwriterGender;
		this.ylwriterAge = ylwriterAge;
		this.ylwriterNationality = ylwriterNationality;
		this.ylwriterbook = ylwriterbook;
	}
	@Override
	public String toString() {
		return "ylBookWriter [ylwriterId=" + ylwriterId + ", ylwriterName=" + ylwriterName + ", ylwriterGender="
				+ ylwriterGender + ", ylwriterAge=" + ylwriterAge + ", ylwriterNationality=" + ylwriterNationality
				+ ", ylwriterbook=" + ylwriterbook + "]";
	}
	


}
