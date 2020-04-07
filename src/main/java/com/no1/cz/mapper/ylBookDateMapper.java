package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.ylBookDate;


@Mapper
public interface ylBookDateMapper {
	public List<ylBookDate> findAll();
	public List<ylBookDate> findById(@Param("yldateId") int yldateId);
	public void insert(ylBookDate ylbookDate);
	public void deleteById(int yldateId);
	public void update(ylBookDate ylbookDate);

	public List<ylBookDate> findByName(@Param("ylbookName") String ylbookName);
}
