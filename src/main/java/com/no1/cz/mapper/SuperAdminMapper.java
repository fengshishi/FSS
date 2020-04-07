package com.no1.cz.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.SuperAdmin;

@Mapper
public interface SuperAdminMapper {
  //登录
	public SuperAdmin login(@Param("superadminName") String superadminName,@Param("superadminPwd")String superadminPwd);
}
