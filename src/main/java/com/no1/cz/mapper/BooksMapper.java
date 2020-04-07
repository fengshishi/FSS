package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.Books;

@Mapper
public interface BooksMapper {

	//根据booksId修改库存数量
	public void updateNumById(int booksNum,int booksId);
	//页面显示所有书
	public List<Books> findAllBooks();
	//页面显示商家上架的书本
	public List<Books> findBooksByBusinessId(@Param("businessId") int businessId);

	public List<Books> selectById(@Param("booksId") int booksId);
	//商家插入一本书
	public void insertBooks(Books book);
	//商家下架一本书
	public void deleteBooks(@Param("booksId") int booksId);
	//搜索书的类型找出几本书
	public List<Books> findPartBooks(@Param("categoryName") String categoryName);
	//搜索后点击图片根据booksId找到该书的详细信息
	public Books findOneBooks(@Param("booksId") int booksId);
	//附文本编辑器修改书本简介
	public void updateIntroduce(int booksId, String booksIntroduce);
}
