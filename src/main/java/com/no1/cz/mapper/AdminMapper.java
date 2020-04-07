package com.no1.cz.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.Admin;

@Mapper
public interface AdminMapper {
	//管理员登录
	public Admin login(@Param("adminName") String adminName, @Param("adminPwd") String adminPwd);

}
