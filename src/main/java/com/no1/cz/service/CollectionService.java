package com.no1.cz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.Books;
import com.no1.cz.domain.Collection;
import com.no1.cz.mapper.BooksMapper;
import com.no1.cz.mapper.CollectionMapper;

@Service
public class CollectionService {
	@Resource
	private CollectionMapper collectionMapper;
	@Resource
	private BooksMapper booksMapper;
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void saveCollection(Collection collection, List<Books> selectById) {
		try {
			for(Books books : selectById) {
				collection.setBooksId(books);
				collection.setCollectionName(books.getBooksName());
				collection.setCollectionPrice(books.getBooksPrice());
				 }
			this.collectionMapper.insertCollection(collection);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public List<Collection> selectByUser(int userId) {
		try {
			List<Collection> collectionList = this.collectionMapper.selectByUser(userId);
			return collectionList;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void deleteByCollectionId(int collectionId) {
		try {
			this.collectionMapper.deleteByCollection(collectionId);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void deleteByBookId(int booksId) {
		try {
			this.collectionMapper.deleteByBooksId(booksId);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
