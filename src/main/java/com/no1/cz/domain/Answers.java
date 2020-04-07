package com.no1.cz.domain;

import java.util.Date;

public class Answers {
	private Integer answersId;

    private User userId;

    private AnswersType answersType;

    private String answersName;

    private String answersContent;
    
    private Date answersDate;

	public Integer getAnswersId() {
		return answersId;
	}

	public void setAnswersId(Integer answersId) {
		this.answersId = answersId;
	}

	public User getUserId() {
		return userId;
	}

	public void setUserId(User userId) {
		this.userId = userId;
	}

	public AnswersType getAnswersType() {
		return answersType;
	}

	public void setAnswersType(AnswersType answersType) {
		this.answersType = answersType;
	}

	public String getAnswersName() {
		return answersName;
	}

	public void setAnswersName(String answersName) {
		this.answersName = answersName;
	}

	public String getAnswersContent() {
		return answersContent;
	}

	public void setAnswersContent(String answersContent) {
		this.answersContent = answersContent;
	}

	public Date getAnswersDate() {
		return answersDate;
	}

	public void setAnswersDate(Date answersDate) {
		this.answersDate = answersDate;
	}

	@Override
	public String toString() {
		return "Answers [answersId=" + answersId + ", userId=" + userId + ", answersType=" + answersType
				+ ", answersName=" + answersName + ", answersContent=" + answersContent + ", answersDate=" + answersDate
				+ "]";
	}

	public Answers(Integer answersId, User userId, AnswersType answersType, String answersName, String answersContent,
			Date answersDate) {
		super();
		this.answersId = answersId;
		this.userId = userId;
		this.answersType = answersType;
		this.answersName = answersName;
		this.answersContent = answersContent;
		this.answersDate = answersDate;
	}

	public Answers() {
		super();
		// TODO Auto-generated constructor stub
	}
}
