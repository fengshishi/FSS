package com.no1.cz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.ylBookWriter;
import com.no1.cz.mapper.ylBookMapper;
import com.no1.cz.mapper.ylBookWriterMapper;

@Service
public class ylBookWriterService {
	@Resource
	private ylBookWriterMapper ylbookWriterMapper;
	@Resource
	private ylBookMapper ylbookMapper;
	
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public List<ylBookWriter> findAll(){
		try {
			return this.ylbookWriterMapper.findAll();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void insert(ylBookWriter ylbookWriter){
		try {
			this.ylbookWriterMapper.insert(ylbookWriter);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void update(ylBookWriter ylbookWriter){
		try {
			this.ylbookWriterMapper.update(ylbookWriter);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void deleteById(int ylwriterId){
		try {
			this.ylbookWriterMapper.deleteById(ylwriterId);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
