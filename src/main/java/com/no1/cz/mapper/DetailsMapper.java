package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.Details;

@Mapper
public interface DetailsMapper {
	
	//1.保存Details
	public void insert(Details detail);
	//根据用户Id找details
	public List<Details> findDetailsById(@Param("userId") int userId);
}
