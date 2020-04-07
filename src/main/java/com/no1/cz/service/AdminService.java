package com.no1.cz.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.Admin;
import com.no1.cz.mapper.AdminMapper;


@Service
public class AdminService {
	@Resource
	private AdminMapper adminMapper;
	
	// 用户登录
		@Transactional(propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
		public Admin login(String adminName, String adminPwd) {
			try {
				return this.adminMapper.login(adminName, adminPwd);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
}
