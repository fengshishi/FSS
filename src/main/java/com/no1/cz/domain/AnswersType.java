package com.no1.cz.domain;

import java.util.List;

public class AnswersType {
	private Integer antypeId;

    private String antypeName;
    //  一个问题类型下面会有若干条信息
	private List<Answers> answersList; 

	public Integer getAntypeId() {
		return antypeId;
	}

	public void setAntypeId(Integer antypeId) {
		this.antypeId = antypeId;
	}

	public String getAntypeName() {
		return antypeName;
	}

	public void setAntypeName(String antypeName) {
		this.antypeName = antypeName;
	}

	public List<Answers> getAnswersList() {
		return answersList;
	}

	public void setAnswersList(List<Answers> answersList) {
		this.answersList = answersList;
	}

	@Override
	public String toString() {
		return "AnswersType [antypeId=" + antypeId + ", antypeName=" + antypeName + ", answersList=" + answersList
				+ "]";
	}

	public AnswersType(Integer antypeId, String antypeName, List<Answers> answersList) {
		super();
		this.antypeId = antypeId;
		this.antypeName = antypeName;
		this.answersList = answersList;
	}

	public AnswersType() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
