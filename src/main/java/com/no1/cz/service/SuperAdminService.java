package com.no1.cz.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.SuperAdmin;
import com.no1.cz.mapper.SuperAdminMapper;

@Service
public class SuperAdminService {
       @Resource
       private SuperAdminMapper superAdminMapper;
       
    // 用户登录
    		@Transactional(propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
    		public SuperAdmin login(String superadminName, String superadminPwd) {
    			try {
    				return this.superAdminMapper.login(superadminName, superadminPwd);
    			} catch (Exception e) {
    				e.printStackTrace();
    				throw new RuntimeException(e);
    			}
    		}
}
