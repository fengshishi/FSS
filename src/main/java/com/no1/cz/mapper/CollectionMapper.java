package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.Collection;

@Mapper
public interface CollectionMapper {
	//加入收藏夹
	public void insertCollection(Collection collection);
	//按用户查找收藏夹信息
	public List<Collection> selectByUser(@Param("userId") int userId);
	//不想要的东西删了
	public void deleteByCollection(@Param("collectionId") int collectionId);
	//根据下架的书本删除
	public void deleteByBooksId(@Param("booksId") int booksId);
}
