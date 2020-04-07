package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.no1.cz.domain.ylBookWriter;

@Mapper
public interface ylBookWriterMapper {
	public List<ylBookWriter> findByBook(int ylbookId);
	public List<ylBookWriter> findAll();
	public void insert(ylBookWriter ylbookWriter);
	public void update(ylBookWriter ylbookWriter);
	public void deleteById(int ylwriterId);

}
