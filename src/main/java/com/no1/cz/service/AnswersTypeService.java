package com.no1.cz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.AnswersType;
import com.no1.cz.mapper.AnswersTypeMapper;

@Service
public class AnswersTypeService {
	
	@Resource
	private AnswersTypeMapper answersTypeMapper;
	
	//查询所有问题类型
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	public List<AnswersType> listtype(){
		try {
			return this.answersTypeMapper.listtype();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
