package com.no1.cz.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.Business;

@Mapper
public interface BusinessMapper {
	//注册                                                                            
	public void regist(Business business);
	//登录
	public Business login(@Param("businessName") String businessName, @Param("businessPwd") String businessPwd);
	//根据用户名查找userId
    public Business findBusinessId(@Param("businessName") String businessName);
}

