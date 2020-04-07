package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.no1.cz.domain.ylBookConcern;



@Mapper
public interface ylBookConcernMapper {
	public List<ylBookConcern> findByBook(int ylbookId);
	public void save(ylBookConcern ylbookConcern);

}
