package com.no1.cz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.User;
import com.no1.cz.mapper.UserMapper;

@Service
public class UserService {

	@Resource
	private UserMapper userMapper;

	// 用户注册
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	public void regist(String userName, String userPwd, String userEmail, String userPhone, String createTime) {
		try {
			User user = new User();
			user.setUserName(userName);
			user.setUserPwd(userPwd);
			user.setUserEmail(userEmail);
			user.setUserPhone(userPhone);
			user.setCreateTime(createTime);
			this.userMapper.regist(user);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	// 用户登录
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	public User login(String userName, String userPwd) {
		try {
			return this.userMapper.login(userName, userPwd);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public User findUserId(String userName){
		try{
			return this.userMapper.findUserId(userName);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	// 判断用户是否存在
	public boolean isUserExist(String userName) {
		if (userMapper.findUsersByUsername(userName) == null) {
			return false;
		} else {
			return true;
		}
	}

	// 根据提供的用户名拿密码
	public String getPasswordByUsername(String userName) {
		return userMapper.findUsersByUsername(userName).getUserPwd();
	}

	// 修改某一用户的密码
	public void modifyPasswordByUsername(String userName, String newuserPwd) {
		User user = userMapper.findUsersByUsername(userName);
		user.setUserName(userName);
		user.setUserPwd(newuserPwd);
		userMapper.modifyPasswordByUsername(user);
	}

	// 查询所有User
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public List<User> findAll(){
		try {
			return this.userMapper.findAll();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	//根据ID 查找用户
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public User selectById(int userId){
		try {
			return this.userMapper.selectById(userId);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	//根据修改用户
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void update(User user){
		try {
			this.userMapper.update(user);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

    //新增用户
	public void insert(String userName, String userPwd, String userEmail, String userPhone, String createTime) {
		User user = new User();
		user.setUserName(userName);
		user.setUserPwd(userPwd);
		user.setUserEmail(userEmail);
		user.setUserPhone(userPhone);
		user.setCreateTime(createTime);
		this.userMapper.insert(user);
		
	}
	//根据id 删除用户
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void deleteById(int userId){
		try {
			this.userMapper.deleteById(userId);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}


}
