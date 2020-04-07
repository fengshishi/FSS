package com.no1.cz.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.no1.cz.domain.SuperAdmin;
import com.no1.cz.service.SuperAdminService;

@Controller
@RequestMapping(value="/superadmin")
public class SuperAdminController {
	@Resource
	private SuperAdminService superAdminService;

	//转向登录页面
	@RequestMapping("tologin")
	public String tologin(){
		System.out.println("准备去到登录页面");
		return "user/superadminlogin";				
	}
	@RequestMapping("login")
	public String login(String superadminName, String superadminPwd, HttpSession session){
		if(!superadminName.equals("") && !superadminPwd.equals("")){
			SuperAdmin SuperAdmin =superAdminService.login(superadminName, superadminPwd);
			if(SuperAdmin != null){
				session.setAttribute("SuperAdmin", SuperAdmin);
				return "redirect:/user/showAllUser";
			}
			else{
				session.setAttribute("msg", "账号或密码错误");
				return "user/superadminlogin";
			}
		}
		session.setAttribute("msg", "账号或密码不能为空！");
		return "user/superadminlogin";
	}

	//退出登录
		@RequestMapping("/outsuperadmin")
		public void outsuperadmin(HttpServletRequest request, HttpServletResponse response) throws IOException {
			request.getSession().removeAttribute("SuperAdmin");
			response.sendRedirect("/web/index");
		}
}
