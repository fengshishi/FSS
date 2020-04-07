package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.Answers;

@Mapper
public interface AnswersMapper {
	//我要提问
	 int insertanswers(Answers answers);
	 //查询所有userId的提问的问题
	public List<Answers> answersList(@Param("userId") int userId);
	//查所有
	List<Answers> selectAll();
}
