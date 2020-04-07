package com.no1.cz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.Books;
import com.no1.cz.domain.Business;
import com.no1.cz.mapper.BooksMapper;

@Service
public class BooksService {

	@Resource
	private BooksMapper booksMapper;
	
	//是找到所有书本的集合
	@Transactional(rollbackFor=Exception.class)
	public List<Books> findAll() {
		try {
			List<Books> booksList = this.booksMapper.findAllBooks();
			return booksList;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	//根据书本类型寻找书的集合
	@Transactional(rollbackFor=Exception.class)
	public List<Books> findPartBooks(String categoryName) {
		try {
			List<Books> partBooksList = this.booksMapper.findPartBooks(categoryName);
			return partBooksList;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	

	//根据商家的Id找到的书本
		@Transactional(rollbackFor=Exception.class)
		public List<Books> findBooksByBusinessId(int businessId) {
			try {
				List<Books> booksList1 = this.booksMapper.findBooksByBusinessId(businessId);
				return booksList1;
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
	
	//下架一本书
		@Transactional(rollbackFor=Exception.class)
		public void delete(int booksId) {
			try {
				this.booksMapper.deleteBooks(booksId);
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
	
	@Transactional(rollbackFor=Exception.class)
	public List<Books> selectById(int booksId) {
		try {
			List<Books> booksList = this.booksMapper.selectById(booksId);
			return booksList;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void saveBooks(Books books, int businessId) {
		try {
			Business business = new Business();
			business.setBusinessId(businessId);
			books.setBooksBusiness(business);			
		    this.booksMapper.insertBooks(books);
		    
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public Books findOneBook(int booksId) {
		try {
			return this.booksMapper.findOneBooks(booksId);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	//修改书的简介
		@Transactional(propagation=Propagation.REQUIRED)
		public String updateBooks(int booksId, String booksIntroduce) {
			try {
				 this.booksMapper.updateIntroduce(booksId, booksIntroduce);
				 return "succ";
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
}
