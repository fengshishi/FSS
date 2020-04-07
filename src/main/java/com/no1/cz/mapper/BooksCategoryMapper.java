package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.BooksCategory;

@Mapper
public interface BooksCategoryMapper {
	
	//展示所有书类型的名称
	public List<BooksCategory> booksCategoryName();
	
	//根据名字找到Id
	public void findCategoryId(@Param("categoryName") String categoryName);
}
