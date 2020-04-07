package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.no1.cz.domain.AnswersType;

@Mapper
public interface AnswersTypeMapper {
	//增加问题类型
	int insert(AnswersType record);
	//查询所有问题类型
	public List<AnswersType> listtype();
}
