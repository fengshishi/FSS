package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.ylBook;

@Mapper
public interface ylBookMapper {
	public List<ylBook> findAll();
	public ylBook findById(int ylbookId);
	public List<ylBook> findByName(@Param("ylbookName") String ylbookName);
}
