package com.no1.cz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.BooksCategory;
import com.no1.cz.mapper.BooksCategoryMapper;

@Service
public class BooksCategoryService {

	@Resource
	private BooksCategoryMapper booksCategoryMapper;
	
	@Transactional(rollbackFor=Exception.class)
	public List<BooksCategory> findBooksCategoryName() {
		try {
			List<BooksCategory> booksCategoryNameList=this.booksCategoryMapper.booksCategoryName();
			return booksCategoryNameList;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	@Transactional(rollbackFor=Exception.class)
	public void findCategoryId(String categoryName) {
		try {
			this.booksCategoryMapper.findCategoryId(categoryName);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
