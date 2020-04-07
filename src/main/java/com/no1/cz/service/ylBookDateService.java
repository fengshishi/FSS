package com.no1.cz.service;

import java.util.List;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import com.no1.cz.domain.ylBookDate;
import com.no1.cz.mapper.ylBookDateMapper;

@Service
public class ylBookDateService {
	
	@Resource
	private ylBookDateMapper ylbookDateMapper;
	
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public List<ylBookDate> findAll(){ //对应mapper接口的相关类方法
		try {
			return this.ylbookDateMapper.findAll(); //对应Test方法
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public List<ylBookDate> findById(int yldateId){//对应mapper接口的相关类方法
		/*ylBookDate ylbookDate = null;
		try {
			 ylbookDate = this.ylbookDateMapper.findById(yldateId);//对应Test方法
			 ylbookDate.setYldateId(yldateId);
			return ylbookDate;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}*/
		try{
			List<ylBookDate> ylBookDateList= this.ylbookDateMapper.findById(yldateId);
			return ylBookDateList;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
