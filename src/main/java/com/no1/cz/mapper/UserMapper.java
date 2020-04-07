package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.User;
@Mapper
public interface UserMapper {
	//注册                                                                            
	public void regist(User user);   
	
	//登录
	public User login(@Param("userName") String userName, @Param("userPwd") String userPwd);
	
	//修改用户密码
	public int modifyPasswordByUsername(User user);
	public User findUsersByUsername(String userName);
	
	//查询所有用户 
	public List<User> findAll();
    
	//通过id查找用户信息
	public User selectById(@Param("userId") int userId);
	
	//通过id删除用户信息
	public void deleteById(int userId);
	
	//修改用户信息
	public void update(User user);

	public void insert(User user);
	//根据用户名查找userId
    public User findUserId(@Param("userName") String userName);

}
