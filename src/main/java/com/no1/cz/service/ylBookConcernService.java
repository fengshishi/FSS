package com.no1.cz.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.ylBookConcern;
import com.no1.cz.mapper.ylBookConcernMapper;
import com.no1.cz.mapper.ylBookMapper;

@Service
public class ylBookConcernService {
   @Resource
   private ylBookConcernMapper ylbookConcernMapper;
   @Resource
   private ylBookMapper ylbookMapper;
   
   @Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
   public void save(ylBookConcern ylbookConcern) {
	   try {
		this.ylbookConcernMapper.save(ylbookConcern);
		int ylbookId = ylbookConcern.getYlconcernBook().getYlbookId();
		//this.ylbookMapper.update(ylbookId);
		
	} catch (Exception e) {
		e.printStackTrace();
		throw new RuntimeException(e);
	}
   }
   
}
