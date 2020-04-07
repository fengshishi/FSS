package com.no1.cz.service;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.Business;
import com.no1.cz.mapper.BusinessMapper;

@Service
public class BusinessService {

	@Resource
	private BusinessMapper bussinessMapper;
	//用户注册
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void regist(String businessName,String businessPwd,String businessEmail,String businessPhone,String createTime){
		try{
			Business business=new Business();
			business.setBusinessName(businessName);
			business.setBusinessPwd(businessPwd);
			business.setBusinessEmail(businessEmail);
			business.setBusinessPhone(businessPhone);
			business.setCreateTime(createTime);
			this.bussinessMapper.regist(business);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	//用户登录
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public Business login(String businessName, String businessPwd){
		try{
			return this.bussinessMapper.login(businessName, businessPwd);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	public boolean isUserExist(String businessName) {
		return false;
	}
	public Object getPasswordByUsername(String businessName) {
		return null;
	}
	public void modifyPasswordByUsername(String businessName, String newbusinessPwd) {
		
	}
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public Business findBusinessId(String businessName){
		try{
			return this.bussinessMapper.findBusinessId(businessName);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
}
