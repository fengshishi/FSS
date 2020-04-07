package com.no1.cz.service;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.ylBook;
import com.no1.cz.domain.ylBookConcern;
import com.no1.cz.domain.ylBookWriter;
import com.no1.cz.mapper.ylBookConcernMapper;
import com.no1.cz.mapper.ylBookMapper;
import com.no1.cz.mapper.ylBookWriterMapper;

@Service
public class ylBookService {
	
	@Resource
	private ylBookMapper ylbookMapper;
	@Resource
	private ylBookWriterMapper ylbookWriterMapper;
	@Resource
	private ylBookConcernMapper ylbookConcernMapper;
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public List<ylBook> findAll(){
		try {
			return this.ylbookMapper.findAll();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public ylBook findById(int ylbookId){
		ylBook ylbook = null;
		try {
			ylbook = this.ylbookMapper.findById(ylbookId);
			List<ylBookWriter> ylbookWriterList = this.ylbookWriterMapper.findByBook(ylbookId);
			List<ylBookConcern> ylbookConcernList = this.ylbookConcernMapper.findByBook(ylbookId);
			ylbook.setYlbookWriterList(ylbookWriterList);
			ylbook.setYlbookConcernList(ylbookConcernList);
			return ylbook;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public List<ylBook> findByName(String ylbookName){
		try {
			return this.ylbookMapper.findByName(ylbookName);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
}
