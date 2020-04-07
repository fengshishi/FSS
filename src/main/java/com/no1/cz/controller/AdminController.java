package com.no1.cz.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.no1.cz.domain.Admin;
import com.no1.cz.service.AdminService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	@Resource
	private AdminService adminService;

	//转向登录页面
	@RequestMapping("tologin")
	public String tologin(){
		System.out.println("准备去到登录页面");
		return "user/adminlogin";				
	}

	@RequestMapping("login")
	public String login(String adminName, String adminPwd, HttpSession session){
		if(!adminName.equals("") && !adminPwd.equals("")){
			Admin admin =adminService.login(adminName, adminPwd);
			if(admin != null){
				session.setAttribute("admin", admin);
				return "redirect:/writer/showwriterList";
			}
			else{
				session.setAttribute("msg", "账号或密码错误");
				return "user/adminlogin";
			}
		}
		
		return "user/adminlogin";
	}

	//退出登录
		@RequestMapping("/outAdmin")
		public void outAdmin(HttpServletRequest request, HttpServletResponse response) throws IOException {
			request.getSession().removeAttribute("admin");
			response.sendRedirect("/web/index");
		}
}
